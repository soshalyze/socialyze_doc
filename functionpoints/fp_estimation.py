import numpy as np
from sklearn.linear_model import LinearRegression
from matplotlib import pyplot as plt


x = np.array([13, 6, 7, 9, 10, 0]).reshape((-1, 1))
y = np.array([30.6, 20.1, 22.7, 24.4, 25, 0])


model = LinearRegression().fit(x, y)

intercept =  model.intercept_
coeff =  model.coef_[0]

y = [y_val - intercept for y_val in y]
new_fps = [31.7, 27.7, 29.8]
new_time = [fp / coeff for fp in new_fps]

func_x = np.linspace(0, 15, 200)
func_y = [coeff * x_val for x_val in func_x]

plt.plot(x, y, 'bo')
plt.plot(new_time, new_fps, 'go')
plt.plot(func_x, func_y, 'r-')
plt.xlabel('Time spent / estimated')
plt.ylabel('Function points')
plt.show()
