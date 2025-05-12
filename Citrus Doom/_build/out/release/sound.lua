-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>

aI=""

x=255
B=180
ak=false
aq=input
ao=table.remove
i=math
y=i.max
ad=i.min
abs=i.abs
Q=i.floor
sqrt=i.sqrt
e=aq.getNumber
N=aq.getBool
aB=output.setNumber
pi=i.pi
W=ak
aa=true
ab=string
function aE(b,h)return b[1]*h[2]-b[2]*h[1]end
function sub(b,h)return{(b[1]-h[1]),(b[2]-h[2])}end
function ax(b)return((b+B)%360)-B end
function cos(b)return i.cos(b/B*pi)end
function tan(b)return i.tan(b/B*pi)end
function az(b)return i.atan(b)*B/pi end
function aw(b)return i.atan(b[2],b[1])*B/pi end
function at(b,h,as)return ad(y(h,b),as)end
function aA(b)return Q(b+.5)end
function ay(b,h)return sqrt(((b[1]-h[1])^2)+((b[2]-h[2])^2))end
function aG(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
a={}O=1
K=3
E=W
S=1
Y=288
R=Y//2
z=128
aC=z//2
aj=1.2
al={1,1}af=1
u=1
K=3
ac=400
r=100
w=0
v=0
ap=3002
H={}j={}S=0
q=1
T=0
I=0
M=aa
function onTick()T=0
for C=1,3 do
if N(9)and(not E)or not a[21]then
V=property.getText(O..aI)if V~=aI then
c=1
g=aI
_=ab.sub(V,c,c)while _~=aIdo
am=ab.byte(_)if am>64 or _==aIthen
g=(g..(am-65))+0
if q==1then
ai=g
if a[g]==aH then
a[g]={}end
q=2
elseif q==2then
au=g
F=0
q=3
elseif q==3then
ag=g
q=4
else
if F==0then
F=au
ag=ag-1
Z={}a[ai][#a[ai]+1]=Z
end
Z[#Z+1]=g
F=F-1
if y(F,ag)==0then
q=1
end
end
g=aI
else
g=g.._
end
c=c+1
_=ab.sub(V,c,c)end
O=O+1
else
E=aa
end
end
end
if E then
if r>0 and not M then
A={}H[#H+1]=A
G=5
_=e(G)while _~=0 do
k={}A[#A+1]=k
for c=0,8 do
k[c+1]=e(G+c)end
G=G+9
_=e(G)end
end
if N(1)then
S=S+1
if e(9)>0 then
M=aa
K=e(9)end
if M then
for c=1,10 do
a[c]=a[c+10*K]end
K=K+1
M=W
end
if r>0 then
if D~=e(1)and e(1)>0then
j={}_={}_[1]=a[29][e(1)]_[2]=a[16][_[1][3]]aF=_[2][1]_[3]=0
j[1]=_
end
D=e(1)X=N(3)if X and D==5 then
if I<=0 then
I=7
else
X=ak
end
end
I=I-1
if X then
_=j[1]_[2]=a[16][_[1][4]]_[3]=-1
end
end
for c=#j,1,-1 do
_=j[c]if _[3]==0 then
if _[2][3]==4 then
if D==5 and I<5 then
ar=1
else
ar=0
end
j[#j+1]={_[1],a[16][_[1][5]+ar],2}end
end
_[3]=_[3]+1
if _[3]>=_[2][2]then
if _[2][4]>2 then
_[2]=a[16][_[2][4]]_[3]=0
else
ao(j,c)end
end
end
if N(2)then
w=50
end
v=y(v-4,0)v=at(v+(r-e(3))*3,0,x)w=y(w-1.5,0)r=e(3)av=e(4)if e(2)>0 then
_=a[2][e(2)]if _ then
if _[4]>3004 and _[4]<3008 then
ac=y(ac+3*(_[4]-3006),1)elseif _[4]>3000 then
ap=_[4]end
end
end
for c=1,#H do
A=H[c]for C=1,#A do
k=A[C]_=k[1]if _>(2^15)then
_=a[8][_-(2^15)]_[1]=k[2]_[2]=k[3]elseif _<0 then
if-_<=#a[1]then
if a[1][-_]~=nil then
k=a[1][-_][6]if a[16][k][5]>0 then
w=y(w,15)end
else
a[1][-_]={}end
while-_>#a[1]do
a[1][#a[1]+1]=W
end
ao(a[1],-_)end
else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for p=1,8 do
_[a[19][1][p]]=k[p+1]end
_[15]=0
end
end
end
H={}if S%16==1 then
af=af%256+1
u=(4-ad(r//20,4))*8
if al[D]then
u=u+a[13][1][af]%3
else
al[D]=1
u=u+6
end
if r<=0 then
u=41
end
end
end
end
end
function onDraw()P=screen
local aD,s,o,l=P.drawTriangleF,P.drawRectF,P.setColor,P.drawText
T=T+1
if T<=1 then
if a[21]and not E then
d=a[25][1]t,m=d[1],d[2]L,ae=R-t/2,80-m/2
for p=0,t-1 do
ah=L+p
for J=0,m-1 do
n=d[5+J+p*m]if n~=0 then
f=a[20][n]o(f[1],f[2],f[3])s(ah,ae+J,1,1)end
end
end
end
for c=1,#j do
d=a[17][abs(j[c][2][1])][1]d=a[23][d]t,m,U=d[1],d[2],d[3]*.7
an=U*aj
L,ae=R-(d[4]+160)*.7,z-(d[5]+148)*.7*aj
for p=0,t-1 do
ah=L+p*U
for J=0,m-1 do
n=d[7+J+p*m]if n~=0 then
f=a[20][n]o(f[1],f[2],f[3])s(ah,ae+J*an,U,an)end
end
end
end
if E then
o(x,v>0 and 0 or x,0,v+w)s(0,0,Y,z)o(50,50,50)s(0,z,Y,32)o(25,25,25)s(R-16,z,32,32)d=a[23][a[19][3][1]+u]t,m=d[1],d[2]L=R-t/2
for c=0,t-1 do
for C=0,m-1 do
n=d[7+C+c*m]if n~=0 then
f=a[20][n]o(f[1],f[2],f[3])s(L+c,z+1+C,1,1)end
end
end
for c=5,7 do
_=a[19][c]o(_[1],_[2],_[3])s(229,95+c*7,6,7)end
o(x,x,x)l(100,131,Q(r))l(100,137,Q(av))l(1,143,"DIF:")l(1,149,"LOD:")l(26,149,Q(ac))l(26,143,ad(ap-3000,3))end
l(1,131,"ROM:")l(26,131,O)l(1,137,"TPS:")end
end
