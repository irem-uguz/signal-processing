[x,Fs]=audioread("PinkPanther30.wav");
peaknums = zeros(5,1);
cutoffFreqs = [0; 1000; 2000; 3000; 4000];
c = findpeaks(x);
peaknums(1)= length(c);
for i = 2:5
    c = findpeaks(lowpass(x,cutoffFreqs(i),Fs));
    peaknums(i) = length(c);
end
plot(cutoffFreqs,peaknums);