x=load('exampleSignal.csv');
numOfPeaks = ones(30,1);
numOfPeaks(1) = length(findpeaks(x));
nValues = 1:30;
len = length(x);
 for N = 2:30
    b = (1/N)*ones(1,N);
    a = 1;
    y = filter(b,a,x);
    numOfPeaks(N) = length(findpeaks(y));
 end
subplot(1,1,1);
p = plot(nValues,numOfPeaks);
