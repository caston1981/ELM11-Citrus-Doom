aN=""

t=255
B=180
ar=false
al=input
am=table.remove
i=math
w=i.max
S=i.min
abs=i.abs
O=i.floor
sqrt=i.sqrt
e=al.getNumber
T=al.getBool
aG=output.setNumber
pi=i.pi
Z=ar
aj=true
Y=string
function aL(b,k)return b[1]*k[2]-b[2]*k[1]end
function sub(b,k)return{(b[1]-k[1]),(b[2]-k[2])}end
function aK(b)return((b+B)%360)-B end
function cos(b)return i.cos(b/B*pi)end
function tan(b)return i.tan(b/B*pi)end
function aJ(b)return i.atan(b)*B/pi end
function aC(b)return i.atan(b[2],b[1])*B/pi end
function ay(b,k,aw)return S(w(k,b),aw)end
function aM(b)return O(b+.5)end
function aD(b,k)return sqrt(((b[1]-k[1])^2)+((b[2]-k[2])^2))end
function aF(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
a={}V=1
K=3
C=Z
U=1
R={{0,0},0,0}X=288
P=X//2
x=128
aH=x//2
an=1.2
aq={1,1}ae=1
v=1
K=3
ag=400
r=100
z=0
y=0
ap=3002
D={}j={}U=0
s=1
Q=0
H=0
M=aj
function at(c,b,_)if c<32768then
_=a[7][c]return at(_[_[3]*(b[2]-_[2])-_[4]*(b[1]-_[1])>0 and 8 or 7],b)else
c=a[5][a[6][c-32768][2]]return a[8][a[3][a[2][c[4]][c[5]+6]][6]]end
end
function onTick()Q=0
for J=1,3 do
if T(9)and(not C)or not a[21]then
ac=property.getText(V..aN)if ac~=aN then
c=1
g=aN
_=Y.sub(ac,c,c)while _~=aNdo
av=Y.byte(_)if av>64 or _==aNthen
g=(g..(av-65))+0
if s==1then
ak=g
if a[g]==aI then
a[g]={}end
s=2
elseif s==2then
aA=g
L=0
s=3
elseif s==3then
ab=g
s=4
else
if L==0then
L=aA
ab=ab-1
aa={}a[ak][#a[ak]+1]=aa
end
aa[#aa+1]=g
L=L-1
if w(L,ab)==0then
s=1
end
end
g=aN
else
g=g.._
end
c=c+1
_=Y.sub(ac,c,c)end
V=V+1
else
C=aj
end
end
end
if C then
if r>0 and not M then
A={}D[#D+1]=A
E=5
_=e(E)while _~=0 do
o={}A[#A+1]=o
for c=0,8 do
o[c+1]=e(E+c)end
E=E+9
_=e(E)end
end
if T(1)then
U=U+1
if M then
for c=1,10 do
a[c]=a[c+10*K]end
K=K+1
M=Z
for c=1,#a[1]do
_=a[1][c]end
end
if e(9)>0 then
M=aj
K=e(9)end
if r>0 then
if I~=e(1)and e(1)>0then
j={}_={}_[1]=a[29][e(1)]_[2]=a[16][_[1][3]]aE=_[2][1]_[3]=0
j[1]=_
end
I=e(1)ad=T(3)if ad and I==5 then
if H<=0 then
H=7
else
ad=ar
end
end
H=H-1
if ad then
_=j[1]_[2]=a[16][_[1][4]]_[3]=-1
end
end
for c=#j,1,-1 do
_=j[c]if _[3]==0 then
if _[2][3]==4 then
if I==5 and H<5 then
au=1
else
au=0
end
j[#j+1]={_[1],a[16][_[1][5]+au],2}end
end
_[3]=_[3]+1
if _[3]>=_[2][2]then
if _[2][4]>2 then
_[2]=a[16][_[2][4]]_[3]=0
else
am(j,c)end
end
end
if T(2)then
z=50
end
y=w(y-4,0)y=ay(y+(r-e(3))*3,0,t)z=w(z-1.5,0)r=e(3)ax=e(4)if e(2)>0 then
_=a[2][e(2)]if _ then
if _[4]>3004 and _[4]<3008 then
ag=w(ag+3*(_[4]-3006),1)elseif _[4]>3000 then
ap=_[4]end
end
end
for c=1,#D do
A=D[c]for J=1,#A do
o=A[J]_=o[1]if _>(2^15)then
_=a[8][_-(2^15)]for h=1,6 do
_[h]=o[h+1]end
elseif _<0 then
if-_<=#a[1]then
if a[1][-_]~=nil then
o=a[1][-_][6]if a[16][o][5]>0 then
z=w(z,15)end
else
a[1][-_]={}end
while-_>#a[1]do
a[1][#a[1]+1]=Z
end
am(a[1],-_)end
else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for h=1,8 do
_[a[19][1][h]]=o[h+1]end
_[15]=0
end
end
end
D={}_=a[1][1]R[1]={_[1],_[2]}R[3]=_[3]as=at(#a[7],R[1])R[2]=as[1]+41
az=S(as[5]/t,1)^1.3
if U%16==1 then
ae=ae%256+1
v=(4-S(r//20,4))*8
if aq[I]then
v=v+a[13][1][ae]%3
else
aq[I]=1
v=v+6
end
if r<=0 then
v=41
end
end
end
end
end
function onDraw()N=screen
local aB,q,n,m=N.drawTriangleF,N.drawRectF,N.setColor,N.drawText
Q=Q+1
if Q<=1 then
if a[21]and not C then
d=a[25][1]u,l=d[1],d[2]G,W=P-u/2,80-l/2
for h=0,u-1 do
ai=G+h
for F=0,l-1 do
p=d[5+F+h*l]if p~=0 then
f=a[20][p]n(f[1],f[2],f[3])q(ai,W+F,1,1)end
end
end
end
for c=1,#j do
d=j[c][2][1]ah=d>0 and az or 1
d=a[17][abs(d)][1]d=a[23][d]u,l,af=d[1],d[2],d[3]*.7
ao=af*an
G,W=P-(d[4]+160)*.7,x-(d[5]+148)*.7*an
for h=0,u-1 do
ai=G+h*af
for F=0,l-1 do
p=d[7+F+h*l]if p~=0 then
f=a[20][p]n(f[1]*ah,f[2]*ah,f[3]*ah)q(ai,W+F*ao,af,ao)end
end
end
end
if C then
n(t,y>0 and 0 or t,0,y+z)q(0,0,X,x)n(50,50,50)q(0,x,X,32)n(25,25,25)q(P-16,x,32,32)d=a[23][a[19][3][1]+v]u,l=d[1],d[2]G=P-u/2
for c=0,u-1 do
for J=0,l-1 do
p=d[7+J+c*l]if p~=0 then
f=a[20][p]n(f[1],f[2],f[3])q(G+c,x+1+J,1,1)end
end
end
for c=5,7 do
_=a[19][c]n(_[1],_[2],_[3])q(229,95+c*7,6,7)end
n(t,t,t)m(100,131,O(r))m(100,137,O(ax))m(1,143,"DIF:")m(1,149,"LOD:")m(26,149,O(ag))m(26,143,S(ap-3000,3))end
m(1,131,"ROM:")m(26,131,V)m(1,137,"TPS:")end
end
