
%SE USARÁ LA SENTENCIA WNOFF PARA EL RECONOCIMIENTO DE LETRAS
%YA QUE ALGUNAS GENERAN PROBLEMAS

warning off %#ok<WNOFF>
clc, close all, clear all

%SI SE DESEA CAMBIAR LA IMAGEN QUE SERÁ DE ENTRADA, ESTA ES
%LA LINEA DE CÓDIGO DONDE SE HA DE CAMBIAR POR EL NOMRBE DESEADO
%QUE TAMBIÉN HA DE ENCONTRARSE EN LA MISMA CARPETA

imagen=imread('TEST_2.jpg');
imshow(imagen);
title('RESULTADOS')

%SE USAN ESCALAS DE GRISES, PARA RECONOCER LA IMAGEN
if size(imagen,3)==3 %RGB image
    imagen=rgb2gray(imagen);
end
%SE CONVERTIRÁ DEL COLOR GRIS, A BLANCO Y NEGRO
threshold = graythresh(imagen);
imagen =~im2bw(imagen,threshold);
%SE DEFINIRÁ UN LIMITE DE 30px, AÚN CUANDO LA IMAGEN MIDE 24px
imagen = bwareaopen(imagen,30);
word=[ ];
re=imagen;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%ESCRIBIR TEXTO DE ENTRADA%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fid = fopen('text.txt', 'wt');
load templates
global templates
num_letras=size(templates,2);

%CICLO PARA CONTAR CADA UNA DE LAS LETRAS
while 1
    [fl re]=lines(re);
    imgn=fl;
    [L Ne] = bwlabel(imgn);    
    for n=1:Ne
        [r,c] = find(L==n);
        n1=imgn(min(r):max(r),min(c):max(c));  
        img_r=imresize(n1,[42 24]);
        
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        %%%%CONVERTIR IMAGEN A TEXTO
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        letter=read_letter(img_r,num_letras);
        word=[word letter];
    end
    
    %IMPRIMIR TEXTO
    fprintf(fid,'%s\n',word);
    word=[ ];
    if isempty(re)
        break
    end    
end
fclose(fid);

%%%%%%%%%%MOSTRAR ARCHIVO DE TEXTO CON RESULTADO
winopen('text.txt')
clear all