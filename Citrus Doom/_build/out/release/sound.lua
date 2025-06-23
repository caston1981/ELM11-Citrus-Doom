
V=152
J=131
g=255
M=180
t=math
P=t.max
Z=t.min
abs=t.abs
O=t.floor
sqrt=t.sqrt
k=input.getNumber
af=input.getBool
aX=output.setNumber
pi=t.pi
aO=false
am=true
ai=table.remove
ao=string
function au(c,o)return{(c[1]+o[1]),(c[2]+o[2])}end
function bv(c,o)return c[1]*o[2]-c[2]*o[1]end
function sub(c,o)return{(c[1]-o[1]),(c[2]-o[2])}end
function bk(c,o)return{c[1]*o,c[2]*o}end
function bH(c)return((c+M)%360)-M end
function sin(c)return t.sin(c/M*pi)end
function cos(c)return t.cos(c/M*pi)end
function tan(c)return t.tan(c/M*pi)end
function bK(c)return t.atan(c)*M/pi end
function bI(c)return t.atan(c[2],c[1])*M/pi end
function aY(c,o,bF)return Z(P(o,c),bF)end
function az(c)return O(c+.5)end
function bz(c,o)return sqrt(((c[1]-o[1])^2)+((c[2]-o[2])^2))end
function bp(c)return{c[1],-c[2]}end
function bJ(c)c=c-1
c=c|(c>>1)c=c|(c>>2)c=c|(c>>4)return c+1
end
a={}aq=1
ag=3
Y=aO
z={{0,0},0,0}aD=288
D=aD//2
F=128
aB=F//2
ba=1.2
br={1,1}aK=1
ab=1
aH=500
r=100
bj=100
aQ=0
Q=0
U=0
N=0
aM=3002
b_=32768
v={}bn=.05
C={}ad={}by=2
ac=35
aG=0
ap=0
aN=0
at=0
aw=0
G=1
aE=0
ah=0
an=0
ae=am
aF=0
av=0
function bc(b,c)if b<b_ then
I=a[7][b]return bc(I[0<bv({I[3],I[4]},sub(c,I))and 8 or 7],c)else
return b-b_
end
end
function aV(c)I=a[5][a[6][c][2]]return a[8][a[3][a[2][I[4]][I[5]+6]][6]]end
function as(i,s,ax,aA)local E,l=w.drawLine,w.setColor
ax=ax..""
aA=a[19][aA]for b=#ax,1,-1 do
_=aA[ao.byte(ao.sub(ax,b,b))]i=i-aA[1]if _>0 then
d=a[23][_]q,j=d[1],d[2]x=i-d[4]+1
al=s-d[5]for h=0,q-1 do
for f=0,j-1 do
m=d[7+f+h*j]if m~=0 then
e=a[20][m]l(e[1],e[2],e[3])E(x+h,al+f,x+h,al+f+1)end
end
end
end
end
end
function p(bi,bq,W,n)n=n or{59,59,59}w.setColor(13,0,0)w.drawText(bi+1,bq+1,W)w.setColor(n[1],n[2],n[3])w.drawText(bi,bq,W)end
function onTick()aE=0
for h=1,3 do
if af(9)and(not Y)or not a[21]then
aT=property.getText(aq)b=1
u=""
_=ao.sub(aT,b,b)while _~=""do
H=ao.byte(_)if H>64 then
u=(u..H-65)+0
if G==1 then
bh=u
a[u]=a[u]or{}elseif G==2 then
bB=u
X=0
elseif G==3 then
aU=u
else
if X==0 then
X=bB
aU=aU-1
aJ={}a[bh][#a[bh]+1]=aJ
end
aJ[#aJ+1]=u
X=X-1
G=P(X,aU)>0 and G-1 or 0
end
G=G+1
u=""
else
u=u.._
end
b=b+1
_=ao.sub(aT,b,b)end
aq=aq+1
Y=aT==""
end
end
if Y then
if k(10)>0 then
ae=am
ag=k(10)end
aN=aN+1
a[12][1][aN%#a[12][1]+1]=az(k(11))ah=a[12][1][17]if r>0 and not ae then
S={}aa[#aa+1]=S
ak=6
_=k(ak)while _~=0 do
B={}S[#S+1]=B
for b=0,8 do
B[b+1]=k(ak+b)end
ak=ak+9
_=k(ak)end
end
if af(1)then
aG=aG+1
if ae then
for b=1,10 do
a[b]=a[b+10*ag]end
ag=ag+1
for b=#a[1],1,-1 do
_=a[1][b]_=_[5]&(aM-3000)>0 or ai(a[1],b)end
for b=1,#a[8]do
a[8][b][8]={}end
for b=1,#a[6]do
_=aV(b)_[8][#_[8]+1]=b
end
aa={}end
Q=Q-1
if r>0 then
if T~=k(1)and k(1)>0 then
v={}_={}_[1]=a[29][k(1)]_[2]=a[16][_[1][3]]bG=_[2][1]_[3]=0
v[1]=_
end
T=k(1)aS=af(3)if aS and T==5 then
if an<=0 then
an=7
else
aS=false
end
end
an=an-1
if aS then
_=v[1]_[2]=a[16][_[1][4]]_[3]=-1
A=a[19][6][T]if A>0 then
C[#C+1]={A,1}end
end
end
for b=#v,1,-1 do
_=v[b]if _[3]==0 then
if _[2][3]==4 then
if T==5 and an<5 then
aW=1
else
aW=0
end
v[#v+1]={_[1],a[16][_[1][5]+aW],2}end
end
_[3]=_[3]+1
if _[3]>=_[2][2]then
if _[2][4]>2 then
_[2]=a[16][_[2][4]]_[3]=0
else
ai(v,b)end
end
end
if ae then
U=50
Q=ac*8
aL=ag-4+"map name text start"
end
ae=aO
N=P(N-4,0)N=aY(N+(r-k(3)+aQ-k(4))*3,0,g)U=P(U-1.5,0)r=k(3)aQ,bl,be,bm=k(4)if k(2)>0 and r>0 then
_=a[2][k(2)]if _ then
if _[4]==3008 then
bf=_[5]>0 and O(_[5])bm=am
elseif _[4]>3004 then
aH=P(aH+3*(_[4]-3006),1)be=am
elseif _[4]>3000 then
aM=_[4]bl=am
elseif _[4]>=14 and _[4]<=16 then
if a[12][1][_[4]]==0 then
Q=ac*4
aL=_[4]-14+"door text start"
end
end
end
end
av=av-1
if av<1 then
aF=0
end
for b=1,#aa do
S=aa[b]for h=1,#S do
B=S[h]_=B[1]if _>(2^15)then
_=a[8][_-(2^15)]for f=1,6 do
_[f]=B[f+1]end
elseif _<0 then
H=a[1][-_]if H then
B=H[6]if a[16][B][5]>0 then
U=P(U,15)Q=ac*4
aL=a[16][B][5]C[#C+1]={"item pickup sound index",1}if H[4]then
bb=a[15][H[4]]if bb[29]=="light amp index" then
aF=1
av=4200
end
if bb[29]=="computer area map index" then
for f=1,#a[2]do
a[2][f][8]=a[2][f][8]or 1
end
end
end
end
end
while-_>#a[1]do
a[1][#a[1]+1]=aO
end
ai(a[1],-_)else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for f=1,8 do
_[a[19][1][f]]=B[f+1]end
_[15]=0
end
end
end
aa={}_=a[1][1]z[3]=_[3]aZ=((aG%64)/64)*360
aw=aw*.8+Z(bz(_,z[1])^2/4,16)*.2
bt=cos(aZ)*aw
bC=-abs(sin(aZ)*aw)-(r>0 and 0 and 300)z[1]={_[1],_[2]}bA=bc(#a[7],z[1])ar=aV(bA)z[2]=ar[1]+41
bx=Z(ar[5]/g+aF,1)^1.3
for b=1,#ar[8]do
_=a[6][ar[8][b]]for h=_[2],_[1]+_[2]-1 do
bD=a[5][h]bE=a[2][bD[4]]bE[8]=2
end
end
bo=af(2)if k(12)>0 and r>0 then
C[#C+1]={k(12),1}end
ap=ap-1
at=at-1
if not br[T]then
br[T]=1
at=70
end
aR=(4-Z(r//20,4))*8
if r<=0 then
ab=41
elseif at>0 then
ab=aR+6
elseif r<bj then
ap=ac
ab=aR+7
elseif ap<=0 then
ap=16
aK=aK%256+1
ab=aR+a[13][1][aK]%3
end
bj=r
end
for b=#C,1,-1 do
A=C[b]_=a[18][A[1]]if af(1)then
y=_[A[2]]A[2]=A[2]+4
else
y=_[A[2]+2]end
if y and y>0 then
ad[#ad+1]={y,1}end
if A[2]>=#_ then
ai(C,b)end
end
for b=1,32 do
aX(b,0)end
for b=#ad,1,-1 do
y=ad[b]aX(b+3,aY(az((y[1]+12)//2),1,60))y[2]=y[2]+1
if y[2]>by then
ai(ad,b)end
end
end
end
function onDraw()w=screen
local aj,l,E,W=w.drawRectF,w.setColor,w.drawLine,w.drawText
aE=aE+1
if a[21]and not Y then
d=a[25][1]q,j=d[1],d[2]i,s=D-q/2,80-j/2
for f=0,q-1 do
x=i+f
for R=0,j-1 do
m=d[5+R+f*j]if m~=0 then
e=a[20][m]l(e[1],e[2],e[3])E(x,s+R,x,s+R+1)end
end
end
end
if not bo then
for b=1,#v do
d=v[b][2][1]aI=d>0 and bx or 1
d=a[17][abs(d)][1]d=a[23][d]q,j,aP=d[1],d[2],d[3]*.7
bg=aP*ba
i,s=D-(d[4]+160+bt)*.7,F-(d[5]+148+bC)*.7*ba
for f=0,q-1 do
x=i+f*aP
for R=0,j-1 do
m=d[7+R+f*j]if m~=0 then
e=a[20][m]l(e[1]*aI,e[2]*aI,e[3]*aI)aj(x,s+R*bg,aP,bg)end
end
end
end
end
if Y then
if bo then
l(0,0,0)aj(0,0,aD,F)for b=1,#a[2]do
_=a[2][b]if _[8]then
L=au(bp(bk(sub(a[4][_[1]],z[1]),bn)),{D,aB})K=au(bp(bk(sub(a[4][_[2]],z[1]),bn)),{D,aB})if _[8]==1 then
l(0,50,0)elseif _[3]&4>0 then
if _[4]==14 then
l(0,0,g)elseif _[4]==15 then
l(g,0,0)elseif _[4]==16 then
l(g,g,0)else
l(50,50,50)end
else
l(g,g,g)end
E(L[1],L[2],K[1],K[2])end
end
l(g,g,g)_=a[19][10]for b=1,#_,4 do
aC=sin(z[3]-90)ay=cos(z[3]-90)L={_[b]*ay+_[b+1]*aC,_[b+1]*ay-_[b]*aC}K={_[b+2]*ay+_[b+3]*aC,_[b+3]*ay-_[b+2]*aC}L=au(L,{D,aB})K=au(K,{D,aB})E(L[1],L[2],K[1],K[2])end
end
l(g,N>0 and 0 or g,0,N+U)aj(0,0,aD,F)l(30,30,30)aj(0,F,aD,32)l(5,5,5)aj(D-16,F,32,32)d=a[23]["face textures start"+(ab)*"number of sprite mipmap levels"]q,j=d[1],d[2]i=D-q/2
for b=0,q-1 do
for h=0,j-1 do
m=d[7+h+b*j]if m~=0 then
e=a[20][m]l(e[1],e[2],e[3])E(i+b,F+1+h,i+b,F+2+h)end
end
end
for b=1,3 do
if a[12][1][13+b]>0 then
i,s=221,125+b*8
d=a[23]["key textures start"+a[19][5][b]*"number of sprite mipmap levels"]q,j=d[1],d[2]for h=0,q-1 do
for f=0,j-1 do
m=d[7+f+h*j]if m~=0 then
e=a[20][m]l(e[1],e[2],e[3])E(i+h,s+f,i+h,s+f+1)end
end
end
end
end
if Q>0 then
bd=a[13][aL]i=0
s=0
for bw=1,#bd do
_=bd[bw]if _>0 then
d=a[23][_]q,j=d[1],d[2]x=i-d[4]al=s-d[5]for b=0,q-1 do
for h=0,j-1 do
m=d[7+h+b*j]if m~=0 then
e=a[20][m]l(e[1],e[2],e[3])E(x+b,al+h,x+b,al+h+1)end
end
end
i=i+q
else
i=i+4
end
end
end
as(124,J,O(r).."%",16)as(218,J,O(aQ).."%",16)p(124-28-15,V,"HEALTH")p(218-28-15,V,"ARMOUR")n=(ah<ac and ah>0)and{g,0,0}p(2,J,"TPS:",n)p(26,J,ah>0 and ah or "N/A",n)n=bl and{g,g,44}p(2,138,"DIF:",n)bu={"EASY","MED","HARD"}p(26,138,bu[O(Z(aM-3000,3))],n)n=be and{g,g,44}p(2,145,"LOD:",n)p(26,145,O(aH),n)n=bm and{g,g,44}p(2,V,"TEX:",n)bs={"FULL","HALF"}p(26,V,bf and bs[bf]or "OFF",n)p(232,J,"BULL")p(232,138,"SHEL")p(232,145,"ROKT")p(232,V,"CELL")for b=1,4 do
c=124+b*7
as(265,c,az(a[12][1][b]),15)as(285,c,az(a[19][17][b]),15)p(268,c,"/")end
else
W(1,J,"ROM:")W(26,J,aq)end
end
