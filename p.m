clear all;
m=2000;r_array = poissrnd(20,1,m); %random poisson numbers generator 
sum1=0;x=0;sum2=0;sum3=0;x1=0;
ave=[];xi=[];v=[];

for i = 1:m
    sum1=sum1+r_array(i);
    x=x+1;
    ave(i)=sum1/x; % mean value
end

for j=1:m
    xi(j)=(r_array(j)-ave(j))^2;
    sum2=sum2+xi(j);
    x1=x1+1;
    v(j)=sum2/x1;    % variance
end

subplot(1,2,1);plot(ave,'linewidth',1);
subplot(1,2,2);plot(v,'linewidth',1);
