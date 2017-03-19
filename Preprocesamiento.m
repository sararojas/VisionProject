%Preprocesamiento
%% Interpolación 3D

%m_inter3 = interp3(m_CT_v);

%% Ecualización - specificació de histograma

I =  m_CT_v(:,:,60);
Ia=I-min(min(I));
Ia=Ia/max(max(Ia));
%load('Function_histogram.mat');
%[In,If ] = Ec( I,p);
%h=histeq(m_I)