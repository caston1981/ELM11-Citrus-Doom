
ak=152
L=131
l=255
H=180
r=math
S=r.max
au=r.min
abs=r.abs
O=r.floor
sqrt=r.sqrt
j=input.getNumber
ab=input.getBool
bh=output.setNumber
pi=r.pi
aG=false
Z=true
ai=table.remove
am=string
function at(c,n)return{(c[1]+n[1]),(c[2]+n[2])}end
function bo(c,n)return c[1]*n[2]-c[2]*n[1]end
function sub(c,n)return{(c[1]-n[1]),(c[2]-n[2])}end
function bd(c,n)return{c[1]*n,c[2]*n}end
function by(c)return((c+H)%360)-H end
function sin(c)return r.sin(c/H*pi)end
function cos(c)return r.cos(c/H*pi)end
function tan(c)return r.tan(c/H*pi)end
function bA(c)return r.atan(c)*H/pi end
function bC(c)return r.atan(c[2],c[1])*H/pi end
function bi(c,n,bp)return au(S(n,c),bp)end
function ay(c)return O(c+.5)end
function bz(c,n)return sqrt(((c[1]-n[1])^2)+((c[2]-n[2])^2))end
function ba(c)return{c[1],-c[2]}end
function bD(c)c=c-1
c=c|(c>>1)c=c|(c>>2)c=c|(c>>4)return c+1
end
a={}as=1
an=3
ah=aG
D={{0,0},0,0}av=288
E=av//2
F=128
aw=F//2
aY=1.2
aU={1,1}aO=1
af=1
aN=500
t=100
aR=100
aF=0
Q=0
T=0
P=0
aI=3002
aV=32768
x={}bl=.05
A={}ad={}bx=2
ag=35
V=0
aD=0
aA=0
G=1
aQ=0
X=0
al=0
aa=Z
function aZ(b,c)if b<aV then
M=a[7][b]return aZ(M[0<bo({M[3],M[4]},sub(c,M))and 8 or 7],c)else
return b-aV
end
end
function aX(c)M=a[5][a[6][c][2]]return a[8][a[3][a[2][M[4]][M[5]+6]][6]]end
function ar(h,u,aq,ap)local C,p=v.drawLine,v.setColor
aq=aq..""
ap=a[19][ap]for b=#aq,1,-1 do
_=ap[am.byte(am.sub(aq,b,b))]h=h-ap[1]if _>0 then
d=a[23][_]q,i=d[1],d[2]w=h-d[4]+1
ae=u-d[5]for g=0,q-1 do
for f=0,i-1 do
m=d[7+f+g*i]if m~=0 then
e=a[20][m]p(e[1],e[2],e[3])C(w+g,ae+f,w+g,ae+f+1)end
end
end
end
end
end
function o(aW,bg,ao,k)k=k or{59,59,59}v.setColor(13,0,0)v.drawText(aW+1,bg+1,ao)v.setColor(k[1],k[2],k[3])v.drawText(aW,bg,ao)end
function onTick()aQ=0
for g=1,3 do
if ab(9)and(not ah)or not a[21]then
aH=property.getText(as)b=1
s=""
_=am.sub(aH,b,b)while _~=""do
K=am.byte(_)if K>64 then
s=(s..K-65)+0
if G==1 then
aS=s
a[s]=a[s]or{}elseif G==2 then
bu=s
ac=0
elseif G==3 then
aP=s
else
if ac==0 then
ac=bu
aP=aP-1
aL={}a[aS][#a[aS]+1]=aL
end
aL[#aL+1]=s
ac=ac-1
G=S(ac,aP)>0 and G-1 or 0
end
G=G+1
s=""
else
s=s.._
end
b=b+1
_=am.sub(aH,b,b)end
as=as+1
ah=aH==""
end
end
if ah then
if j(10)>0 then
aa=Z
an=j(10)end
aD=aD+1
a[12][1][aD%#a[12][1]+1]=ay(j(11))X=a[12][1][17]if t>0 and not aa then
R={}Y[#Y+1]=R
W=6
_=j(W)while _~=0 do
y={}R[#R+1]=y
for b=0,8 do
y[b+1]=j(W+b)end
W=W+9
_=j(W)end
end
if ab(1)then
if aa then
for b=1,10 do
a[b]=a[b+10*an]end
an=an+1
for b=#a[1],1,-1 do
_=a[1][b]_=_[5]&(aI-3000)>0 or ai(a[1],b)end
for b=1,#a[8]do
a[8][b][8]={}end
for b=1,#a[6]do
_=aX(b)_[8][#_[8]+1]=b
end
Y={}end
Q=Q-1
if t>0 then
if U~=j(1)and j(1)>0 then
x={}_={}_[1]=a[29][j(1)]_[2]=a[16][_[1][3]]bB=_[2][1]_[3]=0
x[1]=_
end
U=j(1)aK=ab(3)if aK and U==5 then
if al<=0 then
al=7
else
aK=false
end
end
al=al-1
if aK then
_=x[1]_[2]=a[16][_[1][4]]_[3]=-1
B=a[19][6][U]if B>0 then
A[#A+1]={B,1}end
end
end
for b=#x,1,-1 do
_=x[b]if _[3]==0 then
if _[2][3]==4 then
if U==5 and al<5 then
bf=1
else
bf=0
end
x[#x+1]={_[1],a[16][_[1][5]+bf],2}end
end
_[3]=_[3]+1
if _[3]>=_[2][2]then
if _[2][4]>2 then
_[2]=a[16][_[2][4]]_[3]=0
else
ai(x,b)end
end
end
if aa then
T=50
Q=ag*8
aJ=an-4+"map name text start"
end
aa=aG
P=S(P-4,0)P=bi(P+(t-j(3)+aF-j(4))*3,0,l)T=S(T-1.5,0)t=j(3)aF,bk,b_,bb=j(4)if j(2)>0 and t>0 then
_=a[2][j(2)]if _ then
if _[4]==3008 then
be=_[5]>0 and O(_[5])bb=Z
elseif _[4]>3004 then
aN=S(aN+3*(_[4]-3006),1)b_=Z
elseif _[4]>3000 then
aI=_[4]bk=Z
elseif _[4]>=14 and _[4]<=16 then
if a[12][1][_[4]]==0 then
Q=ag*4
aJ=_[4]-14+"door text start"
end
end
end
end
for b=1,#Y do
R=Y[b]for g=1,#R do
y=R[g]_=y[1]if _>(2^15)then
_=a[8][_-(2^15)]for f=1,6 do
_[f]=y[f+1]end
elseif _<0 then
K=a[1][-_]if K then
y=K[6]if a[16][y][5]>0 then
T=S(T,15)Q=ag*4
aJ=a[16][y][5]A[#A+1]={"item pickup sound index",1}if K[4]then
bq=a[15][K[4]]if bq[29]=="computer area map index" then
for f=1,#a[2]do
a[2][f][8]=a[2][f][8]or 1
end
end
end
end
end
while-_>#a[1]do
a[1][#a[1]+1]=aG
end
ai(a[1],-_)else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for f=1,8 do
_[a[19][1][f]]=y[f+1]end
_[15]=0
end
end
end
Y={}_=a[1][1]D[1]={_[1],_[2]}D[3]=_[3]bn=aZ(#a[7],D[1])aB=aX(bn)D[2]=aB[1]+41
bm=au(aB[5]/l,1)^1.3
for b=1,#aB[8]do
_=a[6][aB[8][b]]for g=_[2],_[1]+_[2]-1 do
bs=a[5][g]br=a[2][bs[4]]br[8]=2
end
end
bc=ab(2)if j(12)>0 and t>0 then
A[#A+1]={j(12),1}end
V=V-1
aA=aA-1
if not aU[U]then
aU[U]=1
aA=70
end
aM=(4-au(t//20,4))*8
if t<=0 then
af=41
elseif aA>0 then
af=aM+6
elseif t<aR then
V=ag
af=aM+7
elseif V<=0 then
V=16
aO=aO%256+1
af=aM+a[13][1][aO]%3
end
aR=t
end
for b=#A,1,-1 do
B=A[b]_=a[18][B[1]]if ab(1)then
z=_[B[2]]B[2]=B[2]+4
else
z=_[B[2]+2]end
if z and z>0 then
ad[#ad+1]={z,1}end
if B[2]>=#_ then
ai(A,b)end
end
for b=1,32 do
bh(b,0)end
for b=#ad,1,-1 do
z=ad[b]bh(b+3,bi(ay((z[1]+12)//2),1,60))z[2]=z[2]+1
if z[2]>bx then
ai(ad,b)end
end
end
end
function onDraw()v=screen
local aj,p,C,ao=v.drawRectF,v.setColor,v.drawLine,v.drawText
aQ=aQ+1
if a[21]and not ah then
d=a[25][1]q,i=d[1],d[2]h,u=E-q/2,80-i/2
for f=0,q-1 do
w=h+f
for N=0,i-1 do
m=d[5+N+f*i]if m~=0 then
e=a[20][m]p(e[1],e[2],e[3])C(w,u+N,w,u+N+1)end
end
end
end
if not bc then
for b=1,#x do
d=x[b][2][1]aC=d>0 and bm or 1
d=a[17][abs(d)][1]d=a[23][d]q,i,aE=d[1],d[2],d[3]*.7
aT=aE*aY
h,u=E-(d[4]+160)*.7,F-(d[5]+148)*.7*aY
for f=0,q-1 do
w=h+f*aE
for N=0,i-1 do
m=d[7+N+f*i]if m~=0 then
e=a[20][m]p(e[1]*aC,e[2]*aC,e[3]*aC)aj(w,u+N*aT,aE,aT)end
end
end
end
end
if ah then
if bc then
p(0,0,0)aj(0,0,av,F)for b=1,#a[2]do
_=a[2][b]if _[8]then
J=at(ba(bd(sub(a[4][_[1]],D[1]),bl)),{E,aw})I=at(ba(bd(sub(a[4][_[2]],D[1]),bl)),{E,aw})if _[8]==1 then
p(0,50,0)elseif _[3]&4>0 then
p(50,50,50)else
p(l,l,l)end
C(J[1],J[2],I[1],I[2])end
end
p(l,l,l)_=a[19][10]for b=1,#_,4 do
ax=sin(D[3]-90)az=cos(D[3]-90)J={_[b]*az+_[b+1]*ax,_[b+1]*az-_[b]*ax}I={_[b+2]*az+_[b+3]*ax,_[b+3]*az-_[b+2]*ax}J=at(J,{E,aw})I=at(I,{E,aw})C(J[1],J[2],I[1],I[2])end
end
p(l,P>0 and 0 or l,0,P+T)aj(0,0,av,F)p(30,30,30)aj(0,F,av,32)p(5,5,5)aj(E-16,F,32,32)d=a[23]["face textures start"+(af)*"number of sprite mipmap levels"]q,i=d[1],d[2]h=E-q/2
for b=0,q-1 do
for g=0,i-1 do
m=d[7+g+b*i]if m~=0 then
e=a[20][m]p(e[1],e[2],e[3])C(h+b,F+1+g,h+b,F+2+g)end
end
end
for b=1,3 do
if a[12][1][13+b]>0 then
h,u=221,125+b*8
d=a[23]["key textures start"+a[19][5][b]*"number of sprite mipmap levels"]q,i=d[1],d[2]for g=0,q-1 do
for f=0,i-1 do
m=d[7+f+g*i]if m~=0 then
e=a[20][m]p(e[1],e[2],e[3])C(h+g,u+f,h+g,u+f+1)end
end
end
end
end
if Q>0 then
bj=a[13][aJ]h=0
u=0
for bw=1,#bj do
_=bj[bw]if _>0 then
d=a[23][_]q,i=d[1],d[2]w=h-d[4]ae=u-d[5]for b=0,q-1 do
for g=0,i-1 do
m=d[7+g+b*i]if m~=0 then
e=a[20][m]p(e[1],e[2],e[3])C(w+b,ae+g,w+b,ae+g+1)end
end
end
h=h+q
else
h=h+4
end
end
end
ar(124,L,O(t).."%",16)ar(218,L,O(aF).."%",16)o(124-28-15,ak,"HEALTH")o(218-28-15,ak,"ARMOUR")k=(X<ag and X>0)and{l,0,0}o(2,L,"TPS:",k)o(26,L,X>0 and X or "N/A",k)k=bk and{l,l,44}o(2,138,"DIF:",k)bv={"EASY","MED","HARD"}o(26,138,bv[O(au(aI-3000,3))],k)k=b_ and{l,l,44}o(2,145,"LOD:",k)o(26,145,O(aN),k)k=bb and{l,l,44}o(2,ak,"TEX:",k)bt={"FULL","HALF"}o(26,ak,be and bt[be]or "OFF",k)o(232,L,"BULL")o(232,138,"SHEL")o(232,145,"ROKT")o(232,ak,"CELL")for b=1,4 do
c=124+b*7
ar(265,c,ay(a[12][1][b]),15)ar(285,c,ay(a[19][17][b]),15)o(268,c,"/")end
else
ao(1,L,"ROM:")ao(26,L,as)end
end
