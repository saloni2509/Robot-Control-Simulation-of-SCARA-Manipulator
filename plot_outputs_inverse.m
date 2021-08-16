sim('clik_inverse',4)
open_system('clik_inverse')


theta_1 = out.q_out(:, 1);
theta_2 = out.q_out(:, 2);
d3 = out.q_out(:, 3);
theta_4=out.q_out(:, 4);
error1 =out.e_out(:,1);
error2=out.e_out(:,2);
error3=out.e_out(:,3);
error4=out.e_out(:,4);

figure;
subplot(4,1,1)
plot(t,pd(:,1))
title('Trajectory')
ylabel('pd1')

subplot(4,1,2)
plot(t,pd(:,2))
ylabel('pd2')

subplot(4,1,3)
plot(t,pd(:,3))
ylabel('pd3')

subplot(4,1,4)
plot(t,theta_d)
ylabel('theta')
xlabel('time')

figure;
subplot(4,1,1)
plot(out.tout,theta_1)
title('Graph of Joint Variables')
ylabel('theta1')

subplot(4,1,2)
plot(out.tout,theta_2)
ylabel('theta2')

subplot(4,1,3)
plot(out.tout,d3)
ylabel('d3')

subplot(4,1,4)
plot(out.tout,theta_4)
ylabel('theta4')
xlabel('time')

figure;
subplot(4,1,1)
plot(out.tout,error1)
title('Graph of Error Values')
ylabel('error_x')

subplot(4,1,2)
plot(out.tout,error2)
ylabel('error_y')

subplot(4,1,3)
plot(out.tout,error3)
ylabel('error_z')

subplot(4,1,4)
plot(out.tout,error4)
ylabel('error_phi')
xlabel('time')