x_n=[1 (1+sqrt(3)*1i)/2 0 1];
slice=6; %这里是迭代次数
for n=1:slice
    x_p=x_n;
    lastSeg=length(x_n)-1;
    for k=0:lastSeg-1
        dX=(x_p(k+2)-x_p(k+1))/3;x_n(4*k+1)=x_p(k+1);
        x_n(4*k+2)=x_p(k+1)+dX;
        x_n(4*k+3)=x_n(4*k+2)+dX*(1/2-sqrt(3)*1i/2);
        x_n(4*k+4)=x_p(k+1)+2*dX;
    end
    x_n(4*lastSeg+1)=x_p(lastSeg+1);
end
plot(x_n,'k--'),hold on;
axis equal;
