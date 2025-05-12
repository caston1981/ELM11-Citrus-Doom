-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>

aI=""

w=255
B=180
aj=false
an=input
am=table.remove
i=math
z=i.max
ah=i.min
abs=i.abs
Q=i.floor
sqrt=i.sqrt
e=an.getNumber
O=an.getBool
az=output.setNumber
pi=i.pi
af=aj
U=true
aa=string
function aG(b,h)return b[1]*h[2]-b[2]*h[1]end
function sub(b,h)return{(b[1]-h[1]),(b[2]-h[2])}end
function ax(b)return((b+B)%360)-B end
function cos(b)return i.cos(b/B*pi)end
function tan(b)return i.tan(b/B*pi)end
function aB(b)return i.atan(b)*B/pi end
function aH(b)return i.atan(b[2],b[1])*B/pi end
function au(b,h,at)return ah(z(h,b),at)end
function ay(b)return Q(b+.5)end
function aw(b,h)return sqrt(((b[1]-h[1])^2)+((b[2]-h[2])^2))end
function aA(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
a={}T=1
K=3
L=af
R=1
W=288
M=W//2
A=128
aF=A//2
ai=1.2
ao={1,1}ag=1
t=1
K=3
ab=400
s=100
v=0
y=0
ar=3002
F={}j={}R=0
u=1
N=0
J=0
P=U
function onTick()N=0
for E=1,3 do
if O(9)and(not L)or not a[21]then
ac=property.getText(T..aI)if ac~=aI then
c=1
g=aI
_=aa.sub(ac,c,c)while _~=aIdo
al=aa.byte(_)if al>64 or _==aIthen
g=(g..(al-65))+0
if u==1then
ap=g
if a[g]==aC then
a[g]={}end
u=2
elseif u==2then
as=g
I=0
u=3
elseif u==3then
Y=g
u=4
else
if I==0then
I=as
Y=Y-1
ad={}a[ap][#a[ap]+1]=ad
end
ad[#ad+1]=g
I=I-1
if z(I,Y)==0then
u=1
end
end
g=aI
else
g=g.._
end
c=c+1
_=aa.sub(ac,c,c)end
T=T+1
else
L=U
end
end
end
if L then
if s>0 and not P then
x={}F[#F+1]=x
C=5
_=e(C)while _~=0 do
l={}x[#x+1]=l
for c=0,8 do
l[c+1]=e(C+c)end
C=C+9
_=e(C)end
end
if O(1)then
R=R+1
if e(9)>0 then
P=U
K=e(9)end
if P then
for c=1,10 do
a[c]=a[c+10*K]end
K=K+1
P=af
end
if s>0 then
if D~=e(1)and e(1)>0then
j={}_={}_[1]=a[29][e(1)]_[2]=a[16][_[1][3]]aE=_[2][1]_[3]=0
j[1]=_
end
D=e(1)X=O(3)if X and D==5 then
if J<=0 then
J=7
else
X=aj
end
end
J=J-1
if X then
_=j[1]_[2]=a[16][_[1][4]]_[3]=-1
end
end
for c=#j,1,-1 do
_=j[c]if _[3]==0 then
if _[2][3]==4 then
if D==5 and J<5 then
ak=1
else
ak=0
end
j[#j+1]={_[1],a[16][_[1][5]+ak],2}end
end
_[3]=_[3]+1
if _[3]>=_[2][2]then
if _[2][4]>2 then
_[2]=a[16][_[2][4]]_[3]=0
else
am(j,c)end
end
end
if O(2)then
v=50
end
y=z(y-4,0)y=au(y+(s-e(3))*3,0,w)v=z(v-1.5,0)s=e(3)av=e(4)if e(2)>0 then
_=a[2][e(2)]if _ then
if _[4]>3004 and _[4]<3008 then
ab=z(ab+3*(_[4]-3006),1)elseif _[4]>3000 then
ar=_[4]end
end
end
for c=1,#F do
x=F[c]for E=1,#x do
l=x[E]_=l[1]if _>(2^15)then
_=a[8][_-(2^15)]_[1]=l[2]_[2]=l[3]elseif _<0 then
if-_<=#a[1]then
if a[1][-_]~=nil then
l=a[1][-_][6]if a[16][l][5]>0 then
v=z(v,15)end
else
a[1][-_]={}end
while-_>#a[1]do
a[1][#a[1]+1]=af
end
am(a[1],-_)end
else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for o=1,8 do
_[a[19][1][o]]=l[o+1]end
_[15]=0
end
end
end
F={}if R%16==1 then
ag=ag%256+1
t=(4-ah(s//20,4))*8
if ao[D]then
t=t+a[13][1][ag]%3
else
ao[D]=1
t=t+6
end
if s<=0 then
t=41
end
end
end
end
end
function onDraw()S=screen
local aD,q,n,k=S.drawTriangleF,S.drawRectF,S.setColor,S.drawText
N=N+1
if N<=1 then
if a[21]and not L then
d=a[25][1]r,m=d[1],d[2]H,Z=M-r/2,80-m/2
for o=0,r-1 do
V=H+o
for G=0,m-1 do
p=d[5+G+o*m]if p~=0 then
f=a[20][p]n(f[1],f[2],f[3])q(V,Z+G,1,1)end
end
end
end
for c=1,#j do
d=a[17][abs(j[c][2][1])][1]d=a[23][d]r,m,ae=d[1],d[2],d[3]*.7
aq=ae*ai
H,Z=M-(d[4]+160)*.7,A-(d[5]+148)*.7*ai
for o=0,r-1 do
V=H+o*ae
for G=0,m-1 do
p=d[7+G+o*m]if p~=0 then
f=a[20][p]n(f[1],f[2],f[3])q(V,Z+G*aq,ae,aq)end
end
end
end
if L then
n(w,y>0 and 0 or w,0,y+v)q(0,0,W,A)n(50,50,50)q(0,A,W,32)n(25,25,25)q(M-16,A,32,32)d=a[23][a[19][3][1]+t]r,m=d[1],d[2]H=M-r/2
for c=0,r-1 do
for E=0,m-1 do
p=d[7+E+c*m]if p~=0 then
f=a[20][p]n(f[1],f[2],f[3])q(H+c,A+1+E,1,1)end
end
end
for c=5,7 do
_=a[19][c]n(_[1],_[2],_[3])q(229,95+c*7,6,7)end
n(w,w,w)k(100,131,Q(s))k(100,137,Q(av))k(1,143,"DIF:")k(1,149,"LOD:")k(26,149,Q(ab))k(26,143,ah(ar-3000,3))end
k(1,131,"ROM:")k(26,131,T)k(1,137,"TPS:")end
end
