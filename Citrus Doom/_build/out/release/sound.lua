
T=152
I=131
u=255
J=180
q=math
O=q.max
ao=q.min
abs=q.abs
ai=q.floor
sqrt=q.sqrt
k=input.getNumber
ae=input.getBool
b_=output.setNumber
pi=q.pi
aH=false
aR=true
U=table.remove
ad=string
function aq(c,l)return{(c[1]+l[1]),(c[2]+l[2])}end
function bo(c,l)return c[1]*l[2]-c[2]*l[1]end
function sub(c,l)return{(c[1]-l[1]),(c[2]-l[2])}end
function aT(c,l)return{c[1]*l,c[2]*l}end
function bp(c)return((c+J)%360)-J end
function sin(c)return q.sin(c/J*pi)end
function cos(c)return q.cos(c/J*pi)end
function tan(c)return q.tan(c/J*pi)end
function bq(c)return q.atan(c)*J/pi end
function bu(c)return q.atan(c[2],c[1])*J/pi end
function aU(c,l,bg)return ao(O(l,c),bg)end
function al(c)return ai(c+.5)end
function br(c,l)return sqrt(((c[1]-l[1])^2)+((c[2]-l[2])^2))end
function bc(c)return{c[1],-c[2]}end
function bs(c)c=c-1
c=c|(c>>1)c=c|(c>>2)c=c|(c>>4)return c+1
end
a={}af=1
V=3
Y=aH
C={{0,0},0,0}an=288
B=an//2
D=128
av=D//2
aZ=1.2
bd={1,1}aE=1
ak=1
V=3
az=400
w=100
aW=100
aL=0
ar=0
P=0
R=0
aI=3002
X={}aO=32768
v={}aN=.05
K={}ac={}bn=2
ag=0
aA=0
ap=0
G=1
aJ=0
S=0
aj=aR
function bb(b,c)if b<aO then
L=a[7][b]return bb(L[0<bo({L[3],L[4]},sub(c,L))and 8 or 7],c)else
return b-aO
end
end
function aV(c)L=a[5][a[6][c][2]]return a[8][a[3][a[2][L[4]][L[5]+6]][6]]end
function as(h,p,aw,ax)local A,o=s.drawLine,s.setColor
aw=aw..""
ax=a[19][ax]for b=#aw,1,-1 do
_=ax[ad.byte(ad.sub(aw,b,b))]h=h-ax[1]if _>0 then
d=a[23][_]n,i=d[1],d[2]t=h-d[4]+1
aa=p-d[5]for g=0,n-1 do
for f=0,i-1 do
j=d[7+f+g*i]if j~=0 then
e=a[20][j]o(e[1],e[2],e[3])A(t+g,aa+f,t+g,aa+f+1)end
end
end
end
end
end
function m(aM,aQ,ab)s.setColor(13,0,0)s.drawText(aM+1,aQ+1,ab)s.setColor(59,59,59)s.drawText(aM,aQ,ab)end
function onTick()aJ=0
for g=1,3 do
if ae(9)and(not Y)or not a[21]then
aD=property.getText(af)b=1
r=""
_=ad.sub(aD,b,b)while _~=""do
F=ad.byte(_)if F>64 then
r=(r..F-65)+0
if G==1 then
ba=r
a[r]=a[r]or{}elseif G==2 then
be=r
W=0
elseif G==3 then
aB=r
else
if W==0 then
W=be
aB=aB-1
aF={}a[ba][#a[ba]+1]=aF
end
aF[#aF+1]=r
W=W-1
G=O(W,aB)>0 and G-1 or 0
end
G=G+1
r=""
else
r=r.._
end
b=b+1
_=ad.sub(aD,b,b)end
af=af+1
Y=aD==""
end
end
if Y then
if k(9)>0 then
aj=aR
V=k(9)end
aA=aA+1
a[12][1][aA%#a[12][1]+1]=al(k(10))if w>0 and not aj then
N={}X[#X+1]=N
ah=5
_=k(ah)while _~=0 do
y={}N[#N+1]=y
for b=0,8 do
y[b+1]=k(ah+b)end
ah=ah+9
_=k(ah)end
end
if ae(1)then
if aj then
for b=1,10 do
a[b]=a[b+10*V]end
V=V+1
aj=aH
for b=#a[1],1,-1 do
_=a[1][b]_=_[5]&(aI-3000)>0 or U(a[1],b)end
for b=1,#a[8]do
a[8][b][8]={}end
for b=1,#a[6]do
_=aV(b)_[8][#_[8]+1]=b
end
end
ar=ar-1
if w>0 then
if M~=k(1)and k(1)>0 then
v={}_={}_[1]=a[29][k(1)]_[2]=a[16][_[1][3]]bt=_[2][1]_[3]=0
v[1]=_
end
M=k(1)aC=ae(3)if aC and M==5 then
if S<=0 then
S=7
else
aC=false
end
end
S=S-1
if aC then
_=v[1]_[2]=a[16][_[1][4]]_[3]=-1
z=a[19][6][M]if z>0 then
K[#K+1]={z,1}end
end
end
for b=#v,1,-1 do
_=v[b]if _[3]==0 then
if _[2][3]==4 then
if M==5 and S<5 then
aY=1
else
aY=0
end
v[#v+1]={_[1],a[16][_[1][5]+aY],2}end
end
_[3]=_[3]+1
if _[3]>=_[2][2]then
if _[2][4]>2 then
_[2]=a[16][_[2][4]]_[3]=0
else
U(v,b)end
end
end
if aj then
P=50
end
R=O(R-4,0)R=aU(R+(w-k(3)+aL-k(4))*3,0,u)P=O(P-1.5,0)w=k(3)aL=k(4)if k(2)>0 then
_=a[2][k(2)]if _ then
if _[4]>3004 and _[4]<3008 then
az=O(az+3*(_[4]-3006),1)elseif _[4]>3000 then
aI=_[4]end
end
end
for b=1,#X do
N=X[b]for g=1,#N do
y=N[g]_=y[1]if _>(2^15)then
_=a[8][_-(2^15)]for f=1,6 do
_[f]=y[f+1]end
elseif _<0 then
F=a[1][-_]if F~=nil then
y=F[6]if a[16][y][5]>0 then
P=O(P,15)ar=35
bk=a[16][y][5]K[#K+1]={a[19][11][1],1}if F[4]then
bm=a[15][F[4]]if bm[29]==a[19][13][1]then
for f=1,#a[2]do
a[2][f][8]=true
end
end
end
end
end
while-_>#a[1]do
a[1][#a[1]+1]=aH
end
U(a[1],-_)else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for f=1,8 do
_[a[19][1][f]]=y[f+1]end
_[15]=0
end
end
end
X={}_=a[1][1]C[1]={_[1],_[2]}C[3]=_[3]bh=bb(#a[7],C[1])at=aV(bh)C[2]=at[1]+41
bj=ao(at[5]/u,1)^1.3
for b=1,#at[8]do
_=a[6][at[8][b]]for g=_[2],_[1]+_[2]-1 do
bi=a[5][g]bl=a[2][bi[4]]bl[8]=true
end
end
aS=ae(2)ag=ag-1
ap=ap-1
if not bd[M]then
bd[M]=1
ap=70
end
aK=(4-ao(w//20,4))*8
if w<=0 then
ak=41
elseif ap>0 then
ak=aK+6
elseif w<aW then
ag=35
ak=aK+7
elseif ag<=0 then
ag=16
aE=aE%256+1
ak=aK+a[13][1][aE]%3
end
aW=w
end
for b=#K,1,-1 do
z=K[b]_=a[18][z[1]]if ae(1)then
x=_[z[2]]z[2]=z[2]+4
else
x=_[z[2]+2]end
if x and x>0 then
ac[#ac+1]={x,1}end
if z[2]>=#_ then
U(K,b)end
end
for b=1,32 do
b_(b,0)end
for b=#ac,1,-1 do
x=ac[b]b_(b+3,aU(al((x[1]+12)//2),1,60))x[2]=x[2]+1
if x[2]>bn then
U(ac,b)end
end
end
end
function onDraw()s=screen
local Z,o,A,ab=s.drawRectF,s.setColor,s.drawLine,s.drawText
aJ=aJ+1
if a[21]and not Y then
d=a[25][1]n,i=d[1],d[2]h,p=B-n/2,80-i/2
for f=0,n-1 do
t=h+f
for Q=0,i-1 do
j=d[5+Q+f*i]if j~=0 then
e=a[20][j]o(e[1],e[2],e[3])A(t,p+Q,t,p+Q+1)end
end
end
end
if not aS then
for b=1,#v do
d=v[b][2][1]ay=d>0 and bj or 1
d=a[17][abs(d)][1]d=a[23][d]n,i,aG=d[1],d[2],d[3]*.7
aX=aG*aZ
h,p=B-(d[4]+160)*.7,D-(d[5]+148)*.7*aZ
for f=0,n-1 do
t=h+f*aG
for Q=0,i-1 do
j=d[7+Q+f*i]if j~=0 then
e=a[20][j]o(e[1]*ay,e[2]*ay,e[3]*ay)Z(t,p+Q*aX,aG,aX)end
end
end
end
end
if Y then
if aS then
o(0,0,0)Z(0,0,an,D)for b=1,#a[2]do
_=a[2][b]if _[8]then
E=aq(bc(aT(sub(a[4][_[1]],C[1]),aN)),{B,av})H=aq(bc(aT(sub(a[4][_[2]],C[1]),aN)),{B,av})if _[3]&4>0 then
o(50,50,50)else
o(u,u,u)end
A(E[1],E[2],H[1],H[2])end
end
o(u,u,u)_=a[19][10]for b=1,#_,4 do
am=sin(C[3]-90)au=cos(C[3]-90)E={_[b]*au+_[b+1]*am,_[b+1]*au-_[b]*am}H={_[b+2]*au+_[b+3]*am,_[b+3]*au-_[b+2]*am}E=aq(E,{B,av})H=aq(H,{B,av})A(E[1],E[2],H[1],H[2])end
end
o(u,R>0 and 0 or u,0,R+P)Z(0,0,an,D)o(30,30,30)Z(0,D,an,32)o(5,5,5)Z(B-16,D,32,32)d=a[23][a[19][3][1]+(ak)*a[19][3][3]]n,i=d[1],d[2]h=B-n/2
for b=0,n-1 do
for g=0,i-1 do
j=d[7+g+b*i]if j~=0 then
e=a[20][j]o(e[1],e[2],e[3])A(h+b,D+1+g,h+b,D+2+g)end
end
end
for b=1,3 do
if a[12][1][13+b]>0 then
h,p=221,125+b*8
d=a[23][a[19][3][4]+a[19][5][b]*a[19][3][3]]n,i=d[1],d[2]for g=0,n-1 do
for f=0,i-1 do
j=d[7+f+g*i]if j~=0 then
e=a[20][j]o(e[1],e[2],e[3])A(h+g,p+f,h+g,p+f+1)end
end
end
end
end
if ar>0 then
aP=a[13][bk]h=0
p=0
for bf=1,#aP do
_=aP[bf]if _>0 then
d=a[23][_]n,i=d[1],d[2]t=h-d[4]aa=p-d[5]for b=0,n-1 do
for g=0,i-1 do
j=d[7+g+b*i]if j~=0 then
e=a[20][j]o(e[1],e[2],e[3])A(t+b,aa+g,t+b,aa+g+1)end
end
end
h=h+n
else
h=h+4
end
end
end
as(124,I,ai(w).."%",16)as(218,I,ai(aL).."%",16)m(124-28-15,T,"HEALTH")m(218-28-15,T,"ARMOUR")m(2,I,"ROM:")m(26,I,af)m(2,138,"TPS:")m(26,138,a[12][1][17])m(2,145,"DIF:")m(26,145,ai(ao(aI-3000,3)))m(2,T,"LOD:")m(26,T,ai(az))m(232,I,"BULL")m(232,138,"SHEL")m(232,145,"ROKT")m(232,T,"CELL")for b=1,4 do
c=124+b*7
as(265,c,al(a[12][1][b]),15)as(285,c,al(a[19][17][b]),15)m(268,c,"/")end
else
ab(1,I,"ROM:")ab(26,I,af)end
end
