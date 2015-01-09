disp('***********************************************')
disp('*               MCADemo Browser               *')
disp('***********************************************')
st = '----------------------------------------------------';
disp(' ' )
disp('This MCADemo MATLAB program lets you try out the MCADemo method for 2D images')
disp('developed by Starck et al. in 2003.')
disp('Joint morphological separation and  Inpainting.' )
disp(' ')
disp('Here is a summary of how to use the menus:')
disp(' ')

disp(st)
disp('Signals:  Use a workspace loaded signal and mask')
disp('          User prompted')
disp(' ')

disp('Actions:')
disp('         Separate and inpaint the components and display them')
disp(st)

disp('Params:')
disp('         Part 1 dictionary (curvelets, wavelet) ')
disp('         Part 2 dictionary (local cosines) ')
disp('         Wavelet       - Select the wavelet filter name and regularity for the TI wavelet transform')
disp('         Scale         - Wavelet decomposition scale')
disp('         Bell          - Select the bell to be used (if necessary) in local DCT_iv (cosine packet)')
disp('         Window width  - Width of the window for the local oscillatory structures')
disp('         Expdecrease   - Exponential/Linear decrease of the regularization parameter (default: linear)')
disp('         TV reg parameter     - TV regularization parameter (usually applied to the piece-wise smooth component, e.g. UDWT or curvelet dictionary)')
disp('         TV Component         - Component to which TV regularization is applied')
disp('         Number of iterations - How many iterations for the relaxation algorithm')
disp('         Stop criterion       - Stopping criterion (k*\sigma, eg k=3, for WGN)')
disp(st)

clear IMG MASKIMG,global IMG MASKIMG
MCA2DGUI;
