%	=== NUMERICAL INTEGRATION ===

function x_new = numint(r, h, x_k)

x_new = sysmodel ( x_k, r, h );