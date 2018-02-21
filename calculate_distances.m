x = [27 11 31 22 21 11 25 11 26 25 17 4 31 17 19 35 6 10 38 14 23 24 25 15];
y = [7 4 30 21 18 18 30 9 24 18 14 12 13 11 3 10 26 13 11 1 16 13 11 4];

distances = zeros(24,24);

for i = 1:24
    for j = 1:24
        xi = x(i);
        yi = y(i);
        xj = x(j);
        yj = y(j);
        distances(i,j) = sqrt((xi-xj)^2 + (yi-yj)^2);
    end
end

list = "[";
for i = 1:24
    list = list + "[";
    for j = 1:24
        list = list +" "+ num2str(distances(i,j),3);
    end
    list = list + "]";
end
list = list + "]";