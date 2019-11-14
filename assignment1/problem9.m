y=csvread('exampleSignal.csv');
y=y.';
plot(y);
findpeaks(y);
