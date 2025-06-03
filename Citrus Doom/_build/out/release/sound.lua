
Q=131
i=255
F=180
ar=true
aQ=false
aY=input
as=table.remove
p=math
I=p.max
ad=p.min
abs=p.abs
T=p.floor
sqrt=p.sqrt
g=aY.getNumber
ac=aY.getBool
aU=output.setNumber
pi=p.pi
an=aQ
aI=ar
aA=string
function ai(c,f)return{(c[1]+f[1]),(c[2]+f[2])}end
function bd(c,f)return c[1]*f[2]-c[2]*f[1]end
function sub(c,f)return{(c[1]-f[1]),(c[2]-f[2])}end
function aJ(c,f)return{c[1]*f,c[2]*f}end
function bq(c)return((c+F)%360)-F end
function sin(c)return p.sin(c/F*pi)end
function cos(c)return p.cos(c/F*pi)end
function tan(c)return p.tan(c/F*pi)end
function bk(c)return p.atan(c)*F/pi end
function bp(c)return p.atan(c[2],c[1])*F/pi end
function aF(c,f,be)return ad(I(f,c),be)end
function aL(c)return T(c+.5)end
function bn(c,f)return sqrt(((c[1]-f[1])^2)+((c[2]-f[2])^2))end
function aN(c)return{c[1],-c[2]}end
function bo(c)c=c-1
c=c|(c>>1)c=c|(c>>2)c=c|(c>>4)return c+1
end
a={}ak=1
O=3
M=an
x={{0,0},0,0}ab=288
w=ab//2
B=128
al=B//2
aW=1.2
aK={1,1}at=1
X=1
O=3
av=400
u=100
aS=100
az=0
ag=0
J=0
H=0
aR=3002
S={}aG=32768
s={}aE=.05
C={}ax=3
K=0
ay=0
ae=0
y=1
am=0
P=0
R=aI
function aX(b,c)if b<aG then
D=a[7][b]return aX(D[0<bd({D[3],D[4]},sub(c,D))and 8 or 7],c)else
return b-aG
end
end
function aO(c)D=a[5][a[6][c][2]]return a[8][a[3][a[2][D[4]][D[5]+6]][6]]end
function onTick()am=0
for j=1,3 do
if ac(9)and(not M)or not a[21]then
aC=property.getText(ak)b=1
o=""
_=aA.sub(aC,b,b)while _~=""do
E=aA.byte(_)if E>64 then
o=(o..E-65)+0
if y==1 then
aZ=o
a[o]=a[o]or{}elseif y==2 then
bi=o
L=0
elseif y==3 then
ap=o
else
if L==0 then
L=bi
ap=ap-1
au={}a[aZ][#a[aZ]+1]=au
end
au[#au+1]=o
L=L-1
y=I(L,ap)>0 and y-1 or 0
end
y=y+1
o=""
else
o=o.._
end
b=b+1
_=aA.sub(aC,b,b)end
ak=ak+1
M=aC==""
end
end
if M then
ay=ay+1
a[12][1][ay%#a[12][1]+1]=aL(g(10))if u>0 and not R then
G={}S[#S+1]=G
W=5
_=g(W)while _~=0 do
t={}G[#G+1]=t
for b=0,8 do
t[b+1]=g(W+b)end
W=W+9
_=g(W)end
end
if ac(1)then
if R then
for b=1,10 do
a[b]=a[b+10*O]end
O=O+1
R=an
for b=1,#a[1]do
_=a[1][b]end
for b=1,#a[8]do
a[8][b][8]={}end
for b=1,#a[6]do
_=aO(b)_[8][#_[8]+1]=b
end
end
if g(9)>0 then
R=aI
O=g(9)end
ag=ag-1
if u>0 then
if N~=g(1)and g(1)>0 then
s={}_={}_[1]=a[29][g(1)]_[2]=a[16][_[1][3]]bm=_[2][1]_[3]=0
s[1]=_
end
N=g(1)ao=ac(3)if ao and N==5 then
if P<=0 then
P=7
else
ao=aQ
end
end
P=P-1
if ao then
_=s[1]_[2]=a[16][_[1][4]]_[3]=-1
C[#C+1]={1,1}end
end
for b=#s,1,-1 do
_=s[b]if _[3]==0 then
if _[2][3]==4 then
if N==5 and P<5 then
aH=1
else
aH=0
end
s[#s+1]={_[1],a[16][_[1][5]+aH],2}end
end
_[3]=_[3]+1
if _[3]>=_[2][2]then
if _[2][4]>2 then
_[2]=a[16][_[2][4]]_[3]=0
else
as(s,b)end
end
end
for b=1,32 do
aU(b,0)end
for b=#C,1,-1 do
Y=C[b]_=a[18][Y[1]]for j=0,ax-1 do
aq=_[(Y[2]+j)*2-1]if aq and aq>0 then
aU(2+(b-1)*ax+j,aF(aL((aq+12)//2),1,60))end
end
Y[2]=Y[2]+2
if Y[2]>=ax+#_ then
as(C,b)end
end
if R then
J=50
end
H=I(H-4,0)H=aF(H+(u-g(3)+az-g(4))*3,0,i)J=I(J-1.5,0)u=g(3)az=g(4)if g(2)>0 then
_=a[2][g(2)]if _ then
if _[4]>3004 and _[4]<3008 then
av=I(av+3*(_[4]-3006),1)elseif _[4]>3000 then
aR=_[4]end
end
end
for b=1,#S do
G=S[b]for j=1,#G do
t=G[j]_=t[1]if _>(2^15)then
_=a[8][_-(2^15)]for l=1,6 do
_[l]=t[l+1]end
elseif _<0 then
if-_<=#a[1]then
E=a[1][-_]if E~=nil then
t=E[6]if a[16][t][5]>0 then
J=I(J,15)ag=35
bf=a[16][t][5]C[#C+1]={a[19][11][1],1}if E[4]then
b_=a[15][E[4]]if b_[29]==a[19][13][1]then
for l=1,#a[2]do
a[2][l][8]=ar
end
end
end
end
else
a[1][-_]={}end
while-_>#a[1]do
a[1][#a[1]+1]=an
end
as(a[1],-_)end
else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for l=1,8 do
_[a[19][1][l]]=t[l+1]end
_[15]=0
end
end
end
S={}_=a[1][1]x[1]={_[1],_[2]}x[3]=_[3]bh=aX(#a[7],x[1])af=aO(bh)x[2]=af[1]+41
bj=ad(af[5]/i,1)^1.3
for b=1,#af[8]do
_=a[6][af[8][b]]for j=_[2],_[1]+_[2]-1 do
ba=a[5][j]bc=a[2][ba[4]]bc[8]=ar
end
end
aV=ac(2)K=K-1
ae=ae-1
if not aK[N]then
aK[N]=1
ae=70
end
aD=(4-ad(u//20,4))*8
if u<=0 then
X=41
elseif ae>0 then
X=aD+6
elseif u<aS then
K=35
X=aD+7
elseif K<=0 then
K=16
at=at%256+1
X=aD+a[13][1][at]%3
end
aS=u
end
end
end
function onDraw()aa=screen
local bl,v,k,e,aP=aa.drawTriangleF,aa.drawRectF,aa.setColor,aa.drawText,aa.drawLine
am=am+1
if a[21]and not M then
d=a[25][1]r,m=d[1],d[2]n,U=w-r/2,80-m/2
for l=0,r-1 do
Z=n+l
for V=0,m-1 do
q=d[5+V+l*m]if q~=0 then
h=a[20][q]k(h[1],h[2],h[3])v(Z,U+V,1,1)end
end
end
end
if not aV then
for b=1,#s do
d=s[b][2][1]aB=d>0 and bj or 1
d=a[17][abs(d)][1]d=a[23][d]r,m,aw=d[1],d[2],d[3]*.7
aM=aw*aW
n,U=w-(d[4]+160)*.7,B-(d[5]+148)*.7*aW
for l=0,r-1 do
Z=n+l*aw
for V=0,m-1 do
q=d[7+V+l*m]if q~=0 then
h=a[20][q]k(h[1]*aB,h[2]*aB,h[3]*aB)v(Z,U+V*aM,aw,aM)end
end
end
end
end
if M then
if aV then
k(0,0,0)v(0,0,ab,B)for b=1,#a[2]do
_=a[2][b]if _[8]then
A=ai(aN(aJ(sub(a[4][_[1]],x[1]),aE)),{w,al})z=ai(aN(aJ(sub(a[4][_[2]],x[1]),aE)),{w,al})if _[3]&4>0 then
k(50,50,50)else
k(i,i,i)end
aP(A[1],A[2],z[1],z[2])end
end
k(i,i,i)_=a[19][10]for b=1,#_,4 do
ah=sin(x[3]-90)aj=cos(x[3]-90)A={_[b]*aj+_[b+1]*ah,_[b+1]*aj-_[b]*ah}z={_[b+2]*aj+_[b+3]*ah,_[b+3]*aj-_[b+2]*ah}A=ai(A,{w,al})z=ai(z,{w,al})aP(A[1],A[2],z[1],z[2])end
end
k(i,H>0 and 0 or i,0,H+J)v(0,0,ab,B)k(50,50,50)v(0,B,ab,32)k(25,25,25)v(w-16,B,32,32)d=a[23][a[19][3][1]+(X)*a[19][3][3]]r,m=d[1],d[2]n=w-r/2
for b=0,r-1 do
for j=0,m-1 do
q=d[7+j+b*m]if q~=0 then
h=a[20][q]k(h[1],h[2],h[3])v(n+b,B+1+j,1,1)end
end
end
for b=5,7 do
_=a[19][b]k(_[1],_[2],_[3])v(199,95+b*7,6,7)end
if ag>0 then
aT=a[13][bf]n=0
U=0
for bg=1,#aT do
_=aT[bg]if _>0 then
d=a[23][_]r,m=d[1],d[2]Z=n+d[4]bb=U-d[5]for b=0,r-1 do
for j=0,m-1 do
q=d[7+j+b*m]if q~=0 then
h=a[20][q]k(h[1],h[2],h[3])v(Z+b,bb+j,1,1)end
end
end
n=n+r
else
n=n+4
end
end
end
k(i,i,i)e(100,Q,T(u))e(100,137,T(az))e(67,Q,"HEALTH")e(67,137,"ARMOUR")e(1,143,"DIF:")e(1,149,"LOD:")e(217,Q,"BULL")e(217,138,"SHEL")e(217,145,"ROKT")e(217,152,"CELL")e(26,149,T(av))e(26,143,T(ad(aR-3000,3)))for b=1,4 do
c=124+b*7
e(240,c,a[12][1][b])e(200,c,a[12][1][13+b])end
end
e(1,Q,"ROM:")e(26,Q,ak)e(1,137,"TPS:")end
