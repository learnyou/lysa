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

# We're going to use a pretty limited set of inputs, from 0 to 10,
# inclusive
fake_x = 0
for x in range(0, 150):
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
                pointsize=55,                 # Larger points
                ticks=my_ticks,
                # plotjoined=True,
                tick_formatter='latex',         # The ticks should be pretty
                color=point_color,            # Red points
                axes_labels=['x', 'y'] # Labels for the axes
               ) + list_plot(points, plotjoined=True, color=line_color)
plt.fontsize(font_size)
plt.save("nq-bijection.png")    # Save the graph to a file
