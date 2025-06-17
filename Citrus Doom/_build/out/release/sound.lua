
V=152
I=131
w=255
L=180
q=math
N=q.max
am=q.min
abs=q.abs
aj=q.floor
sqrt=q.sqrt
j=input.getNumber
Z=input.getBool
aM=output.setNumber
pi=q.pi
ay=false
aU=true
ad=table.remove
ai=string
function al(c,l)return{(c[1]+l[1]),(c[2]+l[2])}end
function be(c,l)return c[1]*l[2]-c[2]*l[1]end
function sub(c,l)return{(c[1]-l[1]),(c[2]-l[2])}end
function aN(c,l)return{c[1]*l,c[2]*l}end
function br(c)return((c+L)%360)-L end
function sin(c)return q.sin(c/L*pi)end
function cos(c)return q.cos(c/L*pi)end
function tan(c)return q.tan(c/L*pi)end
function bt(c)return q.atan(c)*L/pi end
function bs(c)return q.atan(c[2],c[1])*L/pi end
function aX(c,l,bl)return am(N(l,c),bl)end
function as(c)return aj(c+.5)end
function bq(c,l)return sqrt(((c[1]-l[1])^2)+((c[2]-l[2])^2))end
function aP(c)return{c[1],-c[2]}end
function bu(c)c=c-1
c=c|(c>>1)c=c|(c>>2)c=c|(c>>4)return c+1
end
a={}aa=1
T=3
U=ay
D={{0,0},0,0}at=288
C=at//2
E=128
au=E//2
aZ=1.2
aY={1,1}aF=1
Y=1
T=3
aL=400
s=100
aO=100
aK=0
ao=0
O=0
P=0
aH=3002
aT=32768
v={}bd=.05
x={}ae={}bn=2
ag=0
aD=0
an=0
G=1
aE=0
ak=0
ab=aU
function bc(b,c)if b<aT then
F=a[7][b]return bc(F[0<be({F[3],F[4]},sub(c,F))and 8 or 7],c)else
return b-aT
end
end
function aQ(c)F=a[5][a[6][c][2]]return a[8][a[3][a[2][F[4]][F[5]+6]][6]]end
function aq(h,p,av,ap)local B,n=t.drawLine,t.setColor
av=av..""
ap=a[19][ap]for b=#av,1,-1 do
_=ap[ai.byte(ai.sub(av,b,b))]h=h-ap[1]if _>0 then
d=a[23][_]o,i=d[1],d[2]u=h-d[4]+1
af=p-d[5]for g=0,o-1 do
for f=0,i-1 do
k=d[7+f+g*i]if k~=0 then
e=a[20][k]n(e[1],e[2],e[3])B(u+g,af+f,u+g,af+f+1)end
end
end
end
end
end
function m(ba,bb,S)t.setColor(13,0,0)t.drawText(ba+1,bb+1,S)t.setColor(59,59,59)t.drawText(ba,bb,S)end
function onTick()aE=0
for g=1,3 do
if Z(9)and(not U)or not a[21]then
aJ=property.getText(aa)b=1
r=""
_=ai.sub(aJ,b,b)while _~=""do
H=ai.byte(_)if H>64 then
r=(r..H-65)+0
if G==1 then
aS=r
a[r]=a[r]or{}elseif G==2 then
bh=r
X=0
elseif G==3 then
aI=r
else
if X==0 then
X=bh
aI=aI-1
aC={}a[aS][#a[aS]+1]=aC
end
aC[#aC+1]=r
X=X-1
G=N(X,aI)>0 and G-1 or 0
end
G=G+1
r=""
else
r=r.._
end
b=b+1
_=ai.sub(aJ,b,b)end
aa=aa+1
U=aJ==""
end
end
if U then
if j(10)>0 then
ab=aU
T=j(10)end
aD=aD+1
a[12][1][aD%#a[12][1]+1]=as(j(11))if s>0 and not ab then
Q={}ac[#ac+1]=Q
ah=6
_=j(ah)while _~=0 do
A={}Q[#Q+1]=A
for b=0,8 do
A[b+1]=j(ah+b)end
ah=ah+9
_=j(ah)end
end
if Z(1)then
if ab then
for b=1,10 do
a[b]=a[b+10*T]end
T=T+1
ab=ay
for b=#a[1],1,-1 do
_=a[1][b]_=_[5]&(aH-3000)>0 or ad(a[1],b)end
for b=1,#a[8]do
a[8][b][8]={}end
for b=1,#a[6]do
_=aQ(b)_[8][#_[8]+1]=b
end
ac={}end
ao=ao-1
if s>0 then
if M~=j(1)and j(1)>0 then
v={}_={}_[1]=a[29][j(1)]_[2]=a[16][_[1][3]]bp=_[2][1]_[3]=0
v[1]=_
end
M=j(1)aA=Z(3)if aA and M==5 then
if ak<=0 then
ak=7
else
aA=false
end
end
ak=ak-1
if aA then
_=v[1]_[2]=a[16][_[1][4]]_[3]=-1
y=a[19][6][M]if y>0 then
x[#x+1]={y,1}end
end
end
for b=#v,1,-1 do
_=v[b]if _[3]==0 then
if _[2][3]==4 then
if M==5 and ak<5 then
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
ad(v,b)end
end
end
if ab then
O=50
end
P=N(P-4,0)P=aX(P+(s-j(3)+aK-j(4))*3,0,w)O=N(O-1.5,0)s=j(3)aK=j(4)if j(2)>0 and s>0 then
_=a[2][j(2)]if _ then
if _[4]>3004 and _[4]<3008 then
aL=N(aL+3*(_[4]-3006),1)elseif _[4]>3000 then
aH=_[4]end
end
end
for b=1,#ac do
Q=ac[b]for g=1,#Q do
A=Q[g]_=A[1]if _>(2^15)then
_=a[8][_-(2^15)]for f=1,6 do
_[f]=A[f+1]end
elseif _<0 then
H=a[1][-_]if H then
A=H[6]if a[16][A][5]>0 then
O=N(O,15)ao=35
bf=a[16][A][5]x[#x+1]={"item pickup sound index",1}if H[4]then
bg=a[15][H[4]]if bg[29]==a[19][13][1]then
for f=1,#a[2]do
a[2][f][8]=a[2][f][8]or 1
end
end
end
end
end
while-_>#a[1]do
a[1][#a[1]+1]=ay
end
ad(a[1],-_)else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for f=1,8 do
_[a[19][1][f]]=A[f+1]end
_[15]=0
end
end
end
ac={}_=a[1][1]D[1]={_[1],_[2]}D[3]=_[3]bj=bc(#a[7],D[1])aw=aQ(bj)D[2]=aw[1]+41
bi=am(aw[5]/w,1)^1.3
for b=1,#aw[8]do
_=a[6][aw[8][b]]for g=_[2],_[1]+_[2]-1 do
bo=a[5][g]bk=a[2][bo[4]]bk[8]=2
end
end
aW=Z(2)if j(12)>0 and s>0 then
x[#x+1]={j(12),1}end
ag=ag-1
an=an-1
if not aY[M]then
aY[M]=1
an=70
end
aG=(4-am(s//20,4))*8
if s<=0 then
Y=41
elseif an>0 then
Y=aG+6
elseif s<aO then
ag=35
Y=aG+7
elseif ag<=0 then
ag=16
aF=aF%256+1
Y=aG+a[13][1][aF]%3
end
aO=s
end
for b=#x,1,-1 do
y=x[b]_=a[18][y[1]]if Z(1)then
z=_[y[2]]y[2]=y[2]+4
else
z=_[y[2]+2]end
if z and z>0 then
ae[#ae+1]={z,1}end
if y[2]>=#_ then
ad(x,b)end
end
for b=1,32 do
aM(b,0)end
for b=#ae,1,-1 do
z=ae[b]aM(b+3,aX(as((z[1]+12)//2),1,60))z[2]=z[2]+1
if z[2]>bn then
ad(ae,b)end
end
end
end
function onDraw()t=screen
local W,n,B,S=t.drawRectF,t.setColor,t.drawLine,t.drawText
aE=aE+1
if a[21]and not U then
d=a[25][1]o,i=d[1],d[2]h,p=C-o/2,80-i/2
for f=0,o-1 do
u=h+f
for R=0,i-1 do
k=d[5+R+f*i]if k~=0 then
e=a[20][k]n(e[1],e[2],e[3])B(u,p+R,u,p+R+1)end
end
end
end
if not aW then
for b=1,#v do
d=v[b][2][1]aB=d>0 and bi or 1
d=a[17][abs(d)][1]d=a[23][d]o,i,az=d[1],d[2],d[3]*.7
b_=az*aZ
h,p=C-(d[4]+160)*.7,E-(d[5]+148)*.7*aZ
for f=0,o-1 do
u=h+f*az
for R=0,i-1 do
k=d[7+R+f*i]if k~=0 then
e=a[20][k]n(e[1]*aB,e[2]*aB,e[3]*aB)W(u,p+R*b_,az,b_)end
end
end
end
end
if U then
if aW then
n(0,0,0)W(0,0,at,E)for b=1,#a[2]do
_=a[2][b]if _[8]then
K=al(aP(aN(sub(a[4][_[1]],D[1]),bd)),{C,au})J=al(aP(aN(sub(a[4][_[2]],D[1]),bd)),{C,au})if _[8]==1 then
n(0,50,0)elseif _[3]&4>0 then
n(50,50,50)else
n(w,w,w)end
B(K[1],K[2],J[1],J[2])end
end
n(w,w,w)_=a[19][10]for b=1,#_,4 do
ar=sin(D[3]-90)ax=cos(D[3]-90)K={_[b]*ax+_[b+1]*ar,_[b+1]*ax-_[b]*ar}J={_[b+2]*ax+_[b+3]*ar,_[b+3]*ax-_[b+2]*ar}K=al(K,{C,au})J=al(J,{C,au})B(K[1],K[2],J[1],J[2])end
end
n(w,P>0 and 0 or w,0,P+O)W(0,0,at,E)n(30,30,30)W(0,E,at,32)n(5,5,5)W(C-16,E,32,32)d=a[23]["face textures start"+(Y)*"number of sprite mipmap levels"]o,i=d[1],d[2]h=C-o/2
for b=0,o-1 do
for g=0,i-1 do
k=d[7+g+b*i]if k~=0 then
e=a[20][k]n(e[1],e[2],e[3])B(h+b,E+1+g,h+b,E+2+g)end
end
end
for b=1,3 do
if a[12][1][13+b]>0 then
h,p=221,125+b*8
d=a[23]["key textures start"+a[19][5][b]*"number of sprite mipmap levels"]o,i=d[1],d[2]for g=0,o-1 do
for f=0,i-1 do
k=d[7+f+g*i]if k~=0 then
e=a[20][k]n(e[1],e[2],e[3])B(h+g,p+f,h+g,p+f+1)end
end
end
end
end
if ao>0 then
aR=a[13][bf]h=0
p=0
for bm=1,#aR do
_=aR[bm]if _>0 then
d=a[23][_]o,i=d[1],d[2]u=h-d[4]af=p-d[5]for b=0,o-1 do
for g=0,i-1 do
k=d[7+g+b*i]if k~=0 then
e=a[20][k]n(e[1],e[2],e[3])B(u+b,af+g,u+b,af+g+1)end
end
end
h=h+o
else
h=h+4
end
end
end
aq(124,I,aj(s).."%",16)aq(218,I,aj(aK).."%",16)m(124-28-15,V,"HEALTH")m(218-28-15,V,"ARMOUR")m(2,I,"ROM:")m(26,I,aa)m(2,138,"TPS:")m(26,138,a[12][1][17])m(2,145,"DIF:")m(26,145,aj(am(aH-3000,3)))m(2,V,"LOD:")m(26,V,aj(aL))m(232,I,"BULL")m(232,138,"SHEL")m(232,145,"ROKT")m(232,V,"CELL")for b=1,4 do
c=124+b*7
aq(265,c,as(a[12][1][b]),15)aq(285,c,as(a[19][17][b]),15)m(268,c,"/")end
else
S(1,I,"ROM:")S(26,I,aa)end
end
