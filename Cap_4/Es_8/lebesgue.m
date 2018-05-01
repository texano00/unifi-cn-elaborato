function l = lebesgue(pts)
  rows_chebvand = length(pts);
  V_pts = gallery('chebvand',rows_chebvand,pts);
  M = max(5000,10*rows_chebvand);
  pts_leb = linspace(-1,1,M); %PUNTI TEST.
  V_leb = gallery('chebvand',rows_chebvand,pts_leb);
  l = norm(V_pts\V_leb,1);
end