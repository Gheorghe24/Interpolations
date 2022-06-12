%!test
%! I = imread("../tests/in/sample1.png");
%! [Ix, Iy, Ixy] = precalc_d(I);
%! Ix_ref = dlmread("../tests/ref/bicubic/Ix1.txt");
%! Iy_ref = dlmread("../tests/ref/bicubic/Iy1.txt");
%! Ixy_ref = dlmread("../tests/ref/bicubic/Ixy1.txt");
%! assert(max(max(abs(Ix_ref - Ix))) <= 5 && max(max(abs(Iy_ref - Iy))) <= 5 && max(max(abs(Ixy_ref - Ixy))) <= 5);

%!test
%! I = imread("../tests/in/sample2.png");
%! [Ix, Iy, Ixy] = precalc_d(I);
%! Ix_ref = dlmread("../tests/ref/bicubic/Ix2.txt");
%! Iy_ref = dlmread("../tests/ref/bicubic/Iy2.txt");
%! Ixy_ref = dlmread("../tests/ref/bicubic/Ixy2.txt");
%! assert(max(max(abs(Ix_ref - Ix))) <= 5 && max(max(abs(Iy_ref - Iy))) <= 5 && max(max(abs(Ixy_ref - Ixy))) <= 5);

%!test
%! I = imread("../tests/in/sample3.png");
%! [Ix, Iy, Ixy] = precalc_d(I);
%! Ix_ref = dlmread("../tests/ref/bicubic/Ix3.txt");
%! Iy_ref = dlmread("../tests/ref/bicubic/Iy3.txt");
%! Ixy_ref = dlmread("../tests/ref/bicubic/Ixy3.txt");
%! assert(max(max(abs(Ix_ref - Ix))) <= 5 && max(max(abs(Iy_ref - Iy))) <= 5 && max(max(abs(Ixy_ref - Ixy))) <= 5);
