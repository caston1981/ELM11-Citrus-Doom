bp=""

O=131
j=255
z=180
aM=true
aC=false
aB=input
au=table.remove
n=math
I=n.max
ae=n.min
abs=n.abs
T=n.floor
sqrt=n.sqrt
h=aB.getNumber
ac=aB.getBool
aP=output.setNumber
pi=n.pi
am=aC
aT=aM
an=string
function ai(c,e)return{(c[1]+e[1]),(c[2]+e[2])}end
function ba(c,e)return c[1]*e[2]-c[2]*e[1]end
function sub(c,e)return{(c[1]-e[1]),(c[2]-e[2])}end
function aF(c,e)return{c[1]*e,c[2]*e}end
function bj(c)return((c+z)%360)-z end
function sin(c)return n.sin(c/z*pi)end
function cos(c)return n.cos(c/z*pi)end
function tan(c)return n.tan(c/z*pi)end
function bo(c)return n.atan(c)*z/pi end
function bk(c)return n.atan(c[2],c[1])*z/pi end
function aD(c,e,bd)return ae(I(e,c),bd)end
function b_(c)return T(c+.5)end
function bm(c,e)return sqrt(((c[1]-e[1])^2)+((c[2]-e[2])^2))end
function aL(c)return{c[1],-c[2]}end
function bl(c)c=c-1
c=c|(c>>1)c=c|(c>>2)c=c|(c>>4)return c+1
end
a={}ag=1
W=3
N=am
x={{0,0},0,0}ab=288
w=ab//2
C=128
ad=C//2
aI=1.2
aE={1,1}ay=1
L=1
W=3
az=400
v=100
aQ=100
aq=0
aa=0
H=0
F=0
aW=3002
M={}aN=32768
s={}aV=.05
E={}av=3
Y=0
aj=0
D=1
al=0
J=0
Z=aT
function aJ(b,c)if b<aN then
A=a[7][b]return aJ(A[0<ba({A[3],A[4]},sub(c,A))and 8 or 7],c)else
return b-aN
end
end
function aO(c)A=a[5][a[6][c][2]]return a[8][a[3][a[2][A[4]][A[5]+6]][6]]end
function onTick()al=0
for k=1,3 do
if ac(9)and(not N)or not a[21]then
aA=property.getText(ag)b=1
o=bp
_=an.sub(aA,b,b)while _~=bpdo
aX=an.byte(_)if aX>64then
o=(o..aX-65)+0
if D==1then
aS=o
a[o]=a[o]or{}elseif D==2then
bf=o
V=0
elseif D==3then
ap=o
else
if V==0then
V=bf
ap=ap-1
ax={}a[aS][#a[aS]+1]=ax
end
ax[#ax+1]=o
V=V-1
D=I(V,ap)>0 and D-1 or 0
end
D=D+1
o=bp
else
o=o.._
end
b=b+1
_=an.sub(aA,b,b)end
ag=ag+1
N=aA==bp
end
end
if N then
if v>0 and not Z then
G={}M[#M+1]=G
P=5
_=h(P)while _~=0 do
u={}G[#G+1]=u
for b=0,8 do
u[b+1]=h(P+b)end
P=P+9
_=h(P)end
end
if ac(1)then
if Z then
for b=1,10 do
a[b]=a[b+10*W]end
W=W+1
Z=am
for b=1,#a[1]do
_=a[1][b]end
for b=1,#a[8]do
a[8][b][8]={}end
for b=1,#a[6]do
_=aO(b)_[8][#_[8]+1]=b
end
end
if h(9)>0 then
Z=aT
W=h(9)end
aa=aa-1
if v>0 then
if S~=h(1)and h(1)>0then
s={}_={}_[1]=a[29][h(1)]_[2]=a[16][_[1][3]]bn=_[2][1]_[3]=0
s[1]=_
end
S=h(1)as=ac(3)if as and S==5 then
if J<=0 then
J=7
else
as=aC
end
end
J=J-1
if as then
_=s[1]_[2]=a[16][_[1][4]]_[3]=-1
E[#E+1]={1,1}end
end
for b=#s,1,-1 do
_=s[b]if _[3]==0 then
if _[2][3]==4 then
if S==5 and J<5 then
aH=1
else
aH=0
end
s[#s+1]={_[1],a[16][_[1][5]+aH],2}end
end
_[3]=_[3]+1
if _[3]>=_[2][2]then
if _[2][4]>2 then
_[2]=a[16][_[2][4]]_[3]=0
else
au(s,b)end
end
end
for b=1,32 do
aP(b,0)end
for b=#E,1,-1 do
Q=E[b]_=a[18][Q[1]]for k=0,av-1 do
ao=_[(Q[2]+k)*2-1]if ao and ao>0 then
aP(2+(b-1)*av+k,aD(b_((ao+12)//2),1,60))end
end
Q[2]=Q[2]+2
if Q[2]>=av+#_ then
au(E,b)end
end
if Z then
H=50
end
F=I(F-4,0)F=aD(F+(v-h(3)+aq-h(4))*3,0,j)H=I(H-1.5,0)v=h(3)aq=h(4)if h(2)>0 then
_=a[2][h(2)]if _ then
if _[4]>3004 and _[4]<3008 then
az=I(az+3*(_[4]-3006),1)elseif _[4]>3000 then
aW=_[4]end
end
end
for b=1,#M do
G=M[b]for k=1,#G do
u=G[k]_=u[1]if _>(2^15)then
_=a[8][_-(2^15)]for q=1,6 do
_[q]=u[q+1]end
elseif _<0 then
if-_<=#a[1]then
if a[1][-_]~=nil then
u=a[1][-_][6]if a[16][u][5]>0 then
H=I(H,15)aa=35
bg=a[16][u][5]E[#E+1]={a[19][11][1],1}end
else
a[1][-_]={}end
while-_>#a[1]do
a[1][#a[1]+1]=am
end
au(a[1],-_)end
else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for q=1,8 do
_[a[19][1][q]]=u[q+1]end
_[15]=0
end
end
end
M={}_=a[1][1]x[1]={_[1],_[2]}x[3]=_[3]bh=aJ(#a[7],x[1])ah=aO(bh)x[2]=ah[1]+41
be=ae(ah[5]/j,1)^1.3
for b=1,#ah[8]do
_=a[6][ah[8][b]]for k=_[2],_[1]+_[2]-1 do
bb=a[5][k]bc=a[2][bb[4]]bc[8]=aM
end
end
aG=ac(2)Y=Y-1
aj=aj-1
if not aE[S]then
aE[S]=1
aj=70
end
ar=(4-ae(v//20,4))*8
if v<=0 then
L=41
elseif aj>0 then
L=ar+6
elseif v<aQ then
Y=35
L=ar+7
elseif Y<=0 then
Y=16
ay=ay%256+1
L=ar+a[13][1][ay]%3
end
aQ=v
end
end
end
function onDraw()R=screen
local bi,t,i,f,aR=R.drawTriangleF,R.drawRectF,R.setColor,R.drawText,R.drawLine
al=al+1
if a[21]and not N then
d=a[25][1]r,l=d[1],d[2]p,K=w-r/2,80-l/2
for q=0,r-1 do
X=p+q
for U=0,l-1 do
m=d[5+U+q*l]if m~=0 then
g=a[20][m]i(g[1],g[2],g[3])t(X,K+U,1,1)end
end
end
end
if not aG then
for b=1,#s do
d=s[b][2][1]aw=d>0 and be or 1
d=a[17][abs(d)][1]d=a[23][d]r,l,at=d[1],d[2],d[3]*.7
aU=at*aI
p,K=w-(d[4]+160)*.7,C-(d[5]+148)*.7*aI
for q=0,r-1 do
X=p+q*at
for U=0,l-1 do
m=d[7+U+q*l]if m~=0 then
g=a[20][m]i(g[1]*aw,g[2]*aw,g[3]*aw)t(X,K+U*aU,at,aU)end
end
end
end
end
if N then
if aG then
i(0,0,0)t(0,0,ab,C)for b=1,#a[2]do
_=a[2][b]if _[8]then
y=ai(aL(aF(sub(a[4][_[1]],x[1]),aV)),{w,ad})B=ai(aL(aF(sub(a[4][_[2]],x[1]),aV)),{w,ad})if _[3]&4>0 then
i(50,50,50)else
i(j,j,j)end
aR(y[1],y[2],B[1],B[2])end
end
i(j,j,j)_=a[19][10]for b=1,#_,4 do
ak=sin(x[3]-90)af=cos(x[3]-90)y={_[b]*af+_[b+1]*ak,_[b+1]*af-_[b]*ak}B={_[b+2]*af+_[b+3]*ak,_[b+3]*af-_[b+2]*ak}y=ai(y,{w,ad})B=ai(B,{w,ad})aR(y[1],y[2],B[1],B[2])end
end
i(j,F>0 and 0 or j,0,F+H)t(0,0,ab,C)i(50,50,50)t(0,C,ab,32)i(25,25,25)t(w-16,C,32,32)d=a[23][a[19][3][1]+(L)*a[19][3][3]]r,l=d[1],d[2]p=w-r/2
for b=0,r-1 do
for k=0,l-1 do
m=d[7+k+b*l]if m~=0 then
g=a[20][m]i(g[1],g[2],g[3])t(p+b,C+1+k,1,1)end
end
end
for b=5,7 do
_=a[19][b]i(_[1],_[2],_[3])t(199,95+b*7,6,7)end
if aa>0 then
aK=a[13][bg]p=0
K=0
for aZ=1,#aK do
_=aK[aZ]if _>0 then
d=a[23][_]r,l=d[1],d[2]X=p+d[4]aY=K-d[5]for b=0,r-1 do
for k=0,l-1 do
m=d[7+k+b*l]if m~=0 then
g=a[20][m]i(g[1],g[2],g[3])t(X+b,aY+k,1,1)end
end
end
p=p+r
else
p=p+4
end
end
end
i(j,j,j)f(100,O,T(v))f(100,137,T(aq))f(67,O,"HEALTH")f(67,137,"ARMOUR")f(1,143,"DIF:")f(1,149,"LOD:")f(217,O,"BULL")f(217,138,"SHEL")f(217,145,"ROKT")f(217,152,"CELL")f(26,149,T(az))f(26,143,T(ae(aW-3000,3)))end
f(1,O,"ROM:")f(26,O,ag)f(1,137,"TPS:")end
