bf=""

g=255
w=180
ay=true
aG=false
av=input
aA=table.remove
k=math
E=k.max
X=k.min
abs=k.abs
P=k.floor
sqrt=k.sqrt
f=av.getNumber
ac=av.getBool
aY=output.setNumber
pi=k.pi
as=aG
aB=ay
an=string
function af(b,e)return{(b[1]+e[1]),(b[2]+e[2])}end
function aQ(b,e)return b[1]*e[2]-b[2]*e[1]end
function sub(b,e)return{(b[1]-e[1]),(b[2]-e[2])}end
function aL(b,e)return{b[1]*e,b[2]*e}end
function b_(b)return((b+w)%360)-w end
function sin(b)return k.sin(b/w*pi)end
function cos(b)return k.cos(b/w*pi)end
function tan(b)return k.tan(b/w*pi)end
function bc(b)return k.atan(b)*w/pi end
function be(b)return k.atan(b[2],b[1])*w/pi end
function aT(b,e,aP)return X(E(e,b),aP)end
function aX(b)return P(b+.5)end
function ba(b,e)return sqrt(((b[1]-e[1])^2)+((b[2]-e[2])^2))end
function aK(b)return{b[1],-b[2]}end
function bd(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
a={}aa=1
Q=3
U=as
q={{0,0},0,0}ae=288
s=ae//2
A=128
Y=A//2
aw=1.2
aE={1,1}ah=1
H=1
Q=3
ap=400
p=100
az=100
F=0
D=0
aH=3002
R={}aJ=32768
m={}aD=.05
K=0
V=0
y=1
ad=0
L=0
N=aB
function at(c,b)if c<aJ then
x=a[7][c]return at(x[0<aQ({x[3],x[4]},sub(b,x))and 8 or 7],b)else
return c-aJ
end
end
function au(b)x=a[5][a[6][b][2]]return a[8][a[3][a[2][x[4]][x[5]+6]][6]]end
function onTick()ad=0
for z=1,3 do
if ac(9)and(not U)or not a[21]then
ag=property.getText(aa)c=1
i=bf
_=an.sub(ag,c,c)while _~=bfdo
aC=an.byte(_)if aC>64then
i=(i..aC-65)+0
if y==1then
ax=i
a[i]=a[i]or{}elseif y==2then
aR=i
O=0
elseif y==3then
am=i
else
if O==0then
O=aR
am=am-1
aj={}a[ax][#a[ax]+1]=aj
end
aj[#aj+1]=i
O=O-1
y=E(O,am)>0 and y-1 or 0
end
y=y+1
i=bf
else
i=i.._
end
c=c+1
_=an.sub(ag,c,c)end
aa=aa+1
U=ag==bf
end
end
if U then
if p>0 and not N then
G={}R[#R+1]=G
M=5
_=f(M)while _~=0 do
u={}G[#G+1]=u
for c=0,8 do
u[c+1]=f(M+c)end
M=M+9
_=f(M)end
end
if ac(1)then
if N then
for c=1,10 do
a[c]=a[c+10*Q]end
Q=Q+1
N=as
for c=1,#a[1]do
_=a[1][c]end
for c=1,#a[8]do
a[8][c][8]={}end
for c=1,#a[6]do
_=au(c)_[8][#_[8]+1]=c
end
end
if f(9)>0 then
N=aB
Q=f(9)end
if p>0 then
if T~=f(1)and f(1)>0then
m={}_={}_[1]=a[29][f(1)]_[2]=a[16][_[1][3]]aZ=_[2][1]_[3]=0
m[1]=_
end
T=f(1)ai=ac(3)if ai and T==5 then
if L<=0 then
L=7
else
ai=aG
end
end
L=L-1
if ai then
_=m[1]_[2]=a[16][_[1][4]]_[3]=-1
end
end
for c=#m,1,-1 do
_=m[c]if _[3]==0 then
if _[2][3]==4 then
if T==5 and L<5 then
aN=1
else
aN=0
end
m[#m+1]={_[1],a[16][_[1][5]+aN],2}end
end
_[3]=_[3]+1
if _[3]>=_[2][2]then
if _[2][4]>2 then
_[2]=a[16][_[2][4]]_[3]=0
else
aA(m,c)end
end
end
if N then
F=50
end
D=E(D-4,0)D=aT(D+(p-f(3))*3,0,g)F=E(F-1.5,0)p=f(3)aS=f(4)if f(2)>0 then
_=a[2][f(2)]if _ then
if _[4]>3004 and _[4]<3008 then
ap=E(ap+3*(_[4]-3006),1)elseif _[4]>3000 then
aH=_[4]end
end
end
for c=1,#R do
G=R[c]for z=1,#G do
u=G[z]_=u[1]if _>(2^15)then
_=a[8][_-(2^15)]for j=1,6 do
_[j]=u[j+1]end
elseif _<0 then
if-_<=#a[1]then
if a[1][-_]~=nil then
u=a[1][-_][6]if a[16][u][5]>0 then
F=E(F,15)end
else
a[1][-_]={}end
while-_>#a[1]do
a[1][#a[1]+1]=as
end
aA(a[1],-_)end
else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for j=1,8 do
_[a[19][1][j]]=u[j+1]end
_[15]=0
end
end
end
R={}_=a[1][1]q[1]={_[1],_[2]}q[3]=_[3]aW=at(#a[7],q[1])W=au(aW)q[2]=W[1]+41
aU=X(W[5]/g,1)^1.3
for c=1,#W[8]do
_=a[6][W[8][c]]for z=_[2],_[1]+_[2]-1 do
aV=a[5][z]aO=a[2][aV[4]]aO[8]=ay
end
end
aM=ac(2)K=K-1
V=V-1
if not aE[T]then
aE[T]=1
V=70
end
ak=(4-X(p//20,4))*8
if p<=0 then
H=41
elseif V>0 then
H=ak+6
elseif p<az then
K=35
H=ak+7
elseif K<=0 then
K=16
ah=ah%256+1
H=ak+a[13][1][ah]%3
end
az=p
end
end
end
function onDraw()I=screen
local bb,r,h,n,aI=I.drawTriangleF,I.drawRectF,I.setColor,I.drawText,I.drawLine
ad=ad+1
if ad<=1 then
if a[21]and not U then
d=a[25][1]v,o=d[1],d[2]S,al=s-v/2,80-o/2
for j=0,v-1 do
ao=S+j
for J=0,o-1 do
t=d[5+J+j*o]if t~=0 then
l=a[20][t]h(l[1],l[2],l[3])r(ao,al+J,1,1)end
end
end
end
if not aM then
for c=1,#m do
d=m[c][2][1]ar=d>0 and aU or 1
d=a[17][abs(d)][1]d=a[23][d]v,o,aq=d[1],d[2],d[3]*.7
aF=aq*aw
S,al=s-(d[4]+160)*.7,A-(d[5]+148)*.7*aw
for j=0,v-1 do
ao=S+j*aq
for J=0,o-1 do
t=d[7+J+j*o]if t~=0 then
l=a[20][t]h(l[1]*ar,l[2]*ar,l[3]*ar)r(ao,al+J*aF,aq,aF)end
end
end
end
end
if U then
if aM then
h(0,0,0)r(0,0,ae,A)for c=1,#a[2]do
_=a[2][c]if _[8]then
C=af(aK(aL(sub(a[4][_[1]],q[1]),aD)),{s,Y})B=af(aK(aL(sub(a[4][_[2]],q[1]),aD)),{s,Y})if _[3]&4>0 then
h(50,50,50)else
h(g,g,g)end
aI(C[1],C[2],B[1],B[2])end
end
h(g,g,g)_=a[19][10]for c=1,#_,4 do
Z=sin(q[3]-90)ab=cos(q[3]-90)C={_[c]*ab+_[c+1]*Z,_[c+1]*ab-_[c]*Z}B={_[c+2]*ab+_[c+3]*Z,_[c+3]*ab-_[c+2]*Z}C=af(C,{s,Y})B=af(B,{s,Y})aI(C[1],C[2],B[1],B[2])end
end
h(g,D>0 and 0 or g,0,D+F)r(0,0,ae,A)h(50,50,50)r(0,A,ae,32)h(25,25,25)r(s-16,A,32,32)d=a[23][a[19][3][1]+H]v,o=d[1],d[2]S=s-v/2
for c=0,v-1 do
for z=0,o-1 do
t=d[7+z+c*o]if t~=0 then
l=a[20][t]h(l[1],l[2],l[3])r(S+c,A+1+z,1,1)end
end
end
for c=5,7 do
_=a[19][c]h(_[1],_[2],_[3])r(229,95+c*7,6,7)end
h(g,g,g)n(100,131,P(p))n(100,137,P(aS))n(1,143,"DIF:")n(1,149,"LOD:")n(26,149,P(ap))n(26,143,P(X(aH-3000,3)))end
n(1,131,"ROM:")n(26,131,aa)n(1,137,"TPS:")end
end
