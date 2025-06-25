
ak=152
M=131
h=255
J=180
u=math
R=u.max
S=u.min
abs=u.abs
X=u.floor
sqrt=u.sqrt
m=input.getNumber
af=input.getBool
bd=output.setNumber
pi=u.pi
aT=false
T=true
ap=table.remove
as=string
function aG(c,p)return{(c[1]+p[1]),(c[2]+p[2])}end
function bG(c,p)return c[1]*p[2]-c[2]*p[1]end
function sub(c,p)return{(c[1]-p[1]),(c[2]-p[2])}end
function bj(c,p)return{c[1]*p,c[2]*p}end
function bO(c)return((c+J)%360)-J end
function sin(c)return u.sin(c/J*pi)end
function cos(c)return u.cos(c/J*pi)end
function tan(c)return u.tan(c/J*pi)end
function bK(c)return u.atan(c)*J/pi end
function bM(c)return u.atan(c[2],c[1])*J/pi end
function bf(c,p,bx)return S(R(p,c),bx)end
function aF(c)return X(c+.5)end
function bB(c,p)return sqrt(((c[1]-p[1])^2)+((c[2]-p[2])^2))end
function bk(c)return{c[1],-c[2]}end
function bL(c)c=c-1
c=c|(c>>1)c=c|(c>>2)c=c|(c>>4)return c+1
end
a={}aA=1
z=3
ao=aT
C={{0,0},0,0}ae=288
H=ae//2
F=128
aC=F//2
be=1.2
bm={1,1}aX=1
ac=1
aZ=500
s=100
bi=100
aM=0
P=0
Y=0
aa=0
aP=3002
bq=32768
x={}bt=.05
B={}ab={}bA=2
Z=35
aS=0
am=0
aW=0
aR=0
ay=0
aI=0
O=1
aO=0
ai=0
an=0
au=T
aY=0
aE=0
function bb(b,c)if b<bq then
K=a[7][b]return bb(K[0<bG({K[3],K[4]},sub(c,K))and 8 or 7],c)else
return b-bq
end
end
function bh(c)K=a[5][a[6][c][2]]return a[8][a[3][a[2][K[4]][K[5]+6]][6]]end
function ax(i,r,aB,aH)local G,k=y.drawLine,y.setColor
aB=aB..""
aH=a[19][aH]for b=#aB,1,-1 do
_=aH[as.byte(as.sub(aB,b,b))]i=i-aH[1]if _>0 then
d=a[23][_]o,g=d[1],d[2]w=i-d[4]+1
ar=r-d[5]for j=0,o-1 do
for f=0,g-1 do
l=d[7+f+j*g]if l~=0 then
e=a[20][l]k(e[1],e[2],e[3])G(w+j,ar+f,w+j,ar+f+1)end
end
end
end
end
end
function q(aj,at,ad,n)n=n or{59,59,59}y.setColor(13,0,0)y.drawText(aj+1,at+1,ad)y.setColor(n[1],n[2],n[3])y.drawText(aj,at,ad)end
function onTick()aO=0
for j=1,3 do
if af(9)and(not ao)or not a[21]then
aK=property.getText(aA)b=1
v=""
_=as.sub(aK,b,b)while _~=""do
L=as.byte(_)if L>64 then
v=(v..L-65)+0
if O==1 then
bn=v
a[v]=a[v]or{}elseif O==2 then
bz=v
al=0
elseif O==3 then
aQ=v
else
if al==0 then
al=bz
aQ=aQ-1
aN={}a[bn][#a[bn]+1]=aN
end
aN[#aN+1]=v
al=al-1
O=R(al,aQ)>0 and O-1 or 0
end
O=O+1
v=""
else
v=v.._
end
b=b+1
_=as.sub(aK,b,b)end
aA=aA+1
ao=aK==""
end
end
if ao then
if m(10)>0 then
au=T
z=m(10)end
aW=aW+1
a[12][1][aW%#a[12][1]+1]=aF(m(11))ai=a[12][1][17]if s<=0 then
if(z-3)%9==0 and z>5 and ah[6]==5 then
if not av then
P=Z*3600
aw=((z-5)//9)+"episode end text start"
end
av=T
aR=aR+1
end
end
if s>0 and not au then
U={}aq[#aq+1]=U
ag=6
_=m(ag)while _~=0 do
A={}U[#U+1]=A
for b=0,8 do
A[b+1]=m(ag+b)end
ag=ag+9
_=m(ag)end
end
if af(1)then
aS=aS+1
if au then
for b=1,10 do
a[b]=a[b+10*z]end
z=z+1
for b=#a[1],1,-1 do
_=a[1][b]_=_[5]&(aP-3000)>0 or ap(a[1],b)end
for b=1,#a[8]do
a[8][b][8]={}end
for b=1,#a[6]do
_=bh(b)_[8][#_[8]+1]=b
end
aq={}end
P=P-1
if s>0 then
if Q~=m(1)and m(1)>0 then
x={}_={}_[1]=a[29][m(1)]_[2]=a[16][_[1][3]]bN=_[2][1]_[3]=0
x[1]=_
end
Q=m(1)aL=af(3)if aL and Q==5 then
if an<=0 then
an=7
else
aL=false
end
end
an=an-1
if aL then
_=x[1]_[2]=a[16][_[1][4]]_[3]=-1
D=a[19][6][Q]if D>0 then
B[#B+1]={D,1}end
end
end
for b=#x,1,-1 do
_=x[b]if _[3]==0 then
if _[2][3]==4 then
if Q==5 and an<5 then
bo=1
else
bo=0
end
x[#x+1]={_[1],a[16][_[1][5]+bo],2}end
end
_[3]=_[3]+1
if _[3]>=_[2][2]then
if _[2][4]>2 then
_[2]=a[16][_[2][4]]_[3]=0
else
ap(x,b)end
end
end
if au then
Y=50
P=Z*8
aw=z-4+"map name text start"
end
au=aT
aa=R(aa-4,0)aa=bf(aa+(s-m(3)+aM-m(4))*3,0,h)Y=R(Y-1.5,0)s=m(3)aM,ba,bl,br=m(4)if m(2)>0 and s>0 then
_=a[2][m(2)]if _ then
if _[4]==3008 then
bu=_[5]>0 and X(_[5])br=T
elseif _[4]>3004 then
aZ=R(aZ+3*(_[4]-3006),1)bl=T
elseif _[4]>3000 then
aP=_[4]ba=T
elseif _[4]>=14 and _[4]<=16 then
if a[12][1][_[4]]==0 then
P=Z*4
aw=_[4]-14+"door text start"
end
end
end
end
aE=aE-1
if aE<1 then
aY=0
end
for b=1,#aq do
U=aq[b]for j=1,#U do
A=U[j]_=A[1]if _>(2^15)then
_=a[8][_-(2^15)]for f=1,6 do
_[f]=A[f+1]end
elseif _<0 then
L=a[1][-_]if L then
A=L[6]if a[16][A][5]>0 then
Y=R(Y,15)P=Z*4
aw=a[16][A][5]B[#B+1]={"item pickup sound index",1}if L[4]then
bg=a[15][L[4]]if bg[29]=="light amp index" then
aY=1
aE=4200
end
if bg[29]=="computer area map index" then
for f=1,#a[2]do
a[2][f][8]=a[2][f][8]or 1
end
end
end
end
end
while-_>#a[1]do
a[1][#a[1]+1]=aT
end
ap(a[1],-_)else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for f=1,8 do
_[a[19][1][f]]=A[f+1]end
_[15]=0
end
end
end
aq={}_=a[1][1]C[3]=_[3]bp=((aS%64)/64)*360
aI=aI*.8+S(bB(_,C[1])^2/4,16)*.2
bJ=cos(bp)*aI
bD=-abs(sin(bp)*aI)-(s>0 and 0 or 300)C[1]={_[1],_[2]}bw=bb(#a[7],C[1])ah=bh(bw)C[2]=ah[1]+41
bI=S(ah[5]/h+aY,1)^1.3
for b=1,#ah[8]do
_=a[6][ah[8][b]]for j=_[2],_[1]+_[2]-1 do
bH=a[5][j]bE=a[2][bH[4]]bE[8]=2
end
end
bv=af(2)if m(12)>0 and s>0 then
B[#B+1]={m(12),1}end
am=am-1
ay=ay-1
if not bm[Q]then
bm[Q]=1
ay=70
end
aV=(4-S(s//20,4))*8
if s<=0 then
ac=41
elseif ay>0 then
ac=aV+6
elseif s<bi then
am=Z
ac=aV+7
elseif am<=0 then
am=16
aX=aX%256+1
ac=aV+a[13][1][aX]%3
end
bi=s
end
for b=#B,1,-1 do
D=B[b]_=a[18][D[1]]if af(1)then
E=_[D[2]]D[2]=D[2]+4
else
E=_[D[2]+2]end
if E and E>0 then
ab[#ab+1]={E,1}end
if D[2]>=#_ then
ap(B,b)end
end
for b=1,32 do
bd(b,0)end
for b=#ab,1,-1 do
E=ab[b]bd(b+3,bf(aF((E[1]+12)//2),1,60))E[2]=E[2]+1
if E[2]>bA then
ap(ab,b)end
end
end
end
function onDraw()y=screen
local W,k,G,ad=y.drawRectF,y.setColor,y.drawLine,y.drawText
aO=aO+1
if a[21]and not ao then
d=a[25][1]o,g=d[1],d[2]i,r=H-o/2,80-g/2
for f=0,o-1 do
w=i+f
for V=0,g-1 do
l=d[5+V+f*g]if l~=0 then
e=a[20][l]k(e[1],e[2],e[3])G(w,r+V,w,r+V+1)end
end
end
end
if not bv then
for b=1,#x do
d=x[b][2][1]b_=d>0 and bI or 1
d=a[17][abs(d)][1]d=a[23][d]o,g,t=d[1],d[2],d[3]*.7
bs=t*be
i,r=H-(d[4]+160+bJ)*.7,F-(d[5]+148+bD)*.7*be
for f=0,o-1 do
w=i+f*t
for V=0,g-1 do
l=d[7+V+f*g]if l~=0 then
e=a[20][l]k(e[1]*b_,e[2]*b_,e[3]*b_)W(w,r+V*bs,t,bs)end
end
end
end
end
if ao then
if not av then
if bv then
k(0,0,0)W(0,0,ae,F)for b=1,#a[2]do
_=a[2][b]if _[8]then
N=aG(bk(bj(sub(a[4][_[1]],C[1]),bt)),{H,aC})I=aG(bk(bj(sub(a[4][_[2]],C[1]),bt)),{H,aC})if _[8]==1 then
k(0,50,0)elseif _[3]&4>0 then
if _[4]==14 then
k(0,0,h)elseif _[4]==15 then
k(h,0,0)elseif _[4]==16 then
k(h,h,0)else
k(50,50,50)end
else
k(h,h,h)end
G(N[1],N[2],I[1],I[2])end
end
k(h,h,h)_=a[19][10]for b=1,#_,4 do
aD=sin(C[3]-90)az=cos(C[3]-90)N={_[b]*az+_[b+1]*aD,_[b+1]*az-_[b]*aD}I={_[b+2]*az+_[b+3]*aD,_[b+3]*az-_[b+2]*aD}N=aG(N,{H,aC})I=aG(I,{H,aC})G(N[1],N[2],I[1],I[2])end
end
k(h,aa>0 and 0 or h,0,aa+Y)W(0,0,ae,F)k(30,30,30)W(0,F,ae,32)k(5,5,5)W(H-16,F,32,32)d=a[23]["face textures start"+(ac)*"number of sprite mipmap levels"]o,g=d[1],d[2]i=H-o/2
for b=0,o-1 do
for j=0,g-1 do
l=d[7+j+b*g]if l~=0 then
e=a[20][l]k(e[1],e[2],e[3])G(i+b,F+1+j,i+b,F+2+j)end
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
d=a[22][a[19][3][((z-5)//9)+1]]t=d[3]o,g=d[1],d[2]for aj=0,ae+t,t do
for at=0,32*5+t,t do
l=d[6+((aj//t)%o)*g+((at//t)%g)]e=a[20][l]k(e[1],e[2],e[3])W(aj,at,t,t)end
end
end
if P>0 then
aU=a[13][aw]if av then
aJ=3
r=3
bc=S(#aU,aR//3)else
aJ=0
r=0
bc=#aU
end
i=aJ
for bF=1,bc do
_=aU[bF]if _>0 then
d=a[23][_]o,g=d[1],d[2]w=i-d[4]ar=r-d[5]for b=0,o-1 do
for j=0,g-1 do
l=d[7+j+b*g]if l~=0 then
e=a[20][l]k(e[1],e[2],e[3])G(w+b,ar+j,w+b,ar+j+1)end
end
end
i=i+o
elseif _==0 then
i=i+4
elseif _==-1 then
i=aJ
r=r+9
end
end
end
if not av then
ax(124,M,X(s).."%",16)ax(218,M,X(aM).."%",16)q(124-28-15,ak,"HEALTH")q(218-28-15,ak,"ARMOUR")n=(ai<Z and ai>0)and{h,0,0}q(2,M,"TPS:",n)q(26,M,ai>0 and ai or "N/A",n)n=ba and{h,h,44}q(2,138,"DIF:",n)bC={"EASY","MED","HARD"}q(26,138,bC[X(S(aP-3000,3))],n)n=bl and{h,h,44}q(2,145,"LOD:",n)q(26,145,X(aZ),n)n=br and{h,h,44}q(2,ak,"TEX:",n)by={"FULL","HALF"}q(26,ak,bu and by[bu]or "OFF",n)q(232,M,"BULL")q(232,138,"SHEL")q(232,145,"ROKT")q(232,ak,"CELL")for b=1,4 do
c=124+b*7
ax(265,c,aF(a[12][1][b]),15)ax(285,c,aF(a[19][17][b]),15)q(268,c,"/")end
end
else
ad(1,M,"ROM:")ad(26,M,aA)end
end
