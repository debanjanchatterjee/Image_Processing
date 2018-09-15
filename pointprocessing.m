I=imread('lena.jpg');
I=rgb2gray(I);
N=255-I;
N=uint8(N);
imwrite(N,'Negative.jpg');
[m,n]=size(I);
O=zeros(m,n);
c=10;
for x=1:m
    for y=1:n
        s=double(1+I(x,y));
        O(x,y)=c*log(s);
    end
end
O=uint8(O);
imwrite(O,'LogTransform.jpg');
O=zeros(m,n);
for x=1:m
    for y=1:n
        if I(x,y)==0
            I(x,y)=I(x,y)+1;
        end
        s=0.25*(I(x,y)^1);
        if s>255
            s=255
        end
        O(x,y)=s;
        
    end
end
O=uint8(O);
imwrite(O,'PowerLawTransform.jpg');

        