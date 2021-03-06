R1 = 1;
C = 0.25;
R2 = 2;
L = 0.2;
R3 = 10;
a = 100;
R4 = 0.1;
Ro = 1000;

% V = [V1 V2 V3 V4 V5 iL ia];
G = [-1/R1 1/R2 0 0 0 0 0; 1/R1 -2/R2 0 0 0 -1 0; 0 0 1/R3 0 0 1 0; 0 0 0 -1/R4 1/R4 0 1;  0 0 0 1/R4 -1/R4 0 -1; 0 -1/L 1/L 0 0 1 0; 0 0 0 1 0 0 -a];
C = [-C C 0 0 0 0 0; C -C 0 0 0 0 0; 0 0 0 0 0 0 0; 0 0 0 0 0 0 0; 0 0 0 0 0 0 0; 0 0 0 0 0 0 0; 0 0 0 0 0 0 0];


for Vin = -10:10 
    F = [Vin 0 0 0 0 0 0];
    V = G\F';
end