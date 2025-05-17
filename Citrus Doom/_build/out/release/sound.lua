bf=""

g=255
w=180
aw=true
aI=false
ay=input
az=table.remove
l=math
F=l.max
ab=l.min
abs=l.abs
T=l.floor
sqrt=l.sqrt
f=ay.getNumber
V=ay.getBool
aX=output.setNumber
pi=l.pi
ao=aI
ax=aw
aq=string
function Y(b,e)return{(b[1]+e[1]),(b[2]+e[2])}end
function aS(b,e)return b[1]*e[2]-b[2]*e[1]end
function sub(b,e)return{(b[1]-e[1]),(b[2]-e[2])}end
function aH(b,e)return{b[1]*e,b[2]*e}end
function aZ(b)return((b+w)%360)-w end
function sin(b)return l.sin(b/w*pi)end
function cos(b)return l.cos(b/w*pi)end
function tan(b)return l.tan(b/w*pi)end
function bd(b)return l.atan(b)*w/pi end
function aY(b)return l.atan(b[2],b[1])*w/pi end
function aT(b,e,aQ)return ab(F(e,b),aQ)end
function be(b)return T(b+.5)end
function bc(b,e)return sqrt(((b[1]-e[1])^2)+((b[2]-e[2])^2))end
function aJ(b)return{b[1],-b[2]}end
function bb(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
a={}ac=1
H=3
L=ao
q={{0,0},0,0}W=288
r=W//2
v=128
aa=v//2
aD=1.2
av={1,1}ak=1
M=1
H=3
an=400
o=100
aG=100
E=0
G=0
aB=3002
N={}aL=32768
m={}au=.05
J=0
ad=0
y=1
af=0
I=0
K=ax
function at(c,b)if c<aL then
A=a[7][c]return at(A[0<aS({A[3],A[4]},sub(b,A))and 8 or 7],b)else
return c-aL
end
end
function aN(b)A=a[5][a[6][b][2]]return a[8][a[3][a[2][A[4]][A[5]+6]][6]]end
function onTick()af=0
for B=1,3 do
if V(9)and(not L)or not a[21]then
ap=property.getText(ac)c=1
j=bf
_=aq.sub(ap,c,c)while _~=bfdo
aF=aq.byte(_)if aF>64then
j=(j..aF-65)+0
if y==1then
aE=j
a[j]=a[j]or{}elseif y==2then
aO=j
U=0
elseif y==3then
ar=j
else
if U==0then
U=aO
ar=ar-1
am={}a[aE][#a[aE]+1]=am
end
am[#am+1]=j
U=U-1
y=F(U,ar)>0 and y-1 or 0
end
y=y+1
j=bf
else
j=j.._
end
c=c+1
_=aq.sub(ap,c,c)end
ac=ac+1
L=ap==bf
end
end
if L then
if o>0 and not K then
D={}N[#N+1]=D
P=5
_=f(P)while _~=0 do
u={}D[#D+1]=u
for c=0,8 do
u[c+1]=f(P+c)end
P=P+9
_=f(P)end
end
if V(1)then
if K then
for c=1,10 do
a[c]=a[c+10*H]end
H=H+1
K=ao
for c=1,#a[1]do
_=a[1][c]end
for c=1,#a[8]do
a[8][c][8]={}end
for c=1,#a[6]do
_=aN(c)_[8][#_[8]+1]=c
end
end
if f(9)>0 then
K=ax
H=f(9)end
if o>0 then
if S~=f(1)and f(1)>0then
m={}_={}_[1]=a[29][f(1)]_[2]=a[16][_[1][3]]b_=_[2][1]_[3]=0
m[1]=_
end
S=f(1)al=V(3)if al and S==5 then
if I<=0 then
I=7
else
al=aI
end
end
I=I-1
if al then
_=m[1]_[2]=a[16][_[1][4]]_[3]=-1
end
end
for c=#m,1,-1 do
_=m[c]if _[3]==0 then
if _[2][3]==4 then
if S==5 and I<5 then
aC=1
else
aC=0
end
m[#m+1]={_[1],a[16][_[1][5]+aC],2}end
end
_[3]=_[3]+1
if _[3]>=_[2][2]then
if _[2][4]>2 then
_[2]=a[16][_[2][4]]_[3]=0
else
az(m,c)end
end
end
if K then
E=50
end
G=F(G-4,0)G=aT(G+(o-f(3))*3,0,g)E=F(E-1.5,0)o=f(3)aV=f(4)if f(2)>0 then
_=a[2][f(2)]if _ then
if _[4]>3004 and _[4]<3008 then
an=F(an+3*(_[4]-3006),1)elseif _[4]>3000 then
aB=_[4]end
end
end
for c=1,#N do
D=N[c]for B=1,#D do
u=D[B]_=u[1]if _>(2^15)then
_=a[8][_-(2^15)]for k=1,6 do
_[k]=u[k+1]end
elseif _<0 then
if-_<=#a[1]then
if a[1][-_]~=nil then
u=a[1][-_][6]if a[16][u][5]>0 then
E=F(E,15)end
else
a[1][-_]={}end
while-_>#a[1]do
a[1][#a[1]+1]=ao
end
az(a[1],-_)end
else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for k=1,8 do
_[a[19][1][k]]=u[k+1]end
_[15]=0
end
end
end
N={}_=a[1][1]q[1]={_[1],_[2]}q[3]=_[3]aW=at(#a[7],q[1])ae=aN(aW)q[2]=ae[1]+41
aR=ab(ae[5]/g,1)^1.3
for c=1,#ae[8]do
_=a[6][ae[8][c]]for B=_[2],_[1]+_[2]-1 do
aU=a[5][B]aP=a[2][aU[4]]aP[8]=aw
end
end
aM=V(2)J=J-1
ad=ad-1
if not av[S]then
av[S]=1
ad=70
end
as=(4-ab(o//20,4))*8
if o<=0 then
M=41
elseif ad>0 then
M=as+6
elseif o<aG then
J=35
M=as+7
elseif J<=0 then
J=16
ak=ak%256+1
M=as+a[13][1][ak]%3
end
aG=o
end
end
end
function onDraw()R=screen
local ba,t,h,p,aA=R.drawTriangleF,R.drawRectF,R.setColor,R.drawText,R.drawLine
af=af+1
if af<=1 then
if a[21]and not L then
d=a[25][1]z,n=d[1],d[2]Q,ai=r-z/2,80-n/2
for k=0,z-1 do
ag=Q+k
for O=0,n-1 do
s=d[5+O+k*n]if s~=0 then
i=a[20][s]h(i[1],i[2],i[3])t(ag,ai+O,1,1)end
end
end
end
if not aM then
for c=1,#m do
d=m[c][2][1]ah=d>0 and aR or 1
d=a[17][abs(d)][1]d=a[23][d]z,n,aj=d[1],d[2],d[3]*.7
aK=aj*aD
Q,ai=r-(d[4]+160)*.7,v-(d[5]+148)*.7*aD
for k=0,z-1 do
ag=Q+k*aj
for O=0,n-1 do
s=d[7+O+k*n]if s~=0 then
i=a[20][s]h(i[1]*ah,i[2]*ah,i[3]*ah)t(ag,ai+O*aK,aj,aK)end
end
end
end
end
if L then
if aM then
h(0,0,0)t(0,0,W,v)for c=1,#a[2]do
_=a[2][c]if _[8]then
x=Y(aJ(aH(sub(a[4][_[1]],q[1]),au)),{r,aa})C=Y(aJ(aH(sub(a[4][_[2]],q[1]),au)),{r,aa})if _[3]&4>0 then
h(50,50,50)else
h(g,g,g)end
aA(x[1],x[2],C[1],C[2])end
end
h(g,g,g)_=a[19][10]for c=1,#_,4 do
X=sin(q[3]-90)Z=cos(q[3]-90)x={_[c]*Z+_[c+1]*X,_[c+1]*Z-_[c]*X}C={_[c+2]*Z+_[c+3]*X,_[c+3]*Z-_[c+2]*X}x=Y(x,{r,aa})C=Y(C,{r,aa})aA(x[1],x[2],C[1],C[2])end
end
h(g,G>0 and 0 or g,0,G+E)t(0,0,W,v)h(50,50,50)t(0,v,W,32)h(25,25,25)t(r-16,v,32,32)d=a[23][a[19][3][1]+M]z,n=d[1],d[2]Q=r-z/2
for c=0,z-1 do
for B=0,n-1 do
s=d[7+B+c*n]if s~=0 then
i=a[20][s]h(i[1],i[2],i[3])t(Q+c,v+1+B,1,1)end
end
end
for c=5,7 do
_=a[19][c]h(_[1],_[2],_[3])t(229,95+c*7,6,7)end
h(g,g,g)p(100,131,T(o))p(100,137,T(aV))p(1,143,"DIF:")p(1,149,"LOD:")p(26,149,T(an))p(26,143,T(ab(aB-3000,3)))end
p(1,131,"ROM:")p(26,131,ac)p(1,137,"TPS:")end
end
