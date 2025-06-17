
ad=152
J=131
m=255
L=180
s=math
R=s.max
aq=s.min
abs=s.abs
O=s.floor
sqrt=s.sqrt
j=input.getNumber
af=input.getBool
bc=output.setNumber
pi=s.pi
aO=false
V=true
ae=table.remove
Z=string
function au(c,n)return{(c[1]+n[1]),(c[2]+n[2])}end
function bt(c,n)return c[1]*n[2]-c[2]*n[1]end
function sub(c,n)return{(c[1]-n[1]),(c[2]-n[2])}end
function aQ(c,n)return{c[1]*n,c[2]*n}end
function by(c)return((c+L)%360)-L end
function sin(c)return s.sin(c/L*pi)end
function cos(c)return s.cos(c/L*pi)end
function tan(c)return s.tan(c/L*pi)end
function bx(c)return s.atan(c)*L/pi end
function bz(c)return s.atan(c[2],c[1])*L/pi end
function b_(c,n,bu)return aq(R(n,c),bu)end
function ap(c)return O(c+.5)end
function bA(c,n)return sqrt(((c[1]-n[1])^2)+((c[2]-n[2])^2))end
function aP(c)return{c[1],-c[2]}end
function bB(c)c=c-1
c=c|(c>>1)c=c|(c>>2)c=c|(c>>4)return c+1
end
a={}az=1
ah=3
ag=aO
E={{0,0},0,0}ay=288
C=ay//2
F=128
aA=F//2
aR=1.2
aZ={1,1}aC=1
ab=1
ah=3
aE=500
r=100
bb=100
aB=0
an=0
P=0
S=0
aN=3002
bh=32768
x={}ba=.05
A={}ak={}bv=2
W=0
aL=0
av=0
I=1
aI=0
aj=0
X=0
ac=V
function bf(b,c)if b<bh then
G=a[7][b]return bf(G[0<bt({G[3],G[4]},sub(c,G))and 8 or 7],c)else
return b-bh
end
end
function bd(c)G=a[5][a[6][c][2]]return a[8][a[3][a[2][G[4]][G[5]+6]][6]]end
function ao(h,u,at,ax)local D,p=w.drawLine,w.setColor
at=at..""
ax=a[19][ax]for b=#at,1,-1 do
_=ax[Z.byte(Z.sub(at,b,b))]h=h-ax[1]if _>0 then
d=a[23][_]q,i=d[1],d[2]v=h-d[4]+1
am=u-d[5]for g=0,q-1 do
for f=0,i-1 do
k=d[7+f+g*i]if k~=0 then
e=a[20][k]p(e[1],e[2],e[3])D(v+g,am+f,v+g,am+f+1)end
end
end
end
end
end
function o(bi,bj,al,l)l=l or{59,59,59}w.setColor(13,0,0)w.drawText(bi+1,bj+1,al)w.setColor(l[1],l[2],l[3])w.drawText(bi,bj,al)end
function onTick()aI=0
for g=1,3 do
if af(9)and(not ag)or not a[21]then
aD=property.getText(az)b=1
t=""
_=Z.sub(aD,b,b)while _~=""do
K=Z.byte(_)if K>64 then
t=(t..K-65)+0
if I==1 then
bg=t
a[t]=a[t]or{}elseif I==2 then
br=t
ai=0
elseif I==3 then
aJ=t
else
if ai==0 then
ai=br
aJ=aJ-1
aK={}a[bg][#a[bg]+1]=aK
end
aK[#aK+1]=t
ai=ai-1
I=R(ai,aJ)>0 and I-1 or 0
end
I=I+1
t=""
else
t=t.._
end
b=b+1
_=Z.sub(aD,b,b)end
az=az+1
ag=aD==""
end
end
if ag then
if j(10)>0 then
ac=V
ah=j(10)end
aL=aL+1
a[12][1][aL%#a[12][1]+1]=ap(j(11))aj=a[12][1][17]if r>0 and not ac then
Q={}Y[#Y+1]=Q
aa=6
_=j(aa)while _~=0 do
B={}Q[#Q+1]=B
for b=0,8 do
B[b+1]=j(aa+b)end
aa=aa+9
_=j(aa)end
end
if af(1)then
if ac then
for b=1,10 do
a[b]=a[b+10*ah]end
ah=ah+1
ac=aO
for b=#a[1],1,-1 do
_=a[1][b]_=_[5]&(aN-3000)>0 or ae(a[1],b)end
for b=1,#a[8]do
a[8][b][8]={}end
for b=1,#a[6]do
_=bd(b)_[8][#_[8]+1]=b
end
Y={}end
an=an-1
if r>0 then
if N~=j(1)and j(1)>0 then
x={}_={}_[1]=a[29][j(1)]_[2]=a[16][_[1][3]]bC=_[2][1]_[3]=0
x[1]=_
end
N=j(1)aH=af(3)if aH and N==5 then
if X<=0 then
X=7
else
aH=false
end
end
X=X-1
if aH then
_=x[1]_[2]=a[16][_[1][4]]_[3]=-1
z=a[19][6][N]if z>0 then
A[#A+1]={z,1}end
end
end
for b=#x,1,-1 do
_=x[b]if _[3]==0 then
if _[2][3]==4 then
if N==5 and X<5 then
be=1
else
be=0
end
x[#x+1]={_[1],a[16][_[1][5]+be],2}end
end
_[3]=_[3]+1
if _[3]>=_[2][2]then
if _[2][4]>2 then
_[2]=a[16][_[2][4]]_[3]=0
else
ae(x,b)end
end
end
if ac then
P=50
end
S=R(S-4,0)S=b_(S+(r-j(3)+aB-j(4))*3,0,m)P=R(P-1.5,0)r=j(3)aB,aW,aS,aV=j(4)if j(2)>0 and r>0 then
_=a[2][j(2)]if _ then
if _[4]==3008 then
aT=_[5]>0 and O(_[5])aV=V
elseif _[4]>3004 then
aE=R(aE+3*(_[4]-3006),1)aS=V
elseif _[4]>3000 then
aN=_[4]aW=V
end
end
end
for b=1,#Y do
Q=Y[b]for g=1,#Q do
B=Q[g]_=B[1]if _>(2^15)then
_=a[8][_-(2^15)]for f=1,6 do
_[f]=B[f+1]end
elseif _<0 then
K=a[1][-_]if K then
B=K[6]if a[16][B][5]>0 then
P=R(P,15)an=35
bs=a[16][B][5]A[#A+1]={"item pickup sound index",1}if K[4]then
bw=a[15][K[4]]if bw[29]==a[19][13][1]then
for f=1,#a[2]do
a[2][f][8]=a[2][f][8]or 1
end
end
end
end
end
while-_>#a[1]do
a[1][#a[1]+1]=aO
end
ae(a[1],-_)else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for f=1,8 do
_[a[19][1][f]]=B[f+1]end
_[15]=0
end
end
end
Y={}_=a[1][1]E[1]={_[1],_[2]}E[3]=_[3]bm=bf(#a[7],E[1])ar=bd(bm)E[2]=ar[1]+41
bp=aq(ar[5]/m,1)^1.3
for b=1,#ar[8]do
_=a[6][ar[8][b]]for g=_[2],_[1]+_[2]-1 do
bl=a[5][g]bq=a[2][bl[4]]bq[8]=2
end
end
aX=af(2)if j(12)>0 and r>0 then
A[#A+1]={j(12),1}end
W=W-1
av=av-1
if not aZ[N]then
aZ[N]=1
av=70
end
aF=(4-aq(r//20,4))*8
if r<=0 then
ab=41
elseif av>0 then
ab=aF+6
elseif r<bb then
W=35
ab=aF+7
elseif W<=0 then
W=16
aC=aC%256+1
ab=aF+a[13][1][aC]%3
end
bb=r
end
for b=#A,1,-1 do
z=A[b]_=a[18][z[1]]if af(1)then
y=_[z[2]]z[2]=z[2]+4
else
y=_[z[2]+2]end
if y and y>0 then
ak[#ak+1]={y,1}end
if z[2]>=#_ then
ae(A,b)end
end
for b=1,32 do
bc(b,0)end
for b=#ak,1,-1 do
y=ak[b]bc(b+3,b_(ap((y[1]+12)//2),1,60))y[2]=y[2]+1
if y[2]>bv then
ae(ak,b)end
end
end
end
function onDraw()w=screen
local U,p,D,al=w.drawRectF,w.setColor,w.drawLine,w.drawText
aI=aI+1
if a[21]and not ag then
d=a[25][1]q,i=d[1],d[2]h,u=C-q/2,80-i/2
for f=0,q-1 do
v=h+f
for T=0,i-1 do
k=d[5+T+f*i]if k~=0 then
e=a[20][k]p(e[1],e[2],e[3])D(v,u+T,v,u+T+1)end
end
end
end
if not aX then
for b=1,#x do
d=x[b][2][1]aM=d>0 and bp or 1
d=a[17][abs(d)][1]d=a[23][d]q,i,aG=d[1],d[2],d[3]*.7
aU=aG*aR
h,u=C-(d[4]+160)*.7,F-(d[5]+148)*.7*aR
for f=0,q-1 do
v=h+f*aG
for T=0,i-1 do
k=d[7+T+f*i]if k~=0 then
e=a[20][k]p(e[1]*aM,e[2]*aM,e[3]*aM)U(v,u+T*aU,aG,aU)end
end
end
end
end
if ag then
if aX then
p(0,0,0)U(0,0,ay,F)for b=1,#a[2]do
_=a[2][b]if _[8]then
M=au(aP(aQ(sub(a[4][_[1]],E[1]),ba)),{C,aA})H=au(aP(aQ(sub(a[4][_[2]],E[1]),ba)),{C,aA})if _[8]==1 then
p(0,50,0)elseif _[3]&4>0 then
p(50,50,50)else
p(m,m,m)end
D(M[1],M[2],H[1],H[2])end
end
p(m,m,m)_=a[19][10]for b=1,#_,4 do
aw=sin(E[3]-90)as=cos(E[3]-90)M={_[b]*as+_[b+1]*aw,_[b+1]*as-_[b]*aw}H={_[b+2]*as+_[b+3]*aw,_[b+3]*as-_[b+2]*aw}M=au(M,{C,aA})H=au(H,{C,aA})D(M[1],M[2],H[1],H[2])end
end
p(m,S>0 and 0 or m,0,S+P)U(0,0,ay,F)p(30,30,30)U(0,F,ay,32)p(5,5,5)U(C-16,F,32,32)d=a[23]["face textures start"+(ab)*"number of sprite mipmap levels"]q,i=d[1],d[2]h=C-q/2
for b=0,q-1 do
for g=0,i-1 do
k=d[7+g+b*i]if k~=0 then
e=a[20][k]p(e[1],e[2],e[3])D(h+b,F+1+g,h+b,F+2+g)end
end
end
for b=1,3 do
if a[12][1][13+b]>0 then
h,u=221,125+b*8
d=a[23]["key textures start"+a[19][5][b]*"number of sprite mipmap levels"]q,i=d[1],d[2]for g=0,q-1 do
for f=0,i-1 do
k=d[7+f+g*i]if k~=0 then
e=a[20][k]p(e[1],e[2],e[3])D(h+g,u+f,h+g,u+f+1)end
end
end
end
end
if an>0 then
aY=a[13][bs]h=0
u=0
for bo=1,#aY do
_=aY[bo]if _>0 then
d=a[23][_]q,i=d[1],d[2]v=h-d[4]am=u-d[5]for b=0,q-1 do
for g=0,i-1 do
k=d[7+g+b*i]if k~=0 then
e=a[20][k]p(e[1],e[2],e[3])D(v+b,am+g,v+b,am+g+1)end
end
end
h=h+q
else
h=h+4
end
end
end
ao(124,J,O(r).."%",16)ao(218,J,O(aB).."%",16)o(124-28-15,ad,"HEALTH")o(218-28-15,ad,"ARMOUR")l=(aj<35 and aj>0)and{m,0,0}o(2,J,"TPS:",l)o(26,J,aj>0 and aj or "N/A",l)l=aW and{m,m,44}o(2,138,"DIF:",l)bn={"EASY","MED","HARD"}o(26,138,bn[O(aq(aN-3000,3))],l)l=aS and{m,m,44}o(2,145,"LOD:",l)o(26,145,O(aE),l)l=aV and{m,m,44}o(2,ad,"TEX:",l)bk={"FULL","HALF"}o(26,ad,aT and bk[aT]or "OFF",l)o(232,J,"BULL")o(232,138,"SHEL")o(232,145,"ROKT")o(232,ad,"CELL")for b=1,4 do
c=124+b*7
ao(265,c,ap(a[12][1][b]),15)ao(285,c,ap(a[19][17][b]),15)o(268,c,"/")end
else
al(1,J,"ROM:")al(26,J,az)end
end
