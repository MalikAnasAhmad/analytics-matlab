pathName = 'F:\Anas\Google Drive\Connectavo\Data_analysis-2016-06-14\Data analysis\Sample dataset\Betriebsschwingungsmessung Fedom_Flexibles Spannsystem';%set a path name of the folder from where we have to pick all of the .edf files es 
cd(pathName)%make it current directory
fileNames = ls ('*.mat');%list all of the .edf files

Bx = [];%Accelaration in x axis
By = [];%Accelaration in y axis
Bz = [];%Accelaration in z axis
Fz = [];%Axial Force of tool
M = [];%Torque

for noOfFiles = 1 : size(fileNames,1)%Processing each file at a time
file_dir = [pathName '\' fileNames(noOfFiles,1:(find(fileNames(noOfFiles,:)=='.', 1, 'last' )+3))];%make a full path of the file
load(file_dir);%read that .mat file if it is smaller then a certain limit
Bx  = [Bx data.Bx];
By  = [By data.By];
Bz  = [Bz data.Bz];
Fz  = [Fz data.Fz];
M  = [M data.M];

clear data 

end

pathName = 'F:\Anas\Google Drive\Connectavo\Data_analysis-2016-06-14\Data analysis\Sample dataset\\Messungen';%set a path name of the folder from where we have to pick all of the .edf files es 
cd(pathName)%make it current directory
fileNames = ls ('*.mat');%list all of the .edf files

for noOfFiles = 1 : size(fileNames,1)%Processing each file at a time
file_dir = [pathName '\' fileNames(noOfFiles,1:(find(fileNames(noOfFiles,:)=='.', 1, 'last' )+3))];%make a full path of the file
load(file_dir);%read that .mat file if it is smaller then a certain limit
Bx  = [Bx eval([fileNames(noOfFiles,1:end-4) '.Y(1,1).Data'])];
By  = [By eval([fileNames(noOfFiles,1:end-4) '.Y(1,2).Data'])];
Bz  = [Bz eval([fileNames(noOfFiles,1:end-4) '.Y(1,3).Data'])];
Fz  = [Fz eval([fileNames(noOfFiles,1:end-4) '.Y(1,4).Data'])];
M  = [M eval([fileNames(noOfFiles,1:end-4) '.Y(1,5).Data'])];

eval(['clear ' fileNames(noOfFiles,1:end-4)]) 

end