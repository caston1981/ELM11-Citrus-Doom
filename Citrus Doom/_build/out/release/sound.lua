-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 3552 (3919 with comment) chars
aD=""

A=255
B=180
aj=input
am=table.remove
h=math
z=h.max
ak=h.min
abs=h.abs
L=h.floor
sqrt=h.sqrt
e=aj.getNumber
Q=aj.getBool
aC=output.setNumber
pi=h.pi
V=false
ad=true
W=string
function aA(b,j)return b[1]*j[2]-b[2]*j[1]end
function sub(b,j)return{(b[1]-j[1]),(b[2]-j[2])}end
function ay(b)return((b+B)%360)-B end
function cos(b)return h.cos(b/B*pi)end
function tan(b)return h.tan(b/B*pi)end
function aB(b)return h.atan(b)*B/pi end
function as(b)return h.atan(b[2],b[1])*B/pi end
function ap(b,j,ao)return ak(z(j,b),ao)end
function aw(b)return L(b+.5)end
function av(b,j)return sqrt(((b[1]-j[1])^2)+((b[2]-j[2])^2))end
function at(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
a={}R=1
C=3
G=V
K=1
T=288
O=T//2
y=128
ax=y//2
ai=1.2
af={1,1}ae=1
s=1
C=3
Z=400
q=100
x=0
w=0
H={}i={}K=0
r=1
P=0
M=ad
function onTick()P=0
for E=1,3 do
if Q(9)and(not G)or not a[21]then
Y=property.getText(R..aD)if Y~=aD then
c=1
f=aD
_=W.sub(Y,c,c)while _~=aDdo
ag=W.byte(_)if ag>64 or _==aDthen
f=(f..(ag-65))+0
if r==1then
al=f
if a[f]==az then
a[f]={}end
r=2
elseif r==2then
an=f
F=0
r=3
elseif r==3then
ab=f
r=4
else
if F==0then
F=an
ab=ab-1
ac={}a[al][#a[al]+1]=ac
end
ac[#ac+1]=f
F=F-1
if z(F,ab)==0then
r=1
end
end
f=aD
else
f=f.._
end
c=c+1
_=W.sub(Y,c,c)end
R=R+1
else
G=ad
end
end
end
if G then
if q>0 and not M then
v={}H[#H+1]=v
D=5
_=e(D)while _~=0 do
k={}v[#v+1]=k
for c=0,8 do
k[c+1]=e(D+c)end
D=D+9
_=e(D)end
end
if Q(1)then
K=K+1
if e(9)>0 then
M=ad
C=e(9)end
if M then
for c=1,10 do
a[c]=a[c+10*C]end
C=C+1
M=V
end
if q>0 then
if S~=e(1)and e(1)>0then
i={}_={}_[1]=a[29][e(1)]_[2]=a[16][_[1][3]]ar=_[2][1]_[3]=0
i[1]=_
end
S=e(1)if Q(3)then
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
if Q(2)then
x=50
end
w=z(w-4,0)w=ap(w+(q-e(3))*3,0,A)x=z(x-1.5,0)q=e(3)aq=e(4)if e(2)>0 then
_=a[2][e(2)]if _ then
if _[4]>3004 then
Z=z(Z+3*(_[4]-3006),1)end
end
end
for c=1,#H do
v=H[c]for E=1,#v do
k=v[E]_=k[1]if _>(2^15)then
_=a[8][_-(2^15)]_[1]=k[2]_[2]=k[3]elseif _<0 then
if-_<=#a[1]then
if a[1][-_]~=nil then
k=a[1][-_][6]if a[16][k][5]>0 then
x=z(x,15)end
else
a[1][-_]={}end
while-_>#a[1]do
a[1][#a[1]+1]=V
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
H={}if K%16==1 then
ae=ae%256+1
s=(4-ak(q//20,4))*8
if af[S]then
s=s+a[13][1][ae]%3
else
af[S]=1
s=s+6
end
if q<=0 then
s=41
end
end
end
end
end
function onDraw()N=screen
local au,t,m,p=N.drawTriangleF,N.drawRectF,N.setColor,N.drawText
P=P+1
if P<=1 then
if a[21]and not G then
d=a[25][1]u,l=d[1],d[2]I,U=O-u/2,80-l/2
for n=0,u-1 do
X=I+n
for J=0,l-1 do
o=d[5+J+n*l]if o~=0 then
g=a[20][o]m(g[1],g[2],g[3])t(X,U+J,1,1)end
end
end
end
for c=1,#i do
d=a[17][abs(i[c][2][1])][1]d=a[23][d]u,l,aa=d[1],d[2],d[3]*.7
ah=aa*ai
I,U=O-(d[4]+160)*.7,y-(d[5]+148)*.7*ai
for n=0,u-1 do
X=I+n*aa
for J=0,l-1 do
o=d[7+J+n*l]if o~=0 then
g=a[20][o]m(g[1],g[2],g[3])t(X,U+J*ah,aa,ah)end
end
end
end
if G then
m(A,w>0 and 0 or A,0,w+x)t(0,0,T,y)m(50,50,50)t(0,y,T,32)m(25,25,25)t(O-16,y,32,32)d=a[23][a[19][3][1]+s]u,l=d[1],d[2]I=O-u/2
for c=0,u-1 do
for E=0,l-1 do
o=d[7+E+c*l]if o~=0 then
g=a[20][o]m(g[1],g[2],g[3])t(I+c,y+1+E,1,1)end
end
end
for c=5,7 do
_=a[19][c]m(_[1],_[2],_[3])t(229,95+c*7,6,7)end
m(A,A,A)p(100,131,L(q))p(100,137,L(aq))p(1,143,"DIF:")p(1,149,"LOD:")p(26,149,L(Z))end
p(1,131,"ROM:")p(26,131,R)p(1,137,"TPS:")end
end
