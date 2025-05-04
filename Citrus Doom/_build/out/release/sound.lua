-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 3514 (3881 with comment) chars
aC=""

y=255
v=180
ad=nil
ag=input
aj=table.remove
al=string.sub
i=math
x=i.max
ai=i.min
abs=i.abs
P=i.floor
sqrt=i.sqrt
g=ag.getNumber
D=ag.getBool
aB=output.setNumber
pi=i.pi
U=false
af=true
function as(b,j)return b[1]*j[2]-b[2]*j[1]end
function sub(b,j)return{(b[1]-j[1]),(b[2]-j[2])}end
function ay(b)return((b+v)%360)-v end
function cos(b)return i.cos(b/v*pi)end
function tan(b)return i.tan(b/v*pi)end
function at(b)return i.atan(b)*v/pi end
function ax(b)return i.atan(b[2],b[1])*v/pi end
function ap(b,j,an)return ai(x(j,b),an)end
function ar(b)return P(b+.5)end
function az(b,j)return sqrt(((b[1]-j[1])^2)+((b[2]-j[2])^2))end
function aw(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
a={}O=1
R=3
C=U
L=1
Z=288
M=Z//2
B=128
av=B//2
ah=1.2
am={1,1}Y=1
r=1
R=3
ac=400
s=100
w=0
A=0
K={}h={}L=0
t=1
Q=0
I=af
function onTick()Q=0
for J=1,3 do
if D(9)and(not C)or not a[21]then
V=property.getText(O..aC)if V~=aC then
c=1
e=aC
_=al(V,c,c)while _~=aCor e~=aCdo
if _==","or _==aCthen
e=e+0
if t==1 then
ak=e
if a[e]==ad then
a[e]={}end
t=2
elseif t==2 then
ao=e
F=0
t=3
elseif t==3 then
aa=e
t=4
else
if F==0 then
F=ao
aa=aa-1
S={}a[ak][#a[ak]+1]=S
end
S[#S+1]=e
F=F-1
if x(F,aa)==0 then
t=1
end
end
e=aC
else
e=e.._
end
c=c+1
_=al(V,c,c)end
O=O+1
else
C=af
end
end
end
if C then
I=I or D(2)if s>0 and not I then
z={}K[#K+1]=z
G=5
_=g(G)while _~=0 do
k={}z[#z+1]=k
for c=0,8 do
k[c+1]=g(G+c)end
G=G+9
_=g(G)end
end
if D(1)then
L=L+1
if I then
for c=1,10 do
a[c]=a[c+10*R]end
R=R+1
I=U
end
if s>0 then
if X~=g(1)then
h={}_={}_[1]=a[29][g(1)]_[2]=a[16][_[1][3]]au=_[2][1]_[3]=0
h[1]=_
end
X=g(1)if D(3)then
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
if D(2)then
w=50
end
A=x(A-4,0)A=ap(A+(s-g(3))*3,0,y)w=x(w-1.5,0)s=g(3)aq=g(4)if g(2)>0 then
_=a[2][g(2)]if _ then
if _[4]>3004 then
ac=x(ac+3*(_[4]-3006),1)end
end
end
for c=1,#K do
z=K[c]for J=1,#z do
k=z[J]_=k[1]if _>(2^15)then
_=a[8][_-(2^15)]_[1]=k[2]_[2]=k[3]elseif _<0 then
if-_<=#a[1]then
if a[1][-_]~=ad then
k=a[1][-_][6]if a[16][k][5]>0 then
w=x(w,15)end
else
a[1][-_]={}end
while-_>#a[1]do
a[1][#a[1]+1]=U
end
aj(a[1],-_)end
else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for o=1,8 do
_[a[19][1][o]]=k[o+1]end
_[15]=0
end
end
end
K={}if L%16==1 then
Y=Y%256+1
r=(4-ai(s//20,4))*8
if am[X]then
r=r+a[13][1][Y]%3
else
am[X]=1
r=r+6
end
if s<=0 then
r=41
end
end
end
end
end
function onDraw()N=screen
local aA,u,n,m=N.drawTriangleF,N.drawRectF,N.setColor,N.drawText
Q=Q+1
if Q<=1 then
if a[21]and not C then
d=a[25][1]q,l=d[1],d[2]E,W=M-q/2,80-l/2
for o=0,q-1 do
ab=E+o
for H=0,l-1 do
p=d[5+H+o*l]if p~=0 then
f=a[20][p]n(f[1],f[2],f[3])u(ab,W+H,1,1)end
end
end
end
for c=1,#h do
d=a[17][abs(h[c][2][1])][1]d=a[23][d]q,l,T=d[1],d[2],d[3]*.7
ae=T*ah
E,W=M-(d[4]+160)*.7,B-(d[5]+148)*.7*ah
for o=0,q-1 do
ab=E+o*T
for H=0,l-1 do
p=d[7+H+o*l]if p~=0 then
f=a[20][p]n(f[1],f[2],f[3])u(ab,W+H*ae,T,ae)end
end
end
end
if C then
n(y,A>0 and 0 or y,0,A+w)u(0,0,Z,B)n(50,50,50)u(0,B,Z,32)n(25,25,25)u(M-16,B,32,32)d=a[23][a[19][3][1]+r]q,l=d[1],d[2]E=M-q/2
for c=0,q-1 do
for J=0,l-1 do
p=d[7+J+c*l]if p~=0 then
f=a[20][p]n(f[1],f[2],f[3])u(E+c,B+1+J,1,1)end
end
end
for c=5,7 do
_=a[19][c]n(_[1],_[2],_[3])u(229,95+c*7,6,7)end
n(y,y,y)m(100,131,P(s))m(100,137,P(aq))m(1,143,"DIF:")m(1,149,"LOD:")m(26,149,P(ac))end
m(1,131,"ROM:")m(26,131,O)m(1,137,"TPS:")end
end
