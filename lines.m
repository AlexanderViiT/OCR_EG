function [fl re]=lines(im_texto)
% EN ESTA FUNCION, SE DIVIDIRÁ EL TEXTO EN LINEAS, SIENDO
% im_texto La imagen de entrada
% f1 La primer linea del texto
% re Las lineas restantes del texto

% Ejempo
% Si se desea utilizar una imagen especial, se ha de remplazar el nombre en
% TEST.jpg

im_texto=clip(im_texto);
num_filas=size(im_texto,1);
for s=1:num_filas
    if sum(im_texto(s,:))==0
        nm=im_texto(1:s-1, :); % PRIMERA LINEA DE LA MATRIZ SEGÚN EL CICLO
        rm=im_texto(s:end, :);% FINAL DE LA LINEA RESTANTE SEGUN LA DE ARRIBA
        fl = clip(nm);
        re=clip(rm);
        break
    else
        fl=im_texto;
        re=[ ];
    end
end

%En esta funcion, se busca recortar la imagen
function img_out=clip(img_in)
[f c]=find(img_in);
img_out=img_in(min(f):max(f),min(c):max(c));