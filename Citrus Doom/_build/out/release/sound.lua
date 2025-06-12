
T=152
L=131
v=255
E=180
q=math
P=q.max
aw=q.min
abs=q.abs
ah=q.floor
sqrt=q.sqrt
l=input.getNumber
ai=input.getBool
aN=output.setNumber
pi=q.pi
aL=false
aQ=true
ac=table.remove
aj=string
function av(c,k)return{(c[1]+k[1]),(c[2]+k[2])}end
function bh(c,k)return c[1]*k[2]-c[2]*k[1]end
function sub(c,k)return{(c[1]-k[1]),(c[2]-k[2])}end
function bb(c,k)return{c[1]*k,c[2]*k}end
function bp(c)return((c+E)%360)-E end
function sin(c)return q.sin(c/E*pi)end
function cos(c)return q.cos(c/E*pi)end
function tan(c)return q.tan(c/E*pi)end
function bq(c)return q.atan(c)*E/pi end
function br(c)return q.atan(c[2],c[1])*E/pi end
function aR(c,k,bl)return aw(P(k,c),bl)end
function an(c)return ah(c+.5)end
function bt(c,k)return sqrt(((c[1]-k[1])^2)+((c[2]-k[2])^2))end
function aM(c)return{c[1],-c[2]}end
function bu(c)c=c-1
c=c|(c>>1)c=c|(c>>2)c=c|(c>>4)return c+1
end
a={}S=1
aa=3
X=aL
D={{0,0},0,0}at=288
C=at//2
B=128
am=B//2
bd=1.2
aX={1,1}ay=1
Y=1
aa=3
aH=400
y=100
ba=100
aK=0
aq=0
M=0
O=0
aI=3002
aZ=32768
t={}aW=.05
H={}V={}bj=2
W=0
aD=0
ao=0
J=1
az=0
ag=0
ab=aQ
function bc(b,c)if b<aZ then
K=a[7][b]return bc(K[0<bh({K[3],K[4]},sub(c,K))and 8 or 7],c)else
return b-aZ
end
end
function aP(c)K=a[5][a[6][c][2]]return a[8][a[3][a[2][K[4]][K[5]+6]][6]]end
function ap(h,r,al,ax)local A,n=s.drawLine,s.setColor
al=al..""
ax=a[19][ax]for b=#al,1,-1 do
_=ax[aj.byte(aj.sub(al,b,b))]h=h-ax[1]if _>0 then
d=a[23][_]o,i=d[1],d[2]u=h-d[4]+1
U=r-d[5]for g=0,o-1 do
for f=0,i-1 do
j=d[7+f+g*i]if j~=0 then
e=a[20][j]n(e[1],e[2],e[3])A(u+g,U+f,u+g,U+f+1)end
end
end
end
end
end
function m(aU,aO,ad)s.setColor(13,0,0)s.drawText(aU+1,aO+1,ad)s.setColor(59,59,59)s.drawText(aU,aO,ad)end
function onTick()az=0
for g=1,3 do
if ai(9)and(not X)or not a[21]then
aF=property.getText(S)b=1
p=""
_=aj.sub(aF,b,b)while _~=""do
I=aj.byte(_)if I>64 then
p=(p..I-65)+0
if J==1 then
aY=p
a[p]=a[p]or{}elseif J==2 then
bm=p
af=0
elseif J==3 then
aJ=p
else
if af==0 then
af=bm
aJ=aJ-1
aA={}a[aY][#a[aY]+1]=aA
end
aA[#aA+1]=p
af=af-1
J=P(af,aJ)>0 and J-1 or 0
end
J=J+1
p=""
else
p=p.._
end
b=b+1
_=aj.sub(aF,b,b)end
S=S+1
X=aF==""
end
end
if X then
if l(9)>0 then
ab=aQ
aa=l(9)end
aD=aD+1
a[12][1][aD%#a[12][1]+1]=an(l(10))if y>0 and not ab then
Q={}ak[#ak+1]=Q
ae=5
_=l(ae)while _~=0 do
z={}Q[#Q+1]=z
for b=0,8 do
z[b+1]=l(ae+b)end
ae=ae+9
_=l(ae)end
end
if ai(1)then
if ab then
for b=1,10 do
a[b]=a[b+10*aa]end
aa=aa+1
ab=aL
for b=#a[1],1,-1 do
_=a[1][b]_=_[5]&(aI-3000)>0 or ac(a[1],b)end
for b=1,#a[8]do
a[8][b][8]={}end
for b=1,#a[6]do
_=aP(b)_[8][#_[8]+1]=b
end
ak={}end
aq=aq-1
if y>0 then
if N~=l(1)and l(1)>0 then
t={}_={}_[1]=a[29][l(1)]_[2]=a[16][_[1][3]]bs=_[2][1]_[3]=0
t[1]=_
end
N=l(1)aC=ai(3)if aC and N==5 then
if ag<=0 then
ag=7
else
aC=false
end
end
ag=ag-1
if aC then
_=t[1]_[2]=a[16][_[1][4]]_[3]=-1
w=a[19][6][N]if w>0 then
H[#H+1]={w,1}end
end
end
for b=#t,1,-1 do
_=t[b]if _[3]==0 then
if _[2][3]==4 then
if N==5 and ag<5 then
aS=1
else
aS=0
end
t[#t+1]={_[1],a[16][_[1][5]+aS],2}end
end
_[3]=_[3]+1
if _[3]>=_[2][2]then
if _[2][4]>2 then
_[2]=a[16][_[2][4]]_[3]=0
else
ac(t,b)end
end
end
if ab then
M=50
end
O=P(O-4,0)O=aR(O+(y-l(3)+aK-l(4))*3,0,v)M=P(M-1.5,0)y=l(3)aK=l(4)if l(2)>0 then
_=a[2][l(2)]if _ then
if _[4]>3004 and _[4]<3008 then
aH=P(aH+3*(_[4]-3006),1)elseif _[4]>3000 then
aI=_[4]end
end
end
for b=1,#ak do
Q=ak[b]for g=1,#Q do
z=Q[g]_=z[1]if _>(2^15)then
_=a[8][_-(2^15)]for f=1,6 do
_[f]=z[f+1]end
elseif _<0 then
I=a[1][-_]if I then
z=I[6]if a[16][z][5]>0 then
M=P(M,15)aq=35
bo=a[16][z][5]H[#H+1]={a[19][11][1],1}if I[4]then
be=a[15][I[4]]if be[29]==a[19][13][1]then
for f=1,#a[2]do
a[2][f][8]=a[2][f][8]or 1
end
end
end
end
end
while-_>#a[1]do
a[1][#a[1]+1]=aL
end
ac(a[1],-_)else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for f=1,8 do
_[a[19][1][f]]=z[f+1]end
_[15]=0
end
end
end
ak={}_=a[1][1]D[1]={_[1],_[2]}D[3]=_[3]bi=bc(#a[7],D[1])ar=aP(bi)D[2]=ar[1]+41
bg=aw(ar[5]/v,1)^1.3
for b=1,#ar[8]do
_=a[6][ar[8][b]]for g=_[2],_[1]+_[2]-1 do
bf=a[5][g]bk=a[2][bf[4]]bk[8]=2
end
end
aT=ai(2)W=W-1
ao=ao-1
if not aX[N]then
aX[N]=1
ao=70
end
aG=(4-aw(y//20,4))*8
if y<=0 then
Y=41
elseif ao>0 then
Y=aG+6
elseif y<ba then
W=35
Y=aG+7
elseif W<=0 then
W=16
ay=ay%256+1
Y=aG+a[13][1][ay]%3
end
ba=y
end
for b=#H,1,-1 do
w=H[b]_=a[18][w[1]]if ai(1)then
x=_[w[2]]w[2]=w[2]+4
else
x=_[w[2]+2]end
if x and x>0 then
V[#V+1]={x,1}end
if w[2]>=#_ then
ac(H,b)end
end
for b=1,32 do
aN(b,0)end
for b=#V,1,-1 do
x=V[b]aN(b+3,aR(an((x[1]+12)//2),1,60))x[2]=x[2]+1
if x[2]>bj then
ac(V,b)end
end
end
end
function onDraw()s=screen
local Z,n,A,ad=s.drawRectF,s.setColor,s.drawLine,s.drawText
az=az+1
if a[21]and not X then
d=a[25][1]o,i=d[1],d[2]h,r=C-o/2,80-i/2
for f=0,o-1 do
u=h+f
for R=0,i-1 do
j=d[5+R+f*i]if j~=0 then
e=a[20][j]n(e[1],e[2],e[3])A(u,r+R,u,r+R+1)end
end
end
end
if not aT then
for b=1,#t do
d=t[b][2][1]aB=d>0 and bg or 1
d=a[17][abs(d)][1]d=a[23][d]o,i,aE=d[1],d[2],d[3]*.7
b_=aE*bd
h,r=C-(d[4]+160)*.7,B-(d[5]+148)*.7*bd
for f=0,o-1 do
u=h+f*aE
for R=0,i-1 do
j=d[7+R+f*i]if j~=0 then
e=a[20][j]n(e[1]*aB,e[2]*aB,e[3]*aB)Z(u,r+R*b_,aE,b_)end
end
end
end
end
if X then
if aT then
n(0,0,0)Z(0,0,at,B)for b=1,#a[2]do
_=a[2][b]if _[8]then
F=av(aM(bb(sub(a[4][_[1]],D[1]),aW)),{C,am})G=av(aM(bb(sub(a[4][_[2]],D[1]),aW)),{C,am})if _[8]==1 then
n(0,50,0)elseif _[3]&4>0 then
n(50,50,50)else
n(v,v,v)end
A(F[1],F[2],G[1],G[2])end
end
n(v,v,v)_=a[19][10]for b=1,#_,4 do
au=sin(D[3]-90)as=cos(D[3]-90)F={_[b]*as+_[b+1]*au,_[b+1]*as-_[b]*au}G={_[b+2]*as+_[b+3]*au,_[b+3]*as-_[b+2]*au}F=av(F,{C,am})G=av(G,{C,am})A(F[1],F[2],G[1],G[2])end
end
n(v,O>0 and 0 or v,0,O+M)Z(0,0,at,B)n(30,30,30)Z(0,B,at,32)n(5,5,5)Z(C-16,B,32,32)d=a[23][a[19][3][1]+(Y)*a[19][3][3]]o,i=d[1],d[2]h=C-o/2
for b=0,o-1 do
for g=0,i-1 do
j=d[7+g+b*i]if j~=0 then
e=a[20][j]n(e[1],e[2],e[3])A(h+b,B+1+g,h+b,B+2+g)end
end
end
for b=1,3 do
if a[12][1][13+b]>0 then
h,r=221,125+b*8
d=a[23][a[19][3][4]+a[19][5][b]*a[19][3][3]]o,i=d[1],d[2]for g=0,o-1 do
for f=0,i-1 do
j=d[7+f+g*i]if j~=0 then
e=a[20][j]n(e[1],e[2],e[3])A(h+g,r+f,h+g,r+f+1)end
end
end
end
end
if aq>0 then
aV=a[13][bo]h=0
r=0
for bn=1,#aV do
_=aV[bn]if _>0 then
d=a[23][_]o,i=d[1],d[2]u=h-d[4]U=r-d[5]for b=0,o-1 do
for g=0,i-1 do
j=d[7+g+b*i]if j~=0 then
e=a[20][j]n(e[1],e[2],e[3])A(u+b,U+g,u+b,U+g+1)end
end
end
h=h+o
else
h=h+4
end
end
end
ap(124,L,ah(y).."%",16)ap(218,L,ah(aK).."%",16)m(124-28-15,T,"HEALTH")m(218-28-15,T,"ARMOUR")m(2,L,"ROM:")m(26,L,S)m(2,138,"TPS:")m(26,138,a[12][1][17])m(2,145,"DIF:")m(26,145,ah(aw(aI-3000,3)))m(2,T,"LOD:")m(26,T,ah(aH))m(232,L,"BULL")m(232,138,"SHEL")m(232,145,"ROKT")m(232,T,"CELL")for b=1,4 do
c=124+b*7
ap(265,c,an(a[12][1][b]),15)ap(285,c,an(a[19][17][b]),15)m(268,c,"/")end
else
ad(1,L,"ROM:")ad(26,L,S)end
end
