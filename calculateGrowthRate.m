clear all;
close all;
clc;

data = load('openloop_data.mat');

% Initial conditions
% LipschitzIndex = 0;
xValue = 0;
zValue = 0;
maxGradient = sqrt(xValue^2 + zValue^2);

for j = 1:15
    switch j
        case 1
            xPosition = data.exp1.s1.pose(:,1);
            zPosition = data.exp1.s1.pose(:,3);
        case 2
            xPosition = data.exp2.s1.pose(:,1);
            zPosition = data.exp2.s1.pose(:,3);
        case 3
            xPosition = data.exp3.s1.pose(:,1);
            zPosition = data.exp3.s1.pose(:,3);
        case 4
            xPosition = data.exp4.s1.pose(:,1);
            zPosition = data.exp4.s1.pose(:,3);
        case 5
            xPosition = data.exp5.s1.pose(:,1);
            zPosition = data.exp5.s1.pose(:,3);
        case 6
            xPosition = data.exp6.s1.pose(:,1);
            zPosition = data.exp6.s1.pose(:,3);
        case 7
            xPosition = data.exp7.s1.pose(:,1);
            zPosition = data.exp7.s1.pose(:,3);
        case 8
            xPosition = data.exp8.s1.pose(:,1);
            zPosition = data.exp8.s1.pose(:,3);
        case 9
            xPosition = data.exp9.s1.pose(:,1);
            zPosition = data.exp9.s1.pose(:,3);
        case 10
            xPosition = data.exp10.s1.pose(:,1);
            zPosition = data.exp10.s1.pose(:,3);
        case 11
            xPosition = data.exp11.s1.pose(:,1);
            zPosition = data.exp11.s1.pose(:,3);
        case 12
            xPosition = data.exp12.s1.pose(:,1);
            zPosition = data.exp12.s1.pose(:,3);
        case 13
            xPosition = data.exp13.s1.pose(:,1);
            zPosition = data.exp13.s1.pose(:,3);
        case 14
            xPosition = data.exp14.s1.pose(:,1);
            zPosition = data.exp14.s1.pose(:,3);
        case 15
            xPosition = data.exp15.s1.pose(:,1);
            zPosition = data.exp15.s1.pose(:,3);
    end
    
    % Determine the maximum growth rate 
    for i = 1:length(xPosition)
        currentDistance = sqrt(xPosition(i)^2 + zPosition(i)^2);
        if i == 1
            currentGradient = currentDistance;
        else
            currentGradient = currentDistance - sqrt(xPosition(i-1)^2 + zPosition(i-1)^2);
        end
        if currentGradient > maxGradient
            % LipschitzIndex = i;
            maxGradient = currentGradient;
        end
    end
end

% Print the maximum growth rate bound for movement in x and z directions in
% units per second
maxGradient_s1 = maxGradient * 30 %Data taken at 30 Hz (samples per second)

%-------------------Perform same calculations for S2-----------------------
% Initial conditions
% LipschitzIndex = 0;
xValue = 0;
zValue = 0;
maxGradient = sqrt(xValue^2 + zValue^2);

for j = 1:15
    switch j
        case 1
            xPosition = data.exp1.s2.pose(:,1);
            zPosition = data.exp1.s2.pose(:,3);
        case 2
            xPosition = data.exp2.s2.pose(:,1);
            zPosition = data.exp2.s2.pose(:,3);
        case 3
            xPosition = data.exp3.s2.pose(:,1);
            zPosition = data.exp3.s2.pose(:,3);
        case 4
            xPosition = data.exp4.s2.pose(:,1);
            zPosition = data.exp4.s2.pose(:,3);
        case 5
            xPosition = data.exp5.s2.pose(:,1);
            zPosition = data.exp5.s2.pose(:,3);
        case 6
            xPosition = data.exp6.s2.pose(:,1);
            zPosition = data.exp6.s2.pose(:,3);
        case 7
            xPosition = data.exp7.s2.pose(:,1);
            zPosition = data.exp7.s2.pose(:,3);
        case 8
            xPosition = data.exp8.s2.pose(:,1);
            zPosition = data.exp8.s2.pose(:,3);
        case 9
            xPosition = data.exp9.s2.pose(:,1);
            zPosition = data.exp9.s2.pose(:,3);
        case 10
            xPosition = data.exp10.s2.pose(:,1);
            zPosition = data.exp10.s2.pose(:,3);
        case 11
            xPosition = data.exp11.s2.pose(:,1);
            zPosition = data.exp11.s2.pose(:,3);
        case 12
            xPosition = data.exp12.s2.pose(:,1);
            zPosition = data.exp12.s2.pose(:,3);
        case 13
            xPosition = data.exp13.s2.pose(:,1);
            zPosition = data.exp13.s2.pose(:,3);
        case 14
            xPosition = data.exp14.s2.pose(:,1);
            zPosition = data.exp14.s2.pose(:,3);
        case 15
            xPosition = data.exp15.s2.pose(:,1);
            zPosition = data.exp15.s2.pose(:,3);
    end
    
    % Determine the maximum growth rate 
    for i = 1:length(xPosition)
        currentDistance = sqrt(xPosition(i)^2 + zPosition(i)^2);
        if i == 1
            currentGradient = currentDistance;
        else
            currentGradient = currentDistance - sqrt(xPosition(i-1)^2 + zPosition(i-1)^2);
        end
        if currentGradient > maxGradient
            % LipschitzIndex = i;
            maxGradient = currentGradient;
        end
    end
end

% Print the maximum growth rate bound for movement in x and z directions in
% units per second
maxGradient_s2 = maxGradient * 30 %Data taken at 30 Hz (samples per second)
