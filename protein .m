clc, clear, close all
%% Initial Data
% protein intake for 28 days-4 weeks
proteinIntake = [60 62 63 60 59 59 55 56 50 57 61 60 62 63 63 62 61 55 57 55 50 52 60 63 62 54 55 55];
%% Extracting Weeks Into Separate Vectors
% +1 or -6 operations are done to find out the actual days and end is also
% used
proteinsW1 = proteinIntake(1 : 7);
proteinsW2 =  proteinIntake(8:(2 * 7));
proteinsW3 = proteinIntake((2 * 7 +1 ):(3 * 7));
proteinsW4 = proteinIntake((end - 6) : end);
%% Combing Two Different Vectors
% week 1 and 2 and also week 3 and 4 are combined
proteinsW1W2 = [proteinsW1 proteinsW2];
proteinsW3W4 = [proteinsW3 proteinsW4];
%% Calculating Percent Difference Between Two Vectors
% given by the formula-((v1 - v2)/v2) * 100
percentDifferences = ((proteinsW1 - proteinsW4) ./ proteinsW4) * 100
percentDifferences2 = ((proteinsW1W2 - proteinsW3W4) ./ proteinsW3W4) * 100