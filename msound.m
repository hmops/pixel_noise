
% read image
img = imread('img1.jpg');
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

for i=1:h
    
    for j=1:w
        r = R(i, j);
        g = G(i, j);
        b = B(i, j);
        
        % get amplitude from pixel brightness
        amp = (sum([r, g, b]) / 3) * 30000;
        
        % calculate harmonic from blue value of (i,j)'ith pixel
        harm = double(round(b / (255 / 12)));
        if harm == 0
            harm = 12;
        end
        harm = double(harm);
        
        % octave
        octaves = 8;
        
        % calculate frequency 
        freq = double((55.0 + (55.0 * (harm / 12))) * (round(g * (octaves / 255)) + 1));
        
        % get length of signal by using red value of (i,j)'ith pixel
        length = double(((r + 1) / 255) * 0.25);
        
        % wave
        tone = ( real( (1/1)*amp/2*exp(1i*2*pi*1*freq*length) ) );
        
        % add to total signal
        total_signal = [total_signal tone];
        
    end
    
end
% run
soundsc(total_signal, fs);








