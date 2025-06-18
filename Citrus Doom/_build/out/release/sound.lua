
U=152
G=131
k=255
H=180
s=math
R=s.max
au=s.min
abs=s.abs
S=s.floor
sqrt=s.sqrt
i=input.getNumber
ag=input.getBool
aZ=output.setNumber
pi=s.pi
aD=false
al=true
Z=table.remove
an=string
function aB(c,n)return{(c[1]+n[1]),(c[2]+n[2])}end
function bu(c,n)return c[1]*n[2]-c[2]*n[1]end
function sub(c,n)return{(c[1]-n[1]),(c[2]-n[2])}end
function bk(c,n)return{c[1]*n,c[2]*n}end
function bD(c)return((c+H)%360)-H end
function sin(c)return s.sin(c/H*pi)end
function cos(c)return s.cos(c/H*pi)end
function tan(c)return s.tan(c/H*pi)end
function bA(c)return s.atan(c)*H/pi end
function bB(c)return s.atan(c[2],c[1])*H/pi end
function bc(c,n,br)return au(R(n,c),br)end
function ap(c)return S(c+.5)end
function by(c,n)return sqrt(((c[1]-n[1])^2)+((c[2]-n[2])^2))end
function ba(c)return{c[1],-c[2]}end
function bC(c)c=c-1
c=c|(c>>1)c=c|(c>>2)c=c|(c>>4)return c+1
end
a={}az=1
aa=3
W=aD
C={{0,0},0,0}av=288
D=av//2
F=128
aq=F//2
aW=1.2
aT={1,1}aP=1
af=1
aa=3
aK=500
r=100
bl=100
aL=0
V=0
P=0
N=0
aC=3002
bb=32768
v={}aQ=.05
A={}ae={}bo=2
ar=35
ah=0
aO=0
at=0
L=1
aI=0
am=0
Y=0
ad=al
function aS(b,c)if b<bb then
M=a[7][b]return aS(M[0<bu({M[3],M[4]},sub(c,M))and 8 or 7],c)else
return b-bb
end
end
function bd(c)M=a[5][a[6][c][2]]return a[8][a[3][a[2][M[4]][M[5]+6]][6]]end
function aA(h,u,ao,ax)local E,o=w.drawLine,w.setColor
ao=ao..""
ax=a[19][ax]for b=#ao,1,-1 do
_=ax[an.byte(an.sub(ao,b,b))]h=h-ax[1]if _>0 then
d=a[23][_]q,j=d[1],d[2]x=h-d[4]+1
ak=u-d[5]for g=0,q-1 do
for f=0,j-1 do
l=d[7+f+g*j]if l~=0 then
e=a[20][l]o(e[1],e[2],e[3])E(x+g,ak+f,x+g,ak+f+1)end
end
end
end
end
end
function p(aU,aV,ai,m)m=m or{59,59,59}w.setColor(13,0,0)w.drawText(aU+1,aV+1,ai)w.setColor(m[1],m[2],m[3])w.drawText(aU,aV,ai)end
function onTick()aI=0
for g=1,3 do
if ag(9)and(not W)or not a[21]then
aE=property.getText(az)b=1
t=""
_=an.sub(aE,b,b)while _~=""do
K=an.byte(_)if K>64 then
t=(t..K-65)+0
if L==1 then
b_=t
a[t]=a[t]or{}elseif L==2 then
bv=t
X=0
elseif L==3 then
aH=t
else
if X==0 then
X=bv
aH=aH-1
aJ={}a[b_][#a[b_]+1]=aJ
end
aJ[#aJ+1]=t
X=X-1
L=R(X,aH)>0 and L-1 or 0
end
L=L+1
t=""
else
t=t.._
end
b=b+1
_=an.sub(aE,b,b)end
az=az+1
W=aE==""
end
end
if W then
if i(10)>0 then
ad=al
aa=i(10)end
aO=aO+1
a[12][1][aO%#a[12][1]+1]=ap(i(11))am=a[12][1][17]if r>0 and not ad then
Q={}aj[#aj+1]=Q
ac=6
_=i(ac)while _~=0 do
z={}Q[#Q+1]=z
for b=0,8 do
z[b+1]=i(ac+b)end
ac=ac+9
_=i(ac)end
end
if ag(1)then
if ad then
for b=1,10 do
a[b]=a[b+10*aa]end
aa=aa+1
ad=aD
for b=#a[1],1,-1 do
_=a[1][b]_=_[5]&(aC-3000)>0 or Z(a[1],b)end
for b=1,#a[8]do
a[8][b][8]={}end
for b=1,#a[6]do
_=bd(b)_[8][#_[8]+1]=b
end
aj={}end
V=V-1
if r>0 then
if T~=i(1)and i(1)>0 then
v={}_={}_[1]=a[29][i(1)]_[2]=a[16][_[1][3]]bz=_[2][1]_[3]=0
v[1]=_
end
T=i(1)aG=ag(3)if aG and T==5 then
if Y<=0 then
Y=7
else
aG=false
end
end
Y=Y-1
if aG then
_=v[1]_[2]=a[16][_[1][4]]_[3]=-1
y=a[19][6][T]if y>0 then
A[#A+1]={y,1}end
end
end
for b=#v,1,-1 do
_=v[b]if _[3]==0 then
if _[2][3]==4 then
if T==5 and Y<5 then
bg=1
else
bg=0
end
v[#v+1]={_[1],a[16][_[1][5]+bg],2}end
end
_[3]=_[3]+1
if _[3]>=_[2][2]then
if _[2][4]>2 then
_[2]=a[16][_[2][4]]_[3]=0
else
Z(v,b)end
end
end
if ad then
P=50
end
N=R(N-4,0)N=bc(N+(r-i(3)+aL-i(4))*3,0,k)P=R(P-1.5,0)r=i(3)aL,bj,bh,be=i(4)if i(2)>0 and r>0 then
_=a[2][i(2)]if _ then
if _[4]==3008 then
bf=_[5]>0 and S(_[5])be=al
elseif _[4]>3004 then
aK=R(aK+3*(_[4]-3006),1)bh=al
elseif _[4]>3000 then
aC=_[4]bj=al
elseif _[4]>=14 and _[4]<=16 then
if a[12][1][_[4]]==0 then
V=ar*4
aR=_[4]-14+3
end
end
end
end
for b=1,#aj do
Q=aj[b]for g=1,#Q do
z=Q[g]_=z[1]if _>(2^15)then
_=a[8][_-(2^15)]for f=1,6 do
_[f]=z[f+1]end
elseif _<0 then
K=a[1][-_]if K then
z=K[6]if a[16][z][5]>0 then
P=R(P,15)V=ar*4
aR=a[16][z][5]A[#A+1]={"item pickup sound index",1}if K[4]then
bt=a[15][K[4]]if bt[29]==a[19][13][1]then
for f=1,#a[2]do
a[2][f][8]=a[2][f][8]or 1
end
end
end
end
end
while-_>#a[1]do
a[1][#a[1]+1]=aD
end
Z(a[1],-_)else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for f=1,8 do
_[a[19][1][f]]=z[f+1]end
_[15]=0
end
end
end
aj={}_=a[1][1]C[1]={_[1],_[2]}C[3]=_[3]bq=aS(#a[7],C[1])as=bd(bq)C[2]=as[1]+41
bp=au(as[5]/k,1)^1.3
for b=1,#as[8]do
_=a[6][as[8][b]]for g=_[2],_[1]+_[2]-1 do
bw=a[5][g]bs=a[2][bw[4]]bs[8]=2
end
end
aX=ag(2)if i(12)>0 and r>0 then
A[#A+1]={i(12),1}end
ah=ah-1
at=at-1
if not aT[T]then
aT[T]=1
at=70
end
aF=(4-au(r//20,4))*8
if r<=0 then
af=41
elseif at>0 then
af=aF+6
elseif r<bl then
ah=ar
af=aF+7
elseif ah<=0 then
ah=16
aP=aP%256+1
af=aF+a[13][1][aP]%3
end
bl=r
end
for b=#A,1,-1 do
y=A[b]_=a[18][y[1]]if ag(1)then
B=_[y[2]]y[2]=y[2]+4
else
B=_[y[2]+2]end
if B and B>0 then
ae[#ae+1]={B,1}end
if y[2]>=#_ then
Z(A,b)end
end
for b=1,32 do
aZ(b,0)end
for b=#ae,1,-1 do
B=ae[b]aZ(b+3,bc(ap((B[1]+12)//2),1,60))B[2]=B[2]+1
if B[2]>bo then
Z(ae,b)end
end
end
end
function onDraw()w=screen
local ab,o,E,ai=w.drawRectF,w.setColor,w.drawLine,w.drawText
aI=aI+1
if a[21]and not W then
d=a[25][1]q,j=d[1],d[2]h,u=D-q/2,80-j/2
for f=0,q-1 do
x=h+f
for O=0,j-1 do
l=d[5+O+f*j]if l~=0 then
e=a[20][l]o(e[1],e[2],e[3])E(x,u+O,x,u+O+1)end
end
end
end
if not aX then
for b=1,#v do
d=v[b][2][1]aM=d>0 and bp or 1
d=a[17][abs(d)][1]d=a[23][d]q,j,aN=d[1],d[2],d[3]*.7
bi=aN*aW
h,u=D-(d[4]+160)*.7,F-(d[5]+148)*.7*aW
for f=0,q-1 do
x=h+f*aN
for O=0,j-1 do
l=d[7+O+f*j]if l~=0 then
e=a[20][l]o(e[1]*aM,e[2]*aM,e[3]*aM)ab(x,u+O*bi,aN,bi)end
end
end
end
end
if W then
if aX then
o(0,0,0)ab(0,0,av,F)for b=1,#a[2]do
_=a[2][b]if _[8]then
I=aB(ba(bk(sub(a[4][_[1]],C[1]),aQ)),{D,aq})J=aB(ba(bk(sub(a[4][_[2]],C[1]),aQ)),{D,aq})if _[8]==1 then
o(0,50,0)elseif _[3]&4>0 then
o(50,50,50)else
o(k,k,k)end
E(I[1],I[2],J[1],J[2])end
end
o(k,k,k)_=a[19][10]for b=1,#_,4 do
aw=sin(C[3]-90)ay=cos(C[3]-90)I={_[b]*ay+_[b+1]*aw,_[b+1]*ay-_[b]*aw}J={_[b+2]*ay+_[b+3]*aw,_[b+3]*ay-_[b+2]*aw}I=aB(I,{D,aq})J=aB(J,{D,aq})E(I[1],I[2],J[1],J[2])end
end
o(k,N>0 and 0 or k,0,N+P)ab(0,0,av,F)o(30,30,30)ab(0,F,av,32)o(5,5,5)ab(D-16,F,32,32)d=a[23]["face textures start"+(af)*"number of sprite mipmap levels"]q,j=d[1],d[2]h=D-q/2
for b=0,q-1 do
for g=0,j-1 do
l=d[7+g+b*j]if l~=0 then
e=a[20][l]o(e[1],e[2],e[3])E(h+b,F+1+g,h+b,F+2+g)end
end
end
for b=1,3 do
if a[12][1][13+b]>0 then
h,u=221,125+b*8
d=a[23]["key textures start"+a[19][5][b]*"number of sprite mipmap levels"]q,j=d[1],d[2]for g=0,q-1 do
for f=0,j-1 do
l=d[7+f+g*j]if l~=0 then
e=a[20][l]o(e[1],e[2],e[3])E(h+g,u+f,h+g,u+f+1)end
end
end
end
end
if V>0 then
aY=a[13][aR]h=0
u=0
for bn=1,#aY do
_=aY[bn]if _>0 then
d=a[23][_]q,j=d[1],d[2]x=h-d[4]ak=u-d[5]for b=0,q-1 do
for g=0,j-1 do
l=d[7+g+b*j]if l~=0 then
e=a[20][l]o(e[1],e[2],e[3])E(x+b,ak+g,x+b,ak+g+1)end
end
end
h=h+q
else
h=h+4
end
end
end
aA(124,G,S(r).."%",16)aA(218,G,S(aL).."%",16)p(124-28-15,U,"HEALTH")p(218-28-15,U,"ARMOUR")m=(am<ar and am>0)and{k,0,0}p(2,G,"TPS:",m)p(26,G,am>0 and am or "N/A",m)m=bj and{k,k,44}p(2,138,"DIF:",m)bm={"EASY","MED","HARD"}p(26,138,bm[S(au(aC-3000,3))],m)m=bh and{k,k,44}p(2,145,"LOD:",m)p(26,145,S(aK),m)m=be and{k,k,44}p(2,U,"TEX:",m)bx={"FULL","HALF"}p(26,U,bf and bx[bf]or "OFF",m)p(232,G,"BULL")p(232,138,"SHEL")p(232,145,"ROKT")p(232,U,"CELL")for b=1,4 do
c=124+b*7
aA(265,c,ap(a[12][1][b]),15)aA(285,c,ap(a[19][17][b]),15)p(268,c,"/")end
else
ai(1,G,"ROM:")ai(26,G,az)end
end
