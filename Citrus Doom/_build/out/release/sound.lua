
ai=152
I=131
v=255
J=180
r=math
R=r.max
aq=r.min
abs=r.abs
Z=r.floor
sqrt=r.sqrt
l=input.getNumber
W=input.getBool
aO=output.setNumber
pi=r.pi
aE=false
aU=true
af=table.remove
X=string
function aw(c,k)return{(c[1]+k[1]),(c[2]+k[2])}end
function bl(c,k)return c[1]*k[2]-c[2]*k[1]end
function sub(c,k)return{(c[1]-k[1]),(c[2]-k[2])}end
function aR(c,k)return{c[1]*k,c[2]*k}end
function bq(c)return((c+J)%360)-J end
function sin(c)return r.sin(c/J*pi)end
function cos(c)return r.cos(c/J*pi)end
function tan(c)return r.tan(c/J*pi)end
function bs(c)return r.atan(c)*J/pi end
function bp(c)return r.atan(c[2],c[1])*J/pi end
function b_(c,k,be)return aq(R(k,c),be)end
function av(c)return Z(c+.5)end
function br(c,k)return sqrt(((c[1]-k[1])^2)+((c[2]-k[2])^2))end
function aM(c)return{c[1],-c[2]}end
function bt(c)c=c-1
c=c|(c>>1)c=c|(c>>2)c=c|(c>>4)return c+1
end
a={}U=1
ae=3
T=aE
B={{0,0},0,0}am=288
A=am//2
C=128
ar=C//2
aY=1.2
ba={1,1}aG=1
ad=1
ae=3
aA=400
z=100
aQ=100
aF=0
at=0
M=0
Q=0
aJ=3002
ag={}bd=32768
u={}aW=.05
K={}Y={}bi=2
V=0
aH=0
au=0
F=1
aB=0
aa=0
S=aU
function aN(b,c)if b<bd then
L=a[7][b]return aN(L[0<bl({L[3],L[4]},sub(c,L))and 8 or 7],c)else
return b-bd
end
end
function bc(c)L=a[5][a[6][c][2]]return a[8][a[3][a[2][L[4]][L[5]+6]][6]]end
function as(h,p,ax,ap)local D,n=s.drawLine,s.setColor
ax=ax..""
ap=a[19][ap]for b=#ax,1,-1 do
_=ap[X.byte(X.sub(ax,b,b))]h=h-ap[1]if _>0 then
d=a[23][_]o,i=d[1],d[2]t=h-d[4]+1
aj=p-d[5]for g=0,o-1 do
for f=0,i-1 do
j=d[7+f+g*i]if j~=0 then
e=a[20][j]n(e[1],e[2],e[3])D(t+g,aj+f,t+g,aj+f+1)end
end
end
end
end
end
function m(aS,aZ,ac)s.setColor(13,0,0)s.drawText(aS+1,aZ+1,ac)s.setColor(59,59,59)s.drawText(aS,aZ,ac)end
function onTick()aB=0
for g=1,3 do
if W(9)and(not T)or not a[21]then
aC=property.getText(U)b=1
q=""
_=X.sub(aC,b,b)while _~=""do
H=X.byte(_)if H>64 then
q=(q..H-65)+0
if F==1 then
aV=q
a[q]=a[q]or{}elseif F==2 then
bh=q
ab=0
elseif F==3 then
aL=q
else
if ab==0 then
ab=bh
aL=aL-1
aK={}a[aV][#a[aV]+1]=aK
end
aK[#aK+1]=q
ab=ab-1
F=R(ab,aL)>0 and F-1 or 0
end
F=F+1
q=""
else
q=q.._
end
b=b+1
_=X.sub(aC,b,b)end
U=U+1
T=aC==""
end
end
if T then
if l(9)>0 then
S=aU
ae=l(9)end
aH=aH+1
a[12][1][aH%#a[12][1]+1]=av(l(10))if z>0 and not S then
P={}ag[#ag+1]=P
ak=5
_=l(ak)while _~=0 do
y={}P[#P+1]=y
for b=0,8 do
y[b+1]=l(ak+b)end
ak=ak+9
_=l(ak)end
end
if W(1)then
if S then
for b=1,10 do
a[b]=a[b+10*ae]end
ae=ae+1
S=aE
for b=#a[1],1,-1 do
_=a[1][b]_=_[5]&(aJ-3000)>0 or af(a[1],b)end
for b=1,#a[8]do
a[8][b][8]={}end
for b=1,#a[6]do
_=bc(b)_[8][#_[8]+1]=b
end
end
at=at-1
if z>0 then
if N~=l(1)and l(1)>0 then
u={}_={}_[1]=a[29][l(1)]_[2]=a[16][_[1][3]]bu=_[2][1]_[3]=0
u[1]=_
end
N=l(1)az=W(3)if az and N==5 then
if aa<=0 then
aa=7
else
az=false
end
end
aa=aa-1
if az then
_=u[1]_[2]=a[16][_[1][4]]_[3]=-1
x=a[19][6][N]if x>0 then
K[#K+1]={x,1}end
end
end
for b=#u,1,-1 do
_=u[b]if _[3]==0 then
if _[2][3]==4 then
if N==5 and aa<5 then
aX=1
else
aX=0
end
u[#u+1]={_[1],a[16][_[1][5]+aX],2}end
end
_[3]=_[3]+1
if _[3]>=_[2][2]then
if _[2][4]>2 then
_[2]=a[16][_[2][4]]_[3]=0
else
af(u,b)end
end
end
if S then
M=50
end
Q=R(Q-4,0)Q=b_(Q+(z-l(3)+aF-l(4))*3,0,v)M=R(M-1.5,0)z=l(3)aF=l(4)if l(2)>0 then
_=a[2][l(2)]if _ then
if _[4]>3004 and _[4]<3008 then
aA=R(aA+3*(_[4]-3006),1)elseif _[4]>3000 then
aJ=_[4]end
end
end
for b=1,#ag do
P=ag[b]for g=1,#P do
y=P[g]_=y[1]if _>(2^15)then
_=a[8][_-(2^15)]for f=1,6 do
_[f]=y[f+1]end
elseif _<0 then
H=a[1][-_]if H~=nil then
y=H[6]if a[16][y][5]>0 then
M=R(M,15)at=35
bn=a[16][y][5]K[#K+1]={a[19][11][1],1}if H[4]then
bo=a[15][H[4]]if bo[29]==a[19][13][1]then
for f=1,#a[2]do
a[2][f][8]=true
end
end
end
end
end
while-_>#a[1]do
a[1][#a[1]+1]=aE
end
af(a[1],-_)else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for f=1,8 do
_[a[19][1][f]]=y[f+1]end
_[15]=0
end
end
end
ag={}_=a[1][1]B[1]={_[1],_[2]}B[3]=_[3]bm=aN(#a[7],B[1])al=bc(bm)B[2]=al[1]+41
bj=aq(al[5]/v,1)^1.3
for b=1,#al[8]do
_=a[6][al[8][b]]for g=_[2],_[1]+_[2]-1 do
bf=a[5][g]bk=a[2][bf[4]]bk[8]=true
end
end
aP=W(2)V=V-1
au=au-1
if not ba[N]then
ba[N]=1
au=70
end
aD=(4-aq(z//20,4))*8
if z<=0 then
ad=41
elseif au>0 then
ad=aD+6
elseif z<aQ then
V=35
ad=aD+7
elseif V<=0 then
V=16
aG=aG%256+1
ad=aD+a[13][1][aG]%3
end
aQ=z
end
for b=#K,1,-1 do
x=K[b]_=a[18][x[1]]if W(1)then
w=_[x[2]]x[2]=x[2]+4
else
w=_[x[2]+2]end
if w and w>0 then
Y[#Y+1]={w,1}end
if x[2]>=#_ then
af(K,b)end
end
for b=1,32 do
aO(b,0)end
for b=#Y,1,-1 do
w=Y[b]aO(b+3,b_(av((w[1]+12)//2),1,60))w[2]=w[2]+1
if w[2]>bi then
af(Y,b)end
end
end
end
function onDraw()s=screen
local ah,n,D,ac=s.drawRectF,s.setColor,s.drawLine,s.drawText
aB=aB+1
if a[21]and not T then
d=a[25][1]o,i=d[1],d[2]h,p=A-o/2,80-i/2
for f=0,o-1 do
t=h+f
for O=0,i-1 do
j=d[5+O+f*i]if j~=0 then
e=a[20][j]n(e[1],e[2],e[3])D(t,p+O,t,p+O+1)end
end
end
end
if not aP then
for b=1,#u do
d=u[b][2][1]aI=d>0 and bj or 1
d=a[17][abs(d)][1]d=a[23][d]o,i,ay=d[1],d[2],d[3]*.7
aT=ay*aY
h,p=A-(d[4]+160)*.7,C-(d[5]+148)*.7*aY
for f=0,o-1 do
t=h+f*ay
for O=0,i-1 do
j=d[7+O+f*i]if j~=0 then
e=a[20][j]n(e[1]*aI,e[2]*aI,e[3]*aI)ah(t,p+O*aT,ay,aT)end
end
end
end
end
if T then
if aP then
n(0,0,0)ah(0,0,am,C)for b=1,#a[2]do
_=a[2][b]if _[8]then
G=aw(aM(aR(sub(a[4][_[1]],B[1]),aW)),{A,ar})E=aw(aM(aR(sub(a[4][_[2]],B[1]),aW)),{A,ar})if _[3]&4>0 then
n(50,50,50)else
n(v,v,v)end
D(G[1],G[2],E[1],E[2])end
end
n(v,v,v)_=a[19][10]for b=1,#_,4 do
an=sin(B[3]-90)ao=cos(B[3]-90)G={_[b]*ao+_[b+1]*an,_[b+1]*ao-_[b]*an}E={_[b+2]*ao+_[b+3]*an,_[b+3]*ao-_[b+2]*an}G=aw(G,{A,ar})E=aw(E,{A,ar})D(G[1],G[2],E[1],E[2])end
end
n(v,Q>0 and 0 or v,0,Q+M)ah(0,0,am,C)n(30,30,30)ah(0,C,am,32)n(5,5,5)ah(A-16,C,32,32)d=a[23][a[19][3][1]+(ad)*a[19][3][3]]o,i=d[1],d[2]h=A-o/2
for b=0,o-1 do
for g=0,i-1 do
j=d[7+g+b*i]if j~=0 then
e=a[20][j]n(e[1],e[2],e[3])D(h+b,C+1+g,h+b,C+2+g)end
end
end
for b=1,3 do
if a[12][1][13+b]>0 then
h,p=221,125+b*8
d=a[23][a[19][3][4]+a[19][5][b]*a[19][3][3]]o,i=d[1],d[2]for g=0,o-1 do
for f=0,i-1 do
j=d[7+f+g*i]if j~=0 then
e=a[20][j]n(e[1],e[2],e[3])D(h+g,p+f,h+g,p+f+1)end
end
end
end
end
if at>0 then
bb=a[13][bn]h=0
p=0
for bg=1,#bb do
_=bb[bg]if _>0 then
d=a[23][_]o,i=d[1],d[2]t=h-d[4]aj=p-d[5]for b=0,o-1 do
for g=0,i-1 do
j=d[7+g+b*i]if j~=0 then
e=a[20][j]n(e[1],e[2],e[3])D(t+b,aj+g,t+b,aj+g+1)end
end
end
h=h+o
else
h=h+4
end
end
end
as(124,I,Z(z).."%",16)as(218,I,Z(aF).."%",16)m(124-28-15,ai,"HEALTH")m(218-28-15,ai,"ARMOUR")m(2,I,"ROM:")m(26,I,U)m(2,138,"TPS:")m(26,138,a[12][1][17])m(2,145,"DIF:")m(26,145,Z(aq(aJ-3000,3)))m(2,ai,"LOD:")m(26,ai,Z(aA))m(232,I,"BULL")m(232,138,"SHEL")m(232,145,"ROKT")m(232,ai,"CELL")for b=1,4 do
c=124+b*7
as(265,c,av(a[12][1][b]),15)as(285,c,av(a[19][17][b]),15)m(268,c,"/")end
else
ac(1,I,"ROM:")ac(26,I,U)end
end
