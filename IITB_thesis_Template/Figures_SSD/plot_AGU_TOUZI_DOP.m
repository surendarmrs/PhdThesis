
figure

alpha=xlsread('AG4U_Touzi_DOP.xlsx','A1:A16219');


agu=xlsread('AG4U_Touzi_DOP.xlsx','B1:B16219');


touzi=xlsread('AG4U_Touzi_DOP.xlsx','C1:C16219');

alpha_1=alpha(1:10:end);
agu_1=agu(1:10:end);
touzi_1=touzi(1:10:end);

%%%%%

hagu=scatter(agu_1,alpha_1,50);
hagu.MarkerFaceColor='r';
hagu.MarkerEdgeColor='r';
hagu.MarkerFaceAlpha=0.2;
hold on

%%%%%

ht=scatter(touzi_1,alpha_1,50);
ht.MarkerFaceColor='b';
ht.MarkerEdgeColor='b';
ht.MarkerFaceAlpha=0.2;


legend('AGU-Dop','Touzi-Dop');

yL = get(gca,'YLim');
line([0.5 0.5],yL);

xL = get(gca,'XLim');
line(xL,[20 20]);







