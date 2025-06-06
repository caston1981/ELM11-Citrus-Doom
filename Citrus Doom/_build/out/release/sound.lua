
T=131
t=255
H=180
aD=true
ba=false
aT=input
aE=table.remove
p=math
M=p.max
an=p.min
abs=p.abs
S=p.floor
sqrt=p.sqrt
g=aT.getNumber
ah=aT.getBool
aO=output.setNumber
pi=p.pi
aG=ba
aZ=aD
N=string
function ag(c,i)return{(c[1]+i[1]),(c[2]+i[2])}end
function bd(c,i)return c[1]*i[2]-c[2]*i[1]end
function sub(c,i)return{(c[1]-i[1]),(c[2]-i[2])}end
function aL(c,i)return{c[1]*i,c[2]*i}end
function bp(c)return((c+H)%360)-H end
function sin(c)return p.sin(c/H*pi)end
function cos(c)return p.cos(c/H*pi)end
function tan(c)return p.tan(c/H*pi)end
function bs(c)return p.atan(c)*H/pi end
function bo(c)return p.atan(c[2],c[1])*H/pi end
function bb(c,i,bj)return an(M(i,c),bj)end
function am(c)return S(c+.5)end
function bt(c,i)return sqrt(((c[1]-i[1])^2)+((c[2]-i[2])^2))end
function aM(c)return{c[1],-c[2]}end
function bn(c)c=c-1
c=c|(c>>1)c=c|(c>>2)c=c|(c>>4)return c+1
end
a={}ac=1
Z=3
V=aG
x={{0,0},0,0}ao=288
w=ao//2
I=128
al=I//2
aR=1.2
aU={1,1}aH=1
W=1
Z=3
ar=400
v=100
aJ=100
av=0
aj=0
K=0
L=0
b_=3002
ab={}aP=32768
s={}aN=.05
F={}aA=3
X=0
aw=0
af=0
y=1
ax=0
R=0
P=aZ
function bc(b,c)if b<aP then
D=a[7][b]return bc(D[0<bd({D[3],D[4]},sub(c,D))and 8 or 7],c)else
return b-aP
end
end
function aK(c)D=a[5][a[6][c][2]]return a[8][a[3][a[2][D[4]][D[5]+6]][6]]end
function ak(k,A,ai,ad)local q,f=z.drawRectF,z.setColor
ai=ai..""
ad=a[19][ad]for b=#ai,1,-1 do
_=ad[N.byte(N.sub(ai,b,b))]k=k-ad[1]if _>0 then
d=a[23][_]o,l=d[1],d[2]C=k-d[4]+1
at=A-d[5]for j=0,o-1 do
for h=0,l-1 do
m=d[7+h+j*l]if m~=0 then
e=a[20][m]f(e[1],e[2],e[3])q(C+j,at+h,1,1)end
end
end
end
end
end
function onTick()ax=0
for j=1,3 do
if ah(9)and(not V)or not a[21]then
as=property.getText(ac)b=1
r=""
_=N.sub(as,b,b)while _~=""do
B=N.byte(_)if B>64 then
r=(r..B-65)+0
if y==1 then
aQ=r
a[r]=a[r]or{}elseif y==2 then
bk=r
Q=0
elseif y==3 then
az=r
else
if Q==0 then
Q=bk
az=az-1
au={}a[aQ][#a[aQ]+1]=au
end
au[#au+1]=r
Q=Q-1
y=M(Q,az)>0 and y-1 or 0
end
y=y+1
r=""
else
r=r.._
end
b=b+1
_=N.sub(as,b,b)end
ac=ac+1
V=as==""
end
end
if V then
if g(9)>0 then
P=aZ
Z=g(9)end
aw=aw+1
a[12][1][aw%#a[12][1]+1]=am(g(10))if v>0 and not P then
J={}ab[#ab+1]=J
U=5
_=g(U)while _~=0 do
u={}J[#J+1]=u
for b=0,8 do
u[b+1]=g(U+b)end
U=U+9
_=g(U)end
end
if ah(1)then
if P then
for b=1,10 do
a[b]=a[b+10*Z]end
Z=Z+1
P=aG
for b=1,#a[1]do
_=a[1][b]end
for b=1,#a[8]do
a[8][b][8]={}end
for b=1,#a[6]do
_=aK(b)_[8][#_[8]+1]=b
end
end
aj=aj-1
if v>0 then
if Y~=g(1)and g(1)>0 then
s={}_={}_[1]=a[29][g(1)]_[2]=a[16][_[1][3]]br=_[2][1]_[3]=0
s[1]=_
end
Y=g(1)aB=ah(3)if aB and Y==5 then
if R<=0 then
R=7
else
aB=ba
end
end
R=R-1
if aB then
_=s[1]_[2]=a[16][_[1][4]]_[3]=-1
F[#F+1]={1,1}end
end
for b=#s,1,-1 do
_=s[b]if _[3]==0 then
if _[2][3]==4 then
if Y==5 and R<5 then
aS=1
else
aS=0
end
s[#s+1]={_[1],a[16][_[1][5]+aS],2}end
end
_[3]=_[3]+1
if _[3]>=_[2][2]then
if _[2][4]>2 then
_[2]=a[16][_[2][4]]_[3]=0
else
aE(s,b)end
end
end
for b=1,32 do
aO(b,0)end
for b=#F,1,-1 do
aa=F[b]_=a[18][aa[1]]for j=0,aA-1 do
ay=_[(aa[2]+j)*2-1]if ay and ay>0 then
aO(2+(b-1)*aA+j,bb(am((ay+12)//2),1,60))end
end
aa[2]=aa[2]+2
if aa[2]>=aA+#_ then
aE(F,b)end
end
if P then
K=50
end
L=M(L-4,0)L=bb(L+(v-g(3)+av-g(4))*3,0,t)K=M(K-1.5,0)v=g(3)av=g(4)if g(2)>0 then
_=a[2][g(2)]if _ then
if _[4]>3004 and _[4]<3008 then
ar=M(ar+3*(_[4]-3006),1)elseif _[4]>3000 then
b_=_[4]end
end
end
for b=1,#ab do
J=ab[b]for j=1,#J do
u=J[j]_=u[1]if _>(2^15)then
_=a[8][_-(2^15)]for h=1,6 do
_[h]=u[h+1]end
elseif _<0 then
B=a[1][-_]if B~=nil then
u=B[6]if a[16][u][5]>0 then
K=M(K,15)aj=35
bg=a[16][u][5]F[#F+1]={a[19][11][1],1}if B[4]then
bm=a[15][B[4]]if bm[29]==a[19][13][1]then
for h=1,#a[2]do
a[2][h][8]=aD
end
end
end
end
end
while-_>#a[1]do
a[1][#a[1]+1]=aG
end
aE(a[1],-_)else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for h=1,8 do
_[a[19][1][h]]=u[h+1]end
_[15]=0
end
end
end
ab={}_=a[1][1]x[1]={_[1],_[2]}x[3]=_[3]bl=bc(#a[7],x[1])ae=aK(bl)x[2]=ae[1]+41
be=an(ae[5]/t,1)^1.3
for b=1,#ae[8]do
_=a[6][ae[8][b]]for j=_[2],_[1]+_[2]-1 do
bi=a[5][j]bh=a[2][bi[4]]bh[8]=aD
end
end
aX=ah(2)X=X-1
af=af-1
if not aU[Y]then
aU[Y]=1
af=70
end
aC=(4-an(v//20,4))*8
if v<=0 then
W=41
elseif af>0 then
W=aC+6
elseif v<aJ then
X=35
W=aC+7
elseif X<=0 then
X=16
aH=aH%256+1
W=aC+a[13][1][aH]%3
end
aJ=v
end
end
end
function onDraw()z=screen
local bq,q,f,n,aW=z.drawTriangleF,z.drawRectF,z.setColor,z.drawText,z.drawLine
ax=ax+1
if a[21]and not V then
d=a[25][1]o,l=d[1],d[2]k,A=w-o/2,80-l/2
for h=0,o-1 do
C=k+h
for O=0,l-1 do
m=d[5+O+h*l]if m~=0 then
e=a[20][m]f(e[1],e[2],e[3])q(C,A+O,1,1)end
end
end
end
if not aX then
for b=1,#s do
d=s[b][2][1]aF=d>0 and be or 1
d=a[17][abs(d)][1]d=a[23][d]o,l,aI=d[1],d[2],d[3]*.7
aV=aI*aR
k,A=w-(d[4]+160)*.7,I-(d[5]+148)*.7*aR
for h=0,o-1 do
C=k+h*aI
for O=0,l-1 do
m=d[7+O+h*l]if m~=0 then
e=a[20][m]f(e[1]*aF,e[2]*aF,e[3]*aF)q(C,A+O*aV,aI,aV)end
end
end
end
end
if V then
if aX then
f(0,0,0)q(0,0,ao,I)for b=1,#a[2]do
_=a[2][b]if _[8]then
E=ag(aM(aL(sub(a[4][_[1]],x[1]),aN)),{w,al})G=ag(aM(aL(sub(a[4][_[2]],x[1]),aN)),{w,al})if _[3]&4>0 then
f(50,50,50)else
f(t,t,t)end
aW(E[1],E[2],G[1],G[2])end
end
f(t,t,t)_=a[19][10]for b=1,#_,4 do
aq=sin(x[3]-90)ap=cos(x[3]-90)E={_[b]*ap+_[b+1]*aq,_[b+1]*ap-_[b]*aq}G={_[b+2]*ap+_[b+3]*aq,_[b+3]*ap-_[b+2]*aq}E=ag(E,{w,al})G=ag(G,{w,al})aW(E[1],E[2],G[1],G[2])end
end
f(t,L>0 and 0 or t,0,L+K)q(0,0,ao,I)f(50,50,50)q(0,I,ao,32)f(25,25,25)q(w-16,I,32,32)d=a[23][a[19][3][1]+(W)*a[19][3][3]]o,l=d[1],d[2]k=w-o/2
for b=0,o-1 do
for j=0,l-1 do
m=d[7+j+b*l]if m~=0 then
e=a[20][m]f(e[1],e[2],e[3])q(k+b,I+1+j,1,1)end
end
end
for b=5,7 do
if a[12][1][9+b]>0 then
_=a[19][b]f(_[1],_[2],_[3])q(199,95+b*7,6,7)end
end
if aj>0 then
aY=a[13][bg]k=0
A=0
for bf=1,#aY do
_=aY[bf]if _>0 then
d=a[23][_]o,l=d[1],d[2]C=k-d[4]at=A-d[5]for b=0,o-1 do
for j=0,l-1 do
m=d[7+j+b*l]if m~=0 then
e=a[20][m]f(e[1],e[2],e[3])q(C+b,at+j,1,1)end
end
end
k=k+o
else
k=k+4
end
end
end
ak(120,T,S(v).."%",16)ak(220,T,S(av).."%",16)f(15,15,15)n(120-28-15,152,"HEALTH")n(220-28-15,152,"ARMOUR")n(1,143,"DIF:")n(1,149,"LOD:")n(227,T,"BULL")n(227,138,"SHEL")n(227,145,"ROKT")n(227,152,"CELL")n(26,149,S(ar))n(26,143,S(an(b_-3000,3)))for b=1,4 do
c=124+b*7
ak(260,c,am(a[12][1][b]),15)ak(281,c,am(a[19][17][b]),15)f(15,15,15)n(264,c,"/")end
f(15,15,15)end
n(1,T,"ROM:")n(26,T,ac)n(1,137,"TPS:")end
