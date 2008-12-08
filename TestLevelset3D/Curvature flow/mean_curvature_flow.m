
addpath('..');
init;

figure;

% Propagate
time = 1;
for i = 1:20
    tic; [LS,iter] = propagate(LS,time,'mean_curvature_flow_operator',1); toc
    tic; LS = reinitialize(LS); toc
    clf;
    plot(LS, 'contour', 'gradient 5');
    view(28,30);
    drawnow;
end

rmpath('..');