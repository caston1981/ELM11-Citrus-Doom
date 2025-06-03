bq=""

N=131
l=255
B=180
aq=true
aM=false
aW=input
ay=table.remove
p=math
J=p.max
ai=p.min
abs=p.abs
U=p.floor
sqrt=p.sqrt
h=aW.getNumber
ac=aW.getBool
aI=output.setNumber
pi=p.pi
aB=aM
aD=aq
an=string
function af(c,e)return{(c[1]+e[1]),(c[2]+e[2])}end
function bh(c,e)return c[1]*e[2]-c[2]*e[1]end
function sub(c,e)return{(c[1]-e[1]),(c[2]-e[2])}end
function aQ(c,e)return{c[1]*e,c[2]*e}end
function bo(c)return((c+B)%360)-B end
function sin(c)return p.sin(c/B*pi)end
function cos(c)return p.cos(c/B*pi)end
function tan(c)return p.tan(c/B*pi)end
function bj(c)return p.atan(c)*B/pi end
function bm(c)return p.atan(c[2],c[1])*B/pi end
function aK(c,e,bf)return ai(J(e,c),bf)end
function b_(c)return U(c+.5)end
function bp(c,e)return sqrt(((c[1]-e[1])^2)+((c[2]-e[2])^2))end
function aX(c)return{c[1],-c[2]}end
function bk(c)c=c-1
c=c|(c>>1)c=c|(c>>2)c=c|(c>>4)return c+1
end
a={}ak=1
aa=3
Z=aB
x={{0,0},0,0}ab=288
w=ab//2
F=128
ae=F//2
aJ=1.2
aP={1,1}at=1
M=1
aa=3
aw=400
t=100
aV=100
az=0
aj=0
I=0
H=0
aU=3002
Y={}aT=32768
r={}aN=.05
A={}ap=3
R=0
ah=0
y=1
aC=0
Q=0
K=aD
function aF(b,c)if b<aT then
E=a[7][b]return aF(E[0<bh({E[3],E[4]},sub(c,E))and 8 or 7],c)else
return b-aT
end
end
function aR(c)E=a[5][a[6][c][2]]return a[8][a[3][a[2][E[4]][E[5]+6]][6]]end
function onTick()aC=0
for j=1,3 do
if ac(9)and(not Z)or not a[21]then
av=property.getText(ak)b=1
o=bq
_=an.sub(av,b,b)while _~=bqdo
D=an.byte(_)if D>64 then
o=(o..D-65)+0
if y==1 then
aS=o
a[o]=a[o]or{}elseif y==2 then
bi=o
V=0
elseif y==3 then
ar=o
else
if V==0 then
V=bi
ar=ar-1
as={}a[aS][#a[aS]+1]=as
end
as[#as+1]=o
V=V-1
y=J(V,ar)>0 and y-1 or 0
end
y=y+1
o=bq
else
o=o.._
end
b=b+1
_=an.sub(av,b,b)end
ak=ak+1
Z=av==bq
end
end
if Z then
if t>0 and not K then
G={}Y[#Y+1]=G
T=5
_=h(T)while _~=0 do
v={}G[#G+1]=v
for b=0,8 do
v[b+1]=h(T+b)end
T=T+9
_=h(T)end
end
if ac(1)then
if K then
for b=1,10 do
a[b]=a[b+10*aa]end
aa=aa+1
K=aB
for b=1,#a[1]do
_=a[1][b]end
for b=1,#a[8]do
a[8][b][8]={}end
for b=1,#a[6]do
_=aR(b)_[8][#_[8]+1]=b
end
end
if h(9)>0 then
K=aD
aa=h(9)end
aj=aj-1
if t>0 then
if P~=h(1)and h(1)>0 then
r={}_={}_[1]=a[29][h(1)]_[2]=a[16][_[1][3]]bl=_[2][1]_[3]=0
r[1]=_
end
P=h(1)aA=ac(3)if aA and P==5 then
if Q<=0 then
Q=7
else
aA=aM
end
end
Q=Q-1
if aA then
_=r[1]_[2]=a[16][_[1][4]]_[3]=-1
A[#A+1]={1,1}end
end
for b=#r,1,-1 do
_=r[b]if _[3]==0 then
if _[2][3]==4 then
if P==5 and Q<5 then
aE=1
else
aE=0
end
r[#r+1]={_[1],a[16][_[1][5]+aE],2}end
end
_[3]=_[3]+1
if _[3]>=_[2][2]then
if _[2][4]>2 then
_[2]=a[16][_[2][4]]_[3]=0
else
ay(r,b)end
end
end
for b=1,32 do
aI(b,0)end
for b=#A,1,-1 do
W=A[b]_=a[18][W[1]]for j=0,ap-1 do
am=_[(W[2]+j)*2-1]if am and am>0 then
aI(2+(b-1)*ap+j,aK(b_((am+12)//2),1,60))end
end
W[2]=W[2]+2
if W[2]>=ap+#_ then
ay(A,b)end
end
if K then
I=50
end
H=J(H-4,0)H=aK(H+(t-h(3)+az-h(4))*3,0,l)I=J(I-1.5,0)t=h(3)az=h(4)if h(2)>0 then
_=a[2][h(2)]if _ then
if _[4]>3004 and _[4]<3008 then
aw=J(aw+3*(_[4]-3006),1)elseif _[4]>3000 then
aU=_[4]end
end
end
for b=1,#Y do
G=Y[b]for j=1,#G do
v=G[j]_=v[1]if _>(2^15)then
_=a[8][_-(2^15)]for k=1,6 do
_[k]=v[k+1]end
elseif _<0 then
if-_<=#a[1]then
D=a[1][-_]if D~=nil then
v=D[6]if a[16][v][5]>0 then
I=J(I,15)aj=35
bd=a[16][v][5]A[#A+1]={a[19][11][1],1}if D[4]then
aY=a[15][D[4]]if aY[29]==a[19][13][1]then
for k=1,#a[2]do
a[2][k][8]=aq
end
end
end
end
else
a[1][-_]={}end
while-_>#a[1]do
a[1][#a[1]+1]=aB
end
ay(a[1],-_)end
else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for k=1,8 do
_[a[19][1][k]]=v[k+1]end
_[15]=0
end
end
end
Y={}_=a[1][1]x[1]={_[1],_[2]}x[3]=_[3]bb=aF(#a[7],x[1])ad=aR(bb)x[2]=ad[1]+41
bg=ai(ad[5]/l,1)^1.3
for b=1,#ad[8]do
_=a[6][ad[8][b]]for j=_[2],_[1]+_[2]-1 do
bc=a[5][j]be=a[2][bc[4]]be[8]=aq
end
end
aO=ac(2)R=R-1
ah=ah-1
if not aP[P]then
aP[P]=1
ah=70
end
ao=(4-ai(t//20,4))*8
if t<=0 then
M=41
elseif ah>0 then
M=ao+6
elseif t<aV then
R=35
M=ao+7
elseif R<=0 then
R=16
at=at%256+1
M=ao+a[13][1][at]%3
end
aV=t
end
end
end
function onDraw()X=screen
local bn,u,i,f,aH=X.drawTriangleF,X.drawRectF,X.setColor,X.drawText,X.drawLine
aC=aC+1
if a[21]and not Z then
d=a[25][1]s,m=d[1],d[2]n,L=w-s/2,80-m/2
for k=0,s-1 do
O=n+k
for S=0,m-1 do
q=d[5+S+k*m]if q~=0 then
g=a[20][q]i(g[1],g[2],g[3])u(O,L+S,1,1)end
end
end
end
if not aO then
for b=1,#r do
d=r[b][2][1]ax=d>0 and bg or 1
d=a[17][abs(d)][1]d=a[23][d]s,m,au=d[1],d[2],d[3]*.7
aL=au*aJ
n,L=w-(d[4]+160)*.7,F-(d[5]+148)*.7*aJ
for k=0,s-1 do
O=n+k*au
for S=0,m-1 do
q=d[7+S+k*m]if q~=0 then
g=a[20][q]i(g[1]*ax,g[2]*ax,g[3]*ax)u(O,L+S*aL,au,aL)end
end
end
end
end
if Z then
if aO then
i(0,0,0)u(0,0,ab,F)for b=1,#a[2]do
_=a[2][b]if _[8]then
z=af(aX(aQ(sub(a[4][_[1]],x[1]),aN)),{w,ae})C=af(aX(aQ(sub(a[4][_[2]],x[1]),aN)),{w,ae})if _[3]&4>0 then
i(50,50,50)else
i(l,l,l)end
aH(z[1],z[2],C[1],C[2])end
end
i(l,l,l)_=a[19][10]for b=1,#_,4 do
ag=sin(x[3]-90)al=cos(x[3]-90)z={_[b]*al+_[b+1]*ag,_[b+1]*al-_[b]*ag}C={_[b+2]*al+_[b+3]*ag,_[b+3]*al-_[b+2]*ag}z=af(z,{w,ae})C=af(C,{w,ae})aH(z[1],z[2],C[1],C[2])end
end
i(l,H>0 and 0 or l,0,H+I)u(0,0,ab,F)i(50,50,50)u(0,F,ab,32)i(25,25,25)u(w-16,F,32,32)d=a[23][a[19][3][1]+(M)*a[19][3][3]]s,m=d[1],d[2]n=w-s/2
for b=0,s-1 do
for j=0,m-1 do
q=d[7+j+b*m]if q~=0 then
g=a[20][q]i(g[1],g[2],g[3])u(n+b,F+1+j,1,1)end
end
end
for b=5,7 do
_=a[19][b]i(_[1],_[2],_[3])u(199,95+b*7,6,7)end
if aj>0 then
aG=a[13][bd]n=0
L=0
for ba=1,#aG do
_=aG[ba]if _>0 then
d=a[23][_]s,m=d[1],d[2]O=n+d[4]aZ=L-d[5]for b=0,s-1 do
for j=0,m-1 do
q=d[7+j+b*m]if q~=0 then
g=a[20][q]i(g[1],g[2],g[3])u(O+b,aZ+j,1,1)end
end
end
n=n+s
else
n=n+4
end
end
end
i(l,l,l)f(100,N,U(t))f(100,137,U(az))f(67,N,"HEALTH")f(67,137,"ARMOUR")f(1,143,"DIF:")f(1,149,"LOD:")f(217,N,"BULL")f(217,138,"SHEL")f(217,145,"ROKT")f(217,152,"CELL")f(26,149,U(aw))f(26,143,U(ai(aU-3000,3)))end
f(1,N,"ROM:")f(26,N,ak)f(1,137,"TPS:")end
