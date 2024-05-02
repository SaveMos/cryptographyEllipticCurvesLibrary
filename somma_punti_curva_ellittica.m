function [punto_somma] = somma_punti_curva_ellittica(P,Q  , E , N)
    
    if(P == N)
        punto_somma = Q;
        return;
    end
    if (Q == N)
        punto_somma = P;
        return;
    end
    

    if(P == [Q(1) ; modulo_n(-1*Q(2) , E(1))])
        punto_somma = N;
    else
        lambda = get_lambda_ce(P , Q , E);
        n = E(1);
      
        x = modulo_n((lambda^2 - P(1) - Q(1)) , n);
        y = modulo_n((lambda*(P(1) - x) - P(2)), n);

        punto_somma = [x ; y];
end