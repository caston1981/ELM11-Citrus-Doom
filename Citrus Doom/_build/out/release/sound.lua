
ad=152
I=131
g=255
J=180
r=math
U=r.max
aB=r.min
abs=r.abs
Q=r.floor
sqrt=r.sqrt
k=input.getNumber
V=input.getBool
bg=output.setNumber
pi=r.pi
aD=false
Y=true
ae=table.remove
aa=string
function az(c,o)return{(c[1]+o[1]),(c[2]+o[2])}end
function bt(c,o)return c[1]*o[2]-c[2]*o[1]end
function sub(c,o)return{(c[1]-o[1]),(c[2]-o[2])}end
function bo(c,o)return{c[1]*o,c[2]*o}end
function bB(c)return((c+J)%360)-J end
function sin(c)return r.sin(c/J*pi)end
function cos(c)return r.cos(c/J*pi)end
function tan(c)return r.tan(c/J*pi)end
function bA(c)return r.atan(c)*J/pi end
function bF(c)return r.atan(c[2],c[1])*J/pi end
function bf(c,o,by)return aB(U(o,c),by)end
function ar(c)return Q(c+.5)end
function bE(c,o)return sqrt(((c[1]-o[1])^2)+((c[2]-o[2])^2))end
function aW(c)return{c[1],-c[2]}end
function bD(c)c=c-1
c=c|(c>>1)c=c|(c>>2)c=c|(c>>4)return c+1
end
a={}ap=1
ah=3
ai=aD
C={{0,0},0,0}at=288
F=at//2
D=128
av=D//2
bm=1.2
aY={1,1}aP=1
ak=1
aK=500
u=100
aU=100
aS=0
T=0
P=0
O=0
aG=3002
aZ=32768
w={}aT=.05
B={}Z={}bx=2
X=35
af=0
aR=0
aw=0
K=1
aI=0
aj=0
am=0
ao=Y
aQ=0
aA=0
function be(b,c)if b<aZ then
M=a[7][b]return be(M[0<bt({M[3],M[4]},sub(c,M))and 8 or 7],c)else
return b-aZ
end
end
function bk(c)M=a[5][a[6][c][2]]return a[8][a[3][a[2][M[4]][M[5]+6]][6]]end
function as(i,t,aC,aq)local E,j=v.drawLine,v.setColor
aC=aC..""
aq=a[19][aq]for b=#aC,1,-1 do
_=aq[aa.byte(aa.sub(aC,b,b))]i=i-aq[1]if _>0 then
d=a[23][_]q,l=d[1],d[2]x=i-d[4]+1
ab=t-d[5]for h=0,q-1 do
for f=0,l-1 do
n=d[7+f+h*l]if n~=0 then
e=a[20][n]j(e[1],e[2],e[3])E(x+h,ab+f,x+h,ab+f+1)end
end
end
end
end
end
function p(bn,bl,W,m)m=m or{59,59,59}v.setColor(13,0,0)v.drawText(bn+1,bl+1,W)v.setColor(m[1],m[2],m[3])v.drawText(bn,bl,W)end
function onTick()aI=0
for h=1,3 do
if V(9)and(not ai)or not a[21]then
aN=property.getText(ap)b=1
s=""
_=aa.sub(aN,b,b)while _~=""do
G=aa.byte(_)if G>64 then
s=(s..G-65)+0
if K==1 then
b_=s
a[s]=a[s]or{}elseif K==2 then
bq=s
ac=0
elseif K==3 then
aF=s
else
if ac==0 then
ac=bq
aF=aF-1
aE={}a[b_][#a[b_]+1]=aE
end
aE[#aE+1]=s
ac=ac-1
K=U(ac,aF)>0 and K-1 or 0
end
K=K+1
s=""
else
s=s.._
end
b=b+1
_=aa.sub(aN,b,b)end
ap=ap+1
ai=aN==""
end
end
if ai then
if k(10)>0 then
ao=Y
ah=k(10)end
aR=aR+1
a[12][1][aR%#a[12][1]+1]=ar(k(11))aj=a[12][1][17]if u>0 and not ao then
S={}al[#al+1]=S
ag=6
_=k(ag)while _~=0 do
y={}S[#S+1]=y
for b=0,8 do
y[b+1]=k(ag+b)end
ag=ag+9
_=k(ag)end
end
if V(1)then
if ao then
for b=1,10 do
a[b]=a[b+10*ah]end
ah=ah+1
for b=#a[1],1,-1 do
_=a[1][b]_=_[5]&(aG-3000)>0 or ae(a[1],b)end
for b=1,#a[8]do
a[8][b][8]={}end
for b=1,#a[6]do
_=bk(b)_[8][#_[8]+1]=b
end
al={}end
T=T-1
if u>0 then
if R~=k(1)and k(1)>0 then
w={}_={}_[1]=a[29][k(1)]_[2]=a[16][_[1][3]]bC=_[2][1]_[3]=0
w[1]=_
end
R=k(1)aO=V(3)if aO and R==5 then
if am<=0 then
am=7
else
aO=false
end
end
am=am-1
if aO then
_=w[1]_[2]=a[16][_[1][4]]_[3]=-1
z=a[19][6][R]if z>0 then
B[#B+1]={z,1}end
end
end
for b=#w,1,-1 do
_=w[b]if _[3]==0 then
if _[2][3]==4 then
if R==5 and am<5 then
aV=1
else
aV=0
end
w[#w+1]={_[1],a[16][_[1][5]+aV],2}end
end
_[3]=_[3]+1
if _[3]>=_[2][2]then
if _[2][4]>2 then
_[2]=a[16][_[2][4]]_[3]=0
else
ae(w,b)end
end
end
if ao then
P=50
T=X*8
aJ=ah-4+"map name text start"
end
ao=aD
O=U(O-4,0)O=bf(O+(u-k(3)+aS-k(4))*3,0,g)P=U(P-1.5,0)u=k(3)aS,aX,bh,bd=k(4)if k(2)>0 and u>0 then
_=a[2][k(2)]if _ then
if _[4]==3008 then
bc=_[5]>0 and Q(_[5])bd=Y
elseif _[4]>3004 then
aK=U(aK+3*(_[4]-3006),1)bh=Y
elseif _[4]>3000 then
aG=_[4]aX=Y
elseif _[4]>=14 and _[4]<=16 then
if a[12][1][_[4]]==0 then
T=X*4
aJ=_[4]-14+"door text start"
end
end
end
end
aA=aA-1
if aA<1 then
aQ=0
end
for b=1,#al do
S=al[b]for h=1,#S do
y=S[h]_=y[1]if _>(2^15)then
_=a[8][_-(2^15)]for f=1,6 do
_[f]=y[f+1]end
elseif _<0 then
G=a[1][-_]if G then
y=G[6]if a[16][y][5]>0 then
P=U(P,15)T=X*4
aJ=a[16][y][5]B[#B+1]={"item pickup sound index",1}if G[4]then
bi=a[15][G[4]]if bi[29]=="light amp index" then
aQ=1
aA=4200
end
if bi[29]=="computer area map index" then
for f=1,#a[2]do
a[2][f][8]=a[2][f][8]or 1
end
end
end
end
end
while-_>#a[1]do
a[1][#a[1]+1]=aD
end
ae(a[1],-_)else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for f=1,8 do
_[a[19][1][f]]=y[f+1]end
_[15]=0
end
end
end
al={}_=a[1][1]C[1]={_[1],_[2]}C[3]=_[3]br=be(#a[7],C[1])ay=bk(br)C[2]=ay[1]+41
bp=aB(ay[5]/g+aQ,1)^1.3
for b=1,#ay[8]do
_=a[6][ay[8][b]]for h=_[2],_[1]+_[2]-1 do
bs=a[5][h]bv=a[2][bs[4]]bv[8]=2
end
end
bb=V(2)if k(12)>0 and u>0 then
B[#B+1]={k(12),1}end
af=af-1
aw=aw-1
if not aY[R]then
aY[R]=1
aw=70
end
aH=(4-aB(u//20,4))*8
if u<=0 then
ak=41
elseif aw>0 then
ak=aH+6
elseif u<aU then
af=X
ak=aH+7
elseif af<=0 then
af=16
aP=aP%256+1
ak=aH+a[13][1][aP]%3
end
aU=u
end
for b=#B,1,-1 do
z=B[b]_=a[18][z[1]]if V(1)then
A=_[z[2]]z[2]=z[2]+4
else
A=_[z[2]+2]end
if A and A>0 then
Z[#Z+1]={A,1}end
if z[2]>=#_ then
ae(B,b)end
end
for b=1,32 do
bg(b,0)end
for b=#Z,1,-1 do
A=Z[b]bg(b+3,bf(ar((A[1]+12)//2),1,60))A[2]=A[2]+1
if A[2]>bx then
ae(Z,b)end
end
end
end
function onDraw()v=screen
local an,j,E,W=v.drawRectF,v.setColor,v.drawLine,v.drawText
aI=aI+1
if a[21]and not ai then
d=a[25][1]q,l=d[1],d[2]i,t=F-q/2,80-l/2
for f=0,q-1 do
x=i+f
for N=0,l-1 do
n=d[5+N+f*l]if n~=0 then
e=a[20][n]j(e[1],e[2],e[3])E(x,t+N,x,t+N+1)end
end
end
end
if not bb then
for b=1,#w do
d=w[b][2][1]aM=d>0 and bp or 1
d=a[17][abs(d)][1]d=a[23][d]q,l,aL=d[1],d[2],d[3]*.7
ba=aL*bm
i,t=F-(d[4]+160)*.7,D-(d[5]+148)*.7*bm
for f=0,q-1 do
x=i+f*aL
for N=0,l-1 do
n=d[7+N+f*l]if n~=0 then
e=a[20][n]j(e[1]*aM,e[2]*aM,e[3]*aM)an(x,t+N*ba,aL,ba)end
end
end
end
end
if ai then
if bb then
j(0,0,0)an(0,0,at,D)for b=1,#a[2]do
_=a[2][b]if _[8]then
L=az(aW(bo(sub(a[4][_[1]],C[1]),aT)),{F,av})H=az(aW(bo(sub(a[4][_[2]],C[1]),aT)),{F,av})if _[8]==1 then
j(0,50,0)elseif _[3]&4>0 then
if _[4]==14 then
j(0,0,g)elseif _[4]==15 then
j(g,0,0)elseif _[4]==16 then
j(g,g,0)else
j(50,50,50)end
else
j(g,g,g)end
E(L[1],L[2],H[1],H[2])end
end
j(g,g,g)_=a[19][10]for b=1,#_,4 do
ax=sin(C[3]-90)au=cos(C[3]-90)L={_[b]*au+_[b+1]*ax,_[b+1]*au-_[b]*ax}H={_[b+2]*au+_[b+3]*ax,_[b+3]*au-_[b+2]*ax}L=az(L,{F,av})H=az(H,{F,av})E(L[1],L[2],H[1],H[2])end
end
j(g,O>0 and 0 or g,0,O+P)an(0,0,at,D)j(30,30,30)an(0,D,at,32)j(5,5,5)an(F-16,D,32,32)d=a[23]["face textures start"+(ak)*"number of sprite mipmap levels"]q,l=d[1],d[2]i=F-q/2
for b=0,q-1 do
for h=0,l-1 do
n=d[7+h+b*l]if n~=0 then
e=a[20][n]j(e[1],e[2],e[3])E(i+b,D+1+h,i+b,D+2+h)end
end
end
for b=1,3 do
if a[12][1][13+b]>0 then
i,t=221,125+b*8
d=a[23]["key textures start"+a[19][5][b]*"number of sprite mipmap levels"]q,l=d[1],d[2]for h=0,q-1 do
for f=0,l-1 do
n=d[7+f+h*l]if n~=0 then
e=a[20][n]j(e[1],e[2],e[3])E(i+h,t+f,i+h,t+f+1)end
end
end
end
end
if T>0 then
bj=a[13][aJ]i=0
t=0
for bw=1,#bj do
_=bj[bw]if _>0 then
d=a[23][_]q,l=d[1],d[2]x=i-d[4]ab=t-d[5]for b=0,q-1 do
for h=0,l-1 do
n=d[7+h+b*l]if n~=0 then
e=a[20][n]j(e[1],e[2],e[3])E(x+b,ab+h,x+b,ab+h+1)end
end
end
i=i+q
else
i=i+4
end
end
end
as(124,I,Q(u).."%",16)as(218,I,Q(aS).."%",16)p(124-28-15,ad,"HEALTH")p(218-28-15,ad,"ARMOUR")m=(aj<X and aj>0)and{g,0,0}p(2,I,"TPS:",m)p(26,I,aj>0 and aj or "N/A",m)m=aX and{g,g,44}p(2,138,"DIF:",m)bz={"EASY","MED","HARD"}p(26,138,bz[Q(aB(aG-3000,3))],m)m=bh and{g,g,44}p(2,145,"LOD:",m)p(26,145,Q(aK),m)m=bd and{g,g,44}p(2,ad,"TEX:",m)bu={"FULL","HALF"}p(26,ad,bc and bu[bc]or "OFF",m)p(232,I,"BULL")p(232,138,"SHEL")p(232,145,"ROKT")p(232,ad,"CELL")for b=1,4 do
c=124+b*7
as(265,c,ar(a[12][1][b]),15)as(285,c,ar(a[19][17][b]),15)p(268,c,"/")end
else
W(1,I,"ROM:")W(26,I,ap)end
end
