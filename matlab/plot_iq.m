function [xc] = plot_iq( filename )

fid = fopen(filename);
x = fread(fid, inf, 'int8');
fclose(fid);

I = x(1:2:end); % On ne conserve que les données Q
Q = x(2:2:end); % On ne conserve que les données Q

offset = 10000;

% On limite le nombre de données pour l'affichage...
I = I(1:1+offset:100000+offset);
Q = Q(1:1+offset:100000+offset);

figure
hold on
plot(I,'b');
plot(Q,'r');
legend('I','Q');
hold off
