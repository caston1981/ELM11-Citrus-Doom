
aq=152
P=131
h=255
M=180
u=math
Y=u.max
R=u.min
abs=u.abs
V=u.floor
sqrt=u.sqrt
m=input.getNumber
ac=input.getBool
bh=output.setNumber
pi=u.pi
aZ=false
X=true
af=table.remove
ai=string
function aG(c,p)return{(c[1]+p[1]),(c[2]+p[2])}end
function bz(c,p)return c[1]*p[2]-c[2]*p[1]end
function sub(c,p)return{(c[1]-p[1]),(c[2]-p[2])}end
function bn(c,p)return{c[1]*p,c[2]*p}end
function bL(c)return((c+M)%360)-M end
function sin(c)return u.sin(c/M*pi)end
function cos(c)return u.cos(c/M*pi)end
function tan(c)return u.tan(c/M*pi)end
function bO(c)return u.atan(c)*M/pi end
function bM(c)return u.atan(c[2],c[1])*M/pi end
function bd(c,p,bx)return R(Y(p,c),bx)end
function aA(c)return V(c+.5)end
function bE(c,p)return sqrt(((c[1]-p[1])^2)+((c[2]-p[2])^2))end
function bt(c)return{c[1],-c[2]}end
function bK(c)c=c-1
c=c|(c>>1)c=c|(c>>2)c=c|(c>>4)return c+1
end
a={}aF=1
E=3
ad=aZ
A={{0,0},0,0}au=288
G=au//2
H=128
aC=H//2
bg=1.2
bq={1,1}aR=1
ae=1
aW=500
s=100
bl=100
aL=0
K=0
T=0
S=0
aK=3002
bk=32768
w={}bo=.05
C={}an={}bJ=2
Q=35
aS=0
am=0
aM=0
aJ=0
aI=0
aE=0
J=1
aU=0
ak=0
as=0
ah=X
aT=0
ax=0
function be(b,c)if b<bk then
N=a[7][b]return be(N[0<bz({N[3],N[4]},sub(c,N))and 8 or 7],c)else
return b-bk
end
end
function bs(c)N=a[5][a[6][c][2]]return a[8][a[3][a[2][N[4]][N[5]+6]][6]]end
function az(i,r,aB,aD)local F,l=x.drawLine,x.setColor
aB=aB..""
aD=a[19][aD]for b=#aB,1,-1 do
_=aD[ai.byte(ai.sub(aB,b,b))]i=i-aD[1]if _>0 then
d=a[23][_]o,g=d[1],d[2]y=i-d[4]+1
aj=r-d[5]for j=0,o-1 do
for f=0,g-1 do
k=d[7+f+j*g]if k~=0 then
e=a[20][k]l(e[1],e[2],e[3])F(y+j,aj+f,y+j,aj+f+1)end
end
end
end
end
end
function q(ap,at,ao,n)n=n or{59,59,59}x.setColor(13,0,0)x.drawText(ap+1,at+1,ao)x.setColor(n[1],n[2],n[3])x.drawText(ap,at,ao)end
function onTick()aU=0
for j=1,3 do
if ac(9)and(not ad)or not a[21]then
aN=property.getText(aF)b=1
v=""
_=ai.sub(aN,b,b)while _~=""do
I=ai.byte(_)if I>64 then
v=(v..I-65)+0
if J==1 then
bu=v
a[v]=a[v]or{}elseif J==2 then
bw=v
ag=0
elseif J==3 then
aO=v
else
if ag==0 then
ag=bw
aO=aO-1
b_={}a[bu][#a[bu]+1]=b_
end
b_[#b_+1]=v
ag=ag-1
J=Y(ag,aO)>0 and J-1 or 0
end
J=J+1
v=""
else
v=v.._
end
b=b+1
_=ai.sub(aN,b,b)end
aF=aF+1
ad=aN==""
end
end
if ad then
if m(10)>0 then
ah=X
E=m(10)end
aM=aM+1
a[12][1][aM%#a[12][1]+1]=aA(m(11))ak=a[12][1][17]if s<=0 then
if(E-3)%9==0 and E>5 and ar[6]==5 then
if not aH then
K=Q*3600
av=((E-5)//9)+"episode end text start"
end
aH=X
aJ=aJ+1
end
end
if s>0 and not ah then
U={}ab[#ab+1]=U
al=6
_=m(al)while _~=0 do
D={}U[#U+1]=D
for b=0,8 do
D[b+1]=m(al+b)end
al=al+9
_=m(al)end
end
if ac(1)then
aS=aS+1
if ah then
for b=1,10 do
a[b]=a[b+10*E]end
E=E+1
for b=#a[1],1,-1 do
_=a[1][b]_=_[5]&(aK-3000)>0 or af(a[1],b)end
for b=1,#a[8]do
a[8][b][8]={}end
for b=1,#a[6]do
_=bs(b)_[8][#_[8]+1]=b
end
ab={}end
K=K-1
if s>0 then
if aa~=m(1)and m(1)>0 then
w={}_={}_[1]=a[29][m(1)]_[2]=a[16][_[1][3]]bN=_[2][1]_[3]=0
w[1]=_
end
aa=m(1)aY=ac(3)if aY and aa==5 then
if as<=0 then
as=7
else
aY=false
end
end
as=as-1
if aY then
_=w[1]_[2]=a[16][_[1][4]]_[3]=-1
B=a[19][6][aa]if B>0 then
C[#C+1]={B,1}end
end
end
for b=#w,1,-1 do
_=w[b]if _[3]==0 then
if _[2][3]==4 then
if aa==5 and as<5 then
bj=1
else
bj=0
end
w[#w+1]={_[1],a[16][_[1][5]+bj],2}end
end
_[3]=_[3]+1
if _[3]>=_[2][2]then
if _[2][4]>2 then
_[2]=a[16][_[2][4]]_[3]=0
else
af(w,b)end
end
end
if ah then
T=50
K=Q*8
av=E-4+"map name text start"
end
ah=aZ
S=Y(S-4,0)S=bd(S+(s-m(3)+aL-m(4))*3,0,h)T=Y(T-1.5,0)s=m(3)aL,ba,bp,bb=m(4)if m(2)>0 and s>0 then
_=a[2][m(2)]if _ then
if _[4]==3008 then
bi=_[5]>0 and V(_[5])bb=X
elseif _[4]>3004 then
aW=Y(aW+3*(_[4]-3006),1)bp=X
elseif _[4]>3000 then
aK=_[4]ba=X
elseif _[4]>=14 and _[4]<=16 then
if a[12][1][_[4]]==0 then
K=Q*4
av=_[4]-14+"door text start"
end
end
end
end
ax=ax-1
if ax<1 then
aT=0
end
for b=1,#ab do
U=ab[b]for j=1,#U do
D=U[j]_=D[1]if _>(2^15)then
_=a[8][_-(2^15)]for f=1,6 do
_[f]=D[f+1]end
elseif _<0 then
I=a[1][-_]if I then
D=I[6]if a[16][D][5]>0 then
T=Y(T,15)K=Q*4
av=a[16][D][5]C[#C+1]={"item pickup sound index",1}if I[4]then
bm=a[15][I[4]]if bm[29]=="light amp index" then
aT=1
ax=4200
end
if bm[29]=="computer area map index" then
for f=1,#a[2]do
a[2][f][8]=a[2][f][8]or 1
end
end
end
end
end
while-_>#a[1]do
a[1][#a[1]+1]=aZ
end
af(a[1],-_)else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for f=1,8 do
_[a[19][1][f]]=D[f+1]end
_[15]=0
end
end
end
ab={}_=a[1][1]A[3]=_[3]br=((aS%64)/64)*360
aE=aE*.8+R(bE(_,A[1])^2/4,16)*.2
bF=cos(br)*aE
bG=-abs(sin(br)*aE)-(s>0 and 0 or 300)A[1]={_[1],_[2]}bD=be(#a[7],A[1])ar=bs(bD)A[2]=ar[1]+41
bH=R(ar[5]/h+aT,1)^1.3
for b=1,#ar[8]do
_=a[6][ar[8][b]]for j=_[2],_[1]+_[2]-1 do
bC=a[5][j]bI=a[2][bC[4]]bI[8]=2
end
end
bf=ac(2)if m(12)>0 and s>0 then
C[#C+1]={m(12),1}end
am=am-1
aI=aI-1
if not bq[aa]then
bq[aa]=1
aI=70
end
aQ=(4-R(s//20,4))*8
if s<=0 then
ae=41
elseif aI>0 then
ae=aQ+6
elseif s<bl then
am=Q
ae=aQ+7
elseif am<=0 then
am=16
aR=aR%256+1
ae=aQ+a[13][1][aR]%3
end
bl=s
end
for b=#C,1,-1 do
B=C[b]_=a[18][B[1]]if ac(1)then
z=_[B[2]]B[2]=B[2]+4
else
z=_[B[2]+2]end
if z and z>0 then
an[#an+1]={z,1}end
if B[2]>=#_ then
af(C,b)end
end
for b=1,32 do
bh(b,0)end
for b=#an,1,-1 do
z=an[b]bh(b+3,bd(aA((z[1]+12)//2),1,60))z[2]=z[2]+1
if z[2]>bJ then
af(an,b)end
end
end
end
function onDraw()x=screen
local Z,l,F,ao=x.drawRectF,x.setColor,x.drawLine,x.drawText
aU=aU+1
if a[21]and not ad then
d=a[25][1]o,g=d[1],d[2]i,r=G-o/2,80-g/2
for f=0,o-1 do
y=i+f
for W=0,g-1 do
k=d[5+W+f*g]if k~=0 then
e=a[20][k]l(e[1],e[2],e[3])F(y,r+W,y,r+W+1)end
end
end
end
if not bf then
for b=1,#w do
d=w[b][2][1]aP=d>0 and bH or 1
d=a[17][abs(d)][1]d=a[23][d]o,g,t=d[1],d[2],d[3]*.7
bc=t*bg
i,r=G-(d[4]+160+bF)*.7,H-(d[5]+148+bG)*.7*bg
for f=0,o-1 do
y=i+f*t
for W=0,g-1 do
k=d[7+W+f*g]if k~=0 then
e=a[20][k]l(e[1]*aP,e[2]*aP,e[3]*aP)Z(y,r+W*bc,t,bc)end
end
end
end
end
if ad then
if not aH then
if bf then
l(0,0,0)Z(0,0,au,H)for b=1,#a[2]do
_=a[2][b]if _[8]then
L=aG(bt(bn(sub(a[4][_[1]],A[1]),bo)),{G,aC})O=aG(bt(bn(sub(a[4][_[2]],A[1]),bo)),{G,aC})if _[8]==1 then
l(0,50,0)elseif _[3]&4>0 then
if _[4]==14 then
l(0,0,h)elseif _[4]==15 then
l(h,0,0)elseif _[4]==16 then
l(h,h,0)else
l(50,50,50)end
else
l(h,h,h)end
F(L[1],L[2],O[1],O[2])end
end
l(h,h,h)_=a[19][10]for b=1,#_,4 do
aw=sin(A[3]-90)ay=cos(A[3]-90)L={_[b]*ay+_[b+1]*aw,_[b+1]*ay-_[b]*aw}O={_[b+2]*ay+_[b+3]*aw,_[b+3]*ay-_[b+2]*aw}L=aG(L,{G,aC})O=aG(O,{G,aC})F(L[1],L[2],O[1],O[2])end
end
l(h,S>0 and 0 or h,0,S+T)Z(0,0,au,H)l(30,30,30)Z(0,H,au,32)l(5,5,5)Z(G-16,H,32,32)d=a[23]["face textures start"+(ae)*"number of sprite mipmap levels"]o,g=d[1],d[2]i=G-o/2
for b=0,o-1 do
for j=0,g-1 do
k=d[7+j+b*g]if k~=0 then
e=a[20][k]l(e[1],e[2],e[3])F(i+b,H+1+j,i+b,H+2+j)end
end
end
for b=1,3 do
if a[12][1][13+b]>0 then
i,r=221,125+b*8
d=a[23]["key textures start"+a[19][5][b]*"number of sprite mipmap levels"]o,g=d[1],d[2]for j=0,o-1 do
for f=0,g-1 do
k=d[7+f+j*g]if k~=0 then
e=a[20][k]l(e[1],e[2],e[3])F(i+j,r+f,i+j,r+f+1)end
end
end
end
end
else
d=a[22][a[19][3][((E-5)//9)+1]]t=d[3]o,g=d[1],d[2]for ap=0,au+t,t do
for at=0,32*5+t,t do
k=d[6+((ap//t)%o)*g+((at//t)%g)]e=a[20][k]l(e[1],e[2],e[3])Z(ap,at,t,t)end
end
end
if K>0 then
aV=a[13][av]if aH then
aX=3
r=3
bv=R(#aV,aJ//3)else
aX=0
r=0
bv=#aV
end
i=aX
for bA=1,bv do
_=aV[bA]if _>0 then
d=a[23][_]o,g=d[1],d[2]y=i-d[4]aj=r-d[5]for b=0,o-1 do
for j=0,g-1 do
k=d[7+j+b*g]if k~=0 then
e=a[20][k]l(e[1],e[2],e[3])F(y+b,aj+j,y+b,aj+j+1)end
end
end
i=i+o
elseif _==0 then
i=i+4
elseif _==-1 then
i=aX
r=r+9
end
end
end
if not aH then
az(124,P,V(s).."%",16)az(218,P,V(aL).."%",16)q(124-28-15,aq,"HEALTH")q(218-28-15,aq,"ARMOUR")n=(ak<Q and ak>0)and{h,0,0}q(2,P,"TPS:",n)q(26,P,ak>0 and ak or "N/A",n)n=ba and{h,h,44}q(2,138,"DIF:",n)by={"EASY","MED","HARD"}q(26,138,by[V(R(aK-3000,3))],n)n=bp and{h,h,44}q(2,145,"LOD:",n)q(26,145,V(aW),n)n=bb and{h,h,44}q(2,aq,"TEX:",n)bB={"FULL","HALF"}q(26,aq,bi and bB[bi]or "OFF",n)q(232,P,"BULL")q(232,138,"SHEL")q(232,145,"ROKT")q(232,aq,"CELL")for b=1,4 do
c=124+b*7
az(265,c,aA(a[12][1][b]),15)az(285,c,aA(a[19][17][b]),15)q(268,c,"/")end
end
else
ao(1,P,"ROM:")ao(26,P,aF)end
end
