
ag=152
F=131
u=255
E=180
r=math
Q=r.max
aq=r.min
abs=r.abs
U=r.floor
sqrt=r.sqrt
l=input.getNumber
V=input.getBool
ba=output.setNumber
pi=r.pi
aD=false
aO=true
ak=table.remove
aa=string
function at(c,k)return{(c[1]+k[1]),(c[2]+k[2])}end
function bg(c,k)return c[1]*k[2]-c[2]*k[1]end
function sub(c,k)return{(c[1]-k[1]),(c[2]-k[2])}end
function bb(c,k)return{c[1]*k,c[2]*k}end
function bs(c)return((c+E)%360)-E end
function sin(c)return r.sin(c/E*pi)end
function cos(c)return r.cos(c/E*pi)end
function tan(c)return r.tan(c/E*pi)end
function bt(c)return r.atan(c)*E/pi end
function bu(c)return r.atan(c[2],c[1])*E/pi end
function aX(c,k,bo)return aq(Q(k,c),bo)end
function al(c)return U(c+.5)end
function bp(c,k)return sqrt(((c[1]-k[1])^2)+((c[2]-k[2])^2))end
function aW(c)return{c[1],-c[2]}end
function bq(c)c=c-1
c=c|(c>>1)c=c|(c>>2)c=c|(c>>4)return c+1
end
a={}S=1
af=3
Z=aD
A={{0,0},0,0}ap=288
D=ap//2
B=128
ax=B//2
aU=1.2
b_={1,1}aK=1
ah=1
af=3
ay=400
x=100
aP=100
aF=0
am=0
R=0
N=0
aB=3002
aM=32768
s={}aY=.05
J={}Y={}bf=2
aj=0
aG=0
aw=0
G=1
aH=0
W=0
ae=aO
function aS(b,c)if b<aM then
K=a[7][b]return aS(K[0<bg({K[3],K[4]},sub(c,K))and 8 or 7],c)else
return b-aM
end
end
function aQ(c)K=a[5][a[6][c][2]]return a[8][a[3][a[2][K[4]][K[5]+6]][6]]end
function au(h,p,an,as)local C,m=t.drawLine,t.setColor
an=an..""
as=a[19][as]for b=#an,1,-1 do
_=as[aa.byte(aa.sub(an,b,b))]h=h-as[1]if _>0 then
d=a[23][_]o,i=d[1],d[2]v=h-d[4]+1
X=p-d[5]for g=0,o-1 do
for f=0,i-1 do
j=d[7+f+g*i]if j~=0 then
e=a[20][j]m(e[1],e[2],e[3])C(v+g,X+f,v+g,X+f+1)end
end
end
end
end
end
function n(aT,aV,ab)t.setColor(13,0,0)t.drawText(aT+1,aV+1,ab)t.setColor(59,59,59)t.drawText(aT,aV,ab)end
function onTick()aH=0
for g=1,3 do
if V(9)and(not Z)or not a[21]then
aA=property.getText(S)b=1
q=""
_=aa.sub(aA,b,b)while _~=""do
L=aa.byte(_)if L>64 then
q=(q..L-65)+0
if G==1 then
bd=q
a[q]=a[q]or{}elseif G==2 then
bn=q
T=0
elseif G==3 then
aL=q
else
if T==0 then
T=bn
aL=aL-1
aC={}a[bd][#a[bd]+1]=aC
end
aC[#aC+1]=q
T=T-1
G=Q(T,aL)>0 and G-1 or 0
end
G=G+1
q=""
else
q=q.._
end
b=b+1
_=aa.sub(aA,b,b)end
S=S+1
Z=aA==""
end
end
if Z then
if l(9)>0 then
ae=aO
af=l(9)end
aG=aG+1
a[12][1][aG%#a[12][1]+1]=al(l(10))if x>0 and not ae then
M={}ai[#ai+1]=M
ad=5
_=l(ad)while _~=0 do
w={}M[#M+1]=w
for b=0,8 do
w[b+1]=l(ad+b)end
ad=ad+9
_=l(ad)end
end
if V(1)then
if ae then
for b=1,10 do
a[b]=a[b+10*af]end
af=af+1
ae=aD
for b=#a[1],1,-1 do
_=a[1][b]_=_[5]&(aB-3000)>0 or ak(a[1],b)end
for b=1,#a[8]do
a[8][b][8]={}end
for b=1,#a[6]do
_=aQ(b)_[8][#_[8]+1]=b
end
ai={}end
am=am-1
if x>0 then
if O~=l(1)and l(1)>0 then
s={}_={}_[1]=a[29][l(1)]_[2]=a[16][_[1][3]]br=_[2][1]_[3]=0
s[1]=_
end
O=l(1)aI=V(3)if aI and O==5 then
if W<=0 then
W=7
else
aI=false
end
end
W=W-1
if aI then
_=s[1]_[2]=a[16][_[1][4]]_[3]=-1
y=a[19][6][O]if y>0 then
J[#J+1]={y,1}end
end
end
for b=#s,1,-1 do
_=s[b]if _[3]==0 then
if _[2][3]==4 then
if O==5 and W<5 then
aZ=1
else
aZ=0
end
s[#s+1]={_[1],a[16][_[1][5]+aZ],2}end
end
_[3]=_[3]+1
if _[3]>=_[2][2]then
if _[2][4]>2 then
_[2]=a[16][_[2][4]]_[3]=0
else
ak(s,b)end
end
end
if ae then
R=50
end
N=Q(N-4,0)N=aX(N+(x-l(3)+aF-l(4))*3,0,u)R=Q(R-1.5,0)x=l(3)aF=l(4)if l(2)>0 then
_=a[2][l(2)]if _ then
if _[4]>3004 and _[4]<3008 then
ay=Q(ay+3*(_[4]-3006),1)elseif _[4]>3000 then
aB=_[4]end
end
end
for b=1,#ai do
M=ai[b]for g=1,#M do
w=M[g]_=w[1]if _>(2^15)then
_=a[8][_-(2^15)]for f=1,6 do
_[f]=w[f+1]end
elseif _<0 then
L=a[1][-_]if L then
w=L[6]if a[16][w][5]>0 then
R=Q(R,15)am=35
bh=a[16][w][5]J[#J+1]={a[19][11][1],1}if L[4]then
bj=a[15][L[4]]if bj[29]==a[19][13][1]then
for f=1,#a[2]do
a[2][f][8]=1
end
end
end
end
end
while-_>#a[1]do
a[1][#a[1]+1]=aD
end
ak(a[1],-_)else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for f=1,8 do
_[a[19][1][f]]=w[f+1]end
_[15]=0
end
end
end
ai={}_=a[1][1]A[1]={_[1],_[2]}A[3]=_[3]bl=aS(#a[7],A[1])ar=aQ(bl)A[2]=ar[1]+41
bm=aq(ar[5]/u,1)^1.3
for b=1,#ar[8]do
_=a[6][ar[8][b]]for g=_[2],_[1]+_[2]-1 do
be=a[5][g]bk=a[2][be[4]]bk[8]=2
end
end
bc=V(2)aj=aj-1
aw=aw-1
if not b_[O]then
b_[O]=1
aw=70
end
aJ=(4-aq(x//20,4))*8
if x<=0 then
ah=41
elseif aw>0 then
ah=aJ+6
elseif x<aP then
aj=35
ah=aJ+7
elseif aj<=0 then
aj=16
aK=aK%256+1
ah=aJ+a[13][1][aK]%3
end
aP=x
end
for b=#J,1,-1 do
y=J[b]_=a[18][y[1]]if V(1)then
z=_[y[2]]y[2]=y[2]+4
else
z=_[y[2]+2]end
if z and z>0 then
Y[#Y+1]={z,1}end
if y[2]>=#_ then
ak(J,b)end
end
for b=1,32 do
ba(b,0)end
for b=#Y,1,-1 do
z=Y[b]ba(b+3,aX(al((z[1]+12)//2),1,60))z[2]=z[2]+1
if z[2]>bf then
ak(Y,b)end
end
end
end
function onDraw()t=screen
local ac,m,C,ab=t.drawRectF,t.setColor,t.drawLine,t.drawText
aH=aH+1
if a[21]and not Z then
d=a[25][1]o,i=d[1],d[2]h,p=D-o/2,80-i/2
for f=0,o-1 do
v=h+f
for P=0,i-1 do
j=d[5+P+f*i]if j~=0 then
e=a[20][j]m(e[1],e[2],e[3])C(v,p+P,v,p+P+1)end
end
end
end
if not bc then
for b=1,#s do
d=s[b][2][1]az=d>0 and bm or 1
d=a[17][abs(d)][1]d=a[23][d]o,i,aE=d[1],d[2],d[3]*.7
aR=aE*aU
h,p=D-(d[4]+160)*.7,B-(d[5]+148)*.7*aU
for f=0,o-1 do
v=h+f*aE
for P=0,i-1 do
j=d[7+P+f*i]if j~=0 then
e=a[20][j]m(e[1]*az,e[2]*az,e[3]*az)ac(v,p+P*aR,aE,aR)end
end
end
end
end
if Z then
if bc then
m(0,0,0)ac(0,0,ap,B)for b=1,#a[2]do
_=a[2][b]if _[8]then
H=at(aW(bb(sub(a[4][_[1]],A[1]),aY)),{D,ax})I=at(aW(bb(sub(a[4][_[2]],A[1]),aY)),{D,ax})if _[8]==1 then
m(0,50,0)elseif _[3]&4>0 then
m(50,50,50)else
m(u,u,u)end
C(H[1],H[2],I[1],I[2])end
end
m(u,u,u)_=a[19][10]for b=1,#_,4 do
av=sin(A[3]-90)ao=cos(A[3]-90)H={_[b]*ao+_[b+1]*av,_[b+1]*ao-_[b]*av}I={_[b+2]*ao+_[b+3]*av,_[b+3]*ao-_[b+2]*av}H=at(H,{D,ax})I=at(I,{D,ax})C(H[1],H[2],I[1],I[2])end
end
m(u,N>0 and 0 or u,0,N+R)ac(0,0,ap,B)m(30,30,30)ac(0,B,ap,32)m(5,5,5)ac(D-16,B,32,32)d=a[23][a[19][3][1]+(ah)*a[19][3][3]]o,i=d[1],d[2]h=D-o/2
for b=0,o-1 do
for g=0,i-1 do
j=d[7+g+b*i]if j~=0 then
e=a[20][j]m(e[1],e[2],e[3])C(h+b,B+1+g,h+b,B+2+g)end
end
end
for b=1,3 do
if a[12][1][13+b]>0 then
h,p=221,125+b*8
d=a[23][a[19][3][4]+a[19][5][b]*a[19][3][3]]o,i=d[1],d[2]for g=0,o-1 do
for f=0,i-1 do
j=d[7+f+g*i]if j~=0 then
e=a[20][j]m(e[1],e[2],e[3])C(h+g,p+f,h+g,p+f+1)end
end
end
end
end
if am>0 then
aN=a[13][bh]h=0
p=0
for bi=1,#aN do
_=aN[bi]if _>0 then
d=a[23][_]o,i=d[1],d[2]v=h-d[4]X=p-d[5]for b=0,o-1 do
for g=0,i-1 do
j=d[7+g+b*i]if j~=0 then
e=a[20][j]m(e[1],e[2],e[3])C(v+b,X+g,v+b,X+g+1)end
end
end
h=h+o
else
h=h+4
end
end
end
au(124,F,U(x).."%",16)au(218,F,U(aF).."%",16)n(124-28-15,ag,"HEALTH")n(218-28-15,ag,"ARMOUR")n(2,F,"ROM:")n(26,F,S)n(2,138,"TPS:")n(26,138,a[12][1][17])n(2,145,"DIF:")n(26,145,U(aq(aB-3000,3)))n(2,ag,"LOD:")n(26,ag,U(ay))n(232,F,"BULL")n(232,138,"SHEL")n(232,145,"ROKT")n(232,ag,"CELL")for b=1,4 do
c=124+b*7
au(265,c,al(a[12][1][b]),15)au(285,c,al(a[19][17][b]),15)n(268,c,"/")end
else
ab(1,F,"ROM:")ab(26,F,S)end
end
