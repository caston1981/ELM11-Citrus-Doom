
ah=152
E=131
u=255
K=180
p=math
P=p.max
ao=p.min
abs=p.abs
T=p.floor
sqrt=p.sqrt
l=input.getNumber
aj=input.getBool
aR=output.setNumber
pi=p.pi
aF=false
aY=true
ac=table.remove
V=string
function ar(c,k)return{(c[1]+k[1]),(c[2]+k[2])}end
function bi(c,k)return c[1]*k[2]-c[2]*k[1]end
function sub(c,k)return{(c[1]-k[1]),(c[2]-k[2])}end
function aS(c,k)return{c[1]*k,c[2]*k}end
function bq(c)return((c+K)%360)-K end
function sin(c)return p.sin(c/K*pi)end
function cos(c)return p.cos(c/K*pi)end
function tan(c)return p.tan(c/K*pi)end
function bu(c)return p.atan(c)*K/pi end
function bs(c)return p.atan(c[2],c[1])*K/pi end
function aN(c,k,bo)return ao(P(k,c),bo)end
function ax(c)return T(c+.5)end
function bp(c,k)return sqrt(((c[1]-k[1])^2)+((c[2]-k[2])^2))end
function aM(c)return{c[1],-c[2]}end
function br(c)c=c-1
c=c|(c>>1)c=c|(c>>2)c=c|(c>>4)return c+1
end
a={}U=1
ad=3
W=aF
B={{0,0},0,0}ap=288
C=ap//2
A=128
aw=A//2
aZ=1.2
aV={1,1}az=1
aa=1
ad=3
aH=400
y=100
bd=100
ay=0
at=0
R=0
M=0
aD=3002
aX=32768
v={}aU=.05
G={}Z={}bn=2
X=0
aG=0
an=0
H=1
aC=0
ab=0
af=aY
function aQ(b,c)if b<aX then
I=a[7][b]return aQ(I[0<bi({I[3],I[4]},sub(c,I))and 8 or 7],c)else
return b-aX
end
end
function aO(c)I=a[5][a[6][c][2]]return a[8][a[3][a[2][I[4]][I[5]+6]][6]]end
function au(h,r,am,aq)local D,n=s.drawLine,s.setColor
am=am..""
aq=a[19][aq]for b=#am,1,-1 do
_=aq[V.byte(V.sub(am,b,b))]h=h-aq[1]if _>0 then
d=a[23][_]o,i=d[1],d[2]t=h-d[4]+1
ak=r-d[5]for g=0,o-1 do
for f=0,i-1 do
j=d[7+f+g*i]if j~=0 then
e=a[20][j]n(e[1],e[2],e[3])D(t+g,ak+f,t+g,ak+f+1)end
end
end
end
end
end
function m(b_,bc,ae)s.setColor(13,0,0)s.drawText(b_+1,bc+1,ae)s.setColor(59,59,59)s.drawText(b_,bc,ae)end
function onTick()aC=0
for g=1,3 do
if aj(9)and(not W)or not a[21]then
aK=property.getText(U)b=1
q=""
_=V.sub(aK,b,b)while _~=""do
J=V.byte(_)if J>64 then
q=(q..J-65)+0
if H==1 then
aW=q
a[q]=a[q]or{}elseif H==2 then
bj=q
S=0
elseif H==3 then
aI=q
else
if S==0 then
S=bj
aI=aI-1
aJ={}a[aW][#a[aW]+1]=aJ
end
aJ[#aJ+1]=q
S=S-1
H=P(S,aI)>0 and H-1 or 0
end
H=H+1
q=""
else
q=q.._
end
b=b+1
_=V.sub(aK,b,b)end
U=U+1
W=aK==""
end
end
if W then
if l(9)>0 then
af=aY
ad=l(9)end
aG=aG+1
a[12][1][aG%#a[12][1]+1]=ax(l(10))if y>0 and not af then
N={}ai[#ai+1]=N
Y=5
_=l(Y)while _~=0 do
w={}N[#N+1]=w
for b=0,8 do
w[b+1]=l(Y+b)end
Y=Y+9
_=l(Y)end
end
if aj(1)then
if af then
for b=1,10 do
a[b]=a[b+10*ad]end
ad=ad+1
af=aF
for b=#a[1],1,-1 do
_=a[1][b]_=_[5]&(aD-3000)>0 or ac(a[1],b)end
for b=1,#a[8]do
a[8][b][8]={}end
for b=1,#a[6]do
_=aO(b)_[8][#_[8]+1]=b
end
ai={}end
at=at-1
if y>0 then
if O~=l(1)and l(1)>0 then
v={}_={}_[1]=a[29][l(1)]_[2]=a[16][_[1][3]]bt=_[2][1]_[3]=0
v[1]=_
end
O=l(1)aL=aj(3)if aL and O==5 then
if ab<=0 then
ab=7
else
aL=false
end
end
ab=ab-1
if aL then
_=v[1]_[2]=a[16][_[1][4]]_[3]=-1
x=a[19][6][O]if x>0 then
G[#G+1]={x,1}end
end
end
for b=#v,1,-1 do
_=v[b]if _[3]==0 then
if _[2][3]==4 then
if O==5 and ab<5 then
aP=1
else
aP=0
end
v[#v+1]={_[1],a[16][_[1][5]+aP],2}end
end
_[3]=_[3]+1
if _[3]>=_[2][2]then
if _[2][4]>2 then
_[2]=a[16][_[2][4]]_[3]=0
else
ac(v,b)end
end
end
if af then
R=50
end
M=P(M-4,0)M=aN(M+(y-l(3)+ay-l(4))*3,0,u)R=P(R-1.5,0)y=l(3)ay=l(4)if l(2)>0 then
_=a[2][l(2)]if _ then
if _[4]>3004 and _[4]<3008 then
aH=P(aH+3*(_[4]-3006),1)elseif _[4]>3000 then
aD=_[4]end
end
end
for b=1,#ai do
N=ai[b]for g=1,#N do
w=N[g]_=w[1]if _>(2^15)then
_=a[8][_-(2^15)]for f=1,6 do
_[f]=w[f+1]end
elseif _<0 then
J=a[1][-_]if J then
w=J[6]if a[16][w][5]>0 then
R=P(R,15)at=35
bm=a[16][w][5]G[#G+1]={a[19][11][1],1}if J[4]then
bg=a[15][J[4]]if bg[29]==a[19][13][1]then
for f=1,#a[2]do
a[2][f][8]=a[2][f][8]or 1
end
end
end
end
end
while-_>#a[1]do
a[1][#a[1]+1]=aF
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
ai={}_=a[1][1]B[1]={_[1],_[2]}B[3]=_[3]bl=aQ(#a[7],B[1])av=aO(bl)B[2]=av[1]+41
bf=ao(av[5]/u,1)^1.3
for b=1,#av[8]do
_=a[6][av[8][b]]for g=_[2],_[1]+_[2]-1 do
bh=a[5][g]bk=a[2][bh[4]]bk[8]=2
end
end
bb=aj(2)X=X-1
an=an-1
if not aV[O]then
aV[O]=1
an=70
end
aB=(4-ao(y//20,4))*8
if y<=0 then
aa=41
elseif an>0 then
aa=aB+6
elseif y<bd then
X=35
aa=aB+7
elseif X<=0 then
X=16
az=az%256+1
aa=aB+a[13][1][az]%3
end
bd=y
end
for b=#G,1,-1 do
x=G[b]_=a[18][x[1]]if aj(1)then
z=_[x[2]]x[2]=x[2]+4
else
z=_[x[2]+2]end
if z and z>0 then
Z[#Z+1]={z,1}end
if x[2]>=#_ then
ac(G,b)end
end
for b=1,32 do
aR(b,0)end
for b=#Z,1,-1 do
z=Z[b]aR(b+3,aN(ax((z[1]+12)//2),1,60))z[2]=z[2]+1
if z[2]>bn then
ac(Z,b)end
end
end
end
function onDraw()s=screen
local ag,n,D,ae=s.drawRectF,s.setColor,s.drawLine,s.drawText
aC=aC+1
if a[21]and not W then
d=a[25][1]o,i=d[1],d[2]h,r=C-o/2,80-i/2
for f=0,o-1 do
t=h+f
for Q=0,i-1 do
j=d[5+Q+f*i]if j~=0 then
e=a[20][j]n(e[1],e[2],e[3])D(t,r+Q,t,r+Q+1)end
end
end
end
if not bb then
for b=1,#v do
d=v[b][2][1]aA=d>0 and bf or 1
d=a[17][abs(d)][1]d=a[23][d]o,i,aE=d[1],d[2],d[3]*.7
aT=aE*aZ
h,r=C-(d[4]+160)*.7,A-(d[5]+148)*.7*aZ
for f=0,o-1 do
t=h+f*aE
for Q=0,i-1 do
j=d[7+Q+f*i]if j~=0 then
e=a[20][j]n(e[1]*aA,e[2]*aA,e[3]*aA)ag(t,r+Q*aT,aE,aT)end
end
end
end
end
if W then
if bb then
n(0,0,0)ag(0,0,ap,A)for b=1,#a[2]do
_=a[2][b]if _[8]then
L=ar(aM(aS(sub(a[4][_[1]],B[1]),aU)),{C,aw})F=ar(aM(aS(sub(a[4][_[2]],B[1]),aU)),{C,aw})if _[8]==1 then
n(0,50,0)elseif _[3]&4>0 then
n(50,50,50)else
n(u,u,u)end
D(L[1],L[2],F[1],F[2])end
end
n(u,u,u)_=a[19][10]for b=1,#_,4 do
as=sin(B[3]-90)al=cos(B[3]-90)L={_[b]*al+_[b+1]*as,_[b+1]*al-_[b]*as}F={_[b+2]*al+_[b+3]*as,_[b+3]*al-_[b+2]*as}L=ar(L,{C,aw})F=ar(F,{C,aw})D(L[1],L[2],F[1],F[2])end
end
n(u,M>0 and 0 or u,0,M+R)ag(0,0,ap,A)n(30,30,30)ag(0,A,ap,32)n(5,5,5)ag(C-16,A,32,32)d=a[23][a[19][3][1]+(aa)*a[19][3][3]]o,i=d[1],d[2]h=C-o/2
for b=0,o-1 do
for g=0,i-1 do
j=d[7+g+b*i]if j~=0 then
e=a[20][j]n(e[1],e[2],e[3])D(h+b,A+1+g,h+b,A+2+g)end
end
end
for b=1,3 do
if a[12][1][13+b]>0 then
h,r=221,125+b*8
d=a[23][a[19][3][4]+a[19][5][b]*a[19][3][3]]o,i=d[1],d[2]for g=0,o-1 do
for f=0,i-1 do
j=d[7+f+g*i]if j~=0 then
e=a[20][j]n(e[1],e[2],e[3])D(h+g,r+f,h+g,r+f+1)end
end
end
end
end
if at>0 then
ba=a[13][bm]h=0
r=0
for be=1,#ba do
_=ba[be]if _>0 then
d=a[23][_]o,i=d[1],d[2]t=h-d[4]ak=r-d[5]for b=0,o-1 do
for g=0,i-1 do
j=d[7+g+b*i]if j~=0 then
e=a[20][j]n(e[1],e[2],e[3])D(t+b,ak+g,t+b,ak+g+1)end
end
end
h=h+o
else
h=h+4
end
end
end
au(124,E,T(y).."%",16)au(218,E,T(ay).."%",16)m(124-28-15,ah,"HEALTH")m(218-28-15,ah,"ARMOUR")m(2,E,"ROM:")m(26,E,U)m(2,138,"TPS:")m(26,138,a[12][1][17])m(2,145,"DIF:")m(26,145,T(ao(aD-3000,3)))m(2,ah,"LOD:")m(26,ah,T(aH))m(232,E,"BULL")m(232,138,"SHEL")m(232,145,"ROKT")m(232,ah,"CELL")for b=1,4 do
c=124+b*7
au(265,c,ax(a[12][1][b]),15)au(285,c,ax(a[19][17][b]),15)m(268,c,"/")end
else
ae(1,E,"ROM:")ae(26,E,U)end
end
