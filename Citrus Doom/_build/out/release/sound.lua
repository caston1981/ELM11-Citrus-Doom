-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 3552 (3919 with comment) chars
aD=""

z=255
x=180
al=input
ak=table.remove
j=math
v=j.max
af=j.min
abs=j.abs
N=j.floor
sqrt=j.sqrt
e=al.getNumber
M=al.getBool
au=output.setNumber
pi=j.pi
W=false
T=true
ad=string
function aA(b,h)return b[1]*h[2]-b[2]*h[1]end
function sub(b,h)return{(b[1]-h[1]),(b[2]-h[2])}end
function ax(b)return((b+x)%360)-x end
function cos(b)return j.cos(b/x*pi)end
function tan(b)return j.tan(b/x*pi)end
function as(b)return j.atan(b)*x/pi end
function aC(b)return j.atan(b[2],b[1])*x/pi end
function ao(b,h,ap)return af(v(h,b),ap)end
function av(b)return N(b+.5)end
function ay(b,h)return sqrt(((b[1]-h[1])^2)+((b[2]-h[2])^2))end
function at(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
a={}P=1
D=3
G=W
L=1
Z=288
R=Z//2
w=128
az=w//2
ai=1.2
ah={1,1}U=1
q=1
D=3
V=400
t=100
y=0
B=0
I={}i={}L=0
s=1
Q=0
K=T
function onTick()Q=0
for F=1,3 do
if M(9)and(not G)or not a[21]then
Y=property.getText(P..aD)if Y~=aD then
c=1
g=aD
_=ad.sub(Y,c,c)while _~=aDdo
aj=ad.byte(_)if aj>64 or _==aDthen
g=(g..(aj-65))+0
if s==1then
ag=g
if a[g]==aB then
a[g]={}end
s=2
elseif s==2then
an=g
J=0
s=3
elseif s==3then
ae=g
s=4
else
if J==0then
J=an
ae=ae-1
aa={}a[ag][#a[ag]+1]=aa
end
aa[#aa+1]=g
J=J-1
if v(J,ae)==0then
s=1
end
end
g=aD
else
g=g.._
end
c=c+1
_=ad.sub(Y,c,c)end
P=P+1
else
G=T
end
end
end
if G then
if t>0 and not K then
A={}I[#I+1]=A
H=5
_=e(H)while _~=0 do
l={}A[#A+1]=l
for c=0,8 do
l[c+1]=e(H+c)end
H=H+9
_=e(H)end
end
if M(1)then
L=L+1
if e(9)>0 then
K=T
D=e(9)end
if K then
for c=1,10 do
a[c]=a[c+10*D]end
D=D+1
K=W
end
if t>0 then
if X~=e(1)and e(1)>0then
i={}_={}_[1]=a[29][e(1)]_[2]=a[16][_[1][3]]ar=_[2][1]_[3]=0
i[1]=_
end
X=e(1)if M(3)then
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
ak(i,c)end
end
end
if M(2)then
y=50
end
B=v(B-4,0)B=ao(B+(t-e(3))*3,0,z)y=v(y-1.5,0)t=e(3)aq=e(4)if e(2)>0 then
_=a[2][e(2)]if _ then
if _[4]>3004 then
V=v(V+3*(_[4]-3006),1)end
end
end
for c=1,#I do
A=I[c]for F=1,#A do
l=A[F]_=l[1]if _>(2^15)then
_=a[8][_-(2^15)]_[1]=l[2]_[2]=l[3]elseif _<0 then
if-_<=#a[1]then
if a[1][-_]~=nil then
l=a[1][-_][6]if a[16][l][5]>0 then
y=v(y,15)end
else
a[1][-_]={}end
while-_>#a[1]do
a[1][#a[1]+1]=W
end
ak(a[1],-_)end
else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for n=1,8 do
_[a[19][1][n]]=l[n+1]end
_[15]=0
end
end
end
I={}if L%16==1 then
U=U%256+1
q=(4-af(t//20,4))*8
if ah[X]then
q=q+a[13][1][U]%3
else
ah[X]=1
q=q+6
end
if t<=0 then
q=41
end
end
end
end
end
function onDraw()O=screen
local aw,u,p,o=O.drawTriangleF,O.drawRectF,O.setColor,O.drawText
Q=Q+1
if Q<=1 then
if a[21]and not G then
d=a[25][1]r,k=d[1],d[2]C,S=R-r/2,80-k/2
for n=0,r-1 do
ab=C+n
for E=0,k-1 do
m=d[5+E+n*k]if m~=0 then
f=a[20][m]p(f[1],f[2],f[3])u(ab,S+E,1,1)end
end
end
end
for c=1,#i do
d=a[17][abs(i[c][2][1])][1]d=a[23][d]r,k,ac=d[1],d[2],d[3]*.7
am=ac*ai
C,S=R-(d[4]+160)*.7,w-(d[5]+148)*.7*ai
for n=0,r-1 do
ab=C+n*ac
for E=0,k-1 do
m=d[7+E+n*k]if m~=0 then
f=a[20][m]p(f[1],f[2],f[3])u(ab,S+E*am,ac,am)end
end
end
end
if G then
p(z,B>0 and 0 or z,0,B+y)u(0,0,Z,w)p(50,50,50)u(0,w,Z,32)p(25,25,25)u(R-16,w,32,32)d=a[23][a[19][3][1]+q]r,k=d[1],d[2]C=R-r/2
for c=0,r-1 do
for F=0,k-1 do
m=d[7+F+c*k]if m~=0 then
f=a[20][m]p(f[1],f[2],f[3])u(C+c,w+1+F,1,1)end
end
end
for c=5,7 do
_=a[19][c]p(_[1],_[2],_[3])u(229,95+c*7,6,7)end
p(z,z,z)o(100,131,N(t))o(100,137,N(aq))o(1,143,"DIF:")o(1,149,"LOD:")o(26,149,N(V))end
o(1,131,"ROM:")o(26,131,P)o(1,137,"TPS:")end
end
