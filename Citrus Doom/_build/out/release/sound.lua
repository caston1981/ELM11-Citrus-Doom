
Q=152
H=131
s=255
I=180
au=true
bg=false
aR=input
aC=table.remove
p=math
N=p.max
af=p.min
abs=p.abs
ae=p.floor
sqrt=p.sqrt
l=aR.getNumber
ak=aR.getBool
aN=output.setNumber
pi=p.pi
at=bg
be=au
ab=string
function ai(c,k)return{(c[1]+k[1]),(c[2]+k[2])}end
function bi(c,k)return c[1]*k[2]-c[2]*k[1]end
function sub(c,k)return{(c[1]-k[1]),(c[2]-k[2])}end
function aW(c,k)return{c[1]*k,c[2]*k}end
function bv(c)return((c+I)%360)-I end
function sin(c)return p.sin(c/I*pi)end
function cos(c)return p.cos(c/I*pi)end
function tan(c)return p.tan(c/I*pi)end
function br(c)return p.atan(c)*I/pi end
function bs(c)return p.atan(c[2],c[1])*I/pi end
function bf(c,k,bm)return af(N(k,c),bm)end
function ap(c)return ae(c+.5)end
function bw(c,k)return sqrt(((c[1]-k[1])^2)+((c[2]-k[2])^2))end
function aL(c)return{c[1],-c[2]}end
function bu(c)c=c-1
c=c|(c>>1)c=c|(c>>2)c=c|(c>>4)return c+1
end
a={}Z=1
O=3
aa=at
z={{0,0},0,0}am=288
y=am//2
C=128
ah=C//2
aY=1.2
bb={1,1}aI=1
ac=1
O=3
aJ=400
x=100
aS=100
aF=0
aq=0
L=0
K=0
aU=3002
R={}aO=32768
t={}aT=.05
A={}aA=3
T=0
av=0
aj=0
J=1
aB=0
S=0
U=be
function aZ(b,c)if b<aO then
F=a[7][b]return aZ(F[0<bi({F[3],F[4]},sub(c,F))and 8 or 7],c)else
return b-aO
end
end
function aV(c)F=a[5][a[6][c][2]]return a[8][a[3][a[2][F[4]][F[5]+6]][6]]end
function ag(i,w,ao,al)local q,o=u.drawRectF,u.setColor
ao=ao..""
al=a[19][al]for b=#ao,1,-1 do
_=al[ab.byte(ab.sub(ao,b,b))]i=i-al[1]if _>0 then
d=a[23][_]n,h=d[1],d[2]B=i-d[4]+1
az=w-d[5]for f=0,n-1 do
for g=0,h-1 do
j=d[7+g+f*h]if j~=0 then
e=a[20][j]o(e[1],e[2],e[3])q(B+f,az+g,1,1)end
end
end
end
end
end
function m(bc,aX,P)u.setColor(13,0,0)u.drawText(bc+1,aX+1,P)u.setColor(59,59,59)u.drawText(bc,aX,P)end
function onTick()aB=0
for f=1,3 do
if ak(9)and(not aa)or not a[21]then
aG=property.getText(Z)b=1
r=""
_=ab.sub(aG,b,b)while _~=""do
G=ab.byte(_)if G>64 then
r=(r..G-65)+0
if J==1 then
aM=r
a[r]=a[r]or{}elseif J==2 then
bo=r
X=0
elseif J==3 then
aw=r
else
if X==0 then
X=bo
aw=aw-1
ax={}a[aM][#a[aM]+1]=ax
end
ax[#ax+1]=r
X=X-1
J=N(X,aw)>0 and J-1 or 0
end
J=J+1
r=""
else
r=r.._
end
b=b+1
_=ab.sub(aG,b,b)end
Z=Z+1
aa=aG==""
end
end
if aa then
if l(9)>0 then
U=be
O=l(9)end
av=av+1
a[12][1][av%#a[12][1]+1]=ap(l(10))if x>0 and not U then
M={}R[#R+1]=M
ad=5
_=l(ad)while _~=0 do
v={}M[#M+1]=v
for b=0,8 do
v[b+1]=l(ad+b)end
ad=ad+9
_=l(ad)end
end
if ak(1)then
if U then
for b=1,10 do
a[b]=a[b+10*O]end
O=O+1
U=at
for b=1,#a[1]do
_=a[1][b]end
for b=1,#a[8]do
a[8][b][8]={}end
for b=1,#a[6]do
_=aV(b)_[8][#_[8]+1]=b
end
end
aq=aq-1
if x>0 then
if W~=l(1)and l(1)>0 then
t={}_={}_[1]=a[29][l(1)]_[2]=a[16][_[1][3]]bt=_[2][1]_[3]=0
t[1]=_
end
W=l(1)aK=ak(3)if aK and W==5 then
if S<=0 then
S=7
else
aK=bg
end
end
S=S-1
if aK then
_=t[1]_[2]=a[16][_[1][4]]_[3]=-1
A[#A+1]={1,1}end
end
for b=#t,1,-1 do
_=t[b]if _[3]==0 then
if _[2][3]==4 then
if W==5 and S<5 then
b_=1
else
b_=0
end
t[#t+1]={_[1],a[16][_[1][5]+b_],2}end
end
_[3]=_[3]+1
if _[3]>=_[2][2]then
if _[2][4]>2 then
_[2]=a[16][_[2][4]]_[3]=0
else
aC(t,b)end
end
end
for b=1,32 do
aN(b,0)end
for b=#A,1,-1 do
Y=A[b]_=a[18][Y[1]]for f=0,aA-1 do
aD=_[(Y[2]+f)*2-1]if aD and aD>0 then
aN(2+(b-1)*aA+f,bf(ap((aD+12)//2),1,60))end
end
Y[2]=Y[2]+2
if Y[2]>=aA+#_ then
aC(A,b)end
end
if U then
L=50
end
K=N(K-4,0)K=bf(K+(x-l(3)+aF-l(4))*3,0,s)L=N(L-1.5,0)x=l(3)aF=l(4)if l(2)>0 then
_=a[2][l(2)]if _ then
if _[4]>3004 and _[4]<3008 then
aJ=N(aJ+3*(_[4]-3006),1)elseif _[4]>3000 then
aU=_[4]end
end
end
for b=1,#R do
M=R[b]for f=1,#M do
v=M[f]_=v[1]if _>(2^15)then
_=a[8][_-(2^15)]for g=1,6 do
_[g]=v[g+1]end
elseif _<0 then
G=a[1][-_]if G~=nil then
v=G[6]if a[16][v][5]>0 then
L=N(L,15)aq=35
bk=a[16][v][5]A[#A+1]={a[19][11][1],1}if G[4]then
bh=a[15][G[4]]if bh[29]==a[19][13][1]then
for g=1,#a[2]do
a[2][g][8]=au
end
end
end
end
end
while-_>#a[1]do
a[1][#a[1]+1]=at
end
aC(a[1],-_)else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for g=1,8 do
_[a[19][1][g]]=v[g+1]end
_[15]=0
end
end
end
R={}_=a[1][1]z[1]={_[1],_[2]}z[3]=_[3]bp=aZ(#a[7],z[1])ar=aV(bp)z[2]=ar[1]+41
bq=af(ar[5]/s,1)^1.3
for b=1,#ar[8]do
_=a[6][ar[8][b]]for f=_[2],_[1]+_[2]-1 do
bj=a[5][f]bn=a[2][bj[4]]bn[8]=au
end
end
bd=ak(2)T=T-1
aj=aj-1
if not bb[W]then
bb[W]=1
aj=70
end
ay=(4-af(x//20,4))*8
if x<=0 then
ac=41
elseif aj>0 then
ac=ay+6
elseif x<aS then
T=35
ac=ay+7
elseif T<=0 then
T=16
aI=aI%256+1
ac=ay+a[13][1][aI]%3
end
aS=x
end
end
end
function onDraw()u=screen
local q,o,aQ,P=u.drawRectF,u.setColor,u.drawLine,u.drawText
aB=aB+1
if a[21]and not aa then
d=a[25][1]n,h=d[1],d[2]i,w=y-n/2,80-h/2
for g=0,n-1 do
B=i+g
for V=0,h-1 do
j=d[5+V+g*h]if j~=0 then
e=a[20][j]o(e[1],e[2],e[3])q(B,w+V,1,1)end
end
end
end
if not bd then
for b=1,#t do
d=t[b][2][1]aH=d>0 and bq or 1
d=a[17][abs(d)][1]d=a[23][d]n,h,aE=d[1],d[2],d[3]*.7
aP=aE*aY
i,w=y-(d[4]+160)*.7,C-(d[5]+148)*.7*aY
for g=0,n-1 do
B=i+g*aE
for V=0,h-1 do
j=d[7+V+g*h]if j~=0 then
e=a[20][j]o(e[1]*aH,e[2]*aH,e[3]*aH)q(B,w+V*aP,aE,aP)end
end
end
end
end
if aa then
if bd then
o(0,0,0)q(0,0,am,C)for b=1,#a[2]do
_=a[2][b]if _[8]then
E=ai(aL(aW(sub(a[4][_[1]],z[1]),aT)),{y,ah})D=ai(aL(aW(sub(a[4][_[2]],z[1]),aT)),{y,ah})if _[3]&4>0 then
o(50,50,50)else
o(s,s,s)end
aQ(E[1],E[2],D[1],D[2])end
end
o(s,s,s)_=a[19][10]for b=1,#_,4 do
an=sin(z[3]-90)as=cos(z[3]-90)E={_[b]*as+_[b+1]*an,_[b+1]*as-_[b]*an}D={_[b+2]*as+_[b+3]*an,_[b+3]*as-_[b+2]*an}E=ai(E,{y,ah})D=ai(D,{y,ah})aQ(E[1],E[2],D[1],D[2])end
end
o(s,K>0 and 0 or s,0,K+L)q(0,0,am,C)o(30,30,30)q(0,C,am,32)o(5,5,5)q(y-16,C,32,32)d=a[23][a[19][3][1]+(ac)*a[19][3][3]]n,h=d[1],d[2]i=y-n/2
for b=0,n-1 do
for f=0,h-1 do
j=d[7+f+b*h]if j~=0 then
e=a[20][j]o(e[1],e[2],e[3])q(i+b,C+1+f,1,1)end
end
end
for b=1,3 do
if a[12][1][13+b]>0 then
i,w=221,125+b*8
d=a[23][a[19][3][4]+a[19][5][b]*a[19][3][3]]n,h=d[1],d[2]for f=0,n-1 do
for g=0,h-1 do
j=d[7+g+f*h]if j~=0 then
e=a[20][j]o(e[1],e[2],e[3])q(i+f,w+g,1,1)end
end
end
end
end
if aq>0 then
ba=a[13][bk]i=0
w=0
for bl=1,#ba do
_=ba[bl]if _>0 then
d=a[23][_]n,h=d[1],d[2]B=i-d[4]az=w-d[5]for b=0,n-1 do
for f=0,h-1 do
j=d[7+f+b*h]if j~=0 then
e=a[20][j]o(e[1],e[2],e[3])q(B+b,az+f,1,1)end
end
end
i=i+n
else
i=i+4
end
end
end
ag(124,H,ae(x).."%",16)ag(218,H,ae(aF).."%",16)m(124-28-15,Q,"HEALTH")m(218-28-15,Q,"ARMOUR")m(2,H,"ROM:")m(26,H,Z)m(2,138,"TPS:")m(26,138,a[12][1][17])m(2,145,"DIF:")m(26,145,ae(af(aU-3000,3)))m(2,Q,"LOD:")m(26,Q,ae(aJ))m(232,H,"BULL")m(232,138,"SHEL")m(232,145,"ROKT")m(232,Q,"CELL")for b=1,4 do
c=124+b*7
ag(265,c,ap(a[12][1][b]),15)ag(285,c,ap(a[19][17][b]),15)m(268,c,"/")end
else
P(1,H,"ROM:")P(26,H,Z)end
end
