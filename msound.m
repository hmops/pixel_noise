clear all;
close all;
% read image
img = imread('water-melon.png');
% separate to RGB 
R = img(:,:,1); 
G = img(:,:,2); 
B = img(:,:,3);

% get width and height of image
[h, w , b ]= size(img);

% fs 
fs = 11025;

% size(R)

% keeps total signal 
total_signal = [];
lens = [];
rs = [];
fres = [];

for i=1:w
    
    for j=1:h
%         r = R(i, j);
%         g = G(i, j);
%         b = B(i, j);
        r = double(R(j, i));
        g = double(G(j, j));
        b = double(B(j, i));
        
        % get amplitude from pixel brightness
        amp = (sum([r, g, b]) / 3) * 30000;
        
        % calculate harmonic from blue value of (i,j)'ith pixel
        harm = (round((b) / (255 / 12)));
        if harm == 0
            harm = 12;
        end
        harm = double(harm);
        
        % octave
        octaves = 8;
        
        % calculate frequency 
        freq = ((55.0 + (55.0 * (harm / 12))) * (round(g * (octaves / 255)) + 1));
        
%         fres = [fres freq];
        
        % get length of signal by using red value of (i,j)'ith pixel
        dur = ((((r) + 1) / 255) * 0.25);
%         lens = [lens dur];
%         rs = [rs r];
        
        % wave
        tone = ( real( (1/1)*amp/2*exp(1i*2*pi*1*freq*dur) ) );
        
        % add to total signal
        total_signal = [total_signal tone];
        
    end
    
end
% run
plot(total_signal);
soundsc(total_signal, fs);








