function [iscollide,number]=judgeCollide(robot,map)
iscollide=false;
%����ײ����collide��Ϊtrue
flag=0;number=[];
for i=1:length(robot.collideSensor)
    %�Ƿ񳬳���ͼ
    isoutmap=judgeoutmap([robot.collideSensor(i,2), robot.collideSensor(i,3)],map);
    if ~isoutmap
        if map.data(robot.collideSensor(i,2), robot.collideSensor(i,3))==0
            flag=flag+1;
            fprintf('the Sensor number:%d detects obstacles!\n',i);
            number=[number,i];
        end
    else
        fprintf('the Sensor number:%d detects cliff!\n',i);
    end
end
if flag>0
    iscollide=true;
end

    
    
    
    