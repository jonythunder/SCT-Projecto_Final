function [pseudorange] = compute_pseudoranges(true_range,elevation,noise_sigma)
%COMPUTE_PSEUDORANGES Summary of this function goes here
%   Detailed explanation goes here

%Compute ionospheric influence
ionospheric_disturbance = 10./sind(elevation);

%Compute noise
for i=1:size(true_range,1)
    noise(i) = rand()*noise_sigma;
end

pseudorange = true_range + ionospheric_disturbance + noise;

end

