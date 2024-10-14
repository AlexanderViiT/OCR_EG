A=imread('baseDatosOCR\A.bmp');
B=imread('baseDatosOCR\B.bmp');
C=imread('baseDatosOCR\C.bmp');
D=imread('baseDatosOCR\D.bmp');
E=imread('baseDatosOCR\E.bmp');
F=imread('baseDatosOCR\F.bmp');
G=imread('baseDatosOCR\G.bmp');
H=imread('baseDatosOCR\H.bmp');
I=imread('baseDatosOCR\I.bmp');
J=imread('baseDatosOCR\J.bmp');
K=imread('baseDatosOCR\K.bmp');
L=imread('baseDatosOCR\L.bmp');
M=imread('baseDatosOCR\M.bmp');
N=imread('baseDatosOCR\N.bmp');
O=imread('baseDatosOCR\O.bmp');
P=imread('baseDatosOCR\P.bmp');
Q=imread('baseDatosOCR\Q.bmp');
R=imread('baseDatosOCR\R.bmp');
S=imread('baseDatosOCR\S.bmp');
T=imread('baseDatosOCR\T.bmp');
U=imread('baseDatosOCR\U.bmp');
V=imread('baseDatosOCR\V.bmp');
W=imread('baseDatosOCR\W.bmp');
X=imread('baseDatosOCR\X.bmp');
Y=imread('baseDatosOCR\Y.bmp');
Z=imread('baseDatosOCR\Z.bmp');
uno=imread('baseDatosOCR\1.bmp');  
dos=imread('baseDatosOCR\2.bmp');
tres=imread('baseDatosOCR\3.bmp');
cuatro=imread('baseDatosOCR\4.bmp');
cinco=imread('baseDatosOCR\5.bmp'); 
seis=imread('baseDatosOCR\6.bmp');
siete=imread('baseDatosOCR\7.bmp');
ocho=imread('baseDatosOCR\8.bmp');
nueve=imread('baseDatosOCR\9.bmp'); 
cero=imread('baseDatosOCR\0.bmp');
%*-*-*-*-*-*-*-*-*-*-*-
letter=[A B C D E F G H I J K L M...
    N O P Q R S T U V W X Y Z];
number=[uno dos tres cuatro cinco seis siete ocho nueve cero];
character=[letter number];
templates=mat2cell(character,42,[24 24 24 24 24 24 24 ...
    24 24 24 24 24 24 24 ...
    24 24 24 24 24 24 24 ...
    24 24 24 24 24 24 24 ...
    24 24 24 24 24 24 24 24]);
save ('templates','templates')
clear all