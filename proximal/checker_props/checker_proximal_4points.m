%!test
%! f = imread("../tests/in/points1.png");
%! step = dlmread("../tests/in/points1_step.txt");
%! img = proximal_2x2(f, step);
%! ref = dlmread("../tests/ref/proximal/2x2_1.txt");
%! assert(max(max(abs(ref - int32(img)))) <= 5);

%!test
%! f = imread("../tests/in/points2.png");
%! step = dlmread("../tests/in/points2_step.txt");
%! img = proximal_2x2(f, step);
%! ref = dlmread("../tests/ref/proximal/2x2_2.txt");
%! assert(max(max(abs(ref - int32(img)))) <= 5);

%!test
%! f = imread("../tests/in/points3.png");
%! step = dlmread("../tests/in/points3_step.txt");
%! img = proximal_2x2(f, step);
%! ref = dlmread("../tests/ref/proximal/2x2_3.txt");
%! assert(max(max(abs(ref - int32(img)))) <= 5);
