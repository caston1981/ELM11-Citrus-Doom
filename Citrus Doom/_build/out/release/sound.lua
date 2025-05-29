bk=""

X=131
h=255
w=180
aV=true
aG=false
aS=input
an=table.remove
l=math
E=l.max
ag=l.min
abs=l.abs
R=l.floor
sqrt=l.sqrt
g=aS.getNumber
ae=aS.getBool
aL=output.setNumber
pi=l.pi
ak=aG
aJ=aV
as=string
function ad(c,e)return{(c[1]+e[1]),(c[2]+e[2])}end
function ba(c,e)return c[1]*e[2]-c[2]*e[1]end
function sub(c,e)return{(c[1]-e[1]),(c[2]-e[2])}end
function aB(c,e)return{c[1]*e,c[2]*e}end
function bi(c)return((c+w)%360)-w end
function sin(c)return l.sin(c/w*pi)end
function cos(c)return l.cos(c/w*pi)end
function tan(c)return l.tan(c/w*pi)end
function be(c)return l.atan(c)*w/pi end
function bj(c)return l.atan(c[2],c[1])*w/pi end
function aQ(c,e,aW)return ag(E(e,c),aW)end
function aY(c)return R(c+.5)end
function bf(c,e)return sqrt(((c[1]-e[1])^2)+((c[2]-e[2])^2))end
function aK(c)return{c[1],-c[2]}end
function bd(c)c=c-1
c=c|(c>>1)c=c|(c>>2)c=c|(c>>4)return c+1
end
a={}aa=1
M=3
W=ak
s={{0,0},0,0}Y=288
u=Y//2
C=128
ah=C//2
aR=1.2
aT={1,1}aj=1
K=1
M=3
au=400
q=100
aM=100
al=0
F=0
H=0
aH=3002
I={}aO=32768
o={}aD=.05
D={}am=3
Q=0
Z=0
B=1
ap=0
L=0
U=aJ
function aN(b,c)if b<aO then
A=a[7][b]return aN(A[0<ba({A[3],A[4]},sub(c,A))and 8 or 7],c)else
return b-aO
end
end
function aP(c)A=a[5][a[6][c][2]]return a[8][a[3][a[2][A[4]][A[5]+6]][6]]end
function onTick()ap=0
for n=1,3 do
if ae(9)and(not W)or not a[21]then
av=property.getText(aa)b=1
k=bk
_=as.sub(av,b,b)while _~=bkdo
aE=as.byte(_)if aE>64then
k=(k..aE-65)+0
if B==1then
aF=k
a[k]=a[k]or{}elseif B==2then
bb=k
P=0
elseif B==3then
ay=k
else
if P==0then
P=bb
ay=ay-1
ax={}a[aF][#a[aF]+1]=ax
end
ax[#ax+1]=k
P=P-1
B=E(P,ay)>0 and B-1 or 0
end
B=B+1
k=bk
else
k=k.._
end
b=b+1
_=as.sub(av,b,b)end
aa=aa+1
W=av==bk
end
end
if W then
if q>0 and not U then
G={}I[#I+1]=G
V=5
_=g(V)while _~=0 do
r={}G[#G+1]=r
for b=0,8 do
r[b+1]=g(V+b)end
V=V+9
_=g(V)end
end
if ae(1)then
if U then
for b=1,10 do
a[b]=a[b+10*M]end
M=M+1
U=ak
for b=1,#a[1]do
_=a[1][b]end
for b=1,#a[8]do
a[8][b][8]={}end
for b=1,#a[6]do
_=aP(b)_[8][#_[8]+1]=b
end
end
if g(9)>0 then
U=aJ
M=g(9)end
if q>0 then
if J~=g(1)and g(1)>0then
o={}_={}_[1]=a[29][g(1)]_[2]=a[16][_[1][3]]bh=_[2][1]_[3]=0
o[1]=_
end
J=g(1)aq=ae(3)if aq and J==5 then
if L<=0 then
L=7
else
aq=aG
end
end
L=L-1
if aq then
_=o[1]_[2]=a[16][_[1][4]]_[3]=-1
D[#D+1]={1,1}end
end
for b=#o,1,-1 do
_=o[b]if _[3]==0 then
if _[2][3]==4 then
if J==5 and L<5 then
aC=1
else
aC=0
end
o[#o+1]={_[1],a[16][_[1][5]+aC],2}end
end
_[3]=_[3]+1
if _[3]>=_[2][2]then
if _[2][4]>2 then
_[2]=a[16][_[2][4]]_[3]=0
else
an(o,b)end
end
end
for b=1,32 do
aL(b,0)end
for b=#D,1,-1 do
N=D[b]_=a[18][N[1]]for n=0,am-1 do
aw=_[(N[2]+n)*2-1]if aw and aw>0 then
aL(2+(b-1)*am+n,aQ(aY((aw+12)//2),1,60))end
end
N[2]=N[2]+2
if N[2]>=am+#_ then
an(D,b)end
end
if U then
F=50
end
H=E(H-4,0)H=aQ(H+(q-g(3)+al-g(4))*3,0,h)F=E(F-1.5,0)q=g(3)al=g(4)if g(2)>0 then
_=a[2][g(2)]if _ then
if _[4]>3004 and _[4]<3008 then
au=E(au+3*(_[4]-3006),1)elseif _[4]>3000 then
aH=_[4]end
end
end
for b=1,#I do
G=I[b]for n=1,#G do
r=G[n]_=r[1]if _>(2^15)then
_=a[8][_-(2^15)]for j=1,6 do
_[j]=r[j+1]end
elseif _<0 then
if-_<=#a[1]then
if a[1][-_]~=nil then
r=a[1][-_][6]if a[16][r][5]>0 then
F=E(F,15)D[#D+1]={a[19][11][1],1}end
else
a[1][-_]={}end
while-_>#a[1]do
a[1][#a[1]+1]=ak
end
an(a[1],-_)end
else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for j=1,8 do
_[a[19][1][j]]=r[j+1]end
_[15]=0
end
end
end
I={}_=a[1][1]s[1]={_[1],_[2]}s[3]=_[3]aX=aN(#a[7],s[1])af=aP(aX)s[2]=af[1]+41
b_=ag(af[5]/h,1)^1.3
for b=1,#af[8]do
_=a[6][af[8][b]]for n=_[2],_[1]+_[2]-1 do
aZ=a[5][n]bc=a[2][aZ[4]]bc[8]=aV
end
end
aU=ae(2)Q=Q-1
Z=Z-1
if not aT[J]then
aT[J]=1
Z=70
end
ar=(4-ag(q//20,4))*8
if q<=0 then
K=41
elseif Z>0 then
K=ar+6
elseif q<aM then
Q=35
K=ar+7
elseif Q<=0 then
Q=16
aj=aj%256+1
K=ar+a[13][1][aj]%3
end
aM=q
end
end
end
function onDraw()O=screen
local bg,t,i,f,aI=O.drawTriangleF,O.drawRectF,O.setColor,O.drawText,O.drawLine
ap=ap+1
if a[21]and not W then
d=a[25][1]x,p=d[1],d[2]T,ai=u-x/2,80-p/2
for j=0,x-1 do
ao=T+j
for S=0,p-1 do
v=d[5+S+j*p]if v~=0 then
m=a[20][v]i(m[1],m[2],m[3])t(ao,ai+S,1,1)end
end
end
end
if not aU then
for b=1,#o do
d=o[b][2][1]at=d>0 and b_ or 1
d=a[17][abs(d)][1]d=a[23][d]x,p,az=d[1],d[2],d[3]*.7
aA=az*aR
T,ai=u-(d[4]+160)*.7,C-(d[5]+148)*.7*aR
for j=0,x-1 do
ao=T+j*az
for S=0,p-1 do
v=d[7+S+j*p]if v~=0 then
m=a[20][v]i(m[1]*at,m[2]*at,m[3]*at)t(ao,ai+S*aA,az,aA)end
end
end
end
end
if W then
if aU then
i(0,0,0)t(0,0,Y,C)for b=1,#a[2]do
_=a[2][b]if _[8]then
z=ad(aK(aB(sub(a[4][_[1]],s[1]),aD)),{u,ah})y=ad(aK(aB(sub(a[4][_[2]],s[1]),aD)),{u,ah})if _[3]&4>0 then
i(50,50,50)else
i(h,h,h)end
aI(z[1],z[2],y[1],y[2])end
end
i(h,h,h)_=a[19][10]for b=1,#_,4 do
ac=sin(s[3]-90)ab=cos(s[3]-90)z={_[b]*ab+_[b+1]*ac,_[b+1]*ab-_[b]*ac}y={_[b+2]*ab+_[b+3]*ac,_[b+3]*ab-_[b+2]*ac}z=ad(z,{u,ah})y=ad(y,{u,ah})aI(z[1],z[2],y[1],y[2])end
end
i(h,H>0 and 0 or h,0,H+F)t(0,0,Y,C)i(50,50,50)t(0,C,Y,32)i(25,25,25)t(u-16,C,32,32)d=a[23][a[19][3][1]+K]x,p=d[1],d[2]T=u-x/2
for b=0,x-1 do
for n=0,p-1 do
v=d[7+n+b*p]if v~=0 then
m=a[20][v]i(m[1],m[2],m[3])t(T+b,C+1+n,1,1)end
end
end
for b=5,7 do
_=a[19][b]i(_[1],_[2],_[3])t(199,95+b*7,6,7)end
i(h,h,h)f(100,X,R(q))f(100,137,R(al))f(67,X,"HEALTH")f(67,137,"ARMOUR")f(1,143,"DIF:")f(1,149,"LOD:")f(217,X,"BULL")f(217,138,"SHEL")f(217,145,"ROKT")f(217,152,"CELL")f(26,149,R(au))f(26,143,R(ag(aH-3000,3)))end
f(1,X,"ROM:")f(26,X,aa)f(1,137,"TPS:")end
