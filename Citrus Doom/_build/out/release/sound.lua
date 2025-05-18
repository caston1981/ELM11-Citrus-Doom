bf=""

g=255
y=180
aE=true
aF=false
aG=input
aD=table.remove
j=math
E=j.max
X=j.min
abs=j.abs
L=j.floor
sqrt=j.sqrt
f=aG.getNumber
Z=aG.getBool
bd=output.setNumber
pi=j.pi
am=aF
aL=aE
ao=string
function ae(b,e)return{(b[1]+e[1]),(b[2]+e[2])}end
function aV(b,e)return b[1]*e[2]-b[2]*e[1]end
function sub(b,e)return{(b[1]-e[1]),(b[2]-e[2])}end
function at(b,e)return{b[1]*e,b[2]*e}end
function aX(b)return((b+y)%360)-y end
function sin(b)return j.sin(b/y*pi)end
function cos(b)return j.cos(b/y*pi)end
function tan(b)return j.tan(b/y*pi)end
function aZ(b)return j.atan(b)*y/pi end
function bc(b)return j.atan(b[2],b[1])*y/pi end
function aR(b,e,aP)return X(E(e,b),aP)end
function aY(b)return L(b+.5)end
function be(b,e)return sqrt(((b[1]-e[1])^2)+((b[2]-e[2])^2))end
function aI(b)return{b[1],-b[2]}end
function b_(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
a={}aa=1
S=3
K=am
r={{0,0},0,0}W=288
q=W//2
w=128
af=w//2
aC=1.2
ay={1,1}aq=1
I=1
S=3
ah=400
n=100
av=100
F=0
G=0
aA=3002
Q={}aN=32768
m={}aB=.05
H=0
ab=0
C=1
V=0
T=0
M=aL
function aM(c,b)if c<aN then
x=a[7][c]return aM(x[0<aV({x[3],x[4]},sub(b,x))and 8 or 7],b)else
return c-aN
end
end
function aK(b)x=a[5][a[6][b][2]]return a[8][a[3][a[2][x[4]][x[5]+6]][6]]end
function onTick()V=0
for A=1,3 do
if Z(9)and(not K)or not a[21]then
ag=property.getText(aa)c=1
k=bf
_=ao.sub(ag,c,c)while _~=bfdo
ax=ao.byte(_)if ax>64then
k=(k..ax-65)+0
if C==1then
aw=k
a[k]=a[k]or{}elseif C==2then
aU=k
P=0
elseif C==3then
ai=k
else
if P==0then
P=aU
ai=ai-1
al={}a[aw][#a[aw]+1]=al
end
al[#al+1]=k
P=P-1
C=E(P,ai)>0 and C-1 or 0
end
C=C+1
k=bf
else
k=k.._
end
c=c+1
_=ao.sub(ag,c,c)end
aa=aa+1
K=ag==bf
end
end
if K then
if n>0 and not M then
D={}Q[#Q+1]=D
U=5
_=f(U)while _~=0 do
s={}D[#D+1]=s
for c=0,8 do
s[c+1]=f(U+c)end
U=U+9
_=f(U)end
end
if Z(1)then
if M then
for c=1,10 do
a[c]=a[c+10*S]end
S=S+1
M=am
for c=1,#a[1]do
_=a[1][c]end
for c=1,#a[8]do
a[8][c][8]={}end
for c=1,#a[6]do
_=aK(c)_[8][#_[8]+1]=c
end
end
if f(9)>0 then
M=aL
S=f(9)end
if n>0 then
if J~=f(1)and f(1)>0then
m={}_={}_[1]=a[29][f(1)]_[2]=a[16][_[1][3]]bb=_[2][1]_[3]=0
m[1]=_
end
J=f(1)as=Z(3)if as and J==5 then
if T<=0 then
T=7
else
as=aF
end
end
T=T-1
if as then
_=m[1]_[2]=a[16][_[1][4]]_[3]=-1
end
end
for c=#m,1,-1 do
_=m[c]if _[3]==0 then
if _[2][3]==4 then
if J==5 and T<5 then
au=1
else
au=0
end
m[#m+1]={_[1],a[16][_[1][5]+au],2}end
end
_[3]=_[3]+1
if _[3]>=_[2][2]then
if _[2][4]>2 then
_[2]=a[16][_[2][4]]_[3]=0
else
aD(m,c)end
end
end
if M then
F=50
end
G=E(G-4,0)G=aR(G+(n-f(3))*3,0,g)F=E(F-1.5,0)n=f(3)aO=f(4)if f(2)>0 then
_=a[2][f(2)]if _ then
if _[4]>3004 and _[4]<3008 then
ah=E(ah+3*(_[4]-3006),1)elseif _[4]>3000 then
aA=_[4]end
end
end
for c=1,#Q do
D=Q[c]for A=1,#D do
s=D[A]_=s[1]if _>(2^15)then
_=a[8][_-(2^15)]for l=1,6 do
_[l]=s[l+1]end
elseif _<0 then
if-_<=#a[1]then
if a[1][-_]~=nil then
s=a[1][-_][6]if a[16][s][5]>0 then
F=E(F,15)end
else
a[1][-_]={}end
while-_>#a[1]do
a[1][#a[1]+1]=am
end
aD(a[1],-_)end
else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for l=1,8 do
_[a[19][1][l]]=s[l+1]end
_[15]=0
end
end
end
Q={}_=a[1][1]r[1]={_[1],_[2]}r[3]=_[3]aT=aM(#a[7],r[1])Y=aK(aT)r[2]=Y[1]+41
aS=X(Y[5]/g,1)^1.3
for c=1,#Y[8]do
_=a[6][Y[8][c]]for A=_[2],_[1]+_[2]-1 do
aW=a[5][A]aQ=a[2][aW[4]]aQ[8]=aE
end
end
aJ=Z(2)H=H-1
ab=ab-1
if not ay[J]then
ay[J]=1
ab=70
end
an=(4-X(n//20,4))*8
if n<=0 then
I=41
elseif ab>0 then
I=an+6
elseif n<av then
H=35
I=an+7
elseif H<=0 then
H=16
aq=aq%256+1
I=an+a[13][1][aq]%3
end
av=n
end
end
end
function onDraw()R=screen
local ba,u,h,p,aH=R.drawTriangleF,R.drawRectF,R.setColor,R.drawText,R.drawLine
V=V+1
if V<=1 then
if a[21]and not K then
d=a[25][1]B,o=d[1],d[2]O,ap=q-B/2,80-o/2
for l=0,B-1 do
ak=O+l
for N=0,o-1 do
t=d[5+N+l*o]if t~=0 then
i=a[20][t]h(i[1],i[2],i[3])u(ak,ap+N,1,1)end
end
end
end
if not aJ then
for c=1,#m do
d=m[c][2][1]aj=d>0 and aS or 1
d=a[17][abs(d)][1]d=a[23][d]B,o,ar=d[1],d[2],d[3]*.7
az=ar*aC
O,ap=q-(d[4]+160)*.7,w-(d[5]+148)*.7*aC
for l=0,B-1 do
ak=O+l*ar
for N=0,o-1 do
t=d[7+N+l*o]if t~=0 then
i=a[20][t]h(i[1]*aj,i[2]*aj,i[3]*aj)u(ak,ap+N*az,ar,az)end
end
end
end
end
if K then
if aJ then
h(0,0,0)u(0,0,W,w)for c=1,#a[2]do
_=a[2][c]if _[8]then
z=ae(aI(at(sub(a[4][_[1]],r[1]),aB)),{q,af})v=ae(aI(at(sub(a[4][_[2]],r[1]),aB)),{q,af})if _[3]&4>0 then
h(50,50,50)else
h(g,g,g)end
aH(z[1],z[2],v[1],v[2])end
end
h(g,g,g)_=a[19][10]for c=1,#_,4 do
ad=sin(r[3]-90)ac=cos(r[3]-90)z={_[c]*ac+_[c+1]*ad,_[c+1]*ac-_[c]*ad}v={_[c+2]*ac+_[c+3]*ad,_[c+3]*ac-_[c+2]*ad}z=ae(z,{q,af})v=ae(v,{q,af})aH(z[1],z[2],v[1],v[2])end
end
h(g,G>0 and 0 or g,0,G+F)u(0,0,W,w)h(50,50,50)u(0,w,W,32)h(25,25,25)u(q-16,w,32,32)d=a[23][a[19][3][1]+I]B,o=d[1],d[2]O=q-B/2
for c=0,B-1 do
for A=0,o-1 do
t=d[7+A+c*o]if t~=0 then
i=a[20][t]h(i[1],i[2],i[3])u(O+c,w+1+A,1,1)end
end
end
for c=5,7 do
_=a[19][c]h(_[1],_[2],_[3])u(229,95+c*7,6,7)end
h(g,g,g)p(100,131,L(n))p(100,137,L(aO))p(1,143,"DIF:")p(1,149,"LOD:")p(26,149,L(ah))p(26,143,L(X(aA-3000,3)))end
p(1,131,"ROM:")p(26,131,aa)p(1,137,"TPS:")end
end
