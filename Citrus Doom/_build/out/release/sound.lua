
al=152
K=131
g=255
L=180
u=math
Q=u.max
V=u.min
abs=u.abs
O=u.floor
sqrt=u.sqrt
l=input.getNumber
ae=input.getBool
aV=output.setNumber
pi=u.pi
aN=false
af=true
X=table.remove
ac=string
function aC(c,o)return{(c[1]+o[1]),(c[2]+o[2])}end
function bC(c,o)return c[1]*o[2]-c[2]*o[1]end
function sub(c,o)return{(c[1]-o[1]),(c[2]-o[2])}end
function bo(c,o)return{c[1]*o,c[2]*o}end
function bK(c)return((c+L)%360)-L end
function sin(c)return u.sin(c/L*pi)end
function cos(c)return u.cos(c/L*pi)end
function tan(c)return u.tan(c/L*pi)end
function bJ(c)return u.atan(c)*L/pi end
function bI(c)return u.atan(c[2],c[1])*L/pi end
function bm(c,o,bw)return V(Q(o,c),bw)end
function az(c)return O(c+.5)end
function by(c,o)return sqrt(((c[1]-o[1])^2)+((c[2]-o[2])^2))end
function bi(c)return{c[1],-c[2]}end
function bH(c)c=c-1
c=c|(c>>1)c=c|(c>>2)c=c|(c>>4)return c+1
end
a={}as=1
ao=3
am=aN
A={{0,0},0,0}aA=288
E=aA//2
F=128
aw=F//2
bg=1.2
ba={1,1}aP=1
ap=1
aO=500
r=100
bj=100
aG=0
P=0
U=0
R=0
aK=3002
be=32768
x={}bd=.05
C={}ak={}bF=2
an=35
aT=0
Y=0
aJ=0
ar=0
aq=0
G=1
aM=0
W=0
ab=0
Z=af
aH=0
ax=0
function bh(b,c)if b<be then
I=a[7][b]return bh(I[0<bC({I[3],I[4]},sub(c,I))and 8 or 7],c)else
return b-be
end
end
function bq(c)I=a[5][a[6][c][2]]return a[8][a[3][a[2][I[4]][I[5]+6]][6]]end
function au(i,t,at,aB)local D,j=v.drawLine,v.setColor
at=at..""
aB=a[19][aB]for b=#at,1,-1 do
_=aB[ac.byte(ac.sub(at,b,b))]i=i-aB[1]if _>0 then
d=a[23][_]q,k=d[1],d[2]w=i-d[4]+1
ah=t-d[5]for h=0,q-1 do
for f=0,k-1 do
n=d[7+f+h*k]if n~=0 then
e=a[20][n]j(e[1],e[2],e[3])D(w+h,ah+f,w+h,ah+f+1)end
end
end
end
end
end
function p(bn,aZ,aj,m)m=m or{59,59,59}v.setColor(13,0,0)v.drawText(bn+1,aZ+1,aj)v.setColor(m[1],m[2],m[3])v.drawText(bn,aZ,aj)end
function onTick()aM=0
for h=1,3 do
if ae(9)and(not am)or not a[21]then
aU=property.getText(as)b=1
s=""
_=ac.sub(aU,b,b)while _~=""do
J=ac.byte(_)if J>64 then
s=(s..J-65)+0
if G==1 then
b_=s
a[s]=a[s]or{}elseif G==2 then
bt=s
aa=0
elseif G==3 then
aI=s
else
if aa==0 then
aa=bt
aI=aI-1
aL={}a[b_][#a[b_]+1]=aL
end
aL[#aL+1]=s
aa=aa-1
G=Q(aa,aI)>0 and G-1 or 0
end
G=G+1
s=""
else
s=s.._
end
b=b+1
_=ac.sub(aU,b,b)end
as=as+1
am=aU==""
end
end
if am then
if l(10)>0 then
Z=af
ao=l(10)end
aJ=aJ+1
a[12][1][aJ%#a[12][1]+1]=az(l(11))W=a[12][1][17]if r>0 and not Z then
N={}ag[#ag+1]=N
ai=6
_=l(ai)while _~=0 do
y={}N[#N+1]=y
for b=0,8 do
y[b+1]=l(ai+b)end
ai=ai+9
_=l(ai)end
end
if ae(1)then
aT=aT+1
if Z then
for b=1,10 do
a[b]=a[b+10*ao]end
ao=ao+1
for b=#a[1],1,-1 do
_=a[1][b]_=_[5]&(aK-3000)>0 or X(a[1],b)end
for b=1,#a[8]do
a[8][b][8]={}end
for b=1,#a[6]do
_=bq(b)_[8][#_[8]+1]=b
end
ag={}end
P=P-1
if r>0 then
if S~=l(1)and l(1)>0 then
x={}_={}_[1]=a[29][l(1)]_[2]=a[16][_[1][3]]bG=_[2][1]_[3]=0
x[1]=_
end
S=l(1)aR=ae(3)if aR and S==5 then
if ab<=0 then
ab=7
else
aR=false
end
end
ab=ab-1
if aR then
_=x[1]_[2]=a[16][_[1][4]]_[3]=-1
z=a[19][6][S]if z>0 then
C[#C+1]={z,1}end
end
end
for b=#x,1,-1 do
_=x[b]if _[3]==0 then
if _[2][3]==4 then
if S==5 and ab<5 then
bf=1
else
bf=0
end
x[#x+1]={_[1],a[16][_[1][5]+bf],2}end
end
_[3]=_[3]+1
if _[3]>=_[2][2]then
if _[2][4]>2 then
_[2]=a[16][_[2][4]]_[3]=0
else
X(x,b)end
end
end
if Z then
U=50
P=an*8
aF=ao-4+"map name text start"
end
Z=aN
R=Q(R-4,0)R=bm(R+(r-l(3)+aG-l(4))*3,0,g)U=Q(U-1.5,0)r=l(3)aG,aX,aW,br=l(4)if l(2)>0 and r>0 then
_=a[2][l(2)]if _ then
if _[4]==3008 then
bc=_[5]>0 and O(_[5])br=af
elseif _[4]>3004 then
aO=Q(aO+3*(_[4]-3006),1)aW=af
elseif _[4]>3000 then
aK=_[4]aX=af
elseif _[4]>=14 and _[4]<=16 then
if a[12][1][_[4]]==0 then
P=an*4
aF=_[4]-14+"door text start"
end
end
end
end
ax=ax-1
if ax<1 then
aH=0
end
for b=1,#ag do
N=ag[b]for h=1,#N do
y=N[h]_=y[1]if _>(2^15)then
_=a[8][_-(2^15)]for f=1,6 do
_[f]=y[f+1]end
elseif _<0 then
J=a[1][-_]if J then
y=J[6]if a[16][y][5]>0 then
U=Q(U,15)P=an*4
aF=a[16][y][5]C[#C+1]={"item pickup sound index",1}if J[4]then
bk=a[15][J[4]]if bk[29]=="light amp index" then
aH=1
ax=4200
end
if bk[29]=="computer area map index" then
for f=1,#a[2]do
a[2][f][8]=a[2][f][8]or 1
end
end
end
end
end
while-_>#a[1]do
a[1][#a[1]+1]=aN
end
X(a[1],-_)else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for f=1,8 do
_[a[19][1][f]]=y[f+1]end
_[15]=0
end
end
end
ag={}_=a[1][1]A[3]=_[3]aY=((aT%64)/64)*360
aq=aq*.8+V(by(_,A[1])^2/4,16)*.2
bz=cos(aY)*aq
bs=-abs(sin(aY)*aq)A[1]={_[1],_[2]}bv=bh(#a[7],A[1])aD=bq(bv)A[2]=aD[1]+41
bB=V(aD[5]/g+aH,1)^1.3
for b=1,#aD[8]do
_=a[6][aD[8][b]]for h=_[2],_[1]+_[2]-1 do
bE=a[5][h]bx=a[2][bE[4]]bx[8]=2
end
end
bp=ae(2)if l(12)>0 and r>0 then
C[#C+1]={l(12),1}end
Y=Y-1
ar=ar-1
if not ba[S]then
ba[S]=1
ar=70
end
aS=(4-V(r//20,4))*8
if r<=0 then
ap=41
elseif ar>0 then
ap=aS+6
elseif r<bj then
Y=an
ap=aS+7
elseif Y<=0 then
Y=16
aP=aP%256+1
ap=aS+a[13][1][aP]%3
end
bj=r
end
for b=#C,1,-1 do
z=C[b]_=a[18][z[1]]if ae(1)then
B=_[z[2]]z[2]=z[2]+4
else
B=_[z[2]+2]end
if B and B>0 then
ak[#ak+1]={B,1}end
if z[2]>=#_ then
X(C,b)end
end
for b=1,32 do
aV(b,0)end
for b=#ak,1,-1 do
B=ak[b]aV(b+3,bm(az((B[1]+12)//2),1,60))B[2]=B[2]+1
if B[2]>bF then
X(ak,b)end
end
end
end
function onDraw()v=screen
local ad,j,D,aj=v.drawRectF,v.setColor,v.drawLine,v.drawText
aM=aM+1
if a[21]and not am then
d=a[25][1]q,k=d[1],d[2]i,t=E-q/2,80-k/2
for f=0,q-1 do
w=i+f
for T=0,k-1 do
n=d[5+T+f*k]if n~=0 then
e=a[20][n]j(e[1],e[2],e[3])D(w,t+T,w,t+T+1)end
end
end
end
if not bp then
for b=1,#x do
d=x[b][2][1]aQ=d>0 and bB or 1
d=a[17][abs(d)][1]d=a[23][d]q,k,aE=d[1],d[2],d[3]*.7
bl=aE*bg
i,t=E-(d[4]+160+bz)*.7,F-(d[5]+148+bs)*.7*bg
for f=0,q-1 do
w=i+f*aE
for T=0,k-1 do
n=d[7+T+f*k]if n~=0 then
e=a[20][n]j(e[1]*aQ,e[2]*aQ,e[3]*aQ)ad(w,t+T*bl,aE,bl)end
end
end
end
end
if am then
if bp then
j(0,0,0)ad(0,0,aA,F)for b=1,#a[2]do
_=a[2][b]if _[8]then
M=aC(bi(bo(sub(a[4][_[1]],A[1]),bd)),{E,aw})H=aC(bi(bo(sub(a[4][_[2]],A[1]),bd)),{E,aw})if _[8]==1 then
j(0,50,0)elseif _[3]&4>0 then
if _[4]==14 then
j(0,0,g)elseif _[4]==15 then
j(g,0,0)elseif _[4]==16 then
j(g,g,0)else
j(50,50,50)end
else
j(g,g,g)end
D(M[1],M[2],H[1],H[2])end
end
j(g,g,g)_=a[19][10]for b=1,#_,4 do
ay=sin(A[3]-90)av=cos(A[3]-90)M={_[b]*av+_[b+1]*ay,_[b+1]*av-_[b]*ay}H={_[b+2]*av+_[b+3]*ay,_[b+3]*av-_[b+2]*ay}M=aC(M,{E,aw})H=aC(H,{E,aw})D(M[1],M[2],H[1],H[2])end
end
j(g,R>0 and 0 or g,0,R+U)ad(0,0,aA,F)j(30,30,30)ad(0,F,aA,32)j(5,5,5)ad(E-16,F,32,32)d=a[23]["face textures start"+(ap)*"number of sprite mipmap levels"]q,k=d[1],d[2]i=E-q/2
for b=0,q-1 do
for h=0,k-1 do
n=d[7+h+b*k]if n~=0 then
e=a[20][n]j(e[1],e[2],e[3])D(i+b,F+1+h,i+b,F+2+h)end
end
end
for b=1,3 do
if a[12][1][13+b]>0 then
i,t=221,125+b*8
d=a[23]["key textures start"+a[19][5][b]*"number of sprite mipmap levels"]q,k=d[1],d[2]for h=0,q-1 do
for f=0,k-1 do
n=d[7+f+h*k]if n~=0 then
e=a[20][n]j(e[1],e[2],e[3])D(i+h,t+f,i+h,t+f+1)end
end
end
end
end
if P>0 then
bb=a[13][aF]i=0
t=0
for bu=1,#bb do
_=bb[bu]if _>0 then
d=a[23][_]q,k=d[1],d[2]w=i-d[4]ah=t-d[5]for b=0,q-1 do
for h=0,k-1 do
n=d[7+h+b*k]if n~=0 then
e=a[20][n]j(e[1],e[2],e[3])D(w+b,ah+h,w+b,ah+h+1)end
end
end
i=i+q
else
i=i+4
end
end
end
au(124,K,O(r).."%",16)au(218,K,O(aG).."%",16)p(124-28-15,al,"HEALTH")p(218-28-15,al,"ARMOUR")m=(W<an and W>0)and{g,0,0}p(2,K,"TPS:",m)p(26,K,W>0 and W or "N/A",m)m=aX and{g,g,44}p(2,138,"DIF:",m)bA={"EASY","MED","HARD"}p(26,138,bA[O(V(aK-3000,3))],m)m=aW and{g,g,44}p(2,145,"LOD:",m)p(26,145,O(aO),m)m=br and{g,g,44}p(2,al,"TEX:",m)bD={"FULL","HALF"}p(26,al,bc and bD[bc]or "OFF",m)p(232,K,"BULL")p(232,138,"SHEL")p(232,145,"ROKT")p(232,al,"CELL")for b=1,4 do
c=124+b*7
au(265,c,az(a[12][1][b]),15)au(285,c,az(a[19][17][b]),15)p(268,c,"/")end
else
aj(1,K,"ROM:")aj(26,K,as)end
end
