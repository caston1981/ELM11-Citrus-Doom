bp=""

T=131
k=255
B=180
aI=true
aM=false
aD=input
an=table.remove
o=math
F=o.max
ad=o.min
abs=o.abs
S=o.floor
sqrt=o.sqrt
f=aD.getNumber
ah=aD.getBool
aH=output.setNumber
pi=o.pi
aw=aM
aK=aI
ap=string
function ag(c,e)return{(c[1]+e[1]),(c[2]+e[2])}end
function bb(c,e)return c[1]*e[2]-c[2]*e[1]end
function sub(c,e)return{(c[1]-e[1]),(c[2]-e[2])}end
function aF(c,e)return{c[1]*e,c[2]*e}end
function bk(c)return((c+B)%360)-B end
function sin(c)return o.sin(c/B*pi)end
function cos(c)return o.cos(c/B*pi)end
function tan(c)return o.tan(c/B*pi)end
function bl(c)return o.atan(c)*B/pi end
function bi(c)return o.atan(c[2],c[1])*B/pi end
function aT(c,e,bf)return ad(F(e,c),bf)end
function be(c)return S(c+.5)end
function bj(c,e)return sqrt(((c[1]-e[1])^2)+((c[2]-e[2])^2))end
function aS(c)return{c[1],-c[2]}end
function bo(c)c=c-1
c=c|(c>>1)c=c|(c>>2)c=c|(c>>4)return c+1
end
a={}af=1
Q=3
N=aw
w={{0,0},0,0}ac=288
x=ac//2
z=128
ai=z//2
aJ=1.2
aL={1,1}au=1
V=1
Q=3
av=400
t=100
aP=100
at=0
aa=0
I=0
G=0
aN=3002
M={}aX=32768
r={}aB=.05
A={}ax=3
U=0
ae=0
y=1
ao=0
J=0
Y=aK
function aO(b,c)if b<aX then
D=a[7][b]return aO(D[0<bb({D[3],D[4]},sub(c,D))and 8 or 7],c)else
return b-aX
end
end
function aW(c)D=a[5][a[6][c][2]]return a[8][a[3][a[2][D[4]][D[5]+6]][6]]end
function onTick()ao=0
for j=1,3 do
if ah(9)and(not N)or not a[21]then
aq=property.getText(af)b=1
q=bp
_=ap.sub(aq,b,b)while _~=bpdo
aC=ap.byte(_)if aC>64then
q=(q..aC-65)+0
if y==1then
aE=q
a[q]=a[q]or{}elseif y==2then
aZ=q
P=0
elseif y==3then
ar=q
else
if P==0then
P=aZ
ar=ar-1
al={}a[aE][#a[aE]+1]=al
end
al[#al+1]=q
P=P-1
y=F(P,ar)>0 and y-1 or 0
end
y=y+1
q=bp
else
q=q.._
end
b=b+1
_=ap.sub(aq,b,b)end
af=af+1
N=aq==bp
end
end
if N then
if t>0 and not Y then
H={}M[#M+1]=H
R=5
_=f(R)while _~=0 do
u={}H[#H+1]=u
for b=0,8 do
u[b+1]=f(R+b)end
R=R+9
_=f(R)end
end
if ah(1)then
if Y then
for b=1,10 do
a[b]=a[b+10*Q]end
Q=Q+1
Y=aw
for b=1,#a[1]do
_=a[1][b]end
for b=1,#a[8]do
a[8][b][8]={}end
for b=1,#a[6]do
_=aW(b)_[8][#_[8]+1]=b
end
end
if f(9)>0 then
Y=aK
Q=f(9)end
aa=aa-1
if t>0 then
if K~=f(1)and f(1)>0then
r={}_={}_[1]=a[29][f(1)]_[2]=a[16][_[1][3]]bn=_[2][1]_[3]=0
r[1]=_
end
K=f(1)am=ah(3)if am and K==5 then
if J<=0 then
J=7
else
am=aM
end
end
J=J-1
if am then
_=r[1]_[2]=a[16][_[1][4]]_[3]=-1
A[#A+1]={1,1}end
end
for b=#r,1,-1 do
_=r[b]if _[3]==0 then
if _[2][3]==4 then
if K==5 and J<5 then
aQ=1
else
aQ=0
end
r[#r+1]={_[1],a[16][_[1][5]+aQ],2}end
end
_[3]=_[3]+1
if _[3]>=_[2][2]then
if _[2][4]>2 then
_[2]=a[16][_[2][4]]_[3]=0
else
an(r,b)end
end
end
for b=1,32 do
aH(b,0)end
for b=#A,1,-1 do
X=A[b]_=a[18][X[1]]for j=0,ax-1 do
as=_[(X[2]+j)*2-1]if as and as>0 then
aH(2+(b-1)*ax+j,aT(be((as+12)//2),1,60))end
end
X[2]=X[2]+2
if X[2]>=ax+#_ then
an(A,b)end
end
if Y then
I=50
end
G=F(G-4,0)G=aT(G+(t-f(3)+at-f(4))*3,0,k)I=F(I-1.5,0)t=f(3)at=f(4)if f(2)>0 then
_=a[2][f(2)]if _ then
if _[4]>3004 and _[4]<3008 then
av=F(av+3*(_[4]-3006),1)elseif _[4]>3000 then
aN=_[4]end
end
end
for b=1,#M do
H=M[b]for j=1,#H do
u=H[j]_=u[1]if _>(2^15)then
_=a[8][_-(2^15)]for p=1,6 do
_[p]=u[p+1]end
elseif _<0 then
if-_<=#a[1]then
if a[1][-_]~=nil then
u=a[1][-_][6]if a[16][u][5]>0 then
I=F(I,15)aa=35
ba=a[16][u][5]A[#A+1]={a[19][11][1],1}end
else
a[1][-_]={}end
while-_>#a[1]do
a[1][#a[1]+1]=aw
end
an(a[1],-_)end
else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for p=1,8 do
_[a[19][1][p]]=u[p+1]end
_[15]=0
end
end
end
M={}_=a[1][1]w[1]={_[1],_[2]}w[3]=_[3]bc=aO(#a[7],w[1])ak=aW(bc)w[2]=ak[1]+41
bd=ad(ak[5]/k,1)^1.3
for b=1,#ak[8]do
_=a[6][ak[8][b]]for j=_[2],_[1]+_[2]-1 do
b_=a[5][j]aY=a[2][b_[4]]aY[8]=aI
end
end
aV=ah(2)U=U-1
ae=ae-1
if not aL[K]then
aL[K]=1
ae=70
end
aA=(4-ad(t//20,4))*8
if t<=0 then
V=41
elseif ae>0 then
V=aA+6
elseif t<aP then
U=35
V=aA+7
elseif U<=0 then
U=16
au=au%256+1
V=aA+a[13][1][au]%3
end
aP=t
end
end
end
function onDraw()Z=screen
local bm,v,i,g,aR=Z.drawTriangleF,Z.drawRectF,Z.setColor,Z.drawText,Z.drawLine
ao=ao+1
if a[21]and not N then
d=a[25][1]s,l=d[1],d[2]n,O=x-s/2,80-l/2
for p=0,s-1 do
L=n+p
for W=0,l-1 do
m=d[5+W+p*l]if m~=0 then
h=a[20][m]i(h[1],h[2],h[3])v(L,O+W,1,1)end
end
end
end
if not aV then
for b=1,#r do
d=r[b][2][1]az=d>0 and bd or 1
d=a[17][abs(d)][1]d=a[23][d]s,l,ay=d[1],d[2],d[3]*.7
aU=ay*aJ
n,O=x-(d[4]+160)*.7,z-(d[5]+148)*.7*aJ
for p=0,s-1 do
L=n+p*ay
for W=0,l-1 do
m=d[7+W+p*l]if m~=0 then
h=a[20][m]i(h[1]*az,h[2]*az,h[3]*az)v(L,O+W*aU,ay,aU)end
end
end
end
end
if N then
if aV then
i(0,0,0)v(0,0,ac,z)for b=1,#a[2]do
_=a[2][b]if _[8]then
C=ag(aS(aF(sub(a[4][_[1]],w[1]),aB)),{x,ai})E=ag(aS(aF(sub(a[4][_[2]],w[1]),aB)),{x,ai})if _[3]&4>0 then
i(50,50,50)else
i(k,k,k)end
aR(C[1],C[2],E[1],E[2])end
end
i(k,k,k)_=a[19][10]for b=1,#_,4 do
ab=sin(w[3]-90)aj=cos(w[3]-90)C={_[b]*aj+_[b+1]*ab,_[b+1]*aj-_[b]*ab}E={_[b+2]*aj+_[b+3]*ab,_[b+3]*aj-_[b+2]*ab}C=ag(C,{x,ai})E=ag(E,{x,ai})aR(C[1],C[2],E[1],E[2])end
end
i(k,G>0 and 0 or k,0,G+I)v(0,0,ac,z)i(50,50,50)v(0,z,ac,32)i(25,25,25)v(x-16,z,32,32)d=a[23][a[19][3][1]+(V)*a[19][3][3]]s,l=d[1],d[2]n=x-s/2
for b=0,s-1 do
for j=0,l-1 do
m=d[7+j+b*l]if m~=0 then
h=a[20][m]i(h[1],h[2],h[3])v(n+b,z+1+j,1,1)end
end
end
for b=5,7 do
_=a[19][b]i(_[1],_[2],_[3])v(199,95+b*7,6,7)end
if aa>0 then
aG=a[13][ba]n=0
O=0
for bh=1,#aG do
_=aG[bh]if _>0 then
d=a[23][_]s,l=d[1],d[2]L=n+d[4]bg=O-d[5]for b=0,s-1 do
for j=0,l-1 do
m=d[7+j+b*l]if m~=0 then
h=a[20][m]i(h[1],h[2],h[3])v(L+b,bg+j,1,1)end
end
end
n=n+s
else
n=n+4
end
end
end
i(k,k,k)g(100,T,S(t))g(100,137,S(at))g(67,T,"HEALTH")g(67,137,"ARMOUR")g(1,143,"DIF:")g(1,149,"LOD:")g(217,T,"BULL")g(217,138,"SHEL")g(217,145,"ROKT")g(217,152,"CELL")g(26,149,S(av))g(26,143,S(ad(aN-3000,3)))end
g(1,T,"ROM:")g(26,T,af)g(1,137,"TPS:")end
