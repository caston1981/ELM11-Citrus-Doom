bp=""

M=131
j=255
y=180
aD=true
aH=false
aQ=input
ap=table.remove
p=math
H=p.max
ai=p.min
abs=p.abs
T=p.floor
sqrt=p.sqrt
g=aQ.getNumber
ah=aQ.getBool
aG=output.setNumber
pi=p.pi
ax=aH
aS=aD
az=string
function ab(c,e)return{(c[1]+e[1]),(c[2]+e[2])}end
function ba(c,e)return c[1]*e[2]-c[2]*e[1]end
function sub(c,e)return{(c[1]-e[1]),(c[2]-e[2])}end
function aF(c,e)return{c[1]*e,c[2]*e}end
function bi(c)return((c+y)%360)-y end
function sin(c)return p.sin(c/y*pi)end
function cos(c)return p.cos(c/y*pi)end
function tan(c)return p.tan(c/y*pi)end
function bk(c)return p.atan(c)*y/pi end
function bo(c)return p.atan(c[2],c[1])*y/pi end
function aM(c,e,be)return ai(H(e,c),be)end
function bf(c)return T(c+.5)end
function bm(c,e)return sqrt(((c[1]-e[1])^2)+((c[2]-e[2])^2))end
function aB(c)return{c[1],-c[2]}end
function bn(c)c=c-1
c=c|(c>>1)c=c|(c>>2)c=c|(c>>4)return c+1
end
a={}ak=1
Z=3
R=ax
x={{0,0},0,0}ag=288
w=ag//2
z=128
aj=z//2
aJ=1.2
aC={1,1}at=1
U=1
Z=3
aq=400
t=100
aN=100
ar=0
ac=0
G=0
I=0
aO=3002
Y={}aV=32768
r={}aR=.05
C={}an=3
X=0
af=0
B=1
ay=0
W=0
J=aS
function aP(b,c)if b<aV then
E=a[7][b]return aP(E[0<ba({E[3],E[4]},sub(c,E))and 8 or 7],c)else
return b-aV
end
end
function aL(c)E=a[5][a[6][c][2]]return a[8][a[3][a[2][E[4]][E[5]+6]][6]]end
function onTick()ay=0
for k=1,3 do
if ah(9)and(not R)or not a[21]then
au=property.getText(ak)b=1
n=bp
_=az.sub(au,b,b)while _~=bpdo
aK=az.byte(_)if aK>64then
n=(n..aK-65)+0
if B==1then
aW=n
a[n]=a[n]or{}elseif B==2then
aY=n
Q=0
elseif B==3then
al=n
else
if Q==0then
Q=aY
al=al-1
av={}a[aW][#a[aW]+1]=av
end
av[#av+1]=n
Q=Q-1
B=H(Q,al)>0 and B-1 or 0
end
B=B+1
n=bp
else
n=n.._
end
b=b+1
_=az.sub(au,b,b)end
ak=ak+1
R=au==bp
end
end
if R then
if t>0 and not J then
F={}Y[#Y+1]=F
V=5
_=g(V)while _~=0 do
u={}F[#F+1]=u
for b=0,8 do
u[b+1]=g(V+b)end
V=V+9
_=g(V)end
end
if ah(1)then
if J then
for b=1,10 do
a[b]=a[b+10*Z]end
Z=Z+1
J=ax
for b=1,#a[1]do
_=a[1][b]end
for b=1,#a[8]do
a[8][b][8]={}end
for b=1,#a[6]do
_=aL(b)_[8][#_[8]+1]=b
end
end
if g(9)>0 then
J=aS
Z=g(9)end
ac=ac-1
if t>0 then
if N~=g(1)and g(1)>0then
r={}_={}_[1]=a[29][g(1)]_[2]=a[16][_[1][3]]bl=_[2][1]_[3]=0
r[1]=_
end
N=g(1)aA=ah(3)if aA and N==5 then
if W<=0 then
W=7
else
aA=aH
end
end
W=W-1
if aA then
_=r[1]_[2]=a[16][_[1][4]]_[3]=-1
C[#C+1]={1,1}end
end
for b=#r,1,-1 do
_=r[b]if _[3]==0 then
if _[2][3]==4 then
if N==5 and W<5 then
aE=1
else
aE=0
end
r[#r+1]={_[1],a[16][_[1][5]+aE],2}end
end
_[3]=_[3]+1
if _[3]>=_[2][2]then
if _[2][4]>2 then
_[2]=a[16][_[2][4]]_[3]=0
else
ap(r,b)end
end
end
for b=1,32 do
aG(b,0)end
for b=#C,1,-1 do
S=C[b]_=a[18][S[1]]for k=0,an-1 do
am=_[(S[2]+k)*2-1]if am and am>0 then
aG(2+(b-1)*an+k,aM(bf((am+12)//2),1,60))end
end
S[2]=S[2]+2
if S[2]>=an+#_ then
ap(C,b)end
end
if J then
G=50
end
I=H(I-4,0)I=aM(I+(t-g(3)+ar-g(4))*3,0,j)G=H(G-1.5,0)t=g(3)ar=g(4)if g(2)>0 then
_=a[2][g(2)]if _ then
if _[4]>3004 and _[4]<3008 then
aq=H(aq+3*(_[4]-3006),1)elseif _[4]>3000 then
aO=_[4]end
end
end
for b=1,#Y do
F=Y[b]for k=1,#F do
u=F[k]_=u[1]if _>(2^15)then
_=a[8][_-(2^15)]for q=1,6 do
_[q]=u[q+1]end
elseif _<0 then
if-_<=#a[1]then
if a[1][-_]~=nil then
u=a[1][-_][6]if a[16][u][5]>0 then
G=H(G,15)ac=35
bh=a[16][u][5]C[#C+1]={a[19][11][1],1}end
else
a[1][-_]={}end
while-_>#a[1]do
a[1][#a[1]+1]=ax
end
ap(a[1],-_)end
else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for q=1,8 do
_[a[19][1][q]]=u[q+1]end
_[15]=0
end
end
end
Y={}_=a[1][1]x[1]={_[1],_[2]}x[3]=_[3]aZ=aP(#a[7],x[1])ad=aL(aZ)x[2]=ad[1]+41
bg=ai(ad[5]/j,1)^1.3
for b=1,#ad[8]do
_=a[6][ad[8][b]]for k=_[2],_[1]+_[2]-1 do
bb=a[5][k]bc=a[2][bb[4]]bc[8]=aD
end
end
aT=ah(2)X=X-1
af=af-1
if not aC[N]then
aC[N]=1
af=70
end
as=(4-ai(t//20,4))*8
if t<=0 then
U=41
elseif af>0 then
U=as+6
elseif t<aN then
X=35
U=as+7
elseif X<=0 then
X=16
at=at%256+1
U=as+a[13][1][at]%3
end
aN=t
end
end
end
function onDraw()K=screen
local bj,v,i,h,aI=K.drawTriangleF,K.drawRectF,K.setColor,K.drawText,K.drawLine
ay=ay+1
if a[21]and not R then
d=a[25][1]s,l=d[1],d[2]o,O=w-s/2,80-l/2
for q=0,s-1 do
L=o+q
for P=0,l-1 do
m=d[5+P+q*l]if m~=0 then
f=a[20][m]i(f[1],f[2],f[3])v(L,O+P,1,1)end
end
end
end
if not aT then
for b=1,#r do
d=r[b][2][1]aw=d>0 and bg or 1
d=a[17][abs(d)][1]d=a[23][d]s,l,ao=d[1],d[2],d[3]*.7
aX=ao*aJ
o,O=w-(d[4]+160)*.7,z-(d[5]+148)*.7*aJ
for q=0,s-1 do
L=o+q*ao
for P=0,l-1 do
m=d[7+P+q*l]if m~=0 then
f=a[20][m]i(f[1]*aw,f[2]*aw,f[3]*aw)v(L,O+P*aX,ao,aX)end
end
end
end
end
if R then
if aT then
i(0,0,0)v(0,0,ag,z)for b=1,#a[2]do
_=a[2][b]if _[8]then
A=ab(aB(aF(sub(a[4][_[1]],x[1]),aR)),{w,aj})D=ab(aB(aF(sub(a[4][_[2]],x[1]),aR)),{w,aj})if _[3]&4>0 then
i(50,50,50)else
i(j,j,j)end
aI(A[1],A[2],D[1],D[2])end
end
i(j,j,j)_=a[19][10]for b=1,#_,4 do
aa=sin(x[3]-90)ae=cos(x[3]-90)A={_[b]*ae+_[b+1]*aa,_[b+1]*ae-_[b]*aa}D={_[b+2]*ae+_[b+3]*aa,_[b+3]*ae-_[b+2]*aa}A=ab(A,{w,aj})D=ab(D,{w,aj})aI(A[1],A[2],D[1],D[2])end
end
i(j,I>0 and 0 or j,0,I+G)v(0,0,ag,z)i(50,50,50)v(0,z,ag,32)i(25,25,25)v(w-16,z,32,32)d=a[23][a[19][3][1]+(U)*a[19][3][3]]s,l=d[1],d[2]o=w-s/2
for b=0,s-1 do
for k=0,l-1 do
m=d[7+k+b*l]if m~=0 then
f=a[20][m]i(f[1],f[2],f[3])v(o+b,z+1+k,1,1)end
end
end
for b=5,7 do
_=a[19][b]i(_[1],_[2],_[3])v(199,95+b*7,6,7)end
if ac>0 then
aU=a[13][bh]o=0
O=0
for b_=1,#aU do
_=aU[b_]if _>0 then
d=a[23][_]s,l=d[1],d[2]L=o+d[4]bd=O-d[5]for b=0,s-1 do
for k=0,l-1 do
m=d[7+k+b*l]if m~=0 then
f=a[20][m]i(f[1],f[2],f[3])v(L+b,bd+k,1,1)end
end
end
o=o+s
else
o=o+4
end
end
end
i(j,j,j)h(100,M,T(t))h(100,137,T(ar))h(67,M,"HEALTH")h(67,137,"ARMOUR")h(1,143,"DIF:")h(1,149,"LOD:")h(217,M,"BULL")h(217,138,"SHEL")h(217,145,"ROKT")h(217,152,"CELL")h(26,149,T(aq))h(26,143,T(ai(aO-3000,3)))end
h(1,M,"ROM:")h(26,M,ak)h(1,137,"TPS:")end
