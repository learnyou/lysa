#!/usr/bin/env sage

t = var('x')
squarelist = lambda x: [x, x]
pts = plot(
    sin(x),
    (x, -2*pi, 2*pi), 
    legend_label="$\sin$",
    ticks=0.5*pi,
    tick_formatter=pi,
    axes_labels=['$x$', '$y$']
) + plot(
    cos(x), 
    (x, -2*pi, 2*pi),
    legend_label="$\cos$",
    color='red'
)
pts.set_axes_range(ymin=-2, ymax=2)
pts.fontsize(20)
pts.save("VectorGraph4.png")
