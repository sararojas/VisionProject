%Preprocesamiento - Ecualizar
 mkdir('Training_Batch_P');
load('x2.mat')
d = dir(fullfile('Training_Batch'));  %Qué archivos hay en la carpeta 'Trainng_Batch'
d = struct2cell(d)'; %Pasar de estructura a celda
d = natsortfiles(d(:,1)); %Organizar en orden natural los archivos.

for i = 198:199 %65 volumenes de entrenamiento
    s_Training_Batch_v = fullfile('Training_Batch',d{i}); %Dirección completa
    e_CT_v = load_nii(s_Training_Batch_v); %Cargar archivo .NII (CT)
    m_CT_v = e_CT_v.img; %Obtener solo los scans por CT
    
    for j = 1:size(m_CT_v,3)
        m_CT_p_v = m_CT_v(:,:,j)-min(min(m_CT_v(:,:,j)));
        m_CT_p_v = m_CT_p_v/max(max(m_CT_p_v)); %Normalizar de 0 a 1 el scan;
        m_CT_pe_v(:,:,j) = histeq(m_CT_p_v,x2); %Ecualizar
    end
    save(fullfile('Training_Batch_P',strcat(strrep(d{i},'.nii','.'),'mat')),'m_CT_pe_v');
    clear m_CT_pe_v m_CT_p_v
end





%% Ecualización - specificació de histograma
%format long
% I =  m_CT_v(:,:,60);
% Ia=I-min(min(I));
% Ia=Ia/max(max(Ia));
% load('Function_histogram.mat');
% hp = histeq(Ia);
% h = histeq(Ia,p);
% h1 = histeq(Ia,x1);
% h2 = histeq(Ia,x2);
% h3 = histeq(Ia,x3);
% subplot(2,3,1), imshow(Ia) 
% subplot(2,3,2), imshow(hp) 
% subplot(2,3,3), imshow(h)
% subplot(2,3,4), imshow(h1) 
% subplot(2,3,5), imshow(h2) 
% subplot(2,3,6), imshow(h3)