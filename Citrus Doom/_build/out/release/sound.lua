
Q=152
G=131
s=255
J=180
aI=true
aW=false
aN=input
p=math
N=p.max
am=p.min
abs=p.abs
S=p.floor
sqrt=p.sqrt
l=aN.getNumber
at=aN.getBool
bg=output.setNumber
pi=p.pi
aD=aW
bb=aI
aj=table.remove
W=string
function ak(c,k)return{(c[1]+k[1]),(c[2]+k[2])}end
function bq(c,k)return c[1]*k[2]-c[2]*k[1]end
function sub(c,k)return{(c[1]-k[1]),(c[2]-k[2])}end
function ba(c,k)return{c[1]*k,c[2]*k}end
function bv(c)return((c+J)%360)-J end
function sin(c)return p.sin(c/J*pi)end
function cos(c)return p.cos(c/J*pi)end
function tan(c)return p.tan(c/J*pi)end
function bs(c)return p.atan(c)*J/pi end
function bw(c)return p.atan(c[2],c[1])*J/pi end
function bf(c,k,bi)return am(N(k,c),bi)end
function ai(c)return S(c+.5)end
function bt(c,k)return sqrt(((c[1]-k[1])^2)+((c[2]-k[2])^2))end
function bd(c)return{c[1],-c[2]}end
function bu(c)c=c-1
c=c|(c>>1)c=c|(c>>2)c=c|(c>>4)return c+1
end
a={}T=1
V=3
Z=aD
z={{0,0},0,0}ag=288
y=ag//2
I=128
as=I//2
aV=1.2
aY={1,1}aK=1
aa=1
V=3
au=400
w=100
bc=100
aA=0
aq=0
L=0
M=0
ay=3002
X={}aP=32768
t={}b_=.05
H={}ax=3
ab=0
aJ=0
ah=0
F=1
aB=0
ae=0
Y=bb
function aS(b,c)if b<aP then
D=a[7][b]return aS(D[0<bq({D[3],D[4]},sub(c,D))and 8 or 7],c)else
return b-aP
end
end
function aZ(c)D=a[5][a[6][c][2]]return a[8][a[3][a[2][D[4]][D[5]+6]][6]]end
function an(i,x,ao,ap)local q,n=u.drawRectF,u.setColor
ao=ao..""
ap=a[19][ap]for b=#ao,1,-1 do
_=ap[W.byte(W.sub(ao,b,b))]i=i-ap[1]if _>0 then
d=a[23][_]o,h=d[1],d[2]B=i-d[4]+1
aw=x-d[5]for g=0,o-1 do
for f=0,h-1 do
j=d[7+f+g*h]if j~=0 then
e=a[20][j]n(e[1],e[2],e[3])q(B+g,aw+f,1,1)end
end
end
end
end
end
function m(aM,aQ,ad)u.setColor(13,0,0)u.drawText(aM+1,aQ+1,ad)u.setColor(59,59,59)u.drawText(aM,aQ,ad)end
function onTick()aB=0
for g=1,3 do
if at(9)and(not Z)or not a[21]then
aE=property.getText(T)b=1
r=""
_=W.sub(aE,b,b)while _~=""do
E=W.byte(_)if E>64 then
r=(r..E-65)+0
if F==1 then
aR=r
a[r]=a[r]or{}elseif F==2 then
bl=r
P=0
elseif F==3 then
aH=r
else
if P==0 then
P=bl
aH=aH-1
aF={}a[aR][#a[aR]+1]=aF
end
aF[#aF+1]=r
P=P-1
F=N(P,aH)>0 and F-1 or 0
end
F=F+1
r=""
else
r=r.._
end
b=b+1
_=W.sub(aE,b,b)end
T=T+1
Z=aE==""
end
end
if Z then
if l(9)>0 then
Y=bb
V=l(9)end
aJ=aJ+1
a[12][1][aJ%#a[12][1]+1]=ai(l(10))if w>0 and not Y then
K={}X[#X+1]=K
U=5
_=l(U)while _~=0 do
v={}K[#K+1]=v
for b=0,8 do
v[b+1]=l(U+b)end
U=U+9
_=l(U)end
end
if at(1)then
if Y then
for b=1,10 do
a[b]=a[b+10*V]end
V=V+1
Y=aD
for b=#a[1],1,-1 do
_=a[1][b]_=_[5]&(ay-3000)>0 or aj(a[1],b)end
for b=1,#a[8]do
a[8][b][8]={}end
for b=1,#a[6]do
_=aZ(b)_[8][#_[8]+1]=b
end
end
aq=aq-1
if w>0 then
if O~=l(1)and l(1)>0 then
t={}_={}_[1]=a[29][l(1)]_[2]=a[16][_[1][3]]br=_[2][1]_[3]=0
t[1]=_
end
O=l(1)av=at(3)if av and O==5 then
if ae<=0 then
ae=7
else
av=aW
end
end
ae=ae-1
if av then
_=t[1]_[2]=a[16][_[1][4]]_[3]=-1
H[#H+1]={1,1}end
end
for b=#t,1,-1 do
_=t[b]if _[3]==0 then
if _[2][3]==4 then
if O==5 and ae<5 then
aT=1
else
aT=0
end
t[#t+1]={_[1],a[16][_[1][5]+aT],2}end
end
_[3]=_[3]+1
if _[3]>=_[2][2]then
if _[2][4]>2 then
_[2]=a[16][_[2][4]]_[3]=0
else
aj(t,b)end
end
end
for b=1,32 do
bg(b,0)end
for b=#H,1,-1 do
ac=H[b]_=a[18][ac[1]]for g=0,ax-1 do
aC=_[(ac[2]+g)*2-1]if aC and aC>0 then
bg(2+(b-1)*ax+g,bf(ai((aC+12)//2),1,60))end
end
ac[2]=ac[2]+2
if ac[2]>=ax+#_ then
aj(H,b)end
end
if Y then
L=50
end
M=N(M-4,0)M=bf(M+(w-l(3)+aA-l(4))*3,0,s)L=N(L-1.5,0)w=l(3)aA=l(4)if l(2)>0 then
_=a[2][l(2)]if _ then
if _[4]>3004 and _[4]<3008 then
au=N(au+3*(_[4]-3006),1)elseif _[4]>3000 then
ay=_[4]end
end
end
for b=1,#X do
K=X[b]for g=1,#K do
v=K[g]_=v[1]if _>(2^15)then
_=a[8][_-(2^15)]for f=1,6 do
_[f]=v[f+1]end
elseif _<0 then
E=a[1][-_]if E~=nil then
v=E[6]if a[16][v][5]>0 then
L=N(L,15)aq=35
bk=a[16][v][5]H[#H+1]={a[19][11][1],1}if E[4]then
bn=a[15][E[4]]if bn[29]==a[19][13][1]then
for f=1,#a[2]do
a[2][f][8]=aI
end
end
end
end
end
while-_>#a[1]do
a[1][#a[1]+1]=aD
end
aj(a[1],-_)else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for f=1,8 do
_[a[19][1][f]]=v[f+1]end
_[15]=0
end
end
end
X={}_=a[1][1]z[1]={_[1],_[2]}z[3]=_[3]bp=aS(#a[7],z[1])ar=aZ(bp)z[2]=ar[1]+41
bm=am(ar[5]/s,1)^1.3
for b=1,#ar[8]do
_=a[6][ar[8][b]]for g=_[2],_[1]+_[2]-1 do
bj=a[5][g]bh=a[2][bj[4]]bh[8]=aI
end
end
aO=at(2)ab=ab-1
ah=ah-1
if not aY[O]then
aY[O]=1
ah=70
end
aG=(4-am(w//20,4))*8
if w<=0 then
aa=41
elseif ah>0 then
aa=aG+6
elseif w<bc then
ab=35
aa=aG+7
elseif ab<=0 then
ab=16
aK=aK%256+1
aa=aG+a[13][1][aK]%3
end
bc=w
end
end
end
function onDraw()u=screen
local q,n,be,ad=u.drawRectF,u.setColor,u.drawLine,u.drawText
aB=aB+1
if a[21]and not Z then
d=a[25][1]o,h=d[1],d[2]i,x=y-o/2,80-h/2
for f=0,o-1 do
B=i+f
for R=0,h-1 do
j=d[5+R+f*h]if j~=0 then
e=a[20][j]n(e[1],e[2],e[3])q(B,x+R,1,1)end
end
end
end
if not aO then
for b=1,#t do
d=t[b][2][1]az=d>0 and bm or 1
d=a[17][abs(d)][1]d=a[23][d]o,h,aL=d[1],d[2],d[3]*.7
aU=aL*aV
i,x=y-(d[4]+160)*.7,I-(d[5]+148)*.7*aV
for f=0,o-1 do
B=i+f*aL
for R=0,h-1 do
j=d[7+R+f*h]if j~=0 then
e=a[20][j]n(e[1]*az,e[2]*az,e[3]*az)q(B,x+R*aU,aL,aU)end
end
end
end
end
if Z then
if aO then
n(0,0,0)q(0,0,ag,I)for b=1,#a[2]do
_=a[2][b]if _[8]then
C=ak(bd(ba(sub(a[4][_[1]],z[1]),b_)),{y,as})A=ak(bd(ba(sub(a[4][_[2]],z[1]),b_)),{y,as})if _[3]&4>0 then
n(50,50,50)else
n(s,s,s)end
be(C[1],C[2],A[1],A[2])end
end
n(s,s,s)_=a[19][10]for b=1,#_,4 do
af=sin(z[3]-90)al=cos(z[3]-90)C={_[b]*al+_[b+1]*af,_[b+1]*al-_[b]*af}A={_[b+2]*al+_[b+3]*af,_[b+3]*al-_[b+2]*af}C=ak(C,{y,as})A=ak(A,{y,as})be(C[1],C[2],A[1],A[2])end
end
n(s,M>0 and 0 or s,0,M+L)q(0,0,ag,I)n(30,30,30)q(0,I,ag,32)n(5,5,5)q(y-16,I,32,32)d=a[23][a[19][3][1]+(aa)*a[19][3][3]]o,h=d[1],d[2]i=y-o/2
for b=0,o-1 do
for g=0,h-1 do
j=d[7+g+b*h]if j~=0 then
e=a[20][j]n(e[1],e[2],e[3])q(i+b,I+1+g,1,1)end
end
end
for b=1,3 do
if a[12][1][13+b]>0 then
i,x=221,125+b*8
d=a[23][a[19][3][4]+a[19][5][b]*a[19][3][3]]o,h=d[1],d[2]for g=0,o-1 do
for f=0,h-1 do
j=d[7+f+g*h]if j~=0 then
e=a[20][j]n(e[1],e[2],e[3])q(i+g,x+f,1,1)end
end
end
end
end
if aq>0 then
aX=a[13][bk]i=0
x=0
for bo=1,#aX do
_=aX[bo]if _>0 then
d=a[23][_]o,h=d[1],d[2]B=i-d[4]aw=x-d[5]for b=0,o-1 do
for g=0,h-1 do
j=d[7+g+b*h]if j~=0 then
e=a[20][j]n(e[1],e[2],e[3])q(B+b,aw+g,1,1)end
end
end
i=i+o
else
i=i+4
end
end
end
an(124,G,S(w).."%",16)an(218,G,S(aA).."%",16)m(124-28-15,Q,"HEALTH")m(218-28-15,Q,"ARMOUR")m(2,G,"ROM:")m(26,G,T)m(2,138,"TPS:")m(26,138,a[12][1][17])m(2,145,"DIF:")m(26,145,S(am(ay-3000,3)))m(2,Q,"LOD:")m(26,Q,S(au))m(232,G,"BULL")m(232,138,"SHEL")m(232,145,"ROKT")m(232,Q,"CELL")for b=1,4 do
c=124+b*7
an(265,c,ai(a[12][1][b]),15)an(285,c,ai(a[19][17][b]),15)m(268,c,"/")end
else
ad(1,G,"ROM:")ad(26,G,T)end
end
