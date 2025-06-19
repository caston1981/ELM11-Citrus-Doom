
ah=152
I=131
k=255
J=180
r=math
U=r.max
aq=r.min
abs=r.abs
T=r.floor
sqrt=r.sqrt
j=input.getNumber
aj=input.getBool
bl=output.setNumber
pi=r.pi
aH=false
af=true
ak=table.remove
ao=string
function ay(c,n)return{(c[1]+n[1]),(c[2]+n[2])}end
function bp(c,n)return c[1]*n[2]-c[2]*n[1]end
function sub(c,n)return{(c[1]-n[1]),(c[2]-n[2])}end
function b_(c,n)return{c[1]*n,c[2]*n}end
function bz(c)return((c+J)%360)-J end
function sin(c)return r.sin(c/J*pi)end
function cos(c)return r.cos(c/J*pi)end
function tan(c)return r.tan(c/J*pi)end
function bA(c)return r.atan(c)*J/pi end
function by(c)return r.atan(c[2],c[1])*J/pi end
function ba(c,n,bu)return aq(U(n,c),bu)end
function aB(c)return T(c+.5)end
function bB(c,n)return sqrt(((c[1]-n[1])^2)+((c[2]-n[2])^2))end
function bb(c)return{c[1],-c[2]}end
function bD(c)c=c-1
c=c|(c>>1)c=c|(c>>2)c=c|(c>>4)return c+1
end
a={}aA=1
al=3
W=aH
E={{0,0},0,0}aw=288
D=aw//2
C=128
ap=C//2
bi=1.2
bg={1,1}aP=1
an=1
aN=500
s=100
aT=100
aG=0
O=0
R=0
N=0
aI=3002
aS=32768
x={}aY=.05
z={}Y={}bt=2
ai=35
X=0
aJ=0
ax=0
M=1
aK=0
aa=0
Z=0
ag=af
function bh(b,c)if b<aS then
K=a[7][b]return bh(K[0<bp({K[3],K[4]},sub(c,K))and 8 or 7],c)else
return b-aS
end
end
function aW(c)K=a[5][a[6][c][2]]return a[8][a[3][a[2][K[4]][K[5]+6]][6]]end
function az(h,u,au,ar)local F,p=w.drawLine,w.setColor
au=au..""
ar=a[19][ar]for b=#au,1,-1 do
_=ar[ao.byte(ao.sub(au,b,b))]h=h-ar[1]if _>0 then
d=a[23][_]q,i=d[1],d[2]v=h-d[4]+1
ac=u-d[5]for g=0,q-1 do
for f=0,i-1 do
m=d[7+f+g*i]if m~=0 then
e=a[20][m]p(e[1],e[2],e[3])F(v+g,ac+f,v+g,ac+f+1)end
end
end
end
end
end
function o(aU,aX,am,l)l=l or{59,59,59}w.setColor(13,0,0)w.drawText(aU+1,aX+1,am)w.setColor(l[1],l[2],l[3])w.drawText(aU,aX,am)end
function onTick()aK=0
for g=1,3 do
if aj(9)and(not W)or not a[21]then
aC=property.getText(aA)b=1
t=""
_=ao.sub(aC,b,b)while _~=""do
L=ao.byte(_)if L>64 then
t=(t..L-65)+0
if M==1 then
bj=t
a[t]=a[t]or{}elseif M==2 then
bo=t
V=0
elseif M==3 then
aD=t
else
if V==0 then
V=bo
aD=aD-1
aL={}a[bj][#a[bj]+1]=aL
end
aL[#aL+1]=t
V=V-1
M=U(V,aD)>0 and M-1 or 0
end
M=M+1
t=""
else
t=t.._
end
b=b+1
_=ao.sub(aC,b,b)end
aA=aA+1
W=aC==""
end
end
if W then
if j(10)>0 then
ag=af
al=j(10)end
aJ=aJ+1
a[12][1][aJ%#a[12][1]+1]=aB(j(11))aa=a[12][1][17]if s>0 and not ag then
Q={}ad[#ad+1]=Q
ab=6
_=j(ab)while _~=0 do
A={}Q[#Q+1]=A
for b=0,8 do
A[b+1]=j(ab+b)end
ab=ab+9
_=j(ab)end
end
if aj(1)then
if ag then
for b=1,10 do
a[b]=a[b+10*al]end
al=al+1
for b=#a[1],1,-1 do
_=a[1][b]_=_[5]&(aI-3000)>0 or ak(a[1],b)end
for b=1,#a[8]do
a[8][b][8]={}end
for b=1,#a[6]do
_=aW(b)_[8][#_[8]+1]=b
end
ad={}end
O=O-1
if s>0 then
if S~=j(1)and j(1)>0 then
x={}_={}_[1]=a[29][j(1)]_[2]=a[16][_[1][3]]bC=_[2][1]_[3]=0
x[1]=_
end
S=j(1)aQ=aj(3)if aQ and S==5 then
if Z<=0 then
Z=7
else
aQ=false
end
end
Z=Z-1
if aQ then
_=x[1]_[2]=a[16][_[1][4]]_[3]=-1
y=a[19][6][S]if y>0 then
z[#z+1]={y,1}end
end
end
for b=#x,1,-1 do
_=x[b]if _[3]==0 then
if _[2][3]==4 then
if S==5 and Z<5 then
aR=1
else
aR=0
end
x[#x+1]={_[1],a[16][_[1][5]+aR],2}end
end
_[3]=_[3]+1
if _[3]>=_[2][2]then
if _[2][4]>2 then
_[2]=a[16][_[2][4]]_[3]=0
else
ak(x,b)end
end
end
if ag then
R=50
O=ai*8
aF=al-4+"map name text start"
end
ag=aH
N=U(N-4,0)N=ba(N+(s-j(3)+aG-j(4))*3,0,k)R=U(R-1.5,0)s=j(3)aG,be,bf,aZ=j(4)if j(2)>0 and s>0 then
_=a[2][j(2)]if _ then
if _[4]==3008 then
bc=_[5]>0 and T(_[5])aZ=af
elseif _[4]>3004 then
aN=U(aN+3*(_[4]-3006),1)bf=af
elseif _[4]>3000 then
aI=_[4]be=af
elseif _[4]>=14 and _[4]<=16 then
if a[12][1][_[4]]==0 then
O=ai*4
aF=_[4]-14+"door text start"
end
end
end
end
for b=1,#ad do
Q=ad[b]for g=1,#Q do
A=Q[g]_=A[1]if _>(2^15)then
_=a[8][_-(2^15)]for f=1,6 do
_[f]=A[f+1]end
elseif _<0 then
L=a[1][-_]if L then
A=L[6]if a[16][A][5]>0 then
R=U(R,15)O=ai*4
aF=a[16][A][5]z[#z+1]={"item pickup sound index",1}if L[4]then
br=a[15][L[4]]if br[29]==a[19][13][1]then
for f=1,#a[2]do
a[2][f][8]=a[2][f][8]or 1
end
end
end
end
end
while-_>#a[1]do
a[1][#a[1]+1]=aH
end
ak(a[1],-_)else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for f=1,8 do
_[a[19][1][f]]=A[f+1]end
_[15]=0
end
end
end
ad={}_=a[1][1]E[1]={_[1],_[2]}E[3]=_[3]bn=bh(#a[7],E[1])at=aW(bn)E[2]=at[1]+41
bv=aq(at[5]/k,1)^1.3
for b=1,#at[8]do
_=a[6][at[8][b]]for g=_[2],_[1]+_[2]-1 do
bx=a[5][g]bw=a[2][bx[4]]bw[8]=2
end
end
aV=aj(2)if j(12)>0 and s>0 then
z[#z+1]={j(12),1}end
X=X-1
ax=ax-1
if not bg[S]then
bg[S]=1
ax=70
end
aO=(4-aq(s//20,4))*8
if s<=0 then
an=41
elseif ax>0 then
an=aO+6
elseif s<aT then
X=ai
an=aO+7
elseif X<=0 then
X=16
aP=aP%256+1
an=aO+a[13][1][aP]%3
end
aT=s
end
for b=#z,1,-1 do
y=z[b]_=a[18][y[1]]if aj(1)then
B=_[y[2]]y[2]=y[2]+4
else
B=_[y[2]+2]end
if B and B>0 then
Y[#Y+1]={B,1}end
if y[2]>=#_ then
ak(z,b)end
end
for b=1,32 do
bl(b,0)end
for b=#Y,1,-1 do
B=Y[b]bl(b+3,ba(aB((B[1]+12)//2),1,60))B[2]=B[2]+1
if B[2]>bt then
ak(Y,b)end
end
end
end
function onDraw()w=screen
local ae,p,F,am=w.drawRectF,w.setColor,w.drawLine,w.drawText
aK=aK+1
if a[21]and not W then
d=a[25][1]q,i=d[1],d[2]h,u=D-q/2,80-i/2
for f=0,q-1 do
v=h+f
for P=0,i-1 do
m=d[5+P+f*i]if m~=0 then
e=a[20][m]p(e[1],e[2],e[3])F(v,u+P,v,u+P+1)end
end
end
end
if not aV then
for b=1,#x do
d=x[b][2][1]aM=d>0 and bv or 1
d=a[17][abs(d)][1]d=a[23][d]q,i,aE=d[1],d[2],d[3]*.7
bd=aE*bi
h,u=D-(d[4]+160)*.7,C-(d[5]+148)*.7*bi
for f=0,q-1 do
v=h+f*aE
for P=0,i-1 do
m=d[7+P+f*i]if m~=0 then
e=a[20][m]p(e[1]*aM,e[2]*aM,e[3]*aM)ae(v,u+P*bd,aE,bd)end
end
end
end
end
if W then
if aV then
p(0,0,0)ae(0,0,aw,C)for b=1,#a[2]do
_=a[2][b]if _[8]then
G=ay(bb(b_(sub(a[4][_[1]],E[1]),aY)),{D,ap})H=ay(bb(b_(sub(a[4][_[2]],E[1]),aY)),{D,ap})if _[8]==1 then
p(0,50,0)elseif _[3]&4>0 then
p(50,50,50)else
p(k,k,k)end
F(G[1],G[2],H[1],H[2])end
end
p(k,k,k)_=a[19][10]for b=1,#_,4 do
as=sin(E[3]-90)av=cos(E[3]-90)G={_[b]*av+_[b+1]*as,_[b+1]*av-_[b]*as}H={_[b+2]*av+_[b+3]*as,_[b+3]*av-_[b+2]*as}G=ay(G,{D,ap})H=ay(H,{D,ap})F(G[1],G[2],H[1],H[2])end
end
p(k,N>0 and 0 or k,0,N+R)ae(0,0,aw,C)p(30,30,30)ae(0,C,aw,32)p(5,5,5)ae(D-16,C,32,32)d=a[23]["face textures start"+(an)*"number of sprite mipmap levels"]q,i=d[1],d[2]h=D-q/2
for b=0,q-1 do
for g=0,i-1 do
m=d[7+g+b*i]if m~=0 then
e=a[20][m]p(e[1],e[2],e[3])F(h+b,C+1+g,h+b,C+2+g)end
end
end
for b=1,3 do
if a[12][1][13+b]>0 then
h,u=221,125+b*8
d=a[23]["key textures start"+a[19][5][b]*"number of sprite mipmap levels"]q,i=d[1],d[2]for g=0,q-1 do
for f=0,i-1 do
m=d[7+f+g*i]if m~=0 then
e=a[20][m]p(e[1],e[2],e[3])F(h+g,u+f,h+g,u+f+1)end
end
end
end
end
if O>0 then
bk=a[13][aF]h=0
u=0
for bs=1,#bk do
_=bk[bs]if _>0 then
d=a[23][_]q,i=d[1],d[2]v=h-d[4]ac=u-d[5]for b=0,q-1 do
for g=0,i-1 do
m=d[7+g+b*i]if m~=0 then
e=a[20][m]p(e[1],e[2],e[3])F(v+b,ac+g,v+b,ac+g+1)end
end
end
h=h+q
else
h=h+4
end
end
end
az(124,I,T(s).."%",16)az(218,I,T(aG).."%",16)o(124-28-15,ah,"HEALTH")o(218-28-15,ah,"ARMOUR")l=(aa<ai and aa>0)and{k,0,0}o(2,I,"TPS:",l)o(26,I,aa>0 and aa or "N/A",l)l=be and{k,k,44}o(2,138,"DIF:",l)bq={"EASY","MED","HARD"}o(26,138,bq[T(aq(aI-3000,3))],l)l=bf and{k,k,44}o(2,145,"LOD:",l)o(26,145,T(aN),l)l=aZ and{k,k,44}o(2,ah,"TEX:",l)bm={"FULL","HALF"}o(26,ah,bc and bm[bc]or "OFF",l)o(232,I,"BULL")o(232,138,"SHEL")o(232,145,"ROKT")o(232,ah,"CELL")for b=1,4 do
c=124+b*7
az(265,c,aB(a[12][1][b]),15)az(285,c,aB(a[19][17][b]),15)o(268,c,"/")end
else
am(1,I,"ROM:")am(26,I,aA)end
end
