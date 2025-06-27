
ad=152
I=131
h=255
N=180
v=math
W=v.max
T=v.min
abs=v.abs
X=v.floor
sqrt=v.sqrt
m=input.getNumber
ac=input.getBool
bg=output.setNumber
pi=v.pi
aU=false
R=true
am=table.remove
af=string
function ay(c,p)return{(c[1]+p[1]),(c[2]+p[2])}end
function bC(c,p)return c[1]*p[2]-c[2]*p[1]end
function sub(c,p)return{(c[1]-p[1]),(c[2]-p[2])}end
function bc(c,p)return{c[1]*p,c[2]*p}end
function bM(c)return((c+N)%360)-N end
function sin(c)return v.sin(c/N*pi)end
function cos(c)return v.cos(c/N*pi)end
function tan(c)return v.tan(c/N*pi)end
function bL(c)return v.atan(c)*N/pi end
function bN(c)return v.atan(c[2],c[1])*N/pi end
function bq(c,p,by)return T(W(p,c),by)end
function aB(c)return X(c+.5)end
function bE(c,p)return sqrt(((c[1]-p[1])^2)+((c[2]-p[2])^2))end
function bn(c)return{c[1],-c[2]}end
function bO(c)c=c-1
c=c|(c>>1)c=c|(c>>2)c=c|(c>>4)return c+1
end
a={}aw=1
B=3
ao=aU
z={{0,0},0,0}ai=288
F=ai//2
H=128
aA=H//2
bh=1.2
bp={1,1}aS=1
at=1
aM=500
s=100
bs=100
aP=0
O=0
aF=0
S=0
Z=0
aQ=3002
bu=32768
y={}bf=.05
E={}ar={}bK=2
Y=35
aH=0
ab=0
aZ=0
aX=0
aD=0
ax=0
M=1
ba=0
ak=0
al=0
ap=R
aO=0
aJ=0
function bd(b,c)if b<bu then
P=a[7][b]return bd(P[0<bC({P[3],P[4]},sub(c,P))and 8 or 7],c)else
return b-bu
end
end
function br(c)P=a[5][a[6][c][2]]return a[8][a[3][a[2][P[4]][P[5]+6]][6]]end
function aG(i,r,aE,aC)local G,k=x.drawLine,x.setColor
aE=aE..""
aC=a[19][aC]for b=#aE,1,-1 do
_=aC[af.byte(af.sub(aE,b,b))]i=i-aC[1]if _>0 then
d=a[23][_]o,g=d[1],d[2]w=i-d[4]+1
aj=r-d[5]for j=0,o-1 do
for f=0,g-1 do
l=d[7+f+j*g]if l~=0 then
e=a[20][l]k(e[1],e[2],e[3])G(w+j,aj+f,w+j,aj+f+1)end
end
end
end
end
end
function q(au,aq,ae,n)n=n or{59,59,59}x.setColor(13,0,0)x.drawText(au+1,aq+1,ae)x.setColor(n[1],n[2],n[3])x.drawText(au,aq,ae)end
function onTick()ba=0
for j=1,3 do
if ac(9)and(not ao)or not a[21]then
aW=property.getText(aw)b=1
u=""
_=af.sub(aW,b,b)while _~=""do
K=af.byte(_)if K>64 then
u=(u..K-65)+0
if M==1 then
bm=u
a[u]=a[u]or{}elseif M==2 then
bA=u
as=0
elseif M==3 then
aV=u
else
if as==0 then
as=bA
aV=aV-1
aY={}a[bm][#a[bm]+1]=aY
end
aY[#aY+1]=u
as=as-1
M=W(as,aV)>0 and M-1 or 0
end
M=M+1
u=""
else
u=u.._
end
b=b+1
_=af.sub(aW,b,b)end
aw=aw+1
ao=aW==""
end
end
if ao then
if m(10)>0 then
ap=R
B=m(10)end
aZ=aZ+1
a[12][1][aZ%#a[12][1]+1]=aB(m(11))ak=a[12][1][17]if s<=0 then
if(B-3)%9==0 and B>5 and ag[6]==5 then
if not aK then
O=Y*3600
az=((B-5)//9)+"episode end text start"
end
aK=R
aX=aX+1
end
end
if s>0 and not ap then
V={}an[#an+1]=V
ah=6
_=m(ah)while _~=0 do
C={}V[#V+1]=C
for b=0,8 do
C[b+1]=m(ah+b)end
ah=ah+9
_=m(ah)end
end
if ac(1)then
aH=aH+1
if ap then
for b=1,10 do
a[b]=a[b+10*B]end
B=B+1
for b=#a[1],1,-1 do
_=a[1][b]_=_[5]&(aQ-3000)>0 or am(a[1],b)end
for b=1,#a[8]do
a[8][b][8]={}end
for b=1,#a[6]do
_=br(b)_[8][#_[8]+1]=b
end
an={}end
O=O-1
if s>0 then
if Q~=m(1)and m(1)>0 then
y={}_={}_[1]=a[29][m(1)]_[2]=a[16][_[1][3]]bP=_[2][1]_[3]=0
y[1]=_
end
Q=m(1)b_=ac(3)if b_ and Q==5 then
if al<=0 then
al=7
else
b_=false
end
end
al=al-1
if b_ then
_=y[1]_[2]=a[16][_[1][4]]_[3]=-1
A=a[19][6][Q]if A>0 then
E[#E+1]={A,1}end
end
end
for b=#y,1,-1 do
_=y[b]if _[3]==0 then
if _[2][3]==4 then
if Q==5 and al<5 then
bo=1
else
bo=0
end
y[#y+1]={_[1],a[16][_[1][5]+bo],2}end
end
_[3]=_[3]+1
if _[3]>=_[2][2]then
if _[2][4]>2 then
_[2]=a[16][_[2][4]]_[3]=0
else
am(y,b)end
end
end
if ap then
S=50
O=Y*8
az=B-4+"map name text start"
end
ap=aU
Z=W(Z-4,0)Z=bq(Z+(s-m(3)+aP-m(4))*3,0,h)S=W(S-1.5,0)aF=(a[12][1][18]>140 or a[12][1][18]>0 and aH%20<10)and 15 or 0
s=m(3)aP,bj,bb,bt=m(4)if m(2)>0 and s>0 then
_=a[2][m(2)]if _ then
if _[4]==3008 then
bw=_[5]>0 and X(_[5])bt=R
elseif _[4]>3004 then
aM=W(aM+3*(_[4]-3006),1)bb=R
elseif _[4]>3000 then
aQ=_[4]bj=R
elseif _[4]>=14 and _[4]<=16 then
if a[12][1][_[4]]==0 then
O=Y*4
az=_[4]-14+"door text start"
end
end
end
end
aJ=aJ-1
if aJ<1 then
aO=0
end
for b=1,#an do
V=an[b]for j=1,#V do
C=V[j]_=C[1]if _>(2^15)then
_=a[8][_-(2^15)]for f=1,6 do
_[f]=C[f+1]end
elseif _<0 then
K=a[1][-_]if K then
C=K[6]if a[16][C][5]>0 then
S=W(S,15)O=Y*4
az=a[16][C][5]E[#E+1]={"item pickup sound index",1}if K[4]then
bl=a[15][K[4]]if bl[29]=="light amp index" then
aO=1
aJ=4200
end
if bl[29]=="computer area map index" then
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
am(a[1],-_)else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for f=1,8 do
_[a[19][1][f]]=C[f+1]end
_[15]=0
end
end
end
an={}_=a[1][1]z[3]=_[3]bi=((aH%64)/64)*360
ax=ax*.8+T(bE(_,z[1])^2/4,16)*.2
bz=cos(bi)*ax
bI=-abs(sin(bi)*ax)-(s>0 and 0 or 300)z[1]={_[1],_[2]}bG=bd(#a[7],z[1])ag=br(bG)z[2]=ag[1]+41
bJ=T(ag[5]/h+aO,1)^1.3
for b=1,#ag[8]do
_=a[6][ag[8][b]]for j=_[2],_[1]+_[2]-1 do
bH=a[5][j]bx=a[2][bH[4]]bx[8]=2
end
end
bk=ac(2)if m(12)>0 and s>0 then
E[#E+1]={m(12),1}end
ab=ab-1
aD=aD-1
if not bp[Q]then
bp[Q]=1
aD=70
end
aL=(4-T(s//20,4))*8
if s<=0 then
at=41
elseif aD>0 then
at=aL+6
elseif s<bs then
ab=Y
at=aL+7
elseif ab<=0 then
ab=16
aS=aS%256+1
at=aL+a[13][1][aS]%3
end
bs=s
end
for b=#E,1,-1 do
A=E[b]_=a[18][A[1]]if ac(1)then
D=_[A[2]]A[2]=A[2]+4
else
D=_[A[2]+2]end
if D and D>0 then
ar[#ar+1]={D,1}end
if A[2]>=#_ then
am(E,b)end
end
for b=1,32 do
bg(b,0)end
for b=#ar,1,-1 do
D=ar[b]bg(b+3,bq(aB((D[1]+12)//2),1,60))D[2]=D[2]+1
if D[2]>bK then
am(ar,b)end
end
end
end
function onDraw()x=screen
local aa,k,G,ae=x.drawRectF,x.setColor,x.drawLine,x.drawText
ba=ba+1
if a[21]and not ao then
d=a[25][1]o,g=d[1],d[2]i,r=F-o/2,80-g/2
for f=0,o-1 do
w=i+f
for U=0,g-1 do
l=d[5+U+f*g]if l~=0 then
e=a[20][l]k(e[1],e[2],e[3])G(w,r+U,w,r+U+1)end
end
end
end
if not bk then
for b=1,#y do
d=y[b][2][1]aN=d>0 and bJ or 1
d=a[17][abs(d)][1]d=a[23][d]o,g,t=d[1],d[2],d[3]*.7
be=t*bh
i,r=F-(d[4]+160+bz)*.7,H-(d[5]+148+bI)*.7*bh
for f=0,o-1 do
w=i+f*t
for U=0,g-1 do
l=d[7+U+f*g]if l~=0 then
e=a[20][l]k(e[1]*aN,e[2]*aN,e[3]*aN)aa(w,r+U*be,t,be)end
end
end
end
end
if ao then
if not aK then
if bk then
k(0,0,0)aa(0,0,ai,H)for b=1,#a[2]do
_=a[2][b]if _[8]then
J=ay(bn(bc(sub(a[4][_[1]],z[1]),bf)),{F,aA})L=ay(bn(bc(sub(a[4][_[2]],z[1]),bf)),{F,aA})if _[8]==1 then
k(0,50,0)elseif _[3]&4>0 then
if _[4]==14 then
k(0,0,h)elseif _[4]==15 then
k(h,0,0)elseif _[4]==16 then
k(h,h,0)else
k(50,50,50)end
else
k(h,h,h)end
G(J[1],J[2],L[1],L[2])end
end
k(h,h,h)_=a[19][10]for b=1,#_,4 do
av=sin(z[3]-90)aI=cos(z[3]-90)J={_[b]*aI+_[b+1]*av,_[b+1]*aI-_[b]*av}L={_[b+2]*aI+_[b+3]*av,_[b+3]*aI-_[b+2]*av}J=ay(J,{F,aA})L=ay(L,{F,aA})G(J[1],J[2],L[1],L[2])end
end
k((aF>0 and 0 or h),((Z>0 and aF==0)and 0 or h),0,Z+S+aF)aa(0,0,ai,H)k(30,30,30)aa(0,H,ai,32)k(5,5,5)aa(F-16,H,32,32)d=a[23]["face textures start"+(at)*"number of sprite mipmap levels"]o,g=d[1],d[2]i=F-o/2
for b=0,o-1 do
for j=0,g-1 do
l=d[7+j+b*g]if l~=0 then
e=a[20][l]k(e[1],e[2],e[3])G(i+b,H+1+j,i+b,H+2+j)end
end
end
for b=1,3 do
if a[12][1][13+b]>0 then
i,r=221,125+b*8
d=a[23]["key textures start"+a[19][5][b]*"number of sprite mipmap levels"]o,g=d[1],d[2]for j=0,o-1 do
for f=0,g-1 do
l=d[7+f+j*g]if l~=0 then
e=a[20][l]k(e[1],e[2],e[3])G(i+j,r+f,i+j,r+f+1)end
end
end
end
end
else
d=a[22][a[19][3][((B-5)//9)+1]]t=d[3]o,g=d[1],d[2]for au=0,ai+t,t do
for aq=0,32*5+t,t do
l=d[6+((au//t)%o)*g+((aq//t)%g)]e=a[20][l]k(e[1],e[2],e[3])aa(au,aq,t,t)end
end
end
if O>0 then
aR=a[13][az]if aK then
aT=3
r=3
bv=T(#aR,aX//3)else
aT=0
r=0
bv=#aR
end
i=aT
for bB=1,bv do
_=aR[bB]if _>0 then
d=a[23][_]o,g=d[1],d[2]w=i-d[4]aj=r-d[5]for b=0,o-1 do
for j=0,g-1 do
l=d[7+j+b*g]if l~=0 then
e=a[20][l]k(e[1],e[2],e[3])G(w+b,aj+j,w+b,aj+j+1)end
end
end
i=i+o
elseif _==0 then
i=i+4
elseif _==-1 then
i=aT
r=r+9
end
end
end
if not aK then
aG(124,I,X(s).."%",16)aG(218,I,X(aP).."%",16)q(124-28-15,ad,"HEALTH")q(218-28-15,ad,"ARMOUR")n=(ak<Y and ak>0)and{h,0,0}q(2,I,"TPS:",n)q(26,I,ak>0 and ak or "N/A",n)n=bj and{h,h,44}q(2,138,"DIF:",n)bF={"EASY","MED","HARD"}q(26,138,bF[X(T(aQ-3000,3))],n)n=bb and{h,h,44}q(2,145,"LOD:",n)q(26,145,X(aM),n)n=bt and{h,h,44}q(2,ad,"TEX:",n)bD={"FULL","HALF"}q(26,ad,bw and bD[bw]or "OFF",n)q(232,I,"BULL")q(232,138,"SHEL")q(232,145,"ROKT")q(232,ad,"CELL")for b=1,4 do
c=124+b*7
aG(265,c,aB(a[12][1][b]),15)aG(285,c,aB(a[19][17][b]),15)q(268,c,"/")end
end
else
ae(1,I,"ROM:")ae(26,I,aw)end
end
