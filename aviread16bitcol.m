function mov = aviread16bitcol(varargin)
%AVIREAD16BITCOL Reads a 16-bit color avi file (BGR555 format)
%
% mov = aviread16bitcol(filename)
% mov = aviread16bitcol(filename,index)
%
% This function reads in a 16-bit color (high color) avi movie file.  This
% format, used by some older Microsoft codecs, uses 16 bits per pixel: 5
% bits for red, blue, and green, and one bit unused (the lesser used 5-6-5
% format is not currently supported by this function).  The input and
% output variables are consistant with those used by Matlab's aviread
% function. 
%
% Input variables:
%
%   filename:       .avi file name
%   index:          specific frames to read 
%
% Output variable:
%
%   mov:    Matlab movie structure. 
%           cdata:    m x n x 3 uint8 array of RGB data.  
%           colormap: empty array

% Copyright 2005 Kelly Kearney

if nargin == 1
    a = aviread(varargin{1});
elseif nargin == 2
    a = aviread(varargin{1}, varargin{2});
else
    error('Wrong number of input arguments');
end

nframes = length(a);
origSize = size(a(1).cdata);

mov(nframes) = struct('cdata', zeros([origSize 3]), 'colormap', []);

for iframe = 1:nframes
    b = uint8(bitand(a(iframe).cdata,               31) * 255/31);
    g = uint8(bitand(bitshift(a(iframe).cdata,-5),  31) * 255/31);
    r = uint8(bitand(bitshift(a(iframe).cdata,-10), 31) * 255/31);
    mov(iframe).cdata = cat(3, r, g, b); 
end
