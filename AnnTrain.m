I = input';
T = output';
net=newff(minmax(I),[3,5,1],{'logsig','tansig','purelin'},'trainlm');
net = init(net);
net.trainParam.show=1;
net.trainParam.epochs=10000;
net.trainParam.goal=1e-12;
net=train(net,I,T);