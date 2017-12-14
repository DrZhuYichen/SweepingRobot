clc;
clear;
% ��ȡ��ͼ
figure = int16(im2bw(imread('map1.bmp')));%x,y��Ĭ���෴ 
imshow(figure==1);
map.data = figure';
map.size=size(map.data);
% ɨ�ػ����˲���
robot.radius=30;
robot.position=[200 400];
robot.direction=pi/4;
robot.speed=10;
robotShape=rectangle('Curvature',[1 1],'LineWidth',1,'Position',...
[robot.position(1)-robot.radius robot.position(2)-robot.radius 2*robot.radius 2*robot.radius]);

robotDirection=line('Color','b','LineWidth',1,'XData',...
[robot.position(1) robot.position(1)+robot.radius * cos(robot.direction)],'YData',...
[robot.position(2) robot.position(2)+robot.radius * sin(robot.direction)]);

%ɨ�ػ�������Χ����12����ײ������
hold on
for i=1:12
    robot.collideSensor(i)=plot(int16(robot.position(1)+robot.radius*cos(pi/6*(i-1))),...
    int16(robot.position(2)+robot.radius*sin(pi/6*(i-1))),'Marker','o');
end
collide=judgeCollide(robot,map);

