%Soham Sasan
clc
function convert = converting(x,y)
    if x < 0 && y > 0
        convert = sqrt(x^2+y^2);
        convert2 = (atan(y/x) + pi)*(180/pi);
        fprintf("Value of radius is: %.3f and value of angle (in deg) is: %.3f ", convert, convert2)
    elseif x < 0 && y < 0
        convert = sqrt(x^2+y^2);
        convert2 = (atan(y/x) - pi)*(180/pi);
        fprintf("Value of radius is: %.3f and value of angle (in deg) is: %.3f ", convert, convert2)
    elseif x < 0 && y == 0
        convert = sqrt(x^2+y^2);
        convert2 = (pi)*(180/pi);
        fprintf("Value of radius is: %.3f and value of angle (in deg) is: %.3f ", convert, convert2)
    elseif x == 0 && y > 0
        convert = sqrt(x^2+y^2);
        convert2 = (pi/2)*(180/pi);
        fprintf("Value of radius is: %.3f and value of angle (in deg) is: %.3f ", convert, convert2)
    elseif x == 0 && y < 0
        convert = sqrt(x^2+y^2);
        convert2 = (-pi/2)*(180/pi);
        fprintf("Value of radius is: %.3f and value of angle (in deg) is: %.3f ", convert, convert2)
    elseif x == 0 && y == 0
        convert = sqrt(x^2+y^2);
        convert2 = (0)*(180/pi);
        fprintf("Value of radius is: %.3f and value of angle (in deg) is: %.3f ", convert, convert2)
    else
        convert = sqrt(x^2+y^2);
        convert2 = (atan(y/x))*(180/pi);
        fprintf("Value of radius is: %.3f  and value of angle (in deg) is %.3f \n", convert, convert2)
    end
end
x = input("Please enter x-value: ");
y = input("Please enter y-value: ");
convert = converting(x,y);