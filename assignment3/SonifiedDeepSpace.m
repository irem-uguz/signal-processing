picture = imread('Hubble-Massive-Panorama.png');
graypic = rgb2gray(picture);
binarypic = imbinarize(graypic);
amplitudes = zeros(900,1024);
for column = 1:1024
    for index = 1:10
        for pixel = 1 : 90
            if(binarypic((index-1)*90+pixel,column)==true)
                amplitudes((index-1)*90+pixel,column)=index;
            end
        end
    end
end
Fs = 2000;
merged_audios = ones(1024*2000,1);
t = 0:1/Fs:1;
t = t.';
t(end)=[];
for i = 1:1024
    wave = zeros(2000,1);
    for j = 1:900
        sample = amplitudes(j,i).*sin(2*pi*j*t);
        wave = wave + sample;
    end
    merged_audios((i-1)*2000+1:i*2000) = wave;
end
sound(merged_audios,Fs);
audiowrite('result.wav',merged_audios,Fs);