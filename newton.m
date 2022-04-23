clear
num=600;n_max=30; 
x=linspace(-1.5,1.5,num); 
y=linspace(-1.5,1.5,num); 
[X,Y]=meshgrid(x,y); 

for j=1:num 
     for k=1:num 
         n=1; 
         z0=x(j)+y(k)*1i; 
         z=z0-(z0^5-1)/(5*z0^4);                
         while abs(z-z0)>10e-6 && n<n_max 
             z0=z; 
            z=z-(z0^5-1)/(5*z0^4);     %newtonµü´ú¹«Ê½
             n=n+1; 
         end 
         M(k,j)=n; 
     end 
end 
surf(X,Y,M); 
view(0,-90); 
shading flat 
colormap(flipud(jet)); 
colorbar; 
axis equal