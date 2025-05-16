bc=""

g=255
y=180
ax=true
aD=false
aE=input
ar=table.remove
i=math
G=i.max
U=i.min
abs=i.abs
W=i.floor
sqrt=i.sqrt
f=aE.getNumber
T=aE.getBool
aZ=output.setNumber
pi=i.pi
aj=aD
ay=ax
ao=string
function ae(b,e)return{(b[1]+e[1]),(b[2]+e[2])}end
function aM(b,e)return b[1]*e[2]-b[2]*e[1]end
function sub(b,e)return{(b[1]-e[1]),(b[2]-e[2])}end
function au(b,e)return{b[1]*e,b[2]*e}end
function aX(b)return((b+y)%360)-y end
function sin(b)return i.sin(b/y*pi)end
function cos(b)return i.cos(b/y*pi)end
function tan(b)return i.tan(b/y*pi)end
function b_(b)return i.atan(b)*y/pi end
function aU(b)return i.atan(b[2],b[1])*y/pi end
function aP(b,e,aT)return U(G(e,b),aT)end
function aY(b)return W(b+.5)end
function aW(b,e)return sqrt(((b[1]-e[1])^2)+((b[2]-e[2])^2))end
function aF(b)return{b[1],-b[2]}end
function ba(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
a={}ad=1
N=3
L=aj
aa=1
p={{0,0},0,0}Y=288
q=Y//2
C=128
ac=C//2
aI=1.2
aK={1,1}ap=1
B=1
N=3
ag=400
x=100
H=0
F=0
aB=3002
I={}aw=32768
m={}as=.05
aa=0
w=1
X=0
P=0
Q=ay
function aA(c,b)if c<aw then
A=a[7][c]return aA(A[0<aM({A[3],A[4]},sub(b,A))and 8 or 7],b)else
return c-aw
end
end
function aJ(b)A=a[5][a[6][b][2]]return a[8][a[3][a[2][A[4]][A[5]+6]][6]]end
function onTick()X=0
for v=1,3 do
if T(9)and(not L)or not a[21]then
am=property.getText(ad)c=1
l=bc
_=ao.sub(am,c,c)while _~=bcdo
aG=ao.byte(_)if aG>64then
l=(l..aG-65)+0
if w==1then
av=l
a[l]=a[l]or{}elseif w==2then
aR=l
J=0
elseif w==3then
ak=l
else
if J==0then
J=aR
ak=ak-1
al={}a[av][#a[av]+1]=al
end
al[#al+1]=l
J=J-1
w=G(J,ak)>0 and w-1 or 0
end
w=w+1
l=bc
else
l=l.._
end
c=c+1
_=ao.sub(am,c,c)end
ad=ad+1
L=am==bc
end
end
if L then
if x>0 and not Q then
E={}I[#I+1]=E
R=5
_=f(R)while _~=0 do
r={}E[#E+1]=r
for c=0,8 do
r[c+1]=f(R+c)end
R=R+9
_=f(R)end
end
if T(1)then
aa=aa+1
if Q then
for c=1,10 do
a[c]=a[c+10*N]end
N=N+1
Q=aj
for c=1,#a[1]do
_=a[1][c]end
for c=1,#a[8]do
a[8][c][8]={}end
for c=1,#a[6]do
_=aJ(c)_[8][#_[8]+1]=c
end
end
if f(9)>0 then
Q=ay
N=f(9)end
if x>0 then
if O~=f(1)and f(1)>0then
m={}_={}_[1]=a[29][f(1)]_[2]=a[16][_[1][3]]bb=_[2][1]_[3]=0
m[1]=_
end
O=f(1)ai=T(3)if ai and O==5 then
if P<=0 then
P=7
else
ai=aD
end
end
P=P-1
if ai then
_=m[1]_[2]=a[16][_[1][4]]_[3]=-1
end
end
for c=#m,1,-1 do
_=m[c]if _[3]==0 then
if _[2][3]==4 then
if O==5 and P<5 then
at=1
else
at=0
end
m[#m+1]={_[1],a[16][_[1][5]+at],2}end
end
_[3]=_[3]+1
if _[3]>=_[2][2]then
if _[2][4]>2 then
_[2]=a[16][_[2][4]]_[3]=0
else
ar(m,c)end
end
end
if Q then
H=50
end
F=G(F-4,0)F=aP(F+(x-f(3))*3,0,g)H=G(H-1.5,0)x=f(3)aQ=f(4)if f(2)>0 then
_=a[2][f(2)]if _ then
if _[4]>3004 and _[4]<3008 then
ag=G(ag+3*(_[4]-3006),1)elseif _[4]>3000 then
aB=_[4]end
end
end
for c=1,#I do
E=I[c]for v=1,#E do
r=E[v]_=r[1]if _>(2^15)then
_=a[8][_-(2^15)]for j=1,6 do
_[j]=r[j+1]end
elseif _<0 then
if-_<=#a[1]then
if a[1][-_]~=nil then
r=a[1][-_][6]if a[16][r][5]>0 then
H=G(H,15)end
else
a[1][-_]={}end
while-_>#a[1]do
a[1][#a[1]+1]=aj
end
ar(a[1],-_)end
else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for j=1,8 do
_[a[19][1][j]]=r[j+1]end
_[15]=0
end
end
end
I={}_=a[1][1]p[1]={_[1],_[2]}p[3]=_[3]aL=aA(#a[7],p[1])ab=aJ(aL)p[2]=ab[1]+41
aO=U(ab[5]/g,1)^1.3
for c=1,#ab[8]do
_=a[6][ab[8][c]]for v=_[2],_[1]+_[2]-1 do
aS=a[5][v]aN=a[2][aS[4]]aN[8]=ax
end
end
aC=T(2)if aa%16==1 then
ap=ap%256+1
B=(4-U(x//20,4))*8
if aK[O]then
B=B+a[13][1][ap]%3
else
aK[O]=1
B=B+6
end
if x<=0 then
B=41
end
end
end
end
end
function onDraw()S=screen
local aV,t,h,n,az=S.drawTriangleF,S.drawRectF,S.setColor,S.drawText,S.drawLine
X=X+1
if X<=1 then
if a[21]and not L then
d=a[25][1]D,o=d[1],d[2]M,af=q-D/2,80-o/2
for j=0,D-1 do
an=M+j
for K=0,o-1 do
s=d[5+K+j*o]if s~=0 then
k=a[20][s]h(k[1],k[2],k[3])t(an,af+K,1,1)end
end
end
end
if not aC then
for c=1,#m do
d=m[c][2][1]aq=d>0 and aO or 1
d=a[17][abs(d)][1]d=a[23][d]D,o,ah=d[1],d[2],d[3]*.7
aH=ah*aI
M,af=q-(d[4]+160)*.7,C-(d[5]+148)*.7*aI
for j=0,D-1 do
an=M+j*ah
for K=0,o-1 do
s=d[7+K+j*o]if s~=0 then
k=a[20][s]h(k[1]*aq,k[2]*aq,k[3]*aq)t(an,af+K*aH,ah,aH)end
end
end
end
end
if L then
if aC then
h(0,0,0)t(0,0,Y,C)for c=1,#a[2]do
_=a[2][c]if _[8]then
z=ae(aF(au(sub(a[4][_[1]],p[1]),as)),{q,ac})u=ae(aF(au(sub(a[4][_[2]],p[1]),as)),{q,ac})if _[3]&4>0 then
h(50,50,50)else
h(g,g,g)end
az(z[1],z[2],u[1],u[2])end
end
h(g,g,g)_=a[19][10]for c=1,#_,4 do
V=sin(p[3]-90)Z=cos(p[3]-90)z={_[c]*Z+_[c+1]*V,_[c+1]*Z-_[c]*V}u={_[c+2]*Z+_[c+3]*V,_[c+3]*Z-_[c+2]*V}z=ae(z,{q,ac})u=ae(u,{q,ac})az(z[1],z[2],u[1],u[2])end
end
h(g,F>0 and 0 or g,0,F+H)t(0,0,Y,C)h(50,50,50)t(0,C,Y,32)h(25,25,25)t(q-16,C,32,32)d=a[23][a[19][3][1]+B]D,o=d[1],d[2]M=q-D/2
for c=0,D-1 do
for v=0,o-1 do
s=d[7+v+c*o]if s~=0 then
k=a[20][s]h(k[1],k[2],k[3])t(M+c,C+1+v,1,1)end
end
end
for c=5,7 do
_=a[19][c]h(_[1],_[2],_[3])t(229,95+c*7,6,7)end
h(g,g,g)n(100,131,W(x))n(100,137,W(aQ))n(1,143,"DIF:")n(1,149,"LOD:")n(26,149,W(ag))n(26,143,U(aB-3000,3))end
n(1,131,"ROM:")n(26,131,ad)n(1,137,"TPS:")end
end
