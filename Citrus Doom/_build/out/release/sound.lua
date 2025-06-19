
aj=152
G=131
m=255
L=180
s=math
P=s.max
av=s.min
abs=s.abs
Q=s.floor
sqrt=s.sqrt
j=input.getNumber
ad=input.getBool
aS=output.setNumber
pi=s.pi
aI=false
al=true
ao=table.remove
ab=string
function as(c,n)return{(c[1]+n[1]),(c[2]+n[2])}end
function bp(c,n)return c[1]*n[2]-c[2]*n[1]end
function sub(c,n)return{(c[1]-n[1]),(c[2]-n[2])}end
function b_(c,n)return{c[1]*n,c[2]*n}end
function by(c)return((c+L)%360)-L end
function sin(c)return s.sin(c/L*pi)end
function cos(c)return s.cos(c/L*pi)end
function tan(c)return s.tan(c/L*pi)end
function bC(c)return s.atan(c)*L/pi end
function bB(c)return s.atan(c[2],c[1])*L/pi end
function aV(c,n,bm)return av(P(n,c),bm)end
function au(c)return Q(c+.5)end
function bA(c,n)return sqrt(((c[1]-n[1])^2)+((c[2]-n[2])^2))end
function aR(c)return{c[1],-c[2]}end
function bD(c)c=c-1
c=c|(c>>1)c=c|(c>>2)c=c|(c>>4)return c+1
end
a={}aw=1
ae=3
af=aI
E={{0,0},0,0}ap=288
F=ap//2
C=128
aB=C//2
bh=1.2
bj={1,1}aM=1
ak=1
aQ=500
u=100
bi=100
aF=0
O=0
S=0
U=0
aJ=3002
bg=32768
w={}aW=.05
B={}aa={}bq=2
ai=35
an=0
aE=0
ax=0
M=1
aN=0
ag=0
Y=0
Z=al
function bf(b,c)if b<bg then
I=a[7][b]return bf(I[0<bp({I[3],I[4]},sub(c,I))and 8 or 7],c)else
return b-bg
end
end
function aT(c)I=a[5][a[6][c][2]]return a[8][a[3][a[2][I[4]][I[5]+6]][6]]end
function az(h,r,aq,aA)local D,p=x.drawLine,x.setColor
aq=aq..""
aA=a[19][aA]for b=#aq,1,-1 do
_=aA[ab.byte(ab.sub(aq,b,b))]h=h-aA[1]if _>0 then
d=a[23][_]q,i=d[1],d[2]v=h-d[4]+1
W=r-d[5]for g=0,q-1 do
for f=0,i-1 do
k=d[7+f+g*i]if k~=0 then
e=a[20][k]p(e[1],e[2],e[3])D(v+g,W+f,v+g,W+f+1)end
end
end
end
end
end
function o(aY,bd,X,l)l=l or{59,59,59}x.setColor(13,0,0)x.drawText(aY+1,bd+1,X)x.setColor(l[1],l[2],l[3])x.drawText(aY,bd,X)end
function onTick()aN=0
for g=1,3 do
if ad(9)and(not af)or not a[21]then
aG=property.getText(aw)b=1
t=""
_=ab.sub(aG,b,b)while _~=""do
J=ab.byte(_)if J>64 then
t=(t..J-65)+0
if M==1 then
bc=t
a[t]=a[t]or{}elseif M==2 then
bn=t
am=0
elseif M==3 then
aL=t
else
if am==0 then
am=bn
aL=aL-1
aH={}a[bc][#a[bc]+1]=aH
end
aH[#aH+1]=t
am=am-1
M=P(am,aL)>0 and M-1 or 0
end
M=M+1
t=""
else
t=t.._
end
b=b+1
_=ab.sub(aG,b,b)end
aw=aw+1
af=aG==""
end
end
if af then
if j(10)>0 then
Z=al
ae=j(10)end
aE=aE+1
a[12][1][aE%#a[12][1]+1]=au(j(11))ag=a[12][1][17]if u>0 and not Z then
N={}ac[#ac+1]=N
V=6
_=j(V)while _~=0 do
A={}N[#N+1]=A
for b=0,8 do
A[b+1]=j(V+b)end
V=V+9
_=j(V)end
end
if ad(1)then
if Z then
for b=1,10 do
a[b]=a[b+10*ae]end
ae=ae+1
for b=#a[1],1,-1 do
_=a[1][b]_=_[5]&(aJ-3000)>0 or ao(a[1],b)end
for b=1,#a[8]do
a[8][b][8]={}end
for b=1,#a[6]do
_=aT(b)_[8][#_[8]+1]=b
end
ac={}end
O=O-1
if u>0 then
if R~=j(1)and j(1)>0 then
w={}_={}_[1]=a[29][j(1)]_[2]=a[16][_[1][3]]bz=_[2][1]_[3]=0
w[1]=_
end
R=j(1)aK=ad(3)if aK and R==5 then
if Y<=0 then
Y=7
else
aK=false
end
end
Y=Y-1
if aK then
_=w[1]_[2]=a[16][_[1][4]]_[3]=-1
y=a[19][6][R]if y>0 then
B[#B+1]={y,1}end
end
end
for b=#w,1,-1 do
_=w[b]if _[3]==0 then
if _[2][3]==4 then
if R==5 and Y<5 then
bk=1
else
bk=0
end
w[#w+1]={_[1],a[16][_[1][5]+bk],2}end
end
_[3]=_[3]+1
if _[3]>=_[2][2]then
if _[2][4]>2 then
_[2]=a[16][_[2][4]]_[3]=0
else
ao(w,b)end
end
end
if Z then
S=50
O=ai*8
aP=ae-4+"map name text start"
end
Z=aI
U=P(U-4,0)U=aV(U+(u-j(3)+aF-j(4))*3,0,m)S=P(S-1.5,0)u=j(3)aF,be,ba,bl=j(4)if j(2)>0 and u>0 then
_=a[2][j(2)]if _ then
if _[4]==3008 then
aU=_[5]>0 and Q(_[5])bl=al
elseif _[4]>3004 then
aQ=P(aQ+3*(_[4]-3006),1)ba=al
elseif _[4]>3000 then
aJ=_[4]be=al
elseif _[4]>=14 and _[4]<=16 then
if a[12][1][_[4]]==0 then
O=ai*4
aP=_[4]-14+"door text start"
end
end
end
end
for b=1,#ac do
N=ac[b]for g=1,#N do
A=N[g]_=A[1]if _>(2^15)then
_=a[8][_-(2^15)]for f=1,6 do
_[f]=A[f+1]end
elseif _<0 then
J=a[1][-_]if J then
A=J[6]if a[16][A][5]>0 then
S=P(S,15)O=ai*4
aP=a[16][A][5]B[#B+1]={"item pickup sound index",1}if J[4]then
bw=a[15][J[4]]if bw[29]=="computer area map index" then
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
ao(a[1],-_)else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for f=1,8 do
_[a[19][1][f]]=A[f+1]end
_[15]=0
end
end
end
ac={}_=a[1][1]E[1]={_[1],_[2]}E[3]=_[3]bt=bf(#a[7],E[1])ay=aT(bt)E[2]=ay[1]+41
bo=av(ay[5]/m,1)^1.3
for b=1,#ay[8]do
_=a[6][ay[8][b]]for g=_[2],_[1]+_[2]-1 do
br=a[5][g]bx=a[2][br[4]]bx[8]=2
end
end
aZ=ad(2)if j(12)>0 and u>0 then
B[#B+1]={j(12),1}end
an=an-1
ax=ax-1
if not bj[R]then
bj[R]=1
ax=70
end
aC=(4-av(u//20,4))*8
if u<=0 then
ak=41
elseif ax>0 then
ak=aC+6
elseif u<bi then
an=ai
ak=aC+7
elseif an<=0 then
an=16
aM=aM%256+1
ak=aC+a[13][1][aM]%3
end
bi=u
end
for b=#B,1,-1 do
y=B[b]_=a[18][y[1]]if ad(1)then
z=_[y[2]]y[2]=y[2]+4
else
z=_[y[2]+2]end
if z and z>0 then
aa[#aa+1]={z,1}end
if y[2]>=#_ then
ao(B,b)end
end
for b=1,32 do
aS(b,0)end
for b=#aa,1,-1 do
z=aa[b]aS(b+3,aV(au((z[1]+12)//2),1,60))z[2]=z[2]+1
if z[2]>bq then
ao(aa,b)end
end
end
end
function onDraw()x=screen
local ah,p,D,X=x.drawRectF,x.setColor,x.drawLine,x.drawText
aN=aN+1
if a[21]and not af then
d=a[25][1]q,i=d[1],d[2]h,r=F-q/2,80-i/2
for f=0,q-1 do
v=h+f
for T=0,i-1 do
k=d[5+T+f*i]if k~=0 then
e=a[20][k]p(e[1],e[2],e[3])D(v,r+T,v,r+T+1)end
end
end
end
if not aZ then
for b=1,#w do
d=w[b][2][1]aO=d>0 and bo or 1
d=a[17][abs(d)][1]d=a[23][d]q,i,aD=d[1],d[2],d[3]*.7
aX=aD*bh
h,r=F-(d[4]+160)*.7,C-(d[5]+148)*.7*bh
for f=0,q-1 do
v=h+f*aD
for T=0,i-1 do
k=d[7+T+f*i]if k~=0 then
e=a[20][k]p(e[1]*aO,e[2]*aO,e[3]*aO)ah(v,r+T*aX,aD,aX)end
end
end
end
end
if af then
if aZ then
p(0,0,0)ah(0,0,ap,C)for b=1,#a[2]do
_=a[2][b]if _[8]then
K=as(aR(b_(sub(a[4][_[1]],E[1]),aW)),{F,aB})H=as(aR(b_(sub(a[4][_[2]],E[1]),aW)),{F,aB})if _[8]==1 then
p(0,50,0)elseif _[3]&4>0 then
p(50,50,50)else
p(m,m,m)end
D(K[1],K[2],H[1],H[2])end
end
p(m,m,m)_=a[19][10]for b=1,#_,4 do
ar=sin(E[3]-90)at=cos(E[3]-90)K={_[b]*at+_[b+1]*ar,_[b+1]*at-_[b]*ar}H={_[b+2]*at+_[b+3]*ar,_[b+3]*at-_[b+2]*ar}K=as(K,{F,aB})H=as(H,{F,aB})D(K[1],K[2],H[1],H[2])end
end
p(m,U>0 and 0 or m,0,U+S)ah(0,0,ap,C)p(30,30,30)ah(0,C,ap,32)p(5,5,5)ah(F-16,C,32,32)d=a[23]["face textures start"+(ak)*"number of sprite mipmap levels"]q,i=d[1],d[2]h=F-q/2
for b=0,q-1 do
for g=0,i-1 do
k=d[7+g+b*i]if k~=0 then
e=a[20][k]p(e[1],e[2],e[3])D(h+b,C+1+g,h+b,C+2+g)end
end
end
for b=1,3 do
if a[12][1][13+b]>0 then
h,r=221,125+b*8
d=a[23]["key textures start"+a[19][5][b]*"number of sprite mipmap levels"]q,i=d[1],d[2]for g=0,q-1 do
for f=0,i-1 do
k=d[7+f+g*i]if k~=0 then
e=a[20][k]p(e[1],e[2],e[3])D(h+g,r+f,h+g,r+f+1)end
end
end
end
end
if O>0 then
bb=a[13][aP]h=0
r=0
for bu=1,#bb do
_=bb[bu]if _>0 then
d=a[23][_]q,i=d[1],d[2]v=h-d[4]W=r-d[5]for b=0,q-1 do
for g=0,i-1 do
k=d[7+g+b*i]if k~=0 then
e=a[20][k]p(e[1],e[2],e[3])D(v+b,W+g,v+b,W+g+1)end
end
end
h=h+q
else
h=h+4
end
end
end
az(124,G,Q(u).."%",16)az(218,G,Q(aF).."%",16)o(124-28-15,aj,"HEALTH")o(218-28-15,aj,"ARMOUR")l=(ag<ai and ag>0)and{m,0,0}o(2,G,"TPS:",l)o(26,G,ag>0 and ag or "N/A",l)l=be and{m,m,44}o(2,138,"DIF:",l)bv={"EASY","MED","HARD"}o(26,138,bv[Q(av(aJ-3000,3))],l)l=ba and{m,m,44}o(2,145,"LOD:",l)o(26,145,Q(aQ),l)l=bl and{m,m,44}o(2,aj,"TEX:",l)bs={"FULL","HALF"}o(26,aj,aU and bs[aU]or "OFF",l)o(232,G,"BULL")o(232,138,"SHEL")o(232,145,"ROKT")o(232,aj,"CELL")for b=1,4 do
c=124+b*7
az(265,c,au(a[12][1][b]),15)az(285,c,au(a[19][17][b]),15)o(268,c,"/")end
else
X(1,G,"ROM:")X(26,G,aw)end
end
