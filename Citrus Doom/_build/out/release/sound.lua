bf=""

g=255
A=180
at=true
aM=false
av=input
aC=table.remove
k=math
D=k.max
ab=k.min
abs=k.abs
L=k.floor
sqrt=k.sqrt
f=av.getNumber
ac=av.getBool
bc=output.setNumber
pi=k.pi
as=aM
ay=at
ar=string
function Z(b,e)return{(b[1]+e[1]),(b[2]+e[2])}end
function aO(b,e)return b[1]*e[2]-b[2]*e[1]end
function sub(b,e)return{(b[1]-e[1]),(b[2]-e[2])}end
function aG(b,e)return{b[1]*e,b[2]*e}end
function bd(b)return((b+A)%360)-A end
function sin(b)return k.sin(b/A*pi)end
function cos(b)return k.cos(b/A*pi)end
function tan(b)return k.tan(b/A*pi)end
function aZ(b)return k.atan(b)*A/pi end
function ba(b)return k.atan(b[2],b[1])*A/pi end
function aS(b,e,aT)return ab(D(e,b),aT)end
function b_(b)return L(b+.5)end
function aY(b,e)return sqrt(((b[1]-e[1])^2)+((b[2]-e[2])^2))end
function aI(b)return{b[1],-b[2]}end
function be(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
a={}W=1
U=3
M=as
t={{0,0},0,0}ad=288
r=ad//2
B=128
af=B//2
aB=1.2
aw={1,1}al=1
R=1
U=3
ag=400
n=100
au=100
E=0
F=0
aE=3002
P={}aK=32768
m={}aH=.05
Q=0
aa=0
x=1
Y=0
O=0
I=ay
function ax(c,b)if c<aK then
v=a[7][c]return ax(v[0<aO({v[3],v[4]},sub(b,v))and 8 or 7],b)else
return c-aK
end
end
function aA(b)v=a[5][a[6][b][2]]return a[8][a[3][a[2][v[4]][v[5]+6]][6]]end
function onTick()Y=0
for w=1,3 do
if ac(9)and(not M)or not a[21]then
ao=property.getText(W)c=1
l=bf
_=ar.sub(ao,c,c)while _~=bfdo
aN=ar.byte(_)if aN>64then
l=(l..aN-65)+0
if x==1then
aD=l
a[l]=a[l]or{}elseif x==2then
aU=l
H=0
elseif x==3then
am=l
else
if H==0then
H=aU
am=am-1
ah={}a[aD][#a[aD]+1]=ah
end
ah[#ah+1]=l
H=H-1
x=D(H,am)>0 and x-1 or 0
end
x=x+1
l=bf
else
l=l.._
end
c=c+1
_=ar.sub(ao,c,c)end
W=W+1
M=ao==bf
end
end
if M then
if n>0 and not I then
G={}P[#P+1]=G
S=5
_=f(S)while _~=0 do
s={}G[#G+1]=s
for c=0,8 do
s[c+1]=f(S+c)end
S=S+9
_=f(S)end
end
if ac(1)then
if I then
for c=1,10 do
a[c]=a[c+10*U]end
U=U+1
I=as
for c=1,#a[1]do
_=a[1][c]end
for c=1,#a[8]do
a[8][c][8]={}end
for c=1,#a[6]do
_=aA(c)_[8][#_[8]+1]=c
end
end
if f(9)>0 then
I=ay
U=f(9)end
if n>0 then
if K~=f(1)and f(1)>0then
m={}_={}_[1]=a[29][f(1)]_[2]=a[16][_[1][3]]bb=_[2][1]_[3]=0
m[1]=_
end
K=f(1)aq=ac(3)if aq and K==5 then
if O<=0 then
O=7
else
aq=aM
end
end
O=O-1
if aq then
_=m[1]_[2]=a[16][_[1][4]]_[3]=-1
end
end
for c=#m,1,-1 do
_=m[c]if _[3]==0 then
if _[2][3]==4 then
if K==5 and O<5 then
aJ=1
else
aJ=0
end
m[#m+1]={_[1],a[16][_[1][5]+aJ],2}end
end
_[3]=_[3]+1
if _[3]>=_[2][2]then
if _[2][4]>2 then
_[2]=a[16][_[2][4]]_[3]=0
else
aC(m,c)end
end
end
if I then
E=50
end
F=D(F-4,0)F=aS(F+(n-f(3))*3,0,g)E=D(E-1.5,0)n=f(3)aQ=f(4)if f(2)>0 then
_=a[2][f(2)]if _ then
if _[4]>3004 and _[4]<3008 then
ag=D(ag+3*(_[4]-3006),1)elseif _[4]>3000 then
aE=_[4]end
end
end
for c=1,#P do
G=P[c]for w=1,#G do
s=G[w]_=s[1]if _>(2^15)then
_=a[8][_-(2^15)]for j=1,6 do
_[j]=s[j+1]end
elseif _<0 then
if-_<=#a[1]then
if a[1][-_]~=nil then
s=a[1][-_][6]if a[16][s][5]>0 then
E=D(E,15)end
else
a[1][-_]={}end
while-_>#a[1]do
a[1][#a[1]+1]=as
end
aC(a[1],-_)end
else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for j=1,8 do
_[a[19][1][j]]=s[j+1]end
_[15]=0
end
end
end
P={}_=a[1][1]t[1]={_[1],_[2]}t[3]=_[3]aV=ax(#a[7],t[1])V=aA(aV)t[2]=V[1]+41
aR=ab(V[5]/g,1)^1.3
for c=1,#V[8]do
_=a[6][V[8][c]]for w=_[2],_[1]+_[2]-1 do
aW=a[5][w]aP=a[2][aW[4]]aP[8]=at
end
end
aF=ac(2)Q=Q-1
aa=aa-1
if not aw[K]then
aw[K]=1
aa=70
end
ai=(4-ab(n//20,4))*8
if n<=0 then
R=41
elseif aa>0 then
R=ai+6
elseif n<au then
Q=35
R=ai+7
elseif Q<=0 then
Q=16
al=al%256+1
R=ai+a[13][1][al]%3
end
au=n
end
end
end
function onDraw()N=screen
local aX,q,h,p,aL=N.drawTriangleF,N.drawRectF,N.setColor,N.drawText,N.drawLine
Y=Y+1
if Y<=1 then
if a[21]and not M then
d=a[25][1]y,o=d[1],d[2]J,ak=r-y/2,80-o/2
for j=0,y-1 do
ap=J+j
for T=0,o-1 do
u=d[5+T+j*o]if u~=0 then
i=a[20][u]h(i[1],i[2],i[3])q(ap,ak+T,1,1)end
end
end
end
if not aF then
for c=1,#m do
d=m[c][2][1]an=d>0 and aR or 1
d=a[17][abs(d)][1]d=a[23][d]y,o,aj=d[1],d[2],d[3]*.7
az=aj*aB
J,ak=r-(d[4]+160)*.7,B-(d[5]+148)*.7*aB
for j=0,y-1 do
ap=J+j*aj
for T=0,o-1 do
u=d[7+T+j*o]if u~=0 then
i=a[20][u]h(i[1]*an,i[2]*an,i[3]*an)q(ap,ak+T*az,aj,az)end
end
end
end
end
if M then
if aF then
h(0,0,0)q(0,0,ad,B)for c=1,#a[2]do
_=a[2][c]if _[8]then
z=Z(aI(aG(sub(a[4][_[1]],t[1]),aH)),{r,af})C=Z(aI(aG(sub(a[4][_[2]],t[1]),aH)),{r,af})if _[3]&4>0 then
h(50,50,50)else
h(g,g,g)end
aL(z[1],z[2],C[1],C[2])end
end
h(g,g,g)_=a[19][10]for c=1,#_,4 do
X=sin(t[3]-90)ae=cos(t[3]-90)z={_[c]*ae+_[c+1]*X,_[c+1]*ae-_[c]*X}C={_[c+2]*ae+_[c+3]*X,_[c+3]*ae-_[c+2]*X}z=Z(z,{r,af})C=Z(C,{r,af})aL(z[1],z[2],C[1],C[2])end
end
h(g,F>0 and 0 or g,0,F+E)q(0,0,ad,B)h(50,50,50)q(0,B,ad,32)h(25,25,25)q(r-16,B,32,32)d=a[23][a[19][3][1]+R]y,o=d[1],d[2]J=r-y/2
for c=0,y-1 do
for w=0,o-1 do
u=d[7+w+c*o]if u~=0 then
i=a[20][u]h(i[1],i[2],i[3])q(J+c,B+1+w,1,1)end
end
end
for c=5,7 do
_=a[19][c]h(_[1],_[2],_[3])q(229,95+c*7,6,7)end
h(g,g,g)p(100,131,L(n))p(100,137,L(aQ))p(1,143,"DIF:")p(1,149,"LOD:")p(26,149,L(ag))p(26,143,L(ab(aE-3000,3)))end
p(1,131,"ROM:")p(26,131,W)p(1,137,"TPS:")end
end
