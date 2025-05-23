bf=""

g=255
B=180
ax=true
aw=false
aJ=input
aN=table.remove
i=math
G=i.max
ad=i.min
abs=i.abs
K=i.floor
sqrt=i.sqrt
f=aJ.getNumber
ac=aJ.getBool
aZ=output.setNumber
pi=i.pi
an=aw
az=ax
as=string
function aa(b,e)return{(b[1]+e[1]),(b[2]+e[2])}end
function aO(b,e)return b[1]*e[2]-b[2]*e[1]end
function sub(b,e)return{(b[1]-e[1]),(b[2]-e[2])}end
function aB(b,e)return{b[1]*e,b[2]*e}end
function aX(b)return((b+B)%360)-B end
function sin(b)return i.sin(b/B*pi)end
function cos(b)return i.cos(b/B*pi)end
function tan(b)return i.tan(b/B*pi)end
function bd(b)return i.atan(b)*B/pi end
function bb(b)return i.atan(b[2],b[1])*B/pi end
function aT(b,e,aQ)return ad(G(e,b),aQ)end
function ba(b)return K(b+.5)end
function b_(b,e)return sqrt(((b[1]-e[1])^2)+((b[2]-e[2])^2))end
function aD(b)return{b[1],-b[2]}end
function bc(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
a={}X=1
L=3
H=an
u={{0,0},0,0}Z=288
r=Z//2
w=128
ae=w//2
aF=1.2
aK={1,1}ai=1
I=1
L=3
am=400
p=100
aM=100
E=0
F=0
at=3002
R={}aA=32768
m={}aE=.05
U=0
af=0
C=1
W=0
T=0
J=az
function au(c,b)if c<aA then
v=a[7][c]return au(v[0<aO({v[3],v[4]},sub(b,v))and 8 or 7],b)else
return c-aA
end
end
function aG(b)v=a[5][a[6][b][2]]return a[8][a[3][a[2][v[4]][v[5]+6]][6]]end
function onTick()W=0
for z=1,3 do
if ac(9)and(not H)or not a[21]then
ag=property.getText(X)c=1
j=bf
_=as.sub(ag,c,c)while _~=bfdo
av=as.byte(_)if av>64then
j=(j..av-65)+0
if C==1then
aL=j
a[j]=a[j]or{}elseif C==2then
aV=j
Q=0
elseif C==3then
ak=j
else
if Q==0then
Q=aV
ak=ak-1
ao={}a[aL][#a[aL]+1]=ao
end
ao[#ao+1]=j
Q=Q-1
C=G(Q,ak)>0 and C-1 or 0
end
C=C+1
j=bf
else
j=j.._
end
c=c+1
_=as.sub(ag,c,c)end
X=X+1
H=ag==bf
end
end
if H then
if p>0 and not J then
D={}R[#R+1]=D
S=5
_=f(S)while _~=0 do
s={}D[#D+1]=s
for c=0,8 do
s[c+1]=f(S+c)end
S=S+9
_=f(S)end
end
if ac(1)then
if J then
for c=1,10 do
a[c]=a[c+10*L]end
L=L+1
J=an
for c=1,#a[1]do
_=a[1][c]end
for c=1,#a[8]do
a[8][c][8]={}end
for c=1,#a[6]do
_=aG(c)_[8][#_[8]+1]=c
end
end
if f(9)>0 then
J=az
L=f(9)end
if p>0 then
if O~=f(1)and f(1)>0then
m={}_={}_[1]=a[29][f(1)]_[2]=a[16][_[1][3]]be=_[2][1]_[3]=0
m[1]=_
end
O=f(1)ah=ac(3)if ah and O==5 then
if T<=0 then
T=7
else
ah=aw
end
end
T=T-1
if ah then
_=m[1]_[2]=a[16][_[1][4]]_[3]=-1
end
end
for c=#m,1,-1 do
_=m[c]if _[3]==0 then
if _[2][3]==4 then
if O==5 and T<5 then
aH=1
else
aH=0
end
m[#m+1]={_[1],a[16][_[1][5]+aH],2}end
end
_[3]=_[3]+1
if _[3]>=_[2][2]then
if _[2][4]>2 then
_[2]=a[16][_[2][4]]_[3]=0
else
aN(m,c)end
end
end
if J then
E=50
end
F=G(F-4,0)F=aT(F+(p-f(3))*3,0,g)E=G(E-1.5,0)p=f(3)aU=f(4)if f(2)>0 then
_=a[2][f(2)]if _ then
if _[4]>3004 and _[4]<3008 then
am=G(am+3*(_[4]-3006),1)elseif _[4]>3000 then
at=_[4]end
end
end
for c=1,#R do
D=R[c]for z=1,#D do
s=D[z]_=s[1]if _>(2^15)then
_=a[8][_-(2^15)]for k=1,6 do
_[k]=s[k+1]end
elseif _<0 then
if-_<=#a[1]then
if a[1][-_]~=nil then
s=a[1][-_][6]if a[16][s][5]>0 then
E=G(E,15)end
else
a[1][-_]={}end
while-_>#a[1]do
a[1][#a[1]+1]=an
end
aN(a[1],-_)end
else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for k=1,8 do
_[a[19][1][k]]=s[k+1]end
_[15]=0
end
end
end
R={}_=a[1][1]u[1]={_[1],_[2]}u[3]=_[3]aS=au(#a[7],u[1])Y=aG(aS)u[2]=Y[1]+41
aP=ad(Y[5]/g,1)^1.3
for c=1,#Y[8]do
_=a[6][Y[8][c]]for z=_[2],_[1]+_[2]-1 do
aW=a[5][z]aR=a[2][aW[4]]aR[8]=ax
end
end
aC=ac(2)U=U-1
af=af-1
if not aK[O]then
aK[O]=1
af=70
end
ap=(4-ad(p//20,4))*8
if p<=0 then
I=41
elseif af>0 then
I=ap+6
elseif p<aM then
U=35
I=ap+7
elseif U<=0 then
U=16
ai=ai%256+1
I=ap+a[13][1][ai]%3
end
aM=p
end
end
end
function onDraw()N=screen
local aY,t,h,n,ay=N.drawTriangleF,N.drawRectF,N.setColor,N.drawText,N.drawLine
W=W+1
if W<=1 then
if a[21]and not H then
d=a[25][1]y,o=d[1],d[2]M,ar=r-y/2,80-o/2
for k=0,y-1 do
al=M+k
for P=0,o-1 do
q=d[5+P+k*o]if q~=0 then
l=a[20][q]h(l[1],l[2],l[3])t(al,ar+P,1,1)end
end
end
end
if not aC then
for c=1,#m do
d=m[c][2][1]aq=d>0 and aP or 1
d=a[17][abs(d)][1]d=a[23][d]y,o,aj=d[1],d[2],d[3]*.7
aI=aj*aF
M,ar=r-(d[4]+160)*.7,w-(d[5]+148)*.7*aF
for k=0,y-1 do
al=M+k*aj
for P=0,o-1 do
q=d[7+P+k*o]if q~=0 then
l=a[20][q]h(l[1]*aq,l[2]*aq,l[3]*aq)t(al,ar+P*aI,aj,aI)end
end
end
end
end
if H then
if aC then
h(0,0,0)t(0,0,Z,w)for c=1,#a[2]do
_=a[2][c]if _[8]then
A=aa(aD(aB(sub(a[4][_[1]],u[1]),aE)),{r,ae})x=aa(aD(aB(sub(a[4][_[2]],u[1]),aE)),{r,ae})if _[3]&4>0 then
h(50,50,50)else
h(g,g,g)end
ay(A[1],A[2],x[1],x[2])end
end
h(g,g,g)_=a[19][10]for c=1,#_,4 do
ab=sin(u[3]-90)V=cos(u[3]-90)A={_[c]*V+_[c+1]*ab,_[c+1]*V-_[c]*ab}x={_[c+2]*V+_[c+3]*ab,_[c+3]*V-_[c+2]*ab}A=aa(A,{r,ae})x=aa(x,{r,ae})ay(A[1],A[2],x[1],x[2])end
end
h(g,F>0 and 0 or g,0,F+E)t(0,0,Z,w)h(50,50,50)t(0,w,Z,32)h(25,25,25)t(r-16,w,32,32)d=a[23][a[19][3][1]+I]y,o=d[1],d[2]M=r-y/2
for c=0,y-1 do
for z=0,o-1 do
q=d[7+z+c*o]if q~=0 then
l=a[20][q]h(l[1],l[2],l[3])t(M+c,w+1+z,1,1)end
end
end
for c=5,7 do
_=a[19][c]h(_[1],_[2],_[3])t(229,95+c*7,6,7)end
h(g,g,g)n(100,131,K(p))n(100,137,K(aU))n(1,143,"DIF:")n(1,149,"LOD:")n(26,149,K(am))n(26,143,K(ad(at-3000,3)))end
n(1,131,"ROM:")n(26,131,X)n(1,137,"TPS:")end
end
