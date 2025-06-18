
ag=152
J=131
k=255
M=180
u=math
U=u.max
ay=u.min
abs=u.abs
P=u.floor
sqrt=u.sqrt
i=input.getNumber
V=input.getBool
be=output.setNumber
pi=u.pi
aO=false
ac=true
Y=table.remove
aj=string
function av(c,n)return{(c[1]+n[1]),(c[2]+n[2])}end
function bx(c,n)return c[1]*n[2]-c[2]*n[1]end
function sub(c,n)return{(c[1]-n[1]),(c[2]-n[2])}end
function ba(c,n)return{c[1]*n,c[2]*n}end
function bA(c)return((c+M)%360)-M end
function sin(c)return u.sin(c/M*pi)end
function cos(c)return u.cos(c/M*pi)end
function tan(c)return u.tan(c/M*pi)end
function bC(c)return u.atan(c)*M/pi end
function by(c)return u.atan(c[2],c[1])*M/pi end
function aR(c,n,bp)return ay(U(n,c),bp)end
function as(c)return P(c+.5)end
function bz(c,n)return sqrt(((c[1]-n[1])^2)+((c[2]-n[2])^2))end
function bb(c)return{c[1],-c[2]}end
function bB(c)c=c-1
c=c|(c>>1)c=c|(c>>2)c=c|(c>>4)return c+1
end
a={}aA=1
aa=3
ao=aO
E={{0,0},0,0}au=288
D=au//2
F=128
aw=F//2
aY=1.2
aW={1,1}aH=1
an=1
aG=500
r=100
bd=100
aN=0
R=0
Q=0
N=0
aQ=3002
aS=32768
v={}aX=.05
A={}af={}bu=2
al=35
ad=0
aL=0
at=0
K=1
aI=0
ai=0
ak=0
Z=ac
function aV(b,c)if b<aS then
L=a[7][b]return aV(L[0<bx({L[3],L[4]},sub(c,L))and 8 or 7],c)else
return b-aS
end
end
function bi(c)L=a[5][a[6][c][2]]return a[8][a[3][a[2][L[4]][L[5]+6]][6]]end
function ar(h,t,aq,ax)local C,o=w.drawLine,w.setColor
aq=aq..""
ax=a[19][ax]for b=#aq,1,-1 do
_=ax[aj.byte(aj.sub(aq,b,b))]h=h-ax[1]if _>0 then
d=a[23][_]q,j=d[1],d[2]x=h-d[4]+1
ab=t-d[5]for g=0,q-1 do
for f=0,j-1 do
m=d[7+f+g*j]if m~=0 then
e=a[20][m]o(e[1],e[2],e[3])C(x+g,ab+f,x+g,ab+f+1)end
end
end
end
end
end
function p(bk,aZ,ah,l)l=l or{59,59,59}w.setColor(13,0,0)w.drawText(bk+1,aZ+1,ah)w.setColor(l[1],l[2],l[3])w.drawText(bk,aZ,ah)end
function onTick()aI=0
for g=1,3 do
if V(9)and(not ao)or not a[21]then
aD=property.getText(aA)b=1
s=""
_=aj.sub(aD,b,b)while _~=""do
I=aj.byte(_)if I>64 then
s=(s..I-65)+0
if K==1 then
bl=s
a[s]=a[s]or{}elseif K==2 then
bs=s
am=0
elseif K==3 then
aE=s
else
if am==0 then
am=bs
aE=aE-1
aC={}a[bl][#a[bl]+1]=aC
end
aC[#aC+1]=s
am=am-1
K=U(am,aE)>0 and K-1 or 0
end
K=K+1
s=""
else
s=s.._
end
b=b+1
_=aj.sub(aD,b,b)end
aA=aA+1
ao=aD==""
end
end
if ao then
if i(10)>0 then
Z=ac
aa=i(10)end
aL=aL+1
a[12][1][aL%#a[12][1]+1]=as(i(11))ai=a[12][1][17]if r>0 and not Z then
S={}ae[#ae+1]=S
W=6
_=i(W)while _~=0 do
z={}S[#S+1]=z
for b=0,8 do
z[b+1]=i(W+b)end
W=W+9
_=i(W)end
end
if V(1)then
if Z then
for b=1,10 do
a[b]=a[b+10*aa]end
aa=aa+1
for b=#a[1],1,-1 do
_=a[1][b]_=_[5]&(aQ-3000)>0 or Y(a[1],b)end
for b=1,#a[8]do
a[8][b][8]={}end
for b=1,#a[6]do
_=bi(b)_[8][#_[8]+1]=b
end
ae={}end
R=R-1
if r>0 then
if T~=i(1)and i(1)>0 then
v={}_={}_[1]=a[29][i(1)]_[2]=a[16][_[1][3]]bD=_[2][1]_[3]=0
v[1]=_
end
T=i(1)aM=V(3)if aM and T==5 then
if ak<=0 then
ak=7
else
aM=false
end
end
ak=ak-1
if aM then
_=v[1]_[2]=a[16][_[1][4]]_[3]=-1
B=a[19][6][T]if B>0 then
A[#A+1]={B,1}end
end
end
for b=#v,1,-1 do
_=v[b]if _[3]==0 then
if _[2][3]==4 then
if T==5 and ak<5 then
bg=1
else
bg=0
end
v[#v+1]={_[1],a[16][_[1][5]+bg],2}end
end
_[3]=_[3]+1
if _[3]>=_[2][2]then
if _[2][4]>2 then
_[2]=a[16][_[2][4]]_[3]=0
else
Y(v,b)end
end
end
if Z then
Q=50
R=al*8
aJ=aa-4+"map name text start"
end
Z=aO
N=U(N-4,0)N=aR(N+(r-i(3)+aN-i(4))*3,0,k)Q=U(Q-1.5,0)r=i(3)aN,aT,bf,aU=i(4)if i(2)>0 and r>0 then
_=a[2][i(2)]if _ then
if _[4]==3008 then
b_=_[5]>0 and P(_[5])aU=ac
elseif _[4]>3004 then
aG=U(aG+3*(_[4]-3006),1)bf=ac
elseif _[4]>3000 then
aQ=_[4]aT=ac
elseif _[4]>=14 and _[4]<=16 then
if a[12][1][_[4]]==0 then
R=al*4
aJ=_[4]-14+"door text start"
end
end
end
end
for b=1,#ae do
S=ae[b]for g=1,#S do
z=S[g]_=z[1]if _>(2^15)then
_=a[8][_-(2^15)]for f=1,6 do
_[f]=z[f+1]end
elseif _<0 then
I=a[1][-_]if I then
z=I[6]if a[16][z][5]>0 then
Q=U(Q,15)R=al*4
aJ=a[16][z][5]A[#A+1]={"item pickup sound index",1}if I[4]then
bq=a[15][I[4]]if bq[29]==a[19][13][1]then
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
Y(a[1],-_)else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for f=1,8 do
_[a[19][1][f]]=z[f+1]end
_[15]=0
end
end
end
ae={}_=a[1][1]E[1]={_[1],_[2]}E[3]=_[3]bt=aV(#a[7],E[1])aB=bi(bt)E[2]=aB[1]+41
bn=ay(aB[5]/k,1)^1.3
for b=1,#aB[8]do
_=a[6][aB[8][b]]for g=_[2],_[1]+_[2]-1 do
bm=a[5][g]bw=a[2][bm[4]]bw[8]=2
end
end
bh=V(2)if i(12)>0 and r>0 then
A[#A+1]={i(12),1}end
ad=ad-1
at=at-1
if not aW[T]then
aW[T]=1
at=70
end
aP=(4-ay(r//20,4))*8
if r<=0 then
an=41
elseif at>0 then
an=aP+6
elseif r<bd then
ad=al
an=aP+7
elseif ad<=0 then
ad=16
aH=aH%256+1
an=aP+a[13][1][aH]%3
end
bd=r
end
for b=#A,1,-1 do
B=A[b]_=a[18][B[1]]if V(1)then
y=_[B[2]]B[2]=B[2]+4
else
y=_[B[2]+2]end
if y and y>0 then
af[#af+1]={y,1}end
if B[2]>=#_ then
Y(A,b)end
end
for b=1,32 do
be(b,0)end
for b=#af,1,-1 do
y=af[b]be(b+3,aR(as((y[1]+12)//2),1,60))y[2]=y[2]+1
if y[2]>bu then
Y(af,b)end
end
end
end
function onDraw()w=screen
local X,o,C,ah=w.drawRectF,w.setColor,w.drawLine,w.drawText
aI=aI+1
if a[21]and not ao then
d=a[25][1]q,j=d[1],d[2]h,t=D-q/2,80-j/2
for f=0,q-1 do
x=h+f
for O=0,j-1 do
m=d[5+O+f*j]if m~=0 then
e=a[20][m]o(e[1],e[2],e[3])C(x,t+O,x,t+O+1)end
end
end
end
if not bh then
for b=1,#v do
d=v[b][2][1]aK=d>0 and bn or 1
d=a[17][abs(d)][1]d=a[23][d]q,j,aF=d[1],d[2],d[3]*.7
bc=aF*aY
h,t=D-(d[4]+160)*.7,F-(d[5]+148)*.7*aY
for f=0,q-1 do
x=h+f*aF
for O=0,j-1 do
m=d[7+O+f*j]if m~=0 then
e=a[20][m]o(e[1]*aK,e[2]*aK,e[3]*aK)X(x,t+O*bc,aF,bc)end
end
end
end
end
if ao then
if bh then
o(0,0,0)X(0,0,au,F)for b=1,#a[2]do
_=a[2][b]if _[8]then
G=av(bb(ba(sub(a[4][_[1]],E[1]),aX)),{D,aw})H=av(bb(ba(sub(a[4][_[2]],E[1]),aX)),{D,aw})if _[8]==1 then
o(0,50,0)elseif _[3]&4>0 then
o(50,50,50)else
o(k,k,k)end
C(G[1],G[2],H[1],H[2])end
end
o(k,k,k)_=a[19][10]for b=1,#_,4 do
az=sin(E[3]-90)ap=cos(E[3]-90)G={_[b]*ap+_[b+1]*az,_[b+1]*ap-_[b]*az}H={_[b+2]*ap+_[b+3]*az,_[b+3]*ap-_[b+2]*az}G=av(G,{D,aw})H=av(H,{D,aw})C(G[1],G[2],H[1],H[2])end
end
o(k,N>0 and 0 or k,0,N+Q)X(0,0,au,F)o(30,30,30)X(0,F,au,32)o(5,5,5)X(D-16,F,32,32)d=a[23]["face textures start"+(an)*"number of sprite mipmap levels"]q,j=d[1],d[2]h=D-q/2
for b=0,q-1 do
for g=0,j-1 do
m=d[7+g+b*j]if m~=0 then
e=a[20][m]o(e[1],e[2],e[3])C(h+b,F+1+g,h+b,F+2+g)end
end
end
for b=1,3 do
if a[12][1][13+b]>0 then
h,t=221,125+b*8
d=a[23]["key textures start"+a[19][5][b]*"number of sprite mipmap levels"]q,j=d[1],d[2]for g=0,q-1 do
for f=0,j-1 do
m=d[7+f+g*j]if m~=0 then
e=a[20][m]o(e[1],e[2],e[3])C(h+g,t+f,h+g,t+f+1)end
end
end
end
end
if R>0 then
bj=a[13][aJ]h=0
t=0
for br=1,#bj do
_=bj[br]if _>0 then
d=a[23][_]q,j=d[1],d[2]x=h-d[4]ab=t-d[5]for b=0,q-1 do
for g=0,j-1 do
m=d[7+g+b*j]if m~=0 then
e=a[20][m]o(e[1],e[2],e[3])C(x+b,ab+g,x+b,ab+g+1)end
end
end
h=h+q
else
h=h+4
end
end
end
ar(124,J,P(r).."%",16)ar(218,J,P(aN).."%",16)p(124-28-15,ag,"HEALTH")p(218-28-15,ag,"ARMOUR")l=(ai<al and ai>0)and{k,0,0}p(2,J,"TPS:",l)p(26,J,ai>0 and ai or "N/A",l)l=aT and{k,k,44}p(2,138,"DIF:",l)bv={"EASY","MED","HARD"}p(26,138,bv[P(ay(aQ-3000,3))],l)l=bf and{k,k,44}p(2,145,"LOD:",l)p(26,145,P(aG),l)l=aU and{k,k,44}p(2,ag,"TEX:",l)bo={"FULL","HALF"}p(26,ag,b_ and bo[b_]or "OFF",l)p(232,J,"BULL")p(232,138,"SHEL")p(232,145,"ROKT")p(232,ag,"CELL")for b=1,4 do
c=124+b*7
ar(265,c,as(a[12][1][b]),15)ar(285,c,as(a[19][17][b]),15)p(268,c,"/")end
else
ah(1,J,"ROM:")ah(26,J,aA)end
end
