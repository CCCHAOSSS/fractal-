clear
num=501;n_max=500; 
x=linspace(-1.5,1.5,num); 
y=linspace(-1.5,1.5,num); 
[X,Y]=meshgrid(x,y); 
c=-1; 
for j=1:num 
     for k=1:num 
         n=1; 
         z0=x(j)+y(k)*1i; 
         z=z0^2+c;       %z0的四次方，不同次方生成的图形分支数不一样
         while abs(z^5)<=max(2,abs(c)) && n<n_max 
            if n==2 
                 z0=z; 
              z=z0^4+c; 
                 n=n+1; 
             else 
                 z0=z; 
               z=z0^4+c; 
                 n=n+1; 
             end 
         end 
         M(k,j)=n; 
     end 
end 
surf(X,Y,M); 
view(0,-90); 
shading flat 
colormap(gray); 
colorbar; 
axis equal  
