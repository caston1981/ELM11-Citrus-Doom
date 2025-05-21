bf=""

g=255
C=180
ax=true
aM=false
aB=input
at=table.remove
j=math
G=j.max
Z=j.min
abs=j.abs
I=j.floor
sqrt=j.sqrt
f=aB.getNumber
ab=aB.getBool
bd=output.setNumber
pi=j.pi
al=aM
aA=ax
ak=string
function Y(b,e)return{(b[1]+e[1]),(b[2]+e[2])}end
function aV(b,e)return b[1]*e[2]-b[2]*e[1]end
function sub(b,e)return{(b[1]-e[1]),(b[2]-e[2])}end
function au(b,e)return{b[1]*e,b[2]*e}end
function bb(b)return((b+C)%360)-C end
function sin(b)return j.sin(b/C*pi)end
function cos(b)return j.cos(b/C*pi)end
function tan(b)return j.tan(b/C*pi)end
function aZ(b)return j.atan(b)*C/pi end
function aY(b)return j.atan(b[2],b[1])*C/pi end
function aT(b,e,aP)return Z(G(e,b),aP)end
function aX(b)return I(b+.5)end
function ba(b,e)return sqrt(((b[1]-e[1])^2)+((b[2]-e[2])^2))end
function av(b)return{b[1],-b[2]}end
function bc(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
a={}aa=1
T=3
O=al
r={{0,0},0,0}af=288
u=af//2
B=128
ad=B//2
az=1.2
aN={1,1}as=1
H=1
T=3
ai=400
p=100
aw=100
F=0
D=0
aE=3002
P={}aL=32768
m={}ay=.05
J=0
X=0
x=1
ac=0
K=0
Q=aA
function aC(c,b)if c<aL then
z=a[7][c]return aC(z[0<aV({z[3],z[4]},sub(b,z))and 8 or 7],b)else
return c-aL
end
end
function aJ(b)z=a[5][a[6][b][2]]return a[8][a[3][a[2][z[4]][z[5]+6]][6]]end
function onTick()ac=0
for v=1,3 do
if ab(9)and(not O)or not a[21]then
ag=property.getText(aa)c=1
i=bf
_=ak.sub(ag,c,c)while _~=bfdo
aH=ak.byte(_)if aH>64then
i=(i..aH-65)+0
if x==1then
aI=i
a[i]=a[i]or{}elseif x==2then
aQ=i
R=0
elseif x==3then
am=i
else
if R==0then
R=aQ
am=am-1
ah={}a[aI][#a[aI]+1]=ah
end
ah[#ah+1]=i
R=R-1
x=G(R,am)>0 and x-1 or 0
end
x=x+1
i=bf
else
i=i.._
end
c=c+1
_=ak.sub(ag,c,c)end
aa=aa+1
O=ag==bf
end
end
if O then
if p>0 and not Q then
E={}P[#P+1]=E
M=5
_=f(M)while _~=0 do
t={}E[#E+1]=t
for c=0,8 do
t[c+1]=f(M+c)end
M=M+9
_=f(M)end
end
if ab(1)then
if Q then
for c=1,10 do
a[c]=a[c+10*T]end
T=T+1
Q=al
for c=1,#a[1]do
_=a[1][c]end
for c=1,#a[8]do
a[8][c][8]={}end
for c=1,#a[6]do
_=aJ(c)_[8][#_[8]+1]=c
end
end
if f(9)>0 then
Q=aA
T=f(9)end
if p>0 then
if S~=f(1)and f(1)>0then
m={}_={}_[1]=a[29][f(1)]_[2]=a[16][_[1][3]]be=_[2][1]_[3]=0
m[1]=_
end
S=f(1)ao=ab(3)if ao and S==5 then
if K<=0 then
K=7
else
ao=aM
end
end
K=K-1
if ao then
_=m[1]_[2]=a[16][_[1][4]]_[3]=-1
end
end
for c=#m,1,-1 do
_=m[c]if _[3]==0 then
if _[2][3]==4 then
if S==5 and K<5 then
aK=1
else
aK=0
end
m[#m+1]={_[1],a[16][_[1][5]+aK],2}end
end
_[3]=_[3]+1
if _[3]>=_[2][2]then
if _[2][4]>2 then
_[2]=a[16][_[2][4]]_[3]=0
else
at(m,c)end
end
end
if Q then
F=50
end
D=G(D-4,0)D=aT(D+(p-f(3))*3,0,g)F=G(F-1.5,0)p=f(3)aW=f(4)if f(2)>0 then
_=a[2][f(2)]if _ then
if _[4]>3004 and _[4]<3008 then
ai=G(ai+3*(_[4]-3006),1)elseif _[4]>3000 then
aE=_[4]end
end
end
for c=1,#P do
E=P[c]for v=1,#E do
t=E[v]_=t[1]if _>(2^15)then
_=a[8][_-(2^15)]for k=1,6 do
_[k]=t[k+1]end
elseif _<0 then
if-_<=#a[1]then
if a[1][-_]~=nil then
t=a[1][-_][6]if a[16][t][5]>0 then
F=G(F,15)end
else
a[1][-_]={}end
while-_>#a[1]do
a[1][#a[1]+1]=al
end
at(a[1],-_)end
else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for k=1,8 do
_[a[19][1][k]]=t[k+1]end
_[15]=0
end
end
end
P={}_=a[1][1]r[1]={_[1],_[2]}r[3]=_[3]aS=aC(#a[7],r[1])V=aJ(aS)r[2]=V[1]+41
aR=Z(V[5]/g,1)^1.3
for c=1,#V[8]do
_=a[6][V[8][c]]for v=_[2],_[1]+_[2]-1 do
aU=a[5][v]aO=a[2][aU[4]]aO[8]=ax
end
end
aG=ab(2)J=J-1
X=X-1
if not aN[S]then
aN[S]=1
X=70
end
ar=(4-Z(p//20,4))*8
if p<=0 then
H=41
elseif X>0 then
H=ar+6
elseif p<aw then
J=35
H=ar+7
elseif J<=0 then
J=16
as=as%256+1
H=ar+a[13][1][as]%3
end
aw=p
end
end
end
function onDraw()L=screen
local b_,q,h,n,aD=L.drawTriangleF,L.drawRectF,L.setColor,L.drawText,L.drawLine
ac=ac+1
if ac<=1 then
if a[21]and not O then
d=a[25][1]A,o=d[1],d[2]N,ap=u-A/2,80-o/2
for k=0,A-1 do
aq=N+k
for U=0,o-1 do
s=d[5+U+k*o]if s~=0 then
l=a[20][s]h(l[1],l[2],l[3])q(aq,ap+U,1,1)end
end
end
end
if not aG then
for c=1,#m do
d=m[c][2][1]an=d>0 and aR or 1
d=a[17][abs(d)][1]d=a[23][d]A,o,aj=d[1],d[2],d[3]*.7
aF=aj*az
N,ap=u-(d[4]+160)*.7,B-(d[5]+148)*.7*az
for k=0,A-1 do
aq=N+k*aj
for U=0,o-1 do
s=d[7+U+k*o]if s~=0 then
l=a[20][s]h(l[1]*an,l[2]*an,l[3]*an)q(aq,ap+U*aF,aj,aF)end
end
end
end
end
if O then
if aG then
h(0,0,0)q(0,0,af,B)for c=1,#a[2]do
_=a[2][c]if _[8]then
w=Y(av(au(sub(a[4][_[1]],r[1]),ay)),{u,ad})y=Y(av(au(sub(a[4][_[2]],r[1]),ay)),{u,ad})if _[3]&4>0 then
h(50,50,50)else
h(g,g,g)end
aD(w[1],w[2],y[1],y[2])end
end
h(g,g,g)_=a[19][10]for c=1,#_,4 do
W=sin(r[3]-90)ae=cos(r[3]-90)w={_[c]*ae+_[c+1]*W,_[c+1]*ae-_[c]*W}y={_[c+2]*ae+_[c+3]*W,_[c+3]*ae-_[c+2]*W}w=Y(w,{u,ad})y=Y(y,{u,ad})aD(w[1],w[2],y[1],y[2])end
end
h(g,D>0 and 0 or g,0,D+F)q(0,0,af,B)h(50,50,50)q(0,B,af,32)h(25,25,25)q(u-16,B,32,32)d=a[23][a[19][3][1]+H]A,o=d[1],d[2]N=u-A/2
for c=0,A-1 do
for v=0,o-1 do
s=d[7+v+c*o]if s~=0 then
l=a[20][s]h(l[1],l[2],l[3])q(N+c,B+1+v,1,1)end
end
end
for c=5,7 do
_=a[19][c]h(_[1],_[2],_[3])q(229,95+c*7,6,7)end
h(g,g,g)n(100,131,I(p))n(100,137,I(aW))n(1,143,"DIF:")n(1,149,"LOD:")n(26,149,I(ai))n(26,143,I(Z(aE-3000,3)))end
n(1,131,"ROM:")n(26,131,aa)n(1,137,"TPS:")end
end
