clear

% set up the motor
family = '134';
names = {'Doc'};
actuator = HebiLookup.newGroupFromNames(family, names);
cmd = CommandStruct();

% Create the face detector object.
faceDetector = vision.CascadeObjectDetector();

% Create the histogram tracker object.
hbTracker = vision.HistogramBasedTracker;%('ObjectHistogram', []);

% Create the webcam object.
cam = webcam;

% Capture one frame to get its size.
videoFrame = snapshot(cam);
frameSize = size(videoFrame);
frameCenter = [320, 240];

% Create the video player object.
videoPlayer = vision.VideoPlayer('Position', [100 100 [frameSize(2), frameSize(1)]+30]);

runLoop = true;
numPts = 0;
frameCount = 0;
score = 0;

% filter the gain
% gains = actuator.getGains();
% gains.positionTargetLowpassGain = 0.1;
% actuator.send('gains', gains);

% scanning/tracking parameters 
scan_speed = 0.4;
tracking_speed = 1.25;
scan_range = 1.25;

x = actuator.getNextFeedback().position;
direction = - sign(x);
hit_bound = abs(x) > scan_range;


while runLoop %&& frameCount < 400

    % Get the next frame.
    videoFrame = snapshot(cam);
    objectHSV = rgb2hsv(videoFrame);
    videoFrameGray = rgb2gray(videoFrame);
    frameCount = frameCount + 1;

    if score < 0.4
        % Detection mode.
        bbox = faceDetector.step(videoFrameGray);
        
        % Scan for a face
        x = actuator.getNextFeedback().position;
        if abs(x) > scan_range && ~hit_bound
            hit_bound = true;
            direction = direction * -1;
        elseif abs(x) < scan_range
            hit_bound = false;
        end

        cmd.velocity = scan_speed * direction;
        actuator.setCommandLifetime(1.5);
        actuator.send(cmd);
        disp('scanning')

        if ~isempty(bbox)

            % Re-initialize the histogram tracker
            release(hbTracker);
            initializeObject(hbTracker, objectHSV(:,:,1) , bbox(1,:));
            [bbox, orientation, score] = hbTracker(objectHSV(:,:,1));
            disp(score)

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
        end

    else
        % Tracking mode.
        bbox = hbTracker(objectHSV(:,:,1));
        bboxPoints = bbox2points(bbox(1, :));

        boxCenter = mean(bboxPoints);
        offset = (boxCenter(1) - frameCenter(1));
        disp('tracking')

        x = actuator.getNextFeedback().position;
        if ~((x > 1.5 && offset < 0) || (x < -1.5 && offset > 0))
            cmd.velocity = - (tracking_speed / 320) * offset;
            actuator.send(cmd);
        end

        % Convert the box corners into the [x1 y1 x2 y2 x3 y3 x4 y4]
        % format required by insertShape.
        bboxPolygon = reshape(bboxPoints', 1, []);

        % Display a bounding box around the face being tracked.
        videoFrame = insertShape(videoFrame, 'Polygon', bboxPolygon, 'LineWidth', 3);

    end

    % Display the annotated video frame using the video player object.
    step(videoPlayer, videoFrame);

    % Check whether the video player window has been closed.
    runLoop = isOpen(videoPlayer);
end

% Clean up.
clear cam;
release(videoPlayer);
release(hbTracker);
release(faceDetector);