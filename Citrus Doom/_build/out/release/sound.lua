aO=""

q=255
w=180
ar=false
ak=input
au=table.remove
i=math
B=i.max
N=i.min
abs=i.abs
R=i.floor
sqrt=i.sqrt
e=ak.getNumber
V=ak.getBool
aE=output.setNumber
pi=i.pi
aa=ar
W=true
ag=string
function aG(b,k)return b[1]*k[2]-b[2]*k[1]end
function sub(b,k)return{(b[1]-k[1]),(b[2]-k[2])}end
function aC(b)return((b+w)%360)-w end
function cos(b)return i.cos(b/w*pi)end
function tan(b)return i.tan(b/w*pi)end
function aH(b)return i.atan(b)*w/pi end
function aD(b)return i.atan(b[2],b[1])*w/pi end
function ay(b,k,aB)return N(B(k,b),aB)end
function aF(b)return R(b+.5)end
function aN(b,k)return sqrt(((b[1]-k[1])^2)+((b[2]-k[2])^2))end
function aM(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
a={}M=1
C=3
L=aa
U=1
Q={{0,0},0,0}Y=288
S=Y//2
z=128
aI=z//2
an=1.2
at={1,1}ae=1
r=1
C=3
Z=400
t=100
A=0
x=0
ao=3002
G={}j={}U=0
v=1
T=0
I=0
P=W
function aq(c,b,_)if c<32768then
_=a[7][c]return aq(_[_[3]*(b[2]-_[2])-_[4]*(b[1]-_[1])>0 and 8 or 7],b)else
c=a[5][a[6][c-32768][2]]return a[8][a[3][a[2][c[4]][c[5]+6]][6]]end
end
function onTick()T=0
for E=1,3 do
if V(9)and(not L)or not a[21]then
X=property.getText(M..aO)if X~=aO then
c=1
f=aO
_=ag.sub(X,c,c)while _~=aOdo
al=ag.byte(_)if al>64 or _==aOthen
f=(f..(al-65))+0
if v==1then
ap=f
if a[f]==aJ then
a[f]={}end
v=2
elseif v==2then
aA=f
H=0
v=3
elseif v==3then
aj=f
v=4
else
if H==0then
H=aA
aj=aj-1
ad={}a[ap][#a[ap]+1]=ad
end
ad[#ad+1]=f
H=H-1
if B(H,aj)==0then
v=1
end
end
f=aO
else
f=f.._
end
c=c+1
_=ag.sub(X,c,c)end
M=M+1
else
L=W
end
end
end
if L then
if t>0 and not P then
y={}G[#G+1]=y
F=5
_=e(F)while _~=0 do
o={}y[#y+1]=o
for c=0,8 do
o[c+1]=e(F+c)end
F=F+9
_=e(F)end
end
if V(1)then
U=U+1
if P then
for c=1,10 do
a[c]=a[c+10*C]end
C=C+1
P=aa
for c=1,#a[1]do
_=a[1][c]if _[4]==1 then
aw=c
end
end
end
if e(9)>0 then
P=W
C=e(9)end
if t>0 then
if K~=e(1)and e(1)>0then
j={}_={}_[1]=a[29][e(1)]_[2]=a[16][_[1][3]]aL=_[2][1]_[3]=0
j[1]=_
end
K=e(1)ab=V(3)if ab and K==5 then
if I<=0 then
I=7
else
ab=ar
end
end
I=I-1
if ab then
_=j[1]_[2]=a[16][_[1][4]]_[3]=-1
end
end
for c=#j,1,-1 do
_=j[c]if _[3]==0 then
if _[2][3]==4 then
if K==5 and I<5 then
am=1
else
am=0
end
j[#j+1]={_[1],a[16][_[1][5]+am],2}end
end
_[3]=_[3]+1
if _[3]>=_[2][2]then
if _[2][4]>2 then
_[2]=a[16][_[2][4]]_[3]=0
else
au(j,c)end
end
end
if V(2)then
A=50
end
x=B(x-4,0)x=ay(x+(t-e(3))*3,0,q)A=B(A-1.5,0)t=e(3)az=e(4)if e(2)>0 then
_=a[2][e(2)]if _ then
if _[4]>3004 and _[4]<3008 then
Z=B(Z+3*(_[4]-3006),1)elseif _[4]>3000 then
ao=_[4]end
end
end
for c=1,#G do
y=G[c]for E=1,#y do
o=y[E]_=o[1]if _>(2^15)then
_=a[8][_-(2^15)]for h=1,6 do
_[h]=o[h+1]end
elseif _<0 then
if-_<=#a[1]then
if a[1][-_]~=nil then
o=a[1][-_][6]if a[16][o][5]>0 then
A=B(A,15)end
else
a[1][-_]={}end
while-_>#a[1]do
a[1][#a[1]+1]=aa
end
au(a[1],-_)end
else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for h=1,8 do
_[a[19][1][h]]=o[h+1]end
_[15]=0
end
end
end
G={}_=a[1][aw]Q[1]={_[1],_[2]}Q[3]=_[3]av=aq(#a[7],Q[1])Q[2]=av[1]+41
ax=N(av[5]/q,1)^1.3
if U%16==1 then
ae=ae%256+1
r=(4-N(t//20,4))*8
if at[K]then
r=r+a[13][1][ae]%3
else
at[K]=1
r=r+6
end
if t<=0 then
r=41
end
end
end
end
end
function onDraw()O=screen
local aK,s,n,m=O.drawTriangleF,O.drawRectF,O.setColor,O.drawText
T=T+1
if T<=1 then
if a[21]and not L then
d=a[25][1]u,l=d[1],d[2]D,ac=S-u/2,80-l/2
for h=0,u-1 do
af=D+h
for J=0,l-1 do
p=d[5+J+h*l]if p~=0 then
g=a[20][p]n(g[1],g[2],g[3])s(af,ac+J,1,1)end
end
end
end
for c=1,#j do
d=j[c][2][1]ah=d>0 and ax or 1
d=a[17][abs(d)][1]d=a[23][d]u,l,ai=d[1],d[2],d[3]*.7
as=ai*an
D,ac=S-(d[4]+160)*.7,z-(d[5]+148)*.7*an
for h=0,u-1 do
af=D+h*ai
for J=0,l-1 do
p=d[7+J+h*l]if p~=0 then
g=a[20][p]n(g[1]*ah,g[2]*ah,g[3]*ah)s(af,ac+J*as,ai,as)end
end
end
end
if L then
n(q,x>0 and 0 or q,0,x+A)s(0,0,Y,z)n(50,50,50)s(0,z,Y,32)n(25,25,25)s(S-16,z,32,32)d=a[23][a[19][3][1]+r]u,l=d[1],d[2]D=S-u/2
for c=0,u-1 do
for E=0,l-1 do
p=d[7+E+c*l]if p~=0 then
g=a[20][p]n(g[1],g[2],g[3])s(D+c,z+1+E,1,1)end
end
end
for c=5,7 do
_=a[19][c]n(_[1],_[2],_[3])s(229,95+c*7,6,7)end
n(q,q,q)m(100,131,R(t))m(100,137,R(az))m(1,143,"DIF:")m(1,149,"LOD:")m(26,149,R(Z))m(26,143,N(ao-3000,3))end
m(1,131,"ROM:")m(26,131,M)m(1,137,"TPS:")end
end
