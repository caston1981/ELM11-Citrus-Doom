
ac=152
A=131
t=255
B=180
au=true
aN=false
aX=input
az=table.remove
q=math
K=q.max
aj=q.min
abs=q.abs
ab=q.floor
sqrt=q.sqrt
k=aX.getNumber
ap=aX.getBool
bd=output.setNumber
pi=q.pi
aD=aN
bg=au
Y=string
function af(c,l)return{(c[1]+l[1]),(c[2]+l[2])}end
function bq(c,l)return c[1]*l[2]-c[2]*l[1]end
function sub(c,l)return{(c[1]-l[1]),(c[2]-l[2])}end
function ba(c,l)return{c[1]*l,c[2]*l}end
function bs(c)return((c+B)%360)-B end
function sin(c)return q.sin(c/B*pi)end
function cos(c)return q.cos(c/B*pi)end
function tan(c)return q.tan(c/B*pi)end
function bv(c)return q.atan(c)*B/pi end
function bt(c)return q.atan(c[2],c[1])*B/pi end
function aY(c,l,bn)return aj(K(l,c),bn)end
function ao(c)return ab(c+.5)end
function bw(c,l)return sqrt(((c[1]-l[1])^2)+((c[2]-l[2])^2))end
function bf(c)return{c[1],-c[2]}end
function bu(c)c=c-1
c=c|(c>>1)c=c|(c>>2)c=c|(c>>4)return c+1
end
a={}ae=1
Z=3
T=aD
z={{0,0},0,0}aq=288
y=aq//2
I=128
ai=I//2
aW=1.2
aV={1,1}aw=1
Q=1
Z=3
aF=400
v=100
be=100
aC=0
am=0
L=0
M=0
aQ=3002
R={}aU=32768
u={}aL=.05
F={}at=3
V=0
ax=0
ah=0
J=1
av=0
P=0
X=bg
function aP(b,c)if b<aU then
C=a[7][b]return aP(C[0<bq({C[3],C[4]},sub(c,C))and 8 or 7],c)else
return b-aU
end
end
function aR(c)C=a[5][a[6][c][2]]return a[8][a[3][a[2][C[4]][C[5]+6]][6]]end
function ag(j,x,ar,al)local r,n=s.drawRectF,s.setColor
ar=ar..""
al=a[19][al]for b=#ar,1,-1 do
_=al[Y.byte(Y.sub(ar,b,b))]j=j-al[1]if _>0 then
d=a[23][_]o,h=d[1],d[2]E=j-d[4]+1
aE=x-d[5]for g=0,o-1 do
for f=0,h-1 do
i=d[7+f+g*h]if i~=0 then
e=a[20][i]n(e[1],e[2],e[3])r(E+g,aE+f,1,1)end
end
end
end
end
end
function m(bc,bb,W)s.setColor(13,0,0)s.drawText(bc+1,bb+1,W)s.setColor(59,59,59)s.drawText(bc,bb,W)end
function onTick()av=0
for g=1,3 do
if ap(9)and(not T)or not a[21]then
aA=property.getText(ae)b=1
p=""
_=Y.sub(aA,b,b)while _~=""do
G=Y.byte(_)if G>64 then
p=(p..G-65)+0
if J==1 then
aS=p
a[p]=a[p]or{}elseif J==2 then
bj=p
U=0
elseif J==3 then
aH=p
else
if U==0 then
U=bj
aH=aH-1
aB={}a[aS][#a[aS]+1]=aB
end
aB[#aB+1]=p
U=U-1
J=K(U,aH)>0 and J-1 or 0
end
J=J+1
p=""
else
p=p.._
end
b=b+1
_=Y.sub(aA,b,b)end
ae=ae+1
T=aA==""
end
end
if T then
if k(9)>0 then
X=bg
Z=k(9)end
ax=ax+1
a[12][1][ax%#a[12][1]+1]=ao(k(10))if v>0 and not X then
N={}R[#R+1]=N
O=5
_=k(O)while _~=0 do
w={}N[#N+1]=w
for b=0,8 do
w[b+1]=k(O+b)end
O=O+9
_=k(O)end
end
if ap(1)then
if X then
for b=1,10 do
a[b]=a[b+10*Z]end
Z=Z+1
X=aD
for b=1,#a[1]do
_=a[1][b]end
for b=1,#a[8]do
a[8][b][8]={}end
for b=1,#a[6]do
_=aR(b)_[8][#_[8]+1]=b
end
end
am=am-1
if v>0 then
if S~=k(1)and k(1)>0 then
u={}_={}_[1]=a[29][k(1)]_[2]=a[16][_[1][3]]br=_[2][1]_[3]=0
u[1]=_
end
S=k(1)aK=ap(3)if aK and S==5 then
if P<=0 then
P=7
else
aK=aN
end
end
P=P-1
if aK then
_=u[1]_[2]=a[16][_[1][4]]_[3]=-1
F[#F+1]={1,1}end
end
for b=#u,1,-1 do
_=u[b]if _[3]==0 then
if _[2][3]==4 then
if S==5 and P<5 then
b_=1
else
b_=0
end
u[#u+1]={_[1],a[16][_[1][5]+b_],2}end
end
_[3]=_[3]+1
if _[3]>=_[2][2]then
if _[2][4]>2 then
_[2]=a[16][_[2][4]]_[3]=0
else
az(u,b)end
end
end
for b=1,32 do
bd(b,0)end
for b=#F,1,-1 do
aa=F[b]_=a[18][aa[1]]for g=0,at-1 do
aJ=_[(aa[2]+g)*2-1]if aJ and aJ>0 then
bd(2+(b-1)*at+g,aY(ao((aJ+12)//2),1,60))end
end
aa[2]=aa[2]+2
if aa[2]>=at+#_ then
az(F,b)end
end
if X then
L=50
end
M=K(M-4,0)M=aY(M+(v-k(3)+aC-k(4))*3,0,t)L=K(L-1.5,0)v=k(3)aC=k(4)if k(2)>0 then
_=a[2][k(2)]if _ then
if _[4]>3004 and _[4]<3008 then
aF=K(aF+3*(_[4]-3006),1)elseif _[4]>3000 then
aQ=_[4]end
end
end
for b=1,#R do
N=R[b]for g=1,#N do
w=N[g]_=w[1]if _>(2^15)then
_=a[8][_-(2^15)]for f=1,6 do
_[f]=w[f+1]end
elseif _<0 then
G=a[1][-_]if G~=nil then
w=G[6]if a[16][w][5]>0 then
L=K(L,15)am=35
bo=a[16][w][5]F[#F+1]={a[19][11][1],1}if G[4]then
bm=a[15][G[4]]if bm[29]==a[19][13][1]then
for f=1,#a[2]do
a[2][f][8]=au
end
end
end
end
end
while-_>#a[1]do
a[1][#a[1]+1]=aD
end
az(a[1],-_)else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for f=1,8 do
_[a[19][1][f]]=w[f+1]end
_[15]=0
end
end
end
R={}_=a[1][1]z[1]={_[1],_[2]}z[3]=_[3]bh=aP(#a[7],z[1])ak=aR(bh)z[2]=ak[1]+41
bl=aj(ak[5]/t,1)^1.3
for b=1,#ak[8]do
_=a[6][ak[8][b]]for g=_[2],_[1]+_[2]-1 do
bi=a[5][g]bk=a[2][bi[4]]bk[8]=au
end
end
aM=ap(2)V=V-1
ah=ah-1
if not aV[S]then
aV[S]=1
ah=70
end
aI=(4-aj(v//20,4))*8
if v<=0 then
Q=41
elseif ah>0 then
Q=aI+6
elseif v<be then
V=35
Q=aI+7
elseif V<=0 then
V=16
aw=aw%256+1
Q=aI+a[13][1][aw]%3
end
be=v
end
end
end
function onDraw()s=screen
local r,n,aO,W=s.drawRectF,s.setColor,s.drawLine,s.drawText
av=av+1
if a[21]and not T then
d=a[25][1]o,h=d[1],d[2]j,x=y-o/2,80-h/2
for f=0,o-1 do
E=j+f
for ad=0,h-1 do
i=d[5+ad+f*h]if i~=0 then
e=a[20][i]n(e[1],e[2],e[3])r(E,x+ad,1,1)end
end
end
end
if not aM then
for b=1,#u do
d=u[b][2][1]ay=d>0 and bl or 1
d=a[17][abs(d)][1]d=a[23][d]o,h,aG=d[1],d[2],d[3]*.7
aT=aG*aW
j,x=y-(d[4]+160)*.7,I-(d[5]+148)*.7*aW
for f=0,o-1 do
E=j+f*aG
for ad=0,h-1 do
i=d[7+ad+f*h]if i~=0 then
e=a[20][i]n(e[1]*ay,e[2]*ay,e[3]*ay)r(E,x+ad*aT,aG,aT)end
end
end
end
end
if T then
if aM then
n(0,0,0)r(0,0,aq,I)for b=1,#a[2]do
_=a[2][b]if _[8]then
D=af(bf(ba(sub(a[4][_[1]],z[1]),aL)),{y,ai})H=af(bf(ba(sub(a[4][_[2]],z[1]),aL)),{y,ai})if _[3]&4>0 then
n(50,50,50)else
n(t,t,t)end
aO(D[1],D[2],H[1],H[2])end
end
n(t,t,t)_=a[19][10]for b=1,#_,4 do
an=sin(z[3]-90)as=cos(z[3]-90)D={_[b]*as+_[b+1]*an,_[b+1]*as-_[b]*an}H={_[b+2]*as+_[b+3]*an,_[b+3]*as-_[b+2]*an}D=af(D,{y,ai})H=af(H,{y,ai})aO(D[1],D[2],H[1],H[2])end
end
n(t,M>0 and 0 or t,0,M+L)r(0,0,aq,I)n(30,30,30)r(0,I,aq,32)n(5,5,5)r(y-16,I,32,32)d=a[23][a[19][3][1]+(Q)*a[19][3][3]]o,h=d[1],d[2]j=y-o/2
for b=0,o-1 do
for g=0,h-1 do
i=d[7+g+b*h]if i~=0 then
e=a[20][i]n(e[1],e[2],e[3])r(j+b,I+1+g,1,1)end
end
end
for b=1,3 do
if a[12][1][13+b]>0 then
j,x=221,125+b*8
d=a[23][a[19][3][4]+a[19][5][b]*a[19][3][3]]o,h=d[1],d[2]for g=0,o-1 do
for f=0,h-1 do
i=d[7+f+g*h]if i~=0 then
e=a[20][i]n(e[1],e[2],e[3])r(j+g,x+f,1,1)end
end
end
end
end
if am>0 then
aZ=a[13][bo]j=0
x=0
for bp=1,#aZ do
_=aZ[bp]if _>0 then
d=a[23][_]o,h=d[1],d[2]E=j-d[4]aE=x-d[5]for b=0,o-1 do
for g=0,h-1 do
i=d[7+g+b*h]if i~=0 then
e=a[20][i]n(e[1],e[2],e[3])r(E+b,aE+g,1,1)end
end
end
j=j+o
else
j=j+4
end
end
end
ag(124,A,ab(v).."%",16)ag(218,A,ab(aC).."%",16)m(124-28-15,ac,"HEALTH")m(218-28-15,ac,"ARMOUR")m(2,A,"ROM:")m(26,A,ae)m(2,138,"TPS:")m(26,138,a[12][1][17])m(2,145,"DIF:")m(26,145,ab(aj(aQ-3000,3)))m(2,ac,"LOD:")m(26,ac,ab(aF))m(232,A,"BULL")m(232,138,"SHEL")m(232,145,"ROKT")m(232,ac,"CELL")for b=1,4 do
c=124+b*7
ag(265,c,ao(a[12][1][b]),15)ag(285,c,ao(a[19][17][b]),15)m(268,c,"/")end
else
W(1,A,"ROM:")W(26,A,ae)end
end
