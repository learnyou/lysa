#!/usr/bin/env sage

t = var('x')
squarelist = lambda x: [x, x]
pts = plot(sin(x), (x, -2*pi, 2*pi), 
           ticks=([0.5*pi*n for n in range(-4, 4)], range(-3, 3)), 
           tick_formatter=pi,
           axes_labels=['$x$', '$\sin(x)$'])
pts.set_axes_range(ymin=-2, ymax=2)
pts.fontsize(20)
pts.save("VectorGraph3.png")
