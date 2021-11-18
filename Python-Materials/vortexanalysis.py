import numpy as np
import numpy.linalg as la
import math

## Using standard equations 

# def f(r):
#     x, y = r
#     return 2*x**2 + 8*x*y + 2*y**2 + 10*(np.sin(y)*np.sin(y)) + 10*np.cos(x*y)

# def df(r):
#     x, y = r
#     return np.array([8*y - 10*y*np.sin(x*y) + 4*x, 4*y + 8*x - 10*x*np.sin(x*y) + 10*np.sin(2*y)])
    
# def H(r):
#     x, y = r
#     return np.array([[8*y - 10*y*np.sin(x*y) + 4*x], [4*y + 8*x - 10*x*np.sin(x*y) + 10*np.sin(2*y)]])

# r = -4, np.pi/np.pi   


# s = la.solve(H(r), df(r))
# print(s)

A = np.array([[1, 567, 1], [1, 1, 333], [1, 456, 1]])
b = np.array([1938, 1, 9])
x = la.solve(A, b)
print(x)