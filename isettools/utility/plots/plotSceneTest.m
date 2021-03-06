% Test plotScene function.
%
% This is incomplete.  We need to make more test plots, like plotOITest
%

%% Initialize data
scene = sceneCreate;
vcAddAndSelectObject(scene); sceneWindow;

% Test cases
plotScene(scene,'luminance mesh linear');
plotScene(scene,'luminance mesh log');

rows = round(sceneGet(scene,'rows')/2);
plotScene(scene,'hline radiance',[1,rows]);

%% A region of interest

% Fourier Transform of the luminance in the row
uData = plotScene(scene,'luminance fft hline',[1,rows]);

%% Radiance image with an overlaid spatial grid
plotScene(scene,'radiance image with grid')
plotScene(scene,'illuminant photons')
plotScene(scene,'depth map')

%% Reflectance data from an ROI
roiRect = [26    40    13    16];
uData = plotScene(scene,'reflectance',roiRect);
plotScene(scene,'chromaticity',roiRect)

%%
roiRect = [6    51     8    12];
uData = plotScene(scene,'reflectance',roiRect);
plotScene(scene,'chromaticity',roiRect)

%%
