P = [1 ; 21];
Q = [6 ; 7];
Neutro = [0 ; 0]; % Elemento Neutro

base = 23; % Modulo su cui si basa la curva
a = 14; b = 12; % Parametri della Curva
E = [base ; a ; b]; % Curva Ellittica

check_log = [0 , 0];

check_y = modulo_n( P(2)^2 , E(1));
check_x = modulo_n(P(1)^3 + E(2)*P(1) + E(3) , E(1));

if(check_x ~= check_y)
    msg = "WARNING : P Non appartenente ad E"
    check_log(1) = 1;
end

check_y = modulo_n( Q(2)^2 , E(1));
check_x = modulo_n(Q(1)^3 + E(2)*Q(1) + E(3) , E(1));

if(check_x ~= check_y)
    msg = "WARNING : Q Non appartenente ad E"
    check_log(2) = 1;
end

if check_log(1) + check_log(2) == 0
    somma_P_Q = somma_punti_curva_ellittica(P , Q  , E , Neutro); % P + Q
end


somma_P_Q = somma_punti_curva_ellittica(P , Q  , E , Neutro); % P + Q

somma_P_P = somma_punti_curva_ellittica(P , P  , E , Neutro); % P + P

somma_2P_2P = somma_punti_curva_ellittica(somma_P_P , somma_P_P  , E , Neutro); % 2P + 2P

somma_2P_P = somma_punti_curva_ellittica(P , somma_P_P  , E , Neutro); % 2P + P

scal = 11;
somma_scal_11 = moltiplicazione_scalare(P , E , scal , Neutro); % 11 * P

k = modulo_n( -1*P(2) ,E(1));
P_opposto = [P(1) ; k ];

somma_P_Popposto = somma_punti_curva_ellittica(P , P_opposto  , E , Neutro); % 2P + P


% Stampo i Residui Quadratici
Residui = zeros( E(1) , 1);
for i = 1 : E(1) -1
   Residui(i + 1) = modulo_n( i^2 , E(1));
end



clear Neutro a b base E Q scal check_x i check_y msg somma_Q_P k check_log;



