bp=""

J=131
i=255
B=180
aR=true
aC=false
aE=input
az=table.remove
m=math
F=m.max
ah=m.min
abs=m.abs
L=m.floor
sqrt=m.sqrt
h=aE.getNumber
ab=aE.getBool
aV=output.setNumber
pi=m.pi
am=aC
aN=aR
aA=string
function aj(c,e)return{(c[1]+e[1]),(c[2]+e[2])}end
function ba(c,e)return c[1]*e[2]-c[2]*e[1]end
function sub(c,e)return{(c[1]-e[1]),(c[2]-e[2])}end
function aX(c,e)return{c[1]*e,c[2]*e}end
function bk(c)return((c+B)%360)-B end
function sin(c)return m.sin(c/B*pi)end
function cos(c)return m.cos(c/B*pi)end
function tan(c)return m.tan(c/B*pi)end
function bj(c)return m.atan(c)*B/pi end
function bl(c)return m.atan(c[2],c[1])*B/pi end
function aD(c,e,bf)return ah(F(e,c),bf)end
function bb(c)return L(c+.5)end
function bm(c,e)return sqrt(((c[1]-e[1])^2)+((c[2]-e[2])^2))end
function aH(c)return{c[1],-c[2]}end
function bi(c)c=c-1
c=c|(c>>1)c=c|(c>>2)c=c|(c>>4)return c+1
end
a={}af=1
N=3
V=am
w={{0,0},0,0}ad=288
x=ad//2
D=128
ak=D//2
aM=1.2
aW={1,1}av=1
U=1
N=3
au=400
u=100
aJ=100
ax=0
ae=0
I=0
G=0
aQ=3002
M={}aK=32768
r={}aG=.05
z={}an=3
Z=0
aa=0
C=1
ay=0
Q=0
W=aN
function aU(b,c)if b<aK then
A=a[7][b]return aU(A[0<ba({A[3],A[4]},sub(c,A))and 8 or 7],c)else
return b-aK
end
end
function aT(c)A=a[5][a[6][c][2]]return a[8][a[3][a[2][A[4]][A[5]+6]][6]]end
function onTick()ay=0
for j=1,3 do
if ab(9)and(not V)or not a[21]then
al=property.getText(af)b=1
n=bp
_=aA.sub(al,b,b)while _~=bpdo
aF=aA.byte(_)if aF>64then
n=(n..aF-65)+0
if C==1then
aB=n
a[n]=a[n]or{}elseif C==2then
be=n
R=0
elseif C==3then
ap=n
else
if R==0then
R=be
ap=ap-1
aw={}a[aB][#a[aB]+1]=aw
end
aw[#aw+1]=n
R=R-1
C=F(R,ap)>0 and C-1 or 0
end
C=C+1
n=bp
else
n=n.._
end
b=b+1
_=aA.sub(al,b,b)end
af=af+1
V=al==bp
end
end
if V then
if u>0 and not W then
H={}M[#M+1]=H
X=5
_=h(X)while _~=0 do
v={}H[#H+1]=v
for b=0,8 do
v[b+1]=h(X+b)end
X=X+9
_=h(X)end
end
if ab(1)then
if W then
for b=1,10 do
a[b]=a[b+10*N]end
N=N+1
W=am
for b=1,#a[1]do
_=a[1][b]end
for b=1,#a[8]do
a[8][b][8]={}end
for b=1,#a[6]do
_=aT(b)_[8][#_[8]+1]=b
end
end
if h(9)>0 then
W=aN
N=h(9)end
ae=ae-1
if u>0 then
if S~=h(1)and h(1)>0then
r={}_={}_[1]=a[29][h(1)]_[2]=a[16][_[1][3]]bo=_[2][1]_[3]=0
r[1]=_
end
S=h(1)as=ab(3)if as and S==5 then
if Q<=0 then
Q=7
else
as=aC
end
end
Q=Q-1
if as then
_=r[1]_[2]=a[16][_[1][4]]_[3]=-1
z[#z+1]={1,1}end
end
for b=#r,1,-1 do
_=r[b]if _[3]==0 then
if _[2][3]==4 then
if S==5 and Q<5 then
aP=1
else
aP=0
end
r[#r+1]={_[1],a[16][_[1][5]+aP],2}end
end
_[3]=_[3]+1
if _[3]>=_[2][2]then
if _[2][4]>2 then
_[2]=a[16][_[2][4]]_[3]=0
else
az(r,b)end
end
end
for b=1,32 do
aV(b,0)end
for b=#z,1,-1 do
T=z[b]_=a[18][T[1]]for j=0,an-1 do
ao=_[(T[2]+j)*2-1]if ao and ao>0 then
aV(2+(b-1)*an+j,aD(bb((ao+12)//2),1,60))end
end
T[2]=T[2]+2
if T[2]>=an+#_ then
az(z,b)end
end
if W then
I=50
end
G=F(G-4,0)G=aD(G+(u-h(3)+ax-h(4))*3,0,i)I=F(I-1.5,0)u=h(3)ax=h(4)if h(2)>0 then
_=a[2][h(2)]if _ then
if _[4]>3004 and _[4]<3008 then
au=F(au+3*(_[4]-3006),1)elseif _[4]>3000 then
aQ=_[4]end
end
end
for b=1,#M do
H=M[b]for j=1,#H do
v=H[j]_=v[1]if _>(2^15)then
_=a[8][_-(2^15)]for o=1,6 do
_[o]=v[o+1]end
elseif _<0 then
if-_<=#a[1]then
if a[1][-_]~=nil then
v=a[1][-_][6]if a[16][v][5]>0 then
I=F(I,15)ae=35
bc=a[16][v][5]z[#z+1]={a[19][11][1],1}end
else
a[1][-_]={}end
while-_>#a[1]do
a[1][#a[1]+1]=am
end
az(a[1],-_)end
else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for o=1,8 do
_[a[19][1][o]]=v[o+1]end
_[15]=0
end
end
end
M={}_=a[1][1]w[1]={_[1],_[2]}w[3]=_[3]aY=aU(#a[7],w[1])ac=aT(aY)w[2]=ac[1]+41
bh=ah(ac[5]/i,1)^1.3
for b=1,#ac[8]do
_=a[6][ac[8][b]]for j=_[2],_[1]+_[2]-1 do
bg=a[5][j]bd=a[2][bg[4]]bd[8]=aR
end
end
aS=ab(2)Z=Z-1
aa=aa-1
if not aW[S]then
aW[S]=1
aa=70
end
ar=(4-ah(u//20,4))*8
if u<=0 then
U=41
elseif aa>0 then
U=ar+6
elseif u<aJ then
Z=35
U=ar+7
elseif Z<=0 then
Z=16
av=av%256+1
U=ar+a[13][1][av]%3
end
aJ=u
end
end
end
function onDraw()Y=screen
local bn,t,k,f,aL=Y.drawTriangleF,Y.drawRectF,Y.setColor,Y.drawText,Y.drawLine
ay=ay+1
if a[21]and not V then
d=a[25][1]s,l=d[1],d[2]q,K=x-s/2,80-l/2
for o=0,s-1 do
O=q+o
for P=0,l-1 do
p=d[5+P+o*l]if p~=0 then
g=a[20][p]k(g[1],g[2],g[3])t(O,K+P,1,1)end
end
end
end
if not aS then
for b=1,#r do
d=r[b][2][1]at=d>0 and bh or 1
d=a[17][abs(d)][1]d=a[23][d]s,l,aq=d[1],d[2],d[3]*.7
aI=aq*aM
q,K=x-(d[4]+160)*.7,D-(d[5]+148)*.7*aM
for o=0,s-1 do
O=q+o*aq
for P=0,l-1 do
p=d[7+P+o*l]if p~=0 then
g=a[20][p]k(g[1]*at,g[2]*at,g[3]*at)t(O,K+P*aI,aq,aI)end
end
end
end
end
if V then
if aS then
k(0,0,0)t(0,0,ad,D)for b=1,#a[2]do
_=a[2][b]if _[8]then
y=aj(aH(aX(sub(a[4][_[1]],w[1]),aG)),{x,ak})E=aj(aH(aX(sub(a[4][_[2]],w[1]),aG)),{x,ak})if _[3]&4>0 then
k(50,50,50)else
k(i,i,i)end
aL(y[1],y[2],E[1],E[2])end
end
k(i,i,i)_=a[19][10]for b=1,#_,4 do
ai=sin(w[3]-90)ag=cos(w[3]-90)y={_[b]*ag+_[b+1]*ai,_[b+1]*ag-_[b]*ai}E={_[b+2]*ag+_[b+3]*ai,_[b+3]*ag-_[b+2]*ai}y=aj(y,{x,ak})E=aj(E,{x,ak})aL(y[1],y[2],E[1],E[2])end
end
k(i,G>0 and 0 or i,0,G+I)t(0,0,ad,D)k(50,50,50)t(0,D,ad,32)k(25,25,25)t(x-16,D,32,32)d=a[23][a[19][3][1]+(U)*a[19][3][3]]s,l=d[1],d[2]q=x-s/2
for b=0,s-1 do
for j=0,l-1 do
p=d[7+j+b*l]if p~=0 then
g=a[20][p]k(g[1],g[2],g[3])t(q+b,D+1+j,1,1)end
end
end
for b=5,7 do
_=a[19][b]k(_[1],_[2],_[3])t(199,95+b*7,6,7)end
if ae>0 then
aO=a[13][bc]q=0
K=0
for b_=1,#aO do
_=aO[b_]if _>0 then
d=a[23][_]s,l=d[1],d[2]O=q+d[4]aZ=K-d[5]for b=0,s-1 do
for j=0,l-1 do
p=d[7+j+b*l]if p~=0 then
g=a[20][p]k(g[1],g[2],g[3])t(O+b,aZ+j,1,1)end
end
end
q=q+s
else
q=q+4
end
end
end
k(i,i,i)f(100,J,L(u))f(100,137,L(ax))f(67,J,"HEALTH")f(67,137,"ARMOUR")f(1,143,"DIF:")f(1,149,"LOD:")f(217,J,"BULL")f(217,138,"SHEL")f(217,145,"ROKT")f(217,152,"CELL")f(26,149,L(au))f(26,143,L(ah(aQ-3000,3)))end
f(1,J,"ROM:")f(26,J,af)f(1,137,"TPS:")end
