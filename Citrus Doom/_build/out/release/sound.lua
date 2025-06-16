
U=152
J=131
w=255
H=180
r=math
O=r.max
an=r.min
abs=r.abs
ag=r.floor
sqrt=r.sqrt
i=input.getNumber
ae=input.getBool
bc=output.setNumber
pi=r.pi
aL=false
aX=true
ad=table.remove
aa=string
function at(c,l)return{(c[1]+l[1]),(c[2]+l[2])}end
function bk(c,l)return c[1]*l[2]-c[2]*l[1]end
function sub(c,l)return{(c[1]-l[1]),(c[2]-l[2])}end
function bd(c,l)return{c[1]*l,c[2]*l}end
function bu(c)return((c+H)%360)-H end
function sin(c)return r.sin(c/H*pi)end
function cos(c)return r.cos(c/H*pi)end
function tan(c)return r.tan(c/H*pi)end
function bp(c)return r.atan(c)*H/pi end
function br(c)return r.atan(c[2],c[1])*H/pi end
function aV(c,l,be)return an(O(l,c),be)end
function ar(c)return ag(c+.5)end
function bq(c,l)return sqrt(((c[1]-l[1])^2)+((c[2]-l[2])^2))end
function aT(c)return{c[1],-c[2]}end
function bs(c)c=c-1
c=c|(c>>1)c=c|(c>>2)c=c|(c>>4)return c+1
end
a={}Z=1
ak=3
ab=aL
C={{0,0},0,0}as=288
E=as//2
D=128
al=D//2
aN=1.2
aU={1,1}aG=1
Y=1
ak=3
aC=400
q=100
aM=100
az=0
ap=0
P=0
Q=0
aF=3002
ba=32768
v={}b_=.05
x={}V={}bg=2
ac=0
ay=0
ao=0
K=1
aB=0
ai=0
ah=aX
function aP(b,c)if b<ba then
F=a[7][b]return aP(F[0<bk({F[3],F[4]},sub(c,F))and 8 or 7],c)else
return b-ba
end
end
function aR(c)F=a[5][a[6][c][2]]return a[8][a[3][a[2][F[4]][F[5]+6]][6]]end
function av(h,p,aw,aq)local B,n=u.drawLine,u.setColor
aw=aw..""
aq=a[19][aq]for b=#aw,1,-1 do
_=aq[aa.byte(aa.sub(aw,b,b))]h=h-aq[1]if _>0 then
d=a[23][_]o,j=d[1],d[2]t=h-d[4]+1
af=p-d[5]for g=0,o-1 do
for f=0,j-1 do
k=d[7+f+g*j]if k~=0 then
e=a[20][k]n(e[1],e[2],e[3])B(t+g,af+f,t+g,af+f+1)end
end
end
end
end
end
function m(aY,aO,X)u.setColor(13,0,0)u.drawText(aY+1,aO+1,X)u.setColor(59,59,59)u.drawText(aY,aO,X)end
function onTick()aB=0
for g=1,3 do
if ae(9)and(not ab)or not a[21]then
aJ=property.getText(Z)b=1
s=""
_=aa.sub(aJ,b,b)while _~=""do
I=aa.byte(_)if I>64 then
s=(s..I-65)+0
if K==1 then
aW=s
a[s]=a[s]or{}elseif K==2 then
bn=s
W=0
elseif K==3 then
aI=s
else
if W==0 then
W=bn
aI=aI-1
aH={}a[aW][#a[aW]+1]=aH
end
aH[#aH+1]=s
W=W-1
K=O(W,aI)>0 and K-1 or 0
end
K=K+1
s=""
else
s=s.._
end
b=b+1
_=aa.sub(aJ,b,b)end
Z=Z+1
ab=aJ==""
end
end
if ab then
if i(10)>0 then
ah=aX
ak=i(10)end
ay=ay+1
a[12][1][ay%#a[12][1]+1]=ar(i(11))if q>0 and not ah then
N={}S[#S+1]=N
T=6
_=i(T)while _~=0 do
y={}N[#N+1]=y
for b=0,8 do
y[b+1]=i(T+b)end
T=T+9
_=i(T)end
end
if ae(1)then
if ah then
for b=1,10 do
a[b]=a[b+10*ak]end
ak=ak+1
ah=aL
for b=#a[1],1,-1 do
_=a[1][b]_=_[5]&(aF-3000)>0 or ad(a[1],b)end
for b=1,#a[8]do
a[8][b][8]={}end
for b=1,#a[6]do
_=aR(b)_[8][#_[8]+1]=b
end
S={}end
ap=ap-1
if q>0 then
if R~=i(1)and i(1)>0 then
v={}_={}_[1]=a[29][i(1)]_[2]=a[16][_[1][3]]bt=_[2][1]_[3]=0
v[1]=_
end
R=i(1)aD=ae(3)if aD and R==5 then
if ai<=0 then
ai=7
else
aD=false
end
end
ai=ai-1
if aD then
_=v[1]_[2]=a[16][_[1][4]]_[3]=-1
z=a[19][6][R]if z>0 then
x[#x+1]={z,1}end
end
end
for b=#v,1,-1 do
_=v[b]if _[3]==0 then
if _[2][3]==4 then
if R==5 and ai<5 then
aZ=1
else
aZ=0
end
v[#v+1]={_[1],a[16][_[1][5]+aZ],2}end
end
_[3]=_[3]+1
if _[3]>=_[2][2]then
if _[2][4]>2 then
_[2]=a[16][_[2][4]]_[3]=0
else
ad(v,b)end
end
end
if ah then
P=50
end
Q=O(Q-4,0)Q=aV(Q+(q-i(3)+az-i(4))*3,0,w)P=O(P-1.5,0)q=i(3)az=i(4)if i(2)>0 and q>0 then
_=a[2][i(2)]if _ then
if _[4]>3004 and _[4]<3008 then
aC=O(aC+3*(_[4]-3006),1)elseif _[4]>3000 then
aF=_[4]end
end
end
for b=1,#S do
N=S[b]for g=1,#N do
y=N[g]_=y[1]if _>(2^15)then
_=a[8][_-(2^15)]for f=1,6 do
_[f]=y[f+1]end
elseif _<0 then
I=a[1][-_]if I then
y=I[6]if a[16][y][5]>0 then
P=O(P,15)ap=35
bm=a[16][y][5]x[#x+1]={"item pickup sound index",1}if I[4]then
bf=a[15][I[4]]if bf[29]==a[19][13][1]then
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
ad(a[1],-_)else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for f=1,8 do
_[a[19][1][f]]=y[f+1]end
_[15]=0
end
end
end
S={}_=a[1][1]C[1]={_[1],_[2]}C[3]=_[3]bi=aP(#a[7],C[1])am=aR(bi)C[2]=am[1]+41
bh=an(am[5]/w,1)^1.3
for b=1,#am[8]do
_=a[6][am[8][b]]for g=_[2],_[1]+_[2]-1 do
bo=a[5][g]bj=a[2][bo[4]]bj[8]=2
end
end
aS=ae(2)if i(12)>0 and q>0 then
x[#x+1]={i(12),1}end
ac=ac-1
ao=ao-1
if not aU[R]then
aU[R]=1
ao=70
end
aE=(4-an(q//20,4))*8
if q<=0 then
Y=41
elseif ao>0 then
Y=aE+6
elseif q<aM then
ac=35
Y=aE+7
elseif ac<=0 then
ac=16
aG=aG%256+1
Y=aE+a[13][1][aG]%3
end
aM=q
end
for b=#x,1,-1 do
z=x[b]_=a[18][z[1]]if ae(1)then
A=_[z[2]]z[2]=z[2]+4
else
A=_[z[2]+2]end
if A and A>0 then
V[#V+1]={A,1}end
if z[2]>=#_ then
ad(x,b)end
end
for b=1,32 do
bc(b,0)end
for b=#V,1,-1 do
A=V[b]bc(b+3,aV(ar((A[1]+12)//2),1,60))A[2]=A[2]+1
if A[2]>bg then
ad(V,b)end
end
end
end
function onDraw()u=screen
local aj,n,B,X=u.drawRectF,u.setColor,u.drawLine,u.drawText
aB=aB+1
if a[21]and not ab then
d=a[25][1]o,j=d[1],d[2]h,p=E-o/2,80-j/2
for f=0,o-1 do
t=h+f
for M=0,j-1 do
k=d[5+M+f*j]if k~=0 then
e=a[20][k]n(e[1],e[2],e[3])B(t,p+M,t,p+M+1)end
end
end
end
if not aS then
for b=1,#v do
d=v[b][2][1]aK=d>0 and bh or 1
d=a[17][abs(d)][1]d=a[23][d]o,j,aA=d[1],d[2],d[3]*.7
bb=aA*aN
h,p=E-(d[4]+160)*.7,D-(d[5]+148)*.7*aN
for f=0,o-1 do
t=h+f*aA
for M=0,j-1 do
k=d[7+M+f*j]if k~=0 then
e=a[20][k]n(e[1]*aK,e[2]*aK,e[3]*aK)aj(t,p+M*bb,aA,bb)end
end
end
end
end
if ab then
if aS then
n(0,0,0)aj(0,0,as,D)for b=1,#a[2]do
_=a[2][b]if _[8]then
G=at(aT(bd(sub(a[4][_[1]],C[1]),b_)),{E,al})L=at(aT(bd(sub(a[4][_[2]],C[1]),b_)),{E,al})if _[8]==1 then
n(0,50,0)elseif _[3]&4>0 then
n(50,50,50)else
n(w,w,w)end
B(G[1],G[2],L[1],L[2])end
end
n(w,w,w)_=a[19][10]for b=1,#_,4 do
au=sin(C[3]-90)ax=cos(C[3]-90)G={_[b]*ax+_[b+1]*au,_[b+1]*ax-_[b]*au}L={_[b+2]*ax+_[b+3]*au,_[b+3]*ax-_[b+2]*au}G=at(G,{E,al})L=at(L,{E,al})B(G[1],G[2],L[1],L[2])end
end
n(w,Q>0 and 0 or w,0,Q+P)aj(0,0,as,D)n(30,30,30)aj(0,D,as,32)n(5,5,5)aj(E-16,D,32,32)d=a[23]["face textures start"+(Y)*"number of sprite mipmap levels"]o,j=d[1],d[2]h=E-o/2
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
if ap>0 then
aQ=a[13][bm]h=0
p=0
for bl=1,#aQ do
_=aQ[bl]if _>0 then
d=a[23][_]o,j=d[1],d[2]t=h-d[4]af=p-d[5]for b=0,o-1 do
for g=0,j-1 do
k=d[7+g+b*j]if k~=0 then
e=a[20][k]n(e[1],e[2],e[3])B(t+b,af+g,t+b,af+g+1)end
end
end
h=h+o
else
h=h+4
end
end
end
av(124,J,ag(q).."%",16)av(218,J,ag(az).."%",16)m(124-28-15,U,"HEALTH")m(218-28-15,U,"ARMOUR")m(2,J,"ROM:")m(26,J,Z)m(2,138,"TPS:")m(26,138,a[12][1][17])m(2,145,"DIF:")m(26,145,ag(an(aF-3000,3)))m(2,U,"LOD:")m(26,U,ag(aC))m(232,J,"BULL")m(232,138,"SHEL")m(232,145,"ROKT")m(232,U,"CELL")for b=1,4 do
c=124+b*7
av(265,c,ar(a[12][1][b]),15)av(285,c,ar(a[19][17][b]),15)m(268,c,"/")end
else
X(1,J,"ROM:")X(26,J,Z)end
end
