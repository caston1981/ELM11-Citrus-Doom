bc=""

g=255
C=180
aJ=true
ar=false
aC=input
ax=table.remove
i=math
H=i.max
W=i.min
abs=i.abs
S=i.floor
sqrt=i.sqrt
f=aC.getNumber
Y=aC.getBool
ba=output.setNumber
pi=i.pi
ap=ar
aG=aJ
al=string
function ac(b,e)return{(b[1]+e[1]),(b[2]+e[2])}end
function aM(b,e)return b[1]*e[2]-b[2]*e[1]end
function sub(b,e)return{(b[1]-e[1]),(b[2]-e[2])}end
function az(b,e)return{b[1]*e,b[2]*e}end
function aW(b)return((b+C)%360)-C end
function sin(b)return i.sin(b/C*pi)end
function cos(b)return i.cos(b/C*pi)end
function tan(b)return i.tan(b/C*pi)end
function b_(b)return i.atan(b)*C/pi end
function aY(b)return i.atan(b[2],b[1])*C/pi end
function aR(b,e,aS)return W(H(e,b),aS)end
function aV(b)return S(b+.5)end
function aU(b,e)return sqrt(((b[1]-e[1])^2)+((b[2]-e[2])^2))end
function aD(b)return{b[1],-b[2]}end
function bb(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
a={}Z=1
I=3
Q=ap
X=1
r={{0,0},0,0}ab=288
p=ab//2
u=128
aa=u//2
aE=1.2
at={1,1}ah=1
B=1
I=3
ag=400
A=100
F=0
G=0
av=3002
R={}aF=32768
m={}as=.05
X=0
D=1
ad=0
N=0
J=aG
function ay(c,b)if c<aF then
w=a[7][c]return ay(w[0<aM({w[3],w[4]},sub(b,w))and 8 or 7],b)else
return c-aF
end
end
function aw(b)w=a[5][a[6][b][2]]return a[8][a[3][a[2][w[4]][w[5]+6]][6]]end
function onTick()ad=0
for x=1,3 do
if Y(9)and(not Q)or not a[21]then
an=property.getText(Z)c=1
k=bc
_=al.sub(an,c,c)while _~=bcdo
aK=al.byte(_)if aK>64then
k=(k..aK-65)+0
if D==1then
aA=k
a[k]=a[k]or{}elseif D==2then
aT=k
L=0
elseif D==3then
aj=k
else
if L==0then
L=aT
aj=aj-1
ao={}a[aA][#a[aA]+1]=ao
end
ao[#ao+1]=k
L=L-1
D=H(L,aj)>0 and D-1 or 0
end
D=D+1
k=bc
else
k=k.._
end
c=c+1
_=al.sub(an,c,c)end
Z=Z+1
Q=an==bc
end
end
if Q then
if A>0 and not J then
E={}R[#R+1]=E
O=5
_=f(O)while _~=0 do
t={}E[#E+1]=t
for c=0,8 do
t[c+1]=f(O+c)end
O=O+9
_=f(O)end
end
if Y(1)then
X=X+1
if J then
for c=1,10 do
a[c]=a[c+10*I]end
I=I+1
J=ap
for c=1,#a[1]do
_=a[1][c]end
for c=1,#a[8]do
a[8][c][8]={}end
for c=1,#a[6]do
_=aw(c)_[8][#_[8]+1]=c
end
end
if f(9)>0 then
J=aG
I=f(9)end
if A>0 then
if K~=f(1)and f(1)>0then
m={}_={}_[1]=a[29][f(1)]_[2]=a[16][_[1][3]]aX=_[2][1]_[3]=0
m[1]=_
end
K=f(1)ak=Y(3)if ak and K==5 then
if N<=0 then
N=7
else
ak=ar
end
end
N=N-1
if ak then
_=m[1]_[2]=a[16][_[1][4]]_[3]=-1
end
end
for c=#m,1,-1 do
_=m[c]if _[3]==0 then
if _[2][3]==4 then
if K==5 and N<5 then
au=1
else
au=0
end
m[#m+1]={_[1],a[16][_[1][5]+au],2}end
end
_[3]=_[3]+1
if _[3]>=_[2][2]then
if _[2][4]>2 then
_[2]=a[16][_[2][4]]_[3]=0
else
ax(m,c)end
end
end
if J then
F=50
end
G=H(G-4,0)G=aR(G+(A-f(3))*3,0,g)F=H(F-1.5,0)A=f(3)aP=f(4)if f(2)>0 then
_=a[2][f(2)]if _ then
if _[4]>3004 and _[4]<3008 then
ag=H(ag+3*(_[4]-3006),1)elseif _[4]>3000 then
av=_[4]end
end
end
for c=1,#R do
E=R[c]for x=1,#E do
t=E[x]_=t[1]if _>(2^15)then
_=a[8][_-(2^15)]for j=1,6 do
_[j]=t[j+1]end
elseif _<0 then
if-_<=#a[1]then
if a[1][-_]~=nil then
t=a[1][-_][6]if a[16][t][5]>0 then
F=H(F,15)end
else
a[1][-_]={}end
while-_>#a[1]do
a[1][#a[1]+1]=ap
end
ax(a[1],-_)end
else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for j=1,8 do
_[a[19][1][j]]=t[j+1]end
_[15]=0
end
end
end
R={}_=a[1][1]r[1]={_[1],_[2]}r[3]=_[3]aN=ay(#a[7],r[1])ae=aw(aN)r[2]=ae[1]+41
aL=W(ae[5]/g,1)^1.3
for c=1,#ae[8]do
_=a[6][ae[8][c]]for x=_[2],_[1]+_[2]-1 do
aQ=a[5][x]aO=a[2][aQ[4]]aO[8]=aJ
end
end
aB=Y(2)if X%16==1 then
ah=ah%256+1
B=(4-W(A//20,4))*8
if at[K]then
B=B+a[13][1][ah]%3
else
at[K]=1
B=B+6
end
if A<=0 then
B=41
end
end
end
end
end
function onDraw()M=screen
local aZ,s,h,n,aI=M.drawTriangleF,M.drawRectF,M.setColor,M.drawText,M.drawLine
ad=ad+1
if ad<=1 then
if a[21]and not Q then
d=a[25][1]y,o=d[1],d[2]T,af=p-y/2,80-o/2
for j=0,y-1 do
ai=T+j
for P=0,o-1 do
q=d[5+P+j*o]if q~=0 then
l=a[20][q]h(l[1],l[2],l[3])s(ai,af+P,1,1)end
end
end
end
if not aB then
for c=1,#m do
d=m[c][2][1]aq=d>0 and aL or 1
d=a[17][abs(d)][1]d=a[23][d]y,o,am=d[1],d[2],d[3]*.7
aH=am*aE
T,af=p-(d[4]+160)*.7,u-(d[5]+148)*.7*aE
for j=0,y-1 do
ai=T+j*am
for P=0,o-1 do
q=d[7+P+j*o]if q~=0 then
l=a[20][q]h(l[1]*aq,l[2]*aq,l[3]*aq)s(ai,af+P*aH,am,aH)end
end
end
end
end
if Q then
if aB then
h(0,0,0)s(0,0,ab,u)for c=1,#a[2]do
_=a[2][c]if _[8]then
z=ac(aD(az(sub(a[4][_[1]],r[1]),as)),{p,aa})v=ac(aD(az(sub(a[4][_[2]],r[1]),as)),{p,aa})if _[3]&4>0 then
h(50,50,50)else
h(g,g,g)end
aI(z[1],z[2],v[1],v[2])end
end
h(g,g,g)_=a[19][10]for c=1,#_,4 do
V=sin(r[3]-90)U=cos(r[3]-90)z={_[c]*U+_[c+1]*V,_[c+1]*U-_[c]*V}v={_[c+2]*U+_[c+3]*V,_[c+3]*U-_[c+2]*V}z=ac(z,{p,aa})v=ac(v,{p,aa})aI(z[1],z[2],v[1],v[2])end
end
h(g,G>0 and 0 or g,0,G+F)s(0,0,ab,u)h(50,50,50)s(0,u,ab,32)h(25,25,25)s(p-16,u,32,32)d=a[23][a[19][3][1]+B]y,o=d[1],d[2]T=p-y/2
for c=0,y-1 do
for x=0,o-1 do
q=d[7+x+c*o]if q~=0 then
l=a[20][q]h(l[1],l[2],l[3])s(T+c,u+1+x,1,1)end
end
end
for c=5,7 do
_=a[19][c]h(_[1],_[2],_[3])s(229,95+c*7,6,7)end
h(g,g,g)n(100,131,S(A))n(100,137,S(aP))n(1,143,"DIF:")n(1,149,"LOD:")n(26,149,S(ag))n(26,143,S(W(av-3000,3)))end
n(1,131,"ROM:")n(26,131,Z)n(1,137,"TPS:")end
end
