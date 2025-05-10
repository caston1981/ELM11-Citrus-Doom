-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 3552 (3919 with comment) chars
aD=""

w=255
A=180
al=input
aj=table.remove
i=math
B=i.max
ak=i.min
abs=i.abs
Q=i.floor
sqrt=i.sqrt
e=al.getNumber
N=al.getBool
at=output.setNumber
pi=i.pi
ad=false
Y=true
V=string
function aA(b,j)return b[1]*j[2]-b[2]*j[1]end
function sub(b,j)return{(b[1]-j[1]),(b[2]-j[2])}end
function aw(b)return((b+A)%360)-A end
function cos(b)return i.cos(b/A*pi)end
function tan(b)return i.tan(b/A*pi)end
function ax(b)return i.atan(b)*A/pi end
function aC(b)return i.atan(b[2],b[1])*A/pi end
function aq(b,j,ao)return ak(B(j,b),ao)end
function az(b)return Q(b+.5)end
function av(b,j)return sqrt(((b[1]-j[1])^2)+((b[2]-j[2])^2))end
function ar(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
a={}K=1
D=3
H=ad
R=1
X=288
L=X//2
x=128
au=x//2
ag=1.2
am={1,1}ac=1
t=1
D=3
Z=400
s=100
v=0
z=0
G={}h={}R=0
r=1
P=0
M=Y
function onTick()P=0
for E=1,3 do
if N(9)and(not H)or not a[21]then
ae=property.getText(K..aD)if ae~=aD then
c=1
g=aD
_=V.sub(ae,c,c)while _~=aDdo
ah=V.byte(_)if ah>64 or _==aDthen
g=(g..(ah-65))+0
if r==1then
af=g
if a[g]==as then
a[g]={}end
r=2
elseif r==2then
an=g
J=0
r=3
elseif r==3then
W=g
r=4
else
if J==0then
J=an
W=W-1
aa={}a[af][#a[af]+1]=aa
end
aa[#aa+1]=g
J=J-1
if B(J,W)==0then
r=1
end
end
g=aD
else
g=g.._
end
c=c+1
_=V.sub(ae,c,c)end
K=K+1
else
H=Y
end
end
end
if H then
if s>0 and not M then
y={}G[#G+1]=y
F=5
_=e(F)while _~=0 do
k={}y[#y+1]=k
for c=0,8 do
k[c+1]=e(F+c)end
F=F+9
_=e(F)end
end
if N(1)then
R=R+1
if e(9)>0 then
M=Y
D=e(9)end
if M then
for c=1,10 do
a[c]=a[c+10*D]end
D=D+1
M=ad
end
if s>0 then
if U~=e(1)and e(1)>0then
h={}_={}_[1]=a[29][e(1)]_[2]=a[16][_[1][3]]aB=_[2][1]_[3]=0
h[1]=_
end
U=e(1)if N(3)then
_=h[1]_[2]=a[16][_[1][4]]_[3]=0
end
end
for c=#h,1,-1 do
_=h[c]if _[3]==0 then
if _[2][3]==4 then
h[#h+1]={_[1],a[16][_[1][5]],2}end
end
_[3]=_[3]+1
if _[3]>=_[2][2]then
if _[2][4]>2 then
_[2]=a[16][_[2][4]]_[3]=0
else
aj(h,c)end
end
end
if N(2)then
v=50
end
z=B(z-4,0)z=aq(z+(s-e(3))*3,0,w)v=B(v-1.5,0)s=e(3)ap=e(4)if e(2)>0 then
_=a[2][e(2)]if _ then
if _[4]>3004 then
Z=B(Z+3*(_[4]-3006),1)end
end
end
for c=1,#G do
y=G[c]for E=1,#y do
k=y[E]_=k[1]if _>(2^15)then
_=a[8][_-(2^15)]_[1]=k[2]_[2]=k[3]elseif _<0 then
if-_<=#a[1]then
if a[1][-_]~=nil then
k=a[1][-_][6]if a[16][k][5]>0 then
v=B(v,15)end
else
a[1][-_]={}end
while-_>#a[1]do
a[1][#a[1]+1]=ad
end
aj(a[1],-_)end
else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for p=1,8 do
_[a[19][1][p]]=k[p+1]end
_[15]=0
end
end
end
G={}if R%16==1 then
ac=ac%256+1
t=(4-ak(s//20,4))*8
if am[U]then
t=t+a[13][1][ac]%3
else
am[U]=1
t=t+6
end
if s<=0 then
t=41
end
end
end
end
end
function onDraw()O=screen
local ay,q,m,n=O.drawTriangleF,O.drawRectF,O.setColor,O.drawText
P=P+1
if P<=1 then
if a[21]and not H then
d=a[25][1]u,l=d[1],d[2]C,S=L-u/2,80-l/2
for p=0,u-1 do
T=C+p
for I=0,l-1 do
o=d[5+I+p*l]if o~=0 then
f=a[20][o]m(f[1],f[2],f[3])q(T,S+I,1,1)end
end
end
end
for c=1,#h do
d=a[17][abs(h[c][2][1])][1]d=a[23][d]u,l,ab=d[1],d[2],d[3]*.7
ai=ab*ag
C,S=L-(d[4]+160)*.7,x-(d[5]+148)*.7*ag
for p=0,u-1 do
T=C+p*ab
for I=0,l-1 do
o=d[7+I+p*l]if o~=0 then
f=a[20][o]m(f[1],f[2],f[3])q(T,S+I*ai,ab,ai)end
end
end
end
if H then
m(w,z>0 and 0 or w,0,z+v)q(0,0,X,x)m(50,50,50)q(0,x,X,32)m(25,25,25)q(L-16,x,32,32)d=a[23][a[19][3][1]+t]u,l=d[1],d[2]C=L-u/2
for c=0,u-1 do
for E=0,l-1 do
o=d[7+E+c*l]if o~=0 then
f=a[20][o]m(f[1],f[2],f[3])q(C+c,x+1+E,1,1)end
end
end
for c=5,7 do
_=a[19][c]m(_[1],_[2],_[3])q(229,95+c*7,6,7)end
m(w,w,w)n(100,131,Q(s))n(100,137,Q(ap))n(1,143,"DIF:")n(1,149,"LOD:")n(26,149,Q(Z))end
n(1,131,"ROM:")n(26,131,K)n(1,137,"TPS:")end
end
