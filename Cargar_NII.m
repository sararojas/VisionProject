%% Cargar Carpetas
addpath('NifTI_20140122');
addpath('Training_Batch');

%% Cargar Segmentación
s_Training_Batch_s = fullfile('Training_Batch','segmentation-0.nii');
e_CT_s = load_nii(s_Training_Batch_s);
m_CT_s = e_CT_s.img;

%% Cargar Volumen
s_Training_Batch1_v = fullfile('Training_Batch','volume-0.nii');
e_CT_v = load_nii(s_Training_Batch1_v);
m_CT_v = e_CT_v.img;

%% Ver CT

% m_CT_s = double(m_CT_s);
% m_CT_v = double(m_CT_v);
%
% for i = 1: size(m_CT_s,3)
%     figure(1);
%     subplot(1,2,1)
%     imshow(m_CT_s(:,:,i),[])
%     title(['Segmentación ', num2str(i)]);
%     subplot(1,2,2)
%     imshow(m_CT_v(:,:,i),[])
%     title(['Volumen ', num2str(i)]);
%
%     drawnow
%     pause(0.01)
% end

%% Cargar todas
% % s_dir = dir('Training_Batch');
% % m_dim = zeros(size(s_dir,1)-2/2,6);
% % for i = 1: size(s_dir,1)-2/2 % la mitad (segmentación y volumen)
% %     
% %     s_Training_Batch_s = fullfile('Training_Batch',strcat('segmentation-',num2str(i),'.nii'));
% %     e_CT_s = load_nii(s_Training_Batch_s);
% %     m_CT_s = e_CT_s.img;
% %     
% %     s_Training_Batch1_v = fullfile('Training_Batch',strcat('volume-',num2str(i),'.nii'));
% %     e_CT_v = load_nii(s_Training_Batch1_v);
% %     m_CT_v = e_CT_v.img;
% %     
% %     m_dim(i,:) = [size(m_CT_s,1),size(m_CT_s,2),size(m_CT_s,3),size(m_CT_v,1),size(m_CT_v,2),size(m_CT_v,3)];
% % end