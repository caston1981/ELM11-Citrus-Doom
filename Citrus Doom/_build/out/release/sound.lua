-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 3552 (3919 with comment) chars
aD=""

y=255
w=180
aj=input
al=table.remove
h=math
v=h.max
ak=h.min
abs=h.abs
O=h.floor
sqrt=h.sqrt
e=aj.getNumber
K=aj.getBool
av=output.setNumber
pi=h.pi
ab=false
V=true
aa=string
function au(b,j)return b[1]*j[2]-b[2]*j[1]end
function sub(b,j)return{(b[1]-j[1]),(b[2]-j[2])}end
function aA(b)return((b+w)%360)-w end
function cos(b)return h.cos(b/w*pi)end
function tan(b)return h.tan(b/w*pi)end
function aw(b)return h.atan(b)*w/pi end
function at(b)return h.atan(b[2],b[1])*w/pi end
function aq(b,j,an)return ak(v(j,b),an)end
function az(b)return O(b+.5)end
function ar(b,j)return sqrt(((b[1]-j[1])^2)+((b[2]-j[2])^2))end
function aB(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
a={}L=1
F=3
J=ab
P=1
S=288
N=S//2
B=128
ay=B//2
ah=1.2
ai={1,1}X=1
q=1
F=3
ae=400
u=100
A=0
x=0
C={}i={}P=0
s=1
Q=0
M=V
function onTick()Q=0
for G=1,3 do
if K(9)and(not J)or not a[21]then
ac=property.getText(L..aD)if ac~=aD then
c=1
f=aD
_=aa.sub(ac,c,c)while _~=aDdo
am=aa.byte(_)if am>64 or _==aDthen
f=(f..(am-65))+0
if s==1then
af=f
if a[f]==ax then
a[f]={}end
s=2
elseif s==2then
ao=f
H=0
s=3
elseif s==3then
Y=f
s=4
else
if H==0then
H=ao
Y=Y-1
ad={}a[af][#a[af]+1]=ad
end
ad[#ad+1]=f
H=H-1
if v(H,Y)==0then
s=1
end
end
f=aD
else
f=f.._
end
c=c+1
_=aa.sub(ac,c,c)end
L=L+1
else
J=V
end
end
end
if J then
if u>0 and not M then
z={}C[#C+1]=z
E=5
_=e(E)while _~=0 do
k={}z[#z+1]=k
for c=0,8 do
k[c+1]=e(E+c)end
E=E+9
_=e(E)end
end
if K(1)then
P=P+1
if e(9)>0 then
M=V
F=e(9)end
if M then
for c=1,10 do
a[c]=a[c+10*F]end
F=F+1
M=ab
end
if u>0 then
if W~=e(1)and e(1)>0then
i={}_={}_[1]=a[29][e(1)]_[2]=a[16][_[1][3]]as=_[2][1]_[3]=0
i[1]=_
end
W=e(1)if K(3)then
_=i[1]_[2]=a[16][_[1][4]]_[3]=0
end
end
for c=#i,1,-1 do
_=i[c]if _[3]==0 then
if _[2][3]==4 then
i[#i+1]={_[1],a[16][_[1][5]],2}end
end
_[3]=_[3]+1
if _[3]>=_[2][2]then
if _[2][4]>2 then
_[2]=a[16][_[2][4]]_[3]=0
else
al(i,c)end
end
end
if K(2)then
A=50
end
x=v(x-4,0)x=aq(x+(u-e(3))*3,0,y)A=v(A-1.5,0)u=e(3)ap=e(4)if e(2)>0 then
_=a[2][e(2)]if _ then
if _[4]>3004 then
ae=v(ae+3*(_[4]-3006),1)end
end
end
for c=1,#C do
z=C[c]for G=1,#z do
k=z[G]_=k[1]if _>(2^15)then
_=a[8][_-(2^15)]_[1]=k[2]_[2]=k[3]elseif _<0 then
if-_<=#a[1]then
if a[1][-_]~=nil then
k=a[1][-_][6]if a[16][k][5]>0 then
A=v(A,15)end
else
a[1][-_]={}end
while-_>#a[1]do
a[1][#a[1]+1]=ab
end
al(a[1],-_)end
else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for p=1,8 do
_[a[19][1][p]]=k[p+1]end
_[15]=0
end
end
end
C={}if P%16==1 then
X=X%256+1
q=(4-ak(u//20,4))*8
if ai[W]then
q=q+a[13][1][X]%3
else
ai[W]=1
q=q+6
end
if u<=0 then
q=41
end
end
end
end
end
function onDraw()R=screen
local aC,r,o,n=R.drawTriangleF,R.drawRectF,R.setColor,R.drawText
Q=Q+1
if Q<=1 then
if a[21]and not J then
d=a[25][1]t,l=d[1],d[2]D,U=N-t/2,80-l/2
for p=0,t-1 do
T=D+p
for I=0,l-1 do
m=d[5+I+p*l]if m~=0 then
g=a[20][m]o(g[1],g[2],g[3])r(T,U+I,1,1)end
end
end
end
for c=1,#i do
d=a[17][abs(i[c][2][1])][1]d=a[23][d]t,l,Z=d[1],d[2],d[3]*.7
ag=Z*ah
D,U=N-(d[4]+160)*.7,B-(d[5]+148)*.7*ah
for p=0,t-1 do
T=D+p*Z
for I=0,l-1 do
m=d[7+I+p*l]if m~=0 then
g=a[20][m]o(g[1],g[2],g[3])r(T,U+I*ag,Z,ag)end
end
end
end
if J then
o(y,x>0 and 0 or y,0,x+A)r(0,0,S,B)o(50,50,50)r(0,B,S,32)o(25,25,25)r(N-16,B,32,32)d=a[23][a[19][3][1]+q]t,l=d[1],d[2]D=N-t/2
for c=0,t-1 do
for G=0,l-1 do
m=d[7+G+c*l]if m~=0 then
g=a[20][m]o(g[1],g[2],g[3])r(D+c,B+1+G,1,1)end
end
end
for c=5,7 do
_=a[19][c]o(_[1],_[2],_[3])r(229,95+c*7,6,7)end
o(y,y,y)n(100,131,O(u))n(100,137,O(ap))n(1,143,"DIF:")n(1,149,"LOD:")n(26,149,O(ae))end
n(1,131,"ROM:")n(26,131,L)n(1,137,"TPS:")end
end
