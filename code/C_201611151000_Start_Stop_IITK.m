Healthy = dlmread('D:\Connectavo\Data\httpwww.iitk.ac.iniildatasets\AirCompressor_Data\Healthy\preprocess_Reading1.dat');
Bearing = dlmread('D:\Connectavo\Data\httpwww.iitk.ac.iniildatasets\AirCompressor_Data\Bearing\preprocess_Reading1.dat');

figure(1)
subplot(2,1,1)
plot(Healthy)
subplot(2,1,2)
plot(Bearing)