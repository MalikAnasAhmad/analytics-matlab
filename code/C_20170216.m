% [x,t] = iris_dataset;
net = lvqnet(25);
net.trainParam.epochs = 50;
net = train(net,Features',Labels');
view(net)
y = net(Features);
perf = perform(net,y,Labels)
classes = vec2ind(y);