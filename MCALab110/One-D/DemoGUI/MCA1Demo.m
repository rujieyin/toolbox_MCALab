disp('***********************************************')
disp('*               MCADemo Browser               *')
disp('***********************************************')
st = '----------------------------------------------------';
disp(' ' )
disp('This MCADemo MATLAB program lets you try out the MCADemo method for 1D signals')
disp('developed by Starck et al. in 2003.')
disp(' ')
disp('Here is a summary of how to use the menus:')
disp(' ')

disp(st)
disp('Signals:  Use a workspace loaded signal')
disp('         User prompted')
disp(' ')

disp('Actions:')
disp('         Separate the components and plot them')
disp(st)

disp('Params:')
disp('         Part 1 dictionary')
disp('         Part 2 dictionary')
disp('         Wavelet       - Select the wavelet name and regularity for the TI wavelet transform')
disp('         Scale         - Wavelet decomposition scale')
disp('         First scale   - All scales between this value and finest scale are ignored in the WT')
disp('         Bell          - Select the bell to be used (if necessary) in cosine packets')
disp('         Window width  - Width of the window for the local oscillatory structures')
disp('         Expdecrease   - Exponential/Linear decrease of the regularization parameter (default: linear)')
disp('         Number of iterations - How many iterations for the relaxation algorithm')
disp('         Stop criterion       - Stopping criterion (k*\sigma, eg k=3, for WGN)')
disp(st)

clear SIGNAL,global SIGNAL
hgload MCAGUI;
