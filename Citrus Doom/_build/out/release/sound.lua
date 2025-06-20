
an=152
M=131
m=255
H=180
t=math
Q=t.max
au=t.min
abs=t.abs
T=t.floor
sqrt=t.sqrt
i=input.getNumber
X=input.getBool
ba=output.setNumber
pi=t.pi
aK=false
ah=true
aa=table.remove
ai=string
function aB(c,n)return{(c[1]+n[1]),(c[2]+n[2])}end
function bz(c,n)return c[1]*n[2]-c[2]*n[1]end
function sub(c,n)return{(c[1]-n[1]),(c[2]-n[2])}end
function aU(c,n)return{c[1]*n,c[2]*n}end
function bB(c)return((c+H)%360)-H end
function sin(c)return t.sin(c/H*pi)end
function cos(c)return t.cos(c/H*pi)end
function tan(c)return t.tan(c/H*pi)end
function bD(c)return t.atan(c)*H/pi end
function bA(c)return t.atan(c[2],c[1])*H/pi end
function bn(c,n,bx)return au(Q(n,c),bx)end
function ap(c)return T(c+.5)end
function bF(c,n)return sqrt(((c[1]-n[1])^2)+((c[2]-n[2])^2))end
function bj(c)return{c[1],-c[2]}end
function bE(c)c=c-1
c=c|(c>>1)c=c|(c>>2)c=c|(c>>4)return c+1
end
a={}aC=1
ae=3
al=aK
C={{0,0},0,0}as=288
F=as//2
D=128
az=D//2
aX=1.2
aT={1,1}aR=1
am=1
aH=500
r=100
bm=100
aI=0
S=0
U=0
P=0
aD=3002
bo=32768
v={}bi=.05
y={}af={}bw=2
V=35
ag=0
aE=0
at=0
I=1
aN=0
ao=0
ak=0
Z=ah
aQ=0
av=0
function bb(b,c)if b<bo then
K=a[7][b]return bb(K[0<bz({K[3],K[4]},sub(c,K))and 8 or 7],c)else
return b-bo
end
end
function bl(c)K=a[5][a[6][c][2]]return a[8][a[3][a[2][K[4]][K[5]+6]][6]]end
function ax(h,u,aq,ay)local E,p=w.drawLine,w.setColor
aq=aq..""
ay=a[19][ay]for b=#aq,1,-1 do
_=ay[ai.byte(ai.sub(aq,b,b))]h=h-ay[1]if _>0 then
d=a[23][_]q,j=d[1],d[2]x=h-d[4]+1
Y=u-d[5]for g=0,q-1 do
for f=0,j-1 do
k=d[7+f+g*j]if k~=0 then
e=a[20][k]p(e[1],e[2],e[3])E(x+g,Y+f,x+g,Y+f+1)end
end
end
end
end
end
function o(bh,bk,ac,l)l=l or{59,59,59}w.setColor(13,0,0)w.drawText(bh+1,bk+1,ac)w.setColor(l[1],l[2],l[3])w.drawText(bh,bk,ac)end
function onTick()aN=0
for g=1,3 do
if X(9)and(not al)or not a[21]then
aG=property.getText(aC)b=1
s=""
_=ai.sub(aG,b,b)while _~=""do
G=ai.byte(_)if G>64 then
s=(s..G-65)+0
if I==1 then
bc=s
a[s]=a[s]or{}elseif I==2 then
bq=s
ab=0
elseif I==3 then
aM=s
else
if ab==0 then
ab=bq
aM=aM-1
aJ={}a[bc][#a[bc]+1]=aJ
end
aJ[#aJ+1]=s
ab=ab-1
I=Q(ab,aM)>0 and I-1 or 0
end
I=I+1
s=""
else
s=s.._
end
b=b+1
_=ai.sub(aG,b,b)end
aC=aC+1
al=aG==""
end
end
if al then
if i(10)>0 then
Z=ah
ae=i(10)end
aE=aE+1
a[12][1][aE%#a[12][1]+1]=ap(i(11))ao=a[12][1][17]if r>0 and not Z then
R={}W[#W+1]=R
aj=6
_=i(aj)while _~=0 do
z={}R[#R+1]=z
for b=0,8 do
z[b+1]=i(aj+b)end
aj=aj+9
_=i(aj)end
end
if X(1)then
if Z then
for b=1,10 do
a[b]=a[b+10*ae]end
ae=ae+1
for b=#a[1],1,-1 do
_=a[1][b]_=_[5]&(aD-3000)>0 or aa(a[1],b)end
for b=1,#a[8]do
a[8][b][8]={}end
for b=1,#a[6]do
_=bl(b)_[8][#_[8]+1]=b
end
W={}end
S=S-1
if r>0 then
if O~=i(1)and i(1)>0 then
v={}_={}_[1]=a[29][i(1)]_[2]=a[16][_[1][3]]bC=_[2][1]_[3]=0
v[1]=_
end
O=i(1)aP=X(3)if aP and O==5 then
if ak<=0 then
ak=7
else
aP=false
end
end
ak=ak-1
if aP then
_=v[1]_[2]=a[16][_[1][4]]_[3]=-1
A=a[19][6][O]if A>0 then
y[#y+1]={A,1}end
end
end
for b=#v,1,-1 do
_=v[b]if _[3]==0 then
if _[2][3]==4 then
if O==5 and ak<5 then
aV=1
else
aV=0
end
v[#v+1]={_[1],a[16][_[1][5]+aV],2}end
end
_[3]=_[3]+1
if _[3]>=_[2][2]then
if _[2][4]>2 then
_[2]=a[16][_[2][4]]_[3]=0
else
aa(v,b)end
end
end
if Z then
U=50
S=V*8
aL=ae-4+"map name text start"
end
Z=aK
P=Q(P-4,0)P=bn(P+(r-i(3)+aI-i(4))*3,0,m)U=Q(U-1.5,0)r=i(3)aI,b_,be,aY=i(4)if i(2)>0 and r>0 then
_=a[2][i(2)]if _ then
if _[4]==3008 then
bg=_[5]>0 and T(_[5])aY=ah
elseif _[4]>3004 then
aH=Q(aH+3*(_[4]-3006),1)be=ah
elseif _[4]>3000 then
aD=_[4]b_=ah
elseif _[4]>=14 and _[4]<=16 then
if a[12][1][_[4]]==0 then
S=V*4
aL=_[4]-14+"door text start"
end
end
end
end
av=av-1
if av<1 then
aQ=0
end
for b=1,#W do
R=W[b]for g=1,#R do
z=R[g]_=z[1]if _>(2^15)then
_=a[8][_-(2^15)]for f=1,6 do
_[f]=z[f+1]end
elseif _<0 then
G=a[1][-_]if G then
z=G[6]if a[16][z][5]>0 then
U=Q(U,15)S=V*4
aL=a[16][z][5]y[#y+1]={"item pickup sound index",1}if G[4]then
aW=a[15][G[4]]if aW[29]=="light amp index" then
aQ=1
av=4200
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
a[1][#a[1]+1]=aK
end
aa(a[1],-_)else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for f=1,8 do
_[a[19][1][f]]=z[f+1]end
_[15]=0
end
end
end
W={}_=a[1][1]C[1]={_[1],_[2]}C[3]=_[3]bu=bb(#a[7],C[1])aA=bl(bu)C[2]=aA[1]+41
bs=au(aA[5]/m+aQ,1)^1.3
for b=1,#aA[8]do
_=a[6][aA[8][b]]for g=_[2],_[1]+_[2]-1 do
br=a[5][g]bp=a[2][br[4]]bp[8]=2
end
end
bf=X(2)if i(12)>0 and r>0 then
y[#y+1]={i(12),1}end
ag=ag-1
at=at-1
if not aT[O]then
aT[O]=1
at=70
end
aO=(4-au(r//20,4))*8
if r<=0 then
am=41
elseif at>0 then
am=aO+6
elseif r<bm then
ag=V
am=aO+7
elseif ag<=0 then
ag=16
aR=aR%256+1
am=aO+a[13][1][aR]%3
end
bm=r
end
for b=#y,1,-1 do
A=y[b]_=a[18][A[1]]if X(1)then
B=_[A[2]]A[2]=A[2]+4
else
B=_[A[2]+2]end
if B and B>0 then
af[#af+1]={B,1}end
if A[2]>=#_ then
aa(y,b)end
end
for b=1,32 do
ba(b,0)end
for b=#af,1,-1 do
B=af[b]ba(b+3,bn(ap((B[1]+12)//2),1,60))B[2]=B[2]+1
if B[2]>bw then
aa(af,b)end
end
end
end
function onDraw()w=screen
local ad,p,E,ac=w.drawRectF,w.setColor,w.drawLine,w.drawText
aN=aN+1
if a[21]and not al then
d=a[25][1]q,j=d[1],d[2]h,u=F-q/2,80-j/2
for f=0,q-1 do
x=h+f
for N=0,j-1 do
k=d[5+N+f*j]if k~=0 then
e=a[20][k]p(e[1],e[2],e[3])E(x,u+N,x,u+N+1)end
end
end
end
if not bf then
for b=1,#v do
d=v[b][2][1]aF=d>0 and bs or 1
d=a[17][abs(d)][1]d=a[23][d]q,j,aS=d[1],d[2],d[3]*.7
aZ=aS*aX
h,u=F-(d[4]+160)*.7,D-(d[5]+148)*.7*aX
for f=0,q-1 do
x=h+f*aS
for N=0,j-1 do
k=d[7+N+f*j]if k~=0 then
e=a[20][k]p(e[1]*aF,e[2]*aF,e[3]*aF)ad(x,u+N*aZ,aS,aZ)end
end
end
end
end
if al then
if bf then
p(0,0,0)ad(0,0,as,D)for b=1,#a[2]do
_=a[2][b]if _[8]then
J=aB(bj(aU(sub(a[4][_[1]],C[1]),bi)),{F,az})L=aB(bj(aU(sub(a[4][_[2]],C[1]),bi)),{F,az})if _[8]==1 then
p(0,50,0)elseif _[3]&4>0 then
p(50,50,50)else
p(m,m,m)end
E(J[1],J[2],L[1],L[2])end
end
p(m,m,m)_=a[19][10]for b=1,#_,4 do
ar=sin(C[3]-90)aw=cos(C[3]-90)J={_[b]*aw+_[b+1]*ar,_[b+1]*aw-_[b]*ar}L={_[b+2]*aw+_[b+3]*ar,_[b+3]*aw-_[b+2]*ar}J=aB(J,{F,az})L=aB(L,{F,az})E(J[1],J[2],L[1],L[2])end
end
p(m,P>0 and 0 or m,0,P+U)ad(0,0,as,D)p(30,30,30)ad(0,D,as,32)p(5,5,5)ad(F-16,D,32,32)d=a[23]["face textures start"+(am)*"number of sprite mipmap levels"]q,j=d[1],d[2]h=F-q/2
for b=0,q-1 do
for g=0,j-1 do
k=d[7+g+b*j]if k~=0 then
e=a[20][k]p(e[1],e[2],e[3])E(h+b,D+1+g,h+b,D+2+g)end
end
end
for b=1,3 do
if a[12][1][13+b]>0 then
h,u=221,125+b*8
d=a[23]["key textures start"+a[19][5][b]*"number of sprite mipmap levels"]q,j=d[1],d[2]for g=0,q-1 do
for f=0,j-1 do
k=d[7+f+g*j]if k~=0 then
e=a[20][k]p(e[1],e[2],e[3])E(h+g,u+f,h+g,u+f+1)end
end
end
end
end
if S>0 then
bd=a[13][aL]h=0
u=0
for bt=1,#bd do
_=bd[bt]if _>0 then
d=a[23][_]q,j=d[1],d[2]x=h-d[4]Y=u-d[5]for b=0,q-1 do
for g=0,j-1 do
k=d[7+g+b*j]if k~=0 then
e=a[20][k]p(e[1],e[2],e[3])E(x+b,Y+g,x+b,Y+g+1)end
end
end
h=h+q
else
h=h+4
end
end
end
ax(124,M,T(r).."%",16)ax(218,M,T(aI).."%",16)o(124-28-15,an,"HEALTH")o(218-28-15,an,"ARMOUR")l=(ao<V and ao>0)and{m,0,0}o(2,M,"TPS:",l)o(26,M,ao>0 and ao or "N/A",l)l=b_ and{m,m,44}o(2,138,"DIF:",l)bv={"EASY","MED","HARD"}o(26,138,bv[T(au(aD-3000,3))],l)l=be and{m,m,44}o(2,145,"LOD:",l)o(26,145,T(aH),l)l=aY and{m,m,44}o(2,an,"TEX:",l)by={"FULL","HALF"}o(26,an,bg and by[bg]or "OFF",l)o(232,M,"BULL")o(232,138,"SHEL")o(232,145,"ROKT")o(232,an,"CELL")for b=1,4 do
c=124+b*7
ax(265,c,ap(a[12][1][b]),15)ax(285,c,ap(a[19][17][b]),15)o(268,c,"/")end
else
ac(1,M,"ROM:")ac(26,M,aC)end
end
