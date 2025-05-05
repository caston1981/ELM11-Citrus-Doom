-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 3514 (3881 with comment) chars
aC=""

z=255
v=180
ak=nil
ai=input
am=table.remove
ag=string.sub
j=math
w=j.max
aj=j.min
abs=j.abs
Q=j.floor
sqrt=j.sqrt
f=ai.getNumber
F=ai.getBool
au=output.setNumber
pi=j.pi
X=false
al=true
function ar(b,h)return b[1]*h[2]-b[2]*h[1]end
function sub(b,h)return{(b[1]-h[1]),(b[2]-h[2])}end
function as(b)return((b+v)%360)-v end
function cos(b)return j.cos(b/v*pi)end
function tan(b)return j.tan(b/v*pi)end
function aB(b)return j.atan(b)*v/pi end
function az(b)return j.atan(b[2],b[1])*v/pi end
function ap(b,h,an)return aj(w(h,b),an)end
function av(b)return Q(b+.5)end
function ax(b,h)return sqrt(((b[1]-h[1])^2)+((b[2]-h[2])^2))end
function at(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
a={}N=1
M=3
K=X
P=1
Y=288
R=Y//2
B=128
ay=B//2
ad=1.2
ah={1,1}V=1
u=1
M=3
W=400
t=100
A=0
x=0
H={}i={}P=0
s=1
O=0
C=al
function onTick()O=0
for G=1,3 do
if F(9)and(not K)or not a[21]then
T=property.getText(N..aC)if T~=aC then
c=1
e=aC
_=ag(T,c,c)while _~=aCor e~=aCdo
if _==","or _==aCthen
e=e+0
if s==1 then
ae=e
if a[e]==ak then
a[e]={}end
s=2
elseif s==2 then
ao=e
D=0
s=3
elseif s==3 then
Z=e
s=4
else
if D==0 then
D=ao
Z=Z-1
ab={}a[ae][#a[ae]+1]=ab
end
ab[#ab+1]=e
D=D-1
if w(D,Z)==0 then
s=1
end
end
e=aC
else
e=e.._
end
c=c+1
_=ag(T,c,c)end
N=N+1
else
K=al
end
end
end
if K then
C=C or F(2)if t>0 and not C then
y={}H[#H+1]=y
J=5
_=f(J)while _~=0 do
k={}y[#y+1]=k
for c=0,8 do
k[c+1]=f(J+c)end
J=J+9
_=f(J)end
end
if F(1)then
P=P+1
if C then
for c=1,10 do
a[c]=a[c+10*M]end
M=M+1
C=X
end
if t>0 then
if aa~=f(1)then
i={}_={}_[1]=a[29][f(1)]_[2]=a[16][_[1][3]]aw=_[2][1]_[3]=0
i[1]=_
end
aa=f(1)if F(3)then
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
am(i,c)end
end
end
if F(2)then
A=50
end
x=w(x-4,0)x=ap(x+(t-f(3))*3,0,z)A=w(A-1.5,0)t=f(3)aq=f(4)if f(2)>0 then
_=a[2][f(2)]if _ then
if _[4]>3004 then
W=w(W+3*(_[4]-3006),1)end
end
end
for c=1,#H do
y=H[c]for G=1,#y do
k=y[G]_=k[1]if _>(2^15)then
_=a[8][_-(2^15)]_[1]=k[2]_[2]=k[3]elseif _<0 then
if-_<=#a[1]then
if a[1][-_]~=ak then
k=a[1][-_][6]if a[16][k][5]>0 then
A=w(A,15)end
else
a[1][-_]={}end
while-_>#a[1]do
a[1][#a[1]+1]=X
end
am(a[1],-_)end
else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for n=1,8 do
_[a[19][1][n]]=k[n+1]end
_[15]=0
end
end
end
H={}if P%16==1 then
V=V%256+1
u=(4-aj(t//20,4))*8
if ah[aa]then
u=u+a[13][1][V]%3
else
ah[aa]=1
u=u+6
end
if t<=0 then
u=41
end
end
end
end
end
function onDraw()L=screen
local aA,q,m,p=L.drawTriangleF,L.drawRectF,L.setColor,L.drawText
O=O+1
if O<=1 then
if a[21]and not K then
d=a[25][1]r,l=d[1],d[2]E,ac=R-r/2,80-l/2
for n=0,r-1 do
S=E+n
for I=0,l-1 do
o=d[5+I+n*l]if o~=0 then
g=a[20][o]m(g[1],g[2],g[3])q(S,ac+I,1,1)end
end
end
end
for c=1,#i do
d=a[17][abs(i[c][2][1])][1]d=a[23][d]r,l,U=d[1],d[2],d[3]*.7
af=U*ad
E,ac=R-(d[4]+160)*.7,B-(d[5]+148)*.7*ad
for n=0,r-1 do
S=E+n*U
for I=0,l-1 do
o=d[7+I+n*l]if o~=0 then
g=a[20][o]m(g[1],g[2],g[3])q(S,ac+I*af,U,af)end
end
end
end
if K then
m(z,x>0 and 0 or z,0,x+A)q(0,0,Y,B)m(50,50,50)q(0,B,Y,32)m(25,25,25)q(R-16,B,32,32)d=a[23][a[19][3][1]+u]r,l=d[1],d[2]E=R-r/2
for c=0,r-1 do
for G=0,l-1 do
o=d[7+G+c*l]if o~=0 then
g=a[20][o]m(g[1],g[2],g[3])q(E+c,B+1+G,1,1)end
end
end
for c=5,7 do
_=a[19][c]m(_[1],_[2],_[3])q(229,95+c*7,6,7)end
m(z,z,z)p(100,131,Q(t))p(100,137,Q(aq))p(1,143,"DIF:")p(1,149,"LOD:")p(26,149,Q(W))end
p(1,131,"ROM:")p(26,131,N)p(1,137,"TPS:")end
end
