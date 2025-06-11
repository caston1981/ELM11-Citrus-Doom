
ak=152
I=131
v=255
L=180
q=math
P=q.max
ap=q.min
abs=q.abs
V=q.floor
sqrt=q.sqrt
k=input.getNumber
U=input.getBool
ba=output.setNumber
pi=q.pi
ay=false
aU=true
X=table.remove
Z=string
function av(c,l)return{(c[1]+l[1]),(c[2]+l[2])}end
function bl(c,l)return c[1]*l[2]-c[2]*l[1]end
function sub(c,l)return{(c[1]-l[1]),(c[2]-l[2])}end
function aM(c,l)return{c[1]*l,c[2]*l}end
function bp(c)return((c+L)%360)-L end
function sin(c)return q.sin(c/L*pi)end
function cos(c)return q.cos(c/L*pi)end
function tan(c)return q.tan(c/L*pi)end
function bt(c)return q.atan(c)*L/pi end
function bs(c)return q.atan(c[2],c[1])*L/pi end
function aW(c,l,bo)return ap(P(l,c),bo)end
function au(c)return V(c+.5)end
function br(c,l)return sqrt(((c[1]-l[1])^2)+((c[2]-l[2])^2))end
function bd(c)return{c[1],-c[2]}end
function bu(c)c=c-1
c=c|(c>>1)c=c|(c>>2)c=c|(c>>4)return c+1
end
a={}ac=1
ah=3
ad=ay
A={{0,0},0,0}al=288
B=al//2
C=128
aq=C//2
aS=1.2
aV={1,1}aJ=1
ag=1
ah=3
aK=400
z=100
aX=100
aC=0
ar=0
M=0
Q=0
aF=3002
b_=32768
t={}aQ=.05
F={}ab={}bh=2
ae=0
aI=0
an=0
H=1
aG=0
S=0
T=aU
function aP(b,c)if b<b_ then
E=a[7][b]return aP(E[0<bl({E[3],E[4]},sub(c,E))and 8 or 7],c)else
return b-b_
end
end
function aT(c)E=a[5][a[6][c][2]]return a[8][a[3][a[2][E[4]][E[5]+6]][6]]end
function ao(h,r,am,ax)local D,o=s.drawLine,s.setColor
am=am..""
ax=a[19][ax]for b=#am,1,-1 do
_=ax[Z.byte(Z.sub(am,b,b))]h=h-ax[1]if _>0 then
d=a[23][_]n,i=d[1],d[2]u=h-d[4]+1
af=r-d[5]for g=0,n-1 do
for f=0,i-1 do
j=d[7+f+g*i]if j~=0 then
e=a[20][j]o(e[1],e[2],e[3])D(u+g,af+f,u+g,af+f+1)end
end
end
end
end
end
function m(bb,aR,aa)s.setColor(13,0,0)s.drawText(bb+1,aR+1,aa)s.setColor(59,59,59)s.drawText(bb,aR,aa)end
function onTick()aG=0
for g=1,3 do
if U(9)and(not ad)or not a[21]then
aB=property.getText(ac)b=1
p=""
_=Z.sub(aB,b,b)while _~=""do
G=Z.byte(_)if G>64 then
p=(p..G-65)+0
if H==1 then
bc=p
a[p]=a[p]or{}elseif H==2 then
bg=p
W=0
elseif H==3 then
aD=p
else
if W==0 then
W=bg
aD=aD-1
aA={}a[bc][#a[bc]+1]=aA
end
aA[#aA+1]=p
W=W-1
H=P(W,aD)>0 and H-1 or 0
end
H=H+1
p=""
else
p=p.._
end
b=b+1
_=Z.sub(aB,b,b)end
ac=ac+1
ad=aB==""
end
end
if ad then
if k(9)>0 then
T=aU
ah=k(9)end
aI=aI+1
a[12][1][aI%#a[12][1]+1]=au(k(10))if z>0 and not T then
O={}aj[#aj+1]=O
ai=5
_=k(ai)while _~=0 do
w={}O[#O+1]=w
for b=0,8 do
w[b+1]=k(ai+b)end
ai=ai+9
_=k(ai)end
end
if U(1)then
if T then
for b=1,10 do
a[b]=a[b+10*ah]end
ah=ah+1
T=ay
for b=#a[1],1,-1 do
_=a[1][b]_=_[5]&(aF-3000)>0 or X(a[1],b)end
for b=1,#a[8]do
a[8][b][8]={}end
for b=1,#a[6]do
_=aT(b)_[8][#_[8]+1]=b
end
aj={}end
ar=ar-1
if z>0 then
if N~=k(1)and k(1)>0 then
t={}_={}_[1]=a[29][k(1)]_[2]=a[16][_[1][3]]bq=_[2][1]_[3]=0
t[1]=_
end
N=k(1)az=U(3)if az and N==5 then
if S<=0 then
S=7
else
az=false
end
end
S=S-1
if az then
_=t[1]_[2]=a[16][_[1][4]]_[3]=-1
y=a[19][6][N]if y>0 then
F[#F+1]={y,1}end
end
end
for b=#t,1,-1 do
_=t[b]if _[3]==0 then
if _[2][3]==4 then
if N==5 and S<5 then
aZ=1
else
aZ=0
end
t[#t+1]={_[1],a[16][_[1][5]+aZ],2}end
end
_[3]=_[3]+1
if _[3]>=_[2][2]then
if _[2][4]>2 then
_[2]=a[16][_[2][4]]_[3]=0
else
X(t,b)end
end
end
if T then
M=50
end
Q=P(Q-4,0)Q=aW(Q+(z-k(3)+aC-k(4))*3,0,v)M=P(M-1.5,0)z=k(3)aC=k(4)if k(2)>0 then
_=a[2][k(2)]if _ then
if _[4]>3004 and _[4]<3008 then
aK=P(aK+3*(_[4]-3006),1)elseif _[4]>3000 then
aF=_[4]end
end
end
for b=1,#aj do
O=aj[b]for g=1,#O do
w=O[g]_=w[1]if _>(2^15)then
_=a[8][_-(2^15)]for f=1,6 do
_[f]=w[f+1]end
elseif _<0 then
G=a[1][-_]if G then
w=G[6]if a[16][w][5]>0 then
M=P(M,15)ar=35
bj=a[16][w][5]F[#F+1]={a[19][11][1],1}if G[4]then
bf=a[15][G[4]]if bf[29]==a[19][13][1]then
for f=1,#a[2]do
a[2][f][8]=true
end
end
end
end
end
while-_>#a[1]do
a[1][#a[1]+1]=ay
end
X(a[1],-_)else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for f=1,8 do
_[a[19][1][f]]=w[f+1]end
_[15]=0
end
end
end
aj={}_=a[1][1]A[1]={_[1],_[2]}A[3]=_[3]bn=aP(#a[7],A[1])aw=aT(bn)A[2]=aw[1]+41
bm=ap(aw[5]/v,1)^1.3
for b=1,#aw[8]do
_=a[6][aw[8][b]]for g=_[2],_[1]+_[2]-1 do
bk=a[5][g]be=a[2][bk[4]]be[8]=true
end
end
aO=U(2)ae=ae-1
an=an-1
if not aV[N]then
aV[N]=1
an=70
end
aH=(4-ap(z//20,4))*8
if z<=0 then
ag=41
elseif an>0 then
ag=aH+6
elseif z<aX then
ae=35
ag=aH+7
elseif ae<=0 then
ae=16
aJ=aJ%256+1
ag=aH+a[13][1][aJ]%3
end
aX=z
end
for b=#F,1,-1 do
y=F[b]_=a[18][y[1]]if U(1)then
x=_[y[2]]y[2]=y[2]+4
else
x=_[y[2]+2]end
if x and x>0 then
ab[#ab+1]={x,1}end
if y[2]>=#_ then
X(F,b)end
end
for b=1,32 do
ba(b,0)end
for b=#ab,1,-1 do
x=ab[b]ba(b+3,aW(au((x[1]+12)//2),1,60))x[2]=x[2]+1
if x[2]>bh then
X(ab,b)end
end
end
end
function onDraw()s=screen
local Y,o,D,aa=s.drawRectF,s.setColor,s.drawLine,s.drawText
aG=aG+1
if a[21]and not ad then
d=a[25][1]n,i=d[1],d[2]h,r=B-n/2,80-i/2
for f=0,n-1 do
u=h+f
for R=0,i-1 do
j=d[5+R+f*i]if j~=0 then
e=a[20][j]o(e[1],e[2],e[3])D(u,r+R,u,r+R+1)end
end
end
end
if not aO then
for b=1,#t do
d=t[b][2][1]aL=d>0 and bm or 1
d=a[17][abs(d)][1]d=a[23][d]n,i,aE=d[1],d[2],d[3]*.7
aY=aE*aS
h,r=B-(d[4]+160)*.7,C-(d[5]+148)*.7*aS
for f=0,n-1 do
u=h+f*aE
for R=0,i-1 do
j=d[7+R+f*i]if j~=0 then
e=a[20][j]o(e[1]*aL,e[2]*aL,e[3]*aL)Y(u,r+R*aY,aE,aY)end
end
end
end
end
if ad then
if aO then
o(0,0,0)Y(0,0,al,C)for b=1,#a[2]do
_=a[2][b]if _[8]then
K=av(bd(aM(sub(a[4][_[1]],A[1]),aQ)),{B,aq})J=av(bd(aM(sub(a[4][_[2]],A[1]),aQ)),{B,aq})if _[3]&4>0 then
o(50,50,50)else
o(v,v,v)end
D(K[1],K[2],J[1],J[2])end
end
o(v,v,v)_=a[19][10]for b=1,#_,4 do
as=sin(A[3]-90)at=cos(A[3]-90)K={_[b]*at+_[b+1]*as,_[b+1]*at-_[b]*as}J={_[b+2]*at+_[b+3]*as,_[b+3]*at-_[b+2]*as}K=av(K,{B,aq})J=av(J,{B,aq})D(K[1],K[2],J[1],J[2])end
end
o(v,Q>0 and 0 or v,0,Q+M)Y(0,0,al,C)o(30,30,30)Y(0,C,al,32)o(5,5,5)Y(B-16,C,32,32)d=a[23][a[19][3][1]+(ag)*a[19][3][3]]n,i=d[1],d[2]h=B-n/2
for b=0,n-1 do
for g=0,i-1 do
j=d[7+g+b*i]if j~=0 then
e=a[20][j]o(e[1],e[2],e[3])D(h+b,C+1+g,h+b,C+2+g)end
end
end
for b=1,3 do
if a[12][1][13+b]>0 then
h,r=221,125+b*8
d=a[23][a[19][3][4]+a[19][5][b]*a[19][3][3]]n,i=d[1],d[2]for g=0,n-1 do
for f=0,i-1 do
j=d[7+f+g*i]if j~=0 then
e=a[20][j]o(e[1],e[2],e[3])D(h+g,r+f,h+g,r+f+1)end
end
end
end
end
if ar>0 then
aN=a[13][bj]h=0
r=0
for bi=1,#aN do
_=aN[bi]if _>0 then
d=a[23][_]n,i=d[1],d[2]u=h-d[4]af=r-d[5]for b=0,n-1 do
for g=0,i-1 do
j=d[7+g+b*i]if j~=0 then
e=a[20][j]o(e[1],e[2],e[3])D(u+b,af+g,u+b,af+g+1)end
end
end
h=h+n
else
h=h+4
end
end
end
ao(124,I,V(z).."%",16)ao(218,I,V(aC).."%",16)m(124-28-15,ak,"HEALTH")m(218-28-15,ak,"ARMOUR")m(2,I,"ROM:")m(26,I,ac)m(2,138,"TPS:")m(26,138,a[12][1][17])m(2,145,"DIF:")m(26,145,V(ap(aF-3000,3)))m(2,ak,"LOD:")m(26,ak,V(aK))m(232,I,"BULL")m(232,138,"SHEL")m(232,145,"ROKT")m(232,ak,"CELL")for b=1,4 do
c=124+b*7
ao(265,c,au(a[12][1][b]),15)ao(285,c,au(a[19][17][b]),15)m(268,c,"/")end
else
aa(1,I,"ROM:")aa(26,I,ac)end
end
