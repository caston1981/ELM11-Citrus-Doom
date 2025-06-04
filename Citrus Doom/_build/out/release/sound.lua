
Q=131
f=255
I=180
aA=true
aU=false
aR=input
aE=table.remove
s=math
J=s.max
ap=s.min
abs=s.abs
Y=s.floor
sqrt=s.sqrt
l=aR.getNumber
al=aR.getBool
bc=output.setNumber
pi=s.pi
at=aU
aJ=aA
aa=string
function af(c,i)return{(c[1]+i[1]),(c[2]+i[2])}end
function bg(c,i)return c[1]*i[2]-c[2]*i[1]end
function sub(c,i)return{(c[1]-i[1]),(c[2]-i[2])}end
function aX(c,i)return{c[1]*i,c[2]*i}end
function bs(c)return((c+I)%360)-I end
function sin(c)return s.sin(c/I*pi)end
function cos(c)return s.cos(c/I*pi)end
function tan(c)return s.tan(c/I*pi)end
function bo(c)return s.atan(c)*I/pi end
function bt(c)return s.atan(c[2],c[1])*I/pi end
function aT(c,i,bj)return ap(J(i,c),bj)end
function am(c)return Y(c+.5)end
function br(c,i)return sqrt(((c[1]-i[1])^2)+((c[2]-i[2])^2))end
function b_(c)return{c[1],-c[2]}end
function bn(c)c=c-1
c=c|(c>>1)c=c|(c>>2)c=c|(c>>4)return c+1
end
a={}an=1
T=3
Z=at
x={{0,0},0,0}ah=288
w=ah//2
B=128
ag=B//2
aW=1.2
aM={1,1}ay=1
V=1
T=3
aq=400
v=100
aP=100
au=0
ao=0
L=0
M=0
aL=3002
W={}aY=32768
t={}aI=.05
D={}aD=3
N=0
ar=0
aj=0
F=1
aH=0
U=0
R=aJ
function aO(b,c)if b<aY then
y=a[7][b]return aO(y[0<bg({y[3],y[4]},sub(c,y))and 8 or 7],c)else
return b-aY
end
end
function aN(c)y=a[5][a[6][c][2]]return a[8][a[3][a[2][y[4]][y[5]+6]][6]]end
function aS(n,z,ad,ae)local r,g=G.drawRectF,G.setColor
ad=ad..""
ae=a[19][ae]for b=#ad,1,-1 do
_=ae[aa.byte(aa.sub(ad,b,b))]n=n-ae[1]if _>0 then
d=a[23][_]p,m=d[1],d[2]H=n-d[4]+1
aF=z-d[5]for j=0,p-1 do
for k=0,m-1 do
o=d[7+k+j*m]if o~=0 then
e=a[20][o]g(e[1],e[2],e[3])r(H+j,aF+k,1,1)end
end
end
end
end
end
function onTick()aH=0
for j=1,3 do
if al(9)and(not Z)or not a[21]then
as=property.getText(an)b=1
q=""
_=aa.sub(as,b,b)while _~=""do
A=aa.byte(_)if A>64 then
q=(q..A-65)+0
if F==1 then
bb=q
a[q]=a[q]or{}elseif F==2 then
bd=q
X=0
elseif F==3 then
aG=q
else
if X==0 then
X=bd
aG=aG-1
av={}a[bb][#a[bb]+1]=av
end
av[#av+1]=q
X=X-1
F=J(X,aG)>0 and F-1 or 0
end
F=F+1
q=""
else
q=q.._
end
b=b+1
_=aa.sub(as,b,b)end
an=an+1
Z=as==""
end
end
if Z then
ar=ar+1
a[12][1][ar%#a[12][1]+1]=am(l(10))if v>0 and not R then
K={}W[#W+1]=K
O=5
_=l(O)while _~=0 do
u={}K[#K+1]=u
for b=0,8 do
u[b+1]=l(O+b)end
O=O+9
_=l(O)end
end
if al(1)then
if R then
for b=1,10 do
a[b]=a[b+10*T]end
T=T+1
R=at
for b=1,#a[1]do
_=a[1][b]end
for b=1,#a[8]do
a[8][b][8]={}end
for b=1,#a[6]do
_=aN(b)_[8][#_[8]+1]=b
end
end
if l(9)>0 then
R=aJ
T=l(9)end
ao=ao-1
if v>0 then
if S~=l(1)and l(1)>0 then
t={}_={}_[1]=a[29][l(1)]_[2]=a[16][_[1][3]]bp=_[2][1]_[3]=0
t[1]=_
end
S=l(1)aC=al(3)if aC and S==5 then
if U<=0 then
U=7
else
aC=aU
end
end
U=U-1
if aC then
_=t[1]_[2]=a[16][_[1][4]]_[3]=-1
D[#D+1]={1,1}end
end
for b=#t,1,-1 do
_=t[b]if _[3]==0 then
if _[2][3]==4 then
if S==5 and U<5 then
ba=1
else
ba=0
end
t[#t+1]={_[1],a[16][_[1][5]+ba],2}end
end
_[3]=_[3]+1
if _[3]>=_[2][2]then
if _[2][4]>2 then
_[2]=a[16][_[2][4]]_[3]=0
else
aE(t,b)end
end
end
for b=1,32 do
bc(b,0)end
for b=#D,1,-1 do
P=D[b]_=a[18][P[1]]for j=0,aD-1 do
ax=_[(P[2]+j)*2-1]if ax and ax>0 then
bc(2+(b-1)*aD+j,aT(am((ax+12)//2),1,60))end
end
P[2]=P[2]+2
if P[2]>=aD+#_ then
aE(D,b)end
end
if R then
L=50
end
M=J(M-4,0)M=aT(M+(v-l(3)+au-l(4))*3,0,f)L=J(L-1.5,0)v=l(3)au=l(4)if l(2)>0 then
_=a[2][l(2)]if _ then
if _[4]>3004 and _[4]<3008 then
aq=J(aq+3*(_[4]-3006),1)elseif _[4]>3000 then
aL=_[4]end
end
end
for b=1,#W do
K=W[b]for j=1,#K do
u=K[j]_=u[1]if _>(2^15)then
_=a[8][_-(2^15)]for k=1,6 do
_[k]=u[k+1]end
elseif _<0 then
if-_<=#a[1]then
A=a[1][-_]if A~=nil then
u=A[6]if a[16][u][5]>0 then
L=J(L,15)ao=35
bh=a[16][u][5]D[#D+1]={a[19][11][1],1}if A[4]then
bk=a[15][A[4]]if bk[29]==a[19][13][1]then
for k=1,#a[2]do
a[2][k][8]=aA
end
end
end
end
else
a[1][-_]={}end
while-_>#a[1]do
a[1][#a[1]+1]=at
end
aE(a[1],-_)end
else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for k=1,8 do
_[a[19][1][k]]=u[k+1]end
_[15]=0
end
end
end
W={}_=a[1][1]x[1]={_[1],_[2]}x[3]=_[3]bi=aO(#a[7],x[1])ac=aN(bi)x[2]=ac[1]+41
bl=ap(ac[5]/f,1)^1.3
for b=1,#ac[8]do
_=a[6][ac[8][b]]for j=_[2],_[1]+_[2]-1 do
bf=a[5][j]bm=a[2][bf[4]]bm[8]=aA
end
end
aV=al(2)N=N-1
aj=aj-1
if not aM[S]then
aM[S]=1
aj=70
end
aB=(4-ap(v//20,4))*8
if v<=0 then
V=41
elseif aj>0 then
V=aB+6
elseif v<aP then
N=35
V=aB+7
elseif N<=0 then
N=16
ay=ay%256+1
V=aB+a[13][1][ay]%3
end
aP=v
end
end
end
function onDraw()G=screen
local bq,r,g,h,aK=G.drawTriangleF,G.drawRectF,G.setColor,G.drawText,G.drawLine
aH=aH+1
if a[21]and not Z then
d=a[25][1]p,m=d[1],d[2]n,z=w-p/2,80-m/2
for k=0,p-1 do
H=n+k
for ab=0,m-1 do
o=d[5+ab+k*m]if o~=0 then
e=a[20][o]g(e[1],e[2],e[3])r(H,z+ab,1,1)end
end
end
end
if not aV then
for b=1,#t do
d=t[b][2][1]aw=d>0 and bl or 1
d=a[17][abs(d)][1]d=a[23][d]p,m,az=d[1],d[2],d[3]*.7
aZ=az*aW
n,z=w-(d[4]+160)*.7,B-(d[5]+148)*.7*aW
for k=0,p-1 do
H=n+k*az
for ab=0,m-1 do
o=d[7+ab+k*m]if o~=0 then
e=a[20][o]g(e[1]*aw,e[2]*aw,e[3]*aw)r(H,z+ab*aZ,az,aZ)end
end
end
end
end
if Z then
if aV then
g(0,0,0)r(0,0,ah,B)for b=1,#a[2]do
_=a[2][b]if _[8]then
C=af(b_(aX(sub(a[4][_[1]],x[1]),aI)),{w,ag})E=af(b_(aX(sub(a[4][_[2]],x[1]),aI)),{w,ag})if _[3]&4>0 then
g(50,50,50)else
g(f,f,f)end
aK(C[1],C[2],E[1],E[2])end
end
g(f,f,f)_=a[19][10]for b=1,#_,4 do
ak=sin(x[3]-90)ai=cos(x[3]-90)C={_[b]*ai+_[b+1]*ak,_[b+1]*ai-_[b]*ak}E={_[b+2]*ai+_[b+3]*ak,_[b+3]*ai-_[b+2]*ak}C=af(C,{w,ag})E=af(E,{w,ag})aK(C[1],C[2],E[1],E[2])end
end
g(f,M>0 and 0 or f,0,M+L)r(0,0,ah,B)g(50,50,50)r(0,B,ah,32)g(25,25,25)r(w-16,B,32,32)d=a[23][a[19][3][1]+(V)*a[19][3][3]]p,m=d[1],d[2]n=w-p/2
for b=0,p-1 do
for j=0,m-1 do
o=d[7+j+b*m]if o~=0 then
e=a[20][o]g(e[1],e[2],e[3])r(n+b,B+1+j,1,1)end
end
end
for b=5,7 do
if a[12][1][9+b]>0 then
_=a[19][b]g(_[1],_[2],_[3])r(199,95+b*7,6,7)end
end
if ao>0 then
aQ=a[13][bh]n=0
z=0
for be=1,#aQ do
_=aQ[be]if _>0 then
d=a[23][_]p,m=d[1],d[2]H=n-d[4]aF=z-d[5]for b=0,p-1 do
for j=0,m-1 do
o=d[7+j+b*m]if o~=0 then
e=a[20][o]g(e[1],e[2],e[3])r(H+b,aF+j,1,1)end
end
end
n=n+p
else
n=n+4
end
end
end
g(f,f,f)h(100,Q,Y(v))h(100,137,Y(au))h(67,Q,"HEALTH")h(67,137,"ARMOUR")h(1,143,"DIF:")h(1,149,"LOD:")h(217,Q,"BULL")h(217,138,"SHEL")h(217,145,"ROKT")h(217,152,"CELL")h(26,149,Y(aq))h(26,143,Y(ap(aL-3000,3)))for b=1,4 do
c=124+b*7
aS(250,c,am(a[12][1][b]),15)aS(271,c,am(a[19][17][b]),15)g(f,f,f)h(254,c,"/")end
g(f,f,f)end
h(1,Q,"ROM:")h(26,Q,an)h(1,137,"TPS:")end
