# Interpolations in Matlab/Octave
--------

# Proximal Interpolation
-----------------------

Proximal_2x2
--------------
I find the number of points using the STEP parameter, given as a parameter
I declare a variable that will help me scroll through the pixels and associate them exactly the value of the nearest neighbor

Thus, for this case I considered that my image is divided into 4 subspaces
(4 squares that have the same values).
That's why I go through all the pixels and wonder if I'm in the first square (top left) or in the other 3 and I associate the pixel with one of the 4 known dots

Proximal_2x2RGB
-------------------
I extract the 3 channels
I apply the above function to them
I concatenate the 3 channels to a new image

Proximal_coef(Functia auxiliara folosita pentru rotatie)
-------------------
I calculated the matrix A as in the theme statement
We calculated the vector b
And now I have to solve the system A * x = b
Once I found out the inverse, the result is A ^-1 * b

PR_Inv
-----------
I wrote enough details/comments in the given function.
Thus, I first decompose the matrix A with Gramschimdt's QR decomposition algorithm.
After finding the orthogonal matrix Q and the upper triangular matrix R,
I use a function that calculates the elements in my inverted matrix by
backwardsubstitution. 

From the properties of the matrices above I come to the formula
R * x (i) = Q transposed * e_i (e_i is the column i in the identity matrix)

x (i) is the column in the inverted matrix.

In my case B will be the inverse of the matrix A.

So Q * R * [x1, x2, ..., xn] = In ([e1, e2, e3 ...]) multiply to the left with the transposed matrix

R * x_i = Q ^ t * e_i

and so do backwards substitution in the upper triangular matrix.

I took the algorithm from the lab and implemented it in a function according to the formula.

Depending on who I wrote, everyone is:

% solving a triangular upper system \
% U-triangular upper matrix \
% b is the right side of the equation \
% n - matrix size \
% x - solution vector \
% U x = b

Proximal_Resize
---------------
I calculate the scaling factors according to the dimensions given as a parameter.
Since they start scrolling from 0, the coefficient sx will be q-1 / n-1
We defined the inverse of the transformation matrix from the beginning, knowing that it is a diagonal one

I go through each pixel, I apply the inverse transformation on the 2 indices
and put in the resulting matrix in the coordinate system 1, n
Proximal_ResizeRGB
Like all such functions, I extract the 3 channels
I apply the function to each of them and then concatenate them to the final image

Proximal_rotate
---------------
Calculate cosine and sine of rotation_angle
I calculate the transformation matrix and its inverse (I notice that it is actually the transposed matrix)

I go through each pixel in the image and again I apply the transformed to these 2 indices to find out xp and yp from the initial image
Find the 4 dots surrounding xp, yp in the original image

I wonder if I somehow got out of the image space and calculate the coefficients with the help of the auxiliary function
Calculate the interpolated value of the pixel using the formula
a0 + a1x + a2y + a3xy and approximate to find the exact solution

Proximal_rotateRGB
------------------
Same procedure as in the functions of this type

# Interpolare Bicubică
----------------------

Bicubic_coef
-------------
I calculate the derivative matrix using the matrices received as a parameter and the coefficients
according to the statement in the topic

I also know that the image is represented by y, (positions in this order)
I calculate the matrices with which I will multiply on the left and on the right the previous one
to result in coefficients
All my matrices are converted to "double"

Precalc_d
-------------
With the help of the 3 functions that approximate my derivative according to x, y, xy I calculate the matrix of derivatives for all the pixels in the image
As I mentioned above (y is the index that represents the line in the image, vice versa
as I was used to)

I only apply the functions created for each derivative matrix but at the same time I draw attention to the limits within which I am allowed to calculate these derivatives.
Thus, for the matrix Ix the derivatives on the first and last column remain 0
For Iy, the first and last line remain 0
For Ixy, both rows and columns remain 0

Bicubic_resize
------------------
As with the proximal algorithm, I calculate the scaling factors and the inverse of the transformation
I apply the inverse transformation on the 2 indices and calculate xp, yp from the initial image
I find the 4 dots that surround the pixels xp, yp
and I see if the points are not the border points

I calculate the interpolation coefficients
Enter the coordinates in the unit square then calculate the approximate value at these points
We calculated the value by the 2 sums of coefficients and indices from the unit square

Bicubic_resizeRGB
------------------
Same procedure as for such functions
