function collide=iscollide(robot,map)
collide=false;
%若机器人会与边界发生碰撞或与障碍物发生碰撞，则collide置为true
robot.radius=robot.radius+5;%线有点粗
%与墙碰撞
% collide_wall=0;
% if robot.position(1)<robot.radius || robot.position(2)<robot.radius || ...
% robot.position(1)>map.size(1)-robot.radius || robot.position(2)>map.size(2)-robot.radius
%     collide_wall=1;
% end
%与障碍物碰撞
% flag=0;

%8个flag
%判断碰撞传感器坐标对应的地图点是否为1，是，则碰撞
%任何一个为1，则碰撞

if collide_wall==1 || flag==1 
    collide=true;
end
    
    
    
    