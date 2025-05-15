bd=""

g=255
z=180
aG=true
aA=false
aC=input
aB=table.remove
j=math
E=j.max
ad=j.min
abs=j.abs
T=j.floor
sqrt=j.sqrt
f=aC.getNumber
X=aC.getBool
aW=output.setNumber
pi=j.pi
ah=aA
ao=aG
aj=string
function W(b,e)return{(b[1]+e[1]),(b[2]+e[2])}end
function aN(b,e)return b[1]*e[2]-b[2]*e[1]end
function sub(b,e)return{(b[1]-e[1]),(b[2]-e[2])}end
function aw(b,e)return{b[1]*e,b[2]*e}end
function ba(b)return((b+z)%360)-z end
function sin(b)return j.sin(b/z*pi)end
function cos(b)return j.cos(b/z*pi)end
function tan(b)return j.tan(b/z*pi)end
function aY(b)return j.atan(b)*z/pi end
function aZ(b)return j.atan(b[2],b[1])*z/pi end
function aP(b,e,aS)return ad(E(e,b),aS)end
function aX(b)return T(b+.5)end
function aV(b,e)return sqrt(((b[1]-e[1])^2)+((b[2]-e[2])^2))end
function aF(b)return{b[1],-b[2]}end
function b_(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
a={}V=1
O=3
K=ah
aa=1
q={{0,0},0,0}ab=288
p=ab//2
y=128
ac=y//2
ay=1.2
aI={1,1}am=1
v=1
O=3
ag=400
A=100
H=0
F=0
ax=3002
L={}aK=32768
m={}az=.05
aa=0
u=1
U=0
M=0
S=ao
function as(c,b)if c<aK then
w=a[7][c]return as(w[0<aN({w[3],w[4]},sub(b,w))and 8 or 7],b)else
return c-aK
end
end
function aD(b)w=a[5][a[6][b][2]]return a[8][a[3][a[2][w[4]][w[5]+6]][6]]end
function onTick()U=0
for B=1,3 do
if X(9)and(not K)or not a[21]then
al=property.getText(V..bd)if al~=bd then
c=1
i=bd
_=aj.sub(al,c,c)while _~=bddo
au=aj.byte(_)if au>64 or _==bdthen
i=(i..(au-65))+0
if u==1then
av=i
if a[i]==bc then
a[i]={}end
u=2
elseif u==2then
aM=i
N=0
u=3
elseif u==3then
aq=i
u=4
else
if N==0then
N=aM
aq=aq-1
ai={}a[av][#a[av]+1]=ai
end
ai[#ai+1]=i
N=N-1
if E(N,aq)==0then
u=1
end
end
i=bd
else
i=i.._
end
c=c+1
_=aj.sub(al,c,c)end
V=V+1
else
K=ao
end
end
end
if K then
if A>0 and not S then
G={}L[#L+1]=G
P=5
_=f(P)while _~=0 do
t={}G[#G+1]=t
for c=0,8 do
t[c+1]=f(P+c)end
P=P+9
_=f(P)end
end
if X(1)then
aa=aa+1
if S then
for c=1,10 do
a[c]=a[c+10*O]end
O=O+1
S=ah
for c=1,#a[1]do
_=a[1][c]end
for c=1,#a[8]do
a[8][c][8]={}end
for c=1,#a[6]do
_=aD(c)_[8][#_[8]+1]=c
end
end
if f(9)>0 then
S=ao
O=f(9)end
if A>0 then
if Q~=f(1)and f(1)>0then
m={}_={}_[1]=a[29][f(1)]_[2]=a[16][_[1][3]]aU=_[2][1]_[3]=0
m[1]=_
end
Q=f(1)an=X(3)if an and Q==5 then
if M<=0 then
M=7
else
an=aA
end
end
M=M-1
if an then
_=m[1]_[2]=a[16][_[1][4]]_[3]=-1
end
end
for c=#m,1,-1 do
_=m[c]if _[3]==0 then
if _[2][3]==4 then
if Q==5 and M<5 then
aJ=1
else
aJ=0
end
m[#m+1]={_[1],a[16][_[1][5]+aJ],2}end
end
_[3]=_[3]+1
if _[3]>=_[2][2]then
if _[2][4]>2 then
_[2]=a[16][_[2][4]]_[3]=0
else
aB(m,c)end
end
end
if S then
H=50
end
F=E(F-4,0)F=aP(F+(A-f(3))*3,0,g)H=E(H-1.5,0)A=f(3)aQ=f(4)if f(2)>0 then
_=a[2][f(2)]if _ then
if _[4]>3004 and _[4]<3008 then
ag=E(ag+3*(_[4]-3006),1)elseif _[4]>3000 then
ax=_[4]end
end
end
for c=1,#L do
G=L[c]for B=1,#G do
t=G[B]_=t[1]if _>(2^15)then
_=a[8][_-(2^15)]for k=1,6 do
_[k]=t[k+1]end
elseif _<0 then
if-_<=#a[1]then
if a[1][-_]~=nil then
t=a[1][-_][6]if a[16][t][5]>0 then
H=E(H,15)end
else
a[1][-_]={}end
while-_>#a[1]do
a[1][#a[1]+1]=ah
end
aB(a[1],-_)end
else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for k=1,8 do
_[a[19][1][k]]=t[k+1]end
_[15]=0
end
end
end
L={}_=a[1][1]q[1]={_[1],_[2]}q[3]=_[3]aL=as(#a[7],q[1])Y=aD(aL)q[2]=Y[1]+41
aO=ad(Y[5]/g,1)^1.3
for c=1,#Y[8]do
_=a[6][Y[8][c]]for B=_[2],_[1]+_[2]-1 do
aR=a[5][B]aT=a[2][aR[4]]aT[8]=aG
end
end
aH=X(2)if aa%16==1 then
am=am%256+1
v=(4-ad(A//20,4))*8
if aI[Q]then
v=v+a[13][1][am]%3
else
aI[Q]=1
v=v+6
end
if A<=0 then
v=41
end
end
end
end
end
function onDraw()R=screen
local bb,s,h,o,at=R.drawTriangleF,R.drawRectF,R.setColor,R.drawText,R.drawLine
U=U+1
if U<=1 then
if a[21]and not K then
d=a[25][1]x,n=d[1],d[2]J,ar=p-x/2,80-n/2
for k=0,x-1 do
ap=J+k
for I=0,n-1 do
r=d[5+I+k*n]if r~=0 then
l=a[20][r]h(l[1],l[2],l[3])s(ap,ar+I,1,1)end
end
end
end
if not aH then
for c=1,#m do
d=m[c][2][1]ak=d>0 and aO or 1
d=a[17][abs(d)][1]d=a[23][d]x,n,af=d[1],d[2],d[3]*.7
aE=af*ay
J,ar=p-(d[4]+160)*.7,y-(d[5]+148)*.7*ay
for k=0,x-1 do
ap=J+k*af
for I=0,n-1 do
r=d[7+I+k*n]if r~=0 then
l=a[20][r]h(l[1]*ak,l[2]*ak,l[3]*ak)s(ap,ar+I*aE,af,aE)end
end
end
end
end
if K then
if aH then
h(0,0,0)s(0,0,ab,y)for c=1,#a[2]do
_=a[2][c]if _[8]then
C=W(aF(aw(sub(a[4][_[1]],q[1]),az)),{p,ac})D=W(aF(aw(sub(a[4][_[2]],q[1]),az)),{p,ac})if _[3]&4>0 then
h(50,50,50)else
h(g,g,g)end
at(C[1],C[2],D[1],D[2])end
end
h(g,g,g)_=a[19][10]for c=1,#_,4 do
Z=sin(q[3]-90)ae=cos(q[3]-90)C={_[c]*ae+_[c+1]*Z,_[c+1]*ae-_[c]*Z}D={_[c+2]*ae+_[c+3]*Z,_[c+3]*ae-_[c+2]*Z}C=W(C,{p,ac})D=W(D,{p,ac})at(C[1],C[2],D[1],D[2])end
end
h(g,F>0 and 0 or g,0,F+H)s(0,0,ab,y)h(50,50,50)s(0,y,ab,32)h(25,25,25)s(p-16,y,32,32)d=a[23][a[19][3][1]+v]x,n=d[1],d[2]J=p-x/2
for c=0,x-1 do
for B=0,n-1 do
r=d[7+B+c*n]if r~=0 then
l=a[20][r]h(l[1],l[2],l[3])s(J+c,y+1+B,1,1)end
end
end
for c=5,7 do
_=a[19][c]h(_[1],_[2],_[3])s(229,95+c*7,6,7)end
h(g,g,g)o(100,131,T(A))o(100,137,T(aQ))o(1,143,"DIF:")o(1,149,"LOD:")o(26,149,T(ag))o(26,143,ad(ax-3000,3))end
o(1,131,"ROM:")o(26,131,V)o(1,137,"TPS:")end
end
