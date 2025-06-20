
ab=152
H=131
g=255
I=180
r=math
T=r.max
ar=r.min
abs=r.abs
O=r.floor
sqrt=r.sqrt
l=input.getNumber
ak=input.getBool
bj=output.setNumber
pi=r.pi
aP=false
ae=true
an=table.remove
aa=string
function aA(c,o)return{(c[1]+o[1]),(c[2]+o[2])}end
function bv(c,o)return c[1]*o[2]-c[2]*o[1]end
function sub(c,o)return{(c[1]-o[1]),(c[2]-o[2])}end
function bk(c,o)return{c[1]*o,c[2]*o}end
function bB(c)return((c+I)%360)-I end
function sin(c)return r.sin(c/I*pi)end
function cos(c)return r.cos(c/I*pi)end
function tan(c)return r.tan(c/I*pi)end
function bF(c)return r.atan(c)*I/pi end
function bA(c)return r.atan(c[2],c[1])*I/pi end
function bc(c,o,bq)return ar(T(o,c),bq)end
function aB(c)return O(c+.5)end
function bE(c,o)return sqrt(((c[1]-o[1])^2)+((c[2]-o[2])^2))end
function bl(c)return{c[1],-c[2]}end
function bC(c)c=c-1
c=c|(c>>1)c=c|(c>>2)c=c|(c>>4)return c+1
end
a={}as=1
aj=3
ag=aP
E={{0,0},0,0}ay=288
C=ay//2
F=128
aC=F//2
aZ=1.2
aW={1,1}aF=1
ao=1
aR=500
u=100
bf=100
aK=0
P=0
N=0
R=0
aJ=3002
aT=32768
x={}bg=.05
z={}af={}bx=2
V=35
X=0
aQ=0
av=0
L=1
aE=0
W=0
am=0
Y=ae
aN=0
at=0
function bo(b,c)if b<aT then
K=a[7][b]return bo(K[0<bv({K[3],K[4]},sub(c,K))and 8 or 7],c)else
return b-aT
end
end
function bm(c)K=a[5][a[6][c][2]]return a[8][a[3][a[2][K[4]][K[5]+6]][6]]end
function ax(i,s,au,aq)local D,j=v.drawLine,v.setColor
au=au..""
aq=a[19][aq]for b=#au,1,-1 do
_=aq[aa.byte(aa.sub(au,b,b))]i=i-aq[1]if _>0 then
d=a[23][_]q,k=d[1],d[2]w=i-d[4]+1
ad=s-d[5]for h=0,q-1 do
for f=0,k-1 do
m=d[7+f+h*k]if m~=0 then
e=a[20][m]j(e[1],e[2],e[3])D(w+h,ad+f,w+h,ad+f+1)end
end
end
end
end
end
function p(be,aX,ah,n)n=n or{59,59,59}v.setColor(13,0,0)v.drawText(be+1,aX+1,ah)v.setColor(n[1],n[2],n[3])v.drawText(be,aX,ah)end
function onTick()aE=0
for h=1,3 do
if ak(9)and(not ag)or not a[21]then
aD=property.getText(as)b=1
t=""
_=aa.sub(aD,b,b)while _~=""do
M=aa.byte(_)if M>64 then
t=(t..M-65)+0
if L==1 then
aU=t
a[t]=a[t]or{}elseif L==2 then
by=t
ac=0
elseif L==3 then
aO=t
else
if ac==0 then
ac=by
aO=aO-1
aL={}a[aU][#a[aU]+1]=aL
end
aL[#aL+1]=t
ac=ac-1
L=T(ac,aO)>0 and L-1 or 0
end
L=L+1
t=""
else
t=t.._
end
b=b+1
_=aa.sub(aD,b,b)end
as=as+1
ag=aD==""
end
end
if ag then
if l(10)>0 then
Y=ae
aj=l(10)end
aQ=aQ+1
a[12][1][aQ%#a[12][1]+1]=aB(l(11))W=a[12][1][17]if u>0 and not Y then
U={}ai[#ai+1]=U
Z=6
_=l(Z)while _~=0 do
A={}U[#U+1]=A
for b=0,8 do
A[b+1]=l(Z+b)end
Z=Z+9
_=l(Z)end
end
if ak(1)then
if Y then
for b=1,10 do
a[b]=a[b+10*aj]end
aj=aj+1
for b=#a[1],1,-1 do
_=a[1][b]_=_[5]&(aJ-3000)>0 or an(a[1],b)end
for b=1,#a[8]do
a[8][b][8]={}end
for b=1,#a[6]do
_=bm(b)_[8][#_[8]+1]=b
end
ai={}end
P=P-1
if u>0 then
if S~=l(1)and l(1)>0 then
x={}_={}_[1]=a[29][l(1)]_[2]=a[16][_[1][3]]bD=_[2][1]_[3]=0
x[1]=_
end
S=l(1)aM=ak(3)if aM and S==5 then
if am<=0 then
am=7
else
aM=false
end
end
am=am-1
if aM then
_=x[1]_[2]=a[16][_[1][4]]_[3]=-1
y=a[19][6][S]if y>0 then
z[#z+1]={y,1}end
end
end
for b=#x,1,-1 do
_=x[b]if _[3]==0 then
if _[2][3]==4 then
if S==5 and am<5 then
bh=1
else
bh=0
end
x[#x+1]={_[1],a[16][_[1][5]+bh],2}end
end
_[3]=_[3]+1
if _[3]>=_[2][2]then
if _[2][4]>2 then
_[2]=a[16][_[2][4]]_[3]=0
else
an(x,b)end
end
end
if Y then
N=50
P=V*8
aS=aj-4+"map name text start"
end
Y=aP
R=T(R-4,0)R=bc(R+(u-l(3)+aK-l(4))*3,0,g)N=T(N-1.5,0)u=l(3)aK,bd,bi,ba=l(4)if l(2)>0 and u>0 then
_=a[2][l(2)]if _ then
if _[4]==3008 then
b_=_[5]>0 and O(_[5])ba=ae
elseif _[4]>3004 then
aR=T(aR+3*(_[4]-3006),1)bi=ae
elseif _[4]>3000 then
aJ=_[4]bd=ae
elseif _[4]>=14 and _[4]<=16 then
if a[12][1][_[4]]==0 then
P=V*4
aS=_[4]-14+"door text start"
end
end
end
end
at=at-1
if at<1 then
aN=0
end
for b=1,#ai do
U=ai[b]for h=1,#U do
A=U[h]_=A[1]if _>(2^15)then
_=a[8][_-(2^15)]for f=1,6 do
_[f]=A[f+1]end
elseif _<0 then
M=a[1][-_]if M then
A=M[6]if a[16][A][5]>0 then
N=T(N,15)P=V*4
aS=a[16][A][5]z[#z+1]={"item pickup sound index",1}if M[4]then
aY=a[15][M[4]]if aY[29]=="light amp index" then
aN=1
at=4200
end
if aY[29]=="computer area map index" then
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
an(a[1],-_)else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for f=1,8 do
_[a[19][1][f]]=A[f+1]end
_[15]=0
end
end
end
ai={}_=a[1][1]E[1]={_[1],_[2]}E[3]=_[3]bt=bo(#a[7],E[1])ap=bm(bt)E[2]=ap[1]+41
bs=ar(ap[5]/g+aN,1)^1.3
for b=1,#ap[8]do
_=a[6][ap[8][b]]for h=_[2],_[1]+_[2]-1 do
bw=a[5][h]bz=a[2][bw[4]]bz[8]=2
end
end
aV=ak(2)if l(12)>0 and u>0 then
z[#z+1]={l(12),1}end
X=X-1
av=av-1
if not aW[S]then
aW[S]=1
av=70
end
aG=(4-ar(u//20,4))*8
if u<=0 then
ao=41
elseif av>0 then
ao=aG+6
elseif u<bf then
X=V
ao=aG+7
elseif X<=0 then
X=16
aF=aF%256+1
ao=aG+a[13][1][aF]%3
end
bf=u
end
for b=#z,1,-1 do
y=z[b]_=a[18][y[1]]if ak(1)then
B=_[y[2]]y[2]=y[2]+4
else
B=_[y[2]+2]end
if B and B>0 then
af[#af+1]={B,1}end
if y[2]>=#_ then
an(z,b)end
end
for b=1,32 do
bj(b,0)end
for b=#af,1,-1 do
B=af[b]bj(b+3,bc(aB((B[1]+12)//2),1,60))B[2]=B[2]+1
if B[2]>bx then
an(af,b)end
end
end
end
function onDraw()v=screen
local al,j,D,ah=v.drawRectF,v.setColor,v.drawLine,v.drawText
aE=aE+1
if a[21]and not ag then
d=a[25][1]q,k=d[1],d[2]i,s=C-q/2,80-k/2
for f=0,q-1 do
w=i+f
for Q=0,k-1 do
m=d[5+Q+f*k]if m~=0 then
e=a[20][m]j(e[1],e[2],e[3])D(w,s+Q,w,s+Q+1)end
end
end
end
if not aV then
for b=1,#x do
d=x[b][2][1]aI=d>0 and bs or 1
d=a[17][abs(d)][1]d=a[23][d]q,k,aH=d[1],d[2],d[3]*.7
bb=aH*aZ
i,s=C-(d[4]+160)*.7,F-(d[5]+148)*.7*aZ
for f=0,q-1 do
w=i+f*aH
for Q=0,k-1 do
m=d[7+Q+f*k]if m~=0 then
e=a[20][m]j(e[1]*aI,e[2]*aI,e[3]*aI)al(w,s+Q*bb,aH,bb)end
end
end
end
end
if ag then
if aV then
j(0,0,0)al(0,0,ay,F)for b=1,#a[2]do
_=a[2][b]if _[8]then
G=aA(bl(bk(sub(a[4][_[1]],E[1]),bg)),{C,aC})J=aA(bl(bk(sub(a[4][_[2]],E[1]),bg)),{C,aC})if _[8]==1 then
j(0,50,0)elseif _[3]&4>0 then
if _[4]==14 then
j(0,0,g)elseif _[4]==15 then
j(g,0,0)elseif _[4]==16 then
j(g,g,0)else
j(50,50,50)end
else
j(g,g,g)end
D(G[1],G[2],J[1],J[2])end
end
j(g,g,g)_=a[19][10]for b=1,#_,4 do
aw=sin(E[3]-90)az=cos(E[3]-90)G={_[b]*az+_[b+1]*aw,_[b+1]*az-_[b]*aw}J={_[b+2]*az+_[b+3]*aw,_[b+3]*az-_[b+2]*aw}G=aA(G,{C,aC})J=aA(J,{C,aC})D(G[1],G[2],J[1],J[2])end
end
j(g,R>0 and 0 or g,0,R+N)al(0,0,ay,F)j(30,30,30)al(0,F,ay,32)j(5,5,5)al(C-16,F,32,32)d=a[23]["face textures start"+(ao)*"number of sprite mipmap levels"]q,k=d[1],d[2]i=C-q/2
for b=0,q-1 do
for h=0,k-1 do
m=d[7+h+b*k]if m~=0 then
e=a[20][m]j(e[1],e[2],e[3])D(i+b,F+1+h,i+b,F+2+h)end
end
end
for b=1,3 do
if a[12][1][13+b]>0 then
i,s=221,125+b*8
d=a[23]["key textures start"+a[19][5][b]*"number of sprite mipmap levels"]q,k=d[1],d[2]for h=0,q-1 do
for f=0,k-1 do
m=d[7+f+h*k]if m~=0 then
e=a[20][m]j(e[1],e[2],e[3])D(i+h,s+f,i+h,s+f+1)end
end
end
end
end
if P>0 then
bn=a[13][aS]i=0
s=0
for bu=1,#bn do
_=bn[bu]if _>0 then
d=a[23][_]q,k=d[1],d[2]w=i-d[4]ad=s-d[5]for b=0,q-1 do
for h=0,k-1 do
m=d[7+h+b*k]if m~=0 then
e=a[20][m]j(e[1],e[2],e[3])D(w+b,ad+h,w+b,ad+h+1)end
end
end
i=i+q
else
i=i+4
end
end
end
ax(124,H,O(u).."%",16)ax(218,H,O(aK).."%",16)p(124-28-15,ab,"HEALTH")p(218-28-15,ab,"ARMOUR")n=(W<V and W>0)and{g,0,0}p(2,H,"TPS:",n)p(26,H,W>0 and W or "N/A",n)n=bd and{g,g,44}p(2,138,"DIF:",n)bp={"EASY","MED","HARD"}p(26,138,bp[O(ar(aJ-3000,3))],n)n=bi and{g,g,44}p(2,145,"LOD:",n)p(26,145,O(aR),n)n=ba and{g,g,44}p(2,ab,"TEX:",n)br={"FULL","HALF"}p(26,ab,b_ and br[b_]or "OFF",n)p(232,H,"BULL")p(232,138,"SHEL")p(232,145,"ROKT")p(232,ab,"CELL")for b=1,4 do
c=124+b*7
ax(265,c,aB(a[12][1][b]),15)ax(285,c,aB(a[19][17][b]),15)p(268,c,"/")end
else
ah(1,H,"ROM:")ah(26,H,as)end
end
