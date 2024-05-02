function [lambda] = get_lambda_ce(P , Q , E)
    if(P == Q)
        lambda = modulo_n(( ((3*(P(1)^2)) + E(2)) / (2*P(2))) , E(1));
    else
        lambda = modulo_n( ((Q(2) - P(2)) / (Q(1) - P(1))) , E(1));
    end
end