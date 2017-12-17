clc;
clear;
close all;
% ��ȡ��ͼ
figure = int16(im2bw(imread('map2.bmp')));%x,y��Ĭ���෴ 
imshow(figure==1);
map.data = figure';
map.size=size(map.data);

% ɨ�ػ����˲���
robot.radius=30;
robot.position=[200 400];
robot.parameter=[8,pi/18,8,pi/8];%������ٶȡ����ٶȡ��߼��ٶȡ��Ǽ��ٶ�
    %-��ʼ״̬
robot.direction=pi/3;
robot.v=0;robot.w=0;

robotShape=rectangle('Curvature',[1 1],'LineWidth',1,'Position',...
[robot.position(1)-robot.radius robot.position(2)-robot.radius 2*robot.radius 2*robot.radius]);

robotDirection=line('Color','b','LineWidth',1,'XData',...
[robot.position(1) robot.position(1)+robot.radius * cos(robot.direction)],'YData',...
[robot.position(2) robot.position(2)+robot.radius * sin(robot.direction)]);

%ɨ�ػ�������Χ����12����ײ������:ż������
robot.collideSensor=[];
for i=1:12
    robot.collideSensor=[robot.collideSensor;i,int16(robot.position(1)+robot.radius*cos(pi/6*(i-1))),...
    int16(robot.position(2)+robot.radius*sin(pi/6*(i-1)))];
end
hold on;t=1;
M(t)=getframe;
while t<10000
    %�ж��Ƿ���ײ���ǣ��������򣻷����ǰ��
    [iscollide,number]=judgeCollide(robot,map);
    if iscollide
        %��ײ�㷨1��ԭ·����
        new_direction=method_1(number(1),robot.collideSensor);
        robot.direction=(new_direction-1)*pi*2/length(robot.collideSensor);
        %���������
        robot.direction=robot.direction+2*rand;
    end
    robot.position=robot.position+...
    [robot.parameter(1)*cos(robot.direction),robot.parameter(1)*sin(robot.direction)];
    %��ײ������λ�ø���
    for i=1:12
        robot.collideSensor(i,2)=int16(robot.position(1)+robot.radius*cos(pi/6*(i-1)));
        robot.collideSensor(i,3)=int16(robot.position(2)+robot.radius*sin(pi/6*(i-1)));
    end
    %��ʾ
    set(robotShape,'Position',...
    [robot.position(1)-robot.radius robot.position(2)-robot.radius 2*robot.radius 2*robot.radius]);
    set(robotDirection,'XData',[robot.position(1) robot.position(1)+robot.radius * cos(robot.direction)],...
    'YData',[robot.position(2) robot.position(2)+robot.radius * sin(robot.direction)]);
    sweep_area=plot(robot.position(1),robot.position(2),'Marker','o','MarkerSize',25,...
    'MarkerEdgeColor','green');
    M(t)=getframe;t=t+1;
end
% collide=judgeCollide(robot,map);

