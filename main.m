clear;
% 读取地图
map.data = int16(im2bw(imread('2.bmp')));%x,y与默认相反
imshow(map.data==1);
map.size=size(map.data); map.size=[map.size(2), map.size(1)];
rectangle('position',[1 1 map.size(1)-1 map.size(2)-1],'EdgeColor','black','LineWidth',3);
% 扫地机器人参数
robot.radius=30;
robot.position=[1300 800];
robot.direction=pi/4;
robot.speed=10;
robotShape=rectangle('Curvature',[1 1],'LineWidth',1,'Position',...
[robot.position(1)-robot.radius robot.position(2)-robot.radius 2*robot.radius 2*robot.radius]);

robotDirection=line('Color','b','LineWidth',1,'XData',...
[robot.position(1) robot.position(1)+robot.radius * cos(robot.direction)],'YData',...
[robot.position(2) robot.position(2)+robot.radius * sin(robot.direction)]);

%扫地机器人周围设置8个碰撞传感器
%8个碰撞传感器坐标
%8个rectangle。

collide=iscollide(robot,map);








