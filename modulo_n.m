function [modulo] = modulo_n(numero , n)
    if(n == 0)
        modulo = numero;
        return;
    end
    if(numero == floor(numero))
        if(numero < 0)
              numero = (n * abs(numero)) + numero;
        end
          
        modulo = round(((numero/n) - floor(numero/n)) * n);
    else
        [num , den] = rat(numero);
        for i = 1 : ( n - 1)
             dan = den * i;
             modulo = ((dan/n) - floor(dan/n)) * n;  
        
             if (round(modulo) == 1)
                 
                 break;
             end
        end
        m1 = round(modulo_n_intero( num , n));
        m2 = round(modulo_n_intero( i , n));
        modulo = round(modulo_n(m1 * m2 , n));

    end
end
