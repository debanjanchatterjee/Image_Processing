A= imread('lena.jpg');
A=rgb2gray(A);
B=imread('fruits.jpg');
B=rgb2gray(B);
[m,n]=size(A);
I=zeros(m,n);
for x=1:225
    for y=1:225
        n=A(x,y)/B(x,y);
        if n>255
            n=255;
        end
        I(x,y)=n;
    end
end
I=uint8(I);
imwrite(I,'DivisionOutput.jpg');