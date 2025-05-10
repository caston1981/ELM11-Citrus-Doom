-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>

aE=""

v=255
B=180
aj=input
am=table.remove
i=math
z=i.max
af=i.min
abs=i.abs
O=i.floor
sqrt=i.sqrt
e=aj.getNumber
K=aj.getBool
at=output.setNumber
pi=i.pi
ab=false
Z=true
ac=string
function az(b,j)return b[1]*j[2]-b[2]*j[1]end
function sub(b,j)return{(b[1]-j[1]),(b[2]-j[2])}end
function ax(b)return((b+B)%360)-B end
function cos(b)return i.cos(b/B*pi)end
function tan(b)return i.tan(b/B*pi)end
function aA(b)return i.atan(b)*B/pi end
function av(b)return i.atan(b[2],b[1])*B/pi end
function aq(b,j,ap)return af(z(j,b),ap)end
function aD(b)return O(b+.5)end
function au(b,j)return sqrt(((b[1]-j[1])^2)+((b[2]-j[2])^2))end
function aw(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
a={}L=1
I=3
E=ab
M=1
W=288
Q=W//2
A=128
as=A//2
ag=1.2
ai={1,1}ae=1
t=1
I=3
S=400
u=100
w=0
y=0
ah=3002
G={}h={}M=0
q=1
R=0
N=Z
function onTick()R=0
for F=1,3 do
if K(9)and(not E)or not a[21]then
Y=property.getText(L..aE)if Y~=aE then
c=1
f=aE
_=ac.sub(Y,c,c)while _~=aEdo
an=ac.byte(_)if an>64 or _==aEthen
f=(f..(an-65))+0
if q==1then
al=f
if a[f]==ay then
a[f]={}end
q=2
elseif q==2then
ao=f
H=0
q=3
elseif q==3then
X=f
q=4
else
if H==0then
H=ao
X=X-1
T={}a[al][#a[al]+1]=T
end
T[#T+1]=f
H=H-1
if z(H,X)==0then
q=1
end
end
f=aE
else
f=f.._
end
c=c+1
_=ac.sub(Y,c,c)end
L=L+1
else
E=Z
end
end
end
if E then
if u>0 and not N then
x={}G[#G+1]=x
D=5
_=e(D)while _~=0 do
l={}x[#x+1]=l
for c=0,8 do
l[c+1]=e(D+c)end
D=D+9
_=e(D)end
end
if K(1)then
M=M+1
if e(9)>0 then
N=Z
I=e(9)end
if N then
for c=1,10 do
a[c]=a[c+10*I]end
I=I+1
N=ab
end
if u>0 then
if ad~=e(1)and e(1)>0then
h={}_={}_[1]=a[29][e(1)]_[2]=a[16][_[1][3]]aC=_[2][1]_[3]=0
h[1]=_
end
ad=e(1)if K(3)then
_=h[1]_[2]=a[16][_[1][4]]_[3]=0
end
end
for c=#h,1,-1 do
_=h[c]if _[3]==0 then
if _[2][3]==4 then
h[#h+1]={_[1],a[16][_[1][5]],2}end
end
_[3]=_[3]+1
if _[3]>=_[2][2]then
if _[2][4]>2 then
_[2]=a[16][_[2][4]]_[3]=0
else
am(h,c)end
end
end
if K(2)then
w=50
end
y=z(y-4,0)y=aq(y+(u-e(3))*3,0,v)w=z(w-1.5,0)u=e(3)ar=e(4)if e(2)>0 then
_=a[2][e(2)]if _ then
if _[4]>3004 and _[4]<3008 then
S=z(S+3*(_[4]-3006),1)elseif _[4]>3000 then
ah=_[4]end
end
end
for c=1,#G do
x=G[c]for F=1,#x do
l=x[F]_=l[1]if _>(2^15)then
_=a[8][_-(2^15)]_[1]=l[2]_[2]=l[3]elseif _<0 then
if-_<=#a[1]then
if a[1][-_]~=nil then
l=a[1][-_][6]if a[16][l][5]>0 then
w=z(w,15)end
else
a[1][-_]={}end
while-_>#a[1]do
a[1][#a[1]+1]=ab
end
am(a[1],-_)end
else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for n=1,8 do
_[a[19][1][n]]=l[n+1]end
_[15]=0
end
end
end
G={}if M%16==1 then
ae=ae%256+1
t=(4-af(u//20,4))*8
if ai[ad]then
t=t+a[13][1][ae]%3
else
ai[ad]=1
t=t+6
end
if u<=0 then
t=41
end
end
end
end
end
function onDraw()P=screen
local aB,r,o,m=P.drawTriangleF,P.drawRectF,P.setColor,P.drawText
R=R+1
if R<=1 then
if a[21]and not E then
d=a[25][1]s,k=d[1],d[2]J,aa=Q-s/2,80-k/2
for n=0,s-1 do
U=J+n
for C=0,k-1 do
p=d[5+C+n*k]if p~=0 then
g=a[20][p]o(g[1],g[2],g[3])r(U,aa+C,1,1)end
end
end
end
for c=1,#h do
d=a[17][abs(h[c][2][1])][1]d=a[23][d]s,k,V=d[1],d[2],d[3]*.7
ak=V*ag
J,aa=Q-(d[4]+160)*.7,A-(d[5]+148)*.7*ag
for n=0,s-1 do
U=J+n*V
for C=0,k-1 do
p=d[7+C+n*k]if p~=0 then
g=a[20][p]o(g[1],g[2],g[3])r(U,aa+C*ak,V,ak)end
end
end
end
if E then
o(v,y>0 and 0 or v,0,y+w)r(0,0,W,A)o(50,50,50)r(0,A,W,32)o(25,25,25)r(Q-16,A,32,32)d=a[23][a[19][3][1]+t]s,k=d[1],d[2]J=Q-s/2
for c=0,s-1 do
for F=0,k-1 do
p=d[7+F+c*k]if p~=0 then
g=a[20][p]o(g[1],g[2],g[3])r(J+c,A+1+F,1,1)end
end
end
for c=5,7 do
_=a[19][c]o(_[1],_[2],_[3])r(229,95+c*7,6,7)end
o(v,v,v)m(100,131,O(u))m(100,137,O(ar))m(1,143,"DIF:")m(1,149,"LOD:")m(26,149,O(S))m(26,143,af(ah-3000,3))end
m(1,131,"ROM:")m(26,131,L)m(1,137,"TPS:")end
end
