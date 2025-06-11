
ak=152
L=131
s=255
J=180
p=math
R=p.max
aw=p.min
abs=p.abs
ai=p.floor
sqrt=p.sqrt
k=input.getNumber
ae=input.getBool
aM=output.setNumber
pi=p.pi
ay=false
ba=true
T=table.remove
S=string
function au(c,l)return{(c[1]+l[1]),(c[2]+l[2])}end
function bf(c,l)return c[1]*l[2]-c[2]*l[1]end
function sub(c,l)return{(c[1]-l[1]),(c[2]-l[2])}end
function aR(c,l)return{c[1]*l,c[2]*l}end
function bt(c)return((c+J)%360)-J end
function sin(c)return p.sin(c/J*pi)end
function cos(c)return p.cos(c/J*pi)end
function tan(c)return p.tan(c/J*pi)end
function bq(c)return p.atan(c)*J/pi end
function bs(c)return p.atan(c[2],c[1])*J/pi end
function aP(c,l,bg)return aw(R(l,c),bg)end
function an(c)return ai(c+.5)end
function bu(c,l)return sqrt(((c[1]-l[1])^2)+((c[2]-l[2])^2))end
function bd(c)return{c[1],-c[2]}end
function bp(c)c=c-1
c=c|(c>>1)c=c|(c>>2)c=c|(c>>4)return c+1
end
a={}ah=1
aj=3
Z=ay
D={{0,0},0,0}av=288
C=av//2
B=128
ax=B//2
aS=1.2
aQ={1,1}aF=1
ab=1
aj=3
aD=400
z=100
bc=100
aH=0
aq=0
M=0
O=0
aI=3002
aV=32768
v={}aZ=.05
I={}X={}bo=2
ac=0
az=0
ar=0
K=1
aJ=0
Y=0
V=ba
function aU(b,c)if b<aV then
H=a[7][b]return aU(H[0<bf({H[3],H[4]},sub(c,H))and 8 or 7],c)else
return b-aV
end
end
function aT(c)H=a[5][a[6][c][2]]return a[8][a[3][a[2][H[4]][H[5]+6]][6]]end
function ao(h,r,ap,am)local A,o=u.drawLine,u.setColor
ap=ap..""
am=a[19][am]for b=#ap,1,-1 do
_=am[S.byte(S.sub(ap,b,b))]h=h-am[1]if _>0 then
d=a[23][_]n,i=d[1],d[2]t=h-d[4]+1
W=r-d[5]for g=0,n-1 do
for f=0,i-1 do
j=d[7+f+g*i]if j~=0 then
e=a[20][j]o(e[1],e[2],e[3])A(t+g,W+f,t+g,W+f+1)end
end
end
end
end
end
function m(aX,aN,U)u.setColor(13,0,0)u.drawText(aX+1,aN+1,U)u.setColor(59,59,59)u.drawText(aX,aN,U)end
function onTick()aJ=0
for g=1,3 do
if ae(9)and(not Z)or not a[21]then
aL=property.getText(ah)b=1
q=""
_=S.sub(aL,b,b)while _~=""do
G=S.byte(_)if G>64 then
q=(q..G-65)+0
if K==1 then
aO=q
a[q]=a[q]or{}elseif K==2 then
bi=q
af=0
elseif K==3 then
aA=q
else
if af==0 then
af=bi
aA=aA-1
aC={}a[aO][#a[aO]+1]=aC
end
aC[#aC+1]=q
af=af-1
K=R(af,aA)>0 and K-1 or 0
end
K=K+1
q=""
else
q=q.._
end
b=b+1
_=S.sub(aL,b,b)end
ah=ah+1
Z=aL==""
end
end
if Z then
if k(9)>0 then
V=ba
aj=k(9)end
az=az+1
a[12][1][az%#a[12][1]+1]=an(k(10))if z>0 and not V then
Q={}ag[#ag+1]=Q
aa=5
_=k(aa)while _~=0 do
y={}Q[#Q+1]=y
for b=0,8 do
y[b+1]=k(aa+b)end
aa=aa+9
_=k(aa)end
end
if ae(1)then
if V then
for b=1,10 do
a[b]=a[b+10*aj]end
aj=aj+1
V=ay
for b=#a[1],1,-1 do
_=a[1][b]_=_[5]&(aI-3000)>0 or T(a[1],b)end
for b=1,#a[8]do
a[8][b][8]={}end
for b=1,#a[6]do
_=aT(b)_[8][#_[8]+1]=b
end
ag={}end
aq=aq-1
if z>0 then
if P~=k(1)and k(1)>0 then
v={}_={}_[1]=a[29][k(1)]_[2]=a[16][_[1][3]]br=_[2][1]_[3]=0
v[1]=_
end
P=k(1)aB=ae(3)if aB and P==5 then
if Y<=0 then
Y=7
else
aB=false
end
end
Y=Y-1
if aB then
_=v[1]_[2]=a[16][_[1][4]]_[3]=-1
x=a[19][6][P]if x>0 then
I[#I+1]={x,1}end
end
end
for b=#v,1,-1 do
_=v[b]if _[3]==0 then
if _[2][3]==4 then
if P==5 and Y<5 then
bb=1
else
bb=0
end
v[#v+1]={_[1],a[16][_[1][5]+bb],2}end
end
_[3]=_[3]+1
if _[3]>=_[2][2]then
if _[2][4]>2 then
_[2]=a[16][_[2][4]]_[3]=0
else
T(v,b)end
end
end
if V then
M=50
end
O=R(O-4,0)O=aP(O+(z-k(3)+aH-k(4))*3,0,s)M=R(M-1.5,0)z=k(3)aH=k(4)if k(2)>0 then
_=a[2][k(2)]if _ then
if _[4]>3004 and _[4]<3008 then
aD=R(aD+3*(_[4]-3006),1)elseif _[4]>3000 then
aI=_[4]end
end
end
for b=1,#ag do
Q=ag[b]for g=1,#Q do
y=Q[g]_=y[1]if _>(2^15)then
_=a[8][_-(2^15)]for f=1,6 do
_[f]=y[f+1]end
elseif _<0 then
G=a[1][-_]if G then
y=G[6]if a[16][y][5]>0 then
M=R(M,15)aq=35
bj=a[16][y][5]I[#I+1]={a[19][11][1],1}if G[4]then
bm=a[15][G[4]]if bm[29]==a[19][13][1]then
for f=1,#a[2]do
a[2][f][8]=true
end
end
end
end
end
while-_>#a[1]do
a[1][#a[1]+1]=ay
end
T(a[1],-_)else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for f=1,8 do
_[a[19][1][f]]=y[f+1]end
_[15]=0
end
end
end
ag={}_=a[1][1]D[1]={_[1],_[2]}D[3]=_[3]bn=aU(#a[7],D[1])al=aT(bn)D[2]=al[1]+41
be=aw(al[5]/s,1)^1.3
for b=1,#al[8]do
_=a[6][al[8][b]]for g=_[2],_[1]+_[2]-1 do
bk=a[5][g]bl=a[2][bk[4]]bl[8]=true
end
end
b_=ae(2)ac=ac-1
ar=ar-1
if not aQ[P]then
aQ[P]=1
ar=70
end
aK=(4-aw(z//20,4))*8
if z<=0 then
ab=41
elseif ar>0 then
ab=aK+6
elseif z<bc then
ac=35
ab=aK+7
elseif ac<=0 then
ac=16
aF=aF%256+1
ab=aK+a[13][1][aF]%3
end
bc=z
end
for b=#I,1,-1 do
x=I[b]_=a[18][x[1]]if ae(1)then
w=_[x[2]]x[2]=x[2]+4
else
w=_[x[2]+2]end
if w and w>0 then
X[#X+1]={w,1}end
if x[2]>=#_ then
T(I,b)end
end
for b=1,32 do
aM(b,0)end
for b=#X,1,-1 do
w=X[b]aM(b+3,aP(an((w[1]+12)//2),1,60))w[2]=w[2]+1
if w[2]>bo then
T(X,b)end
end
end
end
function onDraw()u=screen
local ad,o,A,U=u.drawRectF,u.setColor,u.drawLine,u.drawText
aJ=aJ+1
if a[21]and not Z then
d=a[25][1]n,i=d[1],d[2]h,r=C-n/2,80-i/2
for f=0,n-1 do
t=h+f
for N=0,i-1 do
j=d[5+N+f*i]if j~=0 then
e=a[20][j]o(e[1],e[2],e[3])A(t,r+N,t,r+N+1)end
end
end
end
if not b_ then
for b=1,#v do
d=v[b][2][1]aG=d>0 and be or 1
d=a[17][abs(d)][1]d=a[23][d]n,i,aE=d[1],d[2],d[3]*.7
aW=aE*aS
h,r=C-(d[4]+160)*.7,B-(d[5]+148)*.7*aS
for f=0,n-1 do
t=h+f*aE
for N=0,i-1 do
j=d[7+N+f*i]if j~=0 then
e=a[20][j]o(e[1]*aG,e[2]*aG,e[3]*aG)ad(t,r+N*aW,aE,aW)end
end
end
end
end
if Z then
if b_ then
o(0,0,0)ad(0,0,av,B)for b=1,#a[2]do
_=a[2][b]if _[8]then
F=au(bd(aR(sub(a[4][_[1]],D[1]),aZ)),{C,ax})E=au(bd(aR(sub(a[4][_[2]],D[1]),aZ)),{C,ax})if _[3]&4>0 then
o(50,50,50)else
o(s,s,s)end
A(F[1],F[2],E[1],E[2])end
end
o(s,s,s)_=a[19][10]for b=1,#_,4 do
at=sin(D[3]-90)as=cos(D[3]-90)F={_[b]*as+_[b+1]*at,_[b+1]*as-_[b]*at}E={_[b+2]*as+_[b+3]*at,_[b+3]*as-_[b+2]*at}F=au(F,{C,ax})E=au(E,{C,ax})A(F[1],F[2],E[1],E[2])end
end
o(s,O>0 and 0 or s,0,O+M)ad(0,0,av,B)o(30,30,30)ad(0,B,av,32)o(5,5,5)ad(C-16,B,32,32)d=a[23][a[19][3][1]+(ab)*a[19][3][3]]n,i=d[1],d[2]h=C-n/2
for b=0,n-1 do
for g=0,i-1 do
j=d[7+g+b*i]if j~=0 then
e=a[20][j]o(e[1],e[2],e[3])A(h+b,B+1+g,h+b,B+2+g)end
end
end
for b=1,3 do
if a[12][1][13+b]>0 then
h,r=221,125+b*8
d=a[23][a[19][3][4]+a[19][5][b]*a[19][3][3]]n,i=d[1],d[2]for g=0,n-1 do
for f=0,i-1 do
j=d[7+f+g*i]if j~=0 then
e=a[20][j]o(e[1],e[2],e[3])A(h+g,r+f,h+g,r+f+1)end
end
end
end
end
if aq>0 then
aY=a[13][bj]h=0
r=0
for bh=1,#aY do
_=aY[bh]if _>0 then
d=a[23][_]n,i=d[1],d[2]t=h-d[4]W=r-d[5]for b=0,n-1 do
for g=0,i-1 do
j=d[7+g+b*i]if j~=0 then
e=a[20][j]o(e[1],e[2],e[3])A(t+b,W+g,t+b,W+g+1)end
end
end
h=h+n
else
h=h+4
end
end
end
ao(124,L,ai(z).."%",16)ao(218,L,ai(aH).."%",16)m(124-28-15,ak,"HEALTH")m(218-28-15,ak,"ARMOUR")m(2,L,"ROM:")m(26,L,ah)m(2,138,"TPS:")m(26,138,a[12][1][17])m(2,145,"DIF:")m(26,145,ai(aw(aI-3000,3)))m(2,ak,"LOD:")m(26,ak,ai(aD))m(232,L,"BULL")m(232,138,"SHEL")m(232,145,"ROKT")m(232,ak,"CELL")for b=1,4 do
c=124+b*7
ao(265,c,an(a[12][1][b]),15)ao(285,c,an(a[19][17][b]),15)m(268,c,"/")end
else
U(1,L,"ROM:")U(26,L,ah)end
end
