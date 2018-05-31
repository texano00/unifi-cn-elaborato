function l = lebesgue2(pts)
  rows_chebvand = length(pts);
  V_pts = gallery('chebvand',rows_chebvand,pts);
  pts_leb = linspace(-1,1,1001); %PUNTI TEST.
  V_leb = gallery('chebvand',rows_chebvand,pts_leb);
  l = norm(V_pts\V_leb,1);
end