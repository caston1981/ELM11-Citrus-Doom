
ai=152
H=131
m=255
J=180
u=math
S=u.max
ay=u.min
abs=u.abs
U=u.floor
sqrt=u.sqrt
i=input.getNumber
ae=input.getBool
aW=output.setNumber
pi=u.pi
aF=false
X=true
ab=table.remove
W=string
function ax(c,n)return{(c[1]+n[1]),(c[2]+n[2])}end
function br(c,n)return c[1]*n[2]-c[2]*n[1]end
function sub(c,n)return{(c[1]-n[1]),(c[2]-n[2])}end
function bg(c,n)return{c[1]*n,c[2]*n}end
function bC(c)return((c+J)%360)-J end
function sin(c)return u.sin(c/J*pi)end
function cos(c)return u.cos(c/J*pi)end
function tan(c)return u.tan(c/J*pi)end
function bB(c)return u.atan(c)*J/pi end
function bD(c)return u.atan(c[2],c[1])*J/pi end
function bf(c,n,bt)return ay(S(n,c),bt)end
function at(c)return U(c+.5)end
function by(c,n)return sqrt(((c[1]-n[1])^2)+((c[2]-n[2])^2))end
function bb(c)return{c[1],-c[2]}end
function bA(c)c=c-1
c=c|(c>>1)c=c|(c>>2)c=c|(c>>4)return c+1
end
a={}aB=1
am=3
ag=aF
C={{0,0},0,0}aA=288
D=aA//2
F=128
av=F//2
bj=1.2
bl={1,1}aE=1
al=1
aC=500
r=100
aY=100
aP=0
P=0
N=0
Q=0
aK=3002
bi=32768
w={}aU=.05
B={}V={}bm=2
af=35
ak=0
aG=0
as=0
I=1
aJ=0
aj=0
ad=0
Y=X
function be(b,c)if b<bi then
G=a[7][b]return be(G[0<br({G[3],G[4]},sub(c,G))and 8 or 7],c)else
return b-bi
end
end
function aS(c)G=a[5][a[6][c][2]]return a[8][a[3][a[2][G[4]][G[5]+6]][6]]end
function au(h,t,ar,az)local E,p=x.drawLine,x.setColor
ar=ar..""
az=a[19][az]for b=#ar,1,-1 do
_=az[W.byte(W.sub(ar,b,b))]h=h-az[1]if _>0 then
d=a[23][_]q,j=d[1],d[2]v=h-d[4]+1
an=t-d[5]for g=0,q-1 do
for f=0,j-1 do
k=d[7+f+g*j]if k~=0 then
e=a[20][k]p(e[1],e[2],e[3])E(v+g,an+f,v+g,an+f+1)end
end
end
end
end
end
function o(bc,ba,ao,l)l=l or{59,59,59}x.setColor(13,0,0)x.drawText(bc+1,ba+1,ao)x.setColor(l[1],l[2],l[3])x.drawText(bc,ba,ao)end
function onTick()aJ=0
for g=1,3 do
if ae(9)and(not ag)or not a[21]then
aO=property.getText(aB)b=1
s=""
_=W.sub(aO,b,b)while _~=""do
M=W.byte(_)if M>64 then
s=(s..M-65)+0
if I==1 then
aR=s
a[s]=a[s]or{}elseif I==2 then
bn=s
ah=0
elseif I==3 then
aN=s
else
if ah==0 then
ah=bn
aN=aN-1
aH={}a[aR][#a[aR]+1]=aH
end
aH[#aH+1]=s
ah=ah-1
I=S(ah,aN)>0 and I-1 or 0
end
I=I+1
s=""
else
s=s.._
end
b=b+1
_=W.sub(aO,b,b)end
aB=aB+1
ag=aO==""
end
end
if ag then
if i(10)>0 then
Y=X
am=i(10)end
aG=aG+1
a[12][1][aG%#a[12][1]+1]=at(i(11))aj=a[12][1][17]if r>0 and not Y then
R={}ac[#ac+1]=R
Z=6
_=i(Z)while _~=0 do
A={}R[#R+1]=A
for b=0,8 do
A[b+1]=i(Z+b)end
Z=Z+9
_=i(Z)end
end
if ae(1)then
if Y then
for b=1,10 do
a[b]=a[b+10*am]end
am=am+1
for b=#a[1],1,-1 do
_=a[1][b]_=_[5]&(aK-3000)>0 or ab(a[1],b)end
for b=1,#a[8]do
a[8][b][8]={}end
for b=1,#a[6]do
_=aS(b)_[8][#_[8]+1]=b
end
ac={}end
P=P-1
if r>0 then
if T~=i(1)and i(1)>0 then
w={}_={}_[1]=a[29][i(1)]_[2]=a[16][_[1][3]]bz=_[2][1]_[3]=0
w[1]=_
end
T=i(1)aI=ae(3)if aI and T==5 then
if ad<=0 then
ad=7
else
aI=false
end
end
ad=ad-1
if aI then
_=w[1]_[2]=a[16][_[1][4]]_[3]=-1
y=a[19][6][T]if y>0 then
B[#B+1]={y,1}end
end
end
for b=#w,1,-1 do
_=w[b]if _[3]==0 then
if _[2][3]==4 then
if T==5 and ad<5 then
aZ=1
else
aZ=0
end
w[#w+1]={_[1],a[16][_[1][5]+aZ],2}end
end
_[3]=_[3]+1
if _[3]>=_[2][2]then
if _[2][4]>2 then
_[2]=a[16][_[2][4]]_[3]=0
else
ab(w,b)end
end
end
if Y then
N=50
P=af*8
aM=am-4+"map name text start"
end
Y=aF
Q=S(Q-4,0)Q=bf(Q+(r-i(3)+aP-i(4))*3,0,m)N=S(N-1.5,0)r=i(3)aP,aT,bh,bk=i(4)if i(2)>0 and r>0 then
_=a[2][i(2)]if _ then
if _[4]==3008 then
bd=_[5]>0 and U(_[5])bk=X
elseif _[4]>3004 then
aC=S(aC+3*(_[4]-3006),1)bh=X
elseif _[4]>3000 then
aK=_[4]aT=X
elseif _[4]>=14 and _[4]<=16 then
if a[12][1][_[4]]==0 then
P=af*4
aM=_[4]-14+"door text start"
end
end
end
end
for b=1,#ac do
R=ac[b]for g=1,#R do
A=R[g]_=A[1]if _>(2^15)then
_=a[8][_-(2^15)]for f=1,6 do
_[f]=A[f+1]end
elseif _<0 then
M=a[1][-_]if M then
A=M[6]if a[16][A][5]>0 then
N=S(N,15)P=af*4
aM=a[16][A][5]B[#B+1]={"item pickup sound index",1}if M[4]then
bs=a[15][M[4]]if bs[29]==a[19][13][1]then
for f=1,#a[2]do
a[2][f][8]=a[2][f][8]or 1
end
end
end
end
end
while-_>#a[1]do
a[1][#a[1]+1]=aF
end
ab(a[1],-_)else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for f=1,8 do
_[a[19][1][f]]=A[f+1]end
_[15]=0
end
end
end
ac={}_=a[1][1]C[1]={_[1],_[2]}C[3]=_[3]bw=be(#a[7],C[1])aw=aS(bw)C[2]=aw[1]+41
bq=ay(aw[5]/m,1)^1.3
for b=1,#aw[8]do
_=a[6][aw[8][b]]for g=_[2],_[1]+_[2]-1 do
bv=a[5][g]bx=a[2][bv[4]]bx[8]=2
end
end
b_=ae(2)if i(12)>0 and r>0 then
B[#B+1]={i(12),1}end
ak=ak-1
as=as-1
if not bl[T]then
bl[T]=1
as=70
end
aQ=(4-ay(r//20,4))*8
if r<=0 then
al=41
elseif as>0 then
al=aQ+6
elseif r<aY then
ak=af
al=aQ+7
elseif ak<=0 then
ak=16
aE=aE%256+1
al=aQ+a[13][1][aE]%3
end
aY=r
end
for b=#B,1,-1 do
y=B[b]_=a[18][y[1]]if ae(1)then
z=_[y[2]]y[2]=y[2]+4
else
z=_[y[2]+2]end
if z and z>0 then
V[#V+1]={z,1}end
if y[2]>=#_ then
ab(B,b)end
end
for b=1,32 do
aW(b,0)end
for b=#V,1,-1 do
z=V[b]aW(b+3,bf(at((z[1]+12)//2),1,60))z[2]=z[2]+1
if z[2]>bm then
ab(V,b)end
end
end
end
function onDraw()x=screen
local aa,p,E,ao=x.drawRectF,x.setColor,x.drawLine,x.drawText
aJ=aJ+1
if a[21]and not ag then
d=a[25][1]q,j=d[1],d[2]h,t=D-q/2,80-j/2
for f=0,q-1 do
v=h+f
for O=0,j-1 do
k=d[5+O+f*j]if k~=0 then
e=a[20][k]p(e[1],e[2],e[3])E(v,t+O,v,t+O+1)end
end
end
end
if not b_ then
for b=1,#w do
d=w[b][2][1]aL=d>0 and bq or 1
d=a[17][abs(d)][1]d=a[23][d]q,j,aD=d[1],d[2],d[3]*.7
aX=aD*bj
h,t=D-(d[4]+160)*.7,F-(d[5]+148)*.7*bj
for f=0,q-1 do
v=h+f*aD
for O=0,j-1 do
k=d[7+O+f*j]if k~=0 then
e=a[20][k]p(e[1]*aL,e[2]*aL,e[3]*aL)aa(v,t+O*aX,aD,aX)end
end
end
end
end
if ag then
if b_ then
p(0,0,0)aa(0,0,aA,F)for b=1,#a[2]do
_=a[2][b]if _[8]then
K=ax(bb(bg(sub(a[4][_[1]],C[1]),aU)),{D,av})L=ax(bb(bg(sub(a[4][_[2]],C[1]),aU)),{D,av})if _[8]==1 then
p(0,50,0)elseif _[3]&4>0 then
p(50,50,50)else
p(m,m,m)end
E(K[1],K[2],L[1],L[2])end
end
p(m,m,m)_=a[19][10]for b=1,#_,4 do
ap=sin(C[3]-90)aq=cos(C[3]-90)K={_[b]*aq+_[b+1]*ap,_[b+1]*aq-_[b]*ap}L={_[b+2]*aq+_[b+3]*ap,_[b+3]*aq-_[b+2]*ap}K=ax(K,{D,av})L=ax(L,{D,av})E(K[1],K[2],L[1],L[2])end
end
p(m,Q>0 and 0 or m,0,Q+N)aa(0,0,aA,F)p(30,30,30)aa(0,F,aA,32)p(5,5,5)aa(D-16,F,32,32)d=a[23]["face textures start"+(al)*"number of sprite mipmap levels"]q,j=d[1],d[2]h=D-q/2
for b=0,q-1 do
for g=0,j-1 do
k=d[7+g+b*j]if k~=0 then
e=a[20][k]p(e[1],e[2],e[3])E(h+b,F+1+g,h+b,F+2+g)end
end
end
for b=1,3 do
if a[12][1][13+b]>0 then
h,t=221,125+b*8
d=a[23]["key textures start"+a[19][5][b]*"number of sprite mipmap levels"]q,j=d[1],d[2]for g=0,q-1 do
for f=0,j-1 do
k=d[7+f+g*j]if k~=0 then
e=a[20][k]p(e[1],e[2],e[3])E(h+g,t+f,h+g,t+f+1)end
end
end
end
end
if P>0 then
aV=a[13][aM]h=0
t=0
for bo=1,#aV do
_=aV[bo]if _>0 then
d=a[23][_]q,j=d[1],d[2]v=h-d[4]an=t-d[5]for b=0,q-1 do
for g=0,j-1 do
k=d[7+g+b*j]if k~=0 then
e=a[20][k]p(e[1],e[2],e[3])E(v+b,an+g,v+b,an+g+1)end
end
end
h=h+q
else
h=h+4
end
end
end
au(124,H,U(r).."%",16)au(218,H,U(aP).."%",16)o(124-28-15,ai,"HEALTH")o(218-28-15,ai,"ARMOUR")l=(aj<af and aj>0)and{m,0,0}o(2,H,"TPS:",l)o(26,H,aj>0 and aj or "N/A",l)l=aT and{m,m,44}o(2,138,"DIF:",l)bp={"EASY","MED","HARD"}o(26,138,bp[U(ay(aK-3000,3))],l)l=bh and{m,m,44}o(2,145,"LOD:",l)o(26,145,U(aC),l)l=bk and{m,m,44}o(2,ai,"TEX:",l)bu={"FULL","HALF"}o(26,ai,bd and bu[bd]or "OFF",l)o(232,H,"BULL")o(232,138,"SHEL")o(232,145,"ROKT")o(232,ai,"CELL")for b=1,4 do
c=124+b*7
au(265,c,at(a[12][1][b]),15)au(285,c,at(a[19][17][b]),15)o(268,c,"/")end
else
ao(1,H,"ROM:")ao(26,H,aB)end
end
