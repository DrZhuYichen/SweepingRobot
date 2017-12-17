clc;
clear;
close all;
% 读取地图
figure = int16(im2bw(imread('map1.bmp')));%x,y与默认相反 
imshow(figure==1);
map.data = figure';
map.size=size(map.data);

% 扫地机器人参数
robot.radius=30;
robot.position=[200 400];
robot.parameter=[10,pi/18,10,pi/8];%最大线速度、角速度、线加速度、角加速度
    %-初始状态
robot.direction=pi/4;
robot.v=0;robot.w=0;

robotShape=rectangle('Curvature',[1 1],'LineWidth',1,'Position',...
[robot.position(1)-robot.radius robot.position(2)-robot.radius 2*robot.radius 2*robot.radius]);

robotDirection=line('Color','b','LineWidth',1,'XData',...
[robot.position(1) robot.position(1)+robot.radius * cos(robot.direction)],'YData',...
[robot.position(2) robot.position(2)+robot.radius * sin(robot.direction)]);

%扫地机器人周围设置12个碰撞传感器
hold on
for i=1:12
    robot.collideSensor(i)=plot(int16(robot.position(1)+robot.radius*cos(pi/6*(i-1))),...
    int16(robot.position(2)+robot.radius*sin(pi/6*(i-1))),'Marker','o');
end

setappdata(gcf,'robotInitial',robot);
setappdata(gcf,'mapInitial',map);
g_0=uicontrol('style','pushbutton','Position',[5 85 30 30],'String','开','Callback',@manualMode);
g_1=uicontrol('style','pushbutton','Position',[5 45 30 30],'String','闭','Callback',@autoMode);
% collide=judgeCollide(robot,map);

