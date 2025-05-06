-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 3533 (3900 with comment) chars
aC=""

y=255
w=180
af=nil
ah=input
ae=table.remove
am=string.sub
j=math
x=j.max
ak=j.min
abs=j.abs
O=j.floor
sqrt=j.sqrt
e=ah.getNumber
Q=ah.getBool
aA=output.setNumber
pi=j.pi
X=false
V=true
function ay(b,i)return b[1]*i[2]-b[2]*i[1]end
function sub(b,i)return{(b[1]-i[1]),(b[2]-i[2])}end
function aw(b)return((b+w)%360)-w end
function cos(b)return j.cos(b/w*pi)end
function tan(b)return j.tan(b/w*pi)end
function av(b)return j.atan(b)*w/pi end
function ax(b)return j.atan(b[2],b[1])*w/pi end
function aq(b,i,an)return ak(x(i,b),an)end
function as(b)return O(b+.5)end
function au(b,i)return sqrt(((b[1]-i[1])^2)+((b[2]-i[2])^2))end
function az(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
a={}M=1
H=3
F=X
R=1
ad=288
N=ad//2
z=128
aB=z//2
ai=1.2
ag={1,1}S=1
t=1
H=3
U=400
u=100
B=0
A=0
J={}h={}R=0
s=1
P=0
L=V
function onTick()P=0
for I=1,3 do
if Q(9)and(not F)or not a[21]then
W=property.getText(M..aC)if W~=aC then
c=1
f=aC
_=am(W,c,c)while _~=aCor f~=aCdo
if _==","or _==aCthen
f=f+0
if s==1 then
al=f
if a[f]==af then
a[f]={}end
s=2
elseif s==2 then
ao=f
D=0
s=3
elseif s==3 then
aa=f
s=4
else
if D==0 then
D=ao
aa=aa-1
ab={}a[al][#a[al]+1]=ab
end
ab[#ab+1]=f
D=D-1
if x(D,aa)==0 then
s=1
end
end
f=aC
else
f=f.._
end
c=c+1
_=am(W,c,c)end
M=M+1
else
F=V
end
end
end
if F then
if u>0 and not L then
v={}J[#J+1]=v
G=5
_=e(G)while _~=0 do
l={}v[#v+1]=l
for c=0,8 do
l[c+1]=e(G+c)end
G=G+9
_=e(G)end
end
if Q(1)then
R=R+1
if e(9)>0 then
L=V
H=e(9)end
if L then
for c=1,10 do
a[c]=a[c+10*H]end
H=H+1
L=X
end
if u>0 then
if Z~=e(1)then
h={}_={}_[1]=a[29][e(1)]_[2]=a[16][_[1][3]]at=_[2][1]_[3]=0
h[1]=_
end
Z=e(1)if Q(3)then
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
ae(h,c)end
end
end
if Q(2)then
B=50
end
A=x(A-4,0)A=aq(A+(u-e(3))*3,0,y)B=x(B-1.5,0)u=e(3)ap=e(4)if e(2)>0 then
_=a[2][e(2)]if _ then
if _[4]>3004 then
U=x(U+3*(_[4]-3006),1)end
end
end
for c=1,#J do
v=J[c]for I=1,#v do
l=v[I]_=l[1]if _>(2^15)then
_=a[8][_-(2^15)]_[1]=l[2]_[2]=l[3]elseif _<0 then
if-_<=#a[1]then
if a[1][-_]~=af then
l=a[1][-_][6]if a[16][l][5]>0 then
B=x(B,15)end
else
a[1][-_]={}end
while-_>#a[1]do
a[1][#a[1]+1]=X
end
ae(a[1],-_)end
else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for n=1,8 do
_[a[19][1][n]]=l[n+1]end
_[15]=0
end
end
end
J={}if R%16==1 then
S=S%256+1
t=(4-ak(u//20,4))*8
if ag[Z]then
t=t+a[13][1][S]%3
else
ag[Z]=1
t=t+6
end
if u<=0 then
t=41
end
end
end
end
end
function onDraw()K=screen
local ar,r,m,p=K.drawTriangleF,K.drawRectF,K.setColor,K.drawText
P=P+1
if P<=1 then
if a[21]and not F then
d=a[25][1]q,k=d[1],d[2]C,T=N-q/2,80-k/2
for n=0,q-1 do
Y=C+n
for E=0,k-1 do
o=d[5+E+n*k]if o~=0 then
g=a[20][o]m(g[1],g[2],g[3])r(Y,T+E,1,1)end
end
end
end
for c=1,#h do
d=a[17][abs(h[c][2][1])][1]d=a[23][d]q,k,ac=d[1],d[2],d[3]*.7
aj=ac*ai
C,T=N-(d[4]+160)*.7,z-(d[5]+148)*.7*ai
for n=0,q-1 do
Y=C+n*ac
for E=0,k-1 do
o=d[7+E+n*k]if o~=0 then
g=a[20][o]m(g[1],g[2],g[3])r(Y,T+E*aj,ac,aj)end
end
end
end
if F then
m(y,A>0 and 0 or y,0,A+B)r(0,0,ad,z)m(50,50,50)r(0,z,ad,32)m(25,25,25)r(N-16,z,32,32)d=a[23][a[19][3][1]+t]q,k=d[1],d[2]C=N-q/2
for c=0,q-1 do
for I=0,k-1 do
o=d[7+I+c*k]if o~=0 then
g=a[20][o]m(g[1],g[2],g[3])r(C+c,z+1+I,1,1)end
end
end
for c=5,7 do
_=a[19][c]m(_[1],_[2],_[3])r(229,95+c*7,6,7)end
m(y,y,y)p(100,131,O(u))p(100,137,O(ap))p(1,143,"DIF:")p(1,149,"LOD:")p(26,149,O(U))end
p(1,131,"ROM:")p(26,131,M)p(1,137,"TPS:")end
end
