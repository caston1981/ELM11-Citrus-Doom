bf=""

g=255
x=180
aE=true
ay=false
aN=input
aB=table.remove
k=math
G=k.max
Y=k.min
abs=k.abs
M=k.floor
sqrt=k.sqrt
f=aN.getNumber
af=aN.getBool
ba=output.setNumber
pi=k.pi
aj=ay
au=aE
ak=string
function ab(b,e)return{(b[1]+e[1]),(b[2]+e[2])}end
function aT(b,e)return b[1]*e[2]-b[2]*e[1]end
function sub(b,e)return{(b[1]-e[1]),(b[2]-e[2])}end
function av(b,e)return{b[1]*e,b[2]*e}end
function aY(b)return((b+x)%360)-x end
function sin(b)return k.sin(b/x*pi)end
function cos(b)return k.cos(b/x*pi)end
function tan(b)return k.tan(b/x*pi)end
function be(b)return k.atan(b)*x/pi end
function aZ(b)return k.atan(b[2],b[1])*x/pi end
function aR(b,e,aQ)return Y(G(e,b),aQ)end
function bb(b)return M(b+.5)end
function bd(b,e)return sqrt(((b[1]-e[1])^2)+((b[2]-e[2])^2))end
function aK(b)return{b[1],-b[2]}end
function aX(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
a={}W=1
T=3
I=aj
q={{0,0},0,0}ac=288
u=ac//2
v=128
V=v//2
aI=1.2
aL={1,1}ao=1
O=1
T=3
am=400
n=100
aC=100
E=0
F=0
at=3002
H={}aG=32768
m={}aA=.05
L=0
ae=0
z=1
X=0
K=0
R=au
function aF(c,b)if c<aG then
C=a[7][c]return aF(C[0<aT({C[3],C[4]},sub(b,C))and 8 or 7],b)else
return c-aG
end
end
function aH(b)C=a[5][a[6][b][2]]return a[8][a[3][a[2][C[4]][C[5]+6]][6]]end
function onTick()X=0
for B=1,3 do
if af(9)and(not I)or not a[21]then
ap=property.getText(W)c=1
i=bf
_=ak.sub(ap,c,c)while _~=bfdo
az=ak.byte(_)if az>64then
i=(i..az-65)+0
if z==1then
ax=i
a[i]=a[i]or{}elseif z==2then
aW=i
S=0
elseif z==3then
aq=i
else
if S==0then
S=aW
aq=aq-1
al={}a[ax][#a[ax]+1]=al
end
al[#al+1]=i
S=S-1
z=G(S,aq)>0 and z-1 or 0
end
z=z+1
i=bf
else
i=i.._
end
c=c+1
_=ak.sub(ap,c,c)end
W=W+1
I=ap==bf
end
end
if I then
if n>0 and not R then
D={}H[#H+1]=D
U=5
_=f(U)while _~=0 do
r={}D[#D+1]=r
for c=0,8 do
r[c+1]=f(U+c)end
U=U+9
_=f(U)end
end
if af(1)then
if R then
for c=1,10 do
a[c]=a[c+10*T]end
T=T+1
R=aj
for c=1,#a[1]do
_=a[1][c]end
for c=1,#a[8]do
a[8][c][8]={}end
for c=1,#a[6]do
_=aH(c)_[8][#_[8]+1]=c
end
end
if f(9)>0 then
R=au
T=f(9)end
if n>0 then
if J~=f(1)and f(1)>0then
m={}_={}_[1]=a[29][f(1)]_[2]=a[16][_[1][3]]bc=_[2][1]_[3]=0
m[1]=_
end
J=f(1)ai=af(3)if ai and J==5 then
if K<=0 then
K=7
else
ai=ay
end
end
K=K-1
if ai then
_=m[1]_[2]=a[16][_[1][4]]_[3]=-1
end
end
for c=#m,1,-1 do
_=m[c]if _[3]==0 then
if _[2][3]==4 then
if J==5 and K<5 then
aM=1
else
aM=0
end
m[#m+1]={_[1],a[16][_[1][5]+aM],2}end
end
_[3]=_[3]+1
if _[3]>=_[2][2]then
if _[2][4]>2 then
_[2]=a[16][_[2][4]]_[3]=0
else
aB(m,c)end
end
end
if R then
E=50
end
F=G(F-4,0)F=aR(F+(n-f(3))*3,0,g)E=G(E-1.5,0)n=f(3)aS=f(4)if f(2)>0 then
_=a[2][f(2)]if _ then
if _[4]>3004 and _[4]<3008 then
am=G(am+3*(_[4]-3006),1)elseif _[4]>3000 then
at=_[4]end
end
end
for c=1,#H do
D=H[c]for B=1,#D do
r=D[B]_=r[1]if _>(2^15)then
_=a[8][_-(2^15)]for l=1,6 do
_[l]=r[l+1]end
elseif _<0 then
if-_<=#a[1]then
if a[1][-_]~=nil then
r=a[1][-_][6]if a[16][r][5]>0 then
E=G(E,15)end
else
a[1][-_]={}end
while-_>#a[1]do
a[1][#a[1]+1]=aj
end
aB(a[1],-_)end
else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for l=1,8 do
_[a[19][1][l]]=r[l+1]end
_[15]=0
end
end
end
H={}_=a[1][1]q[1]={_[1],_[2]}q[3]=_[3]aO=aF(#a[7],q[1])Z=aH(aO)q[2]=Z[1]+41
aP=Y(Z[5]/g,1)^1.3
for c=1,#Z[8]do
_=a[6][Z[8][c]]for B=_[2],_[1]+_[2]-1 do
aU=a[5][B]aV=a[2][aU[4]]aV[8]=aE
end
end
aJ=af(2)L=L-1
ae=ae-1
if not aL[J]then
aL[J]=1
ae=70
end
ag=(4-Y(n//20,4))*8
if n<=0 then
O=41
elseif ae>0 then
O=ag+6
elseif n<aC then
L=35
O=ag+7
elseif L<=0 then
L=16
ao=ao%256+1
O=ag+a[13][1][ao]%3
end
aC=n
end
end
end
function onDraw()N=screen
local b_,t,h,p,aD=N.drawTriangleF,N.drawRectF,N.setColor,N.drawText,N.drawLine
X=X+1
if X<=1 then
if a[21]and not I then
d=a[25][1]A,o=d[1],d[2]Q,ar=u-A/2,80-o/2
for l=0,A-1 do
as=Q+l
for P=0,o-1 do
s=d[5+P+l*o]if s~=0 then
j=a[20][s]h(j[1],j[2],j[3])t(as,ar+P,1,1)end
end
end
end
if not aJ then
for c=1,#m do
d=m[c][2][1]ah=d>0 and aP or 1
d=a[17][abs(d)][1]d=a[23][d]A,o,an=d[1],d[2],d[3]*.7
aw=an*aI
Q,ar=u-(d[4]+160)*.7,v-(d[5]+148)*.7*aI
for l=0,A-1 do
as=Q+l*an
for P=0,o-1 do
s=d[7+P+l*o]if s~=0 then
j=a[20][s]h(j[1]*ah,j[2]*ah,j[3]*ah)t(as,ar+P*aw,an,aw)end
end
end
end
end
if I then
if aJ then
h(0,0,0)t(0,0,ac,v)for c=1,#a[2]do
_=a[2][c]if _[8]then
w=ab(aK(av(sub(a[4][_[1]],q[1]),aA)),{u,V})y=ab(aK(av(sub(a[4][_[2]],q[1]),aA)),{u,V})if _[3]&4>0 then
h(50,50,50)else
h(g,g,g)end
aD(w[1],w[2],y[1],y[2])end
end
h(g,g,g)_=a[19][10]for c=1,#_,4 do
aa=sin(q[3]-90)ad=cos(q[3]-90)w={_[c]*ad+_[c+1]*aa,_[c+1]*ad-_[c]*aa}y={_[c+2]*ad+_[c+3]*aa,_[c+3]*ad-_[c+2]*aa}w=ab(w,{u,V})y=ab(y,{u,V})aD(w[1],w[2],y[1],y[2])end
end
h(g,F>0 and 0 or g,0,F+E)t(0,0,ac,v)h(50,50,50)t(0,v,ac,32)h(25,25,25)t(u-16,v,32,32)d=a[23][a[19][3][1]+O]A,o=d[1],d[2]Q=u-A/2
for c=0,A-1 do
for B=0,o-1 do
s=d[7+B+c*o]if s~=0 then
j=a[20][s]h(j[1],j[2],j[3])t(Q+c,v+1+B,1,1)end
end
end
for c=5,7 do
_=a[19][c]h(_[1],_[2],_[3])t(229,95+c*7,6,7)end
h(g,g,g)p(100,131,M(n))p(100,137,M(aS))p(1,143,"DIF:")p(1,149,"LOD:")p(26,149,M(am))p(26,143,M(Y(at-3000,3)))end
p(1,131,"ROM:")p(26,131,W)p(1,137,"TPS:")end
end
