function isoutmap=judgeoutmap(point,map)
%ÅĞ¶ÏpointÊÇ·ñ³¬³öµØÍ¼
isoutmap=false;
if point(1)<1 || point(1)>map.size(1) ||...
point(2)<1 || point(2)>map.size(2) 
    isoutmap=true;
end