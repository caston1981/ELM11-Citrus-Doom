-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 3543 (3910 with comment) chars
aC=""

v=255
z=180
af=nil
ag=input
ah=table.remove
ai=string.sub
i=math
w=i.max
aj=i.min
abs=i.abs
P=i.floor
sqrt=i.sqrt
e=ag.getNumber
Q=ag.getBool
av=output.setNumber
pi=i.pi
V=false
X=true
function as(b,j)return b[1]*j[2]-b[2]*j[1]end
function sub(b,j)return{(b[1]-j[1]),(b[2]-j[2])}end
function ax(b)return((b+z)%360)-z end
function cos(b)return i.cos(b/z*pi)end
function tan(b)return i.tan(b/z*pi)end
function au(b)return i.atan(b)*z/pi end
function at(b)return i.atan(b[2],b[1])*z/pi end
function an(b,j,ap)return aj(w(j,b),ap)end
function ar(b)return P(b+.5)end
function aA(b,j)return sqrt(((b[1]-j[1])^2)+((b[2]-j[2])^2))end
function az(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
a={}L=1
J=3
H=V
R=1
S=288
O=S//2
x=128
ay=x//2
ae=1.2
am={1,1}ad=1
u=1
J=3
aa=400
r=100
B=0
y=0
C={}h={}R=0
q=1
N=0
M=X
function onTick()N=0
for E=1,3 do
if Q(9)and(not H)or not a[21]then
Z=property.getText(L..aC)if Z~=aC then
c=1
f=aC
_=ai(Z,c,c)while _~=aCor f~=aCdo
if _==","or _==aCthen
f=f+0
if q==1 then
ak=f
if a[f]==af then
a[f]={}end
q=2
elseif q==2 then
ao=f
D=0
q=3
elseif q==3 then
U=f
q=4
else
if D==0 then
D=ao
U=U-1
T={}a[ak][#a[ak]+1]=T
end
T[#T+1]=f
D=D-1
if w(D,U)==0 then
q=1
end
end
f=aC
else
f=f.._
end
c=c+1
_=ai(Z,c,c)end
L=L+1
else
H=X
end
end
end
if H then
if r>0 and not M then
A={}C[#C+1]=A
I=5
_=e(I)while _~=0 do
k={}A[#A+1]=k
for c=0,8 do
k[c+1]=e(I+c)end
I=I+9
_=e(I)end
end
if Q(1)then
R=R+1
if e(9)>0 then
M=X
J=e(9)end
if M then
for c=1,10 do
a[c]=a[c+10*J]end
J=J+1
M=V
end
if r>0 then
if Y~=e(1)and e(1)>0then
h={}_={}_[1]=a[29][e(1)]_[2]=a[16][_[1][3]]aw=_[2][1]_[3]=0
h[1]=_
end
Y=e(1)if Q(3)then
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
ah(h,c)end
end
end
if Q(2)then
B=50
end
y=w(y-4,0)y=an(y+(r-e(3))*3,0,v)B=w(B-1.5,0)r=e(3)aq=e(4)if e(2)>0 then
_=a[2][e(2)]if _ then
if _[4]>3004 then
aa=w(aa+3*(_[4]-3006),1)end
end
end
for c=1,#C do
A=C[c]for E=1,#A do
k=A[E]_=k[1]if _>(2^15)then
_=a[8][_-(2^15)]_[1]=k[2]_[2]=k[3]elseif _<0 then
if-_<=#a[1]then
if a[1][-_]~=af then
k=a[1][-_][6]if a[16][k][5]>0 then
B=w(B,15)end
else
a[1][-_]={}end
while-_>#a[1]do
a[1][#a[1]+1]=V
end
ah(a[1],-_)end
else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for p=1,8 do
_[a[19][1][p]]=k[p+1]end
_[15]=0
end
end
end
C={}if R%16==1 then
ad=ad%256+1
u=(4-aj(r//20,4))*8
if am[Y]then
u=u+a[13][1][ad]%3
else
am[Y]=1
u=u+6
end
if r<=0 then
u=41
end
end
end
end
end
function onDraw()K=screen
local aB,s,m,n=K.drawTriangleF,K.drawRectF,K.setColor,K.drawText
N=N+1
if N<=1 then
if a[21]and not H then
d=a[25][1]t,l=d[1],d[2]F,W=O-t/2,80-l/2
for p=0,t-1 do
ab=F+p
for G=0,l-1 do
o=d[5+G+p*l]if o~=0 then
g=a[20][o]m(g[1],g[2],g[3])s(ab,W+G,1,1)end
end
end
end
for c=1,#h do
d=a[17][abs(h[c][2][1])][1]d=a[23][d]t,l,ac=d[1],d[2],d[3]*.7
al=ac*ae
F,W=O-(d[4]+160)*.7,x-(d[5]+148)*.7*ae
for p=0,t-1 do
ab=F+p*ac
for G=0,l-1 do
o=d[7+G+p*l]if o~=0 then
g=a[20][o]m(g[1],g[2],g[3])s(ab,W+G*al,ac,al)end
end
end
end
if H then
m(v,y>0 and 0 or v,0,y+B)s(0,0,S,x)m(50,50,50)s(0,x,S,32)m(25,25,25)s(O-16,x,32,32)d=a[23][a[19][3][1]+u]t,l=d[1],d[2]F=O-t/2
for c=0,t-1 do
for E=0,l-1 do
o=d[7+E+c*l]if o~=0 then
g=a[20][o]m(g[1],g[2],g[3])s(F+c,x+1+E,1,1)end
end
end
for c=5,7 do
_=a[19][c]m(_[1],_[2],_[3])s(229,95+c*7,6,7)end
m(v,v,v)n(100,131,P(r))n(100,137,P(aq))n(1,143,"DIF:")n(1,149,"LOD:")n(26,149,P(aa))end
n(1,131,"ROM:")n(26,131,L)n(1,137,"TPS:")end
end
