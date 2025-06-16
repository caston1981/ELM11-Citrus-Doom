
ak=152
F=131
t=255
J=180
q=math
R=q.max
am=q.min
abs=q.abs
T=q.floor
sqrt=q.sqrt
j=input.getNumber
Y=input.getBool
aX=output.setNumber
pi=q.pi
aL=false
aQ=true
af=table.remove
ac=string
function au(c,l)return{(c[1]+l[1]),(c[2]+l[2])}end
function bo(c,l)return c[1]*l[2]-c[2]*l[1]end
function sub(c,l)return{(c[1]-l[1]),(c[2]-l[2])}end
function aT(c,l)return{c[1]*l,c[2]*l}end
function bp(c)return((c+J)%360)-J end
function sin(c)return q.sin(c/J*pi)end
function cos(c)return q.cos(c/J*pi)end
function tan(c)return q.tan(c/J*pi)end
function bq(c)return q.atan(c)*J/pi end
function br(c)return q.atan(c[2],c[1])*J/pi end
function bb(c,l,bh)return am(R(l,c),bh)end
function av(c)return T(c+.5)end
function bu(c,l)return sqrt(((c[1]-l[1])^2)+((c[2]-l[2])^2))end
function aV(c)return{c[1],-c[2]}end
function bs(c)c=c-1
c=c|(c>>1)c=c|(c>>2)c=c|(c>>4)return c+1
end
a={}aj=1
X=3
ah=aL
B={{0,0},0,0}ao=288
E=ao//2
C=128
aq=C//2
aM=1.2
aO={1,1}aF=1
ad=1
X=3
aI=400
s=100
aZ=100
aC=0
as=0
Q=0
M=0
aE=3002
aN=32768
v={}aP=.05
A={}ae={}bm=2
ag=0
aD=0
ax=0
I=1
aK=0
Z=0
ai=aQ
function b_(b,c)if b<aN then
H=a[7][b]return b_(H[0<bo({H[3],H[4]},sub(c,H))and 8 or 7],c)else
return b-aN
end
end
function aS(c)H=a[5][a[6][c][2]]return a[8][a[3][a[2][H[4]][H[5]+6]][6]]end
function ap(h,p,at,aw)local D,m=u.drawLine,u.setColor
at=at..""
aw=a[19][aw]for b=#at,1,-1 do
_=aw[ac.byte(ac.sub(at,b,b))]h=h-aw[1]if _>0 then
d=a[23][_]o,i=d[1],d[2]w=h-d[4]+1
S=p-d[5]for g=0,o-1 do
for f=0,i-1 do
k=d[7+f+g*i]if k~=0 then
e=a[20][k]m(e[1],e[2],e[3])D(w+g,S+f,w+g,S+f+1)end
end
end
end
end
end
function n(aY,aU,aa)u.setColor(13,0,0)u.drawText(aY+1,aU+1,aa)u.setColor(59,59,59)u.drawText(aY,aU,aa)end
function onTick()aK=0
for g=1,3 do
if Y(9)and(not ah)or not a[21]then
az=property.getText(aj)b=1
r=""
_=ac.sub(az,b,b)while _~=""do
G=ac.byte(_)if G>64 then
r=(r..G-65)+0
if I==1 then
aR=r
a[r]=a[r]or{}elseif I==2 then
bj=r
V=0
elseif I==3 then
aA=r
else
if V==0 then
V=bj
aA=aA-1
aB={}a[aR][#a[aR]+1]=aB
end
aB[#aB+1]=r
V=V-1
I=R(V,aA)>0 and I-1 or 0
end
I=I+1
r=""
else
r=r.._
end
b=b+1
_=ac.sub(az,b,b)end
aj=aj+1
ah=az==""
end
end
if ah then
if j(10)>0 then
ai=aQ
X=j(10)end
aD=aD+1
a[12][1][aD%#a[12][1]+1]=av(j(11))if s>0 and not ai then
P={}ab[#ab+1]=P
W=6
_=j(W)while _~=0 do
x={}P[#P+1]=x
for b=0,8 do
x[b+1]=j(W+b)end
W=W+9
_=j(W)end
end
if Y(1)then
if ai then
for b=1,10 do
a[b]=a[b+10*X]end
X=X+1
ai=aL
for b=#a[1],1,-1 do
_=a[1][b]_=_[5]&(aE-3000)>0 or af(a[1],b)end
for b=1,#a[8]do
a[8][b][8]={}end
for b=1,#a[6]do
_=aS(b)_[8][#_[8]+1]=b
end
ab={}end
as=as-1
if s>0 then
if N~=j(1)and j(1)>0 then
v={}_={}_[1]=a[29][j(1)]_[2]=a[16][_[1][3]]bt=_[2][1]_[3]=0
v[1]=_
end
N=j(1)aG=Y(3)if aG and N==5 then
if Z<=0 then
Z=7
else
aG=false
end
end
Z=Z-1
if aG then
_=v[1]_[2]=a[16][_[1][4]]_[3]=-1
y=a[19][6][N]if y>0 then
A[#A+1]={y,1}end
end
end
for b=#v,1,-1 do
_=v[b]if _[3]==0 then
if _[2][3]==4 then
if N==5 and Z<5 then
aW=1
else
aW=0
end
v[#v+1]={_[1],a[16][_[1][5]+aW],2}end
end
_[3]=_[3]+1
if _[3]>=_[2][2]then
if _[2][4]>2 then
_[2]=a[16][_[2][4]]_[3]=0
else
af(v,b)end
end
end
if ai then
Q=50
end
M=R(M-4,0)M=bb(M+(s-j(3)+aC-j(4))*3,0,t)Q=R(Q-1.5,0)s=j(3)aC=j(4)if j(2)>0 and s>0 then
_=a[2][j(2)]if _ then
if _[4]>3004 and _[4]<3008 then
aI=R(aI+3*(_[4]-3006),1)elseif _[4]>3000 then
aE=_[4]end
end
end
for b=1,#ab do
P=ab[b]for g=1,#P do
x=P[g]_=x[1]if _>(2^15)then
_=a[8][_-(2^15)]for f=1,6 do
_[f]=x[f+1]end
elseif _<0 then
G=a[1][-_]if G then
x=G[6]if a[16][x][5]>0 then
Q=R(Q,15)as=35
bi=a[16][x][5]A[#A+1]={"item pickup sound index",1}if G[4]then
bf=a[15][G[4]]if bf[29]==a[19][13][1]then
for f=1,#a[2]do
a[2][f][8]=a[2][f][8]or 1
end
end
end
end
end
while-_>#a[1]do
a[1][#a[1]+1]=aL
end
af(a[1],-_)else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for f=1,8 do
_[a[19][1][f]]=x[f+1]end
_[15]=0
end
end
end
ab={}_=a[1][1]B[1]={_[1],_[2]}B[3]=_[3]be=b_(#a[7],B[1])ar=aS(be)B[2]=ar[1]+41
bg=am(ar[5]/t,1)^1.3
for b=1,#ar[8]do
_=a[6][ar[8][b]]for g=_[2],_[1]+_[2]-1 do
bk=a[5][g]bl=a[2][bk[4]]bl[8]=2
end
end
bc=Y(2)if j(12)>0 and s>0 then
A[#A+1]={j(12),1}end
ag=ag-1
ax=ax-1
if not aO[N]then
aO[N]=1
ax=70
end
aH=(4-am(s//20,4))*8
if s<=0 then
ad=41
elseif ax>0 then
ad=aH+6
elseif s<aZ then
ag=35
ad=aH+7
elseif ag<=0 then
ag=16
aF=aF%256+1
ad=aH+a[13][1][aF]%3
end
aZ=s
end
for b=#A,1,-1 do
y=A[b]_=a[18][y[1]]if Y(1)then
z=_[y[2]]y[2]=y[2]+4
else
z=_[y[2]+2]end
if z and z>0 then
ae[#ae+1]={z,1}end
if y[2]>=#_ then
af(A,b)end
end
for b=1,32 do
aX(b,0)end
for b=#ae,1,-1 do
z=ae[b]aX(b+3,bb(av((z[1]+12)//2),1,60))z[2]=z[2]+1
if z[2]>bm then
af(ae,b)end
end
end
end
function onDraw()u=screen
local U,m,D,aa=u.drawRectF,u.setColor,u.drawLine,u.drawText
aK=aK+1
if a[21]and not ah then
d=a[25][1]o,i=d[1],d[2]h,p=E-o/2,80-i/2
for f=0,o-1 do
w=h+f
for O=0,i-1 do
k=d[5+O+f*i]if k~=0 then
e=a[20][k]m(e[1],e[2],e[3])D(w,p+O,w,p+O+1)end
end
end
end
if not bc then
for b=1,#v do
d=v[b][2][1]aJ=d>0 and bg or 1
d=a[17][abs(d)][1]d=a[23][d]o,i,ay=d[1],d[2],d[3]*.7
ba=ay*aM
h,p=E-(d[4]+160)*.7,C-(d[5]+148)*.7*aM
for f=0,o-1 do
w=h+f*ay
for O=0,i-1 do
k=d[7+O+f*i]if k~=0 then
e=a[20][k]m(e[1]*aJ,e[2]*aJ,e[3]*aJ)U(w,p+O*ba,ay,ba)end
end
end
end
end
if ah then
if bc then
m(0,0,0)U(0,0,ao,C)for b=1,#a[2]do
_=a[2][b]if _[8]then
K=au(aV(aT(sub(a[4][_[1]],B[1]),aP)),{E,aq})L=au(aV(aT(sub(a[4][_[2]],B[1]),aP)),{E,aq})if _[8]==1 then
m(0,50,0)elseif _[3]&4>0 then
m(50,50,50)else
m(t,t,t)end
D(K[1],K[2],L[1],L[2])end
end
m(t,t,t)_=a[19][10]for b=1,#_,4 do
al=sin(B[3]-90)an=cos(B[3]-90)K={_[b]*an+_[b+1]*al,_[b+1]*an-_[b]*al}L={_[b+2]*an+_[b+3]*al,_[b+3]*an-_[b+2]*al}K=au(K,{E,aq})L=au(L,{E,aq})D(K[1],K[2],L[1],L[2])end
end
m(t,M>0 and 0 or t,0,M+Q)U(0,0,ao,C)m(30,30,30)U(0,C,ao,32)m(5,5,5)U(E-16,C,32,32)d=a[23]["face textures start"+(ad)*"number of sprite mipmap levels"]o,i=d[1],d[2]h=E-o/2
for b=0,o-1 do
for g=0,i-1 do
k=d[7+g+b*i]if k~=0 then
e=a[20][k]m(e[1],e[2],e[3])D(h+b,C+1+g,h+b,C+2+g)end
end
end
for b=1,3 do
if a[12][1][13+b]>0 then
h,p=221,125+b*8
d=a[23]["key textures start"+a[19][5][b]*"number of sprite mipmap levels"]o,i=d[1],d[2]for g=0,o-1 do
for f=0,i-1 do
k=d[7+f+g*i]if k~=0 then
e=a[20][k]m(e[1],e[2],e[3])D(h+g,p+f,h+g,p+f+1)end
end
end
end
end
if as>0 then
bd=a[13][bi]h=0
p=0
for bn=1,#bd do
_=bd[bn]if _>0 then
d=a[23][_]o,i=d[1],d[2]w=h-d[4]S=p-d[5]for b=0,o-1 do
for g=0,i-1 do
k=d[7+g+b*i]if k~=0 then
e=a[20][k]m(e[1],e[2],e[3])D(w+b,S+g,w+b,S+g+1)end
end
end
h=h+o
else
h=h+4
end
end
end
ap(124,F,T(s).."%",16)ap(218,F,T(aC).."%",16)n(124-28-15,ak,"HEALTH")n(218-28-15,ak,"ARMOUR")n(2,F,"ROM:")n(26,F,aj)n(2,138,"TPS:")n(26,138,a[12][1][17])n(2,145,"DIF:")n(26,145,T(am(aE-3000,3)))n(2,ak,"LOD:")n(26,ak,T(aI))n(232,F,"BULL")n(232,138,"SHEL")n(232,145,"ROKT")n(232,ak,"CELL")for b=1,4 do
c=124+b*7
ap(265,c,av(a[12][1][b]),15)ap(285,c,av(a[19][17][b]),15)n(268,c,"/")end
else
aa(1,F,"ROM:")aa(26,F,aj)end
end
