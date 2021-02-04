function [ ] = acq_and_plot_rtlsdr(  )

clear all;

diviseur = 8;

if 1
    filename = '/tmp/acquisition.cu8';
    fs = 863000000;
    fe = 2000000;
    fstart   =     0;
    samples  = 80000;

    str_e = sprintf('rtl_sdr -f %d -s %d -g %d -n %d %s',fs, fe, 0, samples, filename);

    status = system( str_e );
else
    fstart   =     0;
    filename = '/tmp/reception.cu8';
end


fid = fopen(filename);
x   = fread(fid, inf, 'uint8');
x   = x - 128;
fclose(fid);

I = x(1+fstart:2:end/diviseur); % On ne conserve que les données Q
Q = x(2+fstart:2:end/diviseur); % On ne conserve que les données Q

xc = I.^2 + Q.^2; % Calcul du module du signal I/Q
xc = sqrt(xc); % Calcul du module du signal I/Q
xy = sqrt(max(I.^2, Q.^2));

subplot(4,1,1);
    plot(I,'b');
    legend('I');

subplot(4,1,2);
    plot(Q,'r');
    legend('Q');

subplot(4,1,3);
    plot(xc);
    legend('module');

subplot(4,1,4);
    plot(xy);
    legend('max(module)');


%figure
%hold on
%plot(xc, 'p' );
%legend('I','Q','abs');
%hold off
