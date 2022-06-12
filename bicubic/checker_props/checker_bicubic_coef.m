%!test
%! f = dlmread("../tests/in/bicubic_coef/f_1.txt");
%! Ix = dlmread("../tests/in/bicubic_coef/Ix_1.txt");
%! Iy = dlmread("../tests/in/bicubic_coef/Iy_1.txt");
%! Ixy = dlmread("../tests/in/bicubic_coef/Ixy_1.txt");
%! x1 = dlmread("../tests/in/bicubic_coef/x1_1.txt");
%! y1 = dlmread("../tests/in/bicubic_coef/y1_1.txt");
%! x2 = dlmread("../tests/in/bicubic_coef/x2_1.txt");
%! y2 = dlmread("../tests/in/bicubic_coef/y2_1.txt");
%! a = bicubic_coef(f, Ix, Iy, Ixy, x1, y1, x2, y2);
%! a_ref = dlmread("../tests/ref/bicubic/coef1.txt");
%! assert(norm(double(a_ref) - double(a)) <= 1e-3);

%!test
%! f = dlmread("../tests/in/bicubic_coef/f_2.txt");
%! Ix = dlmread("../tests/in/bicubic_coef/Ix_2.txt");
%! Iy = dlmread("../tests/in/bicubic_coef/Iy_2.txt");
%! Ixy = dlmread("../tests/in/bicubic_coef/Ixy_2.txt");
%! x1 = dlmread("../tests/in/bicubic_coef/x1_2.txt");
%! y1 = dlmread("../tests/in/bicubic_coef/y1_2.txt");
%! x2 = dlmread("../tests/in/bicubic_coef/x2_2.txt");
%! y2 = dlmread("../tests/in/bicubic_coef/y2_2.txt");
%! a = bicubic_coef(f, Ix, Iy, Ixy, x1, y1, x2, y2);
%! a_ref = dlmread("../tests/ref/bicubic/coef2.txt");
%! assert(norm(double(a_ref) - double(a)) <= 1e-3);

%!test
%! f = dlmread("../tests/in/bicubic_coef/f_3.txt");
%! Ix = dlmread("../tests/in/bicubic_coef/Ix_3.txt");
%! Iy = dlmread("../tests/in/bicubic_coef/Iy_3.txt");
%! Ixy = dlmread("../tests/in/bicubic_coef/Ixy_3.txt");
%! x1 = dlmread("../tests/in/bicubic_coef/x1_3.txt");
%! y1 = dlmread("../tests/in/bicubic_coef/y1_3.txt");
%! x2 = dlmread("../tests/in/bicubic_coef/x2_3.txt");
%! y2 = dlmread("../tests/in/bicubic_coef/y2_3.txt");
%! a = bicubic_coef(f, Ix, Iy, Ixy, x1, y1, x2, y2);
%! a_ref = dlmread("../tests/ref/bicubic/coef3.txt");
%! assert(norm(double(a_ref) - double(a)) <= 1e-3);

%!test
%! f = dlmread("../tests/in/bicubic_coef/f_4.txt");
%! Ix = dlmread("../tests/in/bicubic_coef/Ix_4.txt");
%! Iy = dlmread("../tests/in/bicubic_coef/Iy_4.txt");
%! Ixy = dlmread("../tests/in/bicubic_coef/Ixy_4.txt");
%! x1 = dlmread("../tests/in/bicubic_coef/x1_4.txt");
%! y1 = dlmread("../tests/in/bicubic_coef/y1_4.txt");
%! x2 = dlmread("../tests/in/bicubic_coef/x2_4.txt");
%! y2 = dlmread("../tests/in/bicubic_coef/y2_4.txt");
%! a = bicubic_coef(f, Ix, Iy, Ixy, x1, y1, x2, y2);
%! a_ref = dlmread("../tests/ref/bicubic/coef4.txt");
%! assert(norm(double(a_ref) - double(a)) <= 1e-3);

%!test
%! f = dlmread("../tests/in/bicubic_coef/f_5.txt");
%! Ix = dlmread("../tests/in/bicubic_coef/Ix_5.txt");
%! Iy = dlmread("../tests/in/bicubic_coef/Iy_5.txt");
%! Ixy = dlmread("../tests/in/bicubic_coef/Ixy_5.txt");
%! x1 = dlmread("../tests/in/bicubic_coef/x1_5.txt");
%! y1 = dlmread("../tests/in/bicubic_coef/y1_5.txt");
%! x2 = dlmread("../tests/in/bicubic_coef/x2_5.txt");
%! y2 = dlmread("../tests/in/bicubic_coef/y2_5.txt");
%! a = bicubic_coef(f, Ix, Iy, Ixy, x1, y1, x2, y2);
%! a_ref = dlmread("../tests/ref/bicubic/coef5.txt");
%! assert(norm(double(a_ref) - double(a)) <= 1e-3);