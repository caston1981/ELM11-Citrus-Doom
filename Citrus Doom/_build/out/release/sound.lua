aO=""

u=255
w=180
ao=false
at=input
an=table.remove
j=math
A=j.max
R=j.min
abs=j.abs
M=j.floor
sqrt=j.sqrt
e=at.getNumber
T=at.getBool
aL=output.setNumber
pi=j.pi
ae=ao
ab=true
Z=string
function aG(b,k)return b[1]*k[2]-b[2]*k[1]end
function sub(b,k)return{(b[1]-k[1]),(b[2]-k[2])}end
function aE(b)return((b+w)%360)-w end
function cos(b)return j.cos(b/w*pi)end
function tan(b)return j.tan(b/w*pi)end
function aN(b)return j.atan(b)*w/pi end
function aK(b)return j.atan(b[2],b[1])*w/pi end
function ay(b,k,aA)return R(A(k,b),aA)end
function aJ(b)return M(b+.5)end
function aI(b,k)return sqrt(((b[1]-k[1])^2)+((b[2]-k[2])^2))end
function aM(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
a={}N=1
D=3
J=ae
O=1
U={{0,0},0,0}Y=288
S=Y//2
x=128
aD=x//2
au=1.2
ar={1,1}af=1
t=1
D=3
ad=400
s=100
y=0
z=0
ak=3002
L={}i={}O=0
q=1
V=0
F=0
P=ab
function aq(c,b,_)if c<32768then
_=a[7][c]return aq(_[_[3]*(b[2]-_[2])-_[4]*(b[1]-_[1])>0 and 8 or 7],b)else
c=a[5][a[6][c-32768][2]]return a[8][a[3][a[2][c[4]][c[5]+6]][6]]end
end
function onTick()V=0
for I=1,3 do
if T(9)and(not J)or not a[21]then
aa=property.getText(N..aO)if aa~=aO then
c=1
f=aO
_=Z.sub(aa,c,c)while _~=aOdo
as=Z.byte(_)if as>64 or _==aOthen
f=(f..(as-65))+0
if q==1then
al=f
if a[f]==aF then
a[f]={}end
q=2
elseif q==2then
ax=f
G=0
q=3
elseif q==3then
ah=f
q=4
else
if G==0then
G=ax
ah=ah-1
ai={}a[al][#a[al]+1]=ai
end
ai[#ai+1]=f
G=G-1
if A(G,ah)==0then
q=1
end
end
f=aO
else
f=f.._
end
c=c+1
_=Z.sub(aa,c,c)end
N=N+1
else
J=ab
end
end
end
if J then
if s>0 and not P then
B={}L[#L+1]=B
K=5
_=e(K)while _~=0 do
o={}B[#B+1]=o
for c=0,8 do
o[c+1]=e(K+c)end
K=K+9
_=e(K)end
end
if T(1)then
O=O+1
if P then
for c=1,10 do
a[c]=a[c+10*D]end
D=D+1
P=ae
for c=1,#a[1]do
_=a[1][c]if _[4]==1 then
az=c
end
end
end
if e(9)>0 then
P=ab
D=e(9)end
if s>0 then
if H~=e(1)and e(1)>0then
i={}_={}_[1]=a[29][e(1)]_[2]=a[16][_[1][3]]aH=_[2][1]_[3]=0
i[1]=_
end
H=e(1)ac=T(3)if ac and H==5 then
if F<=0 then
F=7
else
ac=ao
end
end
F=F-1
if ac then
_=i[1]_[2]=a[16][_[1][4]]_[3]=-1
end
end
for c=#i,1,-1 do
_=i[c]if _[3]==0 then
if _[2][3]==4 then
if H==5 and F<5 then
ap=1
else
ap=0
end
i[#i+1]={_[1],a[16][_[1][5]+ap],2}end
end
_[3]=_[3]+1
if _[3]>=_[2][2]then
if _[2][4]>2 then
_[2]=a[16][_[2][4]]_[3]=0
else
an(i,c)end
end
end
if T(2)then
y=50
end
z=A(z-4,0)z=ay(z+(s-e(3))*3,0,u)y=A(y-1.5,0)s=e(3)aw=e(4)if e(2)>0 then
_=a[2][e(2)]if _ then
if _[4]>3004 and _[4]<3008 then
ad=A(ad+3*(_[4]-3006),1)elseif _[4]>3000 then
ak=_[4]end
end
end
for c=1,#L do
B=L[c]for I=1,#B do
o=B[I]_=o[1]if _>(2^15)then
_=a[8][_-(2^15)]for g=1,6 do
_[g]=o[g+1]end
elseif _<0 then
if-_<=#a[1]then
if a[1][-_]~=nil then
o=a[1][-_][6]if a[16][o][5]>0 then
y=A(y,15)end
else
a[1][-_]={}end
while-_>#a[1]do
a[1][#a[1]+1]=ae
end
an(a[1],-_)end
else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for g=1,8 do
_[a[19][1][g]]=o[g+1]end
_[15]=0
end
end
end
L={}_=a[1][az]U[1]={_[1],_[2]}U[3]=_[3]am=aq(#a[7],U[1])U[2]=am[1]+41
aB=R(am[5]/u,1)^1.3
if O%16==1 then
af=af%256+1
t=(4-R(s//20,4))*8
if ar[H]then
t=t+a[13][1][af]%3
else
ar[H]=1
t=t+6
end
if s<=0 then
t=41
end
end
end
end
end
function onDraw()Q=screen
local aC,r,p,l=Q.drawTriangleF,Q.drawRectF,Q.setColor,Q.drawText
V=V+1
if V<=1 then
if a[21]and not J then
d=a[25][1]v,m=d[1],d[2]E,W=S-v/2,80-m/2
for g=0,v-1 do
ag=E+g
for C=0,m-1 do
n=d[5+C+g*m]if n~=0 then
h=a[20][n]p(h[1],h[2],h[3])r(ag,W+C,1,1)end
end
end
end
for c=1,#i do
d=i[c][2][1]aj=d>0 and aB or 1
d=a[17][abs(d)][1]d=a[23][d]v,m,X=d[1],d[2],d[3]*.7
av=X*au
E,W=S-(d[4]+160)*.7,x-(d[5]+148)*.7*au
for g=0,v-1 do
ag=E+g*X
for C=0,m-1 do
n=d[7+C+g*m]if n~=0 then
h=a[20][n]p(h[1]*aj,h[2]*aj,h[3]*aj)r(ag,W+C*av,X,av)end
end
end
end
if J then
p(u,z>0 and 0 or u,0,z+y)r(0,0,Y,x)p(50,50,50)r(0,x,Y,32)p(25,25,25)r(S-16,x,32,32)d=a[23][a[19][3][1]+t]v,m=d[1],d[2]E=S-v/2
for c=0,v-1 do
for I=0,m-1 do
n=d[7+I+c*m]if n~=0 then
h=a[20][n]p(h[1],h[2],h[3])r(E+c,x+1+I,1,1)end
end
end
for c=5,7 do
_=a[19][c]p(_[1],_[2],_[3])r(229,95+c*7,6,7)end
p(u,u,u)l(100,131,M(s))l(100,137,M(aw))l(1,143,"DIF:")l(1,149,"LOD:")l(26,149,M(ad))l(26,143,R(ak-3000,3))end
l(1,131,"ROM:")l(26,131,N)l(1,137,"TPS:")end
end
