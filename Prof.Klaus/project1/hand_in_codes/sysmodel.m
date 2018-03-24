%	=== System Model: attitude dynamics ==================================

function x_new = sysmodel ( r, h, x_k, flag )

    m = r * h;
    
    if flag == 1
        % Runge-Kutta <3rd order>
        f = 1 + m + 1 / 2 * m^2 + 1 / 6 * m^3;
    elseif flag == 2
        % EULER
        sprintf('here')
        m
        f = 1 + m
    elseif flag == 3
        % TRAPEZOID
        f = (1 + 0.5 * m) / (1 - 0.5 * m);
    end
    
    x_new = f * x_k;
end