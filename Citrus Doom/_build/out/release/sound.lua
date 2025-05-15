bc=""

g=255
D=180
aB=true
ar=false
aJ=input
ay=table.remove
l=math
F=l.max
W=l.min
abs=l.abs
Y=l.floor
sqrt=l.sqrt
f=aJ.getNumber
V=aJ.getBool
aU=output.setNumber
pi=l.pi
af=ar
aD=aB
ao=string
function ae(b,e)return{(b[1]+e[1]),(b[2]+e[2])}end
function aN(b,e)return b[1]*e[2]-b[2]*e[1]end
function sub(b,e)return{(b[1]-e[1]),(b[2]-e[2])}end
function aH(b,e)return{b[1]*e,b[2]*e}end
function aX(b)return((b+D)%360)-D end
function sin(b)return l.sin(b/D*pi)end
function cos(b)return l.cos(b/D*pi)end
function tan(b)return l.tan(b/D*pi)end
function aY(b)return l.atan(b)*D/pi end
function b_(b)return l.atan(b[2],b[1])*D/pi end
function aR(b,e,aP)return W(F(e,b),aP)end
function aZ(b)return Y(b+.5)end
function ba(b,e)return sqrt(((b[1]-e[1])^2)+((b[2]-e[2])^2))end
function au(b)return{b[1],-b[2]}end
function bb(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
a={}X=1
P=3
R=af
Z=1
t={{0,0},0,0}aa=288
q=aa//2
u=128
ac=u//2
aE=1.2
as={1,1}an=1
z=1
P=3
ah=400
v=100
H=0
G=0
aw=3002
Q={}aF=32768
m={}aC=.05
Z=0
y=1
ad=0
S=0
M=aD
function ax(c,b)if c<aF then
w=a[7][c]return ax(w[0<aN({w[3],w[4]},sub(b,w))and 8 or 7],b)else
return c-aF
end
end
function aA(b)w=a[5][a[6][b][2]]return a[8][a[3][a[2][w[4]][w[5]+6]][6]]end
function onTick()ad=0
for A=1,3 do
if V(9)and(not R)or not a[21]then
ag=property.getText(X)c=1
k=bc
_=ao.sub(ag,c,c)while _~=bcdo
at=ao.byte(_)if at>64then
k=(k..at-65)+0
if y==1then
av=k
a[k]=a[k]or{}elseif y==2then
aS=k
N=0
elseif y==3then
aj=k
else
if N==0then
N=aS
aj=aj-1
ak={}a[av][#a[av]+1]=ak
end
ak[#ak+1]=k
N=N-1
y=F(N,aj)>0 and y-1 or 0
end
y=y+1
k=bc
else
k=k.._
end
c=c+1
_=ao.sub(ag,c,c)end
X=X+1
R=ag==bc
end
end
if R then
if v>0 and not M then
E={}Q[#Q+1]=E
L=5
_=f(L)while _~=0 do
p={}E[#E+1]=p
for c=0,8 do
p[c+1]=f(L+c)end
L=L+9
_=f(L)end
end
if V(1)then
Z=Z+1
if M then
for c=1,10 do
a[c]=a[c+10*P]end
P=P+1
M=af
for c=1,#a[1]do
_=a[1][c]end
for c=1,#a[8]do
a[8][c][8]={}end
for c=1,#a[6]do
_=aA(c)_[8][#_[8]+1]=c
end
end
if f(9)>0 then
M=aD
P=f(9)end
if v>0 then
if O~=f(1)and f(1)>0then
m={}_={}_[1]=a[29][f(1)]_[2]=a[16][_[1][3]]aW=_[2][1]_[3]=0
m[1]=_
end
O=f(1)ai=V(3)if ai and O==5 then
if S<=0 then
S=7
else
ai=ar
end
end
S=S-1
if ai then
_=m[1]_[2]=a[16][_[1][4]]_[3]=-1
end
end
for c=#m,1,-1 do
_=m[c]if _[3]==0 then
if _[2][3]==4 then
if O==5 and S<5 then
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
ay(m,c)end
end
end
if M then
H=50
end
G=F(G-4,0)G=aR(G+(v-f(3))*3,0,g)H=F(H-1.5,0)v=f(3)aO=f(4)if f(2)>0 then
_=a[2][f(2)]if _ then
if _[4]>3004 and _[4]<3008 then
ah=F(ah+3*(_[4]-3006),1)elseif _[4]>3000 then
aw=_[4]end
end
end
for c=1,#Q do
E=Q[c]for A=1,#E do
p=E[A]_=p[1]if _>(2^15)then
_=a[8][_-(2^15)]for j=1,6 do
_[j]=p[j+1]end
elseif _<0 then
if-_<=#a[1]then
if a[1][-_]~=nil then
p=a[1][-_][6]if a[16][p][5]>0 then
H=F(H,15)end
else
a[1][-_]={}end
while-_>#a[1]do
a[1][#a[1]+1]=af
end
ay(a[1],-_)end
else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for j=1,8 do
_[a[19][1][j]]=p[j+1]end
_[15]=0
end
end
end
Q={}_=a[1][1]t[1]={_[1],_[2]}t[3]=_[3]aL=ax(#a[7],t[1])T=aA(aL)t[2]=T[1]+41
aQ=W(T[5]/g,1)^1.3
for c=1,#T[8]do
_=a[6][T[8][c]]for A=_[2],_[1]+_[2]-1 do
aT=a[5][A]aM=a[2][aT[4]]aM[8]=aB
end
end
az=V(2)if Z%16==1 then
an=an%256+1
z=(4-W(v//20,4))*8
if as[O]then
z=z+a[13][1][an]%3
else
as[O]=1
z=z+6
end
if v<=0 then
z=41
end
end
end
end
end
function onDraw()I=screen
local aV,r,h,n,aG=I.drawTriangleF,I.drawRectF,I.setColor,I.drawText,I.drawLine
ad=ad+1
if ad<=1 then
if a[21]and not R then
d=a[25][1]x,o=d[1],d[2]K,ap=q-x/2,80-o/2
for j=0,x-1 do
aq=K+j
for J=0,o-1 do
s=d[5+J+j*o]if s~=0 then
i=a[20][s]h(i[1],i[2],i[3])r(aq,ap+J,1,1)end
end
end
end
if not az then
for c=1,#m do
d=m[c][2][1]al=d>0 and aQ or 1
d=a[17][abs(d)][1]d=a[23][d]x,o,am=d[1],d[2],d[3]*.7
aI=am*aE
K,ap=q-(d[4]+160)*.7,u-(d[5]+148)*.7*aE
for j=0,x-1 do
aq=K+j*am
for J=0,o-1 do
s=d[7+J+j*o]if s~=0 then
i=a[20][s]h(i[1]*al,i[2]*al,i[3]*al)r(aq,ap+J*aI,am,aI)end
end
end
end
end
if R then
if az then
h(0,0,0)r(0,0,aa,u)for c=1,#a[2]do
_=a[2][c]if _[8]then
C=ae(au(aH(sub(a[4][_[1]],t[1]),aC)),{q,ac})B=ae(au(aH(sub(a[4][_[2]],t[1]),aC)),{q,ac})if _[3]&4>0 then
h(50,50,50)else
h(g,g,g)end
aG(C[1],C[2],B[1],B[2])end
end
h(g,g,g)_=a[19][10]for c=1,#_,4 do
ab=sin(t[3]-90)U=cos(t[3]-90)C={_[c]*U+_[c+1]*ab,_[c+1]*U-_[c]*ab}B={_[c+2]*U+_[c+3]*ab,_[c+3]*U-_[c+2]*ab}C=ae(C,{q,ac})B=ae(B,{q,ac})aG(C[1],C[2],B[1],B[2])end
end
h(g,G>0 and 0 or g,0,G+H)r(0,0,aa,u)h(50,50,50)r(0,u,aa,32)h(25,25,25)r(q-16,u,32,32)d=a[23][a[19][3][1]+z]x,o=d[1],d[2]K=q-x/2
for c=0,x-1 do
for A=0,o-1 do
s=d[7+A+c*o]if s~=0 then
i=a[20][s]h(i[1],i[2],i[3])r(K+c,u+1+A,1,1)end
end
end
for c=5,7 do
_=a[19][c]h(_[1],_[2],_[3])r(229,95+c*7,6,7)end
h(g,g,g)n(100,131,Y(v))n(100,137,Y(aO))n(1,143,"DIF:")n(1,149,"LOD:")n(26,149,Y(ah))n(26,143,W(aw-3000,3))end
n(1,131,"ROM:")n(26,131,X)n(1,137,"TPS:")end
end
