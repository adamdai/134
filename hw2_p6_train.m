load('bottles.mat');
% Training
positiveInstances = objectDetectorTrainingData(gTruth);
imDir = fullfile("./hw2_labels");
addpath(imDir);
negativeFolder = fullfile("./hw2_negative_labels");
negativeImages = imageDatastore(negativeFolder);
trainCascadeObjectDetector('bottleDetector.xml',positiveInstances, ...
    negativeFolder,'FalseAlarmRate',0.1,'NumCascadeStages',5);


detector = vision.CascadeObjectDetector('bottleDetector.xml');
% Put arbitrary test image here
img = imread("bottle_test_3.jpg");
bbox = step(detector,img);
% Use most likely bounding box
detectedImg = insertObjectAnnotation(img,'rectangle',bbox(1, :),'bottle');
% Show image with predicted bounding box
figure; imshow(detectedImg);


