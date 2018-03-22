function h_crit = findMaxH()
    clear;clc;
    h_crit = 1e10;
    for angle = 0:0.1:90
        J_0 = [0, 1; -9.81*cos(angle/180*pi), -0.1];
        mainLambda = min(eig(J_0));
        h_crit = min(calH(mainLambda), h_crit);
    end
end

function h = calH(lambda)
    accuracy = 1e-4;
    h_upField = 10;
    for h = h_upField-4:-accuracy:accuracy
        fai = calFai(h*lambda);
        if abs(fai) < 1 && abs(fai) >= 0
            break
        end
    end
end

function fai = calFai(miu)
    fai = 1+miu+0.5*miu^2+1/6*miu^3+1/24*miu^4;
end