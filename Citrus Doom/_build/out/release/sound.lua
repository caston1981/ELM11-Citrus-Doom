bd=""

g=255
C=180
aC=true
aG=false
az=input
aD=table.remove
l=math
E=l.max
ab=l.min
abs=l.abs
ac=l.floor
sqrt=l.sqrt
f=az.getNumber
ad=az.getBool
aY=output.setNumber
pi=l.pi
ag=aG
ao=aC
aj=string
function aa(b,e)return{(b[1]+e[1]),(b[2]+e[2])}end
function aN(b,e)return b[1]*e[2]-b[2]*e[1]end
function sub(b,e)return{(b[1]-e[1]),(b[2]-e[2])}end
function aJ(b,e)return{b[1]*e,b[2]*e}end
function aU(b)return((b+C)%360)-C end
function sin(b)return l.sin(b/C*pi)end
function cos(b)return l.cos(b/C*pi)end
function tan(b)return l.tan(b/C*pi)end
function aW(b)return l.atan(b)*C/pi end
function aZ(b)return l.atan(b[2],b[1])*C/pi end
function aQ(b,e,aM)return ab(E(e,b),aM)end
function b_(b)return ac(b+.5)end
function aV(b,e)return sqrt(((b[1]-e[1])^2)+((b[2]-e[2])^2))end
function aI(b)return{b[1],-b[2]}end
function bc(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
a={}Y=1
K=3
I=ag
T=1
q={{0,0},0,0}ae=288
p=ae//2
B=128
U=B//2
aA=1.2
at={1,1}am=1
w=1
K=3
ak=400
v=100
F=0
H=0
aB=3002
O={}au=32768
m={}aH=.05
T=0
u=1
W=0
P=0
L=ao
function av(c,b)if c<au then
y=a[7][c]return av(y[0<aN({y[3],y[4]},sub(b,y))and 8 or 7],b)else
return c-au
end
end
function aw(b)y=a[5][a[6][b][2]]return a[8][a[3][a[2][y[4]][y[5]+6]][6]]end
function onTick()W=0
for x=1,3 do
if ad(9)and(not I)or not a[21]then
an=property.getText(Y..bd)if an~=bd then
c=1
i=bd
_=aj.sub(an,c,c)while _~=bddo
aE=aj.byte(_)if aE>64 or _==bdthen
i=(i..(aE-65))+0
if u==1then
ax=i
if a[i]==aX then
a[i]={}end
u=2
elseif u==2then
aS=i
S=0
u=3
elseif u==3then
al=i
u=4
else
if S==0then
S=aS
al=al-1
ai={}a[ax][#a[ax]+1]=ai
end
ai[#ai+1]=i
S=S-1
if E(S,al)==0then
u=1
end
end
i=bd
else
i=i.._
end
c=c+1
_=aj.sub(an,c,c)end
Y=Y+1
else
I=ao
end
end
end
if I then
if v>0 and not L then
G={}O[#O+1]=G
R=5
_=f(R)while _~=0 do
t={}G[#G+1]=t
for c=0,8 do
t[c+1]=f(R+c)end
R=R+9
_=f(R)end
end
if ad(1)then
T=T+1
if L then
for c=1,10 do
a[c]=a[c+10*K]end
K=K+1
L=ag
for c=1,#a[1]do
_=a[1][c]end
for c=1,#a[8]do
a[8][c][8]={}end
for c=1,#a[6]do
_=aw(c)_[8][#_[8]+1]=c
end
end
if f(9)>0 then
L=ao
K=f(9)end
if v>0 then
if Q~=f(1)and f(1)>0then
m={}_={}_[1]=a[29][f(1)]_[2]=a[16][_[1][3]]bb=_[2][1]_[3]=0
m[1]=_
end
Q=f(1)ar=ad(3)if ar and Q==5 then
if P<=0 then
P=7
else
ar=aG
end
end
P=P-1
if ar then
_=m[1]_[2]=a[16][_[1][4]]_[3]=-1
end
end
for c=#m,1,-1 do
_=m[c]if _[3]==0 then
if _[2][3]==4 then
if Q==5 and P<5 then
as=1
else
as=0
end
m[#m+1]={_[1],a[16][_[1][5]+as],2}end
end
_[3]=_[3]+1
if _[3]>=_[2][2]then
if _[2][4]>2 then
_[2]=a[16][_[2][4]]_[3]=0
else
aD(m,c)end
end
end
if L then
F=50
end
H=E(H-4,0)H=aQ(H+(v-f(3))*3,0,g)F=E(F-1.5,0)v=f(3)aT=f(4)if f(2)>0 then
_=a[2][f(2)]if _ then
if _[4]>3004 and _[4]<3008 then
ak=E(ak+3*(_[4]-3006),1)elseif _[4]>3000 then
aB=_[4]end
end
end
for c=1,#O do
G=O[c]for x=1,#G do
t=G[x]_=t[1]if _>(2^15)then
_=a[8][_-(2^15)]for k=1,6 do
_[k]=t[k+1]end
elseif _<0 then
if-_<=#a[1]then
if a[1][-_]~=nil then
t=a[1][-_][6]if a[16][t][5]>0 then
F=E(F,15)end
else
a[1][-_]={}end
while-_>#a[1]do
a[1][#a[1]+1]=ag
end
aD(a[1],-_)end
else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for k=1,8 do
_[a[19][1][k]]=t[k+1]end
_[15]=0
end
end
end
O={}_=a[1][1]q[1]={_[1],_[2]}q[3]=_[3]aO=av(#a[7],q[1])Z=aw(aO)q[2]=Z[1]+41
aR=ab(Z[5]/g,1)^1.3
for c=1,#Z[8]do
_=a[6][Z[8][c]]for x=_[2],_[1]+_[2]-1 do
aP=a[5][x]aL=a[2][aP[4]]aL[8]=aC
end
end
aK=ad(2)if T%16==1 then
am=am%256+1
w=(4-ab(v//20,4))*8
if at[Q]then
w=w+a[13][1][am]%3
else
at[Q]=1
w=w+6
end
if v<=0 then
w=41
end
end
end
end
end
function onDraw()M=screen
local ba,r,h,o,ay=M.drawTriangleF,M.drawRectF,M.setColor,M.drawText,M.drawLine
W=W+1
if W<=1 then
if a[21]and not I then
d=a[25][1]A,n=d[1],d[2]N,ah=p-A/2,80-n/2
for k=0,A-1 do
ap=N+k
for J=0,n-1 do
s=d[5+J+k*n]if s~=0 then
j=a[20][s]h(j[1],j[2],j[3])r(ap,ah+J,1,1)end
end
end
end
if not aK then
for c=1,#m do
d=m[c][2][1]aq=d>0 and aR or 1
d=a[17][abs(d)][1]d=a[23][d]A,n,af=d[1],d[2],d[3]*.7
aF=af*aA
N,ah=p-(d[4]+160)*.7,B-(d[5]+148)*.7*aA
for k=0,A-1 do
ap=N+k*af
for J=0,n-1 do
s=d[7+J+k*n]if s~=0 then
j=a[20][s]h(j[1]*aq,j[2]*aq,j[3]*aq)r(ap,ah+J*aF,af,aF)end
end
end
end
end
if I then
if aK then
h(0,0,0)r(0,0,ae,B)for c=1,#a[2]do
_=a[2][c]if _[8]then
z=aa(aI(aJ(sub(a[4][_[1]],q[1]),aH)),{p,U})D=aa(aI(aJ(sub(a[4][_[2]],q[1]),aH)),{p,U})if _[3]&4>0 then
h(50,50,50)else
h(g,g,g)end
ay(z[1],z[2],D[1],D[2])end
end
h(g,g,g)_=a[19][10]for c=1,#_,4 do
V=sin(q[3]-90)X=cos(q[3]-90)z={_[c]*X+_[c+1]*V,_[c+1]*X-_[c]*V}D={_[c+2]*X+_[c+3]*V,_[c+3]*X-_[c+2]*V}z=aa(z,{p,U})D=aa(D,{p,U})ay(z[1],z[2],D[1],D[2])end
end
h(g,H>0 and 0 or g,0,H+F)r(0,0,ae,B)h(50,50,50)r(0,B,ae,32)h(25,25,25)r(p-16,B,32,32)d=a[23][a[19][3][1]+w]A,n=d[1],d[2]N=p-A/2
for c=0,A-1 do
for x=0,n-1 do
s=d[7+x+c*n]if s~=0 then
j=a[20][s]h(j[1],j[2],j[3])r(N+c,B+1+x,1,1)end
end
end
for c=5,7 do
_=a[19][c]h(_[1],_[2],_[3])r(229,95+c*7,6,7)end
h(g,g,g)o(100,131,ac(v))o(100,137,ac(aT))o(1,143,"DIF:")o(1,149,"LOD:")o(26,149,ac(ak))o(26,143,ab(aB-3000,3))end
o(1,131,"ROM:")o(26,131,Y)o(1,137,"TPS:")end
end
