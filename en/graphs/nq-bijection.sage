#!/usr/bin/env sage

import numpy as np

class Point:
    def __init__(self, x, y, derivative):
        self.x = x
        self.y = y
        self.derivative = derivative

def quadrant(x,y):
    if (0 < x) and (0 < y):
        return 1
    elif (0 > x) and (0 < y):
        return 2
    elif (0 > x) and (0 > y):
        return 3
    elif (0 < x) and (0 > y):
        return 4
    else:
        return 1

def rotate90(x, y):
    matr = [[0, -1], [1, 0]]
    matrresult = list(np.dot([x,y], matr))
    return matrresult

def nq(n):
    if n == 0:
        return Point(0, 1, (1, 0))
    else:
        oldpoint = nq(n-1) 
        corner = abs(oldpoint.x) == abs(oldpoint.y)
        if quadrant(oldpoint.x, oldpoint.y) == 2:
            corner = oldpoint.y + oldpoint.x == 1
        odx, ody = oldpoint.derivative
        if corner:
            (dx, dy) = list(rotate90(*oldpoint.derivative))
        else:
            (dx, dy) = oldpoint.derivative
        newcoords = (oldpoint.x + dx, oldpoint.y + dy)
        return Point(newcoords[0], newcoords[1], (dx, dy))

points = []                     # Empty list of points
labels = []                     # Empty list of labels
point_color='red'
label_color='black'
line_color='blue'
font_size=15
my_ticks=[range(-100,100)] * 2
my_pointsize=100
my_x_arrowcut=0.0
my_y_arrowcut=0.0
my_arrowcut=0.2
my_arrowparams={
    'color': line_color,
    'width': 2,
    'arrowsize': 4,
}

# We're going to use a pretty limited set of inputs, from 0 to 10,
# inclusive
fake_x = 0
for x in range(0, 156):
    # We're going to append the vector (x, q(x)) to the list of
    # points.
    point = nq(fake_x)
    if point.y == 0:
        fake_x = fake_x + 1
        point=nq(fake_x)
    points.append((point.x, point.y))

    # Next, we need to create a label
    t = text('$' + str(point) + '$',
             (point.x+0.03, point.y-0.4),
             rgbcolor=label_color,
             fontsize=20,
             horizontal_alignment='left'
            )
    labels.append(t)        # Add the label to the list
    fake_x = fake_x + 1

print(points)

# Next, we need to plot the points
plt = list_plot(points,
                pointsize=my_pointsize,
                ticks=[1,1],
                color=point_color,
                axes_labels=['x', 'y']
               )

lines = list_plot(points, plotjoined=True, color=line_color)
# for a in range(1, len(points)):
#     thispoint = points[a]
#     prevpoint = points[a-1]
#     x_difference = thispoint[0] - prevpoint[0] 
#     y_difference = thispoint[1] - prevpoint[1]
#     new_prevpoint,new_thispoint = list(prevpoint),list(thispoint)

#     if x_difference < 0:
#         new_prevpoint[0] = prevpoint[0] - my_x_arrowcut
#         new_thispoint[0] = thispoint[0] + my_x_arrowcut
#     elif x_difference > 0:
#         new_prevpoint[0] = prevpoint[0] + my_x_arrowcut
#         new_thispoint[0] = thispoint[0] - my_x_arrowcut
#     elif y_difference < 0:
#         new_prevpoint[1] = prevpoint[1] - my_y_arrowcut
#         new_thispoint[1] = thispoint[1] + my_y_arrowcut
#     elif y_difference > 0:
#         new_prevpoint[1] = prevpoint[1] + my_y_arrowcut
#         new_thispoint[1] = thispoint[1] - my_y_arrowcut
#     lines.append(arrow(new_prevpoint, new_thispoint,
#                        **my_arrowparams))

plt.fontsize(font_size)
(plt+lines).save("nq-bijection.png")
plt.save("nq-bijection-nolines.png")

t = var('t')
naive = sum([arrow((i+my_arrowcut,1), (i+1-my_arrowcut, 1),
                   **my_arrowparams) for i in range(0,6)])
q = plt+naive
q.set_axes_range(xmax=6)
q.save('nq-bijection-naive.png')
