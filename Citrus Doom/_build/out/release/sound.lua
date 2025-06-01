bp=""

Y=131
k=255
z=180
aW=true
aD=false
aI=input
au=table.remove
p=math
H=p.max
af=p.min
abs=p.abs
Q=p.floor
sqrt=p.sqrt
f=aI.getNumber
aj=aI.getBool
aQ=output.setNumber
pi=p.pi
av=aD
aK=aW
aq=string
function ai(c,e)return{(c[1]+e[1]),(c[2]+e[2])}end
function ba(c,e)return c[1]*e[2]-c[2]*e[1]end
function sub(c,e)return{(c[1]-e[1]),(c[2]-e[2])}end
function aJ(c,e)return{c[1]*e,c[2]*e}end
function bl(c)return((c+z)%360)-z end
function sin(c)return p.sin(c/z*pi)end
function cos(c)return p.cos(c/z*pi)end
function tan(c)return p.tan(c/z*pi)end
function bo(c)return p.atan(c)*z/pi end
function bk(c)return p.atan(c[2],c[1])*z/pi end
function aC(c,e,bb)return af(H(e,c),bb)end
function bc(c)return Q(c+.5)end
function bi(c,e)return sqrt(((c[1]-e[1])^2)+((c[2]-e[2])^2))end
function aX(c)return{c[1],-c[2]}end
function bj(c)c=c-1
c=c|(c>>1)c=c|(c>>2)c=c|(c>>4)return c+1
end
a={}ah=1
N=3
U=av
w={{0,0},0,0}ae=288
x=ae//2
D=128
ad=D//2
aS=1.2
aM={1,1}al=1
J=1
N=3
az=400
t=100
aE=100
ar=0
ac=0
I=0
F=0
aT=3002
V={}aU=32768
s={}aO=.05
A={}am=3
X=0
ag=0
B=1
at=0
S=0
O=aK
function aG(b,c)if b<aU then
y=a[7][b]return aG(y[0<ba({y[3],y[4]},sub(c,y))and 8 or 7],c)else
return b-aU
end
end
function aR(c)y=a[5][a[6][c][2]]return a[8][a[3][a[2][y[4]][y[5]+6]][6]]end
function onTick()at=0
for j=1,3 do
if aj(9)and(not U)or not a[21]then
an=property.getText(ah)b=1
q=bp
_=aq.sub(an,b,b)while _~=bpdo
aN=aq.byte(_)if aN>64 then
q=(q..aN-65)+0
if B==1 then
aP=q
a[q]=a[q]or{}elseif B==2 then
bg=q
K=0
elseif B==3 then
ay=q
else
if K==0 then
K=bg
ay=ay-1
ao={}a[aP][#a[aP]+1]=ao
end
ao[#ao+1]=q
K=K-1
B=H(K,ay)>0 and B-1 or 0
end
B=B+1
q=bp
else
q=q.._
end
b=b+1
_=aq.sub(an,b,b)end
ah=ah+1
U=an==bp
end
end
if U then
if t>0 and not O then
G={}V[#V+1]=G
T=5
_=f(T)while _~=0 do
u={}G[#G+1]=u
for b=0,8 do
u[b+1]=f(T+b)end
T=T+9
_=f(T)end
end
if aj(1)then
if O then
for b=1,10 do
a[b]=a[b+10*N]end
N=N+1
O=av
for b=1,#a[1]do
_=a[1][b]end
for b=1,#a[8]do
a[8][b][8]={}end
for b=1,#a[6]do
_=aR(b)_[8][#_[8]+1]=b
end
end
if f(9)>0 then
O=aK
N=f(9)end
ac=ac-1
if t>0 then
if P~=f(1)and f(1)>0 then
s={}_={}_[1]=a[29][f(1)]_[2]=a[16][_[1][3]]bn=_[2][1]_[3]=0
s[1]=_
end
P=f(1)as=aj(3)if as and P==5 then
if S<=0 then
S=7
else
as=aD
end
end
S=S-1
if as then
_=s[1]_[2]=a[16][_[1][4]]_[3]=-1
A[#A+1]={1,1}end
end
for b=#s,1,-1 do
_=s[b]if _[3]==0 then
if _[2][3]==4 then
if P==5 and S<5 then
aB=1
else
aB=0
end
s[#s+1]={_[1],a[16][_[1][5]+aB],2}end
end
_[3]=_[3]+1
if _[3]>=_[2][2]then
if _[2][4]>2 then
_[2]=a[16][_[2][4]]_[3]=0
else
au(s,b)end
end
end
for b=1,32 do
aQ(b,0)end
for b=#A,1,-1 do
L=A[b]_=a[18][L[1]]for j=0,am-1 do
aA=_[(L[2]+j)*2-1]if aA and aA>0 then
aQ(2+(b-1)*am+j,aC(bc((aA+12)//2),1,60))end
end
L[2]=L[2]+2
if L[2]>=am+#_ then
au(A,b)end
end
if O then
I=50
end
F=H(F-4,0)F=aC(F+(t-f(3)+ar-f(4))*3,0,k)I=H(I-1.5,0)t=f(3)ar=f(4)if f(2)>0 then
_=a[2][f(2)]if _ then
if _[4]>3004 and _[4]<3008 then
az=H(az+3*(_[4]-3006),1)elseif _[4]>3000 then
aT=_[4]end
end
end
for b=1,#V do
G=V[b]for j=1,#G do
u=G[j]_=u[1]if _>(2^15)then
_=a[8][_-(2^15)]for o=1,6 do
_[o]=u[o+1]end
elseif _<0 then
if-_<=#a[1]then
if a[1][-_]~=nil then
u=a[1][-_][6]if a[16][u][5]>0 then
I=H(I,15)ac=35
bf=a[16][u][5]A[#A+1]={a[19][11][1],1}end
else
a[1][-_]={}end
while-_>#a[1]do
a[1][#a[1]+1]=av
end
au(a[1],-_)end
else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for o=1,8 do
_[a[19][1][o]]=u[o+1]end
_[15]=0
end
end
end
V={}_=a[1][1]w[1]={_[1],_[2]}w[3]=_[3]bh=aG(#a[7],w[1])ak=aR(bh)w[2]=ak[1]+41
b_=af(ak[5]/k,1)^1.3
for b=1,#ak[8]do
_=a[6][ak[8][b]]for j=_[2],_[1]+_[2]-1 do
be=a[5][j]bd=a[2][be[4]]bd[8]=aW
end
end
aH=aj(2)X=X-1
ag=ag-1
if not aM[P]then
aM[P]=1
ag=70
end
ap=(4-af(t//20,4))*8
if t<=0 then
J=41
elseif ag>0 then
J=ap+6
elseif t<aE then
X=35
J=ap+7
elseif X<=0 then
X=16
al=al%256+1
J=ap+a[13][1][al]%3
end
aE=t
end
end
end
function onDraw()R=screen
local bm,v,i,h,aL=R.drawTriangleF,R.drawRectF,R.setColor,R.drawText,R.drawLine
at=at+1
if a[21]and not U then
d=a[25][1]r,l=d[1],d[2]m,W=x-r/2,80-l/2
for o=0,r-1 do
Z=m+o
for M=0,l-1 do
n=d[5+M+o*l]if n~=0 then
g=a[20][n]i(g[1],g[2],g[3])v(Z,W+M,1,1)end
end
end
end
if not aH then
for b=1,#s do
d=s[b][2][1]ax=d>0 and b_ or 1
d=a[17][abs(d)][1]d=a[23][d]r,l,aw=d[1],d[2],d[3]*.7
aV=aw*aS
m,W=x-(d[4]+160)*.7,D-(d[5]+148)*.7*aS
for o=0,r-1 do
Z=m+o*aw
for M=0,l-1 do
n=d[7+M+o*l]if n~=0 then
g=a[20][n]i(g[1]*ax,g[2]*ax,g[3]*ax)v(Z,W+M*aV,aw,aV)end
end
end
end
end
if U then
if aH then
i(0,0,0)v(0,0,ae,D)for b=1,#a[2]do
_=a[2][b]if _[8]then
C=ai(aX(aJ(sub(a[4][_[1]],w[1]),aO)),{x,ad})E=ai(aX(aJ(sub(a[4][_[2]],w[1]),aO)),{x,ad})if _[3]&4>0 then
i(50,50,50)else
i(k,k,k)end
aL(C[1],C[2],E[1],E[2])end
end
i(k,k,k)_=a[19][10]for b=1,#_,4 do
ab=sin(w[3]-90)aa=cos(w[3]-90)C={_[b]*aa+_[b+1]*ab,_[b+1]*aa-_[b]*ab}E={_[b+2]*aa+_[b+3]*ab,_[b+3]*aa-_[b+2]*ab}C=ai(C,{x,ad})E=ai(E,{x,ad})aL(C[1],C[2],E[1],E[2])end
end
i(k,F>0 and 0 or k,0,F+I)v(0,0,ae,D)i(50,50,50)v(0,D,ae,32)i(25,25,25)v(x-16,D,32,32)d=a[23][a[19][3][1]+(J)*a[19][3][3]]r,l=d[1],d[2]m=x-r/2
for b=0,r-1 do
for j=0,l-1 do
n=d[7+j+b*l]if n~=0 then
g=a[20][n]i(g[1],g[2],g[3])v(m+b,D+1+j,1,1)end
end
end
for b=5,7 do
_=a[19][b]i(_[1],_[2],_[3])v(199,95+b*7,6,7)end
if ac>0 then
aF=a[13][bf]m=0
W=0
for aZ=1,#aF do
_=aF[aZ]if _>0 then
d=a[23][_]r,l=d[1],d[2]Z=m+d[4]aY=W-d[5]for b=0,r-1 do
for j=0,l-1 do
n=d[7+j+b*l]if n~=0 then
g=a[20][n]i(g[1],g[2],g[3])v(Z+b,aY+j,1,1)end
end
end
m=m+r
else
m=m+4
end
end
end
i(k,k,k)h(100,Y,Q(t))h(100,137,Q(ar))h(67,Y,"HEALTH")h(67,137,"ARMOUR")h(1,143,"DIF:")h(1,149,"LOD:")h(217,Y,"BULL")h(217,138,"SHEL")h(217,145,"ROKT")h(217,152,"CELL")h(26,149,Q(az))h(26,143,Q(af(aT-3000,3)))end
h(1,Y,"ROM:")h(26,Y,ah)h(1,137,"TPS:")end
