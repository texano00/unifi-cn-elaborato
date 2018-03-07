function [Out_x,Out_count] = Es_5(delta)
x = 0; count = 0;
while x ~= 1
    x = x + delta;
    count = count + 1; 
end
Out_x = x;
Out_count = count;
end

