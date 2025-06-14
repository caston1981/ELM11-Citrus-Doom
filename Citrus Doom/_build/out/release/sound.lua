
W=152
G=131
u=255
J=180
q=math
Q=q.max
ax=q.min
abs=q.abs
ab=q.floor
sqrt=q.sqrt
j=input.getNumber
ac=input.getBool
aO=output.setNumber
pi=q.pi
aE=false
aQ=true
aa=table.remove
aj=string
function al(c,l)return{(c[1]+l[1]),(c[2]+l[2])}end
function bi(c,l)return c[1]*l[2]-c[2]*l[1]end
function sub(c,l)return{(c[1]-l[1]),(c[2]-l[2])}end
function b_(c,l)return{c[1]*l,c[2]*l}end
function bs(c)return((c+J)%360)-J end
function sin(c)return q.sin(c/J*pi)end
function cos(c)return q.cos(c/J*pi)end
function tan(c)return q.tan(c/J*pi)end
function bp(c)return q.atan(c)*J/pi end
function bt(c)return q.atan(c[2],c[1])*J/pi end
function bb(c,l,be)return ax(Q(l,c),be)end
function at(c)return ab(c+.5)end
function bu(c,l)return sqrt(((c[1]-l[1])^2)+((c[2]-l[2])^2))end
function aP(c)return{c[1],-c[2]}end
function bq(c)c=c-1
c=c|(c>>1)c=c|(c>>2)c=c|(c>>4)return c+1
end
a={}X=1
af=3
T=aE
B={{0,0},0,0}ao=288
E=ao//2
C=128
an=C//2
aM=1.2
aW={1,1}ay=1
ak=1
af=3
aJ=400
A=100
aZ=100
aF=0
aw=0
M=0
P=0
aA=3002
aR=32768
v={}aN=.05
x={}ad={}bh=2
ai=0
aK=0
aq=0
L=1
aC=0
Y=0
U=aQ
function aV(b,c)if b<aR then
I=a[7][b]return aV(I[0<bi({I[3],I[4]},sub(c,I))and 8 or 7],c)else
return b-aR
end
end
function aT(c)I=a[5][a[6][c][2]]return a[8][a[3][a[2][I[4]][I[5]+6]][6]]end
function av(h,p,au,as)local D,m=t.drawLine,t.setColor
au=au..""
as=a[19][as]for b=#au,1,-1 do
_=as[aj.byte(aj.sub(au,b,b))]h=h-as[1]if _>0 then
d=a[23][_]o,i=d[1],d[2]s=h-d[4]+1
Z=p-d[5]for g=0,o-1 do
for f=0,i-1 do
k=d[7+f+g*i]if k~=0 then
e=a[20][k]m(e[1],e[2],e[3])D(s+g,Z+f,s+g,Z+f+1)end
end
end
end
end
end
function n(ba,bc,S)t.setColor(13,0,0)t.drawText(ba+1,bc+1,S)t.setColor(59,59,59)t.drawText(ba,bc,S)end
function onTick()aC=0
for g=1,3 do
if ac(9)and(not T)or not a[21]then
aI=property.getText(X)b=1
r=""
_=aj.sub(aI,b,b)while _~=""do
K=aj.byte(_)if K>64 then
r=(r..K-65)+0
if L==1 then
bd=r
a[r]=a[r]or{}elseif L==2 then
bm=r
ah=0
elseif L==3 then
aD=r
else
if ah==0 then
ah=bm
aD=aD-1
aL={}a[bd][#a[bd]+1]=aL
end
aL[#aL+1]=r
ah=ah-1
L=Q(ah,aD)>0 and L-1 or 0
end
L=L+1
r=""
else
r=r.._
end
b=b+1
_=aj.sub(aI,b,b)end
X=X+1
T=aI==""
end
end
if T then
if j(10)>0 then
U=aQ
af=j(10)end
aK=aK+1
a[12][1][aK%#a[12][1]+1]=at(j(11))if A>0 and not U then
N={}ag[#ag+1]=N
ae=6
_=j(ae)while _~=0 do
y={}N[#N+1]=y
for b=0,8 do
y[b+1]=j(ae+b)end
ae=ae+9
_=j(ae)end
end
if ac(1)then
if U then
for b=1,10 do
a[b]=a[b+10*af]end
af=af+1
U=aE
for b=#a[1],1,-1 do
_=a[1][b]_=_[5]&(aA-3000)>0 or aa(a[1],b)end
for b=1,#a[8]do
a[8][b][8]={}end
for b=1,#a[6]do
_=aT(b)_[8][#_[8]+1]=b
end
ag={}end
aw=aw-1
if A>0 then
if O~=j(1)and j(1)>0 then
v={}_={}_[1]=a[29][j(1)]_[2]=a[16][_[1][3]]br=_[2][1]_[3]=0
v[1]=_
end
O=j(1)az=ac(3)if az and O==5 then
if Y<=0 then
Y=7
else
az=false
end
end
Y=Y-1
if az then
_=v[1]_[2]=a[16][_[1][4]]_[3]=-1
w=a[19][6][O]if w>0 then
x[#x+1]={w,1}end
end
end
for b=#v,1,-1 do
_=v[b]if _[3]==0 then
if _[2][3]==4 then
if O==5 and Y<5 then
aY=1
else
aY=0
end
v[#v+1]={_[1],a[16][_[1][5]+aY],2}end
end
_[3]=_[3]+1
if _[3]>=_[2][2]then
if _[2][4]>2 then
_[2]=a[16][_[2][4]]_[3]=0
else
aa(v,b)end
end
end
if U then
M=50
end
P=Q(P-4,0)P=bb(P+(A-j(3)+aF-j(4))*3,0,u)M=Q(M-1.5,0)A=j(3)aF=j(4)if j(2)>0 then
_=a[2][j(2)]if _ then
if _[4]>3004 and _[4]<3008 then
aJ=Q(aJ+3*(_[4]-3006),1)elseif _[4]>3000 then
aA=_[4]end
end
end
for b=1,#ag do
N=ag[b]for g=1,#N do
y=N[g]_=y[1]if _>(2^15)then
_=a[8][_-(2^15)]for f=1,6 do
_[f]=y[f+1]end
elseif _<0 then
K=a[1][-_]if K then
y=K[6]if a[16][y][5]>0 then
M=Q(M,15)aw=35
bk=a[16][y][5]x[#x+1]={a[19][11][1],1}if K[4]then
bg=a[15][K[4]]if bg[29]==a[19][13][1]then
for f=1,#a[2]do
a[2][f][8]=a[2][f][8]or 1
end
end
end
end
end
while-_>#a[1]do
a[1][#a[1]+1]=aE
end
aa(a[1],-_)else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for f=1,8 do
_[a[19][1][f]]=y[f+1]end
_[15]=0
end
end
end
ag={}_=a[1][1]B[1]={_[1],_[2]}B[3]=_[3]bl=aV(#a[7],B[1])ap=aT(bl)B[2]=ap[1]+41
bj=ax(ap[5]/u,1)^1.3
for b=1,#ap[8]do
_=a[6][ap[8][b]]for g=_[2],_[1]+_[2]-1 do
bf=a[5][g]bo=a[2][bf[4]]bo[8]=2
end
end
aS=ac(2)if j(12)>0 then
x[#x+1]={j(12),1}end
ai=ai-1
aq=aq-1
if not aW[O]then
aW[O]=1
aq=70
end
aG=(4-ax(A//20,4))*8
if A<=0 then
ak=41
elseif aq>0 then
ak=aG+6
elseif A<aZ then
ai=35
ak=aG+7
elseif ai<=0 then
ai=16
ay=ay%256+1
ak=aG+a[13][1][ay]%3
end
aZ=A
end
for b=#x,1,-1 do
w=x[b]_=a[18][w[1]]if ac(1)then
z=_[w[2]]w[2]=w[2]+4
else
z=_[w[2]+2]end
if z and z>0 then
ad[#ad+1]={z,1}end
if w[2]>=#_ then
aa(x,b)end
end
for b=1,32 do
aO(b,0)end
for b=#ad,1,-1 do
z=ad[b]aO(b+3,bb(at((z[1]+12)//2),1,60))z[2]=z[2]+1
if z[2]>bh then
aa(ad,b)end
end
end
end
function onDraw()t=screen
local V,m,D,S=t.drawRectF,t.setColor,t.drawLine,t.drawText
aC=aC+1
if a[21]and not T then
d=a[25][1]o,i=d[1],d[2]h,p=E-o/2,80-i/2
for f=0,o-1 do
s=h+f
for R=0,i-1 do
k=d[5+R+f*i]if k~=0 then
e=a[20][k]m(e[1],e[2],e[3])D(s,p+R,s,p+R+1)end
end
end
end
if not aS then
for b=1,#v do
d=v[b][2][1]aH=d>0 and bj or 1
d=a[17][abs(d)][1]d=a[23][d]o,i,aB=d[1],d[2],d[3]*.7
aX=aB*aM
h,p=E-(d[4]+160)*.7,C-(d[5]+148)*.7*aM
for f=0,o-1 do
s=h+f*aB
for R=0,i-1 do
k=d[7+R+f*i]if k~=0 then
e=a[20][k]m(e[1]*aH,e[2]*aH,e[3]*aH)V(s,p+R*aX,aB,aX)end
end
end
end
end
if T then
if aS then
m(0,0,0)V(0,0,ao,C)for b=1,#a[2]do
_=a[2][b]if _[8]then
F=al(aP(b_(sub(a[4][_[1]],B[1]),aN)),{E,an})H=al(aP(b_(sub(a[4][_[2]],B[1]),aN)),{E,an})if _[8]==1 then
m(0,50,0)elseif _[3]&4>0 then
m(50,50,50)else
m(u,u,u)end
D(F[1],F[2],H[1],H[2])end
end
m(u,u,u)_=a[19][10]for b=1,#_,4 do
ar=sin(B[3]-90)am=cos(B[3]-90)F={_[b]*am+_[b+1]*ar,_[b+1]*am-_[b]*ar}H={_[b+2]*am+_[b+3]*ar,_[b+3]*am-_[b+2]*ar}F=al(F,{E,an})H=al(H,{E,an})D(F[1],F[2],H[1],H[2])end
end
m(u,P>0 and 0 or u,0,P+M)V(0,0,ao,C)m(30,30,30)V(0,C,ao,32)m(5,5,5)V(E-16,C,32,32)d=a[23][a[19][3][1]+(ak)*a[19][3][3]]o,i=d[1],d[2]h=E-o/2
for b=0,o-1 do
for g=0,i-1 do
k=d[7+g+b*i]if k~=0 then
e=a[20][k]m(e[1],e[2],e[3])D(h+b,C+1+g,h+b,C+2+g)end
end
end
for b=1,3 do
if a[12][1][13+b]>0 then
h,p=221,125+b*8
d=a[23][a[19][3][4]+a[19][5][b]*a[19][3][3]]o,i=d[1],d[2]for g=0,o-1 do
for f=0,i-1 do
k=d[7+f+g*i]if k~=0 then
e=a[20][k]m(e[1],e[2],e[3])D(h+g,p+f,h+g,p+f+1)end
end
end
end
end
if aw>0 then
aU=a[13][bk]h=0
p=0
for bn=1,#aU do
_=aU[bn]if _>0 then
d=a[23][_]o,i=d[1],d[2]s=h-d[4]Z=p-d[5]for b=0,o-1 do
for g=0,i-1 do
k=d[7+g+b*i]if k~=0 then
e=a[20][k]m(e[1],e[2],e[3])D(s+b,Z+g,s+b,Z+g+1)end
end
end
h=h+o
else
h=h+4
end
end
end
av(124,G,ab(A).."%",16)av(218,G,ab(aF).."%",16)n(124-28-15,W,"HEALTH")n(218-28-15,W,"ARMOUR")n(2,G,"ROM:")n(26,G,X)n(2,138,"TPS:")n(26,138,a[12][1][17])n(2,145,"DIF:")n(26,145,ab(ax(aA-3000,3)))n(2,W,"LOD:")n(26,W,ab(aJ))n(232,G,"BULL")n(232,138,"SHEL")n(232,145,"ROKT")n(232,W,"CELL")for b=1,4 do
c=124+b*7
av(265,c,at(a[12][1][b]),15)av(285,c,at(a[19][17][b]),15)n(268,c,"/")end
else
S(1,G,"ROM:")S(26,G,X)end
end
