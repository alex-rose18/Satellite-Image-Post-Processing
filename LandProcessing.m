clc
clear

%highlight land

load uk.jpg
uk = imread("uk.jpg");
figure

[y_max, x_max, z_max] = size(uk);

for y = 1:y_max
    for x = 1:x_max
        a = uk(y,x,1);
        b = uk(y,x,2);
        c = uk(y,x,3);
        if (a < 60) && (b > 50) && (c < 60)
            uk(y,x,1) = 0;
            uk(y,x,2) = 255;
            uk(y,x,3) = 0;
        else
            uk(y,x,1) = 0;
            uk(y,x,2) = 0;
            uk(y,x,3) = 0;
        end
    end
end

image(uk)
