# Matlab_least_squares

xls=A\y

using linear regression with bias item, and we can see the performance is very bad.

look at the absolute_error.jpg shear_angle_value.jpg and true_predict_value.jpg

Then i try to using polynomial to optimize the performance.

look at correlation_coefficient.jpg and error_mean.jpg.

finally i choose n=5, 5 order polynomial.
theta10 + theta11*c1 + theta12*c1^2 + theta13*c1^3 + theta14*c1^4 + theta15*c1^5+ theta16*c1^(1/2) + theta17*c1^(1/3) + theta18*c1^(1/4) + theta19*c1^(1/5)+...

and then the performance is much better.

look at the absolute_error_poly.jpg shear_angle_value_poly.jpg and true_predict_value_poly.jpg

but using linear regression method man cannot get a satisfactory result!!

