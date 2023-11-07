
(
Fb1_ODEdef(\Vanderpol2, { |t, y, mu = 1.0, input=0.0|
    [
		{ y[1] },
		{ mu * y[1] * (1 - y[0].squared) - y[0] + input}
    ]
}, 0, [0, 1], 1, 1);
)

d = Fb1_ODEdef.at(\Vanderpol2);
d.nextN(800, \sym2, 0, [0.6, 1], 0.02, []).flop.plot;

