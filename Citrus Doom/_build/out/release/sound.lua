
R=152
H=131
u=255
J=180
q=math
M=q.max
ar=q.min
abs=q.abs
Q=q.floor
sqrt=q.sqrt
l=input.getNumber
as=input.getBool
aX=output.setNumber
pi=q.pi
aC=false
bb=true
an=table.remove
aa=string
function aq(c,k)return{(c[1]+k[1]),(c[2]+k[2])}end
function bk(c,k)return c[1]*k[2]-c[2]*k[1]end
function sub(c,k)return{(c[1]-k[1]),(c[2]-k[2])}end
function aW(c,k)return{c[1]*k,c[2]*k}end
function bq(c)return((c+J)%360)-J end
function sin(c)return q.sin(c/J*pi)end
function cos(c)return q.cos(c/J*pi)end
function tan(c)return q.tan(c/J*pi)end
function bt(c)return q.atan(c)*J/pi end
function bo(c)return q.atan(c[2],c[1])*J/pi end
function bc(c,k,bj)return ar(M(k,c),bj)end
function ai(c)return Q(c+.5)end
function bs(c,k)return sqrt(((c[1]-k[1])^2)+((c[2]-k[2])^2))end
function aR(c)return{c[1],-c[2]}end
function br(c)c=c-1
c=c|(c>>1)c=c|(c>>2)c=c|(c>>4)return c+1
end
a={}P=1
Z=3
ab=aC
A={{0,0},0,0}ak=288
B=ak//2
z=128
am=z//2
aN=1.2
aS={1,1}aL=1
T=1
Z=3
aI=400
w=100
ba=100
az=0
ao=0
O=0
L=0
ay=3002
X={}aY=32768
t={}b_=.05
E={}aE=3
S=0
aJ=0
aj=0
D=1
aG=0
ac=0
af=bb
function aQ(b,c)if b<aY then
C=a[7][b]return aQ(C[0<bk({C[3],C[4]},sub(c,C))and 8 or 7],c)else
return b-aY
end
end
function aP(c)C=a[5][a[6][c][2]]return a[8][a[3][a[2][C[4]][C[5]+6]][6]]end
function al(h,r,au,ah)local y,n=v.drawLine,v.setColor
au=au..""
ah=a[19][ah]for b=#au,1,-1 do
_=ah[aa.byte(aa.sub(au,b,b))]h=h-ah[1]if _>0 then
d=a[23][_]o,i=d[1],d[2]s=h-d[4]+1
V=r-d[5]for f=0,o-1 do
for g=0,i-1 do
j=d[7+g+f*i]if j~=0 then
e=a[20][j]n(e[1],e[2],e[3])y(s+f,V+g,s+f,V+g+1)end
end
end
end
end
end
function m(aZ,aO,Y)v.setColor(13,0,0)v.drawText(aZ+1,aO+1,Y)v.setColor(59,59,59)v.drawText(aZ,aO,Y)end
function onTick()aG=0
for f=1,3 do
if as(9)and(not ab)or not a[21]then
aD=property.getText(P)b=1
p=""
_=aa.sub(aD,b,b)while _~=""do
I=aa.byte(_)if I>64 then
p=(p..I-65)+0
if D==1 then
aM=p
a[p]=a[p]or{}elseif D==2 then
bm=p
U=0
elseif D==3 then
aA=p
else
if U==0 then
U=bm
aA=aA-1
aK={}a[aM][#a[aM]+1]=aK
end
aK[#aK+1]=p
U=U-1
D=M(U,aA)>0 and D-1 or 0
end
D=D+1
p=""
else
p=p.._
end
b=b+1
_=aa.sub(aD,b,b)end
P=P+1
ab=aD==""
end
end
if ab then
if l(9)>0 then
af=bb
Z=l(9)end
aJ=aJ+1
a[12][1][aJ%#a[12][1]+1]=ai(l(10))if w>0 and not af then
K={}X[#X+1]=K
ad=5
_=l(ad)while _~=0 do
x={}K[#K+1]=x
for b=0,8 do
x[b+1]=l(ad+b)end
ad=ad+9
_=l(ad)end
end
if as(1)then
if af then
for b=1,10 do
a[b]=a[b+10*Z]end
Z=Z+1
af=aC
for b=#a[1],1,-1 do
_=a[1][b]_=_[5]&(ay-3000)>0 or an(a[1],b)end
for b=1,#a[8]do
a[8][b][8]={}end
for b=1,#a[6]do
_=aP(b)_[8][#_[8]+1]=b
end
end
ao=ao-1
if w>0 then
if ae~=l(1)and l(1)>0 then
t={}_={}_[1]=a[29][l(1)]_[2]=a[16][_[1][3]]bp=_[2][1]_[3]=0
t[1]=_
end
ae=l(1)aB=as(3)if aB and ae==5 then
if ac<=0 then
ac=7
else
aB=false
end
end
ac=ac-1
if aB then
_=t[1]_[2]=a[16][_[1][4]]_[3]=-1
E[#E+1]={1,1}end
end
for b=#t,1,-1 do
_=t[b]if _[3]==0 then
if _[2][3]==4 then
if ae==5 and ac<5 then
aV=1
else
aV=0
end
t[#t+1]={_[1],a[16][_[1][5]+aV],2}end
end
_[3]=_[3]+1
if _[3]>=_[2][2]then
if _[2][4]>2 then
_[2]=a[16][_[2][4]]_[3]=0
else
an(t,b)end
end
end
for b=1,32 do
aX(b,0)end
for b=#E,1,-1 do
ag=E[b]_=a[18][ag[1]]for f=0,aE-1 do
ax=_[(ag[2]+f)*2-1]if ax and ax>0 then
aX(2+(b-1)*aE+f,bc(ai((ax+12)//2),1,60))end
end
ag[2]=ag[2]+2
if ag[2]>=aE+#_ then
an(E,b)end
end
if af then
O=50
end
L=M(L-4,0)L=bc(L+(w-l(3)+az-l(4))*3,0,u)O=M(O-1.5,0)w=l(3)az=l(4)if l(2)>0 then
_=a[2][l(2)]if _ then
if _[4]>3004 and _[4]<3008 then
aI=M(aI+3*(_[4]-3006),1)elseif _[4]>3000 then
ay=_[4]end
end
end
for b=1,#X do
K=X[b]for f=1,#K do
x=K[f]_=x[1]if _>(2^15)then
_=a[8][_-(2^15)]for g=1,6 do
_[g]=x[g+1]end
elseif _<0 then
I=a[1][-_]if I~=nil then
x=I[6]if a[16][x][5]>0 then
O=M(O,15)ao=35
bg=a[16][x][5]E[#E+1]={a[19][11][1],1}if I[4]then
be=a[15][I[4]]if be[29]==a[19][13][1]then
for g=1,#a[2]do
a[2][g][8]=true
end
end
end
end
end
while-_>#a[1]do
a[1][#a[1]+1]=aC
end
an(a[1],-_)else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for g=1,8 do
_[a[19][1][g]]=x[g+1]end
_[15]=0
end
end
end
X={}_=a[1][1]A[1]={_[1],_[2]}A[3]=_[3]bf=aQ(#a[7],A[1])ap=aP(bf)A[2]=ap[1]+41
bi=ar(ap[5]/u,1)^1.3
for b=1,#ap[8]do
_=a[6][ap[8][b]]for f=_[2],_[1]+_[2]-1 do
bn=a[5][f]bl=a[2][bn[4]]bl[8]=true
end
end
bd=as(2)S=S-1
aj=aj-1
if not aS[ae]then
aS[ae]=1
aj=70
end
aF=(4-ar(w//20,4))*8
if w<=0 then
T=41
elseif aj>0 then
T=aF+6
elseif w<ba then
S=35
T=aF+7
elseif S<=0 then
S=16
aL=aL%256+1
T=aF+a[13][1][aL]%3
end
ba=w
end
end
end
function onDraw()v=screen
local W,n,y,Y=v.drawRectF,v.setColor,v.drawLine,v.drawText
aG=aG+1
if a[21]and not ab then
d=a[25][1]o,i=d[1],d[2]h,r=B-o/2,80-i/2
for g=0,o-1 do
s=h+g
for N=0,i-1 do
j=d[5+N+g*i]if j~=0 then
e=a[20][j]n(e[1],e[2],e[3])y(s,r+N,s,r+N+1)end
end
end
end
if not bd then
for b=1,#t do
d=t[b][2][1]aH=d>0 and bi or 1
d=a[17][abs(d)][1]d=a[23][d]o,i,aw=d[1],d[2],d[3]*.7
aU=aw*aN
h,r=B-(d[4]+160)*.7,z-(d[5]+148)*.7*aN
for g=0,o-1 do
s=h+g*aw
for N=0,i-1 do
j=d[7+N+g*i]if j~=0 then
e=a[20][j]n(e[1]*aH,e[2]*aH,e[3]*aH)W(s,r+N*aU,aw,aU)end
end
end
end
end
if ab then
if bd then
n(0,0,0)W(0,0,ak,z)for b=1,#a[2]do
_=a[2][b]if _[8]then
G=aq(aR(aW(sub(a[4][_[1]],A[1]),b_)),{B,am})F=aq(aR(aW(sub(a[4][_[2]],A[1]),b_)),{B,am})if _[3]&4>0 then
n(50,50,50)else
n(u,u,u)end
y(G[1],G[2],F[1],F[2])end
end
n(u,u,u)_=a[19][10]for b=1,#_,4 do
at=sin(A[3]-90)av=cos(A[3]-90)G={_[b]*av+_[b+1]*at,_[b+1]*av-_[b]*at}F={_[b+2]*av+_[b+3]*at,_[b+3]*av-_[b+2]*at}G=aq(G,{B,am})F=aq(F,{B,am})y(G[1],G[2],F[1],F[2])end
end
n(u,L>0 and 0 or u,0,L+O)W(0,0,ak,z)n(30,30,30)W(0,z,ak,32)n(5,5,5)W(B-16,z,32,32)d=a[23][a[19][3][1]+(T)*a[19][3][3]]o,i=d[1],d[2]h=B-o/2
for b=0,o-1 do
for f=0,i-1 do
j=d[7+f+b*i]if j~=0 then
e=a[20][j]n(e[1],e[2],e[3])y(h+b,z+1+f,h+b,z+2+f)end
end
end
for b=1,3 do
if a[12][1][13+b]>0 then
h,r=221,125+b*8
d=a[23][a[19][3][4]+a[19][5][b]*a[19][3][3]]o,i=d[1],d[2]for f=0,o-1 do
for g=0,i-1 do
j=d[7+g+f*i]if j~=0 then
e=a[20][j]n(e[1],e[2],e[3])y(h+f,r+g,h+f,r+g+1)end
end
end
end
end
if ao>0 then
aT=a[13][bg]h=0
r=0
for bh=1,#aT do
_=aT[bh]if _>0 then
d=a[23][_]o,i=d[1],d[2]s=h-d[4]V=r-d[5]for b=0,o-1 do
for f=0,i-1 do
j=d[7+f+b*i]if j~=0 then
e=a[20][j]n(e[1],e[2],e[3])y(s+b,V+f,s+b,V+f+1)end
end
end
h=h+o
else
h=h+4
end
end
end
al(124,H,Q(w).."%",16)al(218,H,Q(az).."%",16)m(124-28-15,R,"HEALTH")m(218-28-15,R,"ARMOUR")m(2,H,"ROM:")m(26,H,P)m(2,138,"TPS:")m(26,138,a[12][1][17])m(2,145,"DIF:")m(26,145,Q(ar(ay-3000,3)))m(2,R,"LOD:")m(26,R,Q(aI))m(232,H,"BULL")m(232,138,"SHEL")m(232,145,"ROKT")m(232,R,"CELL")for b=1,4 do
c=124+b*7
al(265,c,ai(a[12][1][b]),15)al(285,c,ai(a[19][17][b]),15)m(268,c,"/")end
else
Y(1,H,"ROM:")Y(26,H,P)end
end
