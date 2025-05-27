bj=""

g=255
D=180
ay=true
aE=false
aG=input
at=table.remove
j=math
E=j.max
ae=j.min
abs=j.abs
M=j.floor
sqrt=j.sqrt
f=aG.getNumber
X=aG.getBool
aO=output.setNumber
pi=j.pi
ai=aE
aJ=ay
au=string
function Z(c,e)return{(c[1]+e[1]),(c[2]+e[2])}end
function aY(c,e)return c[1]*e[2]-c[2]*e[1]end
function sub(c,e)return{(c[1]-e[1]),(c[2]-e[2])}end
function aQ(c,e)return{c[1]*e,c[2]*e}end
function bi(c)return((c+D)%360)-D end
function sin(c)return j.sin(c/D*pi)end
function cos(c)return j.cos(c/D*pi)end
function tan(c)return j.tan(c/D*pi)end
function bd(c)return j.atan(c)*D/pi end
function bf(c)return j.atan(c[2],c[1])*D/pi end
function aN(c,e,ba)return ae(E(e,c),ba)end
function bb(c)return M(c+.5)end
function be(c,e)return sqrt(((c[1]-e[1])^2)+((c[2]-e[2])^2))end
function aF(c)return{c[1],-c[2]}end
function bg(c)c=c-1
c=c|(c>>1)c=c|(c>>2)c=c|(c>>4)return c+1
end
a={}af=1
O=3
Q=ai
t={{0,0},0,0}Y=288
s=Y//2
B=128
aa=B//2
aS=1.2
aP={1,1}aq=1
J=1
O=3
ax=400
p=100
aI=100
F=0
G=0
az=3002
N={}aA=32768
n={}aR=.05
y={}ak=3
R=0
ad=0
w=1
ap=0
W=0
I=aJ
function aB(b,c)if b<aA then
z=a[7][b]return aB(z[0<aY({z[3],z[4]},sub(c,z))and 8 or 7],c)else
return b-aA
end
end
function aK(c)z=a[5][a[6][c][2]]return a[8][a[3][a[2][z[4]][z[5]+6]][6]]end
function onTick()ap=0
for m=1,3 do
if X(9)and(not Q)or not a[21]then
am=property.getText(af)b=1
i=bj
_=au.sub(am,b,b)while _~=bjdo
aH=au.byte(_)if aH>64then
i=(i..aH-65)+0
if w==1then
aD=i
a[i]=a[i]or{}elseif w==2then
aU=i
S=0
elseif w==3then
ao=i
else
if S==0then
S=aU
ao=ao-1
av={}a[aD][#a[aD]+1]=av
end
av[#av+1]=i
S=S-1
w=E(S,ao)>0 and w-1 or 0
end
w=w+1
i=bj
else
i=i.._
end
b=b+1
_=au.sub(am,b,b)end
af=af+1
Q=am==bj
end
end
if Q then
if p>0 and not I then
H={}N[#N+1]=H
V=5
_=f(V)while _~=0 do
u={}H[#H+1]=u
for b=0,8 do
u[b+1]=f(V+b)end
V=V+9
_=f(V)end
end
if X(1)then
if I then
for b=1,10 do
a[b]=a[b+10*O]end
O=O+1
I=ai
for b=1,#a[1]do
_=a[1][b]end
for b=1,#a[8]do
a[8][b][8]={}end
for b=1,#a[6]do
_=aK(b)_[8][#_[8]+1]=b
end
end
if f(9)>0 then
I=aJ
O=f(9)end
if p>0 then
if K~=f(1)and f(1)>0then
n={}_={}_[1]=a[29][f(1)]_[2]=a[16][_[1][3]]bc=_[2][1]_[3]=0
n[1]=_
end
K=f(1)al=X(3)if al and K==5 then
if W<=0 then
W=7
else
al=aE
end
end
W=W-1
if al then
_=n[1]_[2]=a[16][_[1][4]]_[3]=-1
y[#y+1]={1,1}end
end
for b=#n,1,-1 do
_=n[b]if _[3]==0 then
if _[2][3]==4 then
if K==5 and W<5 then
aT=1
else
aT=0
end
n[#n+1]={_[1],a[16][_[1][5]+aT],2}end
end
_[3]=_[3]+1
if _[3]>=_[2][2]then
if _[2][4]>2 then
_[2]=a[16][_[2][4]]_[3]=0
else
at(n,b)end
end
end
for b=1,32 do
aO(b,0)end
for b=#y,1,-1 do
T=y[b]_=a[18][T[1]]for m=0,ak-1 do
aj=_[(T[2]+m)*2-1]if aj and aj>0 then
aO(2+(b-1)*ak+m,aN(bb((aj+12)//2),1,60))end
end
T[2]=T[2]+2
if T[2]>=ak+#_ then
at(y,b)end
end
if I then
F=50
end
G=E(G-4,0)G=aN(G+(p-f(3))*3,0,g)F=E(F-1.5,0)p=f(3)b_=f(4)if f(2)>0 then
_=a[2][f(2)]if _ then
if _[4]>3004 and _[4]<3008 then
ax=E(ax+3*(_[4]-3006),1)elseif _[4]>3000 then
az=_[4]end
end
end
for b=1,#N do
H=N[b]for m=1,#H do
u=H[m]_=u[1]if _>(2^15)then
_=a[8][_-(2^15)]for k=1,6 do
_[k]=u[k+1]end
elseif _<0 then
if-_<=#a[1]then
if a[1][-_]~=nil then
u=a[1][-_][6]if a[16][u][5]>0 then
F=E(F,15)y[#y+1]={a[19][11][1],1}end
else
a[1][-_]={}end
while-_>#a[1]do
a[1][#a[1]+1]=ai
end
at(a[1],-_)end
else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for k=1,8 do
_[a[19][1][k]]=u[k+1]end
_[15]=0
end
end
end
N={}_=a[1][1]t[1]={_[1],_[2]}t[3]=_[3]aV=aB(#a[7],t[1])ab=aK(aV)t[2]=ab[1]+41
aX=ae(ab[5]/g,1)^1.3
for b=1,#ab[8]do
_=a[6][ab[8][b]]for m=_[2],_[1]+_[2]-1 do
aZ=a[5][m]aW=a[2][aZ[4]]aW[8]=ay
end
end
aM=X(2)R=R-1
ad=ad-1
if not aP[K]then
aP[K]=1
ad=70
end
ah=(4-ae(p//20,4))*8
if p<=0 then
J=41
elseif ad>0 then
J=ah+6
elseif p<aI then
R=35
J=ah+7
elseif R<=0 then
R=16
aq=aq%256+1
J=ah+a[13][1][aq]%3
end
aI=p
end
end
end
function onDraw()L=screen
local bh,v,h,o,aL=L.drawTriangleF,L.drawRectF,L.setColor,L.drawText,L.drawLine
ap=ap+1
if a[21]and not Q then
d=a[25][1]A,q=d[1],d[2]U,aw=s-A/2,80-q/2
for k=0,A-1 do
an=U+k
for P=0,q-1 do
r=d[5+P+k*q]if r~=0 then
l=a[20][r]h(l[1],l[2],l[3])v(an,aw+P,1,1)end
end
end
end
if not aM then
for b=1,#n do
d=n[b][2][1]as=d>0 and aX or 1
d=a[17][abs(d)][1]d=a[23][d]A,q,ar=d[1],d[2],d[3]*.7
aC=ar*aS
U,aw=s-(d[4]+160)*.7,B-(d[5]+148)*.7*aS
for k=0,A-1 do
an=U+k*ar
for P=0,q-1 do
r=d[7+P+k*q]if r~=0 then
l=a[20][r]h(l[1]*as,l[2]*as,l[3]*as)v(an,aw+P*aC,ar,aC)end
end
end
end
end
if Q then
if aM then
h(0,0,0)v(0,0,Y,B)for b=1,#a[2]do
_=a[2][b]if _[8]then
x=Z(aF(aQ(sub(a[4][_[1]],t[1]),aR)),{s,aa})C=Z(aF(aQ(sub(a[4][_[2]],t[1]),aR)),{s,aa})if _[3]&4>0 then
h(50,50,50)else
h(g,g,g)end
aL(x[1],x[2],C[1],C[2])end
end
h(g,g,g)_=a[19][10]for b=1,#_,4 do
ac=sin(t[3]-90)ag=cos(t[3]-90)x={_[b]*ag+_[b+1]*ac,_[b+1]*ag-_[b]*ac}C={_[b+2]*ag+_[b+3]*ac,_[b+3]*ag-_[b+2]*ac}x=Z(x,{s,aa})C=Z(C,{s,aa})aL(x[1],x[2],C[1],C[2])end
end
h(g,G>0 and 0 or g,0,G+F)v(0,0,Y,B)h(50,50,50)v(0,B,Y,32)h(25,25,25)v(s-16,B,32,32)d=a[23][a[19][3][1]+J]A,q=d[1],d[2]U=s-A/2
for b=0,A-1 do
for m=0,q-1 do
r=d[7+m+b*q]if r~=0 then
l=a[20][r]h(l[1],l[2],l[3])v(U+b,B+1+m,1,1)end
end
end
for b=5,7 do
_=a[19][b]h(_[1],_[2],_[3])v(229,95+b*7,6,7)end
h(g,g,g)o(100,131,M(p))o(100,137,M(b_))o(1,143,"DIF:")o(1,149,"LOD:")o(26,149,M(ax))o(26,143,M(ae(az-3000,3)))end
o(1,131,"ROM:")o(26,131,af)o(1,137,"TPS:")end
