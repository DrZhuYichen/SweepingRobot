function collide=iscollide(robot,map)
collide=false;
%�������˻���߽緢����ײ�����ϰ��﷢����ײ����collide��Ϊtrue
robot.radius=robot.radius+5;%���е��
%��ǽ��ײ
% collide_wall=0;
% if robot.position(1)<robot.radius || robot.position(2)<robot.radius || ...
% robot.position(1)>map.size(1)-robot.radius || robot.position(2)>map.size(2)-robot.radius
%     collide_wall=1;
% end
%���ϰ�����ײ
% flag=0;

%8��flag
%�ж���ײ�����������Ӧ�ĵ�ͼ���Ƿ�Ϊ1���ǣ�����ײ
%�κ�һ��Ϊ1������ײ

if collide_wall==1 || flag==1 
    collide=true;
end
    
    
    
    