
W=152
J=131
u=255
D=180
p=math
N=p.max
aj=p.min
abs=p.abs
U=p.floor
sqrt=p.sqrt
k=input.getNumber
ah=input.getBool
aW=output.setNumber
pi=p.pi
ax=false
aV=true
as=table.remove
T=string
function av(c,l)return{(c[1]+l[1]),(c[2]+l[2])}end
function bm(c,l)return c[1]*l[2]-c[2]*l[1]end
function sub(c,l)return{(c[1]-l[1]),(c[2]-l[2])}end
function aR(c,l)return{c[1]*l,c[2]*l}end
function bs(c)return((c+D)%360)-D end
function sin(c)return p.sin(c/D*pi)end
function cos(c)return p.cos(c/D*pi)end
function tan(c)return p.tan(c/D*pi)end
function bt(c)return p.atan(c)*D/pi end
function bp(c)return p.atan(c[2],c[1])*D/pi end
function bc(c,l,bh)return aj(N(l,c),bh)end
function au(c)return U(c+.5)end
function bq(c,l)return sqrt(((c[1]-l[1])^2)+((c[2]-l[2])^2))end
function b_(c)return{c[1],-c[2]}end
function bo(c)c=c-1
c=c|(c>>1)c=c|(c>>2)c=c|(c>>4)return c+1
end
a={}X=1
ab=3
Y=ax
y={{0,0},0,0}ao=288
z=ao//2
B=128
aq=B//2
aO=1.2
aN={1,1}aK=1
R=1
ab=3
aH=400
w=100
aT=100
az=0
at=0
O=0
K=0
ay=3002
V={}aS=32768
t={}aP=.05
I={}aF=3
ag=0
aL=0
an=0
E=1
aG=0
Z=0
S=aV
function aY(b,c)if b<aS then
H=a[7][b]return aY(H[0<bm({H[3],H[4]},sub(c,H))and 8 or 7],c)else
return b-aS
end
end
function aM(c)H=a[5][a[6][c][2]]return a[8][a[3][a[2][H[4]][H[5]+6]][6]]end
function al(h,q,ai,ak)local A,n=s.drawLine,s.setColor
ai=ai..""
ak=a[19][ak]for b=#ai,1,-1 do
_=ak[T.byte(T.sub(ai,b,b))]h=h-ak[1]if _>0 then
d=a[23][_]o,i=d[1],d[2]v=h-d[4]+1
aa=q-d[5]for e=0,o-1 do
for g=0,i-1 do
j=d[7+g+e*i]if j~=0 then
f=a[20][j]n(f[1],f[2],f[3])A(v+e,aa+g,v+e,aa+g+1)end
end
end
end
end
end
function m(aQ,aX,ae)s.setColor(13,0,0)s.drawText(aQ+1,aX+1,ae)s.setColor(59,59,59)s.drawText(aQ,aX,ae)end
function onTick()aG=0
for e=1,3 do
if ah(9)and(not Y)or not a[21]then
aB=property.getText(X)b=1
r=""
_=T.sub(aB,b,b)while _~=""do
C=T.byte(_)if C>64 then
r=(r..C-65)+0
if E==1 then
bd=r
a[r]=a[r]or{}elseif E==2 then
bk=r
ac=0
elseif E==3 then
aC=r
else
if ac==0 then
ac=bk
aC=aC-1
aA={}a[bd][#a[bd]+1]=aA
end
aA[#aA+1]=r
ac=ac-1
E=N(ac,aC)>0 and E-1 or 0
end
E=E+1
r=""
else
r=r.._
end
b=b+1
_=T.sub(aB,b,b)end
X=X+1
Y=aB==""
end
end
if Y then
if k(9)>0 then
S=aV
ab=k(9)end
aL=aL+1
a[12][1][aL%#a[12][1]+1]=au(k(10))if w>0 and not S then
M={}V[#V+1]=M
ad=5
_=k(ad)while _~=0 do
x={}M[#M+1]=x
for b=0,8 do
x[b+1]=k(ad+b)end
ad=ad+9
_=k(ad)end
end
if ah(1)then
if S then
for b=1,10 do
a[b]=a[b+10*ab]end
ab=ab+1
S=ax
for b=#a[1],1,-1 do
_=a[1][b]_=_[5]&(ay-3000)>0 or as(a[1],b)end
for b=1,#a[8]do
a[8][b][8]={}end
for b=1,#a[6]do
_=aM(b)_[8][#_[8]+1]=b
end
end
at=at-1
if w>0 then
if af~=k(1)and k(1)>0 then
t={}_={}_[1]=a[29][k(1)]_[2]=a[16][_[1][3]]br=_[2][1]_[3]=0
t[1]=_
end
af=k(1)aw=ah(3)if aw and af==5 then
if Z<=0 then
Z=7
else
aw=false
end
end
Z=Z-1
if aw then
_=t[1]_[2]=a[16][_[1][4]]_[3]=-1
I[#I+1]={1,1}end
end
for b=#t,1,-1 do
_=t[b]if _[3]==0 then
if _[2][3]==4 then
if af==5 and Z<5 then
ba=1
else
ba=0
end
t[#t+1]={_[1],a[16][_[1][5]+ba],2}end
end
_[3]=_[3]+1
if _[3]>=_[2][2]then
if _[2][4]>2 then
_[2]=a[16][_[2][4]]_[3]=0
else
as(t,b)end
end
end
for b=1,32 do
aW(b,0)end
for b=#I,1,-1 do
Q=I[b]_=a[18][Q[1]]for e=0,aF-1 do
aE=_[(Q[2]+e)*2-1]if aE and aE>0 then
aW(2+(b-1)*aF+e,bc(au((aE+12)//2),1,60))end
end
Q[2]=Q[2]+2
if Q[2]>=aF+#_ then
as(I,b)end
end
if S then
O=50
end
K=N(K-4,0)K=bc(K+(w-k(3)+az-k(4))*3,0,u)O=N(O-1.5,0)w=k(3)az=k(4)if k(2)>0 then
_=a[2][k(2)]if _ then
if _[4]>3004 and _[4]<3008 then
aH=N(aH+3*(_[4]-3006),1)elseif _[4]>3000 then
ay=_[4]end
end
end
for b=1,#V do
M=V[b]for e=1,#M do
x=M[e]_=x[1]if _>(2^15)then
_=a[8][_-(2^15)]for g=1,6 do
_[g]=x[g+1]end
elseif _<0 then
C=a[1][-_]if C~=nil then
x=C[6]if a[16][x][5]>0 then
O=N(O,15)at=35
bj=a[16][x][5]I[#I+1]={a[19][11][1],1}if C[4]then
bl=a[15][C[4]]if bl[29]==a[19][13][1]then
for g=1,#a[2]do
a[2][g][8]=true
end
end
end
end
end
while-_>#a[1]do
a[1][#a[1]+1]=ax
end
as(a[1],-_)else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for g=1,8 do
_[a[19][1][g]]=x[g+1]end
_[15]=0
end
end
end
V={}_=a[1][1]y[1]={_[1],_[2]}y[3]=_[3]bn=aY(#a[7],y[1])am=aM(bn)y[2]=am[1]+41
bf=aj(am[5]/u,1)^1.3
for b=1,#am[8]do
_=a[6][am[8][b]]for e=_[2],_[1]+_[2]-1 do
bi=a[5][e]bg=a[2][bi[4]]bg[8]=true
end
end
bb=ah(2)ag=ag-1
an=an-1
if not aN[af]then
aN[af]=1
an=70
end
aI=(4-aj(w//20,4))*8
if w<=0 then
R=41
elseif an>0 then
R=aI+6
elseif w<aT then
ag=35
R=aI+7
elseif ag<=0 then
ag=16
aK=aK%256+1
R=aI+a[13][1][aK]%3
end
aT=w
end
end
end
function onDraw()s=screen
local P,n,A,ae=s.drawRectF,s.setColor,s.drawLine,s.drawText
aG=aG+1
if a[21]and not Y then
d=a[25][1]o,i=d[1],d[2]h,q=z-o/2,80-i/2
for g=0,o-1 do
v=h+g
for L=0,i-1 do
j=d[5+L+g*i]if j~=0 then
f=a[20][j]n(f[1],f[2],f[3])A(v,q+L,v,q+L+1)end
end
end
end
if not bb then
for b=1,#t do
d=t[b][2][1]aD=d>0 and bf or 1
d=a[17][abs(d)][1]d=a[23][d]o,i,aJ=d[1],d[2],d[3]*.7
aU=aJ*aO
h,q=z-(d[4]+160)*.7,B-(d[5]+148)*.7*aO
for g=0,o-1 do
v=h+g*aJ
for L=0,i-1 do
j=d[7+L+g*i]if j~=0 then
f=a[20][j]n(f[1]*aD,f[2]*aD,f[3]*aD)P(v,q+L*aU,aJ,aU)end
end
end
end
end
if Y then
if bb then
n(0,0,0)P(0,0,ao,B)for b=1,#a[2]do
_=a[2][b]if _[8]then
F=av(b_(aR(sub(a[4][_[1]],y[1]),aP)),{z,aq})G=av(b_(aR(sub(a[4][_[2]],y[1]),aP)),{z,aq})if _[3]&4>0 then
n(50,50,50)else
n(u,u,u)end
A(F[1],F[2],G[1],G[2])end
end
n(u,u,u)_=a[19][10]for b=1,#_,4 do
ap=sin(y[3]-90)ar=cos(y[3]-90)F={_[b]*ar+_[b+1]*ap,_[b+1]*ar-_[b]*ap}G={_[b+2]*ar+_[b+3]*ap,_[b+3]*ar-_[b+2]*ap}F=av(F,{z,aq})G=av(G,{z,aq})A(F[1],F[2],G[1],G[2])end
end
n(u,K>0 and 0 or u,0,K+O)P(0,0,ao,B)n(30,30,30)P(0,B,ao,32)n(5,5,5)P(z-16,B,32,32)d=a[23][a[19][3][1]+(R)*a[19][3][3]]o,i=d[1],d[2]h=z-o/2
for b=0,o-1 do
for e=0,i-1 do
j=d[7+e+b*i]if j~=0 then
f=a[20][j]n(f[1],f[2],f[3])A(h+b,B+1+e,h+b,B+2+e)end
end
end
for b=1,3 do
if a[12][1][13+b]>0 then
h,q=221,125+b*8
d=a[23][a[19][3][4]+a[19][5][b]*a[19][3][3]]o,i=d[1],d[2]for e=0,o-1 do
for g=0,i-1 do
j=d[7+g+e*i]if j~=0 then
f=a[20][j]n(f[1],f[2],f[3])A(h+e,q+g,h+e,q+g+1)end
end
end
end
end
if at>0 then
aZ=a[13][bj]h=0
q=0
for be=1,#aZ do
_=aZ[be]if _>0 then
d=a[23][_]o,i=d[1],d[2]v=h-d[4]aa=q-d[5]for b=0,o-1 do
for e=0,i-1 do
j=d[7+e+b*i]if j~=0 then
f=a[20][j]n(f[1],f[2],f[3])A(v+b,aa+e,v+b,aa+e+1)end
end
end
h=h+o
else
h=h+4
end
end
end
al(124,J,U(w).."%",16)al(218,J,U(az).."%",16)m(124-28-15,W,"HEALTH")m(218-28-15,W,"ARMOUR")m(2,J,"ROM:")m(26,J,X)m(2,138,"TPS:")m(26,138,a[12][1][17])m(2,145,"DIF:")m(26,145,U(aj(ay-3000,3)))m(2,W,"LOD:")m(26,W,U(aH))m(232,J,"BULL")m(232,138,"SHEL")m(232,145,"ROKT")m(232,W,"CELL")for b=1,4 do
c=124+b*7
al(265,c,au(a[12][1][b]),15)al(285,c,au(a[19][17][b]),15)m(268,c,"/")end
else
ae(1,J,"ROM:")ae(26,J,X)end
end
