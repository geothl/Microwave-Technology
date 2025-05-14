
theta = 0:0.01:2*pi;
rho = cosf(pi/2,theta);
ax = polaraxes;
polarplot(ax,theta,rho)
ax.ThetaZeroLocation = 'top';
ax.ThetaDir = 'clockwise'; % 90 degrees at the right