
Y=152
I=131
v=255
L=180
p=math
O=p.max
aq=p.min
abs=p.abs
U=p.floor
sqrt=p.sqrt
i=input.getNumber
X=input.getBool
aZ=output.setNumber
pi=p.pi
aJ=false
aU=true
T=table.remove
af=string
function am(c,l)return{(c[1]+l[1]),(c[2]+l[2])}end
function bl(c,l)return c[1]*l[2]-c[2]*l[1]end
function sub(c,l)return{(c[1]-l[1]),(c[2]-l[2])}end
function aX(c,l)return{c[1]*l,c[2]*l}end
function bq(c)return((c+L)%360)-L end
function sin(c)return p.sin(c/L*pi)end
function cos(c)return p.cos(c/L*pi)end
function tan(c)return p.tan(c/L*pi)end
function bu(c)return p.atan(c)*L/pi end
function br(c)return p.atan(c[2],c[1])*L/pi end
function aV(c,l,bo)return aq(O(l,c),bo)end
function at(c)return U(c+.5)end
function bp(c,l)return sqrt(((c[1]-l[1])^2)+((c[2]-l[2])^2))end
function aT(c)return{c[1],-c[2]}end
function bs(c)c=c-1
c=c|(c>>1)c=c|(c>>2)c=c|(c>>4)return c+1
end
a={}aj=1
ai=3
ad=aJ
B={{0,0},0,0}aw=288
E=aw//2
C=128
ax=C//2
aO=1.2
ba={1,1}aC=1
ak=1
ai=3
ay=400
x=100
aR=100
aA=0
an=0
N=0
Q=0
aE=3002
aQ=32768
u={}aN=.05
z={}ac={}bm=2
ag=0
aG=0
au=0
J=1
aD=0
aa=0
ae=aU
function bc(b,c)if b<aQ then
H=a[7][b]return bc(H[0<bl({H[3],H[4]},sub(c,H))and 8 or 7],c)else
return b-aQ
end
end
function aP(c)H=a[5][a[6][c][2]]return a[8][a[3][a[2][H[4]][H[5]+6]][6]]end
function ar(h,r,al,av)local D,m=t.drawLine,t.setColor
al=al..""
av=a[19][av]for b=#al,1,-1 do
_=av[af.byte(af.sub(al,b,b))]h=h-av[1]if _>0 then
d=a[23][_]o,j=d[1],d[2]s=h-d[4]+1
V=r-d[5]for g=0,o-1 do
for f=0,j-1 do
k=d[7+f+g*j]if k~=0 then
e=a[20][k]m(e[1],e[2],e[3])D(s+g,V+f,s+g,V+f+1)end
end
end
end
end
end
function n(bd,aS,ab)t.setColor(13,0,0)t.drawText(bd+1,aS+1,ab)t.setColor(59,59,59)t.drawText(bd,aS,ab)end
function onTick()aD=0
for g=1,3 do
if X(9)and(not ad)or not a[21]then
aB=property.getText(aj)b=1
q=""
_=af.sub(aB,b,b)while _~=""do
K=af.byte(_)if K>64 then
q=(q..K-65)+0
if J==1 then
aM=q
a[q]=a[q]or{}elseif J==2 then
bh=q
S=0
elseif J==3 then
aL=q
else
if S==0 then
S=bh
aL=aL-1
aK={}a[aM][#a[aM]+1]=aK
end
aK[#aK+1]=q
S=S-1
J=O(S,aL)>0 and J-1 or 0
end
J=J+1
q=""
else
q=q.._
end
b=b+1
_=af.sub(aB,b,b)end
aj=aj+1
ad=aB==""
end
end
if ad then
if i(10)>0 then
ae=aU
ai=i(10)end
aG=aG+1
a[12][1][aG%#a[12][1]+1]=at(i(11))if x>0 and not ae then
M={}W[#W+1]=M
Z=6
_=i(Z)while _~=0 do
w={}M[#M+1]=w
for b=0,8 do
w[b+1]=i(Z+b)end
Z=Z+9
_=i(Z)end
end
if X(1)then
if ae then
for b=1,10 do
a[b]=a[b+10*ai]end
ai=ai+1
ae=aJ
for b=#a[1],1,-1 do
_=a[1][b]_=_[5]&(aE-3000)>0 or T(a[1],b)end
for b=1,#a[8]do
a[8][b][8]={}end
for b=1,#a[6]do
_=aP(b)_[8][#_[8]+1]=b
end
W={}end
an=an-1
if x>0 then
if R~=i(1)and i(1)>0 then
u={}_={}_[1]=a[29][i(1)]_[2]=a[16][_[1][3]]bt=_[2][1]_[3]=0
u[1]=_
end
R=i(1)aF=X(3)if aF and R==5 then
if aa<=0 then
aa=7
else
aF=false
end
end
aa=aa-1
if aF then
_=u[1]_[2]=a[16][_[1][4]]_[3]=-1
y=a[19][6][R]if y>0 then
z[#z+1]={y,1}end
end
end
for b=#u,1,-1 do
_=u[b]if _[3]==0 then
if _[2][3]==4 then
if R==5 and aa<5 then
aW=1
else
aW=0
end
u[#u+1]={_[1],a[16][_[1][5]+aW],2}end
end
_[3]=_[3]+1
if _[3]>=_[2][2]then
if _[2][4]>2 then
_[2]=a[16][_[2][4]]_[3]=0
else
T(u,b)end
end
end
if ae then
N=50
end
Q=O(Q-4,0)Q=aV(Q+(x-i(3)+aA-i(4))*3,0,v)N=O(N-1.5,0)x=i(3)aA=i(4)if i(2)>0 then
_=a[2][i(2)]if _ then
if _[4]>3004 and _[4]<3008 then
ay=O(ay+3*(_[4]-3006),1)elseif _[4]>3000 then
aE=_[4]end
end
end
for b=1,#W do
M=W[b]for g=1,#M do
w=M[g]_=w[1]if _>(2^15)then
_=a[8][_-(2^15)]for f=1,6 do
_[f]=w[f+1]end
elseif _<0 then
K=a[1][-_]if K then
w=K[6]if a[16][w][5]>0 then
N=O(N,15)an=35
bf=a[16][w][5]z[#z+1]={"item pickup sound index",1}if K[4]then
bi=a[15][K[4]]if bi[29]==a[19][13][1]then
for f=1,#a[2]do
a[2][f][8]=a[2][f][8]or 1
end
end
end
end
end
while-_>#a[1]do
a[1][#a[1]+1]=aJ
end
T(a[1],-_)else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for f=1,8 do
_[a[19][1][f]]=w[f+1]end
_[15]=0
end
end
end
W={}_=a[1][1]B[1]={_[1],_[2]}B[3]=_[3]bg=bc(#a[7],B[1])ao=aP(bg)B[2]=ao[1]+41
bk=aq(ao[5]/v,1)^1.3
for b=1,#ao[8]do
_=a[6][ao[8][b]]for g=_[2],_[1]+_[2]-1 do
bn=a[5][g]be=a[2][bn[4]]be[8]=2
end
end
aY=X(2)if i(12)>0 then
z[#z+1]={i(12),1}end
ag=ag-1
au=au-1
if not ba[R]then
ba[R]=1
au=70
end
aH=(4-aq(x//20,4))*8
if x<=0 then
ak=41
elseif au>0 then
ak=aH+6
elseif x<aR then
ag=35
ak=aH+7
elseif ag<=0 then
ag=16
aC=aC%256+1
ak=aH+a[13][1][aC]%3
end
aR=x
end
for b=#z,1,-1 do
y=z[b]_=a[18][y[1]]if X(1)then
A=_[y[2]]y[2]=y[2]+4
else
A=_[y[2]+2]end
if A and A>0 then
ac[#ac+1]={A,1}end
if y[2]>=#_ then
T(z,b)end
end
for b=1,32 do
aZ(b,0)end
for b=#ac,1,-1 do
A=ac[b]aZ(b+3,aV(at((A[1]+12)//2),1,60))A[2]=A[2]+1
if A[2]>bm then
T(ac,b)end
end
end
end
function onDraw()t=screen
local ah,m,D,ab=t.drawRectF,t.setColor,t.drawLine,t.drawText
aD=aD+1
if a[21]and not ad then
d=a[25][1]o,j=d[1],d[2]h,r=E-o/2,80-j/2
for f=0,o-1 do
s=h+f
for P=0,j-1 do
k=d[5+P+f*j]if k~=0 then
e=a[20][k]m(e[1],e[2],e[3])D(s,r+P,s,r+P+1)end
end
end
end
if not aY then
for b=1,#u do
d=u[b][2][1]aI=d>0 and bk or 1
d=a[17][abs(d)][1]d=a[23][d]o,j,az=d[1],d[2],d[3]*.7
b_=az*aO
h,r=E-(d[4]+160)*.7,C-(d[5]+148)*.7*aO
for f=0,o-1 do
s=h+f*az
for P=0,j-1 do
k=d[7+P+f*j]if k~=0 then
e=a[20][k]m(e[1]*aI,e[2]*aI,e[3]*aI)ah(s,r+P*b_,az,b_)end
end
end
end
end
if ad then
if aY then
m(0,0,0)ah(0,0,aw,C)for b=1,#a[2]do
_=a[2][b]if _[8]then
F=am(aT(aX(sub(a[4][_[1]],B[1]),aN)),{E,ax})G=am(aT(aX(sub(a[4][_[2]],B[1]),aN)),{E,ax})if _[8]==1 then
m(0,50,0)elseif _[3]&4>0 then
m(50,50,50)else
m(v,v,v)end
D(F[1],F[2],G[1],G[2])end
end
m(v,v,v)_=a[19][10]for b=1,#_,4 do
ap=sin(B[3]-90)as=cos(B[3]-90)F={_[b]*as+_[b+1]*ap,_[b+1]*as-_[b]*ap}G={_[b+2]*as+_[b+3]*ap,_[b+3]*as-_[b+2]*ap}F=am(F,{E,ax})G=am(G,{E,ax})D(F[1],F[2],G[1],G[2])end
end
m(v,Q>0 and 0 or v,0,Q+N)ah(0,0,aw,C)m(30,30,30)ah(0,C,aw,32)m(5,5,5)ah(E-16,C,32,32)d=a[23]["face textures start"+(ak)*"number of sprite mipmap levels"]o,j=d[1],d[2]h=E-o/2
for b=0,o-1 do
for g=0,j-1 do
k=d[7+g+b*j]if k~=0 then
e=a[20][k]m(e[1],e[2],e[3])D(h+b,C+1+g,h+b,C+2+g)end
end
end
for b=1,3 do
if a[12][1][13+b]>0 then
h,r=221,125+b*8
d=a[23]["key textures start"+a[19][5][b]*"number of sprite mipmap levels"]o,j=d[1],d[2]for g=0,o-1 do
for f=0,j-1 do
k=d[7+f+g*j]if k~=0 then
e=a[20][k]m(e[1],e[2],e[3])D(h+g,r+f,h+g,r+f+1)end
end
end
end
end
if an>0 then
bb=a[13][bf]h=0
r=0
for bj=1,#bb do
_=bb[bj]if _>0 then
d=a[23][_]o,j=d[1],d[2]s=h-d[4]V=r-d[5]for b=0,o-1 do
for g=0,j-1 do
k=d[7+g+b*j]if k~=0 then
e=a[20][k]m(e[1],e[2],e[3])D(s+b,V+g,s+b,V+g+1)end
end
end
h=h+o
else
h=h+4
end
end
end
ar(124,I,U(x).."%",16)ar(218,I,U(aA).."%",16)n(124-28-15,Y,"HEALTH")n(218-28-15,Y,"ARMOUR")n(2,I,"ROM:")n(26,I,aj)n(2,138,"TPS:")n(26,138,a[12][1][17])n(2,145,"DIF:")n(26,145,U(aq(aE-3000,3)))n(2,Y,"LOD:")n(26,Y,U(ay))n(232,I,"BULL")n(232,138,"SHEL")n(232,145,"ROKT")n(232,Y,"CELL")for b=1,4 do
c=124+b*7
ar(265,c,at(a[12][1][b]),15)ar(285,c,at(a[19][17][b]),15)n(268,c,"/")end
else
ab(1,I,"ROM:")ab(26,I,aj)end
end
