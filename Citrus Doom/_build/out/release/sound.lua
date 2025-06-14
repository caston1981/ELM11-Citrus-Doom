
U=152
J=131
v=255
H=180
p=math
N=p.max
aq=p.min
abs=p.abs
ac=p.floor
sqrt=p.sqrt
j=input.getNumber
ak=input.getBool
aW=output.setNumber
pi=p.pi
aI=false
aY=true
Y=table.remove
aj=string
function au(c,l)return{(c[1]+l[1]),(c[2]+l[2])}end
function bm(c,l)return c[1]*l[2]-c[2]*l[1]end
function sub(c,l)return{(c[1]-l[1]),(c[2]-l[2])}end
function aU(c,l)return{c[1]*l,c[2]*l}end
function br(c)return((c+H)%360)-H end
function sin(c)return p.sin(c/H*pi)end
function cos(c)return p.cos(c/H*pi)end
function tan(c)return p.tan(c/H*pi)end
function bp(c)return p.atan(c)*H/pi end
function bt(c)return p.atan(c[2],c[1])*H/pi end
function aR(c,l,bi)return aq(N(l,c),bi)end
function ar(c)return ac(c+.5)end
function bq(c,l)return sqrt(((c[1]-l[1])^2)+((c[2]-l[2])^2))end
function aX(c)return{c[1],-c[2]}end
function bu(c)c=c-1
c=c|(c>>1)c=c|(c>>2)c=c|(c>>4)return c+1
end
a={}ae=1
T=3
ad=aI
B={{0,0},0,0}as=288
D=as//2
E=128
aw=E//2
ba=1.2
bc={1,1}ay=1
ag=1
T=3
aL=400
z=100
aZ=100
aA=0
al=0
P=0
Q=0
aK=3002
aM=32768
u={}aS=.05
A={}ai={}bo=2
ah=0
az=0
av=0
I=1
aF=0
X=0
W=aY
function aV(b,c)if b<aM then
G=a[7][b]return aV(G[0<bm({G[3],G[4]},sub(c,G))and 8 or 7],c)else
return b-aM
end
end
function bb(c)G=a[5][a[6][c][2]]return a[8][a[3][a[2][G[4]][G[5]+6]][6]]end
function ao(h,q,ap,ax)local C,n=t.drawLine,t.setColor
ap=ap..""
ax=a[19][ax]for b=#ap,1,-1 do
_=ax[aj.byte(aj.sub(ap,b,b))]h=h-ax[1]if _>0 then
d=a[23][_]o,i=d[1],d[2]s=h-d[4]+1
af=q-d[5]for g=0,o-1 do
for f=0,i-1 do
k=d[7+f+g*i]if k~=0 then
e=a[20][k]n(e[1],e[2],e[3])C(s+g,af+f,s+g,af+f+1)end
end
end
end
end
end
function m(b_,aO,ab)t.setColor(13,0,0)t.drawText(b_+1,aO+1,ab)t.setColor(59,59,59)t.drawText(b_,aO,ab)end
function onTick()aF=0
for g=1,3 do
if ak(9)and(not ad)or not a[21]then
aJ=property.getText(ae)b=1
r=""
_=aj.sub(aJ,b,b)while _~=""do
F=aj.byte(_)if F>64 then
r=(r..F-65)+0
if I==1 then
aN=r
a[r]=a[r]or{}elseif I==2 then
be=r
S=0
elseif I==3 then
aD=r
else
if S==0 then
S=be
aD=aD-1
aE={}a[aN][#a[aN]+1]=aE
end
aE[#aE+1]=r
S=S-1
I=N(S,aD)>0 and I-1 or 0
end
I=I+1
r=""
else
r=r.._
end
b=b+1
_=aj.sub(aJ,b,b)end
ae=ae+1
ad=aJ==""
end
end
if ad then
if j(10)>0 then
W=aY
T=j(10)end
az=az+1
a[12][1][az%#a[12][1]+1]=ar(j(11))if z>0 and not W then
M={}Z[#Z+1]=M
V=6
_=j(V)while _~=0 do
x={}M[#M+1]=x
for b=0,8 do
x[b+1]=j(V+b)end
V=V+9
_=j(V)end
end
if ak(1)then
if W then
for b=1,10 do
a[b]=a[b+10*T]end
T=T+1
W=aI
for b=#a[1],1,-1 do
_=a[1][b]_=_[5]&(aK-3000)>0 or Y(a[1],b)end
for b=1,#a[8]do
a[8][b][8]={}end
for b=1,#a[6]do
_=bb(b)_[8][#_[8]+1]=b
end
Z={}end
al=al-1
if z>0 then
if R~=j(1)and j(1)>0 then
u={}_={}_[1]=a[29][j(1)]_[2]=a[16][_[1][3]]bs=_[2][1]_[3]=0
u[1]=_
end
R=j(1)aC=ak(3)if aC and R==5 then
if X<=0 then
X=7
else
aC=false
end
end
X=X-1
if aC then
_=u[1]_[2]=a[16][_[1][4]]_[3]=-1
y=a[19][6][R]if y>0 then
A[#A+1]={y,1}end
end
end
for b=#u,1,-1 do
_=u[b]if _[3]==0 then
if _[2][3]==4 then
if R==5 and X<5 then
bd=1
else
bd=0
end
u[#u+1]={_[1],a[16][_[1][5]+bd],2}end
end
_[3]=_[3]+1
if _[3]>=_[2][2]then
if _[2][4]>2 then
_[2]=a[16][_[2][4]]_[3]=0
else
Y(u,b)end
end
end
if W then
P=50
end
Q=N(Q-4,0)Q=aR(Q+(z-j(3)+aA-j(4))*3,0,v)P=N(P-1.5,0)z=j(3)aA=j(4)if j(2)>0 then
_=a[2][j(2)]if _ then
if _[4]>3004 and _[4]<3008 then
aL=N(aL+3*(_[4]-3006),1)elseif _[4]>3000 then
aK=_[4]end
end
end
for b=1,#Z do
M=Z[b]for g=1,#M do
x=M[g]_=x[1]if _>(2^15)then
_=a[8][_-(2^15)]for f=1,6 do
_[f]=x[f+1]end
elseif _<0 then
F=a[1][-_]if F then
x=F[6]if a[16][x][5]>0 then
P=N(P,15)al=35
bn=a[16][x][5]A[#A+1]={"item pickup sound index",1}if F[4]then
bk=a[15][F[4]]if bk[29]==a[19][13][1]then
for f=1,#a[2]do
a[2][f][8]=a[2][f][8]or 1
end
end
end
end
end
while-_>#a[1]do
a[1][#a[1]+1]=aI
end
Y(a[1],-_)else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for f=1,8 do
_[a[19][1][f]]=x[f+1]end
_[15]=0
end
end
end
Z={}_=a[1][1]B[1]={_[1],_[2]}B[3]=_[3]bg=aV(#a[7],B[1])at=bb(bg)B[2]=at[1]+41
bh=aq(at[5]/v,1)^1.3
for b=1,#at[8]do
_=a[6][at[8][b]]for g=_[2],_[1]+_[2]-1 do
bj=a[5][g]bl=a[2][bj[4]]bl[8]=2
end
end
aQ=ak(2)if j(12)>0 then
A[#A+1]={j(12),1}end
ah=ah-1
av=av-1
if not bc[R]then
bc[R]=1
av=70
end
aB=(4-aq(z//20,4))*8
if z<=0 then
ag=41
elseif av>0 then
ag=aB+6
elseif z<aZ then
ah=35
ag=aB+7
elseif ah<=0 then
ah=16
ay=ay%256+1
ag=aB+a[13][1][ay]%3
end
aZ=z
end
for b=#A,1,-1 do
y=A[b]_=a[18][y[1]]if ak(1)then
w=_[y[2]]y[2]=y[2]+4
else
w=_[y[2]+2]end
if w and w>0 then
ai[#ai+1]={w,1}end
if y[2]>=#_ then
Y(A,b)end
end
for b=1,32 do
aW(b,0)end
for b=#ai,1,-1 do
w=ai[b]aW(b+3,aR(ar((w[1]+12)//2),1,60))w[2]=w[2]+1
if w[2]>bo then
Y(ai,b)end
end
end
end
function onDraw()t=screen
local aa,n,C,ab=t.drawRectF,t.setColor,t.drawLine,t.drawText
aF=aF+1
if a[21]and not ad then
d=a[25][1]o,i=d[1],d[2]h,q=D-o/2,80-i/2
for f=0,o-1 do
s=h+f
for O=0,i-1 do
k=d[5+O+f*i]if k~=0 then
e=a[20][k]n(e[1],e[2],e[3])C(s,q+O,s,q+O+1)end
end
end
end
if not aQ then
for b=1,#u do
d=u[b][2][1]aG=d>0 and bh or 1
d=a[17][abs(d)][1]d=a[23][d]o,i,aH=d[1],d[2],d[3]*.7
aP=aH*ba
h,q=D-(d[4]+160)*.7,E-(d[5]+148)*.7*ba
for f=0,o-1 do
s=h+f*aH
for O=0,i-1 do
k=d[7+O+f*i]if k~=0 then
e=a[20][k]n(e[1]*aG,e[2]*aG,e[3]*aG)aa(s,q+O*aP,aH,aP)end
end
end
end
end
if ad then
if aQ then
n(0,0,0)aa(0,0,as,E)for b=1,#a[2]do
_=a[2][b]if _[8]then
K=au(aX(aU(sub(a[4][_[1]],B[1]),aS)),{D,aw})L=au(aX(aU(sub(a[4][_[2]],B[1]),aS)),{D,aw})if _[8]==1 then
n(0,50,0)elseif _[3]&4>0 then
n(50,50,50)else
n(v,v,v)end
C(K[1],K[2],L[1],L[2])end
end
n(v,v,v)_=a[19][10]for b=1,#_,4 do
am=sin(B[3]-90)an=cos(B[3]-90)K={_[b]*an+_[b+1]*am,_[b+1]*an-_[b]*am}L={_[b+2]*an+_[b+3]*am,_[b+3]*an-_[b+2]*am}K=au(K,{D,aw})L=au(L,{D,aw})C(K[1],K[2],L[1],L[2])end
end
n(v,Q>0 and 0 or v,0,Q+P)aa(0,0,as,E)n(30,30,30)aa(0,E,as,32)n(5,5,5)aa(D-16,E,32,32)d=a[23]["face textures start"+(ag)*"number of sprite mipmap levels"]o,i=d[1],d[2]h=D-o/2
for b=0,o-1 do
for g=0,i-1 do
k=d[7+g+b*i]if k~=0 then
e=a[20][k]n(e[1],e[2],e[3])C(h+b,E+1+g,h+b,E+2+g)end
end
end
for b=1,3 do
if a[12][1][13+b]>0 then
h,q=221,125+b*8
d=a[23]["key textures start"+a[19][5][b]*"number of sprite mipmap levels"]o,i=d[1],d[2]for g=0,o-1 do
for f=0,i-1 do
k=d[7+f+g*i]if k~=0 then
e=a[20][k]n(e[1],e[2],e[3])C(h+g,q+f,h+g,q+f+1)end
end
end
end
end
if al>0 then
aT=a[13][bn]h=0
q=0
for bf=1,#aT do
_=aT[bf]if _>0 then
d=a[23][_]o,i=d[1],d[2]s=h-d[4]af=q-d[5]for b=0,o-1 do
for g=0,i-1 do
k=d[7+g+b*i]if k~=0 then
e=a[20][k]n(e[1],e[2],e[3])C(s+b,af+g,s+b,af+g+1)end
end
end
h=h+o
else
h=h+4
end
end
end
ao(124,J,ac(z).."%",16)ao(218,J,ac(aA).."%",16)m(124-28-15,U,"HEALTH")m(218-28-15,U,"ARMOUR")m(2,J,"ROM:")m(26,J,ae)m(2,138,"TPS:")m(26,138,a[12][1][17])m(2,145,"DIF:")m(26,145,ac(aq(aK-3000,3)))m(2,U,"LOD:")m(26,U,ac(aL))m(232,J,"BULL")m(232,138,"SHEL")m(232,145,"ROKT")m(232,U,"CELL")for b=1,4 do
c=124+b*7
ao(265,c,ar(a[12][1][b]),15)ao(285,c,ar(a[19][17][b]),15)m(268,c,"/")end
else
ab(1,J,"ROM:")ab(26,J,ae)end
end
