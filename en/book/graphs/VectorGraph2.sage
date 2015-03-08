#!/usr/bin/env sage

# the points
points = [(2,4), (-3,4), (-5,-1), (5,-3)]

# This next little bit constructs the labels for the points
labels = []                     # This is the list of labels.

# Loop through the points
for point in points:
    # The label needs to be slightly to the right of the point, as to
    # not overwrite it.
    newpoint = (point[0] + 0.1, point[1])
    # This label will just have the coordinate listed, with some
    # styling.
    this_label = text("$"+str(point)+"$", newpoint, fontsize=25,
                      rgbcolor=(0,0,0), horizontal_alignment="left")

    # Add this label to the list.
    labels.append(this_label)
labels = sum(labels)

# A plot of the points
myticks = [range(-100,100)] * 2
pts = list_plot(points, 
                ticks=myticks,
                tick_formatter="latex",
                pointsize=25,
                axes_labels = ['$x$', '$y$']
               ) + labels
pts.set_axes_range(-6,6,-4,5)
pts.fontsize(25)
# Save it to a file
pts.save("VectorGraph2.png")
