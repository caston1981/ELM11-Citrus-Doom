bf=""

g=255
A=180
aC=true
aD=false
at=input
aG=table.remove
l=math
G=l.max
X=l.min
abs=l.abs
R=l.floor
sqrt=l.sqrt
f=at.getNumber
ae=at.getBool
aX=output.setNumber
pi=l.pi
ap=aD
aK=aC
al=string
function aa(b,e)return{(b[1]+e[1]),(b[2]+e[2])}end
function aO(b,e)return b[1]*e[2]-b[2]*e[1]end
function sub(b,e)return{(b[1]-e[1]),(b[2]-e[2])}end
function aN(b,e)return{b[1]*e,b[2]*e}end
function bd(b)return((b+A)%360)-A end
function sin(b)return l.sin(b/A*pi)end
function cos(b)return l.cos(b/A*pi)end
function tan(b)return l.tan(b/A*pi)end
function ba(b)return l.atan(b)*A/pi end
function aZ(b)return l.atan(b[2],b[1])*A/pi end
function aQ(b,e,aR)return X(G(e,b),aR)end
function bb(b)return R(b+.5)end
function be(b,e)return sqrt(((b[1]-e[1])^2)+((b[2]-e[2])^2))end
function av(b)return{b[1],-b[2]}end
function aY(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
a={}V=1
S=3
N=ap
r={{0,0},0,0}af=288
u=af//2
C=128
Z=C//2
aM=1.2
au={1,1}ai=1
P=1
S=3
as=400
o=100
ay=100
D=0
F=0
aI=3002
Q={}aw=32768
m={}aJ=.05
O=0
Y=0
z=1
ad=0
L=0
K=aK
function aE(c,b)if c<aw then
y=a[7][c]return aE(y[0<aO({y[3],y[4]},sub(b,y))and 8 or 7],b)else
return c-aw
end
end
function aL(b)y=a[5][a[6][b][2]]return a[8][a[3][a[2][y[4]][y[5]+6]][6]]end
function onTick()ad=0
for w=1,3 do
if ae(9)and(not N)or not a[21]then
aj=property.getText(V)c=1
i=bf
_=al.sub(aj,c,c)while _~=bfdo
ax=al.byte(_)if ax>64then
i=(i..ax-65)+0
if z==1then
az=i
a[i]=a[i]or{}elseif z==2then
aP=i
M=0
elseif z==3then
ao=i
else
if M==0then
M=aP
ao=ao-1
ag={}a[az][#a[az]+1]=ag
end
ag[#ag+1]=i
M=M-1
z=G(M,ao)>0 and z-1 or 0
end
z=z+1
i=bf
else
i=i.._
end
c=c+1
_=al.sub(aj,c,c)end
V=V+1
N=aj==bf
end
end
if N then
if o>0 and not K then
E={}Q[#Q+1]=E
U=5
_=f(U)while _~=0 do
s={}E[#E+1]=s
for c=0,8 do
s[c+1]=f(U+c)end
U=U+9
_=f(U)end
end
if ae(1)then
if K then
for c=1,10 do
a[c]=a[c+10*S]end
S=S+1
K=ap
for c=1,#a[1]do
_=a[1][c]end
for c=1,#a[8]do
a[8][c][8]={}end
for c=1,#a[6]do
_=aL(c)_[8][#_[8]+1]=c
end
end
if f(9)>0 then
K=aK
S=f(9)end
if o>0 then
if H~=f(1)and f(1)>0then
m={}_={}_[1]=a[29][f(1)]_[2]=a[16][_[1][3]]b_=_[2][1]_[3]=0
m[1]=_
end
H=f(1)ar=ae(3)if ar and H==5 then
if L<=0 then
L=7
else
ar=aD
end
end
L=L-1
if ar then
_=m[1]_[2]=a[16][_[1][4]]_[3]=-1
end
end
for c=#m,1,-1 do
_=m[c]if _[3]==0 then
if _[2][3]==4 then
if H==5 and L<5 then
aB=1
else
aB=0
end
m[#m+1]={_[1],a[16][_[1][5]+aB],2}end
end
_[3]=_[3]+1
if _[3]>=_[2][2]then
if _[2][4]>2 then
_[2]=a[16][_[2][4]]_[3]=0
else
aG(m,c)end
end
end
if K then
D=50
end
F=G(F-4,0)F=aQ(F+(o-f(3))*3,0,g)D=G(D-1.5,0)o=f(3)aV=f(4)if f(2)>0 then
_=a[2][f(2)]if _ then
if _[4]>3004 and _[4]<3008 then
as=G(as+3*(_[4]-3006),1)elseif _[4]>3000 then
aI=_[4]end
end
end
for c=1,#Q do
E=Q[c]for w=1,#E do
s=E[w]_=s[1]if _>(2^15)then
_=a[8][_-(2^15)]for j=1,6 do
_[j]=s[j+1]end
elseif _<0 then
if-_<=#a[1]then
if a[1][-_]~=nil then
s=a[1][-_][6]if a[16][s][5]>0 then
D=G(D,15)end
else
a[1][-_]={}end
while-_>#a[1]do
a[1][#a[1]+1]=ap
end
aG(a[1],-_)end
else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for j=1,8 do
_[a[19][1][j]]=s[j+1]end
_[15]=0
end
end
end
Q={}_=a[1][1]r[1]={_[1],_[2]}r[3]=_[3]aT=aE(#a[7],r[1])W=aL(aT)r[2]=W[1]+41
aW=X(W[5]/g,1)^1.3
for c=1,#W[8]do
_=a[6][W[8][c]]for w=_[2],_[1]+_[2]-1 do
aS=a[5][w]aU=a[2][aS[4]]aU[8]=aC
end
end
aF=ae(2)O=O-1
Y=Y-1
if not au[H]then
au[H]=1
Y=70
end
ak=(4-X(o//20,4))*8
if o<=0 then
P=41
elseif Y>0 then
P=ak+6
elseif o<ay then
O=35
P=ak+7
elseif O<=0 then
O=16
ai=ai%256+1
P=ak+a[13][1][ai]%3
end
ay=o
end
end
end
function onDraw()T=screen
local bc,t,h,n,aH=T.drawTriangleF,T.drawRectF,T.setColor,T.drawText,T.drawLine
ad=ad+1
if ad<=1 then
if a[21]and not N then
d=a[25][1]x,p=d[1],d[2]I,aq=u-x/2,80-p/2
for j=0,x-1 do
ah=I+j
for J=0,p-1 do
q=d[5+J+j*p]if q~=0 then
k=a[20][q]h(k[1],k[2],k[3])t(ah,aq+J,1,1)end
end
end
end
if not aF then
for c=1,#m do
d=m[c][2][1]am=d>0 and aW or 1
d=a[17][abs(d)][1]d=a[23][d]x,p,an=d[1],d[2],d[3]*.7
aA=an*aM
I,aq=u-(d[4]+160)*.7,C-(d[5]+148)*.7*aM
for j=0,x-1 do
ah=I+j*an
for J=0,p-1 do
q=d[7+J+j*p]if q~=0 then
k=a[20][q]h(k[1]*am,k[2]*am,k[3]*am)t(ah,aq+J*aA,an,aA)end
end
end
end
end
if N then
if aF then
h(0,0,0)t(0,0,af,C)for c=1,#a[2]do
_=a[2][c]if _[8]then
B=aa(av(aN(sub(a[4][_[1]],r[1]),aJ)),{u,Z})v=aa(av(aN(sub(a[4][_[2]],r[1]),aJ)),{u,Z})if _[3]&4>0 then
h(50,50,50)else
h(g,g,g)end
aH(B[1],B[2],v[1],v[2])end
end
h(g,g,g)_=a[19][10]for c=1,#_,4 do
ac=sin(r[3]-90)ab=cos(r[3]-90)B={_[c]*ab+_[c+1]*ac,_[c+1]*ab-_[c]*ac}v={_[c+2]*ab+_[c+3]*ac,_[c+3]*ab-_[c+2]*ac}B=aa(B,{u,Z})v=aa(v,{u,Z})aH(B[1],B[2],v[1],v[2])end
end
h(g,F>0 and 0 or g,0,F+D)t(0,0,af,C)h(50,50,50)t(0,C,af,32)h(25,25,25)t(u-16,C,32,32)d=a[23][a[19][3][1]+P]x,p=d[1],d[2]I=u-x/2
for c=0,x-1 do
for w=0,p-1 do
q=d[7+w+c*p]if q~=0 then
k=a[20][q]h(k[1],k[2],k[3])t(I+c,C+1+w,1,1)end
end
end
for c=5,7 do
_=a[19][c]h(_[1],_[2],_[3])t(229,95+c*7,6,7)end
h(g,g,g)n(100,131,R(o))n(100,137,R(aV))n(1,143,"DIF:")n(1,149,"LOD:")n(26,149,R(as))n(26,143,R(X(aI-3000,3)))end
n(1,131,"ROM:")n(26,131,V)n(1,137,"TPS:")end
end
