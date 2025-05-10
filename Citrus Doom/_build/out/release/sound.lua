-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>

aE=""

v=255
y=180
ah=input
al=table.remove
h=math
z=h.max
af=h.min
abs=h.abs
O=h.floor
sqrt=h.sqrt
e=ah.getNumber
P=ah.getBool
aC=output.setNumber
pi=h.pi
ae=false
Z=true
X=string
function as(b,j)return b[1]*j[2]-b[2]*j[1]end
function sub(b,j)return{(b[1]-j[1]),(b[2]-j[2])}end
function aB(b)return((b+y)%360)-y end
function cos(b)return h.cos(b/y*pi)end
function tan(b)return h.tan(b/y*pi)end
function az(b)return h.atan(b)*y/pi end
function av(b)return h.atan(b[2],b[1])*y/pi end
function ar(b,j,ap)return af(z(j,b),ap)end
function aw(b)return O(b+.5)end
function au(b,j)return sqrt(((b[1]-j[1])^2)+((b[2]-j[2])^2))end
function at(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
a={}N=1
I=3
E=ae
M=1
V=288
L=V//2
B=128
aD=B//2
aj=1.2
ak={1,1}ac=1
s=1
I=3
T=400
q=100
x=0
A=0
ag=3002
H={}i={}M=0
u=1
Q=0
K=Z
function onTick()Q=0
for C=1,3 do
if P(9)and(not E)or not a[21]then
ad=property.getText(N..aE)if ad~=aE then
c=1
g=aE
_=X.sub(ad,c,c)while _~=aEdo
am=X.byte(_)if am>64 or _==aEthen
g=(g..(am-65))+0
if u==1then
ai=g
if a[g]==aA then
a[g]={}end
u=2
elseif u==2then
ao=g
F=0
u=3
elseif u==3then
U=g
u=4
else
if F==0then
F=ao
U=U-1
Y={}a[ai][#a[ai]+1]=Y
end
Y[#Y+1]=g
F=F-1
if z(F,U)==0then
u=1
end
end
g=aE
else
g=g.._
end
c=c+1
_=X.sub(ad,c,c)end
N=N+1
else
E=Z
end
end
end
if E then
if q>0 and not K then
w={}H[#H+1]=w
D=5
_=e(D)while _~=0 do
m={}w[#w+1]=m
for c=0,8 do
m[c+1]=e(D+c)end
D=D+9
_=e(D)end
end
if P(1)then
M=M+1
if e(9)>0 then
K=Z
I=e(9)end
if K then
for c=1,10 do
a[c]=a[c+10*I]end
I=I+1
K=ae
end
if q>0 then
if S~=e(1)and e(1)>0then
i={}_={}_[1]=a[29][e(1)]_[2]=a[16][_[1][3]]ay=_[2][1]_[3]=0
i[1]=_
end
S=e(1)if P(3)then
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
if P(2)then
x=50
end
A=z(A-4,0)A=ar(A+(q-e(3))*3,0,v)x=z(x-1.5,0)q=e(3)aq=e(4)if e(2)>0 then
_=a[2][e(2)]if _ then
if _[4]>3004 and _[4]<3008 then
T=z(T+3*(_[4]-3006),1)elseif _[4]>3000 then
ag=_[4]end
end
end
for c=1,#H do
w=H[c]for C=1,#w do
m=w[C]_=m[1]if _>(2^15)then
_=a[8][_-(2^15)]_[1]=m[2]_[2]=m[3]elseif _<0 then
if-_<=#a[1]then
if a[1][-_]~=nil then
m=a[1][-_][6]if a[16][m][5]>0 then
x=z(x,15)end
else
a[1][-_]={}end
while-_>#a[1]do
a[1][#a[1]+1]=ae
end
al(a[1],-_)end
else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for n=1,8 do
_[a[19][1][n]]=m[n+1]end
_[15]=0
end
end
end
H={}if M%16==1 then
ac=ac%256+1
s=(4-af(q//20,4))*8
if ak[S]then
s=s+a[13][1][ac]%3
else
ak[S]=1
s=s+6
end
if q<=0 then
s=41
end
end
end
end
end
function onDraw()R=screen
local ax,t,o,k=R.drawTriangleF,R.drawRectF,R.setColor,R.drawText
Q=Q+1
if Q<=1 then
if a[21]and not E then
d=a[25][1]r,l=d[1],d[2]J,ab=L-r/2,80-l/2
for n=0,r-1 do
aa=J+n
for G=0,l-1 do
p=d[5+G+n*l]if p~=0 then
f=a[20][p]o(f[1],f[2],f[3])t(aa,ab+G,1,1)end
end
end
end
for c=1,#i do
d=a[17][abs(i[c][2][1])][1]d=a[23][d]r,l,W=d[1],d[2],d[3]*.7
an=W*aj
J,ab=L-(d[4]+160)*.7,B-(d[5]+148)*.7*aj
for n=0,r-1 do
aa=J+n*W
for G=0,l-1 do
p=d[7+G+n*l]if p~=0 then
f=a[20][p]o(f[1],f[2],f[3])t(aa,ab+G*an,W,an)end
end
end
end
if E then
o(v,A>0 and 0 or v,0,A+x)t(0,0,V,B)o(50,50,50)t(0,B,V,32)o(25,25,25)t(L-16,B,32,32)d=a[23][a[19][3][1]+s]r,l=d[1],d[2]J=L-r/2
for c=0,r-1 do
for C=0,l-1 do
p=d[7+C+c*l]if p~=0 then
f=a[20][p]o(f[1],f[2],f[3])t(J+c,B+1+C,1,1)end
end
end
for c=5,7 do
_=a[19][c]o(_[1],_[2],_[3])t(229,95+c*7,6,7)end
o(v,v,v)k(100,131,O(q))k(100,137,O(aq))k(1,143,"DIF:")k(1,149,"LOD:")k(26,149,O(T))k(26,143,af(ag-3000,3))end
k(1,131,"ROM:")k(26,131,N)k(1,137,"TPS:")end
end
