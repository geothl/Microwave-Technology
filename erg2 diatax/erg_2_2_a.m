phi=0:0.001:2*pi;
theta = 0:0.001:pi*2;
tiledlayout(1,3)

%"+I currents"

nexttile
rho = cosf(pi/2,phi);
polarplot(phi,rho);
title("λ/4");

nexttile
rho = cosf(pi,phi);
polarplot(phi,rho);
title("λ/2");

nexttile
rho = cosf(3*pi/2,phi);
polarplot(phi,rho);
title("3*λ/4");


hold on;

figure;
title("okk");
tiledlayout(1,3)

nexttile
rho = sinf(pi/2,phi);
polarplot(phi,rho);
title("λ/4");

nexttile
rho = sinf(pi,phi);
polarplot(phi,rho);
title("λ/2");

nexttile
rho = sinf(3*pi/2,phi);
polarplot(phi,rho);
title("3*λ/4");


hold on;

figure;


rho = cosfvert(pi/2,theta);
ax1 = polaraxes;
polarplot(ax1,theta,rho)
ax1.ThetaZeroLocation = 'top';
ax1.ThetaDir = 'clockwise'; 
title("λ/4");


hold on;

figure;


rho = cosfvert(pi,theta);
ax2 = polaraxes;
polarplot(ax2,theta,rho)
ax2.ThetaZeroLocation = 'top';
ax2.ThetaDir = 'clockwise'; 
title("λ/2");




hold on;

figure;

rho = cosfvert(3*pi/2,theta);
ax3 = polaraxes;
polarplot(ax3,theta,rho)
ax3.ThetaZeroLocation = 'top';
ax3.ThetaDir = 'clockwise'; 
title("3*λ/4");



hold on;

figure;



rho = sinfvert(pi/2,theta);
ax = polaraxes;
polarplot(ax,theta,rho)
ax.ThetaZeroLocation = 'top';
ax.ThetaDir = 'clockwise'; 
title("λ/4");



hold on;

figure;


rho = sinfvert(pi,theta);
ax = polaraxes;
polarplot(ax,theta,rho)
ax.ThetaZeroLocation = 'top';
ax.ThetaDir = 'clockwise'; 
title("λ/2");


hold on;

figure;


rho = sinfvert(3*pi/2,theta);
ax = polaraxes;
polarplot(ax,theta,rho)
ax.ThetaZeroLocation = 'top';
ax.ThetaDir = 'clockwise'; 
title("3*λ/4");



