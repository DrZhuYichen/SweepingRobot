function iscollide=judgeCollide(robot,map)
iscollide=false;
%����ײ����collide��Ϊtrue
flag=0;
for i=1:length(robot.collideSensor)
    %�Ƿ񳬳���ͼ
    isoutmap=judgeoutmap([robot.collideSensor(i).XData, robot.collideSensor(i).YData],map);
    if ~isoutmap
        if map.data(robot.collideSensor(i).XData, robot.collideSensor(i).YData)==0
            flag=flag+1;
            fprintf('the Sensor number:%d detects obstacles!\n',i);
        end
    else
        fprintf('the Sensor number:%d detects cliff!\n',i);
    end
end
if flag>0
    iscollide=true;
end

    
    
    
    