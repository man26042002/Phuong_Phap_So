% + Bang ham plot:
% - plot(<x>,<y>,<frm>,<x1>,<y1>,<frm1>,...)
% - plot(<x>,<y>,<x1>,<y1>,...)
figure(1)
x = 0:0.5:10;
y1 = cos(2*x)./(x+1)+1.2;
y2=0.1*x.*cos(2*x)+1.2;
plot(x,y1,':+b',x,y2,'-*r');
% Them tieu de cho hinh ve, cac truc,cac duong bieu dien va
% ghi chu o cac diem dac biet:
title('Do thi 2 dao dong');
xlabel('t-thoi gian');ylabel('x-li do');
legend('x= cos(2*t)/(t+1)+1.2','x= 0.1*t*cos(2*t)+1.2');
text(9.2,2.2,'Cuc dai');gtext('Cuc tieu');