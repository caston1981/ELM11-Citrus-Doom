bf=""

g=255
w=180
aM=true
aE=false
aF=input
aG=table.remove
j=math
G=j.max
ac=j.min
abs=j.abs
R=j.floor
sqrt=j.sqrt
f=aF.getNumber
W=aF.getBool
bb=output.setNumber
pi=j.pi
ar=aE
aA=aM
aq=string
function Y(b,e)return{(b[1]+e[1]),(b[2]+e[2])}end
function aR(b,e)return b[1]*e[2]-b[2]*e[1]end
function sub(b,e)return{(b[1]-e[1]),(b[2]-e[2])}end
function aB(b,e)return{b[1]*e,b[2]*e}end
function b_(b)return((b+w)%360)-w end
function sin(b)return j.sin(b/w*pi)end
function cos(b)return j.cos(b/w*pi)end
function tan(b)return j.tan(b/w*pi)end
function aX(b)return j.atan(b)*w/pi end
function bc(b)return j.atan(b[2],b[1])*w/pi end
function aQ(b,e,aS)return ac(G(e,b),aS)end
function aY(b)return R(b+.5)end
function be(b,e)return sqrt(((b[1]-e[1])^2)+((b[2]-e[2])^2))end
function ay(b)return{b[1],-b[2]}end
function aZ(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
a={}X=1
Q=3
H=ar
u={{0,0},0,0}Z=288
q=Z//2
C=128
af=C//2
av=1.2
aH={1,1}as=1
J=1
Q=3
al=400
o=100
az=100
E=0
D=0
au=3002
I={}aN=32768
m={}aI=.05
N=0
aa=0
z=1
ad=0
T=0
K=aA
function aC(c,b)if c<aN then
v=a[7][c]return aC(v[0<aR({v[3],v[4]},sub(b,v))and 8 or 7],b)else
return c-aN
end
end
function at(b)v=a[5][a[6][b][2]]return a[8][a[3][a[2][v[4]][v[5]+6]][6]]end
function onTick()ad=0
for A=1,3 do
if W(9)and(not H)or not a[21]then
an=property.getText(X)c=1
l=bf
_=aq.sub(an,c,c)while _~=bfdo
ax=aq.byte(_)if ax>64then
l=(l..ax-65)+0
if z==1then
aD=l
a[l]=a[l]or{}elseif z==2then
aP=l
M=0
elseif z==3then
aj=l
else
if M==0then
M=aP
aj=aj-1
am={}a[aD][#a[aD]+1]=am
end
am[#am+1]=l
M=M-1
z=G(M,aj)>0 and z-1 or 0
end
z=z+1
l=bf
else
l=l.._
end
c=c+1
_=aq.sub(an,c,c)end
X=X+1
H=an==bf
end
end
if H then
if o>0 and not K then
F={}I[#I+1]=F
O=5
_=f(O)while _~=0 do
s={}F[#F+1]=s
for c=0,8 do
s[c+1]=f(O+c)end
O=O+9
_=f(O)end
end
if W(1)then
if K then
for c=1,10 do
a[c]=a[c+10*Q]end
Q=Q+1
K=ar
for c=1,#a[1]do
_=a[1][c]end
for c=1,#a[8]do
a[8][c][8]={}end
for c=1,#a[6]do
_=at(c)_[8][#_[8]+1]=c
end
end
if f(9)>0 then
K=aA
Q=f(9)end
if o>0 then
if L~=f(1)and f(1)>0then
m={}_={}_[1]=a[29][f(1)]_[2]=a[16][_[1][3]]bd=_[2][1]_[3]=0
m[1]=_
end
L=f(1)ai=W(3)if ai and L==5 then
if T<=0 then
T=7
else
ai=aE
end
end
T=T-1
if ai then
_=m[1]_[2]=a[16][_[1][4]]_[3]=-1
end
end
for c=#m,1,-1 do
_=m[c]if _[3]==0 then
if _[2][3]==4 then
if L==5 and T<5 then
aL=1
else
aL=0
end
m[#m+1]={_[1],a[16][_[1][5]+aL],2}end
end
_[3]=_[3]+1
if _[3]>=_[2][2]then
if _[2][4]>2 then
_[2]=a[16][_[2][4]]_[3]=0
else
aG(m,c)end
end
end
if K then
E=50
end
D=G(D-4,0)D=aQ(D+(o-f(3))*3,0,g)E=G(E-1.5,0)o=f(3)aU=f(4)if f(2)>0 then
_=a[2][f(2)]if _ then
if _[4]>3004 and _[4]<3008 then
al=G(al+3*(_[4]-3006),1)elseif _[4]>3000 then
au=_[4]end
end
end
for c=1,#I do
F=I[c]for A=1,#F do
s=F[A]_=s[1]if _>(2^15)then
_=a[8][_-(2^15)]for i=1,6 do
_[i]=s[i+1]end
elseif _<0 then
if-_<=#a[1]then
if a[1][-_]~=nil then
s=a[1][-_][6]if a[16][s][5]>0 then
E=G(E,15)end
else
a[1][-_]={}end
while-_>#a[1]do
a[1][#a[1]+1]=ar
end
aG(a[1],-_)end
else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for i=1,8 do
_[a[19][1][i]]=s[i+1]end
_[15]=0
end
end
end
I={}_=a[1][1]u[1]={_[1],_[2]}u[3]=_[3]aO=aC(#a[7],u[1])V=at(aO)u[2]=V[1]+41
aT=ac(V[5]/g,1)^1.3
for c=1,#V[8]do
_=a[6][V[8][c]]for A=_[2],_[1]+_[2]-1 do
aW=a[5][A]aV=a[2][aW[4]]aV[8]=aM
end
end
aw=W(2)N=N-1
aa=aa-1
if not aH[L]then
aH[L]=1
aa=70
end
ah=(4-ac(o//20,4))*8
if o<=0 then
J=41
elseif aa>0 then
J=ah+6
elseif o<az then
N=35
J=ah+7
elseif N<=0 then
N=16
as=as%256+1
J=ah+a[13][1][as]%3
end
az=o
end
end
end
function onDraw()P=screen
local ba,r,h,p,aJ=P.drawTriangleF,P.drawRectF,P.setColor,P.drawText,P.drawLine
ad=ad+1
if ad<=1 then
if a[21]and not H then
d=a[25][1]B,n=d[1],d[2]S,ag=q-B/2,80-n/2
for i=0,B-1 do
ao=S+i
for U=0,n-1 do
t=d[5+U+i*n]if t~=0 then
k=a[20][t]h(k[1],k[2],k[3])r(ao,ag+U,1,1)end
end
end
end
if not aw then
for c=1,#m do
d=m[c][2][1]ap=d>0 and aT or 1
d=a[17][abs(d)][1]d=a[23][d]B,n,ak=d[1],d[2],d[3]*.7
aK=ak*av
S,ag=q-(d[4]+160)*.7,C-(d[5]+148)*.7*av
for i=0,B-1 do
ao=S+i*ak
for U=0,n-1 do
t=d[7+U+i*n]if t~=0 then
k=a[20][t]h(k[1]*ap,k[2]*ap,k[3]*ap)r(ao,ag+U*aK,ak,aK)end
end
end
end
end
if H then
if aw then
h(0,0,0)r(0,0,Z,C)for c=1,#a[2]do
_=a[2][c]if _[8]then
x=Y(ay(aB(sub(a[4][_[1]],u[1]),aI)),{q,af})y=Y(ay(aB(sub(a[4][_[2]],u[1]),aI)),{q,af})if _[3]&4>0 then
h(50,50,50)else
h(g,g,g)end
aJ(x[1],x[2],y[1],y[2])end
end
h(g,g,g)_=a[19][10]for c=1,#_,4 do
ab=sin(u[3]-90)ae=cos(u[3]-90)x={_[c]*ae+_[c+1]*ab,_[c+1]*ae-_[c]*ab}y={_[c+2]*ae+_[c+3]*ab,_[c+3]*ae-_[c+2]*ab}x=Y(x,{q,af})y=Y(y,{q,af})aJ(x[1],x[2],y[1],y[2])end
end
h(g,D>0 and 0 or g,0,D+E)r(0,0,Z,C)h(50,50,50)r(0,C,Z,32)h(25,25,25)r(q-16,C,32,32)d=a[23][a[19][3][1]+J]B,n=d[1],d[2]S=q-B/2
for c=0,B-1 do
for A=0,n-1 do
t=d[7+A+c*n]if t~=0 then
k=a[20][t]h(k[1],k[2],k[3])r(S+c,C+1+A,1,1)end
end
end
for c=5,7 do
_=a[19][c]h(_[1],_[2],_[3])r(229,95+c*7,6,7)end
h(g,g,g)p(100,131,R(o))p(100,137,R(aU))p(1,143,"DIF:")p(1,149,"LOD:")p(26,149,R(al))p(26,143,R(ac(au-3000,3)))end
p(1,131,"ROM:")p(26,131,X)p(1,137,"TPS:")end
end
