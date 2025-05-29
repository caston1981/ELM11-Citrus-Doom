bp=""

K=131
k=255
B=180
aL=true
aI=false
aX=input
ao=table.remove
q=math
F=q.max
ah=q.min
abs=q.abs
O=q.floor
sqrt=q.sqrt
h=aX.getNumber
ac=aX.getBool
aU=output.setNumber
pi=q.pi
ax=aI
aM=aL
av=string
function ad(c,e)return{(c[1]+e[1]),(c[2]+e[2])}end
function bb(c,e)return c[1]*e[2]-c[2]*e[1]end
function sub(c,e)return{(c[1]-e[1]),(c[2]-e[2])}end
function aS(c,e)return{c[1]*e,c[2]*e}end
function bk(c)return((c+B)%360)-B end
function sin(c)return q.sin(c/B*pi)end
function cos(c)return q.cos(c/B*pi)end
function tan(c)return q.tan(c/B*pi)end
function bm(c)return q.atan(c)*B/pi end
function bi(c)return q.atan(c[2],c[1])*B/pi end
function aR(c,e,bh)return ah(F(e,c),bh)end
function ba(c)return O(c+.5)end
function bl(c,e)return sqrt(((c[1]-e[1])^2)+((c[2]-e[2])^2))end
function aK(c)return{c[1],-c[2]}end
function bo(c)c=c-1
c=c|(c>>1)c=c|(c>>2)c=c|(c>>4)return c+1
end
a={}af=1
P=3
M=ax
x={{0,0},0,0}ae=288
w=ae//2
y=128
ak=y//2
aJ=1.2
aO={1,1}aw=1
X=1
P=3
al=400
u=100
aG=100
as=0
aa=0
G=0
I=0
aW=3002
V={}aE=32768
r={}aN=.05
E={}ay=3
T=0
ab=0
D=1
aA=0
S=0
R=aM
function aP(b,c)if b<aE then
C=a[7][b]return aP(C[0<bb({C[3],C[4]},sub(c,C))and 8 or 7],c)else
return b-aE
end
end
function aB(c)C=a[5][a[6][c][2]]return a[8][a[3][a[2][C[4]][C[5]+6]][6]]end
function onTick()aA=0
for j=1,3 do
if ac(9)and(not M)or not a[21]then
az=property.getText(af)b=1
p=bp
_=av.sub(az,b,b)while _~=bpdo
aC=av.byte(_)if aC>64then
p=(p..aC-65)+0
if D==1then
aQ=p
a[p]=a[p]or{}elseif D==2then
bf=p
Z=0
elseif D==3then
at=p
else
if Z==0then
Z=bf
at=at-1
ap={}a[aQ][#a[aQ]+1]=ap
end
ap[#ap+1]=p
Z=Z-1
D=F(Z,at)>0 and D-1 or 0
end
D=D+1
p=bp
else
p=p.._
end
b=b+1
_=av.sub(az,b,b)end
af=af+1
M=az==bp
end
end
if M then
if u>0 and not R then
H={}V[#V+1]=H
Y=5
_=h(Y)while _~=0 do
t={}H[#H+1]=t
for b=0,8 do
t[b+1]=h(Y+b)end
Y=Y+9
_=h(Y)end
end
if ac(1)then
if R then
for b=1,10 do
a[b]=a[b+10*P]end
P=P+1
R=ax
for b=1,#a[1]do
_=a[1][b]end
for b=1,#a[8]do
a[8][b][8]={}end
for b=1,#a[6]do
_=aB(b)_[8][#_[8]+1]=b
end
end
if h(9)>0 then
R=aM
P=h(9)end
aa=aa-1
if u>0 then
if J~=h(1)and h(1)>0then
r={}_={}_[1]=a[29][h(1)]_[2]=a[16][_[1][3]]bj=_[2][1]_[3]=0
r[1]=_
end
J=h(1)an=ac(3)if an and J==5 then
if S<=0 then
S=7
else
an=aI
end
end
S=S-1
if an then
_=r[1]_[2]=a[16][_[1][4]]_[3]=-1
E[#E+1]={1,1}end
end
for b=#r,1,-1 do
_=r[b]if _[3]==0 then
if _[2][3]==4 then
if J==5 and S<5 then
aD=1
else
aD=0
end
r[#r+1]={_[1],a[16][_[1][5]+aD],2}end
end
_[3]=_[3]+1
if _[3]>=_[2][2]then
if _[2][4]>2 then
_[2]=a[16][_[2][4]]_[3]=0
else
ao(r,b)end
end
end
for b=1,32 do
aU(b,0)end
for b=#E,1,-1 do
W=E[b]_=a[18][W[1]]for j=0,ay-1 do
am=_[(W[2]+j)*2-1]if am and am>0 then
aU(2+(b-1)*ay+j,aR(ba((am+12)//2),1,60))end
end
W[2]=W[2]+2
if W[2]>=ay+#_ then
ao(E,b)end
end
if R then
G=50
end
I=F(I-4,0)I=aR(I+(u-h(3)+as-h(4))*3,0,k)G=F(G-1.5,0)u=h(3)as=h(4)if h(2)>0 then
_=a[2][h(2)]if _ then
if _[4]>3004 and _[4]<3008 then
al=F(al+3*(_[4]-3006),1)elseif _[4]>3000 then
aW=_[4]end
end
end
for b=1,#V do
H=V[b]for j=1,#H do
t=H[j]_=t[1]if _>(2^15)then
_=a[8][_-(2^15)]for o=1,6 do
_[o]=t[o+1]end
elseif _<0 then
if-_<=#a[1]then
if a[1][-_]~=nil then
t=a[1][-_][6]if a[16][t][5]>0 then
G=F(G,15)aa=35
aY=a[16][t][5]E[#E+1]={a[19][11][1],1}end
else
a[1][-_]={}end
while-_>#a[1]do
a[1][#a[1]+1]=ax
end
ao(a[1],-_)end
else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for o=1,8 do
_[a[19][1][o]]=t[o+1]end
_[15]=0
end
end
end
V={}_=a[1][1]x[1]={_[1],_[2]}x[3]=_[3]bg=aP(#a[7],x[1])aj=aB(bg)x[2]=aj[1]+41
bc=ah(aj[5]/k,1)^1.3
for b=1,#aj[8]do
_=a[6][aj[8][b]]for j=_[2],_[1]+_[2]-1 do
bd=a[5][j]be=a[2][bd[4]]be[8]=aL
end
end
aV=ac(2)T=T-1
ab=ab-1
if not aO[J]then
aO[J]=1
ab=70
end
au=(4-ah(u//20,4))*8
if u<=0 then
X=41
elseif ab>0 then
X=au+6
elseif u<aG then
T=35
X=au+7
elseif T<=0 then
T=16
aw=aw%256+1
X=au+a[13][1][aw]%3
end
aG=u
end
end
end
function onDraw()U=screen
local bn,v,i,g,aH=U.drawTriangleF,U.drawRectF,U.setColor,U.drawText,U.drawLine
aA=aA+1
if a[21]and not M then
d=a[25][1]s,l=d[1],d[2]n,L=w-s/2,80-l/2
for o=0,s-1 do
Q=n+o
for N=0,l-1 do
m=d[5+N+o*l]if m~=0 then
f=a[20][m]i(f[1],f[2],f[3])v(Q,L+N,1,1)end
end
end
end
if not aV then
for b=1,#r do
d=r[b][2][1]ar=d>0 and bc or 1
d=a[17][abs(d)][1]d=a[23][d]s,l,aq=d[1],d[2],d[3]*.7
aF=aq*aJ
n,L=w-(d[4]+160)*.7,y-(d[5]+148)*.7*aJ
for o=0,s-1 do
Q=n+o*aq
for N=0,l-1 do
m=d[7+N+o*l]if m~=0 then
f=a[20][m]i(f[1]*ar,f[2]*ar,f[3]*ar)v(Q,L+N*aF,aq,aF)end
end
end
end
end
if M then
if aV then
i(0,0,0)v(0,0,ae,y)for b=1,#a[2]do
_=a[2][b]if _[8]then
z=ad(aK(aS(sub(a[4][_[1]],x[1]),aN)),{w,ak})A=ad(aK(aS(sub(a[4][_[2]],x[1]),aN)),{w,ak})if _[3]&4>0 then
i(50,50,50)else
i(k,k,k)end
aH(z[1],z[2],A[1],A[2])end
end
i(k,k,k)_=a[19][10]for b=1,#_,4 do
ag=sin(x[3]-90)ai=cos(x[3]-90)z={_[b]*ai+_[b+1]*ag,_[b+1]*ai-_[b]*ag}A={_[b+2]*ai+_[b+3]*ag,_[b+3]*ai-_[b+2]*ag}z=ad(z,{w,ak})A=ad(A,{w,ak})aH(z[1],z[2],A[1],A[2])end
end
i(k,I>0 and 0 or k,0,I+G)v(0,0,ae,y)i(50,50,50)v(0,y,ae,32)i(25,25,25)v(w-16,y,32,32)d=a[23][a[19][3][1]+X]s,l=d[1],d[2]n=w-s/2
for b=0,s-1 do
for j=0,l-1 do
m=d[7+j+b*l]if m~=0 then
f=a[20][m]i(f[1],f[2],f[3])v(n+b,y+1+j,1,1)end
end
end
for b=5,7 do
_=a[19][b]i(_[1],_[2],_[3])v(199,95+b*7,6,7)end
if aa>0 then
aT=a[13][aY]n=0
L=0
for aZ=1,#aT do
_=aT[aZ]if _>0 then
d=a[23][_]s,l=d[1],d[2]Q=n+d[4]b_=L-d[5]for b=0,s-1 do
for j=0,l-1 do
m=d[7+j+b*l]if m~=0 then
f=a[20][m]i(f[1],f[2],f[3])v(Q+b,b_+j,1,1)end
end
end
n=n+s
else
n=n+4
end
end
end
i(k,k,k)g(100,K,O(u))g(100,137,O(as))g(67,K,"HEALTH")g(67,137,"ARMOUR")g(1,143,"DIF:")g(1,149,"LOD:")g(217,K,"BULL")g(217,138,"SHEL")g(217,145,"ROKT")g(217,152,"CELL")g(26,149,O(al))g(26,143,O(ah(aW-3000,3)))end
g(1,K,"ROM:")g(26,K,af)g(1,137,"TPS:")end
