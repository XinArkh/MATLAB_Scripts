%	=== NUMERICAL INTEGRATION ===

function x_new = numint( r, h, x_k, flag )

    x_new = sysmodel ( r, h, x_k, flag );
end