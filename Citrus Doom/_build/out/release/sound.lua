-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 3514 (3881 with comment) chars
aC=""

v=255
x=180
ah=nil
ag=input
al=table.remove
ad=string.sub
j=math
B=j.max
am=j.min
abs=j.abs
P=j.floor
sqrt=j.sqrt
f=ag.getNumber
C=ag.getBool
ax=output.setNumber
pi=j.pi
V=false
ae=true
function aw(b,h)return b[1]*h[2]-b[2]*h[1]end
function sub(b,h)return{(b[1]-h[1]),(b[2]-h[2])}end
function az(b)return((b+x)%360)-x end
function cos(b)return j.cos(b/x*pi)end
function tan(b)return j.tan(b/x*pi)end
function as(b)return j.atan(b)*x/pi end
function au(b)return j.atan(b[2],b[1])*x/pi end
function an(b,h,ap)return am(B(h,b),ap)end
function av(b)return P(b+.5)end
function ar(b,h)return sqrt(((b[1]-h[1])^2)+((b[2]-h[2])^2))end
function ay(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
a={}N=1
L=3
E=V
M=1
Y=288
O=Y//2
z=128
at=z//2
ak=1.2
aj={1,1}W=1
t=1
L=3
X=400
s=100
A=0
y=0
J={}i={}M=0
u=1
Q=0
G=ae
function onTick()Q=0
for D=1,3 do
if C(9)and(not E)or not a[21]then
aa=property.getText(N..aC)if aa~=aC then
c=1
e=aC
_=ad(aa,c,c)while _~=aCor e~=aCdo
if _==","or _==aCthen
e=e+0
if u==1 then
af=e
if a[e]==ah then
a[e]={}end
u=2
elseif u==2 then
ao=e
F=0
u=3
elseif u==3 then
ac=e
u=4
else
if F==0 then
F=ao
ac=ac-1
ab={}a[af][#a[af]+1]=ab
end
ab[#ab+1]=e
F=F-1
if B(F,ac)==0 then
u=1
end
end
e=aC
else
e=e.._
end
c=c+1
_=ad(aa,c,c)end
N=N+1
else
E=ae
end
end
end
if E then
G=G or C(2)if s>0 and not G then
w={}J[#J+1]=w
K=5
_=f(K)while _~=0 do
l={}w[#w+1]=l
for c=0,8 do
l[c+1]=f(K+c)end
K=K+9
_=f(K)end
end
if C(1)then
M=M+1
if G then
for c=1,10 do
a[c]=a[c+10*L]end
L=L+1
G=V
end
if s>0 then
if S~=f(1)then
i={}_={}_[1]=a[29][f(1)]_[2]=a[16][_[1][3]]aB=_[2][1]_[3]=0
i[1]=_
end
S=f(1)if C(3)then
_=i[1]_[2]=a[16][_[1][4]]_[3]=0
end
end
for c=#i,1,-1 do
_=i[c]if _[3]==0 then
if _[2][3]==4 then
i[#i+1]={_[1],a[16][_[1][5]],2}end
end
_[3]=_[3]+1
if _[3]>=_[2][2]then
if _[2][4]>2 then
_[2]=a[16][_[2][4]]_[3]=0
else
al(i,c)end
end
end
if C(2)then
A=50
end
y=B(y-4,0)y=an(y+(s-f(3))*3,0,v)A=B(A-1.5,0)s=f(3)aq=f(4)if f(2)>0 then
_=a[2][f(2)]if _ then
if _[4]>3004 then
X=B(X+3*(_[4]-3006),1)end
end
end
for c=1,#J do
w=J[c]for D=1,#w do
l=w[D]_=l[1]if _>(2^15)then
_=a[8][_-(2^15)]_[1]=l[2]_[2]=l[3]elseif _<0 then
if-_<=#a[1]then
if a[1][-_]~=ah then
l=a[1][-_][6]if a[16][l][5]>0 then
A=B(A,15)end
else
a[1][-_]={}end
while-_>#a[1]do
a[1][#a[1]+1]=V
end
al(a[1],-_)end
else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for n=1,8 do
_[a[19][1][n]]=l[n+1]end
_[15]=0
end
end
end
J={}if M%16==1 then
W=W%256+1
t=(4-am(s//20,4))*8
if aj[S]then
t=t+a[13][1][W]%3
else
aj[S]=1
t=t+6
end
if s<=0 then
t=41
end
end
end
end
end
function onDraw()R=screen
local aA,q,o,p=R.drawTriangleF,R.drawRectF,R.setColor,R.drawText
Q=Q+1
if Q<=1 then
if a[21]and not E then
d=a[25][1]r,k=d[1],d[2]I,Z=O-r/2,80-k/2
for n=0,r-1 do
U=I+n
for H=0,k-1 do
m=d[5+H+n*k]if m~=0 then
g=a[20][m]o(g[1],g[2],g[3])q(U,Z+H,1,1)end
end
end
end
for c=1,#i do
d=a[17][abs(i[c][2][1])][1]d=a[23][d]r,k,T=d[1],d[2],d[3]*.7
ai=T*ak
I,Z=O-(d[4]+160)*.7,z-(d[5]+148)*.7*ak
for n=0,r-1 do
U=I+n*T
for H=0,k-1 do
m=d[7+H+n*k]if m~=0 then
g=a[20][m]o(g[1],g[2],g[3])q(U,Z+H*ai,T,ai)end
end
end
end
if E then
o(v,y>0 and 0 or v,0,y+A)q(0,0,Y,z)o(50,50,50)q(0,z,Y,32)o(25,25,25)q(O-16,z,32,32)d=a[23][a[19][3][1]+t]r,k=d[1],d[2]I=O-r/2
for c=0,r-1 do
for D=0,k-1 do
m=d[7+D+c*k]if m~=0 then
g=a[20][m]o(g[1],g[2],g[3])q(I+c,z+1+D,1,1)end
end
end
for c=5,7 do
_=a[19][c]o(_[1],_[2],_[3])q(229,95+c*7,6,7)end
o(v,v,v)p(100,131,P(s))p(100,137,P(aq))p(1,143,"DIF:")p(1,149,"LOD:")p(26,149,P(X))end
p(1,131,"ROM:")p(26,131,N)p(1,137,"TPS:")end
end
