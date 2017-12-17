function new_direction=method_1(number,collideSensor)
number_collideSensor=length(collideSensor);
if number > number_collideSensor/2
    new_direction=number-number_collideSensor/2;
else
    new_direction=number+number_collideSensor/2;
end