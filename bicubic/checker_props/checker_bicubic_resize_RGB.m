%!test
%! img = imread("../tests/in/sample1_RGB.png");
%! x = dlmread("../tests/in/factorx1.txt");
%! y = dlmread("../tests/in/factory1.txt");
%! img = double(bicubic_resize_RGB(img, x, y));
%! ref = double(imread("../tests/ref/bicubic/resized1_RGB.png"));
%! R = img(:, :, 1);
%! G = img(:, :, 2);
%! B = img(:, :, 3);
%! R_ref = ref(:, :, 1);
%! G_ref = ref(:, :, 2);
%! B_ref = ref(:, :, 3);
%! assert(max(max(abs(R - R_ref))) <= 5 && max(max(abs(G - G_ref))) <= 5 && max(max(abs(B - B_ref))) <= 5);

%!test
%! img = imread("../tests/in/sample2_RGB.png");
%! x = dlmread("../tests/in/factorx2.txt");
%! y = dlmread("../tests/in/factory2.txt");
%! img = double(bicubic_resize_RGB(img, x, y));
%! ref = double(imread("../tests/ref/bicubic/resized2_RGB.png"));
%! R = img(:, :, 1);
%! G = img(:, :, 2);
%! B = img(:, :, 3);
%! R_ref = ref(:, :, 1);
%! G_ref = ref(:, :, 2);
%! B_ref = ref(:, :, 3);
%! assert(max(max(abs(R - R_ref))) <= 5 && max(max(abs(G - G_ref))) <= 5 && max(max(abs(B - B_ref))) <= 5);

%!test
%! img = imread("../tests/in/sample2_RGB.png");
%! x = dlmread("../tests/in/factorx3.txt");
%! y = dlmread("../tests/in/factory3.txt");
%! img = double(bicubic_resize_RGB(img, x, y));
%! ref = double(imread("../tests/ref/bicubic/resized3_RGB.png"));
%! R = img(:, :, 1);
%! G = img(:, :, 2);
%! B = img(:, :, 3);
%! R_ref = ref(:, :, 1);
%! G_ref = ref(:, :, 2);
%! B_ref = ref(:, :, 3);
%! assert(max(max(abs(R - R_ref))) <= 5 && max(max(abs(G - G_ref))) <= 5 && max(max(abs(B - B_ref))) <= 5);

%!test
%! img = imread("../tests/in/sample3_RGB.png");
%! x = dlmread("../tests/in/factorx4.txt");
%! y = dlmread("../tests/in/factory4.txt");
%! img = double(bicubic_resize_RGB(img, x, y));
%! ref = double(imread("../tests/ref/bicubic/resized4_RGB.png"));
%! R = img(:, :, 1);
%! G = img(:, :, 2);
%! B = img(:, :, 3);
%! R_ref = ref(:, :, 1);
%! G_ref = ref(:, :, 2);
%! B_ref = ref(:, :, 3);
%! assert(max(max(abs(R - R_ref))) <= 5 && max(max(abs(G - G_ref))) <= 5 && max(max(abs(B - B_ref))) <= 5);

%!test
%! img = imread("../tests/in/sample3_RGB.png");
%! x = dlmread("../tests/in/factorx5.txt");
%! y = dlmread("../tests/in/factory5.txt");
%! img = double(bicubic_resize_RGB(img, x, y));
%! ref = double(imread("../tests/ref/bicubic/resized5_RGB.png"));
%! R = img(:, :, 1);
%! G = img(:, :, 2);
%! B = img(:, :, 3);
%! R_ref = ref(:, :, 1);
%! G_ref = ref(:, :, 2);
%! B_ref = ref(:, :, 3);
%! assert(max(max(abs(R - R_ref))) <= 5 && max(max(abs(G - G_ref))) <= 5 && max(max(abs(B - B_ref))) <= 5);
