#!/usr/bin/env sage

from numpy import arange

squarelist = []
textlist = []

for x in arange(-10,11):
    t = text('$' + str((x, x**2)) + '$',
             (x+0.3, x**2),
             rgbcolor='black',
             horizontal_alignment='left'
            )
    squarelist.append((x,x**2))
    textlist.append(t)

pts = list_plot(squarelist,
                ticks=2,
                tick_formatter=1,
                pointsize=15,
                color='red',
                axes_labels=['$x$', '$f(x)$']
               )
pts.set_axes_range(xmin=-11, xmax=11, ymin=-10, ymax=110)
pts.fontsize(15)
pts.save("x-squared-nolabels.png")

# Add labels
pts_with_labels = pts + sum(textlist)
pts_with_labels.save("x-squared-labels.png")

# Add connecting lines
pts_with_conn = pts_with_labels + list_plot(squarelist, plotjoined=True)
pts_with_conn.save("x-squared-joined.png")

# Add Curve
x=var('x')
pts_with_curve = pts + plot(x^2, (x, -11, 11), color='green')
pts_with_curve.save("x-squared-withcurve-nolabels.png")

curve = plot(x^2, (x, -11, 11),
             color='green',
             ticks=[list(arange(-20,20,2)), list(arange(0,140,20))],
             thickness=5,
             axes_labels=['$x$', '$y$'])
             # legend_label='$\\lambda (x) \\to x^2$')
curve.fontsize(25)
curve.save("x-squared-curve.png")
