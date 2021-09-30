
# aviread16bitcol.m: Read high color AVI video file


Author: Kelly Kearney


This repository includes the code for the `aviread16bitcol.m` Matlab function, along with all dependent functions required to run it.


This function reads in a 16-bit color (high color) avi movie file.  This format, used by some older Microsoft codecs, uses 16 bits per pixel: 5 bits for red, blue, and green, and one bit unused (the lesser used 5-6-5 format is not currently supported by this function).  The input and output variables are consistant with those used by Matlab's old aviread function.



## Contents

            
- Getting started        
- Syntax        
- Description        
- Contributions

## Getting started


**Prerequisites**


This function requires Matlab R2014a or ***earlier***.  It relies on the now-deprecated `aviread` function, which has since been replaced by the `VideoReader` function.  I no longer work with any AVI files that use this old format, so have no plans to update this function to be compatible with newer versions of Matlab.


**Downloading and installation**


This code can be downloaded from [Github](https://github.com/kakearney/example-pkg/) or the [MatlabCentral File Exchange](http://www.mathworks.com/matlabcentral/fileexchange/9314-aviread16bitcol).  The File Exchange entry is updated daily from the GitHub repository.


**Matlab Search Path**


The following folders need to be added to your Matlab Search path (via `addpath`, `pathtool`, etc.):



```matlab
aviread16bitcol-pkg/aviread16bitcol
```



## Syntax



```
mov = aviread16bitcol(filename)
mov = aviread16bitcol(filename, index)
```



## Description


`mov = aviread16bitcol(filename)` reads the video frame data in the .avi file `filename` into a matlab movie matrix `mov`.


`mov = aviread16bitcol(filenameme, index)` reads only the specific frames indicated by `index`.



## Contributions


Community contributions to this package are welcome!


To report bugs, please submit [an issue](https://github.com/kakearney/aviread16bitcol-pkg/issues) on GitHub and include:



  - your operating system
  - your version of Matlab and all relevant toolboxes (type `ver` at the Matlab command line to get this info)
  - code/data to reproduce the error or buggy behavior, and the full text of any error messages received

Please also feel free to submit enhancement requests, or to send pull requests (via GitHub) for bug fixes or new features.


I do monitor the MatlabCentral FileExchange entry for any issues raised in the comments, but would prefer to track issues on GitHub.



<sub>[Published with MATLAB R2019a]("http://www.mathworks.com/products/matlab/")</sub>