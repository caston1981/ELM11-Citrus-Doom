
af=152
K=131
h=255
P=180
v=math
Q=v.max
R=v.min
abs=v.abs
Y=v.floor
sqrt=v.sqrt
m=input.getNumber
ap=input.getBool
bt=output.setNumber
pi=v.pi
aL=false
U=true
ad=table.remove
al=string
function aJ(c,o)return{(c[1]+o[1]),(c[2]+o[2])}end
function bx(c,o)return c[1]*o[2]-c[2]*o[1]end
function sub(c,o)return{(c[1]-o[1]),(c[2]-o[2])}end
function bo(c,o)return{c[1]*o,c[2]*o}end
function bP(c)return((c+P)%360)-P end
function sin(c)return v.sin(c/P*pi)end
function cos(c)return v.cos(c/P*pi)end
function tan(c)return v.tan(c/P*pi)end
function bN(c)return v.atan(c)*P/pi end
function bL(c)return v.atan(c[2],c[1])*P/pi end
function bq(c,o,bE)return R(Q(o,c),bE)end
function aC(c)return Y(c+.5)end
function bB(c,o)return sqrt(((c[1]-o[1])^2)+((c[2]-o[2])^2))end
function bu(c)return{c[1],-c[2]}end
function bO(c)c=c-1
c=c|(c>>1)c=c|(c>>2)c=c|(c>>4)return c+1
end
a={}aw=1
z=3
ai=aL
C={{0,0},0,0}ak=288
H=ak//2
G=128
aK=G//2
br=1.2
bg={1,1}aV=1
ag=1
aT=500
s=100
bv=100
aO=0
I=0
aA=0
aa=0
W=0
aX=3002
bj=32768
y={}bh=.05
A={}an={}bC=2
S=35
ax=0
ac=0
aQ=0
aU=0
aI=0
aG=0
O=1
aS=0
ao=0
ah=0
at=U
aZ=0
aF=0
function bi(b,c)if b<bj then
N=a[7][b]return bi(N[0<bx({N[3],N[4]},sub(c,N))and 8 or 7],c)else
return b-bj
end
end
function bk(c)N=a[5][a[6][c][2]]return a[8][a[3][a[2][N[4]][N[5]+6]][6]]end
function az(j,r,av,aD)local F,k=w.drawLine,w.setColor
av=av..""
aD=a[19][aD]for b=#av,1,-1 do
_=aD[al.byte(al.sub(av,b,b))]j=j-aD[1]if _>0 then
d=a[23][_]p,g=d[1],d[2]x=j-d[4]+1
ae=r-d[5]for i=0,p-1 do
for f=0,g-1 do
l=d[7+f+i*g]if l~=0 then
e=a[20][l]k(e[1],e[2],e[3])F(x+i,ae+f,x+i,ae+f+1)end
end
end
end
end
end
function q(ab,aq,ar,n)n=n or{59,59,59}w.setColor(13,0,0)w.drawText(ab+1,aq+1,ar)w.setColor(n[1],n[2],n[3])w.drawText(ab,aq,ar)end
function onTick()aS=0
for i=1,3 do
if ap(9)and(not ai)or not a[21]then
aN=property.getText(aw)b=1
u=""
_=al.sub(aN,b,b)while _~=""do
M=al.byte(_)if M>64 then
u=(u..M-65)+0
if O==1 then
bs=u
a[u]=a[u]or{}elseif O==2 then
bA=u
am=0
elseif O==3 then
aM=u
else
if am==0 then
am=bA
aM=aM-1
aW={}a[bs][#a[bs]+1]=aW
end
aW[#aW+1]=u
am=am-1
O=Q(am,aM)>0 and O-1 or 0
end
O=O+1
u=""
else
u=u.._
end
b=b+1
_=al.sub(aN,b,b)end
aw=aw+1
ai=aN==""
end
end
if ai then
if m(10)>0 then
at=U
z=m(10)end
aQ=aQ+1
a[12][1][aQ%#a[12][1]+1]=aC(m(11))ao=a[12][1][17]if s<=0 then
if(z-3)%9==0 and z>5 and au[6]==5 then
if not aB then
I=S*3600
aE=((z-5)//9)+"episode end text start"
end
aB=U
aU=aU+1
end
end
if s>0 and not at then
X={}as[#as+1]=X
aj=6
_=m(aj)while _~=0 do
D={}X[#X+1]=D
for b=0,8 do
D[b+1]=m(aj+b)end
aj=aj+9
_=m(aj)end
end
if ap(1)then
ax=ax+1
if at then
for b=1,10 do
a[b]=a[b+10*z]end
z=z+1
for b=#a[1],1,-1 do
_=a[1][b]_=_[5]&(aX-3000)>0 or ad(a[1],b)end
for b=1,#a[8]do
a[8][b][8]={}end
for b=1,#a[6]do
_=bk(b)_[8][#_[8]+1]=b
end
as={}end
I=I-1
if s>0 then
if T~=m(1)and m(1)>0 then
y={}_={}_[1]=a[29][m(1)]_[2]=a[16][_[1][3]]bM=_[2][1]_[3]=0
y[1]=_
end
T=m(1)aR=ap(3)if aR and T==5 then
if ah<=0 then
ah=7
else
aR=false
end
end
ah=ah-1
if aR then
_=y[1]_[2]=a[16][_[1][4]]_[3]=-1
E=a[19][6][T]if E>0 then
A[#A+1]={E,1}end
end
end
for b=#y,1,-1 do
_=y[b]if _[3]==0 then
if _[2][3]==4 then
if T==5 and ah<5 then
be=1
else
be=0
end
y[#y+1]={_[1],a[16][_[1][5]+be],2}end
end
_[3]=_[3]+1
if _[3]>=_[2][2]then
if _[2][4]>2 then
_[2]=a[16][_[2][4]]_[3]=0
else
ad(y,b)end
end
end
if at then
aa=50
I=S*8
aE=z-4+"map name text start"
end
at=aL
W=Q(W-4,0)W=bq(W+(s-m(3)+aO-m(4))*3,0,h)aa=Q(aa-1.5,0)aA=(a[12][1][18]>140 or a[12][1][18]>0 and ax%20<10)and 15 or 0
s=m(3)aO,bd,bf,bc=m(4)if m(2)>0 and s>0 then
_=a[2][m(2)]if _ then
if _[4]==3008 then
bn=_[5]>0 and Y(_[5])bc=U
elseif _[4]>3004 then
aT=Q(aT+3*(_[4]-3006),1)bf=U
elseif _[4]>3000 then
aX=_[4]bd=U
elseif _[4]>=14 and _[4]<=16 then
if a[12][1][_[4]]==0 then
I=S*4
aE=_[4]-14+"door text start"
end
end
end
end
aF=aF-1
if aF<1 then
aZ=0
end
for b=1,#as do
X=as[b]for i=1,#X do
D=X[i]_=D[1]if _>(2^15)then
_=a[8][_-(2^15)]for f=1,6 do
_[f]=D[f+1]end
elseif _<0 then
M=a[1][-_]if M then
D=M[6]if a[16][D][5]>0 then
aa=Q(aa,15)I=S*4
aE=a[16][D][5]A[#A+1]={"item pickup sound index",1}if M[4]then
bp=a[15][M[4]]if bp[29]=="light amp index" then
aZ=1
aF=4200
end
if bp[29]=="computer area map index" then
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
_[a[19][1][f]]=D[f+1]end
_[15]=0
end
end
end
as={}_=a[1][1]C[3]=_[3]bl=((ax%64)/64)*360
aG=aG*.8+R(bB(_,C[1])^2/4,16)*.2
bD=cos(bl)*aG
by=-abs(sin(bl)*aG)-(s>0 and 0 or 300)C[1]={_[1],_[2]}bK=bi(#a[7],C[1])au=bk(bK)C[2]=au[1]+41
bF=R(au[5]/h+aZ,1)^1.3
for b=1,#au[8]do
_=a[6][au[8][b]]for i=_[2],_[1]+_[2]-1 do
bI=a[5][i]bz=a[2][bI[4]]bz[8]=2
end
end
bb=ap(2)if m(12)>0 and s>0 then
A[#A+1]={m(12),1}end
ac=ac-1
aI=aI-1
if not bg[T]then
bg[T]=1
aI=70
end
aY=(4-R(s//20,4))*8
if s<=0 then
ag=41
elseif aI>0 then
ag=aY+6
elseif s<bv then
ac=S
ag=aY+7
elseif ac<=0 then
ac=16
aV=aV%256+1
ag=aY+a[13][1][aV]%3
end
bv=s
end
for b=#A,1,-1 do
E=A[b]_=a[18][E[1]]if ap(1)then
B=_[E[2]]E[2]=E[2]+4
else
B=_[E[2]+2]end
if B and B>0 then
an[#an+1]={B,1}end
if E[2]>=#_ then
ad(A,b)end
end
for b=1,32 do
bt(b,0)end
for b=#an,1,-1 do
B=an[b]bt(b+3,bq(aC((B[1]+12)//2),1,60))B[2]=B[2]+1
if B[2]>bC then
ad(an,b)end
end
end
end
function onDraw()w=screen
local V,k,F,ar=w.drawRectF,w.setColor,w.drawLine,w.drawText
aS=aS+1
if a[21]and not ai then
d=a[25][1]p,g=d[1],d[2]j,r=H-p/2,80-g/2
for f=0,p-1 do
x=j+f
for Z=0,g-1 do
l=d[5+Z+f*g]if l~=0 then
e=a[20][l]k(e[1],e[2],e[3])F(x,r+Z,x,r+Z+1)end
end
end
end
if not bb then
for b=1,#y do
d=y[b][2][1]aP=d>0 and bF or 1
d=a[17][abs(d)][1]d=a[23][d]p,g,t=d[1],d[2],d[3]*.7
bm=t*br
j,r=H-(d[4]+160+bD)*.7,G-(d[5]+148+by)*.7*br
for f=0,p-1 do
x=j+f*t
for Z=0,g-1 do
l=d[7+Z+f*g]if l~=0 then
e=a[20][l]k(e[1]*aP,e[2]*aP,e[3]*aP)V(x,r+Z*bm,t,bm)end
end
end
end
end
if ai then
if not aB then
if bb then
k(0,0,0)V(0,0,ak,G)for b=1,#a[2]do
_=a[2][b]if _[8]then
L=aJ(bu(bo(sub(a[4][_[1]],C[1]),bh)),{H,aK})J=aJ(bu(bo(sub(a[4][_[2]],C[1]),bh)),{H,aK})if _[8]==1 then
k(0,50,0)elseif _[3]&4>0 then
if _[4]==14 then
k(0,0,h)elseif _[4]==15 then
k(h,0,0)elseif _[4]==16 then
k(h,h,0)else
k(50,50,50)end
else
k(h,h,h)end
F(L[1],L[2],J[1],J[2])end
end
k(h,h,h)_=a[19][10]for b=1,#_,4 do
aH=sin(C[3]-90)ay=cos(C[3]-90)L={_[b]*ay+_[b+1]*aH,_[b+1]*ay-_[b]*aH}J={_[b+2]*ay+_[b+3]*aH,_[b+3]*ay-_[b+2]*aH}L=aJ(L,{H,aK})J=aJ(J,{H,aK})F(L[1],L[2],J[1],J[2])end
end
k((aA>0 and 0 or h),((W>0 and aA==0)and 0 or h),0,W+aa+aA)V(0,0,ak,G)k(30,30,30)V(0,G,ak,32)k(5,5,5)V(H-16,G,32,32)d=a[23]["face textures start"+(ag)*"number of sprite mipmap levels"]p,g=d[1],d[2]j=H-p/2
for b=0,p-1 do
for i=0,g-1 do
l=d[7+i+b*g]if l~=0 then
e=a[20][l]k(e[1],e[2],e[3])F(j+b,G+1+i,j+b,G+2+i)end
end
end
for b=1,3 do
if a[12][1][13+b]>0 then
j,r=221,125+b*8
d=a[23]["key textures start"+a[19][5][b]*"number of sprite mipmap levels"]p,g=d[1],d[2]for i=0,p-1 do
for f=0,g-1 do
l=d[7+f+i*g]if l~=0 then
e=a[20][l]k(e[1],e[2],e[3])F(j+i,r+f,j+i,r+f+1)end
end
end
end
end
else
d=a[22][a[19][3][((z-5)//9)+1]]t=d[3]p,g=d[1],d[2]for ab=0,ak+t,t do
for aq=0,32*5+t,t do
l=d[6+((ab//t)%p)*g+((aq//t)%g)]e=a[20][l]k(e[1],e[2],e[3])V(ab,aq,t,t)end
end
end
if I>0 then
ba=a[13][aE]if aB then
b_=3
r=3
bw=R(#ba,aU//3)else
b_=0
r=0
bw=#ba
end
j=b_
for bG=1,bw do
_=ba[bG]if _>0 then
d=a[23][_]p,g=d[1],d[2]x=j-d[4]ae=r-d[5]for b=0,p-1 do
for i=0,g-1 do
l=d[7+i+b*g]if l~=0 then
e=a[20][l]k(e[1],e[2],e[3])F(x+b,ae+i,x+b,ae+i+1)end
end
end
j=j+p
elseif _==0 then
j=j+4
elseif _==-1 then
j=b_
r=r+9
end
end
end
if not aB then
az(124,K,Y(s).."%",16)az(218,K,Y(aO).."%",16)q(124-28-15,af,"HEALTH")q(218-28-15,af,"ARMOUR")n=(ao<S and ao>0)and{h,0,0}q(2,K,"TPS:",n)q(26,K,ao>0 and ao or "N/A",n)n=bd and{h,h,44}q(2,138,"DIF:",n)bJ={"EASY","MED","HARD"}q(26,138,bJ[Y(R(aX-3000,3))],n)n=bf and{h,h,44}q(2,145,"LOD:",n)q(26,145,Y(aT),n)n=bc and{h,h,44}q(2,af,"TEX:",n)bH={"FULL","HALF"}q(26,af,bn and bH[bn]or "OFF",n)q(232,K,"BULL")q(232,138,"SHEL")q(232,145,"ROKT")q(232,af,"CELL")for b=1,4 do
c=124+b*7
az(265,c,aC(a[12][1][b]),15)az(285,c,aC(a[19][17][b]),15)q(268,c,"/")end
end
else
ar(1,K,"ROM:")ar(26,K,aw)end
end
