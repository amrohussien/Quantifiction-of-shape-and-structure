in_dir='C:\Tempspace\Paper3_cancerDrug2017\Test\DUNN_CYTD_A_GDA_SepCells\DUNN_CYTD_A_GDA_10_Cell23\'; 
Name='DUNN_CYTD_A_GDA_10_Cell23';
BWCell_File = [Name, '_ActinMask.bmp'];
BWNuc_File  = [Name, '_NucMask.bmp']; 
BWNuc2_File  = [Name, '_NucMask2.bmp']; 
GrayCell_File = [Name, '_ActinInt.tif'];
% Then we need to read in the location information
Cell_Binary = imread(fullfile(in_dir, BWCell_File));
Nuc_Binary  = imread(fullfile(in_dir, BWNuc_File));
Nuc_Binary2  = imread(fullfile(in_dir, BWNuc2_File));
Cell_Gray = imread(fullfile(in_dir, GrayCell_File));
PolarOrCartesian='Polar';
[Features,FeatureNames]=CalculateParameters(Cell_Binary,Nuc_Binary,Nuc_Binary2,Cell_Gray,0,30,35)

% All=[Features.BandBased,Features.FractalDimension,Features.GrayScale,Features.Geometric,Features.ZernikeMoment,Features.WavinessRT,Features.WavinessXY,Features.Roughness]
% AllNames=[FeatureNames.BandBased,FeatureNames.FractalDimension,FeatureNames.GrayScale,FeatureNames.Geometric,FeatureNames.ZernikeMoment,FeatureNames.WavinessRT,FeatureNames.WavinessXY,FeatureNames.Roughness]

All=[Features.Geometric,Features.GrayScale,Features.WavinessRT,Features.WavinessXY,Features.RoughnessRT,Features.RoughnessXY,Features.FractalDimension,Features.BandBased,Features.ZernikeMoment]
AllNames=[FeatureNames.Geometric,FeatureNames.GrayScale,FeatureNames.WavinessRT,FeatureNames.WavinessXY,FeatureNames.RoughnessRT,FeatureNames.RoughnessXY,FeatureNames.FractalDimension,FeatureNames.BandBased,FeatureNames.ZernikeMoment]

