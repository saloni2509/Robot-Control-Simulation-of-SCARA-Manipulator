sim('clik_transpose',4)
open_system('clik_transpose')
heta_1 = out.q_ou(:, 1);
heta_2 = out.q_ou(:, 2);
d = out.q_ou(:, 3);
heta_4=out.q_ou(:, 4);
errr1 =out.e_ou(:,1);
errr2 =out.e_ou(:,2);
errr3 =out.e_ou(:,3);
errr4 =out.e_ou(:,4);

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
plot(out.tout,heta_1)
title('Graph of Joint Variables')
ylabel('theta1')

subplot(4,1,2)
plot(out.tout,heta_2)
ylabel('theta2')

subplot(4,1,3)
plot(out.tout,d)
ylabel('d3')

subplot(4,1,4)
plot(out.tout,heta_4)
ylabel('theta4')
xlabel('time')

figure;
subplot(4,1,1)
plot(out.tout,errr1)
title('Graph of Error Values')
ylabel('error_x')

subplot(4,1,2)
plot(out.tout,errr2)
ylabel('error_y')

subplot(4,1,3)
plot(out.tout,errr3)
ylabel('error_z')

subplot(4,1,4)
plot(out.tout,errr4)
ylabel('error_phi')
xlabel('time')



