bo=""

V=131
i=255
A=180
aB=true
aT=false
aF=input
as=table.remove
m=math
H=m.max
aa=m.min
abs=m.abs
T=m.floor
sqrt=m.sqrt
g=aF.getNumber
ac=aF.getBool
aX=output.setNumber
pi=m.pi
ak=aT
aV=aB
at=string
function ai(c,e)return{(c[1]+e[1]),(c[2]+e[2])}end
function ba(c,e)return c[1]*e[2]-c[2]*e[1]end
function sub(c,e)return{(c[1]-e[1]),(c[2]-e[2])}end
function aE(c,e)return{c[1]*e,c[2]*e}end
function bj(c)return((c+A)%360)-A end
function sin(c)return m.sin(c/A*pi)end
function cos(c)return m.cos(c/A*pi)end
function tan(c)return m.tan(c/A*pi)end
function bm(c)return m.atan(c)*A/pi end
function bh(c)return m.atan(c[2],c[1])*A/pi end
function aQ(c,e,bf)return aa(H(e,c),bf)end
function aZ(c)return T(c+.5)end
function bl(c,e)return sqrt(((c[1]-e[1])^2)+((c[2]-e[2])^2))end
function aH(c)return{c[1],-c[2]}end
function bk(c)c=c-1
c=c|(c>>1)c=c|(c>>2)c=c|(c>>4)return c+1
end
a={}aj=1
J=3
S=ak
v={{0,0},0,0}ah=288
w=ah//2
B=128
ag=B//2
aK=1.2
aU={1,1}ao=1
P=1
J=3
an=400
r=100
aD=100
aw=0
ae=0
F=0
I=0
aW=3002
L={}aO=32768
q={}aL=.05
z={}ax=3
W=0
ab=0
D=1
aq=0
R=0
O=aV
function aP(b,c)if b<aO then
E=a[7][b]return aP(E[0<ba({E[3],E[4]},sub(c,E))and 8 or 7],c)else
return b-aO
end
end
function aG(c)E=a[5][a[6][c][2]]return a[8][a[3][a[2][E[4]][E[5]+6]][6]]end
function onTick()aq=0
for j=1,3 do
if ac(9)and(not S)or not a[21]then
ar=property.getText(aj)b=1
n=bo
_=at.sub(ar,b,b)while _~=bodo
aI=at.byte(_)if aI>64then
n=(n..aI-65)+0
if D==1then
aM=n
a[n]=a[n]or{}elseif D==2then
bg=n
X=0
elseif D==3then
av=n
else
if X==0then
X=bg
av=av-1
ap={}a[aM][#a[aM]+1]=ap
end
ap[#ap+1]=n
X=X-1
D=H(X,av)>0 and D-1 or 0
end
D=D+1
n=bo
else
n=n.._
end
b=b+1
_=at.sub(ar,b,b)end
aj=aj+1
S=ar==bo
end
end
if S then
if r>0 and not O then
G={}L[#L+1]=G
U=5
_=g(U)while _~=0 do
u={}G[#G+1]=u
for b=0,8 do
u[b+1]=g(U+b)end
U=U+9
_=g(U)end
end
if ac(1)then
if O then
for b=1,10 do
a[b]=a[b+10*J]end
J=J+1
O=ak
for b=1,#a[1]do
_=a[1][b]end
for b=1,#a[8]do
a[8][b][8]={}end
for b=1,#a[6]do
_=aG(b)_[8][#_[8]+1]=b
end
end
if g(9)>0 then
O=aV
J=g(9)end
ae=ae-1
if r>0 then
if Q~=g(1)and g(1)>0then
q={}_={}_[1]=a[29][g(1)]_[2]=a[16][_[1][3]]bi=_[2][1]_[3]=0
q[1]=_
end
Q=g(1)au=ac(3)if au and Q==5 then
if R<=0 then
R=7
else
au=aT
end
end
R=R-1
if au then
_=q[1]_[2]=a[16][_[1][4]]_[3]=-1
z[#z+1]={1,1}end
end
for b=#q,1,-1 do
_=q[b]if _[3]==0 then
if _[2][3]==4 then
if Q==5 and R<5 then
aS=1
else
aS=0
end
q[#q+1]={_[1],a[16][_[1][5]+aS],2}end
end
_[3]=_[3]+1
if _[3]>=_[2][2]then
if _[2][4]>2 then
_[2]=a[16][_[2][4]]_[3]=0
else
as(q,b)end
end
end
for b=1,32 do
aX(b,0)end
for b=#z,1,-1 do
N=z[b]_=a[18][N[1]]for j=0,ax-1 do
aA=_[(N[2]+j)*2-1]if aA and aA>0 then
aX(2+(b-1)*ax+j,aQ(aZ((aA+12)//2),1,60))end
end
N[2]=N[2]+2
if N[2]>=ax+#_ then
as(z,b)end
end
if O then
F=50
end
I=H(I-4,0)I=aQ(I+(r-g(3)+aw-g(4))*3,0,i)F=H(F-1.5,0)r=g(3)aw=g(4)if g(2)>0 then
_=a[2][g(2)]if _ then
if _[4]>3004 and _[4]<3008 then
an=H(an+3*(_[4]-3006),1)elseif _[4]>3000 then
aW=_[4]end
end
end
for b=1,#L do
G=L[b]for j=1,#G do
u=G[j]_=u[1]if _>(2^15)then
_=a[8][_-(2^15)]for o=1,6 do
_[o]=u[o+1]end
elseif _<0 then
if-_<=#a[1]then
if a[1][-_]~=nil then
u=a[1][-_][6]if a[16][u][5]>0 then
F=H(F,15)ae=35
be=a[16][u][5]z[#z+1]={a[19][11][1],1}end
else
a[1][-_]={}end
while-_>#a[1]do
a[1][#a[1]+1]=ak
end
as(a[1],-_)end
else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for o=1,8 do
_[a[19][1][o]]=u[o+1]end
_[15]=0
end
end
end
L={}_=a[1][1]v[1]={_[1],_[2]}v[3]=_[3]bc=aP(#a[7],v[1])Z=aG(bc)v[2]=Z[1]+41
b_=aa(Z[5]/i,1)^1.3
for b=1,#Z[8]do
_=a[6][Z[8][b]]for j=_[2],_[1]+_[2]-1 do
bd=a[5][j]bb=a[2][bd[4]]bb[8]=aB
end
end
aY=ac(2)W=W-1
ab=ab-1
if not aU[Q]then
aU[Q]=1
ab=70
end
az=(4-aa(r//20,4))*8
if r<=0 then
P=41
elseif ab>0 then
P=az+6
elseif r<aD then
W=35
P=az+7
elseif W<=0 then
W=16
ao=ao%256+1
P=az+a[13][1][ao]%3
end
aD=r
end
end
end
function onDraw()Y=screen
local bn,s,k,f,aJ=Y.drawTriangleF,Y.drawRectF,Y.setColor,Y.drawText,Y.drawLine
aq=aq+1
if a[21]and not S then
d=a[25][1]t,l=d[1],d[2]x,K=w-t/2,80-l/2
for o=0,t-1 do
am=x+o
for M=0,l-1 do
p=d[5+M+o*l]if p~=0 then
h=a[20][p]k(h[1],h[2],h[3])s(am,K+M,1,1)end
end
end
end
if not aY then
for b=1,#q do
d=q[b][2][1]ay=d>0 and b_ or 1
d=a[17][abs(d)][1]d=a[23][d]t,l,al=d[1],d[2],d[3]*.7
aR=al*aK
x,K=w-(d[4]+160)*.7,B-(d[5]+148)*.7*aK
for o=0,t-1 do
am=x+o*al
for M=0,l-1 do
p=d[7+M+o*l]if p~=0 then
h=a[20][p]k(h[1]*ay,h[2]*ay,h[3]*ay)s(am,K+M*aR,al,aR)end
end
end
end
end
if S then
if aY then
k(0,0,0)s(0,0,ah,B)for b=1,#a[2]do
_=a[2][b]if _[8]then
y=ai(aH(aE(sub(a[4][_[1]],v[1]),aL)),{w,ag})C=ai(aH(aE(sub(a[4][_[2]],v[1]),aL)),{w,ag})if _[3]&4>0 then
k(50,50,50)else
k(i,i,i)end
aJ(y[1],y[2],C[1],C[2])end
end
k(i,i,i)_=a[19][10]for b=1,#_,4 do
af=sin(v[3]-90)ad=cos(v[3]-90)y={_[b]*ad+_[b+1]*af,_[b+1]*ad-_[b]*af}C={_[b+2]*ad+_[b+3]*af,_[b+3]*ad-_[b+2]*af}y=ai(y,{w,ag})C=ai(C,{w,ag})aJ(y[1],y[2],C[1],C[2])end
end
k(i,I>0 and 0 or i,0,I+F)s(0,0,ah,B)k(50,50,50)s(0,B,ah,32)k(25,25,25)s(w-16,B,32,32)d=a[23][a[19][3][1]+P]t,l=d[1],d[2]x=w-t/2
for b=0,t-1 do
for j=0,l-1 do
p=d[7+j+b*l]if p~=0 then
h=a[20][p]k(h[1],h[2],h[3])s(x+b,B+1+j,1,1)end
end
end
for b=5,7 do
_=a[19][b]k(_[1],_[2],_[3])s(199,95+b*7,6,7)end
if ae>0 then
aN=a[13][be]for aC=1,#aN do
_=aN[aC]if _>0 then
d=a[23][_]t,l=d[1],d[2]x=d[4]+aC*8-6
K=-d[5]+2
for b=0,t-1 do
for j=0,l-1 do
p=d[7+j+b*l]if p~=0 then
h=a[20][p]k(h[1],h[2],h[3])s(x+b,K+j,1,1)end
end
end
end
end
end
k(i,i,i)f(100,V,T(r))f(100,137,T(aw))f(67,V,"HEALTH")f(67,137,"ARMOUR")f(1,143,"DIF:")f(1,149,"LOD:")f(217,V,"BULL")f(217,138,"SHEL")f(217,145,"ROKT")f(217,152,"CELL")f(26,149,T(an))f(26,143,T(aa(aW-3000,3)))end
f(1,V,"ROM:")f(26,V,aj)f(1,137,"TPS:")end
