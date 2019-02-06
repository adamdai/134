clear

% set up the motor
family = '134';
names = {'Doc'};
actuator = HebiLookup.newGroupFromNames(family, names);
cmd = CommandStruct();

% set up ros
rosshutdown;
rosinit('10.10.10.5');
ros_pub = rospublisher('goal');
msg = rosmessage(ros_pub);

% Create the face detector object.
faceDetector = vision.CascadeObjectDetector();

% Create the point tracker object.
pointTracker = vision.PointTracker('MaxBidirectionalError', 2);

% Create the webcam object.
cam = webcam(2);

% Capture one frame to get its size.
videoFrame = snapshot(cam);
frameSize = size(videoFrame);
frameCenter = [320, 240];

% Create the video player object.
videoPlayer = vision.VideoPlayer('Position', [100 100 [frameSize(2), frameSize(1)]+30]);

runLoop = true;
numPts = 0;
frameCount = 0;

% filter the gain
% gains = actuator.getGains();
% gains.positionTargetLowpassGain = 0.1;
% actuator.send('gains', gains);

% scanning/tracking parameters 
scan_speed = 0.4;
tracking_speed = 1.25;
scan_range = 1.25;
scan_target = 1.5;

x = actuator.getNextFeedback().position;
direction = - sign(x);
hit_bound = abs(x) > scan_range;

% center the camera
while abs(x) > 0.1
    msg.Data = 0;
    send(ros_pub, msg);
    x = actuator.getNextFeedback().position;
end


while runLoop %&& frameCount < 400
    
    tic
    % Get the next frame.
    videoFrame = snapshot(cam);
    videoFrameGray = rgb2gray(videoFrame);
    frameCount = frameCount + 1;

    if numPts < 10
        % Detection mode.
        bbox = faceDetector.step(videoFrameGray);
        
        % Scan for a face
        x = actuator.getNextFeedback().position;
        if abs(x) > scan_range && ~hit_bound
            hit_bound = true;
            direction = direction * -1;
            %msg.Data = -1.3;
        elseif abs(x) < scan_range
            hit_bound = false;
            %msg.Data = 1.3;
        end
        
        msg.Data = -direction*scan_target;

        %cmd.velocity = scan_speed * direction;
        %actuator.setCommandLifetime(1.5);
        %actuator.send(cmd);
        send(ros_pub, msg);

        if ~isempty(bbox)

            % Find corner points inside the detected region.
            points = detectMinEigenFeatures(videoFrameGray, 'ROI', bbox(1, :));

            % Re-initialize the point tracker.
            xyPoints = points.Location;
            numPts = size(xyPoints,1);
            release(pointTracker);
            initialize(pointTracker, xyPoints, videoFrameGray);

            % Save a copy of the points.
            oldPoints = xyPoints;

            % Convert the rectangle represented as [x, y, w, h] into an
            % M-by-2 matrix of [x,y] coordinates of the four corners. This
            % is needed to be able to transform the bounding box to display
            % the orientation of the face.
            bboxPoints = bbox2points(bbox(1, :));

            % Convert the box corners into the [x1 y1 x2 y2 x3 y3 x4 y4]
            % format required by insertShape.
            bboxPolygon = reshape(bboxPoints', 1, []);

            % Display a bounding box around the detected face.
            videoFrame = insertShape(videoFrame, 'Polygon', bboxPolygon, 'LineWidth', 3);

            % Display detected corners.
            videoFrame = insertMarker(videoFrame, xyPoints, '+', 'Color', 'white');
            
            disp("scanning")
            toc
        end

    else
        % Tracking mode.
        [xyPoints, isFound] = step(pointTracker, videoFrameGray);
        visiblePoints = xyPoints(isFound, :);
        oldInliers = oldPoints(isFound, :);

        numPts = size(visiblePoints, 1);

        if numPts >= 10
            % Estimate the geometric transformation between the old points
            % and the new points.
            [xform, oldInliers, visiblePoints] = estimateGeometricTransform(...
                oldInliers, visiblePoints, 'similarity', 'MaxDistance', 4);

            % Apply the transformation to the bounding box.
            bboxPoints = transformPointsForward(xform, bboxPoints);
            boxCenter = mean(bboxPoints);
            offset = (boxCenter(1) - frameCenter(1));
            disp('tracking')
            
            x = actuator.getNextFeedback().position;
            if ~((x > 1.5 && offset < 0) || (x < -1.5 && offset > 0))
                %cmd.velocity = - (tracking_speed / 320) * offset;
                %actuator.send(cmd);
                msg.Data = x + offset / 320;
                disp(offset)
                send(ros_pub, msg);
            end
            
            % Convert the box corners into the [x1 y1 x2 y2 x3 y3 x4 y4]
            % format required by insertShape.
            bboxPolygon = reshape(bboxPoints', 1, []);

            % Display a bounding box around the face being tracked.
            videoFrame = insertShape(videoFrame, 'Polygon', bboxPolygon, 'LineWidth', 3);

            % Display tracked points.
            videoFrame = insertMarker(videoFrame, visiblePoints, '+', 'Color', 'white');

            % Reset the points.
            oldPoints = visiblePoints;
            setPoints(pointTracker, oldPoints);
            disp("tracking")
            toc
        end

    end

    % Display the annotated video frame using the video player object.
    step(videoPlayer, videoFrame);

    % Check whether the video player window has been closed.
    runLoop = isOpen(videoPlayer);
end

% Clean up.
clear cam;
release(videoPlayer);
release(pointTracker);
release(faceDetector);