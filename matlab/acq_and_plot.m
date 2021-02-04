function [ ] = acq_and_plot(  )

clear all;

diviseur = 8;

if 1
    filename = '/tmp/acquisition.cs8';
    fs = 863000000;
    fe = 8000000;
    lna_gain = 32;
    vga_gain = 32;
    device   = '0000000000000000088869dc3362561b';
    fstart   =     0;
    samples  = 3200000;

    str_e = sprintf('hackrf_transfer -a 1 -f %d -s %d -l %d -g %d -p 0 -a 0 -d %s -n %d -r %s',fs, fe, lna_gain, vga_gain, device, samples, filename);

    status = system( str_e );
else
    fstart   =     0;
    filename = '/tmp/reception.raw';
end


fid = fopen(filename);
x   = fread(fid, inf, 'int8');
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
    plot(I,'b');
hold on
    plot(Q,'r');
    legend('I', 'Q');

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
