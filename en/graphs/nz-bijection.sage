#!/usr/bin/env sage

from numpy import arange

# the function q(x) from before
def q(x):
    if x % 2 == 0:
        return x/2
    else:
        return -1 * ((x+1)/2)

points = []                     # Empty list of points
labels = []                     # Empty list of labels
point_color='blue'
label_color='black'
line_color='red'
font_size=15

# We're going to use a pretty limited set of inputs, from 0 to 10,
# inclusive
for x in range(0, 11):
    # We're going to append the vector (x, q(x)) to the list of
    # points.
    point = (x, q(x))
    points.append(point)

    # Next, we need to create a label
    t = text('$' + str(point) + '$',
             (point[0]+0.03, point[1]-0.4),
             rgbcolor=label_color,
             fontsize=20,
             horizontal_alignment='left'
            )
    labels.append(t)        # Add the label to the list

# Next, we need to plot the points
plt = list_plot(points,
                pointsize=100,                 # Larger points
                ticks=[1,1],
                # tick_formatter=1,             # The ticks should be pretty
                color=point_color,            # Red points
                axes_labels=['$x$', '$q(x)$'] # Labels for the axes
               )

plt = plt + sum(labels)         # add the labels
plt.fontsize(font_size)
plt.save("nz-bijection.png")    # Save the graph to a file

joins = list_plot(points, color=line_color, plotjoined=True, thickness=2, linestyle="--")
joined_plot = plt + joins
joined_plot.fontsize(font_size)
joined_plot.save("nz-bijection-joined.png")

t = var('t')
lines = sum(
    [ plot(0.5*t, (t, 0, 10), color='red'),
      plot((-0.5*t) - 0.5, (t, 1, 9), color='red')
    ]
)
lined_plot = joined_plot + lines
lined_plot.fontsize(font_size)
lined_plot.save("nz-bijection-withlines.png")
