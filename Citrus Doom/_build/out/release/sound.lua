-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>

aE=""

y=255
z=180
ag=input
an=table.remove
i=math
v=i.max
X=i.min
abs=i.abs
Q=i.floor
sqrt=i.sqrt
e=ag.getNumber
N=ag.getBool
au=output.setNumber
pi=i.pi
T=false
V=true
ae=string
function aw(b,j)return b[1]*j[2]-b[2]*j[1]end
function sub(b,j)return{(b[1]-j[1]),(b[2]-j[2])}end
function ax(b)return((b+z)%360)-z end
function cos(b)return i.cos(b/z*pi)end
function tan(b)return i.tan(b/z*pi)end
function as(b)return i.atan(b)*z/pi end
function at(b)return i.atan(b[2],b[1])*z/pi end
function ar(b,j,ao)return X(v(j,b),ao)end
function az(b)return Q(b+.5)end
function aA(b,j)return sqrt(((b[1]-j[1])^2)+((b[2]-j[2])^2))end
function aB(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
a={}M=1
H=3
C=T
O=1
U=288
L=U//2
w=128
aC=w//2
ak=1.2
ah={1,1}ab=1
r=1
H=3
aa=400
u=100
x=0
A=0
aj=3002
F={}h={}O=0
t=1
R=0
P=V
function onTick()R=0
for D=1,3 do
if N(9)and(not C)or not a[21]then
ad=property.getText(M..aE)if ad~=aE then
c=1
g=aE
_=ae.sub(ad,c,c)while _~=aEdo
am=ae.byte(_)if am>64 or _==aEthen
g=(g..(am-65))+0
if t==1then
ai=g
if a[g]==av then
a[g]={}end
t=2
elseif t==2then
ap=g
J=0
t=3
elseif t==3then
Y=g
t=4
else
if J==0then
J=ap
Y=Y-1
W={}a[ai][#a[ai]+1]=W
end
W[#W+1]=g
J=J-1
if v(J,Y)==0then
t=1
end
end
g=aE
else
g=g.._
end
c=c+1
_=ae.sub(ad,c,c)end
M=M+1
else
C=V
end
end
end
if C then
if u>0 and not P then
B={}F[#F+1]=B
I=5
_=e(I)while _~=0 do
m={}B[#B+1]=m
for c=0,8 do
m[c+1]=e(I+c)end
I=I+9
_=e(I)end
end
if N(1)then
O=O+1
if e(9)>0 then
P=V
H=e(9)end
if P then
for c=1,10 do
a[c]=a[c+10*H]end
H=H+1
P=T
end
if u>0 then
if S~=e(1)and e(1)>0then
h={}_={}_[1]=a[29][e(1)]_[2]=a[16][_[1][3]]ay=_[2][1]_[3]=0
h[1]=_
end
S=e(1)if N(3)then
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
an(h,c)end
end
end
if N(2)then
x=50
end
A=v(A-4,0)A=ar(A+(u-e(3))*3,0,y)x=v(x-1.5,0)u=e(3)aq=e(4)if e(2)>0 then
_=a[2][e(2)]if _ then
if _[4]>3004 and _[4]<3008 then
aa=v(aa+3*(_[4]-3006),1)elseif _[4]>3000 then
aj=_[4]end
end
end
for c=1,#F do
B=F[c]for D=1,#B do
m=B[D]_=m[1]if _>(2^15)then
_=a[8][_-(2^15)]_[1]=m[2]_[2]=m[3]elseif _<0 then
if-_<=#a[1]then
if a[1][-_]~=nil then
m=a[1][-_][6]if a[16][m][5]>0 then
x=v(x,15)end
else
a[1][-_]={}end
while-_>#a[1]do
a[1][#a[1]+1]=T
end
an(a[1],-_)end
else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for o=1,8 do
_[a[19][1][o]]=m[o+1]end
_[15]=0
end
end
end
F={}if O%16==1 then
ab=ab%256+1
r=(4-X(u//20,4))*8
if ah[S]then
r=r+a[13][1][ab]%3
else
ah[S]=1
r=r+6
end
if u<=0 then
r=41
end
end
end
end
end
function onDraw()K=screen
local aD,s,n,k=K.drawTriangleF,K.drawRectF,K.setColor,K.drawText
R=R+1
if R<=1 then
if a[21]and not C then
d=a[25][1]q,l=d[1],d[2]G,Z=L-q/2,80-l/2
for o=0,q-1 do
ac=G+o
for E=0,l-1 do
p=d[5+E+o*l]if p~=0 then
f=a[20][p]n(f[1],f[2],f[3])s(ac,Z+E,1,1)end
end
end
end
for c=1,#h do
d=a[17][abs(h[c][2][1])][1]d=a[23][d]q,l,af=d[1],d[2],d[3]*.7
al=af*ak
G,Z=L-(d[4]+160)*.7,w-(d[5]+148)*.7*ak
for o=0,q-1 do
ac=G+o*af
for E=0,l-1 do
p=d[7+E+o*l]if p~=0 then
f=a[20][p]n(f[1],f[2],f[3])s(ac,Z+E*al,af,al)end
end
end
end
if C then
n(y,A>0 and 0 or y,0,A+x)s(0,0,U,w)n(50,50,50)s(0,w,U,32)n(25,25,25)s(L-16,w,32,32)d=a[23][a[19][3][1]+r]q,l=d[1],d[2]G=L-q/2
for c=0,q-1 do
for D=0,l-1 do
p=d[7+D+c*l]if p~=0 then
f=a[20][p]n(f[1],f[2],f[3])s(G+c,w+1+D,1,1)end
end
end
for c=5,7 do
_=a[19][c]n(_[1],_[2],_[3])s(229,95+c*7,6,7)end
n(y,y,y)k(100,131,Q(u))k(100,137,Q(aq))k(1,143,"DIF:")k(1,149,"LOD:")k(26,149,Q(aa))k(26,143,X(aj-3000,3))end
k(1,131,"ROM:")k(26,131,M)k(1,137,"TPS:")end
end
