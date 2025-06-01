bp=""

S=131
i=255
C=180
aI=true
aQ=false
aM=input
aq=table.remove
m=math
F=m.max
ac=m.min
abs=m.abs
T=m.floor
sqrt=m.sqrt
h=aM.getNumber
ab=aM.getBool
aR=output.setNumber
pi=m.pi
ay=aQ
aD=aI
aw=string
function ak(c,e)return{(c[1]+e[1]),(c[2]+e[2])}end
function ba(c,e)return c[1]*e[2]-c[2]*e[1]end
function sub(c,e)return{(c[1]-e[1]),(c[2]-e[2])}end
function aW(c,e)return{c[1]*e,c[2]*e}end
function bl(c)return((c+C)%360)-C end
function sin(c)return m.sin(c/C*pi)end
function cos(c)return m.cos(c/C*pi)end
function tan(c)return m.tan(c/C*pi)end
function bo(c)return m.atan(c)*C/pi end
function bk(c)return m.atan(c[2],c[1])*C/pi end
function aK(c,e,bh)return ac(F(e,c),bh)end
function bc(c)return T(c+.5)end
function bm(c,e)return sqrt(((c[1]-e[1])^2)+((c[2]-e[2])^2))end
function aN(c)return{c[1],-c[2]}end
function bi(c)c=c-1
c=c|(c>>1)c=c|(c>>2)c=c|(c>>4)return c+1
end
a={}ag=1
N=3
W=ay
w={{0,0},0,0}ah=288
x=ah//2
A=128
ad=A//2
aU=1.2
aH={1,1}aA=1
M=1
N=3
an=400
u=100
aE=100
ao=0
ai=0
H=0
G=0
aJ=3002
Z={}aT=32768
r={}aC=.05
E={}ar=3
X=0
af=0
D=1
am=0
R=0
J=aD
function aF(b,c)if b<aT then
y=a[7][b]return aF(y[0<ba({y[3],y[4]},sub(c,y))and 8 or 7],c)else
return b-aT
end
end
function aB(c)y=a[5][a[6][c][2]]return a[8][a[3][a[2][y[4]][y[5]+6]][6]]end
function onTick()am=0
for j=1,3 do
if ab(9)and(not W)or not a[21]then
as=property.getText(ag)b=1
q=bp
_=aw.sub(as,b,b)while _~=bpdo
aG=aw.byte(_)if aG>64then
q=(q..aG-65)+0
if D==1then
aV=q
a[q]=a[q]or{}elseif D==2then
aZ=q
K=0
elseif D==3then
ax=q
else
if K==0then
K=aZ
ax=ax-1
ap={}a[aV][#a[aV]+1]=ap
end
ap[#ap+1]=q
K=K-1
D=F(K,ax)>0 and D-1 or 0
end
D=D+1
q=bp
else
q=q.._
end
b=b+1
_=aw.sub(as,b,b)end
ag=ag+1
W=as==bp
end
end
if W then
if u>0 and not J then
I={}Z[#Z+1]=I
V=5
_=h(V)while _~=0 do
v={}I[#I+1]=v
for b=0,8 do
v[b+1]=h(V+b)end
V=V+9
_=h(V)end
end
if ab(1)then
if J then
for b=1,10 do
a[b]=a[b+10*N]end
N=N+1
J=ay
for b=1,#a[1]do
_=a[1][b]end
for b=1,#a[8]do
a[8][b][8]={}end
for b=1,#a[6]do
_=aB(b)_[8][#_[8]+1]=b
end
end
if h(9)>0 then
J=aD
N=h(9)end
ai=ai-1
if u>0 then
if P~=h(1)and h(1)>0then
r={}_={}_[1]=a[29][h(1)]_[2]=a[16][_[1][3]]bj=_[2][1]_[3]=0
r[1]=_
end
P=h(1)au=ab(3)if au and P==5 then
if R<=0 then
R=7
else
au=aQ
end
end
R=R-1
if au then
_=r[1]_[2]=a[16][_[1][4]]_[3]=-1
E[#E+1]={1,1}end
end
for b=#r,1,-1 do
_=r[b]if _[3]==0 then
if _[2][3]==4 then
if P==5 and R<5 then
aO=1
else
aO=0
end
r[#r+1]={_[1],a[16][_[1][5]+aO],2}end
end
_[3]=_[3]+1
if _[3]>=_[2][2]then
if _[2][4]>2 then
_[2]=a[16][_[2][4]]_[3]=0
else
aq(r,b)end
end
end
for b=1,32 do
aR(b,0)end
for b=#E,1,-1 do
Q=E[b]_=a[18][Q[1]]for j=0,ar-1 do
az=_[(Q[2]+j)*2-1]if az and az>0 then
aR(2+(b-1)*ar+j,aK(bc((az+12)//2),1,60))end
end
Q[2]=Q[2]+2
if Q[2]>=ar+#_ then
aq(E,b)end
end
if J then
H=50
end
G=F(G-4,0)G=aK(G+(u-h(3)+ao-h(4))*3,0,i)H=F(H-1.5,0)u=h(3)ao=h(4)if h(2)>0 then
_=a[2][h(2)]if _ then
if _[4]>3004 and _[4]<3008 then
an=F(an+3*(_[4]-3006),1)elseif _[4]>3000 then
aJ=_[4]end
end
end
for b=1,#Z do
I=Z[b]for j=1,#I do
v=I[j]_=v[1]if _>(2^15)then
_=a[8][_-(2^15)]for o=1,6 do
_[o]=v[o+1]end
elseif _<0 then
if-_<=#a[1]then
if a[1][-_]~=nil then
v=a[1][-_][6]if a[16][v][5]>0 then
H=F(H,15)ai=35
b_=a[16][v][5]E[#E+1]={a[19][11][1],1}end
else
a[1][-_]={}end
while-_>#a[1]do
a[1][#a[1]+1]=ay
end
aq(a[1],-_)end
else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for o=1,8 do
_[a[19][1][o]]=v[o+1]end
_[15]=0
end
end
end
Z={}_=a[1][1]w[1]={_[1],_[2]}w[3]=_[3]bb=aF(#a[7],w[1])aj=aB(bb)w[2]=aj[1]+41
bd=ac(aj[5]/i,1)^1.3
for b=1,#aj[8]do
_=a[6][aj[8][b]]for j=_[2],_[1]+_[2]-1 do
be=a[5][j]bg=a[2][be[4]]bg[8]=aI
end
end
aL=ab(2)X=X-1
af=af-1
if not aH[P]then
aH[P]=1
af=70
end
al=(4-ac(u//20,4))*8
if u<=0 then
M=41
elseif af>0 then
M=al+6
elseif u<aE then
X=35
M=al+7
elseif X<=0 then
X=16
aA=aA%256+1
M=al+a[13][1][aA]%3
end
aE=u
end
end
end
function onDraw()L=screen
local bn,t,k,g,aS=L.drawTriangleF,L.drawRectF,L.setColor,L.drawText,L.drawLine
am=am+1
if a[21]and not W then
d=a[25][1]s,l=d[1],d[2]n,U=x-s/2,80-l/2
for o=0,s-1 do
O=n+o
for Y=0,l-1 do
p=d[5+Y+o*l]if p~=0 then
f=a[20][p]k(f[1],f[2],f[3])t(O,U+Y,1,1)end
end
end
end
if not aL then
for b=1,#r do
d=r[b][2][1]av=d>0 and bd or 1
d=a[17][abs(d)][1]d=a[23][d]s,l,at=d[1],d[2],d[3]*.7
aP=at*aU
n,U=x-(d[4]+160)*.7,A-(d[5]+148)*.7*aU
for o=0,s-1 do
O=n+o*at
for Y=0,l-1 do
p=d[7+Y+o*l]if p~=0 then
f=a[20][p]k(f[1]*av,f[2]*av,f[3]*av)t(O,U+Y*aP,at,aP)end
end
end
end
end
if W then
if aL then
k(0,0,0)t(0,0,ah,A)for b=1,#a[2]do
_=a[2][b]if _[8]then
z=ak(aN(aW(sub(a[4][_[1]],w[1]),aC)),{x,ad})B=ak(aN(aW(sub(a[4][_[2]],w[1]),aC)),{x,ad})if _[3]&4>0 then
k(50,50,50)else
k(i,i,i)end
aS(z[1],z[2],B[1],B[2])end
end
k(i,i,i)_=a[19][10]for b=1,#_,4 do
ae=sin(w[3]-90)aa=cos(w[3]-90)z={_[b]*aa+_[b+1]*ae,_[b+1]*aa-_[b]*ae}B={_[b+2]*aa+_[b+3]*ae,_[b+3]*aa-_[b+2]*ae}z=ak(z,{x,ad})B=ak(B,{x,ad})aS(z[1],z[2],B[1],B[2])end
end
k(i,G>0 and 0 or i,0,G+H)t(0,0,ah,A)k(50,50,50)t(0,A,ah,32)k(25,25,25)t(x-16,A,32,32)d=a[23][a[19][3][1]+(M)*a[19][3][3]]s,l=d[1],d[2]n=x-s/2
for b=0,s-1 do
for j=0,l-1 do
p=d[7+j+b*l]if p~=0 then
f=a[20][p]k(f[1],f[2],f[3])t(n+b,A+1+j,1,1)end
end
end
for b=5,7 do
_=a[19][b]k(_[1],_[2],_[3])t(199,95+b*7,6,7)end
if ai>0 then
aX=a[13][b_]n=0
U=0
for aY=1,#aX do
_=aX[aY]if _>0 then
d=a[23][_]s,l=d[1],d[2]O=n+d[4]bf=U-d[5]for b=0,s-1 do
for j=0,l-1 do
p=d[7+j+b*l]if p~=0 then
f=a[20][p]k(f[1],f[2],f[3])t(O+b,bf+j,1,1)end
end
end
n=n+s
else
n=n+4
end
end
end
k(i,i,i)g(100,S,T(u))g(100,137,T(ao))g(67,S,"HEALTH")g(67,137,"ARMOUR")g(1,143,"DIF:")g(1,149,"LOD:")g(217,S,"BULL")g(217,138,"SHEL")g(217,145,"ROKT")g(217,152,"CELL")g(26,149,T(an))g(26,143,T(ac(aJ-3000,3)))end
g(1,S,"ROM:")g(26,S,ag)g(1,137,"TPS:")end
