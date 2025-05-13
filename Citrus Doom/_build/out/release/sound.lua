aP=""

v=255
w=180
ap=false
aq=input
an=table.remove
j=math
x=j.max
P=j.min
abs=j.abs
M=j.floor
sqrt=j.sqrt
e=aq.getNumber
Q=aq.getBool
aD=output.setNumber
pi=j.pi
ac=ap
Y=true
ag=string
function aG(b,i)return b[1]*i[2]-b[2]*i[1]end
function sub(b,i)return{(b[1]-i[1]),(b[2]-i[2])}end
function aL(b)return((b+w)%360)-w end
function cos(b)return j.cos(b/w*pi)end
function tan(b)return j.tan(b/w*pi)end
function aK(b)return j.atan(b)*w/pi end
function aH(b)return j.atan(b[2],b[1])*w/pi end
function aw(b,i,ax)return P(x(i,b),ax)end
function aM(b)return M(b+.5)end
function aF(b,i)return sqrt(((b[1]-i[1])^2)+((b[2]-i[2])^2))end
function aC(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
a={}T=1
F=3
G=ac
S=1
N={{0,0},0,0}Z=288
V=Z//2
A=128
aJ=A//2
at=1.2
al={1,1}W=1
s=1
F=3
af=400
r=100
z=0
y=0
ar=3002
J={}k={}S=0
u=1
R=0
H=0
O=Y
function as(c,b,_)if c<32768then
_=a[7][c]return as(_[_[3]*(b[2]-_[2])-_[4]*(b[1]-_[1])>0 and 8 or 7],b)else
c=a[5][a[6][c-32768][2]]return a[8][a[3][a[2][c[4]][c[5]+6]][6]]end
end
function onTick()R=0
for K=1,3 do
if Q(9)and(not G)or not a[21]then
ad=property.getText(T..aP)if ad~=aP then
c=1
g=aP
_=ag.sub(ad,c,c)while _~=aPdo
ao=ag.byte(_)if ao>64 or _==aPthen
g=(g..(ao-65))+0
if u==1then
am=g
if a[g]==aI then
a[g]={}end
u=2
elseif u==2then
aB=g
D=0
u=3
elseif u==3then
ah=g
u=4
else
if D==0then
D=aB
ah=ah-1
ab={}a[am][#a[am]+1]=ab
end
ab[#ab+1]=g
D=D-1
if x(D,ah)==0then
u=1
end
end
g=aP
else
g=g.._
end
c=c+1
_=ag.sub(ad,c,c)end
T=T+1
else
G=Y
end
end
end
if G then
if r>0 and not O then
B={}J[#J+1]=B
E=5
_=e(E)while _~=0 do
n={}B[#B+1]=n
for c=0,8 do
n[c+1]=e(E+c)end
E=E+9
_=e(E)end
end
if Q(1)then
S=S+1
if O then
for c=1,10 do
a[c]=a[c+10*F]end
F=F+1
O=ac
for c=1,#a[1]do
_=a[1][c]if _[4]==1 then
az=c
end
end
end
if e(9)>0 then
O=Y
F=e(9)end
if r>0 then
if C~=e(1)and e(1)>0then
k={}_={}_[1]=a[29][e(1)]_[2]=a[16][_[1][3]]aN=_[2][1]_[3]=0
k[1]=_
end
C=e(1)ai=Q(3)if ai and C==5 then
if H<=0 then
H=7
else
ai=ap
end
end
H=H-1
if ai then
_=k[1]_[2]=a[16][_[1][4]]_[3]=-1
end
end
for c=#k,1,-1 do
_=k[c]if _[3]==0 then
if _[2][3]==4 then
if C==5 and H<5 then
av=1
else
av=0
end
k[#k+1]={_[1],a[16][_[1][5]+av],2}end
end
_[3]=_[3]+1
if _[3]>=_[2][2]then
if _[2][4]>2 then
_[2]=a[16][_[2][4]]_[3]=0
else
an(k,c)end
end
end
if Q(2)then
z=50
end
y=x(y-4,0)y=aw(y+(r-e(3))*3,0,v)z=x(z-1.5,0)r=e(3)ay=e(4)if e(2)>0 then
_=a[2][e(2)]if _ then
if _[4]>3004 and _[4]<3008 then
af=x(af+3*(_[4]-3006),1)elseif _[4]>3000 then
ar=_[4]end
end
end
for c=1,#J do
B=J[c]for K=1,#B do
n=B[K]_=n[1]if _>(2^15)then
_=a[8][_-(2^15)]for f=1,6 do
_[f]=n[f+1]end
elseif _<0 then
if-_<=#a[1]then
if a[1][-_]~=nil then
n=a[1][-_][6]if a[16][n][5]>0 then
z=x(z,15)end
else
a[1][-_]={}end
while-_>#a[1]do
a[1][#a[1]+1]=ac
end
an(a[1],-_)end
else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for f=1,8 do
_[a[19][1][f]]=n[f+1]end
_[15]=0
end
end
end
J={}_=a[1][az]N[1]={_[1],_[2]}N[3]=_[3]au=as(#a[7],N[1])N[2]=au[9]+41
aA=P(au[5]/v+aO,1)^1.8
if S%16==1 then
W=W%256+1
s=(4-P(r//20,4))*8
if al[C]then
s=s+a[13][1][W]%3
else
al[C]=1
s=s+6
end
if r<=0 then
s=41
end
end
end
end
end
function onDraw()U=screen
local aE,q,o,m=U.drawTriangleF,U.drawRectF,U.setColor,U.drawText
R=R+1
if R<=1 then
if a[21]and not G then
d=a[25][1]t,l=d[1],d[2]L,ae=V-t/2,80-l/2
for f=0,t-1 do
aj=L+f
for I=0,l-1 do
p=d[5+I+f*l]if p~=0 then
h=a[20][p]o(h[1],h[2],h[3])q(aj,ae+I,1,1)end
end
end
end
for c=1,#k do
d=k[c][2][1]aa=d>0 and aA or 1
d=a[17][abs(d)][1]d=a[23][d]t,l,X=d[1],d[2],d[3]*.7
ak=X*at
L,ae=V-(d[4]+160)*.7,A-(d[5]+148)*.7*at
for f=0,t-1 do
aj=L+f*X
for I=0,l-1 do
p=d[7+I+f*l]if p~=0 then
h=a[20][p]o(h[1]*aa,h[2]*aa,h[3]*aa)q(aj,ae+I*ak,X,ak)end
end
end
end
if G then
o(v,y>0 and 0 or v,0,y+z)q(0,0,Z,A)o(50,50,50)q(0,A,Z,32)o(25,25,25)q(V-16,A,32,32)d=a[23][a[19][3][1]+s]t,l=d[1],d[2]L=V-t/2
for c=0,t-1 do
for K=0,l-1 do
p=d[7+K+c*l]if p~=0 then
h=a[20][p]o(h[1],h[2],h[3])q(L+c,A+1+K,1,1)end
end
end
for c=5,7 do
_=a[19][c]o(_[1],_[2],_[3])q(229,95+c*7,6,7)end
o(v,v,v)m(100,131,M(r))m(100,137,M(ay))m(1,143,"DIF:")m(1,149,"LOD:")m(26,149,M(af))m(26,143,P(ar-3000,3))end
m(1,131,"ROM:")m(26,131,T)m(1,137,"TPS:")end
end
