function [OUT] = linear_predict(DATA,PAR)

% --- Linear Regression Prediction ---
%
%   [OUT] = linear_predict(DATA,PAR)
%
%   Input:
%       DATA.
%           input = attributes matrix   [p x N]
%       PAR.
%           W = transformation matrix   [Nc x p+1]
%   Output:
%       OUT.
%           y_h = classifier's output   [Nc x N]

%% INITIALIZATIONS

X = DATA.input;         % input matrix

W = PAR.W;              % Weight matrix

% [~,N] = size(X);        % Number of samples and classes
% 
% X = [ones(1,N) ; X];	% add bias to input matrix [x0 = +1]

%% ALGORITHM

% Function output
y_h = X * W;

%% FILL OUTPUT STRUCTURE

OUT.y_h = y_h;

%% END