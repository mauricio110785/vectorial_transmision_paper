

Nv = 9.6;
Nh = 1.5;
uv = 1.7;
uh = 0.666;
Ro = zeros(1000,1000);
betahv = 0:0.001:1;
betavh = 0:0.00001:0.01;


for i = 1:1000
    for j = 1:1000
        Ro(i,j) = sqrt((Nv*Nh*betahv(j)*betavh(i))/(uv*uh));
    end
end

% betahv_ = 0:stephv:betahv;
% betavh_ = 0:stepvh:betavh;

mesh(betahv(1:end-1),betavh(1:end-1),Ro)

figure

Ro2 = zeros(1000,1);
betavh2 = 0:0.0005:0.5;
betahv = 1;
betavh = 0.01;

for i = 1:1000
        
        Ro2(i) = sqrt((Nv*Nh*betahv*(betavh+betavh2(i)))/(uv*uh));
end

plot(betavh2(1:end-1),Ro2)