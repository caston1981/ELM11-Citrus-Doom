
ab=152
K=131
g=255
H=180
r=math
R=r.max
az=r.min
abs=r.abs
P=r.floor
sqrt=r.sqrt
k=input.getNumber
ai=input.getBool
bh=output.setNumber
pi=r.pi
aL=false
W=true
aj=table.remove
Y=string
function ar(c,o)return{(c[1]+o[1]),(c[2]+o[2])}end
function bs(c,o)return c[1]*o[2]-c[2]*o[1]end
function sub(c,o)return{(c[1]-o[1]),(c[2]-o[2])}end
function aY(c,o)return{c[1]*o,c[2]*o}end
function bF(c)return((c+H)%360)-H end
function sin(c)return r.sin(c/H*pi)end
function cos(c)return r.cos(c/H*pi)end
function tan(c)return r.tan(c/H*pi)end
function bE(c)return r.atan(c)*H/pi end
function bB(c)return r.atan(c[2],c[1])*H/pi end
function bl(c,o,bq)return az(R(o,c),bq)end
function aq(c)return P(c+.5)end
function bC(c,o)return sqrt(((c[1]-o[1])^2)+((c[2]-o[2])^2))end
function aT(c)return{c[1],-c[2]}end
function bA(c)c=c-1
c=c|(c>>1)c=c|(c>>2)c=c|(c>>4)return c+1
end
a={}aC=1
ah=3
ag=aL
F={{0,0},0,0}ax=288
C=ax//2
D=128
aB=D//2
bj=1.2
aX={1,1}aS=1
ak=1
aM=500
t=100
bg=100
aK=0
O=0
S=0
U=0
aD=3002
aU=32768
v={}ba=.05
A={}al={}bz=2
aa=35
ae=0
aI=0
as=0
I=1
aP=0
ao=0
am=0
Z=W
aJ=0
aA=0
function be(b,c)if b<aU then
G=a[7][b]return be(G[0<bs({G[3],G[4]},sub(c,G))and 8 or 7],c)else
return b-aU
end
end
function bm(c)G=a[5][a[6][c][2]]return a[8][a[3][a[2][G[4]][G[5]+6]][6]]end
function ap(i,s,aw,ay)local E,j=x.drawLine,x.setColor
aw=aw..""
ay=a[19][ay]for b=#aw,1,-1 do
_=ay[Y.byte(Y.sub(aw,b,b))]i=i-ay[1]if _>0 then
d=a[23][_]q,l=d[1],d[2]w=i-d[4]+1
an=s-d[5]for h=0,q-1 do
for f=0,l-1 do
m=d[7+f+h*l]if m~=0 then
e=a[20][m]j(e[1],e[2],e[3])E(w+h,an+f,w+h,an+f+1)end
end
end
end
end
end
function p(b_,bc,V,n)n=n or{59,59,59}x.setColor(13,0,0)x.drawText(b_+1,bc+1,V)x.setColor(n[1],n[2],n[3])x.drawText(b_,bc,V)end
function onTick()aP=0
for h=1,3 do
if ai(9)and(not ag)or not a[21]then
aN=property.getText(aC)b=1
u=""
_=Y.sub(aN,b,b)while _~=""do
L=Y.byte(_)if L>64 then
u=(u..L-65)+0
if I==1 then
bf=u
a[u]=a[u]or{}elseif I==2 then
br=u
X=0
elseif I==3 then
aE=u
else
if X==0 then
X=br
aE=aE-1
aR={}a[bf][#a[bf]+1]=aR
end
aR[#aR+1]=u
X=X-1
I=R(X,aE)>0 and I-1 or 0
end
I=I+1
u=""
else
u=u.._
end
b=b+1
_=Y.sub(aN,b,b)end
aC=aC+1
ag=aN==""
end
end
if ag then
if k(10)>0 then
Z=W
ah=k(10)end
aI=aI+1
a[12][1][aI%#a[12][1]+1]=aq(k(11))ao=a[12][1][17]if t>0 and not Z then
N={}af[#af+1]=N
ac=6
_=k(ac)while _~=0 do
y={}N[#N+1]=y
for b=0,8 do
y[b+1]=k(ac+b)end
ac=ac+9
_=k(ac)end
end
if ai(1)then
if Z then
for b=1,10 do
a[b]=a[b+10*ah]end
ah=ah+1
for b=#a[1],1,-1 do
_=a[1][b]_=_[5]&(aD-3000)>0 or aj(a[1],b)end
for b=1,#a[8]do
a[8][b][8]={}end
for b=1,#a[6]do
_=bm(b)_[8][#_[8]+1]=b
end
af={}end
O=O-1
if t>0 then
if Q~=k(1)and k(1)>0 then
v={}_={}_[1]=a[29][k(1)]_[2]=a[16][_[1][3]]bD=_[2][1]_[3]=0
v[1]=_
end
Q=k(1)aF=ai(3)if aF and Q==5 then
if am<=0 then
am=7
else
aF=false
end
end
am=am-1
if aF then
_=v[1]_[2]=a[16][_[1][4]]_[3]=-1
B=a[19][6][Q]if B>0 then
A[#A+1]={B,1}end
end
end
for b=#v,1,-1 do
_=v[b]if _[3]==0 then
if _[2][3]==4 then
if Q==5 and am<5 then
bd=1
else
bd=0
end
v[#v+1]={_[1],a[16][_[1][5]+bd],2}end
end
_[3]=_[3]+1
if _[3]>=_[2][2]then
if _[2][4]>2 then
_[2]=a[16][_[2][4]]_[3]=0
else
aj(v,b)end
end
end
if Z then
S=50
O=aa*8
aQ=ah-4+"map name text start"
end
Z=aL
U=R(U-4,0)U=bl(U+(t-k(3)+aK-k(4))*3,0,g)S=R(S-1.5,0)t=k(3)aK,bb,bo,bi=k(4)if k(2)>0 and t>0 then
_=a[2][k(2)]if _ then
if _[4]==3008 then
aZ=_[5]>0 and P(_[5])bi=W
elseif _[4]>3004 then
aM=R(aM+3*(_[4]-3006),1)bo=W
elseif _[4]>3000 then
aD=_[4]bb=W
elseif _[4]>=14 and _[4]<=16 then
if a[12][1][_[4]]==0 then
O=aa*4
aQ=_[4]-14+"door text start"
end
end
end
end
aA=aA-1
if aA<1 then
aJ=0
end
for b=1,#af do
N=af[b]for h=1,#N do
y=N[h]_=y[1]if _>(2^15)then
_=a[8][_-(2^15)]for f=1,6 do
_[f]=y[f+1]end
elseif _<0 then
L=a[1][-_]if L then
y=L[6]if a[16][y][5]>0 then
S=R(S,15)O=aa*4
aQ=a[16][y][5]A[#A+1]={"item pickup sound index",1}if L[4]then
aW=a[15][L[4]]if aW[29]=="light amp index" then
aJ=1
aA=4200
end
if aW[29]=="computer area map index" then
for f=1,#a[2]do
a[2][f][8]=a[2][f][8]or 1
end
end
end
end
end
while-_>#a[1]do
a[1][#a[1]+1]=aL
end
aj(a[1],-_)else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for f=1,8 do
_[a[19][1][f]]=y[f+1]end
_[15]=0
end
end
end
af={}_=a[1][1]F[1]={_[1],_[2]}F[3]=_[3]bu=be(#a[7],F[1])av=bm(bu)F[2]=av[1]+41
bx=az(av[5]/g+aJ,1)^1.3
for b=1,#av[8]do
_=a[6][av[8][b]]for h=_[2],_[1]+_[2]-1 do
bp=a[5][h]bw=a[2][bp[4]]bw[8]=2
end
end
aV=ai(2)if k(12)>0 and t>0 then
A[#A+1]={k(12),1}end
ae=ae-1
as=as-1
if not aX[Q]then
aX[Q]=1
as=70
end
aG=(4-az(t//20,4))*8
if t<=0 then
ak=41
elseif as>0 then
ak=aG+6
elseif t<bg then
ae=aa
ak=aG+7
elseif ae<=0 then
ae=16
aS=aS%256+1
ak=aG+a[13][1][aS]%3
end
bg=t
end
for b=#A,1,-1 do
B=A[b]_=a[18][B[1]]if ai(1)then
z=_[B[2]]B[2]=B[2]+4
else
z=_[B[2]+2]end
if z and z>0 then
al[#al+1]={z,1}end
if B[2]>=#_ then
aj(A,b)end
end
for b=1,32 do
bh(b,0)end
for b=#al,1,-1 do
z=al[b]bh(b+3,bl(aq((z[1]+12)//2),1,60))z[2]=z[2]+1
if z[2]>bz then
aj(al,b)end
end
end
end
function onDraw()x=screen
local ad,j,E,V=x.drawRectF,x.setColor,x.drawLine,x.drawText
aP=aP+1
if a[21]and not ag then
d=a[25][1]q,l=d[1],d[2]i,s=C-q/2,80-l/2
for f=0,q-1 do
w=i+f
for T=0,l-1 do
m=d[5+T+f*l]if m~=0 then
e=a[20][m]j(e[1],e[2],e[3])E(w,s+T,w,s+T+1)end
end
end
end
if not aV then
for b=1,#v do
d=v[b][2][1]aH=d>0 and bx or 1
d=a[17][abs(d)][1]d=a[23][d]q,l,aO=d[1],d[2],d[3]*.7
bk=aO*bj
i,s=C-(d[4]+160)*.7,D-(d[5]+148)*.7*bj
for f=0,q-1 do
w=i+f*aO
for T=0,l-1 do
m=d[7+T+f*l]if m~=0 then
e=a[20][m]j(e[1]*aH,e[2]*aH,e[3]*aH)ad(w,s+T*bk,aO,bk)end
end
end
end
end
if ag then
if aV then
j(0,0,0)ad(0,0,ax,D)for b=1,#a[2]do
_=a[2][b]if _[8]then
J=ar(aT(aY(sub(a[4][_[1]],F[1]),ba)),{C,aB})M=ar(aT(aY(sub(a[4][_[2]],F[1]),ba)),{C,aB})if _[8]==1 then
j(0,50,0)elseif _[3]&4>0 then
if _[4]==14 then
j(0,0,g)elseif _[4]==15 then
j(g,0,0)elseif _[4]==16 then
j(g,g,0)else
j(50,50,50)end
else
j(g,g,g)end
E(J[1],J[2],M[1],M[2])end
end
j(g,g,g)_=a[19][10]for b=1,#_,4 do
au=sin(F[3]-90)at=cos(F[3]-90)J={_[b]*at+_[b+1]*au,_[b+1]*at-_[b]*au}M={_[b+2]*at+_[b+3]*au,_[b+3]*at-_[b+2]*au}J=ar(J,{C,aB})M=ar(M,{C,aB})E(J[1],J[2],M[1],M[2])end
end
j(g,U>0 and 0 or g,0,U+S)ad(0,0,ax,D)j(30,30,30)ad(0,D,ax,32)j(5,5,5)ad(C-16,D,32,32)d=a[23]["face textures start"+(ak)*"number of sprite mipmap levels"]q,l=d[1],d[2]i=C-q/2
for b=0,q-1 do
for h=0,l-1 do
m=d[7+h+b*l]if m~=0 then
e=a[20][m]j(e[1],e[2],e[3])E(i+b,D+1+h,i+b,D+2+h)end
end
end
for b=1,3 do
if a[12][1][13+b]>0 then
i,s=221,125+b*8
d=a[23]["key textures start"+a[19][5][b]*"number of sprite mipmap levels"]q,l=d[1],d[2]for h=0,q-1 do
for f=0,l-1 do
m=d[7+f+h*l]if m~=0 then
e=a[20][m]j(e[1],e[2],e[3])E(i+h,s+f,i+h,s+f+1)end
end
end
end
end
if O>0 then
bn=a[13][aQ]i=0
s=0
for bt=1,#bn do
_=bn[bt]if _>0 then
d=a[23][_]q,l=d[1],d[2]w=i-d[4]an=s-d[5]for b=0,q-1 do
for h=0,l-1 do
m=d[7+h+b*l]if m~=0 then
e=a[20][m]j(e[1],e[2],e[3])E(w+b,an+h,w+b,an+h+1)end
end
end
i=i+q
else
i=i+4
end
end
end
ap(124,K,P(t).."%",16)ap(218,K,P(aK).."%",16)p(124-28-15,ab,"HEALTH")p(218-28-15,ab,"ARMOUR")n=(ao<aa and ao>0)and{g,0,0}p(2,K,"TPS:",n)p(26,K,ao>0 and ao or "N/A",n)n=bb and{g,g,44}p(2,138,"DIF:",n)bv={"EASY","MED","HARD"}p(26,138,bv[P(az(aD-3000,3))],n)n=bo and{g,g,44}p(2,145,"LOD:",n)p(26,145,P(aM),n)n=bi and{g,g,44}p(2,ab,"TEX:",n)by={"FULL","HALF"}p(26,ab,aZ and by[aZ]or "OFF",n)p(232,K,"BULL")p(232,138,"SHEL")p(232,145,"ROKT")p(232,ab,"CELL")for b=1,4 do
c=124+b*7
ap(265,c,aq(a[12][1][b]),15)ap(285,c,aq(a[19][17][b]),15)p(268,c,"/")end
else
V(1,K,"ROM:")V(26,K,aC)end
end
