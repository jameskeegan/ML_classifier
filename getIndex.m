function [index] = getIndex(name,classes)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
    index = 0;
    while 1
        index = index + 1;
        if strcmp(name, classes{index})
            break
        end
    end
        
end

