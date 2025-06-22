
ao=152
G=131
g=255
L=180
s=math
T=s.max
aA=s.min
abs=s.abs
P=s.floor
sqrt=s.sqrt
l=input.getNumber
Y=input.getBool
aZ=output.setNumber
pi=s.pi
aD=false
aj=true
ah=table.remove
al=string
function aw(c,o)return{(c[1]+o[1]),(c[2]+o[2])}end
function br(c,o)return c[1]*o[2]-c[2]*o[1]end
function sub(c,o)return{(c[1]-o[1]),(c[2]-o[2])}end
function bd(c,o)return{c[1]*o,c[2]*o}end
function bC(c)return((c+L)%360)-L end
function sin(c)return s.sin(c/L*pi)end
function cos(c)return s.cos(c/L*pi)end
function tan(c)return s.tan(c/L*pi)end
function bD(c)return s.atan(c)*L/pi end
function bA(c)return s.atan(c[2],c[1])*L/pi end
function bm(c,o,bu)return aA(T(o,c),bu)end
function aq(c)return P(c+.5)end
function bE(c,o)return sqrt(((c[1]-o[1])^2)+((c[2]-o[2])^2))end
function aX(c)return{c[1],-c[2]}end
function bB(c)c=c-1
c=c|(c>>1)c=c|(c>>2)c=c|(c>>4)return c+1
end
a={}ar=1
ac=3
Z=aD
F={{0,0},0,0}aB=288
D=aB//2
C=128
au=C//2
bi=1.2
be={1,1}aI=1
V=1
aS=500
t=100
bn=100
aR=0
N=0
R=0
Q=0
aO=3002
aU=32768
v={}bl=.05
B={}af={}bp=2
ag=35
ab=0
aP=0
ay=0
K=1
aQ=0
an=0
am=0
X=aj
aG=0
aC=0
function bk(b,c)if b<aU then
J=a[7][b]return bk(J[0<br({J[3],J[4]},sub(c,J))and 8 or 7],c)else
return b-aU
end
end
function bo(c)J=a[5][a[6][c][2]]return a[8][a[3][a[2][J[4]][J[5]+6]][6]]end
function ap(i,r,av,ax)local E,k=x.drawLine,x.setColor
av=av..""
ax=a[19][ax]for b=#av,1,-1 do
_=ax[al.byte(al.sub(av,b,b))]i=i-ax[1]if _>0 then
d=a[23][_]q,j=d[1],d[2]w=i-d[4]+1
ai=r-d[5]for h=0,q-1 do
for f=0,j-1 do
n=d[7+f+h*j]if n~=0 then
e=a[20][n]k(e[1],e[2],e[3])E(w+h,ai+f,w+h,ai+f+1)end
end
end
end
end
end
function p(ba,b_,ae,m)m=m or{59,59,59}x.setColor(13,0,0)x.drawText(ba+1,b_+1,ae)x.setColor(m[1],m[2],m[3])x.drawText(ba,b_,ae)end
function onTick()aQ=0
for h=1,3 do
if Y(9)and(not Z)or not a[21]then
aE=property.getText(ar)b=1
u=""
_=al.sub(aE,b,b)while _~=""do
M=al.byte(_)if M>64 then
u=(u..M-65)+0
if K==1 then
bb=u
a[u]=a[u]or{}elseif K==2 then
bt=u
aa=0
elseif K==3 then
aJ=u
else
if aa==0 then
aa=bt
aJ=aJ-1
aH={}a[bb][#a[bb]+1]=aH
end
aH[#aH+1]=u
aa=aa-1
K=T(aa,aJ)>0 and K-1 or 0
end
K=K+1
u=""
else
u=u.._
end
b=b+1
_=al.sub(aE,b,b)end
ar=ar+1
Z=aE==""
end
end
if Z then
if l(10)>0 then
X=aj
ac=l(10)end
aP=aP+1
a[12][1][aP%#a[12][1]+1]=aq(l(11))an=a[12][1][17]if t>0 and not X then
O={}ak[#ak+1]=O
W=6
_=l(W)while _~=0 do
A={}O[#O+1]=A
for b=0,8 do
A[b+1]=l(W+b)end
W=W+9
_=l(W)end
end
if Y(1)then
if X then
for b=1,10 do
a[b]=a[b+10*ac]end
ac=ac+1
for b=#a[1],1,-1 do
_=a[1][b]_=_[5]&(aO-3000)>0 or ah(a[1],b)end
for b=1,#a[8]do
a[8][b][8]={}end
for b=1,#a[6]do
_=bo(b)_[8][#_[8]+1]=b
end
ak={}end
N=N-1
if t>0 then
if U~=l(1)and l(1)>0 then
v={}_={}_[1]=a[29][l(1)]_[2]=a[16][_[1][3]]bF=_[2][1]_[3]=0
v[1]=_
end
U=l(1)aN=Y(3)if aN and U==5 then
if am<=0 then
am=7
else
aN=false
end
end
am=am-1
if aN then
_=v[1]_[2]=a[16][_[1][4]]_[3]=-1
z=a[19][6][U]if z>0 then
B[#B+1]={z,1}end
end
end
for b=#v,1,-1 do
_=v[b]if _[3]==0 then
if _[2][3]==4 then
if U==5 and am<5 then
bh=1
else
bh=0
end
v[#v+1]={_[1],a[16][_[1][5]+bh],2}end
end
_[3]=_[3]+1
if _[3]>=_[2][2]then
if _[2][4]>2 then
_[2]=a[16][_[2][4]]_[3]=0
else
ah(v,b)end
end
end
if X then
R=50
N=ag*8
aK=ac-4+"map name text start"
end
X=aD
Q=T(Q-4,0)Q=bm(Q+(t-l(3)+aR-l(4))*3,0,g)R=T(R-1.5,0)t=l(3)aR,bj,aY,bf=l(4)if l(2)>0 and t>0 then
_=a[2][l(2)]if _ then
if _[4]==3008 then
aW=_[5]>0 and P(_[5])bf=aj
elseif _[4]>3004 then
aS=T(aS+3*(_[4]-3006),1)aY=aj
elseif _[4]>3000 then
aO=_[4]bj=aj
elseif _[4]>=14 and _[4]<=16 then
if a[12][1][_[4]]==0 then
N=ag*4
aK=_[4]-14+"door text start"
end
end
end
end
aC=aC-1
if aC<1 then
aG=0
end
for b=1,#ak do
O=ak[b]for h=1,#O do
A=O[h]_=A[1]if _>(2^15)then
_=a[8][_-(2^15)]for f=1,6 do
_[f]=A[f+1]end
elseif _<0 then
M=a[1][-_]if M then
A=M[6]if a[16][A][5]>0 then
R=T(R,15)N=ag*4
aK=a[16][A][5]B[#B+1]={"item pickup sound index",1}if M[4]then
bc=a[15][M[4]]if bc[29]=="light amp index" then
aG=1
aC=4200
end
if bc[29]=="computer area map index" then
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
ah(a[1],-_)else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for f=1,8 do
_[a[19][1][f]]=A[f+1]end
_[15]=0
end
end
end
ak={}_=a[1][1]F[1]={_[1],_[2]}F[3]=_[3]bq=bk(#a[7],F[1])az=bo(bq)F[2]=az[1]+41
bz=aA(az[5]/g+aG,1)^1.3
for b=1,#az[8]do
_=a[6][az[8][b]]for h=_[2],_[1]+_[2]-1 do
bw=a[5][h]bs=a[2][bw[4]]bs[8]=2
end
end
aV=Y(2)if l(12)>0 and t>0 then
B[#B+1]={l(12),1}end
ab=ab-1
ay=ay-1
if not be[U]then
be[U]=1
ay=70
end
aL=(4-aA(t//20,4))*8
if t<=0 then
V=41
elseif ay>0 then
V=aL+6
elseif t<bn then
ab=ag
V=aL+7
elseif ab<=0 then
ab=16
aI=aI%256+1
V=aL+a[13][1][aI]%3
end
bn=t
end
for b=#B,1,-1 do
z=B[b]_=a[18][z[1]]if Y(1)then
y=_[z[2]]z[2]=z[2]+4
else
y=_[z[2]+2]end
if y and y>0 then
af[#af+1]={y,1}end
if z[2]>=#_ then
ah(B,b)end
end
for b=1,32 do
aZ(b,0)end
for b=#af,1,-1 do
y=af[b]aZ(b+3,bm(aq((y[1]+12)//2),1,60))y[2]=y[2]+1
if y[2]>bp then
ah(af,b)end
end
end
end
function onDraw()x=screen
local ad,k,E,ae=x.drawRectF,x.setColor,x.drawLine,x.drawText
aQ=aQ+1
if a[21]and not Z then
d=a[25][1]q,j=d[1],d[2]i,r=D-q/2,80-j/2
for f=0,q-1 do
w=i+f
for S=0,j-1 do
n=d[5+S+f*j]if n~=0 then
e=a[20][n]k(e[1],e[2],e[3])E(w,r+S,w,r+S+1)end
end
end
end
if not aV then
for b=1,#v do
d=v[b][2][1]aM=d>0 and bz or 1
d=a[17][abs(d)][1]d=a[23][d]q,j,aF=d[1],d[2],d[3]*.7
aT=aF*bi
i,r=D-(d[4]+160)*.7,C-(d[5]+148)*.7*bi
for f=0,q-1 do
w=i+f*aF
for S=0,j-1 do
n=d[7+S+f*j]if n~=0 then
e=a[20][n]k(e[1]*aM,e[2]*aM,e[3]*aM)ad(w,r+S*aT,aF,aT)end
end
end
end
end
if Z then
if aV then
k(0,0,0)ad(0,0,aB,C)for b=1,#a[2]do
_=a[2][b]if _[8]then
I=aw(aX(bd(sub(a[4][_[1]],F[1]),bl)),{D,au})H=aw(aX(bd(sub(a[4][_[2]],F[1]),bl)),{D,au})if _[8]==1 then
k(0,50,0)elseif _[3]&4>0 then
if _[4]==14 then
k(0,0,g)elseif _[4]==15 then
k(g,0,0)elseif _[4]==16 then
k(g,g,0)else
k(50,50,50)end
else
k(g,g,g)end
E(I[1],I[2],H[1],H[2])end
end
k(g,g,g)_=a[19][10]for b=1,#_,4 do
as=sin(F[3]-90)at=cos(F[3]-90)I={_[b]*at+_[b+1]*as,_[b+1]*at-_[b]*as}H={_[b+2]*at+_[b+3]*as,_[b+3]*at-_[b+2]*as}I=aw(I,{D,au})H=aw(H,{D,au})E(I[1],I[2],H[1],H[2])end
end
k(g,Q>0 and 0 or g,0,Q+R)ad(0,0,aB,C)k(30,30,30)ad(0,C,aB,32)k(5,5,5)ad(D-16,C,32,32)d=a[23]["face textures start"+(V)*"number of sprite mipmap levels"]q,j=d[1],d[2]i=D-q/2
for b=0,q-1 do
for h=0,j-1 do
n=d[7+h+b*j]if n~=0 then
e=a[20][n]k(e[1],e[2],e[3])E(i+b,C+1+h,i+b,C+2+h)end
end
end
for b=1,3 do
if a[12][1][13+b]>0 then
i,r=221,125+b*8
d=a[23]["key textures start"+a[19][5][b]*"number of sprite mipmap levels"]q,j=d[1],d[2]for h=0,q-1 do
for f=0,j-1 do
n=d[7+f+h*j]if n~=0 then
e=a[20][n]k(e[1],e[2],e[3])E(i+h,r+f,i+h,r+f+1)end
end
end
end
end
if N>0 then
bg=a[13][aK]i=0
r=0
for by=1,#bg do
_=bg[by]if _>0 then
d=a[23][_]q,j=d[1],d[2]w=i-d[4]ai=r-d[5]for b=0,q-1 do
for h=0,j-1 do
n=d[7+h+b*j]if n~=0 then
e=a[20][n]k(e[1],e[2],e[3])E(w+b,ai+h,w+b,ai+h+1)end
end
end
i=i+q
else
i=i+4
end
end
end
ap(124,G,P(t).."%",16)ap(218,G,P(aR).."%",16)p(124-28-15,ao,"HEALTH")p(218-28-15,ao,"ARMOUR")m=(an<ag and an>0)and{g,0,0}p(2,G,"TPS:",m)p(26,G,an>0 and an or "N/A",m)m=bj and{g,g,44}p(2,138,"DIF:",m)bv={"EASY","MED","HARD"}p(26,138,bv[P(aA(aO-3000,3))],m)m=aY and{g,g,44}p(2,145,"LOD:",m)p(26,145,P(aS),m)m=bf and{g,g,44}p(2,ao,"TEX:",m)bx={"FULL","HALF"}p(26,ao,aW and bx[aW]or "OFF",m)p(232,G,"BULL")p(232,138,"SHEL")p(232,145,"ROKT")p(232,ao,"CELL")for b=1,4 do
c=124+b*7
ap(265,c,aq(a[12][1][b]),15)ap(285,c,aq(a[19][17][b]),15)p(268,c,"/")end
else
ae(1,G,"ROM:")ae(26,G,ar)end
end
