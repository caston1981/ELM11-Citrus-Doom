
ah=152
G=131
t=255
H=180
q=math
N=q.max
au=q.min
abs=q.abs
ab=q.floor
sqrt=q.sqrt
k=input.getNumber
aa=input.getBool
aO=output.setNumber
pi=q.pi
aJ=false
aY=true
ac=table.remove
X=string
function al(c,l)return{(c[1]+l[1]),(c[2]+l[2])}end
function bk(c,l)return c[1]*l[2]-c[2]*l[1]end
function sub(c,l)return{(c[1]-l[1]),(c[2]-l[2])}end
function aW(c,l)return{c[1]*l,c[2]*l}end
function bu(c)return((c+H)%360)-H end
function sin(c)return q.sin(c/H*pi)end
function cos(c)return q.cos(c/H*pi)end
function tan(c)return q.tan(c/H*pi)end
function bs(c)return q.atan(c)*H/pi end
function br(c)return q.atan(c[2],c[1])*H/pi end
function aM(c,l,bh)return au(N(l,c),bh)end
function aw(c)return ab(c+.5)end
function bp(c,l)return sqrt(((c[1]-l[1])^2)+((c[2]-l[2])^2))end
function aX(c)return{c[1],-c[2]}end
function bt(c)c=c-1
c=c|(c>>1)c=c|(c>>2)c=c|(c>>4)return c+1
end
a={}aj=1
ae=3
W=aJ
C={{0,0},0,0}ax=288
A=ax//2
D=128
av=D//2
aZ=1.2
aV={1,1}az=1
Y=1
ae=3
aB=400
z=100
aN=100
ay=0
an=0
Q=0
O=0
aD=3002
Z={}aS=32768
u={}bd=.05
K={}af={}bj=2
V=0
aE=0
ao=0
E=1
aC=0
ai=0
U=aY
function bc(b,c)if b<aS then
J=a[7][b]return bc(J[0<bk({J[3],J[4]},sub(c,J))and 8 or 7],c)else
return b-aS
end
end
function bb(c)J=a[5][a[6][c][2]]return a[8][a[3][a[2][J[4]][J[5]+6]][6]]end
function ap(h,r,at,ar)local B,o=v.drawLine,v.setColor
at=at..""
ar=a[19][ar]for b=#at,1,-1 do
_=ar[X.byte(X.sub(at,b,b))]h=h-ar[1]if _>0 then
d=a[23][_]n,i=d[1],d[2]s=h-d[4]+1
S=r-d[5]for g=0,n-1 do
for f=0,i-1 do
j=d[7+f+g*i]if j~=0 then
e=a[20][j]o(e[1],e[2],e[3])B(s+g,S+f,s+g,S+f+1)end
end
end
end
end
end
function m(aR,b_,ad)v.setColor(13,0,0)v.drawText(aR+1,b_+1,ad)v.setColor(59,59,59)v.drawText(aR,b_,ad)end
function onTick()aC=0
for g=1,3 do
if aa(9)and(not W)or not a[21]then
aA=property.getText(aj)b=1
p=""
_=X.sub(aA,b,b)while _~=""do
L=X.byte(_)if L>64 then
p=(p..L-65)+0
if E==1 then
aP=p
a[p]=a[p]or{}elseif E==2 then
bi=p
ag=0
elseif E==3 then
aL=p
else
if ag==0 then
ag=bi
aL=aL-1
aG={}a[aP][#a[aP]+1]=aG
end
aG[#aG+1]=p
ag=ag-1
E=N(ag,aL)>0 and E-1 or 0
end
E=E+1
p=""
else
p=p.._
end
b=b+1
_=X.sub(aA,b,b)end
aj=aj+1
W=aA==""
end
end
if W then
if k(9)>0 then
U=aY
ae=k(9)end
aE=aE+1
a[12][1][aE%#a[12][1]+1]=aw(k(10))if z>0 and not U then
M={}Z[#Z+1]=M
T=5
_=k(T)while _~=0 do
w={}M[#M+1]=w
for b=0,8 do
w[b+1]=k(T+b)end
T=T+9
_=k(T)end
end
if aa(1)then
if U then
for b=1,10 do
a[b]=a[b+10*ae]end
ae=ae+1
U=aJ
for b=#a[1],1,-1 do
_=a[1][b]_=_[5]&(aD-3000)>0 or ac(a[1],b)end
for b=1,#a[8]do
a[8][b][8]={}end
for b=1,#a[6]do
_=bb(b)_[8][#_[8]+1]=b
end
end
an=an-1
if z>0 then
if R~=k(1)and k(1)>0 then
u={}_={}_[1]=a[29][k(1)]_[2]=a[16][_[1][3]]bq=_[2][1]_[3]=0
u[1]=_
end
R=k(1)aK=aa(3)if aK and R==5 then
if ai<=0 then
ai=7
else
aK=false
end
end
ai=ai-1
if aK then
_=u[1]_[2]=a[16][_[1][4]]_[3]=-1
y=a[19][6][R]if y>0 then
K[#K+1]={y,1}end
end
end
for b=#u,1,-1 do
_=u[b]if _[3]==0 then
if _[2][3]==4 then
if R==5 and ai<5 then
ba=1
else
ba=0
end
u[#u+1]={_[1],a[16][_[1][5]+ba],2}end
end
_[3]=_[3]+1
if _[3]>=_[2][2]then
if _[2][4]>2 then
_[2]=a[16][_[2][4]]_[3]=0
else
ac(u,b)end
end
end
if U then
Q=50
end
O=N(O-4,0)O=aM(O+(z-k(3)+ay-k(4))*3,0,t)Q=N(Q-1.5,0)z=k(3)ay=k(4)if k(2)>0 then
_=a[2][k(2)]if _ then
if _[4]>3004 and _[4]<3008 then
aB=N(aB+3*(_[4]-3006),1)elseif _[4]>3000 then
aD=_[4]end
end
end
for b=1,#Z do
M=Z[b]for g=1,#M do
w=M[g]_=w[1]if _>(2^15)then
_=a[8][_-(2^15)]for f=1,6 do
_[f]=w[f+1]end
elseif _<0 then
L=a[1][-_]if L then
w=L[6]if a[16][w][5]>0 then
Q=N(Q,15)an=35
be=a[16][w][5]K[#K+1]={a[19][11][1],1}if L[4]then
bm=a[15][L[4]]if bm[29]==a[19][13][1]then
for f=1,#a[2]do
a[2][f][8]=true
end
end
end
end
end
while-_>#a[1]do
a[1][#a[1]+1]=aJ
end
ac(a[1],-_)else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for f=1,8 do
_[a[19][1][f]]=w[f+1]end
_[15]=0
end
end
end
Z={}_=a[1][1]C[1]={_[1],_[2]}C[3]=_[3]bo=bc(#a[7],C[1])aq=bb(bo)C[2]=aq[1]+41
bf=au(aq[5]/t,1)^1.3
for b=1,#aq[8]do
_=a[6][aq[8][b]]for g=_[2],_[1]+_[2]-1 do
bg=a[5][g]bn=a[2][bg[4]]bn[8]=true
end
end
aT=aa(2)V=V-1
ao=ao-1
if not aV[R]then
aV[R]=1
ao=70
end
aH=(4-au(z//20,4))*8
if z<=0 then
Y=41
elseif ao>0 then
Y=aH+6
elseif z<aN then
V=35
Y=aH+7
elseif V<=0 then
V=16
az=az%256+1
Y=aH+a[13][1][az]%3
end
aN=z
end
for b=#K,1,-1 do
y=K[b]_=a[18][y[1]]if aa(1)then
x=_[y[2]]y[2]=y[2]+4
else
x=_[y[2]+2]end
if x and x>0 then
af[#af+1]={x,1}end
if y[2]>=#_ then
ac(K,b)end
end
for b=1,32 do
aO(b,0)end
for b=#af,1,-1 do
x=af[b]aO(b+3,aM(aw((x[1]+12)//2),1,60))x[2]=x[2]+1
if x[2]>bj then
ac(af,b)end
end
end
end
function onDraw()v=screen
local ak,o,B,ad=v.drawRectF,v.setColor,v.drawLine,v.drawText
aC=aC+1
if a[21]and not W then
d=a[25][1]n,i=d[1],d[2]h,r=A-n/2,80-i/2
for f=0,n-1 do
s=h+f
for P=0,i-1 do
j=d[5+P+f*i]if j~=0 then
e=a[20][j]o(e[1],e[2],e[3])B(s,r+P,s,r+P+1)end
end
end
end
if not aT then
for b=1,#u do
d=u[b][2][1]aF=d>0 and bf or 1
d=a[17][abs(d)][1]d=a[23][d]n,i,aI=d[1],d[2],d[3]*.7
aU=aI*aZ
h,r=A-(d[4]+160)*.7,D-(d[5]+148)*.7*aZ
for f=0,n-1 do
s=h+f*aI
for P=0,i-1 do
j=d[7+P+f*i]if j~=0 then
e=a[20][j]o(e[1]*aF,e[2]*aF,e[3]*aF)ak(s,r+P*aU,aI,aU)end
end
end
end
end
if W then
if aT then
o(0,0,0)ak(0,0,ax,D)for b=1,#a[2]do
_=a[2][b]if _[8]then
F=al(aX(aW(sub(a[4][_[1]],C[1]),bd)),{A,av})I=al(aX(aW(sub(a[4][_[2]],C[1]),bd)),{A,av})if _[3]&4>0 then
o(50,50,50)else
o(t,t,t)end
B(F[1],F[2],I[1],I[2])end
end
o(t,t,t)_=a[19][10]for b=1,#_,4 do
am=sin(C[3]-90)as=cos(C[3]-90)F={_[b]*as+_[b+1]*am,_[b+1]*as-_[b]*am}I={_[b+2]*as+_[b+3]*am,_[b+3]*as-_[b+2]*am}F=al(F,{A,av})I=al(I,{A,av})B(F[1],F[2],I[1],I[2])end
end
o(t,O>0 and 0 or t,0,O+Q)ak(0,0,ax,D)o(30,30,30)ak(0,D,ax,32)o(5,5,5)ak(A-16,D,32,32)d=a[23][a[19][3][1]+(Y)*a[19][3][3]]n,i=d[1],d[2]h=A-n/2
for b=0,n-1 do
for g=0,i-1 do
j=d[7+g+b*i]if j~=0 then
e=a[20][j]o(e[1],e[2],e[3])B(h+b,D+1+g,h+b,D+2+g)end
end
end
for b=1,3 do
if a[12][1][13+b]>0 then
h,r=221,125+b*8
d=a[23][a[19][3][4]+a[19][5][b]*a[19][3][3]]n,i=d[1],d[2]for g=0,n-1 do
for f=0,i-1 do
j=d[7+f+g*i]if j~=0 then
e=a[20][j]o(e[1],e[2],e[3])B(h+g,r+f,h+g,r+f+1)end
end
end
end
end
if an>0 then
aQ=a[13][be]h=0
r=0
for bl=1,#aQ do
_=aQ[bl]if _>0 then
d=a[23][_]n,i=d[1],d[2]s=h-d[4]S=r-d[5]for b=0,n-1 do
for g=0,i-1 do
j=d[7+g+b*i]if j~=0 then
e=a[20][j]o(e[1],e[2],e[3])B(s+b,S+g,s+b,S+g+1)end
end
end
h=h+n
else
h=h+4
end
end
end
ap(124,G,ab(z).."%",16)ap(218,G,ab(ay).."%",16)m(124-28-15,ah,"HEALTH")m(218-28-15,ah,"ARMOUR")m(2,G,"ROM:")m(26,G,aj)m(2,138,"TPS:")m(26,138,a[12][1][17])m(2,145,"DIF:")m(26,145,ab(au(aD-3000,3)))m(2,ah,"LOD:")m(26,ah,ab(aB))m(232,G,"BULL")m(232,138,"SHEL")m(232,145,"ROKT")m(232,ah,"CELL")for b=1,4 do
c=124+b*7
ap(265,c,aw(a[12][1][b]),15)ap(285,c,aw(a[19][17][b]),15)m(268,c,"/")end
else
ad(1,G,"ROM:")ad(26,G,aj)end
end
