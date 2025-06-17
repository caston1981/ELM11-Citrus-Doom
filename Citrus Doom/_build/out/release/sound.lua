
W=152
F=131
t=255
J=180
r=math
O=r.max
at=r.min
abs=r.abs
aa=r.floor
sqrt=r.sqrt
j=input.getNumber
T=input.getBool
aZ=output.setNumber
pi=r.pi
aG=false
aY=true
ai=table.remove
X=string
function as(c,l)return{(c[1]+l[1]),(c[2]+l[2])}end
function bh(c,l)return c[1]*l[2]-c[2]*l[1]end
function sub(c,l)return{(c[1]-l[1]),(c[2]-l[2])}end
function aN(c,l)return{c[1]*l,c[2]*l}end
function bq(c)return((c+J)%360)-J end
function sin(c)return r.sin(c/J*pi)end
function cos(c)return r.cos(c/J*pi)end
function tan(c)return r.tan(c/J*pi)end
function bt(c)return r.atan(c)*J/pi end
function br(c)return r.atan(c[2],c[1])*J/pi end
function aW(c,l,bj)return at(O(l,c),bj)end
function am(c)return aa(c+.5)end
function bp(c,l)return sqrt(((c[1]-l[1])^2)+((c[2]-l[2])^2))end
function aR(c)return{c[1],-c[2]}end
function bu(c)c=c-1
c=c|(c>>1)c=c|(c>>2)c=c|(c>>4)return c+1
end
a={}ab=1
Y=3
ag=aG
D={{0,0},0,0}av=288
E=av//2
B=128
au=B//2
aU=1.2
bd={1,1}az=1
ah=1
Y=3
aE=500
s=100
aS=100
ay=0
al=0
M=0
P=0
aJ=3002
aM=32768
v={}b_=.05
z={}Z={}be=2
ae=0
aD=0
an=0
K=1
aA=0
S=0
U=aY
function bb(b,c)if b<aM then
I=a[7][b]return bb(I[0<bh({I[3],I[4]},sub(c,I))and 8 or 7],c)else
return b-aM
end
end
function aO(c)I=a[5][a[6][c][2]]return a[8][a[3][a[2][I[4]][I[5]+6]][6]]end
function aq(h,p,ax,ar)local C,n=w.drawLine,w.setColor
ax=ax..""
ar=a[19][ar]for b=#ax,1,-1 do
_=ar[X.byte(X.sub(ax,b,b))]h=h-ar[1]if _>0 then
d=a[23][_]o,i=d[1],d[2]u=h-d[4]+1
af=p-d[5]for g=0,o-1 do
for f=0,i-1 do
k=d[7+f+g*i]if k~=0 then
e=a[20][k]n(e[1],e[2],e[3])C(u+g,af+f,u+g,af+f+1)end
end
end
end
end
end
function m(ba,aT,ad)w.setColor(13,0,0)w.drawText(ba+1,aT+1,ad)w.setColor(59,59,59)w.drawText(ba,aT,ad)end
function onTick()aA=0
for g=1,3 do
if T(9)and(not ag)or not a[21]then
aC=property.getText(ab)b=1
q=""
_=X.sub(aC,b,b)while _~=""do
H=X.byte(_)if H>64 then
q=(q..H-65)+0
if K==1 then
aX=q
a[q]=a[q]or{}elseif K==2 then
bg=q
V=0
elseif K==3 then
aK=q
else
if V==0 then
V=bg
aK=aK-1
aH={}a[aX][#a[aX]+1]=aH
end
aH[#aH+1]=q
V=V-1
K=O(V,aK)>0 and K-1 or 0
end
K=K+1
q=""
else
q=q.._
end
b=b+1
_=X.sub(aC,b,b)end
ab=ab+1
ag=aC==""
end
end
if ag then
if j(10)>0 then
U=aY
Y=j(10)end
aD=aD+1
a[12][1][aD%#a[12][1]+1]=am(j(11))if s>0 and not U then
Q={}ak[#ak+1]=Q
ac=6
_=j(ac)while _~=0 do
x={}Q[#Q+1]=x
for b=0,8 do
x[b+1]=j(ac+b)end
ac=ac+9
_=j(ac)end
end
if T(1)then
if U then
for b=1,10 do
a[b]=a[b+10*Y]end
Y=Y+1
U=aG
for b=#a[1],1,-1 do
_=a[1][b]_=_[5]&(aJ-3000)>0 or ai(a[1],b)end
for b=1,#a[8]do
a[8][b][8]={}end
for b=1,#a[6]do
_=aO(b)_[8][#_[8]+1]=b
end
ak={}end
al=al-1
if s>0 then
if N~=j(1)and j(1)>0 then
v={}_={}_[1]=a[29][j(1)]_[2]=a[16][_[1][3]]bs=_[2][1]_[3]=0
v[1]=_
end
N=j(1)aL=T(3)if aL and N==5 then
if S<=0 then
S=7
else
aL=false
end
end
S=S-1
if aL then
_=v[1]_[2]=a[16][_[1][4]]_[3]=-1
y=a[19][6][N]if y>0 then
z[#z+1]={y,1}end
end
end
for b=#v,1,-1 do
_=v[b]if _[3]==0 then
if _[2][3]==4 then
if N==5 and S<5 then
aV=1
else
aV=0
end
v[#v+1]={_[1],a[16][_[1][5]+aV],2}end
end
_[3]=_[3]+1
if _[3]>=_[2][2]then
if _[2][4]>2 then
_[2]=a[16][_[2][4]]_[3]=0
else
ai(v,b)end
end
end
if U then
M=50
end
P=O(P-4,0)P=aW(P+(s-j(3)+ay-j(4))*3,0,t)M=O(M-1.5,0)s=j(3)ay=j(4)if j(2)>0 and s>0 then
_=a[2][j(2)]if _ then
if _[4]>3004 and _[4]<3008 then
aE=O(aE+3*(_[4]-3006),1)elseif _[4]>3000 then
aJ=_[4]end
end
end
for b=1,#ak do
Q=ak[b]for g=1,#Q do
x=Q[g]_=x[1]if _>(2^15)then
_=a[8][_-(2^15)]for f=1,6 do
_[f]=x[f+1]end
elseif _<0 then
H=a[1][-_]if H then
x=H[6]if a[16][x][5]>0 then
M=O(M,15)al=35
bo=a[16][x][5]z[#z+1]={"item pickup sound index",1}if H[4]then
bn=a[15][H[4]]if bn[29]==a[19][13][1]then
for f=1,#a[2]do
a[2][f][8]=a[2][f][8]or 1
end
end
end
end
end
while-_>#a[1]do
a[1][#a[1]+1]=aG
end
ai(a[1],-_)else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for f=1,8 do
_[a[19][1][f]]=x[f+1]end
_[15]=0
end
end
end
ak={}_=a[1][1]D[1]={_[1],_[2]}D[3]=_[3]bl=bb(#a[7],D[1])ao=aO(bl)D[2]=ao[1]+41
bi=at(ao[5]/t,1)^1.3
for b=1,#ao[8]do
_=a[6][ao[8][b]]for g=_[2],_[1]+_[2]-1 do
bk=a[5][g]bm=a[2][bk[4]]bm[8]=2
end
end
bc=T(2)if j(12)>0 and s>0 then
z[#z+1]={j(12),1}end
ae=ae-1
an=an-1
if not bd[N]then
bd[N]=1
an=70
end
aF=(4-at(s//20,4))*8
if s<=0 then
ah=41
elseif an>0 then
ah=aF+6
elseif s<aS then
ae=35
ah=aF+7
elseif ae<=0 then
ae=16
az=az%256+1
ah=aF+a[13][1][az]%3
end
aS=s
end
for b=#z,1,-1 do
y=z[b]_=a[18][y[1]]if T(1)then
A=_[y[2]]y[2]=y[2]+4
else
A=_[y[2]+2]end
if A and A>0 then
Z[#Z+1]={A,1}end
if y[2]>=#_ then
ai(z,b)end
end
for b=1,32 do
aZ(b,0)end
for b=#Z,1,-1 do
A=Z[b]aZ(b+3,aW(am((A[1]+12)//2),1,60))A[2]=A[2]+1
if A[2]>be then
ai(Z,b)end
end
end
end
function onDraw()w=screen
local aj,n,C,ad=w.drawRectF,w.setColor,w.drawLine,w.drawText
aA=aA+1
if a[21]and not ag then
d=a[25][1]o,i=d[1],d[2]h,p=E-o/2,80-i/2
for f=0,o-1 do
u=h+f
for R=0,i-1 do
k=d[5+R+f*i]if k~=0 then
e=a[20][k]n(e[1],e[2],e[3])C(u,p+R,u,p+R+1)end
end
end
end
if not bc then
for b=1,#v do
d=v[b][2][1]aB=d>0 and bi or 1
d=a[17][abs(d)][1]d=a[23][d]o,i,aI=d[1],d[2],d[3]*.7
aQ=aI*aU
h,p=E-(d[4]+160)*.7,B-(d[5]+148)*.7*aU
for f=0,o-1 do
u=h+f*aI
for R=0,i-1 do
k=d[7+R+f*i]if k~=0 then
e=a[20][k]n(e[1]*aB,e[2]*aB,e[3]*aB)aj(u,p+R*aQ,aI,aQ)end
end
end
end
end
if ag then
if bc then
n(0,0,0)aj(0,0,av,B)for b=1,#a[2]do
_=a[2][b]if _[8]then
G=as(aR(aN(sub(a[4][_[1]],D[1]),b_)),{E,au})L=as(aR(aN(sub(a[4][_[2]],D[1]),b_)),{E,au})if _[8]==1 then
n(0,50,0)elseif _[3]&4>0 then
n(50,50,50)else
n(t,t,t)end
C(G[1],G[2],L[1],L[2])end
end
n(t,t,t)_=a[19][10]for b=1,#_,4 do
aw=sin(D[3]-90)ap=cos(D[3]-90)G={_[b]*ap+_[b+1]*aw,_[b+1]*ap-_[b]*aw}L={_[b+2]*ap+_[b+3]*aw,_[b+3]*ap-_[b+2]*aw}G=as(G,{E,au})L=as(L,{E,au})C(G[1],G[2],L[1],L[2])end
end
n(t,P>0 and 0 or t,0,P+M)aj(0,0,av,B)n(30,30,30)aj(0,B,av,32)n(5,5,5)aj(E-16,B,32,32)d=a[23]["face textures start"+(ah)*"number of sprite mipmap levels"]o,i=d[1],d[2]h=E-o/2
for b=0,o-1 do
for g=0,i-1 do
k=d[7+g+b*i]if k~=0 then
e=a[20][k]n(e[1],e[2],e[3])C(h+b,B+1+g,h+b,B+2+g)end
end
end
for b=1,3 do
if a[12][1][13+b]>0 then
h,p=221,125+b*8
d=a[23]["key textures start"+a[19][5][b]*"number of sprite mipmap levels"]o,i=d[1],d[2]for g=0,o-1 do
for f=0,i-1 do
k=d[7+f+g*i]if k~=0 then
e=a[20][k]n(e[1],e[2],e[3])C(h+g,p+f,h+g,p+f+1)end
end
end
end
end
if al>0 then
aP=a[13][bo]h=0
p=0
for bf=1,#aP do
_=aP[bf]if _>0 then
d=a[23][_]o,i=d[1],d[2]u=h-d[4]af=p-d[5]for b=0,o-1 do
for g=0,i-1 do
k=d[7+g+b*i]if k~=0 then
e=a[20][k]n(e[1],e[2],e[3])C(u+b,af+g,u+b,af+g+1)end
end
end
h=h+o
else
h=h+4
end
end
end
aq(124,F,aa(s).."%",16)aq(218,F,aa(ay).."%",16)m(124-28-15,W,"HEALTH")m(218-28-15,W,"ARMOUR")m(2,F,"ROM:")m(26,F,ab)m(2,138,"TPS:")m(26,138,a[12][1][17])m(2,145,"DIF:")m(26,145,aa(at(aJ-3000,3)))m(2,W,"LOD:")m(26,W,aa(aE))m(232,F,"BULL")m(232,138,"SHEL")m(232,145,"ROKT")m(232,W,"CELL")for b=1,4 do
c=124+b*7
aq(265,c,am(a[12][1][b]),15)aq(285,c,am(a[19][17][b]),15)m(268,c,"/")end
else
ad(1,F,"ROM:")ad(26,F,ab)end
end
