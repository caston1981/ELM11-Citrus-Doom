bj=""

g=255
y=180
aL=true
aQ=false
aH=input
an=table.remove
l=math
E=l.max
ac=l.min
abs=l.abs
T=l.floor
sqrt=l.sqrt
f=aH.getNumber
af=aH.getBool
aE=output.setNumber
pi=l.pi
aq=aQ
aF=aL
as=string
function ad(c,e)return{(c[1]+e[1]),(c[2]+e[2])}end
function aX(c,e)return c[1]*e[2]-c[2]*e[1]end
function sub(c,e)return{(c[1]-e[1]),(c[2]-e[2])}end
function aJ(c,e)return{c[1]*e,c[2]*e}end
function bi(c)return((c+y)%360)-y end
function sin(c)return l.sin(c/y*pi)end
function cos(c)return l.cos(c/y*pi)end
function tan(c)return l.tan(c/y*pi)end
function bh(c)return l.atan(c)*y/pi end
function bf(c)return l.atan(c[2],c[1])*y/pi end
function aP(c,e,aW)return ac(E(e,c),aW)end
function aV(c)return T(c+.5)end
function bc(c,e)return sqrt(((c[1]-e[1])^2)+((c[2]-e[2])^2))end
function aT(c)return{c[1],-c[2]}end
function bg(c)c=c-1
c=c|(c>>1)c=c|(c>>2)c=c|(c>>4)return c+1
end
a={}ah=1
R=3
U=aq
u={{0,0},0,0}ag=288
s=ag//2
A=128
Y=A//2
aB=1.2
aC={1,1}aj=1
O=1
R=3
ax=400
o=100
aG=100
G=0
F=0
az=3002
M={}aO=32768
n={}aI=.05
B={}at=3
K=0
Z=0
C=1
ab=0
S=0
W=aF
function aD(b,c)if b<aO then
w=a[7][b]return aD(w[0<aX({w[3],w[4]},sub(c,w))and 8 or 7],c)else
return b-aO
end
end
function aS(c)w=a[5][a[6][c][2]]return a[8][a[3][a[2][w[4]][w[5]+6]][6]]end
function onTick()ab=0
for m=1,3 do
if af(9)and(not U)or not a[21]then
al=property.getText(ah)b=1
j=bj
_=as.sub(al,b,b)while _~=bjdo
aK=as.byte(_)if aK>64then
j=(j..aK-65)+0
if C==1then
ay=j
a[j]=a[j]or{}elseif C==2then
aZ=j
I=0
elseif C==3then
ar=j
else
if I==0then
I=aZ
ar=ar-1
ak={}a[ay][#a[ay]+1]=ak
end
ak[#ak+1]=j
I=I-1
C=E(I,ar)>0 and C-1 or 0
end
C=C+1
j=bj
else
j=j.._
end
b=b+1
_=as.sub(al,b,b)end
ah=ah+1
U=al==bj
end
end
if U then
if o>0 and not W then
H={}M[#M+1]=H
J=5
_=f(J)while _~=0 do
t={}H[#H+1]=t
for b=0,8 do
t[b+1]=f(J+b)end
J=J+9
_=f(J)end
end
if af(1)then
if W then
for b=1,10 do
a[b]=a[b+10*R]end
R=R+1
W=aq
for b=1,#a[1]do
_=a[1][b]end
for b=1,#a[8]do
a[8][b][8]={}end
for b=1,#a[6]do
_=aS(b)_[8][#_[8]+1]=b
end
end
if f(9)>0 then
W=aF
R=f(9)end
if o>0 then
if N~=f(1)and f(1)>0then
n={}_={}_[1]=a[29][f(1)]_[2]=a[16][_[1][3]]bd=_[2][1]_[3]=0
n[1]=_
end
N=f(1)au=af(3)if au and N==5 then
if S<=0 then
S=7
else
au=aQ
end
end
S=S-1
if au then
_=n[1]_[2]=a[16][_[1][4]]_[3]=-1
B[#B+1]={1,1}end
end
for b=#n,1,-1 do
_=n[b]if _[3]==0 then
if _[2][3]==4 then
if N==5 and S<5 then
aA=1
else
aA=0
end
n[#n+1]={_[1],a[16][_[1][5]+aA],2}end
end
_[3]=_[3]+1
if _[3]>=_[2][2]then
if _[2][4]>2 then
_[2]=a[16][_[2][4]]_[3]=0
else
an(n,b)end
end
end
for b=1,32 do
aE(b,0)end
for b=#B,1,-1 do
L=B[b]_=a[18][L[1]]for m=0,at-1 do
aw=_[(L[2]+m)*2-1]if aw and aw>0 then
aE(2+(b-1)*at+m,aP(aV((aw+12)//2),1,60))end
end
L[2]=L[2]+2
if L[2]>=at+#_ then
an(B,b)end
end
if W then
G=50
end
F=E(F-4,0)F=aP(F+(o-f(3))*3,0,g)G=E(G-1.5,0)o=f(3)aU=f(4)if f(2)>0 then
_=a[2][f(2)]if _ then
if _[4]>3004 and _[4]<3008 then
ax=E(ax+3*(_[4]-3006),1)elseif _[4]>3000 then
az=_[4]end
end
end
for b=1,#M do
H=M[b]for m=1,#H do
t=H[m]_=t[1]if _>(2^15)then
_=a[8][_-(2^15)]for i=1,6 do
_[i]=t[i+1]end
elseif _<0 then
if-_<=#a[1]then
if a[1][-_]~=nil then
t=a[1][-_][6]if a[16][t][5]>0 then
G=E(G,15)B[#B+1]={a[19][11][1],1}end
else
a[1][-_]={}end
while-_>#a[1]do
a[1][#a[1]+1]=aq
end
an(a[1],-_)end
else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for i=1,8 do
_[a[19][1][i]]=t[i+1]end
_[15]=0
end
end
end
M={}_=a[1][1]u[1]={_[1],_[2]}u[3]=_[3]ba=aD(#a[7],u[1])aa=aS(ba)u[2]=aa[1]+41
b_=ac(aa[5]/g,1)^1.3
for b=1,#aa[8]do
_=a[6][aa[8][b]]for m=_[2],_[1]+_[2]-1 do
aY=a[5][m]bb=a[2][aY[4]]bb[8]=aL
end
end
aN=af(2)K=K-1
Z=Z-1
if not aC[N]then
aC[N]=1
Z=70
end
av=(4-ac(o//20,4))*8
if o<=0 then
O=41
elseif Z>0 then
O=av+6
elseif o<aG then
K=35
O=av+7
elseif K<=0 then
K=16
aj=aj%256+1
O=av+a[13][1][aj]%3
end
aG=o
end
end
end
function onDraw()P=screen
local be,r,h,q,aR=P.drawTriangleF,P.drawRectF,P.setColor,P.drawText,P.drawLine
ab=ab+1
if ab<=1 then
if a[21]and not U then
d=a[25][1]x,p=d[1],d[2]Q,ai=s-x/2,80-p/2
for i=0,x-1 do
ap=Q+i
for V=0,p-1 do
v=d[5+V+i*p]if v~=0 then
k=a[20][v]h(k[1],k[2],k[3])r(ap,ai+V,1,1)end
end
end
end
if not aN then
for b=1,#n do
d=n[b][2][1]am=d>0 and b_ or 1
d=a[17][abs(d)][1]d=a[23][d]x,p,ao=d[1],d[2],d[3]*.7
aM=ao*aB
Q,ai=s-(d[4]+160)*.7,A-(d[5]+148)*.7*aB
for i=0,x-1 do
ap=Q+i*ao
for V=0,p-1 do
v=d[7+V+i*p]if v~=0 then
k=a[20][v]h(k[1]*am,k[2]*am,k[3]*am)r(ap,ai+V*aM,ao,aM)end
end
end
end
end
if U then
if aN then
h(0,0,0)r(0,0,ag,A)for b=1,#a[2]do
_=a[2][b]if _[8]then
z=ad(aT(aJ(sub(a[4][_[1]],u[1]),aI)),{s,Y})D=ad(aT(aJ(sub(a[4][_[2]],u[1]),aI)),{s,Y})if _[3]&4>0 then
h(50,50,50)else
h(g,g,g)end
aR(z[1],z[2],D[1],D[2])end
end
h(g,g,g)_=a[19][10]for b=1,#_,4 do
ae=sin(u[3]-90)X=cos(u[3]-90)z={_[b]*X+_[b+1]*ae,_[b+1]*X-_[b]*ae}D={_[b+2]*X+_[b+3]*ae,_[b+3]*X-_[b+2]*ae}z=ad(z,{s,Y})D=ad(D,{s,Y})aR(z[1],z[2],D[1],D[2])end
end
h(g,F>0 and 0 or g,0,F+G)r(0,0,ag,A)h(50,50,50)r(0,A,ag,32)h(25,25,25)r(s-16,A,32,32)d=a[23][a[19][3][1]+O]x,p=d[1],d[2]Q=s-x/2
for b=0,x-1 do
for m=0,p-1 do
v=d[7+m+b*p]if v~=0 then
k=a[20][v]h(k[1],k[2],k[3])r(Q+b,A+1+m,1,1)end
end
end
for b=5,7 do
_=a[19][b]h(_[1],_[2],_[3])r(229,95+b*7,6,7)end
h(g,g,g)q(100,131,T(o))q(100,137,T(aU))q(1,143,"DIF:")q(1,149,"LOD:")q(26,149,T(ax))q(26,143,T(ac(az-3000,3)))end
q(1,131,"ROM:")q(26,131,ah)q(1,137,"TPS:")end
end
