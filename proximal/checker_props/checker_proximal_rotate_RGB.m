%!test
%! img = imread("../tests/in/sample1_RGB.png");
%! angle = dlmread("../tests/in/angle1.txt");
%! img = double(proximal_rotate_RGB(img, angle));
%! R = img(:, :, 1);
%! G = img(:, :, 2);
%! B = img(:, :, 3);
%! R_ref = dlmread("../tests/ref/proximal/rotated1_R.txt");
%! G_ref = dlmread("../tests/ref/proximal/rotated1_G.txt");
%! B_ref = dlmread("../tests/ref/proximal/rotated1_B.txt");
%! assert(max(max(abs(R - R_ref))) <= 5 && max(max(abs(G - G_ref))) <= 5 && max(max(abs(B - B_ref))) <= 5);

%!test
%! img = imread("../tests/in/sample2_RGB.png");
%! angle = dlmread("../tests/in/angle2.txt");
%! img = double(proximal_rotate_RGB(img, angle));
%! R = img(:, :, 1);
%! G = img(:, :, 2);
%! B = img(:, :, 3);
%! R_ref = dlmread("../tests/ref/proximal/rotated2_R.txt");
%! G_ref = dlmread("../tests/ref/proximal/rotated2_G.txt");
%! B_ref = dlmread("../tests/ref/proximal/rotated2_B.txt");
%! assert(max(max(abs(R - R_ref))) <= 5 && max(max(abs(G - G_ref))) <= 5 && max(max(abs(B - B_ref))) <= 5);

%!test
%! img = imread("../tests/in/sample2_RGB.png");
%! angle = dlmread("../tests/in/angle3.txt");
%! img = double(proximal_rotate_RGB(img, angle));
%! R = img(:, :, 1);
%! G = img(:, :, 2);
%! B = img(:, :, 3);
%! R_ref = dlmread("../tests/ref/proximal/rotated3_R.txt");
%! G_ref = dlmread("../tests/ref/proximal/rotated3_G.txt");
%! B_ref = dlmread("../tests/ref/proximal/rotated3_B.txt");
%! assert(max(max(abs(R - R_ref))) <= 5 && max(max(abs(G - G_ref))) <= 5 && max(max(abs(B - B_ref))) <= 5);

%!test
%! img = imread("../tests/in/sample3_RGB.png");
%! angle = dlmread("../tests/in/angle4.txt");
%! img = double(proximal_rotate_RGB(img, angle));
%! R = img(:, :, 1);
%! G = img(:, :, 2);
%! B = img(:, :, 3);
%! R_ref = dlmread("../tests/ref/proximal/rotated4_R.txt");
%! G_ref = dlmread("../tests/ref/proximal/rotated4_G.txt");
%! B_ref = dlmread("../tests/ref/proximal/rotated4_B.txt");
%! assert(max(max(abs(R - R_ref))) <= 5 && max(max(abs(G - G_ref))) <= 5 && max(max(abs(B - B_ref))) <= 5);

%!test
%! img = imread("../tests/in/sample3_RGB.png");
%! angle = dlmread("../tests/in/angle5.txt");
%! img = double(proximal_rotate_RGB(img, angle));
%! R = img(:, :, 1);
%! G = img(:, :, 2);
%! B = img(:, :, 3);
%! R_ref = dlmread("../tests/ref/proximal/rotated5_R.txt");
%! G_ref = dlmread("../tests/ref/proximal/rotated5_G.txt");
%! B_ref = dlmread("../tests/ref/proximal/rotated5_B.txt");
%! assert(max(max(abs(R - R_ref))) <= 5 && max(max(abs(G - G_ref))) <= 5 && max(max(abs(B - B_ref))) <= 5);
