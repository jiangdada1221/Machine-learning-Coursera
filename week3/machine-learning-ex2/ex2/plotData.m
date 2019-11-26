function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%

positive = zeros(sum(y),2);

negative = zeros(length(y) - sum(y),2);

pIndex = 1;
nIndex = 1;

for i = 1 : length(y)
    if y(i) == 0
        positive(pIndex,1) = X(i,1);
        positive(pIndex,2) = X(i,2);
        pIndex = pIndex + 1;
    else
        negative(nIndex,1) = X(i,1);
        negative(nIndex,2) = X(i,2);
        nIndex = nIndex + 1;
    end
end

plot(positive(:,1),positive(:,2), 'k+');
plot(negative(:,1),negative(:,2),'yo');



% axis([28,100,28,100]);





% =========================================================================



hold off;

end
