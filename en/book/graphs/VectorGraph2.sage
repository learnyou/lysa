#!/usr/bin/env sage

# the points
points = [(2,4), (-3,4), (-5,-1), (5,-3)]

# This next little bit constructs the labels for the points
labels = []
# Loop through the points
for point in points:
    # The label needs to be slightly to the right of the point, as to
    # not overwrite it.
    newpoint = (point[0] + 0.1, point[1])
    labels.append(
        text("$"+str(point)+"$", newpoint, fontsize=15, 
        rgbcolor=(0,0,0), horizontal_alignment="left"))
labels = sum(labels)

# A plot of the points
pts = list_plot(
        points, ticks=[range(-8,8), range(-8,8)], pointsize=50
    ) + labels
pts.set_axes_range(-8,8,-8,8)
# Save it to a file
pts.save("VectorGraph2.png")
