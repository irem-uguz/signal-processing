hfile = 'mike.wav';
clear y Fs
[y, Fs] = audioread(hfile);
mike = y;
y = y + delayseq(y,0.1,Fs);
firstResults = 0:0.1:1;
count = 1 ;
for alfas = 0:0.1:1
    firstResults(count) = calculateSNR(mike,nTap(y,10,0.1,alfas,Fs));
    count = count + 1;
end
subplot(3,1,1);
p1 = plot(0:0.1:1,firstResults);

secondResults = ones(50,1);
for ns = 1:50
    secondResults(ns) = calculateSNR(mike,nTap(y,ns,0.1,0.7,Fs));
end
subplot(3,1,2);
p2 = plot(1:50,secondResults);

thirdResults = ones(length(kValues),1);
count = 1;
for k = 0.1:0.05:0.4
    thirdResults(count) = calculateSNR(mike,nTap(y,10,k,0.7,Fs));
    count = count +1;
end
subplot(3,1,3);
p3 = plot(0.1:0.05:0.4,thirdResults);



function t = nTap(original, n , k, alfa, Fs)
    x = original;
    result = x;
    for i = 1 : n
        x = delayseq(x,k,Fs);
        result = result + ((-1 * alfa)^i)*x;   
    end
    t = result;
end



function x = calculateSNR(original,noisy)
sum1 = 0;
sum2 = 0;
    for n = 1 : length(original)
       sum1 = sum1 + original(n)*original(n);
       sum2 = sum2 + (noisy(n)-original(n))*(noisy(n)-original(n));
    end
    x = 10.0 * log10((1.0*sum1)/sum2);
end