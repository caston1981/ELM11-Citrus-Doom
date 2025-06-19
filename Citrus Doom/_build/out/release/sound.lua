
Z=152
M=131
l=255
J=180
u=math
P=u.max
ar=u.min
abs=u.abs
T=u.floor
sqrt=u.sqrt
i=input.getNumber
ao=input.getBool
b_=output.setNumber
pi=u.pi
aP=false
ag=true
X=table.remove
am=string
function as(c,n)return{(c[1]+n[1]),(c[2]+n[2])}end
function bq(c,n)return c[1]*n[2]-c[2]*n[1]end
function sub(c,n)return{(c[1]-n[1]),(c[2]-n[2])}end
function bo(c,n)return{c[1]*n,c[2]*n}end
function bF(c)return((c+J)%360)-J end
function sin(c)return u.sin(c/J*pi)end
function cos(c)return u.cos(c/J*pi)end
function tan(c)return u.tan(c/J*pi)end
function bD(c)return u.atan(c)*J/pi end
function bC(c)return u.atan(c[2],c[1])*J/pi end
function bi(c,n,bx)return ar(P(n,c),bx)end
function aq(c)return T(c+.5)end
function bE(c,n)return sqrt(((c[1]-n[1])^2)+((c[2]-n[2])^2))end
function bd(c)return{c[1],-c[2]}end
function bA(c)c=c-1
c=c|(c>>1)c=c|(c>>2)c=c|(c>>4)return c+1
end
a={}at=1
Y=3
ah=aP
C={{0,0},0,0}aB=288
E=aB//2
F=128
ax=F//2
aT=1.2
aV={1,1}aH=1
al=1
aR=500
t=100
aX=100
aE=0
R=0
N=0
S=0
aK=3002
aY=32768
x={}bn=.05
y={}aa={}bt=2
ab=35
W=0
aM=0
ay=0
K=1
aF=0
ad=0
aj=0
ai=ag
aQ=0
au=0
function bk(b,c)if b<aY then
H=a[7][b]return bk(H[0<bq({H[3],H[4]},sub(c,H))and 8 or 7],c)else
return b-aY
end
end
function be(c)H=a[5][a[6][c][2]]return a[8][a[3][a[2][H[4]][H[5]+6]][6]]end
function ap(h,r,aA,aw)local D,o=w.drawLine,w.setColor
aA=aA..""
aw=a[19][aw]for b=#aA,1,-1 do
_=aw[am.byte(am.sub(aA,b,b))]h=h-aw[1]if _>0 then
d=a[23][_]q,j=d[1],d[2]v=h-d[4]+1
af=r-d[5]for g=0,q-1 do
for f=0,j-1 do
m=d[7+f+g*j]if m~=0 then
e=a[20][m]o(e[1],e[2],e[3])D(v+g,af+f,v+g,af+f+1)end
end
end
end
end
end
function p(bb,bc,V,k)k=k or{59,59,59}w.setColor(13,0,0)w.drawText(bb+1,bc+1,V)w.setColor(k[1],k[2],k[3])w.drawText(bb,bc,V)end
function onTick()aF=0
for g=1,3 do
if ao(9)and(not ah)or not a[21]then
aS=property.getText(at)b=1
s=""
_=am.sub(aS,b,b)while _~=""do
L=am.byte(_)if L>64 then
s=(s..L-65)+0
if K==1 then
bl=s
a[s]=a[s]or{}elseif K==2 then
bp=s
ae=0
elseif K==3 then
aG=s
else
if ae==0 then
ae=bp
aG=aG-1
aO={}a[bl][#a[bl]+1]=aO
end
aO[#aO+1]=s
ae=ae-1
K=P(ae,aG)>0 and K-1 or 0
end
K=K+1
s=""
else
s=s.._
end
b=b+1
_=am.sub(aS,b,b)end
at=at+1
ah=aS==""
end
end
if ah then
if i(10)>0 then
ai=ag
Y=i(10)end
aM=aM+1
a[12][1][aM%#a[12][1]+1]=aq(i(11))ad=a[12][1][17]if t>0 and not ai then
Q={}ac[#ac+1]=Q
an=6
_=i(an)while _~=0 do
B={}Q[#Q+1]=B
for b=0,8 do
B[b+1]=i(an+b)end
an=an+9
_=i(an)end
end
if ao(1)then
if ai then
for b=1,10 do
a[b]=a[b+10*Y]end
Y=Y+1
for b=#a[1],1,-1 do
_=a[1][b]_=_[5]&(aK-3000)>0 or X(a[1],b)end
for b=1,#a[8]do
a[8][b][8]={}end
for b=1,#a[6]do
_=be(b)_[8][#_[8]+1]=b
end
ac={}end
R=R-1
if t>0 then
if U~=i(1)and i(1)>0 then
x={}_={}_[1]=a[29][i(1)]_[2]=a[16][_[1][3]]bB=_[2][1]_[3]=0
x[1]=_
end
U=i(1)aN=ao(3)if aN and U==5 then
if aj<=0 then
aj=7
else
aN=false
end
end
aj=aj-1
if aN then
_=x[1]_[2]=a[16][_[1][4]]_[3]=-1
z=a[19][6][U]if z>0 then
y[#y+1]={z,1}end
end
end
for b=#x,1,-1 do
_=x[b]if _[3]==0 then
if _[2][3]==4 then
if U==5 and aj<5 then
aU=1
else
aU=0
end
x[#x+1]={_[1],a[16][_[1][5]+aU],2}end
end
_[3]=_[3]+1
if _[3]>=_[2][2]then
if _[2][4]>2 then
_[2]=a[16][_[2][4]]_[3]=0
else
X(x,b)end
end
end
if ai then
N=50
R=ab*8
aL=Y-4+"map name text start"
end
ai=aP
S=P(S-4,0)S=bi(S+(t-i(3)+aE-i(4))*3,0,l)N=P(N-1.5,0)t=i(3)aE,bm,bf,aZ=i(4)if i(2)>0 and t>0 then
_=a[2][i(2)]if _ then
if _[4]==3008 then
ba=_[5]>0 and T(_[5])aZ=ag
elseif _[4]>3004 then
aR=P(aR+3*(_[4]-3006),1)bf=ag
elseif _[4]>3000 then
aK=_[4]bm=ag
elseif _[4]>=14 and _[4]<=16 then
if a[12][1][_[4]]==0 then
R=ab*4
aL=_[4]-14+"door text start"
end
end
end
end
au=au-1
if au<1 then
aQ=0
end
for b=1,#ac do
Q=ac[b]for g=1,#Q do
B=Q[g]_=B[1]if _>(2^15)then
_=a[8][_-(2^15)]for f=1,6 do
_[f]=B[f+1]end
elseif _<0 then
L=a[1][-_]if L then
B=L[6]if a[16][B][5]>0 then
N=P(N,15)R=ab*4
aL=a[16][B][5]y[#y+1]={"item pickup sound index",1}if L[4]then
bh=a[15][L[4]]if bh[29]=="light amp index" then
aQ=1
au=4200
end
if bh[29]=="computer area map index" then
for f=1,#a[2]do
a[2][f][8]=a[2][f][8]or 1
end
end
end
end
end
while-_>#a[1]do
a[1][#a[1]+1]=aP
end
X(a[1],-_)else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for f=1,8 do
_[a[19][1][f]]=B[f+1]end
_[15]=0
end
end
end
ac={}_=a[1][1]C[1]={_[1],_[2]}C[3]=_[3]bv=bk(#a[7],C[1])av=be(bv)C[2]=av[1]+41
bw=ar(av[5]/l+aQ,1)^1.3
for b=1,#av[8]do
_=a[6][av[8][b]]for g=_[2],_[1]+_[2]-1 do
br=a[5][g]by=a[2][br[4]]by[8]=2
end
end
aW=ao(2)if i(12)>0 and t>0 then
y[#y+1]={i(12),1}end
W=W-1
ay=ay-1
if not aV[U]then
aV[U]=1
ay=70
end
aI=(4-ar(t//20,4))*8
if t<=0 then
al=41
elseif ay>0 then
al=aI+6
elseif t<aX then
W=ab
al=aI+7
elseif W<=0 then
W=16
aH=aH%256+1
al=aI+a[13][1][aH]%3
end
aX=t
end
for b=#y,1,-1 do
z=y[b]_=a[18][z[1]]if ao(1)then
A=_[z[2]]z[2]=z[2]+4
else
A=_[z[2]+2]end
if A and A>0 then
aa[#aa+1]={A,1}end
if z[2]>=#_ then
X(y,b)end
end
for b=1,32 do
b_(b,0)end
for b=#aa,1,-1 do
A=aa[b]b_(b+3,bi(aq((A[1]+12)//2),1,60))A[2]=A[2]+1
if A[2]>bt then
X(aa,b)end
end
end
end
function onDraw()w=screen
local ak,o,D,V=w.drawRectF,w.setColor,w.drawLine,w.drawText
aF=aF+1
if a[21]and not ah then
d=a[25][1]q,j=d[1],d[2]h,r=E-q/2,80-j/2
for f=0,q-1 do
v=h+f
for O=0,j-1 do
m=d[5+O+f*j]if m~=0 then
e=a[20][m]o(e[1],e[2],e[3])D(v,r+O,v,r+O+1)end
end
end
end
if not aW then
for b=1,#x do
d=x[b][2][1]aD=d>0 and bw or 1
d=a[17][abs(d)][1]d=a[23][d]q,j,aJ=d[1],d[2],d[3]*.7
bj=aJ*aT
h,r=E-(d[4]+160)*.7,F-(d[5]+148)*.7*aT
for f=0,q-1 do
v=h+f*aJ
for O=0,j-1 do
m=d[7+O+f*j]if m~=0 then
e=a[20][m]o(e[1]*aD,e[2]*aD,e[3]*aD)ak(v,r+O*bj,aJ,bj)end
end
end
end
end
if ah then
if aW then
o(0,0,0)ak(0,0,aB,F)for b=1,#a[2]do
_=a[2][b]if _[8]then
G=as(bd(bo(sub(a[4][_[1]],C[1]),bn)),{E,ax})I=as(bd(bo(sub(a[4][_[2]],C[1]),bn)),{E,ax})if _[8]==1 then
o(0,50,0)elseif _[3]&4>0 then
o(50,50,50)else
o(l,l,l)end
D(G[1],G[2],I[1],I[2])end
end
o(l,l,l)_=a[19][10]for b=1,#_,4 do
az=sin(C[3]-90)aC=cos(C[3]-90)G={_[b]*aC+_[b+1]*az,_[b+1]*aC-_[b]*az}I={_[b+2]*aC+_[b+3]*az,_[b+3]*aC-_[b+2]*az}G=as(G,{E,ax})I=as(I,{E,ax})D(G[1],G[2],I[1],I[2])end
end
o(l,S>0 and 0 or l,0,S+N)ak(0,0,aB,F)o(30,30,30)ak(0,F,aB,32)o(5,5,5)ak(E-16,F,32,32)d=a[23]["face textures start"+(al)*"number of sprite mipmap levels"]q,j=d[1],d[2]h=E-q/2
for b=0,q-1 do
for g=0,j-1 do
m=d[7+g+b*j]if m~=0 then
e=a[20][m]o(e[1],e[2],e[3])D(h+b,F+1+g,h+b,F+2+g)end
end
end
for b=1,3 do
if a[12][1][13+b]>0 then
h,r=221,125+b*8
d=a[23]["key textures start"+a[19][5][b]*"number of sprite mipmap levels"]q,j=d[1],d[2]for g=0,q-1 do
for f=0,j-1 do
m=d[7+f+g*j]if m~=0 then
e=a[20][m]o(e[1],e[2],e[3])D(h+g,r+f,h+g,r+f+1)end
end
end
end
end
if R>0 then
bg=a[13][aL]h=0
r=0
for bs=1,#bg do
_=bg[bs]if _>0 then
d=a[23][_]q,j=d[1],d[2]v=h-d[4]af=r-d[5]for b=0,q-1 do
for g=0,j-1 do
m=d[7+g+b*j]if m~=0 then
e=a[20][m]o(e[1],e[2],e[3])D(v+b,af+g,v+b,af+g+1)end
end
end
h=h+q
else
h=h+4
end
end
end
ap(124,M,T(t).."%",16)ap(218,M,T(aE).."%",16)p(124-28-15,Z,"HEALTH")p(218-28-15,Z,"ARMOUR")k=(ad<ab and ad>0)and{l,0,0}p(2,M,"TPS:",k)p(26,M,ad>0 and ad or "N/A",k)k=bm and{l,l,44}p(2,138,"DIF:",k)bu={"EASY","MED","HARD"}p(26,138,bu[T(ar(aK-3000,3))],k)k=bf and{l,l,44}p(2,145,"LOD:",k)p(26,145,T(aR),k)k=aZ and{l,l,44}p(2,Z,"TEX:",k)bz={"FULL","HALF"}p(26,Z,ba and bz[ba]or "OFF",k)p(232,M,"BULL")p(232,138,"SHEL")p(232,145,"ROKT")p(232,Z,"CELL")for b=1,4 do
c=124+b*7
ap(265,c,aq(a[12][1][b]),15)ap(285,c,aq(a[19][17][b]),15)p(268,c,"/")end
else
V(1,M,"ROM:")V(26,M,at)end
end
