% SWISS ROLL DATASET

  N=2000;
  K=12;
  d=2; 


% PLOT TRUE MANIFOLD
  tt0 = (3*pi/2)*(1+2*[0:0.02:1]); 
  hh = [0:0.125:1]*30;
  xx = (tt0.*cos(tt0))'*ones(size(hh));
  yy = ones(size(tt0))'*hh;
  zz = (tt0.*sin(tt0))'*ones(size(hh));
  cc = tt0'*ones(size(hh));

  subplot(1,3,1); 
  surf(xx,yy,zz,cc);

% GENERATE SAMPLED DATA
  tt = (3*pi/2)*(1+2*rand(1,N));  
  height = 21*rand(1,N);
  X = [tt.*cos(tt); height; tt.*sin(tt)];

% SCATTERPLOT OF SAMPLED DATA
  subplot(1,3,2); 
  scatter3(X(1,:),X(2,:),X(3,:),12,tt,'+');

% RUN LLE ALGORITHM
Y=lle(X,K,d);

% SCATTERPLOT OF EMBEDDING
  subplot(1,3,3); 
  scatter(Y(2,:),Y(1,:),12,tt,'+');
  


