
ag=152
K=131
t=255
H=180
r=math
N=r.max
av=r.min
abs=r.abs
ad=r.floor
sqrt=r.sqrt
i=input.getNumber
ae=input.getBool
aY=output.setNumber
pi=r.pi
aE=false
bb=true
Z=table.remove
S=string
function aw(c,l)return{(c[1]+l[1]),(c[2]+l[2])}end
function bm(c,l)return c[1]*l[2]-c[2]*l[1]end
function sub(c,l)return{(c[1]-l[1]),(c[2]-l[2])}end
function aV(c,l)return{c[1]*l,c[2]*l}end
function br(c)return((c+H)%360)-H end
function sin(c)return r.sin(c/H*pi)end
function cos(c)return r.cos(c/H*pi)end
function tan(c)return r.tan(c/H*pi)end
function bt(c)return r.atan(c)*H/pi end
function bu(c)return r.atan(c[2],c[1])*H/pi end
function b_(c,l,bn)return av(N(l,c),bn)end
function aq(c)return ad(c+.5)end
function bs(c,l)return sqrt(((c[1]-l[1])^2)+((c[2]-l[2])^2))end
function aR(c)return{c[1],-c[2]}end
function bp(c)c=c-1
c=c|(c>>1)c=c|(c>>2)c=c|(c>>4)return c+1
end
a={}ai=1
T=3
ac=aE
E={{0,0},0,0}am=288
C=am//2
D=128
at=D//2
bd=1.2
aT={1,1}aL=1
X=1
T=3
aJ=400
x=100
aW=100
aH=0
ao=0
O=0
M=0
aI=3002
aU=32768
u={}aZ=.05
A={}af={}be=2
V=0
aC=0
al=0
G=1
aA=0
ah=0
U=bb
function aX(b,c)if b<aU then
F=a[7][b]return aX(F[0<bm({F[3],F[4]},sub(c,F))and 8 or 7],c)else
return b-aU
end
end
function aO(c)F=a[5][a[6][c][2]]return a[8][a[3][a[2][F[4]][F[5]+6]][6]]end
function ap(h,p,an,as)local B,n=v.drawLine,v.setColor
an=an..""
as=a[19][as]for b=#an,1,-1 do
_=as[S.byte(S.sub(an,b,b))]h=h-as[1]if _>0 then
d=a[23][_]o,j=d[1],d[2]s=h-d[4]+1
W=p-d[5]for g=0,o-1 do
for f=0,j-1 do
k=d[7+f+g*j]if k~=0 then
e=a[20][k]n(e[1],e[2],e[3])B(s+g,W+f,s+g,W+f+1)end
end
end
end
end
end
function m(bc,aS,aj)v.setColor(13,0,0)v.drawText(bc+1,aS+1,aj)v.setColor(59,59,59)v.drawText(bc,aS,aj)end
function onTick()aA=0
for g=1,3 do
if ae(9)and(not ac)or not a[21]then
aG=property.getText(ai)b=1
q=""
_=S.sub(aG,b,b)while _~=""do
I=S.byte(_)if I>64 then
q=(q..I-65)+0
if G==1 then
aM=q
a[q]=a[q]or{}elseif G==2 then
bg=q
aa=0
elseif G==3 then
ay=q
else
if aa==0 then
aa=bg
ay=ay-1
aF={}a[aM][#a[aM]+1]=aF
end
aF[#aF+1]=q
aa=aa-1
G=N(aa,ay)>0 and G-1 or 0
end
G=G+1
q=""
else
q=q.._
end
b=b+1
_=S.sub(aG,b,b)end
ai=ai+1
ac=aG==""
end
end
if ac then
if i(10)>0 then
U=bb
T=i(10)end
aC=aC+1
a[12][1][aC%#a[12][1]+1]=aq(i(11))if x>0 and not U then
P={}ab[#ab+1]=P
Y=6
_=i(Y)while _~=0 do
w={}P[#P+1]=w
for b=0,8 do
w[b+1]=i(Y+b)end
Y=Y+9
_=i(Y)end
end
if ae(1)then
if U then
for b=1,10 do
a[b]=a[b+10*T]end
T=T+1
U=aE
for b=#a[1],1,-1 do
_=a[1][b]_=_[5]&(aI-3000)>0 or Z(a[1],b)end
for b=1,#a[8]do
a[8][b][8]={}end
for b=1,#a[6]do
_=aO(b)_[8][#_[8]+1]=b
end
ab={}end
ao=ao-1
if x>0 then
if Q~=i(1)and i(1)>0 then
u={}_={}_[1]=a[29][i(1)]_[2]=a[16][_[1][3]]bq=_[2][1]_[3]=0
u[1]=_
end
Q=i(1)aD=ae(3)if aD and Q==5 then
if ah<=0 then
ah=7
else
aD=false
end
end
ah=ah-1
if aD then
_=u[1]_[2]=a[16][_[1][4]]_[3]=-1
z=a[19][6][Q]if z>0 then
A[#A+1]={z,1}end
end
end
for b=#u,1,-1 do
_=u[b]if _[3]==0 then
if _[2][3]==4 then
if Q==5 and ah<5 then
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
Z(u,b)end
end
end
if U then
O=50
end
M=N(M-4,0)M=b_(M+(x-i(3)+aH-i(4))*3,0,t)O=N(O-1.5,0)x=i(3)aH=i(4)if i(2)>0 then
_=a[2][i(2)]if _ then
if _[4]>3004 and _[4]<3008 then
aJ=N(aJ+3*(_[4]-3006),1)elseif _[4]>3000 then
aI=_[4]end
end
end
for b=1,#ab do
P=ab[b]for g=1,#P do
w=P[g]_=w[1]if _>(2^15)then
_=a[8][_-(2^15)]for f=1,6 do
_[f]=w[f+1]end
elseif _<0 then
I=a[1][-_]if I then
w=I[6]if a[16][w][5]>0 then
O=N(O,15)ao=35
bl=a[16][w][5]A[#A+1]={"item pickup sound index",1}if I[4]then
bo=a[15][I[4]]if bo[29]==a[19][13][1]then
for f=1,#a[2]do
a[2][f][8]=a[2][f][8]or 1
end
end
end
end
end
while-_>#a[1]do
a[1][#a[1]+1]=aE
end
Z(a[1],-_)else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for f=1,8 do
_[a[19][1][f]]=w[f+1]end
_[15]=0
end
end
end
ab={}_=a[1][1]E[1]={_[1],_[2]}E[3]=_[3]bi=aX(#a[7],E[1])au=aO(bi)E[2]=au[1]+41
bh=av(au[5]/t,1)^1.3
for b=1,#au[8]do
_=a[6][au[8][b]]for g=_[2],_[1]+_[2]-1 do
bf=a[5][g]bj=a[2][bf[4]]bj[8]=2
end
end
aP=ae(2)if i(12)>0 then
A[#A+1]={i(12),1}end
V=V-1
al=al-1
if not aT[Q]then
aT[Q]=1
al=70
end
az=(4-av(x//20,4))*8
if x<=0 then
X=41
elseif al>0 then
X=az+6
elseif x<aW then
V=35
X=az+7
elseif V<=0 then
V=16
aL=aL%256+1
X=az+a[13][1][aL]%3
end
aW=x
end
for b=#A,1,-1 do
z=A[b]_=a[18][z[1]]if ae(1)then
y=_[z[2]]z[2]=z[2]+4
else
y=_[z[2]+2]end
if y and y>0 then
af[#af+1]={y,1}end
if z[2]>=#_ then
Z(A,b)end
end
for b=1,32 do
aY(b,0)end
for b=#af,1,-1 do
y=af[b]aY(b+3,b_(aq((y[1]+12)//2),1,60))y[2]=y[2]+1
if y[2]>be then
Z(af,b)end
end
end
end
function onDraw()v=screen
local ak,n,B,aj=v.drawRectF,v.setColor,v.drawLine,v.drawText
aA=aA+1
if a[21]and not ac then
d=a[25][1]o,j=d[1],d[2]h,p=C-o/2,80-j/2
for f=0,o-1 do
s=h+f
for R=0,j-1 do
k=d[5+R+f*j]if k~=0 then
e=a[20][k]n(e[1],e[2],e[3])B(s,p+R,s,p+R+1)end
end
end
end
if not aP then
for b=1,#u do
d=u[b][2][1]aB=d>0 and bh or 1
d=a[17][abs(d)][1]d=a[23][d]o,j,aK=d[1],d[2],d[3]*.7
aQ=aK*bd
h,p=C-(d[4]+160)*.7,D-(d[5]+148)*.7*bd
for f=0,o-1 do
s=h+f*aK
for R=0,j-1 do
k=d[7+R+f*j]if k~=0 then
e=a[20][k]n(e[1]*aB,e[2]*aB,e[3]*aB)ak(s,p+R*aQ,aK,aQ)end
end
end
end
end
if ac then
if aP then
n(0,0,0)ak(0,0,am,D)for b=1,#a[2]do
_=a[2][b]if _[8]then
L=aw(aR(aV(sub(a[4][_[1]],E[1]),aZ)),{C,at})J=aw(aR(aV(sub(a[4][_[2]],E[1]),aZ)),{C,at})if _[8]==1 then
n(0,50,0)elseif _[3]&4>0 then
n(50,50,50)else
n(t,t,t)end
B(L[1],L[2],J[1],J[2])end
end
n(t,t,t)_=a[19][10]for b=1,#_,4 do
ax=sin(E[3]-90)ar=cos(E[3]-90)L={_[b]*ar+_[b+1]*ax,_[b+1]*ar-_[b]*ax}J={_[b+2]*ar+_[b+3]*ax,_[b+3]*ar-_[b+2]*ax}L=aw(L,{C,at})J=aw(J,{C,at})B(L[1],L[2],J[1],J[2])end
end
n(t,M>0 and 0 or t,0,M+O)ak(0,0,am,D)n(30,30,30)ak(0,D,am,32)n(5,5,5)ak(C-16,D,32,32)d=a[23]["face textures start"+(X)*"number of sprite mipmap levels"]o,j=d[1],d[2]h=C-o/2
for b=0,o-1 do
for g=0,j-1 do
k=d[7+g+b*j]if k~=0 then
e=a[20][k]n(e[1],e[2],e[3])B(h+b,D+1+g,h+b,D+2+g)end
end
end
for b=1,3 do
if a[12][1][13+b]>0 then
h,p=221,125+b*8
d=a[23]["key textures start"+a[19][5][b]*"number of sprite mipmap levels"]o,j=d[1],d[2]for g=0,o-1 do
for f=0,j-1 do
k=d[7+f+g*j]if k~=0 then
e=a[20][k]n(e[1],e[2],e[3])B(h+g,p+f,h+g,p+f+1)end
end
end
end
end
if ao>0 then
aN=a[13][bl]h=0
p=0
for bk=1,#aN do
_=aN[bk]if _>0 then
d=a[23][_]o,j=d[1],d[2]s=h-d[4]W=p-d[5]for b=0,o-1 do
for g=0,j-1 do
k=d[7+g+b*j]if k~=0 then
e=a[20][k]n(e[1],e[2],e[3])B(s+b,W+g,s+b,W+g+1)end
end
end
h=h+o
else
h=h+4
end
end
end
ap(124,K,ad(x).."%",16)ap(218,K,ad(aH).."%",16)m(124-28-15,ag,"HEALTH")m(218-28-15,ag,"ARMOUR")m(2,K,"ROM:")m(26,K,ai)m(2,138,"TPS:")m(26,138,a[12][1][17])m(2,145,"DIF:")m(26,145,ad(av(aI-3000,3)))m(2,ag,"LOD:")m(26,ag,ad(aJ))m(232,K,"BULL")m(232,138,"SHEL")m(232,145,"ROKT")m(232,ag,"CELL")for b=1,4 do
c=124+b*7
ap(265,c,aq(a[12][1][b]),15)ap(285,c,aq(a[19][17][b]),15)m(268,c,"/")end
else
aj(1,K,"ROM:")aj(26,K,ai)end
end
