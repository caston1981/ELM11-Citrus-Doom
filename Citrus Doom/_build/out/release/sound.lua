
S=152
L=131
v=255
G=180
r=math
R=r.max
av=r.min
abs=r.abs
ak=r.floor
sqrt=r.sqrt
k=input.getNumber
U=input.getBool
bd=output.setNumber
pi=r.pi
aB=false
aS=true
aa=table.remove
ai=string
function an(c,l)return{(c[1]+l[1]),(c[2]+l[2])}end
function bf(c,l)return c[1]*l[2]-c[2]*l[1]end
function sub(c,l)return{(c[1]-l[1]),(c[2]-l[2])}end
function aT(c,l)return{c[1]*l,c[2]*l}end
function bu(c)return((c+G)%360)-G end
function sin(c)return r.sin(c/G*pi)end
function cos(c)return r.cos(c/G*pi)end
function tan(c)return r.tan(c/G*pi)end
function bq(c)return r.atan(c)*G/pi end
function bt(c)return r.atan(c[2],c[1])*G/pi end
function ba(c,l,be)return av(R(l,c),be)end
function am(c)return ak(c+.5)end
function bs(c,l)return sqrt(((c[1]-l[1])^2)+((c[2]-l[2])^2))end
function aP(c)return{c[1],-c[2]}end
function br(c)c=c-1
c=c|(c>>1)c=c|(c>>2)c=c|(c>>4)return c+1
end
a={}ag=1
ae=3
ab=aB
D={{0,0},0,0}au=288
C=au//2
B=128
ao=B//2
aV=1.2
aW={1,1}aE=1
ad=1
ae=3
aL=400
x=100
aU=100
ay=0
at=0
M=0
Q=0
aA=3002
aO=32768
s={}aY=.05
E={}W={}bn=2
X=0
aK=0
ap=0
K=1
aG=0
ah=0
V=aS
function aQ(b,c)if b<aO then
J=a[7][b]return aQ(J[0<bf({J[3],J[4]},sub(c,J))and 8 or 7],c)else
return b-aO
end
end
function aX(c)J=a[5][a[6][c][2]]return a[8][a[3][a[2][J[4]][J[5]+6]][6]]end
function ar(h,p,ax,aq)local A,n=u.drawLine,u.setColor
ax=ax..""
aq=a[19][aq]for b=#ax,1,-1 do
_=aq[ai.byte(ai.sub(ax,b,b))]h=h-aq[1]if _>0 then
d=a[23][_]o,i=d[1],d[2]t=h-d[4]+1
T=p-d[5]for g=0,o-1 do
for f=0,i-1 do
j=d[7+f+g*i]if j~=0 then
e=a[20][j]n(e[1],e[2],e[3])A(t+g,T+f,t+g,T+f+1)end
end
end
end
end
end
function m(aN,aZ,Y)u.setColor(13,0,0)u.drawText(aN+1,aZ+1,Y)u.setColor(59,59,59)u.drawText(aN,aZ,Y)end
function onTick()aG=0
for g=1,3 do
if U(9)and(not ab)or not a[21]then
az=property.getText(ag)b=1
q=""
_=ai.sub(az,b,b)while _~=""do
H=ai.byte(_)if H>64 then
q=(q..H-65)+0
if K==1 then
aR=q
a[q]=a[q]or{}elseif K==2 then
bo=q
ac=0
elseif K==3 then
aJ=q
else
if ac==0 then
ac=bo
aJ=aJ-1
aF={}a[aR][#a[aR]+1]=aF
end
aF[#aF+1]=q
ac=ac-1
K=R(ac,aJ)>0 and K-1 or 0
end
K=K+1
q=""
else
q=q.._
end
b=b+1
_=ai.sub(az,b,b)end
ag=ag+1
ab=az==""
end
end
if ab then
if k(9)>0 then
V=aS
ae=k(9)end
aK=aK+1
a[12][1][aK%#a[12][1]+1]=am(k(10))if x>0 and not V then
N={}aj[#aj+1]=N
Z=5
_=k(Z)while _~=0 do
w={}N[#N+1]=w
for b=0,8 do
w[b+1]=k(Z+b)end
Z=Z+9
_=k(Z)end
end
if U(1)then
if V then
for b=1,10 do
a[b]=a[b+10*ae]end
ae=ae+1
V=aB
for b=#a[1],1,-1 do
_=a[1][b]_=_[5]&(aA-3000)>0 or aa(a[1],b)end
for b=1,#a[8]do
a[8][b][8]={}end
for b=1,#a[6]do
_=aX(b)_[8][#_[8]+1]=b
end
aj={}end
at=at-1
if x>0 then
if O~=k(1)and k(1)>0 then
s={}_={}_[1]=a[29][k(1)]_[2]=a[16][_[1][3]]bp=_[2][1]_[3]=0
s[1]=_
end
O=k(1)aH=U(3)if aH and O==5 then
if ah<=0 then
ah=7
else
aH=false
end
end
ah=ah-1
if aH then
_=s[1]_[2]=a[16][_[1][4]]_[3]=-1
y=a[19][6][O]if y>0 then
E[#E+1]={y,1}end
end
end
for b=#s,1,-1 do
_=s[b]if _[3]==0 then
if _[2][3]==4 then
if O==5 and ah<5 then
aM=1
else
aM=0
end
s[#s+1]={_[1],a[16][_[1][5]+aM],2}end
end
_[3]=_[3]+1
if _[3]>=_[2][2]then
if _[2][4]>2 then
_[2]=a[16][_[2][4]]_[3]=0
else
aa(s,b)end
end
end
if V then
M=50
end
Q=R(Q-4,0)Q=ba(Q+(x-k(3)+ay-k(4))*3,0,v)M=R(M-1.5,0)x=k(3)ay=k(4)if k(2)>0 then
_=a[2][k(2)]if _ then
if _[4]>3004 and _[4]<3008 then
aL=R(aL+3*(_[4]-3006),1)elseif _[4]>3000 then
aA=_[4]end
end
end
for b=1,#aj do
N=aj[b]for g=1,#N do
w=N[g]_=w[1]if _>(2^15)then
_=a[8][_-(2^15)]for f=1,6 do
_[f]=w[f+1]end
elseif _<0 then
H=a[1][-_]if H then
w=H[6]if a[16][w][5]>0 then
M=R(M,15)at=35
bm=a[16][w][5]E[#E+1]={a[19][11][1],1}if H[4]then
bh=a[15][H[4]]if bh[29]==a[19][13][1]then
for f=1,#a[2]do
a[2][f][8]=a[2][f][8]or 1
end
end
end
end
end
while-_>#a[1]do
a[1][#a[1]+1]=aB
end
aa(a[1],-_)else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for f=1,8 do
_[a[19][1][f]]=w[f+1]end
_[15]=0
end
end
end
aj={}_=a[1][1]D[1]={_[1],_[2]}D[3]=_[3]bg=aQ(#a[7],D[1])aw=aX(bg)D[2]=aw[1]+41
bi=av(aw[5]/v,1)^1.3
for b=1,#aw[8]do
_=a[6][aw[8][b]]for g=_[2],_[1]+_[2]-1 do
bj=a[5][g]bl=a[2][bj[4]]bl[8]=2
end
end
b_=U(2)X=X-1
ap=ap-1
if not aW[O]then
aW[O]=1
ap=70
end
aI=(4-av(x//20,4))*8
if x<=0 then
ad=41
elseif ap>0 then
ad=aI+6
elseif x<aU then
X=35
ad=aI+7
elseif X<=0 then
X=16
aE=aE%256+1
ad=aI+a[13][1][aE]%3
end
aU=x
end
for b=#E,1,-1 do
y=E[b]_=a[18][y[1]]if U(1)then
z=_[y[2]]y[2]=y[2]+4
else
z=_[y[2]+2]end
if z and z>0 then
W[#W+1]={z,1}end
if y[2]>=#_ then
aa(E,b)end
end
for b=1,32 do
bd(b,0)end
for b=#W,1,-1 do
z=W[b]bd(b+3,ba(am((z[1]+12)//2),1,60))z[2]=z[2]+1
if z[2]>bn then
aa(W,b)end
end
end
end
function onDraw()u=screen
local af,n,A,Y=u.drawRectF,u.setColor,u.drawLine,u.drawText
aG=aG+1
if a[21]and not ab then
d=a[25][1]o,i=d[1],d[2]h,p=C-o/2,80-i/2
for f=0,o-1 do
t=h+f
for P=0,i-1 do
j=d[5+P+f*i]if j~=0 then
e=a[20][j]n(e[1],e[2],e[3])A(t,p+P,t,p+P+1)end
end
end
end
if not b_ then
for b=1,#s do
d=s[b][2][1]aD=d>0 and bi or 1
d=a[17][abs(d)][1]d=a[23][d]o,i,aC=d[1],d[2],d[3]*.7
bb=aC*aV
h,p=C-(d[4]+160)*.7,B-(d[5]+148)*.7*aV
for f=0,o-1 do
t=h+f*aC
for P=0,i-1 do
j=d[7+P+f*i]if j~=0 then
e=a[20][j]n(e[1]*aD,e[2]*aD,e[3]*aD)af(t,p+P*bb,aC,bb)end
end
end
end
end
if ab then
if b_ then
n(0,0,0)af(0,0,au,B)for b=1,#a[2]do
_=a[2][b]if _[8]then
F=an(aP(aT(sub(a[4][_[1]],D[1]),aY)),{C,ao})I=an(aP(aT(sub(a[4][_[2]],D[1]),aY)),{C,ao})if _[8]==1 then
n(0,50,0)elseif _[3]&4>0 then
n(50,50,50)else
n(v,v,v)end
A(F[1],F[2],I[1],I[2])end
end
n(v,v,v)_=a[19][10]for b=1,#_,4 do
al=sin(D[3]-90)as=cos(D[3]-90)F={_[b]*as+_[b+1]*al,_[b+1]*as-_[b]*al}I={_[b+2]*as+_[b+3]*al,_[b+3]*as-_[b+2]*al}F=an(F,{C,ao})I=an(I,{C,ao})A(F[1],F[2],I[1],I[2])end
end
n(v,Q>0 and 0 or v,0,Q+M)af(0,0,au,B)n(30,30,30)af(0,B,au,32)n(5,5,5)af(C-16,B,32,32)d=a[23][a[19][3][1]+(ad)*a[19][3][3]]o,i=d[1],d[2]h=C-o/2
for b=0,o-1 do
for g=0,i-1 do
j=d[7+g+b*i]if j~=0 then
e=a[20][j]n(e[1],e[2],e[3])A(h+b,B+1+g,h+b,B+2+g)end
end
end
for b=1,3 do
if a[12][1][13+b]>0 then
h,p=221,125+b*8
d=a[23][a[19][3][4]+a[19][5][b]*a[19][3][3]]o,i=d[1],d[2]for g=0,o-1 do
for f=0,i-1 do
j=d[7+f+g*i]if j~=0 then
e=a[20][j]n(e[1],e[2],e[3])A(h+g,p+f,h+g,p+f+1)end
end
end
end
end
if at>0 then
bc=a[13][bm]h=0
p=0
for bk=1,#bc do
_=bc[bk]if _>0 then
d=a[23][_]o,i=d[1],d[2]t=h-d[4]T=p-d[5]for b=0,o-1 do
for g=0,i-1 do
j=d[7+g+b*i]if j~=0 then
e=a[20][j]n(e[1],e[2],e[3])A(t+b,T+g,t+b,T+g+1)end
end
end
h=h+o
else
h=h+4
end
end
end
ar(124,L,ak(x).."%",16)ar(218,L,ak(ay).."%",16)m(124-28-15,S,"HEALTH")m(218-28-15,S,"ARMOUR")m(2,L,"ROM:")m(26,L,ag)m(2,138,"TPS:")m(26,138,a[12][1][17])m(2,145,"DIF:")m(26,145,ak(av(aA-3000,3)))m(2,S,"LOD:")m(26,S,ak(aL))m(232,L,"BULL")m(232,138,"SHEL")m(232,145,"ROKT")m(232,S,"CELL")for b=1,4 do
c=124+b*7
ar(265,c,am(a[12][1][b]),15)ar(285,c,am(a[19][17][b]),15)m(268,c,"/")end
else
Y(1,L,"ROM:")Y(26,L,ag)end
end
