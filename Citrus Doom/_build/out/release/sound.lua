bf=""

g=255
B=180
aw=true
aN=false
at=input
aC=table.remove
j=math
F=j.max
Z=j.min
abs=j.abs
K=j.floor
sqrt=j.sqrt
f=at.getNumber
aa=at.getBool
bb=output.setNumber
pi=j.pi
ap=aN
aK=aw
ao=string
function W(b,e)return{(b[1]+e[1]),(b[2]+e[2])}end
function aQ(b,e)return b[1]*e[2]-b[2]*e[1]end
function sub(b,e)return{(b[1]-e[1]),(b[2]-e[2])}end
function ax(b,e)return{b[1]*e,b[2]*e}end
function aZ(b)return((b+B)%360)-B end
function sin(b)return j.sin(b/B*pi)end
function cos(b)return j.cos(b/B*pi)end
function tan(b)return j.tan(b/B*pi)end
function aX(b)return j.atan(b)*B/pi end
function aY(b)return j.atan(b[2],b[1])*B/pi end
function aR(b,e,aO)return Z(F(e,b),aO)end
function ba(b)return K(b+.5)end
function be(b,e)return sqrt(((b[1]-e[1])^2)+((b[2]-e[2])^2))end
function aH(b)return{b[1],-b[2]}end
function bc(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
a={}ab=1
T=3
I=ap
q={{0,0},0,0}af=288
t=af//2
x=128
Y=x//2
aD=1.2
au={1,1}an=1
L=1
T=3
al=400
o=100
av=100
E=0
G=0
aF=3002
Q={}aG=32768
m={}aB=.05
H=0
ac=0
z=1
ae=0
U=0
O=aK
function ay(c,b)if c<aG then
C=a[7][c]return ay(C[0<aQ({C[3],C[4]},sub(b,C))and 8 or 7],b)else
return c-aG
end
end
function aJ(b)C=a[5][a[6][b][2]]return a[8][a[3][a[2][C[4]][C[5]+6]][6]]end
function onTick()ae=0
for w=1,3 do
if aa(9)and(not I)or not a[21]then
ai=property.getText(ab)c=1
k=bf
_=ao.sub(ai,c,c)while _~=bfdo
aL=ao.byte(_)if aL>64then
k=(k..aL-65)+0
if z==1then
aM=k
a[k]=a[k]or{}elseif z==2then
aT=k
S=0
elseif z==3then
ar=k
else
if S==0then
S=aT
ar=ar-1
aj={}a[aM][#a[aM]+1]=aj
end
aj[#aj+1]=k
S=S-1
z=F(S,ar)>0 and z-1 or 0
end
z=z+1
k=bf
else
k=k.._
end
c=c+1
_=ao.sub(ai,c,c)end
ab=ab+1
I=ai==bf
end
end
if I then
if o>0 and not O then
D={}Q[#Q+1]=D
N=5
_=f(N)while _~=0 do
u={}D[#D+1]=u
for c=0,8 do
u[c+1]=f(N+c)end
N=N+9
_=f(N)end
end
if aa(1)then
if O then
for c=1,10 do
a[c]=a[c+10*T]end
T=T+1
O=ap
for c=1,#a[1]do
_=a[1][c]end
for c=1,#a[8]do
a[8][c][8]={}end
for c=1,#a[6]do
_=aJ(c)_[8][#_[8]+1]=c
end
end
if f(9)>0 then
O=aK
T=f(9)end
if o>0 then
if J~=f(1)and f(1)>0then
m={}_={}_[1]=a[29][f(1)]_[2]=a[16][_[1][3]]b_=_[2][1]_[3]=0
m[1]=_
end
J=f(1)as=aa(3)if as and J==5 then
if U<=0 then
U=7
else
as=aN
end
end
U=U-1
if as then
_=m[1]_[2]=a[16][_[1][4]]_[3]=-1
end
end
for c=#m,1,-1 do
_=m[c]if _[3]==0 then
if _[2][3]==4 then
if J==5 and U<5 then
az=1
else
az=0
end
m[#m+1]={_[1],a[16][_[1][5]+az],2}end
end
_[3]=_[3]+1
if _[3]>=_[2][2]then
if _[2][4]>2 then
_[2]=a[16][_[2][4]]_[3]=0
else
aC(m,c)end
end
end
if O then
E=50
end
G=F(G-4,0)G=aR(G+(o-f(3))*3,0,g)E=F(E-1.5,0)o=f(3)aU=f(4)if f(2)>0 then
_=a[2][f(2)]if _ then
if _[4]>3004 and _[4]<3008 then
al=F(al+3*(_[4]-3006),1)elseif _[4]>3000 then
aF=_[4]end
end
end
for c=1,#Q do
D=Q[c]for w=1,#D do
u=D[w]_=u[1]if _>(2^15)then
_=a[8][_-(2^15)]for i=1,6 do
_[i]=u[i+1]end
elseif _<0 then
if-_<=#a[1]then
if a[1][-_]~=nil then
u=a[1][-_][6]if a[16][u][5]>0 then
E=F(E,15)end
else
a[1][-_]={}end
while-_>#a[1]do
a[1][#a[1]+1]=ap
end
aC(a[1],-_)end
else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for i=1,8 do
_[a[19][1][i]]=u[i+1]end
_[15]=0
end
end
end
Q={}_=a[1][1]q[1]={_[1],_[2]}q[3]=_[3]aV=ay(#a[7],q[1])V=aJ(aV)q[2]=V[1]+41
aW=Z(V[5]/g,1)^1.3
for c=1,#V[8]do
_=a[6][V[8][c]]for w=_[2],_[1]+_[2]-1 do
aP=a[5][w]aS=a[2][aP[4]]aS[8]=aw
end
end
aE=aa(2)H=H-1
ac=ac-1
if not au[J]then
au[J]=1
ac=70
end
ak=(4-Z(o//20,4))*8
if o<=0 then
L=41
elseif ac>0 then
L=ak+6
elseif o<av then
H=35
L=ak+7
elseif H<=0 then
H=16
an=an%256+1
L=ak+a[13][1][an]%3
end
av=o
end
end
end
function onDraw()P=screen
local bd,s,h,n,aI=P.drawTriangleF,P.drawRectF,P.setColor,P.drawText,P.drawLine
ae=ae+1
if ae<=1 then
if a[21]and not I then
d=a[25][1]v,p=d[1],d[2]M,ah=t-v/2,80-p/2
for i=0,v-1 do
am=M+i
for R=0,p-1 do
r=d[5+R+i*p]if r~=0 then
l=a[20][r]h(l[1],l[2],l[3])s(am,ah+R,1,1)end
end
end
end
if not aE then
for c=1,#m do
d=m[c][2][1]ag=d>0 and aW or 1
d=a[17][abs(d)][1]d=a[23][d]v,p,aq=d[1],d[2],d[3]*.7
aA=aq*aD
M,ah=t-(d[4]+160)*.7,x-(d[5]+148)*.7*aD
for i=0,v-1 do
am=M+i*aq
for R=0,p-1 do
r=d[7+R+i*p]if r~=0 then
l=a[20][r]h(l[1]*ag,l[2]*ag,l[3]*ag)s(am,ah+R*aA,aq,aA)end
end
end
end
end
if I then
if aE then
h(0,0,0)s(0,0,af,x)for c=1,#a[2]do
_=a[2][c]if _[8]then
A=W(aH(ax(sub(a[4][_[1]],q[1]),aB)),{t,Y})y=W(aH(ax(sub(a[4][_[2]],q[1]),aB)),{t,Y})if _[3]&4>0 then
h(50,50,50)else
h(g,g,g)end
aI(A[1],A[2],y[1],y[2])end
end
h(g,g,g)_=a[19][10]for c=1,#_,4 do
X=sin(q[3]-90)ad=cos(q[3]-90)A={_[c]*ad+_[c+1]*X,_[c+1]*ad-_[c]*X}y={_[c+2]*ad+_[c+3]*X,_[c+3]*ad-_[c+2]*X}A=W(A,{t,Y})y=W(y,{t,Y})aI(A[1],A[2],y[1],y[2])end
end
h(g,G>0 and 0 or g,0,G+E)s(0,0,af,x)h(50,50,50)s(0,x,af,32)h(25,25,25)s(t-16,x,32,32)d=a[23][a[19][3][1]+L]v,p=d[1],d[2]M=t-v/2
for c=0,v-1 do
for w=0,p-1 do
r=d[7+w+c*p]if r~=0 then
l=a[20][r]h(l[1],l[2],l[3])s(M+c,x+1+w,1,1)end
end
end
for c=5,7 do
_=a[19][c]h(_[1],_[2],_[3])s(229,95+c*7,6,7)end
h(g,g,g)n(100,131,K(o))n(100,137,K(aU))n(1,143,"DIF:")n(1,149,"LOD:")n(26,149,K(al))n(26,143,K(Z(aF-3000,3)))end
n(1,131,"ROM:")n(26,131,ab)n(1,137,"TPS:")end
end
