
ac=152
I=131
g=255
K=180
s=math
N=s.max
ak=s.min
abs=s.abs
S=s.floor
sqrt=s.sqrt
j=input.getNumber
aa=input.getBool
bm=output.setNumber
pi=s.pi
aU=false
ag=true
Y=table.remove
aj=string
function ax(c,o)return{(c[1]+o[1]),(c[2]+o[2])}end
function bw(c,o)return c[1]*o[2]-c[2]*o[1]end
function sub(c,o)return{(c[1]-o[1]),(c[2]-o[2])}end
function ba(c,o)return{c[1]*o,c[2]*o}end
function bI(c)return((c+K)%360)-K end
function sin(c)return s.sin(c/K*pi)end
function cos(c)return s.cos(c/K*pi)end
function tan(c)return s.tan(c/K*pi)end
function bH(c)return s.atan(c)*K/pi end
function bG(c)return s.atan(c[2],c[1])*K/pi end
function be(c,o,bs)return ak(N(o,c),bs)end
function aw(c)return S(c+.5)end
function bz(c,o)return sqrt(((c[1]-o[1])^2)+((c[2]-o[2])^2))end
function aW(c)return{c[1],-c[2]}end
function bJ(c)c=c-1
c=c|(c>>1)c=c|(c>>2)c=c|(c>>4)return c+1
end
a={}aA=1
V=3
ah=aU
C={{0,0},0,0}aB=288
D=aB//2
E=128
at=E//2
bo=1.2
bb={1,1}aT=1
X=1
aI=500
r=100
aZ=100
aS=0
R=0
Q=0
T=0
aE=3002
bq=32768
x={}bc=.05
B={}al={}bC=2
am=35
aP=0
ae=0
aR=0
as=0
ay=0
H=1
aG=0
ab=0
af=0
ai=ag
aJ=0
aC=0
function bn(b,c)if b<bq then
J=a[7][b]return bn(J[0<bw({J[3],J[4]},sub(c,J))and 8 or 7],c)else
return b-bq
end
end
function bf(c)J=a[5][a[6][c][2]]return a[8][a[3][a[2][J[4]][J[5]+6]][6]]end
function av(i,t,az,aD)local F,k=v.drawLine,v.setColor
az=az..""
aD=a[19][aD]for b=#az,1,-1 do
_=aD[aj.byte(aj.sub(az,b,b))]i=i-aD[1]if _>0 then
d=a[23][_]q,l=d[1],d[2]w=i-d[4]+1
Z=t-d[5]for h=0,q-1 do
for f=0,l-1 do
m=d[7+f+h*l]if m~=0 then
e=a[20][m]k(e[1],e[2],e[3])F(w+h,Z+f,w+h,Z+f+1)end
end
end
end
end
end
function p(bk,aY,ad,n)n=n or{59,59,59}v.setColor(13,0,0)v.drawText(bk+1,aY+1,ad)v.setColor(n[1],n[2],n[3])v.drawText(bk,aY,ad)end
function onTick()aG=0
for h=1,3 do
if aa(9)and(not ah)or not a[21]then
aM=property.getText(aA)b=1
u=""
_=aj.sub(aM,b,b)while _~=""do
M=aj.byte(_)if M>64 then
u=(u..M-65)+0
if H==1 then
bl=u
a[u]=a[u]or{}elseif H==2 then
bx=u
W=0
elseif H==3 then
aN=u
else
if W==0 then
W=bx
aN=aN-1
aQ={}a[bl][#a[bl]+1]=aQ
end
aQ[#aQ+1]=u
W=W-1
H=N(W,aN)>0 and H-1 or 0
end
H=H+1
u=""
else
u=u.._
end
b=b+1
_=aj.sub(aM,b,b)end
aA=aA+1
ah=aM==""
end
end
if ah then
if j(10)>0 then
ai=ag
V=j(10)end
aR=aR+1
a[12][1][aR%#a[12][1]+1]=aw(j(11))ab=a[12][1][17]if r>0 and not ai then
O={}an[#an+1]=O
ap=6
_=j(ap)while _~=0 do
z={}O[#O+1]=z
for b=0,8 do
z[b+1]=j(ap+b)end
ap=ap+9
_=j(ap)end
end
if aa(1)then
aP=aP+1
if ai then
for b=1,10 do
a[b]=a[b+10*V]end
V=V+1
for b=#a[1],1,-1 do
_=a[1][b]_=_[5]&(aE-3000)>0 or Y(a[1],b)end
for b=1,#a[8]do
a[8][b][8]={}end
for b=1,#a[6]do
_=bf(b)_[8][#_[8]+1]=b
end
an={}end
R=R-1
if r>0 then
if P~=j(1)and j(1)>0 then
x={}_={}_[1]=a[29][j(1)]_[2]=a[16][_[1][3]]bK=_[2][1]_[3]=0
x[1]=_
end
P=j(1)aK=aa(3)if aK and P==5 then
if af<=0 then
af=7
else
aK=false
end
end
af=af-1
if aK then
_=x[1]_[2]=a[16][_[1][4]]_[3]=-1
y=a[19][6][P]if y>0 then
B[#B+1]={y,1}end
end
end
for b=#x,1,-1 do
_=x[b]if _[3]==0 then
if _[2][3]==4 then
if P==5 and af<5 then
bi=1
else
bi=0
end
x[#x+1]={_[1],a[16][_[1][5]+bi],2}end
end
_[3]=_[3]+1
if _[3]>=_[2][2]then
if _[2][4]>2 then
_[2]=a[16][_[2][4]]_[3]=0
else
Y(x,b)end
end
end
if ai then
Q=50
R=am*8
aH=V-4+"map name text start"
end
ai=aU
T=N(T-4,0)T=be(T+(r-j(3)+aS-j(4))*3,0,g)Q=N(Q-1.5,0)r=j(3)aS,bh,bg,aX=j(4)if j(2)>0 and r>0 then
_=a[2][j(2)]if _ then
if _[4]==3008 then
bj=_[5]>0 and S(_[5])aX=ag
elseif _[4]>3004 then
aI=N(aI+3*(_[4]-3006),1)bg=ag
elseif _[4]>3000 then
aE=_[4]bh=ag
elseif _[4]>=14 and _[4]<=16 then
if a[12][1][_[4]]==0 then
R=am*4
aH=_[4]-14+"door text start"
end
end
end
end
aC=aC-1
if aC<1 then
aJ=0
end
for b=1,#an do
O=an[b]for h=1,#O do
z=O[h]_=z[1]if _>(2^15)then
_=a[8][_-(2^15)]for f=1,6 do
_[f]=z[f+1]end
elseif _<0 then
M=a[1][-_]if M then
z=M[6]if a[16][z][5]>0 then
Q=N(Q,15)R=am*4
aH=a[16][z][5]B[#B+1]={"item pickup sound index",1}if M[4]then
bd=a[15][M[4]]if bd[29]=="light amp index" then
aJ=1
aC=4200
end
if bd[29]=="computer area map index" then
for f=1,#a[2]do
a[2][f][8]=a[2][f][8]or 1
end
end
end
end
end
while-_>#a[1]do
a[1][#a[1]+1]=aU
end
Y(a[1],-_)else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for f=1,8 do
_[a[19][1][f]]=z[f+1]end
_[15]=0
end
end
end
an={}_=a[1][1]C[3]=_[3]bp=((aP%64)/64)*360
ay=ay*.8+ak(bz(_,C[1])^2/4,16)*.2
bA=cos(bp)*ay
bv=-abs(sin(bp)*ay)-(r>0 and 0 or 300)C[1]={_[1],_[2]}by=bn(#a[7],C[1])au=bf(by)C[2]=au[1]+41
bu=ak(au[5]/g+aJ,1)^1.3
for b=1,#au[8]do
_=a[6][au[8][b]]for h=_[2],_[1]+_[2]-1 do
bB=a[5][h]bF=a[2][bB[4]]bF[8]=2
end
end
aV=aa(2)if j(12)>0 and r>0 then
B[#B+1]={j(12),1}end
ae=ae-1
as=as-1
if not bb[P]then
bb[P]=1
as=70
end
aF=(4-ak(r//20,4))*8
if r<=0 then
X=41
elseif as>0 then
X=aF+6
elseif r<aZ then
ae=am
X=aF+7
elseif ae<=0 then
ae=16
aT=aT%256+1
X=aF+a[13][1][aT]%3
end
aZ=r
end
for b=#B,1,-1 do
y=B[b]_=a[18][y[1]]if aa(1)then
A=_[y[2]]y[2]=y[2]+4
else
A=_[y[2]+2]end
if A and A>0 then
al[#al+1]={A,1}end
if y[2]>=#_ then
Y(B,b)end
end
for b=1,32 do
bm(b,0)end
for b=#al,1,-1 do
A=al[b]bm(b+3,be(aw((A[1]+12)//2),1,60))A[2]=A[2]+1
if A[2]>bC then
Y(al,b)end
end
end
end
function onDraw()v=screen
local ao,k,F,ad=v.drawRectF,v.setColor,v.drawLine,v.drawText
aG=aG+1
if a[21]and not ah then
d=a[25][1]q,l=d[1],d[2]i,t=D-q/2,80-l/2
for f=0,q-1 do
w=i+f
for U=0,l-1 do
m=d[5+U+f*l]if m~=0 then
e=a[20][m]k(e[1],e[2],e[3])F(w,t+U,w,t+U+1)end
end
end
end
if not aV then
for b=1,#x do
d=x[b][2][1]aO=d>0 and bu or 1
d=a[17][abs(d)][1]d=a[23][d]q,l,aL=d[1],d[2],d[3]*.7
b_=aL*bo
i,t=D-(d[4]+160+bA)*.7,E-(d[5]+148+bv)*.7*bo
for f=0,q-1 do
w=i+f*aL
for U=0,l-1 do
m=d[7+U+f*l]if m~=0 then
e=a[20][m]k(e[1]*aO,e[2]*aO,e[3]*aO)ao(w,t+U*b_,aL,b_)end
end
end
end
end
if ah then
if aV then
k(0,0,0)ao(0,0,aB,E)for b=1,#a[2]do
_=a[2][b]if _[8]then
L=ax(aW(ba(sub(a[4][_[1]],C[1]),bc)),{D,at})G=ax(aW(ba(sub(a[4][_[2]],C[1]),bc)),{D,at})if _[8]==1 then
k(0,50,0)elseif _[3]&4>0 then
if _[4]==14 then
k(0,0,g)elseif _[4]==15 then
k(g,0,0)elseif _[4]==16 then
k(g,g,0)else
k(50,50,50)end
else
k(g,g,g)end
F(L[1],L[2],G[1],G[2])end
end
k(g,g,g)_=a[19][10]for b=1,#_,4 do
aq=sin(C[3]-90)ar=cos(C[3]-90)L={_[b]*ar+_[b+1]*aq,_[b+1]*ar-_[b]*aq}G={_[b+2]*ar+_[b+3]*aq,_[b+3]*ar-_[b+2]*aq}L=ax(L,{D,at})G=ax(G,{D,at})F(L[1],L[2],G[1],G[2])end
end
k(g,T>0 and 0 or g,0,T+Q)ao(0,0,aB,E)k(30,30,30)ao(0,E,aB,32)k(5,5,5)ao(D-16,E,32,32)d=a[23]["face textures start"+(X)*"number of sprite mipmap levels"]q,l=d[1],d[2]i=D-q/2
for b=0,q-1 do
for h=0,l-1 do
m=d[7+h+b*l]if m~=0 then
e=a[20][m]k(e[1],e[2],e[3])F(i+b,E+1+h,i+b,E+2+h)end
end
end
for b=1,3 do
if a[12][1][13+b]>0 then
i,t=221,125+b*8
d=a[23]["key textures start"+a[19][5][b]*"number of sprite mipmap levels"]q,l=d[1],d[2]for h=0,q-1 do
for f=0,l-1 do
m=d[7+f+h*l]if m~=0 then
e=a[20][m]k(e[1],e[2],e[3])F(i+h,t+f,i+h,t+f+1)end
end
end
end
end
if R>0 then
br=a[13][aH]i=0
t=0
for bt=1,#br do
_=br[bt]if _>0 then
d=a[23][_]q,l=d[1],d[2]w=i-d[4]Z=t-d[5]for b=0,q-1 do
for h=0,l-1 do
m=d[7+h+b*l]if m~=0 then
e=a[20][m]k(e[1],e[2],e[3])F(w+b,Z+h,w+b,Z+h+1)end
end
end
i=i+q
else
i=i+4
end
end
end
av(124,I,S(r).."%",16)av(218,I,S(aS).."%",16)p(124-28-15,ac,"HEALTH")p(218-28-15,ac,"ARMOUR")n=(ab<am and ab>0)and{g,0,0}p(2,I,"TPS:",n)p(26,I,ab>0 and ab or "N/A",n)n=bh and{g,g,44}p(2,138,"DIF:",n)bE={"EASY","MED","HARD"}p(26,138,bE[S(ak(aE-3000,3))],n)n=bg and{g,g,44}p(2,145,"LOD:",n)p(26,145,S(aI),n)n=aX and{g,g,44}p(2,ac,"TEX:",n)bD={"FULL","HALF"}p(26,ac,bj and bD[bj]or "OFF",n)p(232,I,"BULL")p(232,138,"SHEL")p(232,145,"ROKT")p(232,ac,"CELL")for b=1,4 do
c=124+b*7
av(265,c,aw(a[12][1][b]),15)av(285,c,aw(a[19][17][b]),15)p(268,c,"/")end
else
ad(1,I,"ROM:")ad(26,I,aA)end
end
