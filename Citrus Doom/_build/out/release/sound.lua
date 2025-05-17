bf=""

g=255
A=180
au=true
av=false
ax=input
at=table.remove
i=math
F=i.max
ae=i.min
abs=i.abs
M=i.floor
sqrt=i.sqrt
f=ax.getNumber
Y=ax.getBool
bd=output.setNumber
pi=i.pi
ao=av
ay=au
ai=string
function ab(b,e)return{(b[1]+e[1]),(b[2]+e[2])}end
function aU(b,e)return b[1]*e[2]-b[2]*e[1]end
function sub(b,e)return{(b[1]-e[1]),(b[2]-e[2])}end
function aA(b,e)return{b[1]*e,b[2]*e}end
function b_(b)return((b+A)%360)-A end
function sin(b)return i.sin(b/A*pi)end
function cos(b)return i.cos(b/A*pi)end
function tan(b)return i.tan(b/A*pi)end
function ba(b)return i.atan(b)*A/pi end
function be(b)return i.atan(b[2],b[1])*A/pi end
function aS(b,e,aP)return ae(F(e,b),aP)end
function aY(b)return M(b+.5)end
function bb(b,e)return sqrt(((b[1]-e[1])^2)+((b[2]-e[2])^2))end
function aH(b)return{b[1],-b[2]}end
function bc(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
a={}X=1
J=3
Q=ao
t={{0,0},0,0}W=288
u=W//2
y=128
aa=y//2
aE=1.2
aB={1,1}ah=1
I=1
J=3
al=400
o=100
aC=100
G=0
E=0
aM=3002
P={}aF=32768
m={}aN=.05
R=0
ac=0
z=1
Z=0
N=0
S=ay
function az(c,b)if c<aF then
B=a[7][c]return az(B[0<aU({B[3],B[4]},sub(b,B))and 8 or 7],b)else
return c-aF
end
end
function aG(b)B=a[5][a[6][b][2]]return a[8][a[3][a[2][B[4]][B[5]+6]][6]]end
function onTick()Z=0
for C=1,3 do
if Y(9)and(not Q)or not a[21]then
am=property.getText(X)c=1
l=bf
_=ai.sub(am,c,c)while _~=bfdo
aL=ai.byte(_)if aL>64then
l=(l..aL-65)+0
if z==1then
aI=l
a[l]=a[l]or{}elseif z==2then
aR=l
H=0
elseif z==3then
ap=l
else
if H==0then
H=aR
ap=ap-1
aq={}a[aI][#a[aI]+1]=aq
end
aq[#aq+1]=l
H=H-1
z=F(H,ap)>0 and z-1 or 0
end
z=z+1
l=bf
else
l=l.._
end
c=c+1
_=ai.sub(am,c,c)end
X=X+1
Q=am==bf
end
end
if Q then
if o>0 and not S then
D={}P[#P+1]=D
U=5
_=f(U)while _~=0 do
s={}D[#D+1]=s
for c=0,8 do
s[c+1]=f(U+c)end
U=U+9
_=f(U)end
end
if Y(1)then
if S then
for c=1,10 do
a[c]=a[c+10*J]end
J=J+1
S=ao
for c=1,#a[1]do
_=a[1][c]end
for c=1,#a[8]do
a[8][c][8]={}end
for c=1,#a[6]do
_=aG(c)_[8][#_[8]+1]=c
end
end
if f(9)>0 then
S=ay
J=f(9)end
if o>0 then
if O~=f(1)and f(1)>0then
m={}_={}_[1]=a[29][f(1)]_[2]=a[16][_[1][3]]aZ=_[2][1]_[3]=0
m[1]=_
end
O=f(1)an=Y(3)if an and O==5 then
if N<=0 then
N=7
else
an=av
end
end
N=N-1
if an then
_=m[1]_[2]=a[16][_[1][4]]_[3]=-1
end
end
for c=#m,1,-1 do
_=m[c]if _[3]==0 then
if _[2][3]==4 then
if O==5 and N<5 then
aD=1
else
aD=0
end
m[#m+1]={_[1],a[16][_[1][5]+aD],2}end
end
_[3]=_[3]+1
if _[3]>=_[2][2]then
if _[2][4]>2 then
_[2]=a[16][_[2][4]]_[3]=0
else
at(m,c)end
end
end
if S then
G=50
end
E=F(E-4,0)E=aS(E+(o-f(3))*3,0,g)G=F(G-1.5,0)o=f(3)aW=f(4)if f(2)>0 then
_=a[2][f(2)]if _ then
if _[4]>3004 and _[4]<3008 then
al=F(al+3*(_[4]-3006),1)elseif _[4]>3000 then
aM=_[4]end
end
end
for c=1,#P do
D=P[c]for C=1,#D do
s=D[C]_=s[1]if _>(2^15)then
_=a[8][_-(2^15)]for j=1,6 do
_[j]=s[j+1]end
elseif _<0 then
if-_<=#a[1]then
if a[1][-_]~=nil then
s=a[1][-_][6]if a[16][s][5]>0 then
G=F(G,15)end
else
a[1][-_]={}end
while-_>#a[1]do
a[1][#a[1]+1]=ao
end
at(a[1],-_)end
else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for j=1,8 do
_[a[19][1][j]]=s[j+1]end
_[15]=0
end
end
end
P={}_=a[1][1]t[1]={_[1],_[2]}t[3]=_[3]aT=az(#a[7],t[1])ad=aG(aT)t[2]=ad[1]+41
aQ=ae(ad[5]/g,1)^1.3
for c=1,#ad[8]do
_=a[6][ad[8][c]]for C=_[2],_[1]+_[2]-1 do
aV=a[5][C]aO=a[2][aV[4]]aO[8]=au
end
end
aw=Y(2)R=R-1
ac=ac-1
if not aB[O]then
aB[O]=1
ac=70
end
aj=(4-ae(o//20,4))*8
if o<=0 then
I=41
elseif ac>0 then
I=aj+6
elseif o<aC then
R=35
I=aj+7
elseif R<=0 then
R=16
ah=ah%256+1
I=aj+a[13][1][ah]%3
end
aC=o
end
end
end
function onDraw()T=screen
local aX,r,h,n,aJ=T.drawTriangleF,T.drawRectF,T.setColor,T.drawText,T.drawLine
Z=Z+1
if Z<=1 then
if a[21]and not Q then
d=a[25][1]v,p=d[1],d[2]K,ar=u-v/2,80-p/2
for j=0,v-1 do
as=K+j
for L=0,p-1 do
q=d[5+L+j*p]if q~=0 then
k=a[20][q]h(k[1],k[2],k[3])r(as,ar+L,1,1)end
end
end
end
if not aw then
for c=1,#m do
d=m[c][2][1]ag=d>0 and aQ or 1
d=a[17][abs(d)][1]d=a[23][d]v,p,ak=d[1],d[2],d[3]*.7
aK=ak*aE
K,ar=u-(d[4]+160)*.7,y-(d[5]+148)*.7*aE
for j=0,v-1 do
as=K+j*ak
for L=0,p-1 do
q=d[7+L+j*p]if q~=0 then
k=a[20][q]h(k[1]*ag,k[2]*ag,k[3]*ag)r(as,ar+L*aK,ak,aK)end
end
end
end
end
if Q then
if aw then
h(0,0,0)r(0,0,W,y)for c=1,#a[2]do
_=a[2][c]if _[8]then
x=ab(aH(aA(sub(a[4][_[1]],t[1]),aN)),{u,aa})w=ab(aH(aA(sub(a[4][_[2]],t[1]),aN)),{u,aa})if _[3]&4>0 then
h(50,50,50)else
h(g,g,g)end
aJ(x[1],x[2],w[1],w[2])end
end
h(g,g,g)_=a[19][10]for c=1,#_,4 do
af=sin(t[3]-90)V=cos(t[3]-90)x={_[c]*V+_[c+1]*af,_[c+1]*V-_[c]*af}w={_[c+2]*V+_[c+3]*af,_[c+3]*V-_[c+2]*af}x=ab(x,{u,aa})w=ab(w,{u,aa})aJ(x[1],x[2],w[1],w[2])end
end
h(g,E>0 and 0 or g,0,E+G)r(0,0,W,y)h(50,50,50)r(0,y,W,32)h(25,25,25)r(u-16,y,32,32)d=a[23][a[19][3][1]+I]v,p=d[1],d[2]K=u-v/2
for c=0,v-1 do
for C=0,p-1 do
q=d[7+C+c*p]if q~=0 then
k=a[20][q]h(k[1],k[2],k[3])r(K+c,y+1+C,1,1)end
end
end
for c=5,7 do
_=a[19][c]h(_[1],_[2],_[3])r(229,95+c*7,6,7)end
h(g,g,g)n(100,131,M(o))n(100,137,M(aW))n(1,143,"DIF:")n(1,149,"LOD:")n(26,149,M(al))n(26,143,M(ae(aM-3000,3)))end
n(1,131,"ROM:")n(26,131,X)n(1,137,"TPS:")end
end
