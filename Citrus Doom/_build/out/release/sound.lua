
at=152
N=131
g=255
O=180
v=math
aa=v.max
W=v.min
abs=v.abs
X=v.floor
sqrt=v.sqrt
m=input.getNumber
ac=input.getBool
bu=output.setNumber
pi=v.pi
aU=false
T=true
ag=table.remove
au=string
function aB(c,p)return{(c[1]+p[1]),(c[2]+p[2])}end
function bA(c,p)return c[1]*p[2]-c[2]*p[1]end
function sub(c,p)return{(c[1]-p[1]),(c[2]-p[2])}end
function bn(c,p)return{c[1]*p,c[2]*p}end
function bL(c)return((c+O)%360)-O end
function sin(c)return v.sin(c/O*pi)end
function cos(c)return v.cos(c/O*pi)end
function tan(c)return v.tan(c/O*pi)end
function bO(c)return v.atan(c)*O/pi end
function bN(c)return v.atan(c[2],c[1])*O/pi end
function be(c,p,bG)return W(aa(p,c),bG)end
function av(c)return X(c+.5)end
function bE(c,p)return sqrt(((c[1]-p[1])^2)+((c[2]-p[2])^2))end
function bh(c)return{c[1],-c[2]}end
function bK(c)c=c-1
c=c|(c>>1)c=c|(c>>2)c=c|(c>>4)return c+1
end
a={}ax=1
B=3
an=aU
C={{0,0},0,0}ar=288
G=ar//2
F=128
aF=F//2
bq=1.2
bc={1,1}aK=1
as=1
aW=500
s=100
bo=100
aL=0
J=0
R=0
S=0
aT=3002
bd=32768
y={}bi=.05
A={}af={}bD=2
U=35
aP=0
aj=0
aQ=0
aN=0
aw=0
aE=0
P=1
aV=0
ak=0
am=0
ah=T
b_=0
aI=0
function bb(b,c)if b<bd then
M=a[7][b]return bb(M[0<bA({M[3],M[4]},sub(c,M))and 8 or 7],c)else
return b-bd
end
end
function br(c)M=a[5][a[6][c][2]]return a[8][a[3][a[2][M[4]][M[5]+6]][6]]end
function aC(j,r,az,aH)local H,l=x.drawLine,x.setColor
az=az..""
aH=a[19][aH]for b=#az,1,-1 do
_=aH[au.byte(au.sub(az,b,b))]j=j-aH[1]if _>0 then
d=a[23][_]o,h=d[1],d[2]w=j-d[4]+1
aq=r-d[5]for i=0,o-1 do
for f=0,h-1 do
k=d[7+f+i*h]if k~=0 then
e=a[20][k]l(e[1],e[2],e[3])H(w+i,aq+f,w+i,aq+f+1)end
end
end
end
end
end
function q(ab,ae,ad,n)n=n or{59,59,59}x.setColor(13,0,0)x.drawText(ab+1,ae+1,ad)x.setColor(n[1],n[2],n[3])x.drawText(ab,ae,ad)end
function onTick()aV=0
for i=1,3 do
if ac(9)and(not an)or not a[21]then
aX=property.getText(ax)b=1
u=""
_=au.sub(aX,b,b)while _~=""do
K=au.byte(_)if K>64 then
u=(u..K-65)+0
if P==1 then
bf=u
a[u]=a[u]or{}elseif P==2 then
bz=u
ap=0
elseif P==3 then
aY=u
else
if ap==0 then
ap=bz
aY=aY-1
aJ={}a[bf][#a[bf]+1]=aJ
end
aJ[#aJ+1]=u
ap=ap-1
P=aa(ap,aY)>0 and P-1 or 0
end
P=P+1
u=""
else
u=u.._
end
b=b+1
_=au.sub(aX,b,b)end
ax=ax+1
an=aX==""
end
end
if an then
if m(10)>0 then
ah=T
B=m(10)end
aQ=aQ+1
a[12][1][aQ%#a[12][1]+1]=av(m(11))ak=a[12][1][17]if s<=0 then
if(B-3)%9==0 and B>5 and al[6]==5 then
if not aA then
J=U*3600
aG=((B-5)//9)+"episode end text start"
end
aA=T
aN=aN+1
end
end
if s>0 and not ah then
Z={}ai[#ai+1]=Z
ao=6
_=m(ao)while _~=0 do
E={}Z[#Z+1]=E
for b=0,8 do
E[b+1]=m(ao+b)end
ao=ao+9
_=m(ao)end
end
if ac(1)then
aP=aP+1
if ah then
for b=1,10 do
a[b]=a[b+10*B]end
B=B+1
for b=#a[1],1,-1 do
_=a[1][b]_=_[5]&(aT-3000)>0 or ag(a[1],b)end
for b=1,#a[8]do
a[8][b][8]={}end
for b=1,#a[6]do
_=br(b)_[8][#_[8]+1]=b
end
ai={}end
J=J-1
if s>0 then
if V~=m(1)and m(1)>0 then
y={}_={}_[1]=a[29][m(1)]_[2]=a[16][_[1][3]]bM=_[2][1]_[3]=0
y[1]=_
end
V=m(1)aO=ac(3)if aO and V==5 then
if am<=0 then
am=7
else
aO=false
end
end
am=am-1
if aO then
_=y[1]_[2]=a[16][_[1][4]]_[3]=-1
z=a[19][6][V]if z>0 then
A[#A+1]={z,1}end
end
end
for b=#y,1,-1 do
_=y[b]if _[3]==0 then
if _[2][3]==4 then
if V==5 and am<5 then
ba=1
else
ba=0
end
y[#y+1]={_[1],a[16][_[1][5]+ba],2}end
end
_[3]=_[3]+1
if _[3]>=_[2][2]then
if _[2][4]>2 then
_[2]=a[16][_[2][4]]_[3]=0
else
ag(y,b)end
end
end
if ah then
R=50
J=U*8
aG=B-4+"map name text start"
end
ah=aU
S=aa(S-4,0)S=be(S+(s-m(3)+aL-m(4))*3,0,g)R=aa(R-1.5,0)s=m(3)aL,bm,bj,bl=m(4)if m(2)>0 and s>0 then
_=a[2][m(2)]if _ then
if _[4]==3008 then
bk=_[5]>0 and X(_[5])bl=T
elseif _[4]>3004 then
aW=aa(aW+3*(_[4]-3006),1)bj=T
elseif _[4]>3000 then
aT=_[4]bm=T
elseif _[4]>=14 and _[4]<=16 then
if a[12][1][_[4]]==0 then
J=U*4
aG=_[4]-14+"door text start"
end
end
end
end
aI=aI-1
if aI<1 then
b_=0
end
for b=1,#ai do
Z=ai[b]for i=1,#Z do
E=Z[i]_=E[1]if _>(2^15)then
_=a[8][_-(2^15)]for f=1,6 do
_[f]=E[f+1]end
elseif _<0 then
K=a[1][-_]if K then
E=K[6]if a[16][E][5]>0 then
R=aa(R,15)J=U*4
aG=a[16][E][5]A[#A+1]={"item pickup sound index",1}if K[4]then
bp=a[15][K[4]]if bp[29]=="light amp index" then
b_=1
aI=4200
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
a[1][#a[1]+1]=aU
end
ag(a[1],-_)else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for f=1,8 do
_[a[19][1][f]]=E[f+1]end
_[15]=0
end
end
end
ai={}_=a[1][1]C[3]=_[3]bg=((aP%64)/64)*360
aE=aE*.8+W(bE(_,C[1])^2/4,16)*.2
bH=cos(bg)*aE
bF=-abs(sin(bg)*aE)-(s>0 and 0 or 300)C[1]={_[1],_[2]}by=bb(#a[7],C[1])al=br(by)C[2]=al[1]+41
bw=W(al[5]/g+b_,1)^1.3
for b=1,#al[8]do
_=a[6][al[8][b]]for i=_[2],_[1]+_[2]-1 do
bJ=a[5][i]bx=a[2][bJ[4]]bx[8]=2
end
end
bv=ac(2)if m(12)>0 and s>0 then
A[#A+1]={m(12),1}end
aj=aj-1
aw=aw-1
if not bc[V]then
bc[V]=1
aw=70
end
aR=(4-W(s//20,4))*8
if s<=0 then
as=41
elseif aw>0 then
as=aR+6
elseif s<bo then
aj=U
as=aR+7
elseif aj<=0 then
aj=16
aK=aK%256+1
as=aR+a[13][1][aK]%3
end
bo=s
end
for b=#A,1,-1 do
z=A[b]_=a[18][z[1]]if ac(1)then
D=_[z[2]]z[2]=z[2]+4
else
D=_[z[2]+2]end
if D and D>0 then
af[#af+1]={D,1}end
if z[2]>=#_ then
ag(A,b)end
end
for b=1,32 do
bu(b,0)end
for b=#af,1,-1 do
D=af[b]bu(b+3,be(av((D[1]+12)//2),1,60))D[2]=D[2]+1
if D[2]>bD then
ag(af,b)end
end
end
end
function onDraw()x=screen
local Y,l,H,ad=x.drawRectF,x.setColor,x.drawLine,x.drawText
aV=aV+1
if a[21]and not an then
d=a[25][1]o,h=d[1],d[2]j,r=G-o/2,80-h/2
for f=0,o-1 do
w=j+f
for Q=0,h-1 do
k=d[5+Q+f*h]if k~=0 then
e=a[20][k]l(e[1],e[2],e[3])H(w,r+Q,w,r+Q+1)end
end
end
end
if not bv then
for b=1,#y do
d=y[b][2][1]aM=d>0 and bw or 1
d=a[17][abs(d)][1]d=a[23][d]o,h,t=d[1],d[2],d[3]*.7
bs=t*bq
j,r=G-(d[4]+160+bH)*.7,F-(d[5]+148+bF)*.7*bq
for f=0,o-1 do
w=j+f*t
for Q=0,h-1 do
k=d[7+Q+f*h]if k~=0 then
e=a[20][k]l(e[1]*aM,e[2]*aM,e[3]*aM)Y(w,r+Q*bs,t,bs)end
end
end
end
end
if an then
if not aA then
if bv then
l(0,0,0)Y(0,0,ar,F)for b=1,#a[2]do
_=a[2][b]if _[8]then
L=aB(bh(bn(sub(a[4][_[1]],C[1]),bi)),{G,aF})I=aB(bh(bn(sub(a[4][_[2]],C[1]),bi)),{G,aF})if _[8]==1 then
l(0,50,0)elseif _[3]&4>0 then
if _[4]==14 then
l(0,0,g)elseif _[4]==15 then
l(g,0,0)elseif _[4]==16 then
l(g,g,0)else
l(50,50,50)end
else
l(g,g,g)end
H(L[1],L[2],I[1],I[2])end
end
l(g,g,g)_=a[19][10]for b=1,#_,4 do
aD=sin(C[3]-90)ay=cos(C[3]-90)L={_[b]*ay+_[b+1]*aD,_[b+1]*ay-_[b]*aD}I={_[b+2]*ay+_[b+3]*aD,_[b+3]*ay-_[b+2]*aD}L=aB(L,{G,aF})I=aB(I,{G,aF})H(L[1],L[2],I[1],I[2])end
end
l(g,S>0 and 0 or g,0,S+R)Y(0,0,ar,F)l(30,30,30)Y(0,F,ar,32)l(5,5,5)Y(G-16,F,32,32)d=a[23]["face textures start"+(as)*"number of sprite mipmap levels"]o,h=d[1],d[2]j=G-o/2
for b=0,o-1 do
for i=0,h-1 do
k=d[7+i+b*h]if k~=0 then
e=a[20][k]l(e[1],e[2],e[3])H(j+b,F+1+i,j+b,F+2+i)end
end
end
for b=1,3 do
if a[12][1][13+b]>0 then
j,r=221,125+b*8
d=a[23]["key textures start"+a[19][5][b]*"number of sprite mipmap levels"]o,h=d[1],d[2]for i=0,o-1 do
for f=0,h-1 do
k=d[7+f+i*h]if k~=0 then
e=a[20][k]l(e[1],e[2],e[3])H(j+i,r+f,j+i,r+f+1)end
end
end
end
end
else
d=a[22][a[19][3][((B-5)//9)+1]]t=d[3]o,h=d[1],d[2]for ab=0,ar+t,t do
for ae=0,32*5+t,t do
k=d[6+((ab//t)%o)*h+((ae//t)%h)]e=a[20][k]l(e[1],e[2],e[3])Y(ab,ae,t,t)end
end
end
if J>0 then
aS=a[13][aG]if aA then
aZ=3
r=3
bt=W(#aS,aN//3)else
aZ=0
r=0
bt=#aS
end
j=aZ
for bI=1,bt do
_=aS[bI]if _>0 then
d=a[23][_]o,h=d[1],d[2]w=j-d[4]aq=r-d[5]for b=0,o-1 do
for i=0,h-1 do
k=d[7+i+b*h]if k~=0 then
e=a[20][k]l(e[1],e[2],e[3])H(w+b,aq+i,w+b,aq+i+1)end
end
end
j=j+o
elseif _==0 then
j=j+4
elseif _==-1 then
j=aZ
r=r+9
end
end
end
if not aA then
aC(124,N,X(s).."%",16)aC(218,N,X(aL).."%",16)q(124-28-15,at,"HEALTH")q(218-28-15,at,"ARMOUR")n=(ak<U and ak>0)and{g,0,0}q(2,N,"TPS:",n)q(26,N,ak>0 and ak or "N/A",n)n=bm and{g,g,44}q(2,138,"DIF:",n)bC={"EASY","MED","HARD"}q(26,138,bC[X(W(aT-3000,3))],n)n=bj and{g,g,44}q(2,145,"LOD:",n)q(26,145,X(aW),n)n=bl and{g,g,44}q(2,at,"TEX:",n)bB={"FULL","HALF"}q(26,at,bk and bB[bk]or "OFF",n)q(232,N,"BULL")q(232,138,"SHEL")q(232,145,"ROKT")q(232,at,"CELL")for b=1,4 do
c=124+b*7
aC(265,c,av(a[12][1][b]),15)aC(285,c,av(a[19][17][b]),15)q(268,c,"/")end
end
else
ad(1,N,"ROM:")ad(26,N,ax)end
end
