Print("\n","Comb ",j,"\n");
Y[j]:=[];
Ncom:=[];
for i in [1..li[j]] do
Bi:=[Binomial(t1,Com[j][i][1]),Binomial(t2,Com[j][i][2]),Binomial(t3,Com[j][i][3]),Binomial(t4,Com[j][i][4]),Binomial(t5,Com[j][i][5]),Binomial(t6,Com[j][i][6])];
for i3 in [1..6] do
if Bi[i3]=0 then Bi[i3]:=1;fi;
od;
Add(Ncom,Product(Bi));
od;
Print("\n","NumComb=",Sum(Ncom),"\n");
for i in [1..li[j]] do
Bin:=[Binomial(t1,Com[j][i][1]),Binomial(t2,Com[j][i][2]),Binomial(t3,Com[j][i][3]),Binomial(t4,Com[j][i][4]),Binomial(t5,Com[j][i][5]),Binomial(t6,Com[j][i][6])];
dd:=[];
for k in [1..6] do
d:=Combinations(VV[k],Com[j][i][k]);
Add(dd,d);
od;
for x1 in dd[1] do
for x2 in dd[2] do
for x3 in dd[3] do
for x4 in dd[4] do
for x5 in dd[5] do
for x6 in dd[6] do
cc:=Union(Union(x1),Union(x2),Union(x3),Union(x4),Union(x5),Union(x6));
if Size(cc)=r1 then if Size(ImagesSet(map,Union(V7[w],cc)))=125 then 
if Size(SubsemigroupNC(Em,Union(V7[w],cc)))=125 then 
Add(Y[j],Union(V7[w],cc));fi;fi;fi;
od;od;od;od;od;od;od;
Print("\n","List(Y,Size)=",List(Y,Size),"\n");
