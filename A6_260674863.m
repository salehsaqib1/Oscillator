%{
't' is the time interval from 0 to 10 seconds
'm' is the mass and 'k' is the stiffness
'w' is the natural frequency of he system
'init_y' is the initial displacement and 'init_v' is initial velocity
%}

t = 0: 0.01: 10;
k = 10;
m = 1;
w = sqrt(k/m);
init_y = 1;
init_v = 10;

% y is the function of displacement w.r.t time
% v is the function of velocity w.r.t time. It is also the derivative of y.

y = init_y*cos(w*t) + (init_v/w)*sin(w*t);
v = -w*init_y*sin(w*t) + init_v*cos(w*t);

% plot1 is the graph of displacement w.r.t time. Colour: Green
plot1 = plot(t, y, 'g-');
title('Graph of displacement/velocity against time');
xlabel('Time /s');
ylabel('Displacement /m & velocity /(m/s)');

% hold function will hold the properties of the graph for the next plot
% plot2 is the graph of velocity w.r.t time. Colour: Blue
hold on;
plot2 = plot(t, v, 'b-');
legend ('displacement', 'velocity');
hold off;
