function [R] = moltiplicazione_scalare(P ,E , scalare , N)
    
    scalare = floor(abs(scalare));

    if(scalare == 1)
        R = P;% Neutro Moltiplicativo
    elseif(scalare == 0)
        R = N;
    elseif(scalare == 2)
        R = somma_punti_curva_ellittica(P , P , E , N);
    else
        R = somma_punti_curva_ellittica(P , P , E , N);
        for i = 2 : (scalare - 1)
           R = somma_punti_curva_ellittica(R , P , E , N);
        end
    end
end