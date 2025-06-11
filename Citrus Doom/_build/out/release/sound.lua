
ai=152
E=131
t=255
K=180
r=math
Q=r.max
ax=r.min
abs=r.abs
Y=r.floor
sqrt=r.sqrt
l=input.getNumber
ab=input.getBool
aN=output.setNumber
pi=r.pi
aF=false
bb=true
aa=table.remove
ac=string
function as(c,k)return{(c[1]+k[1]),(c[2]+k[2])}end
function bj(c,k)return c[1]*k[2]-c[2]*k[1]end
function sub(c,k)return{(c[1]-k[1]),(c[2]-k[2])}end
function aY(c,k)return{c[1]*k,c[2]*k}end
function br(c)return((c+K)%360)-K end
function sin(c)return r.sin(c/K*pi)end
function cos(c)return r.cos(c/K*pi)end
function tan(c)return r.tan(c/K*pi)end
function bs(c)return r.atan(c)*K/pi end
function bt(c)return r.atan(c[2],c[1])*K/pi end
function aV(c,k,be)return ax(Q(k,c),be)end
function aq(c)return Y(c+.5)end
function bq(c,k)return sqrt(((c[1]-k[1])^2)+((c[2]-k[2])^2))end
function aS(c)return{c[1],-c[2]}end
function bp(c)c=c-1
c=c|(c>>1)c=c|(c>>2)c=c|(c>>4)return c+1
end
a={}ah=1
ag=3
W=aF
D={{0,0},0,0}al=288
B=al//2
C=128
an=C//2
ba=1.2
aW={1,1}aA=1
Z=1
ag=3
aB=400
w=100
aZ=100
ay=0
am=0
M=0
P=0
aI=3002
aQ=32768
v={}aO=.05
L={}ak={}bi=2
T=0
aG=0
av=0
H=1
aE=0
X=0
aj=bb
function aX(b,c)if b<aQ then
G=a[7][b]return aX(G[0<bj({G[3],G[4]},sub(c,G))and 8 or 7],c)else
return b-aQ
end
end
function aU(c)G=a[5][a[6][c][2]]return a[8][a[3][a[2][G[4]][G[5]+6]][6]]end
function ap(h,q,aw,ao)local A,m=s.drawLine,s.setColor
aw=aw..""
ao=a[19][ao]for b=#aw,1,-1 do
_=ao[ac.byte(ac.sub(aw,b,b))]h=h-ao[1]if _>0 then
d=a[23][_]o,i=d[1],d[2]u=h-d[4]+1
V=q-d[5]for g=0,o-1 do
for f=0,i-1 do
j=d[7+f+g*i]if j~=0 then
e=a[20][j]m(e[1],e[2],e[3])A(u+g,V+f,u+g,V+f+1)end
end
end
end
end
end
function n(bd,aM,ad)s.setColor(13,0,0)s.drawText(bd+1,aM+1,ad)s.setColor(59,59,59)s.drawText(bd,aM,ad)end
function onTick()aE=0
for g=1,3 do
if ab(9)and(not W)or not a[21]then
az=property.getText(ah)b=1
p=""
_=ac.sub(az,b,b)while _~=""do
I=ac.byte(_)if I>64 then
p=(p..I-65)+0
if H==1 then
aP=p
a[p]=a[p]or{}elseif H==2 then
bh=p
ae=0
elseif H==3 then
aH=p
else
if ae==0 then
ae=bh
aH=aH-1
aD={}a[aP][#a[aP]+1]=aD
end
aD[#aD+1]=p
ae=ae-1
H=Q(ae,aH)>0 and H-1 or 0
end
H=H+1
p=""
else
p=p.._
end
b=b+1
_=ac.sub(az,b,b)end
ah=ah+1
W=az==""
end
end
if W then
if l(9)>0 then
aj=bb
ag=l(9)end
aG=aG+1
a[12][1][aG%#a[12][1]+1]=aq(l(10))if w>0 and not aj then
N={}af[#af+1]=N
U=5
_=l(U)while _~=0 do
x={}N[#N+1]=x
for b=0,8 do
x[b+1]=l(U+b)end
U=U+9
_=l(U)end
end
if ab(1)then
if aj then
for b=1,10 do
a[b]=a[b+10*ag]end
ag=ag+1
aj=aF
for b=#a[1],1,-1 do
_=a[1][b]_=_[5]&(aI-3000)>0 or aa(a[1],b)end
for b=1,#a[8]do
a[8][b][8]={}end
for b=1,#a[6]do
_=aU(b)_[8][#_[8]+1]=b
end
af={}end
am=am-1
if w>0 then
if O~=l(1)and l(1)>0 then
v={}_={}_[1]=a[29][l(1)]_[2]=a[16][_[1][3]]bu=_[2][1]_[3]=0
v[1]=_
end
O=l(1)aL=ab(3)if aL and O==5 then
if X<=0 then
X=7
else
aL=false
end
end
X=X-1
if aL then
_=v[1]_[2]=a[16][_[1][4]]_[3]=-1
z=a[19][6][O]if z>0 then
L[#L+1]={z,1}end
end
end
for b=#v,1,-1 do
_=v[b]if _[3]==0 then
if _[2][3]==4 then
if O==5 and X<5 then
aR=1
else
aR=0
end
v[#v+1]={_[1],a[16][_[1][5]+aR],2}end
end
_[3]=_[3]+1
if _[3]>=_[2][2]then
if _[2][4]>2 then
_[2]=a[16][_[2][4]]_[3]=0
else
aa(v,b)end
end
end
if aj then
M=50
end
P=Q(P-4,0)P=aV(P+(w-l(3)+ay-l(4))*3,0,t)M=Q(M-1.5,0)w=l(3)ay=l(4)if l(2)>0 then
_=a[2][l(2)]if _ then
if _[4]>3004 and _[4]<3008 then
aB=Q(aB+3*(_[4]-3006),1)elseif _[4]>3000 then
aI=_[4]end
end
end
for b=1,#af do
N=af[b]for g=1,#N do
x=N[g]_=x[1]if _>(2^15)then
_=a[8][_-(2^15)]for f=1,6 do
_[f]=x[f+1]end
elseif _<0 then
I=a[1][-_]if I then
x=I[6]if a[16][x][5]>0 then
M=Q(M,15)am=35
bf=a[16][x][5]L[#L+1]={a[19][11][1],1}if I[4]then
bm=a[15][I[4]]if bm[29]==a[19][13][1]then
for f=1,#a[2]do
a[2][f][8]=1
end
end
end
end
end
while-_>#a[1]do
a[1][#a[1]+1]=aF
end
aa(a[1],-_)else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for f=1,8 do
_[a[19][1][f]]=x[f+1]end
_[15]=0
end
end
end
af={}_=a[1][1]D[1]={_[1],_[2]}D[3]=_[3]bk=aX(#a[7],D[1])at=aU(bk)D[2]=at[1]+41
bo=ax(at[5]/t,1)^1.3
for b=1,#at[8]do
_=a[6][at[8][b]]for g=_[2],_[1]+_[2]-1 do
bl=a[5][g]bn=a[2][bl[4]]bn[8]=2
end
end
bc=ab(2)T=T-1
av=av-1
if not aW[O]then
aW[O]=1
av=70
end
aJ=(4-ax(w//20,4))*8
if w<=0 then
Z=41
elseif av>0 then
Z=aJ+6
elseif w<aZ then
T=35
Z=aJ+7
elseif T<=0 then
T=16
aA=aA%256+1
Z=aJ+a[13][1][aA]%3
end
aZ=w
end
for b=#L,1,-1 do
z=L[b]_=a[18][z[1]]if ab(1)then
y=_[z[2]]z[2]=z[2]+4
else
y=_[z[2]+2]end
if y and y>0 then
ak[#ak+1]={y,1}end
if z[2]>=#_ then
aa(L,b)end
end
for b=1,32 do
aN(b,0)end
for b=#ak,1,-1 do
y=ak[b]aN(b+3,aV(aq((y[1]+12)//2),1,60))y[2]=y[2]+1
if y[2]>bi then
aa(ak,b)end
end
end
end
function onDraw()s=screen
local S,m,A,ad=s.drawRectF,s.setColor,s.drawLine,s.drawText
aE=aE+1
if a[21]and not W then
d=a[25][1]o,i=d[1],d[2]h,q=B-o/2,80-i/2
for f=0,o-1 do
u=h+f
for R=0,i-1 do
j=d[5+R+f*i]if j~=0 then
e=a[20][j]m(e[1],e[2],e[3])A(u,q+R,u,q+R+1)end
end
end
end
if not bc then
for b=1,#v do
d=v[b][2][1]aK=d>0 and bo or 1
d=a[17][abs(d)][1]d=a[23][d]o,i,aC=d[1],d[2],d[3]*.7
b_=aC*ba
h,q=B-(d[4]+160)*.7,C-(d[5]+148)*.7*ba
for f=0,o-1 do
u=h+f*aC
for R=0,i-1 do
j=d[7+R+f*i]if j~=0 then
e=a[20][j]m(e[1]*aK,e[2]*aK,e[3]*aK)S(u,q+R*b_,aC,b_)end
end
end
end
end
if W then
if bc then
m(0,0,0)S(0,0,al,C)for b=1,#a[2]do
_=a[2][b]if _[8]then
J=as(aS(aY(sub(a[4][_[1]],D[1]),aO)),{B,an})F=as(aS(aY(sub(a[4][_[2]],D[1]),aO)),{B,an})if _[8]==1 then
m(0,50,0)elseif _[3]&4>0 then
m(50,50,50)else
m(t,t,t)end
A(J[1],J[2],F[1],F[2])end
end
m(t,t,t)_=a[19][10]for b=1,#_,4 do
ar=sin(D[3]-90)au=cos(D[3]-90)J={_[b]*au+_[b+1]*ar,_[b+1]*au-_[b]*ar}F={_[b+2]*au+_[b+3]*ar,_[b+3]*au-_[b+2]*ar}J=as(J,{B,an})F=as(F,{B,an})A(J[1],J[2],F[1],F[2])end
end
m(t,P>0 and 0 or t,0,P+M)S(0,0,al,C)m(30,30,30)S(0,C,al,32)m(5,5,5)S(B-16,C,32,32)d=a[23][a[19][3][1]+(Z)*a[19][3][3]]o,i=d[1],d[2]h=B-o/2
for b=0,o-1 do
for g=0,i-1 do
j=d[7+g+b*i]if j~=0 then
e=a[20][j]m(e[1],e[2],e[3])A(h+b,C+1+g,h+b,C+2+g)end
end
end
for b=1,3 do
if a[12][1][13+b]>0 then
h,q=221,125+b*8
d=a[23][a[19][3][4]+a[19][5][b]*a[19][3][3]]o,i=d[1],d[2]for g=0,o-1 do
for f=0,i-1 do
j=d[7+f+g*i]if j~=0 then
e=a[20][j]m(e[1],e[2],e[3])A(h+g,q+f,h+g,q+f+1)end
end
end
end
end
if am>0 then
aT=a[13][bf]h=0
q=0
for bg=1,#aT do
_=aT[bg]if _>0 then
d=a[23][_]o,i=d[1],d[2]u=h-d[4]V=q-d[5]for b=0,o-1 do
for g=0,i-1 do
j=d[7+g+b*i]if j~=0 then
e=a[20][j]m(e[1],e[2],e[3])A(u+b,V+g,u+b,V+g+1)end
end
end
h=h+o
else
h=h+4
end
end
end
ap(124,E,Y(w).."%",16)ap(218,E,Y(ay).."%",16)n(124-28-15,ai,"HEALTH")n(218-28-15,ai,"ARMOUR")n(2,E,"ROM:")n(26,E,ah)n(2,138,"TPS:")n(26,138,a[12][1][17])n(2,145,"DIF:")n(26,145,Y(ax(aI-3000,3)))n(2,ai,"LOD:")n(26,ai,Y(aB))n(232,E,"BULL")n(232,138,"SHEL")n(232,145,"ROKT")n(232,ai,"CELL")for b=1,4 do
c=124+b*7
ap(265,c,aq(a[12][1][b]),15)ap(285,c,aq(a[19][17][b]),15)n(268,c,"/")end
else
ad(1,E,"ROM:")ad(26,E,ah)end
end
