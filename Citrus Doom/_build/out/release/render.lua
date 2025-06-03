cV=""

Q=180
ci=screen
aU=ipairs
cb=table
bF=input
w=math
D=w.max
v=w.min
A=w.abs
ac=w.floor
ceil=w.ceil
sqrt=w.sqrt
F=bF.getNumber
bl=bF.getBool
pi=w.pi
O=false
S=true
bA=string
function bx(b,m)return b[1]*m[2]-b[2]*m[1]end
function sub(b,m)return{(b[1]-m[1]),(b[2]-m[2])}end
function bj(b)return((b+Q)%360)-Q end
function sin(b)return w.sin(b/Q*pi)end
function cos(b)return w.cos(b/Q*pi)end
function tan(b)return w.tan(b/Q*pi)end
function cS(b)return w.atan(b)*Q/pi end
function aH(b)return w.atan(b[2],b[1])*Q/pi end
function br(b,m,_)return v(D(m,b),_)end
function aB(b)return ac(b+.5)end
function aM(b,m)return sqrt(((b[1]-m[1])^2)+((b[2]-m[2])^2))end
function bU(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
function aL(b)p=v(b/255+cf,1)^2.2 end
c={}bn=1
av=3
b_=O
ar=S
f={{0,0},0,0}M=288
z=M//2
ag=128
s=ag//2
aT={}aI=400
bV=200
bW=100
cU=0
aE={}aX=32768
bP=3002
bh=0
ba=0
an=0
bu=1.2
K=52
N=tan(K)aP=s*bu*M/ag/N
X=1
bS={}for a=-z,z do bS[a]=aH({1,a/z*N})end
function by(a)if a<aX then
local u,bp=c[7][a]bp=0<bx({u[3],u[4]},sub(f[1],u))and 8 or 7
by(u[bp])by(u[15-bp])else
am[#am+1]=a-aX
end
end
function aJ(a,b)if a<aX then
u=c[7][a]return aJ(u[0<bx({u[3],u[4]},sub(b,u))and 8 or 7],b)else
return a-aX
end
end
function bo(b)u=c[5][c[6][b][2]]return aq[c[3][c[2][u[4]][u[5]+6]][6]]end
function onTick()bc=0
for o=1,3 do
if bl(9)and(not b_)or not c[21]then
be=property.getText(bn)a=1
B=cV
_=bA.sub(be,a,a)while _~=cVdo
cs=bA.byte(_)if cs>64 then
B=(B..cs-65)+0
if X==1 then
bL=B
c[B]=c[B]or{}elseif X==2 then
cB=B
ax=0
elseif X==3 then
bs=B
else
if ax==0 then
ax=cB
bs=bs-1
bz={}c[bL][#c[bL]+1]=bz
end
bz[#bz+1]=B
ax=ax-1
X=D(ax,bs)>0 and X-1 or 0
end
X=X+1
B=cV
else
B=B.._
end
a=a+1
_=bA.sub(be,a,a)end
bn=bn+1
b_=be==cV
end
end
if b_ then
if F(9)>0 then
ar=S
av=F(9)end
if bW>0 and not ar then
ah={}aE[#aE+1]=ah
al=5
_=F(al)while _~=0 do
aj={}ah[#ah+1]=aj
for a=0,8 do
aj[a+1]=F(al+a)end
al=al+9
_=F(al)end
end
if bl(1)then
cl=0
bv=F(1)bW=F(3)an=an+1
ca=an//10
if ar then
for a=1,10 do
c[a]=c[a+10*av]end
n=c[1]bO={n[1][1],n[1][2]}aq=c[8]av=av+1
end
if F(2)>0 then
_=c[2][F(2)]if _ then
b=_[4]if b>0 then
if b==3008 then
co=_[5]==1
elseif b>3004 then
aI=D(aI+3*(_[4]-3006),1)bV=aI/2
elseif b>3000 then
bP=_[4]end
cl=F(2)if b<3000 and c[9][_[5]][7]==0 then
_[8]=1
end
end
end
end
if bl(3)and bv~=1 and bv~=3 then
cf=.1
ba=bv==5 and 5 or 3
else
ba=ba-1
if ba<1 then
cf=0
end
end
for a=1,#aE do
ah=aE[a]for o=1,#ah do
aj=ah[o]_=aj[1]if _>(2^15)then
_=aq[_-(2^15)]for h=1,6 do
_[h]=aj[h+1]end
elseif _<0 then
while-_>#n do
n[#n+1]=O
end
cb.remove(n,-_)else
if not n[_]then
n[_]={}end
_=n[_]for h=1,8 do
_[c[19][1][h]]=aj[h+1]end
_[15]=0
_[7]=aJ(#c[7],_)_[8]=bo(_[7])end
end
end
aE={}for a=1,#c[6]do
aT[a]={}end
for a=1,#n do
_=n[a]if _ then
if ar then
_[7]=aJ(#c[7],_)_[8]=bo(_[7])_[9]=_[8][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
end
bg=0
for o,d in aU({1,2,9})do
_[d]=_[d]+_[d+10]bg=bg+_[d+10]end
if bg~=0 then
_[7]=aJ(#c[7],_)_[8]=bo(_[7])end
_[15]=_[15]+1
_[20]=aM(_,f[1])L=c[16][_[6]]if L~=nil then
if L[5]>0 then
_[9]=_[8][1]end
if _[15]>=L[2]and L[2]~=-1 then
_[6]=L[4]_[15]=0
end
end
aT[_[7]][#aT[_[7]]+1]=a
end
end
ar=O
_=n[1]f[1]={_[1],_[2]}f[3]=_[3]cL=v(aM(f[1],bO)^2/4,16)bO={_[1],_[2]}f[2]=_[9]+41+cL*sin(an*20)/4
am={}by(#c[7])aW={}q={}aO={}aR={}U={}Z={}aN={}bw=M
for a=0,M-1 do
aW[a],U[a],Z[a]=#c[6]+2,s+1,-s
end
a=1
while a<=#am and bw>0 do
_=c[6][am[a]]aO[a]={}aR[a]={}q[a]={}aN[a]=aT[am[a]]cb.sort(aN[a],function(b,m)return n[b][20]>n[m][20]end)for o=_[2],_[1]+_[2]-1 do
ab=c[5][o]C=c[2][ab[4]]bM,bG=c[4][ab[1]],c[4][ab[2]]aY,bE=sub(bM,f[1]),sub(bG,f[1])bR=aH(aY)J,aK=bj(bR-f[3]),bj(aH(bE)-f[3])if A(J)<90 or A(aK)<90 then
ai,ak=br(J,-K,K),br(aK,-K,K)if A(J)>=90 or A(aK)>=90 then
bC=bx(aY,bE)if A(J)>=90 then
if bC>0 then ai=-K else ai=K end
else
if bC<0 then ak=-K else ak=K end
end
end
k,l=aB(tan(ai)/N*z),aB(tan(ak)/N*z)if k~=l then
r,aD=aM(f[1],bM),aM(f[1],bG)aQ=ab[3]+90
cj=aQ-bR
cu=r*sin(cj)aF=(r*cos(cj))if J~=ai then
r=aF/cos(aQ-(ai+f[3]))end
if aK~=ak then
aD=aF/cos(aQ-(ak+f[3]))end
r,aD=r*cos(ai),aD*cos(ak)h=ab[5]+6
cN=(k>l)if cN and C[h]~=0 then
au=C[3]&4>0
if au then
V,aa=aq[c[3][C[6]][6]],aq[c[3][C[7]][6]]end
af=c[3][C[h]]cD={af[3],af[4],af[5]}G,bQ,bY=aq[af[6]]for j,d in aU(cD)do
aC=d>0
aA=S
if(aC or(j==3 and not(bQ and bY)))and(j==3 or au)then
bZ=O
bN=0
if j<3 then
bZ=j==1 and D(V[4],aa[4])==0
y,x=V[3-j],aa[3-j]aA=(y<x)~=(j==2)~=(h==6)and y~=x and V~=aa
y,x=v(y,x),D(y,x)if aA then
if j==1 then
bQ=S
else
bY=S
bN=C[3]&16>0 and D(V[2],aa[2])-x or 0
end
end
else
if au then
y,x=D(V[1],aa[1]),v(V[2],aa[2])aA=V~=aa
else
y,x=G[1],G[2]end
end
y,x=y-f[2],x-f[2]cn,bK=y*aP,x*aP
if(aA or aC)and not bZ then
bq=ab[6]-af[1]if C[4]==48 then
bq=bq-an
end
cE,cx=cn/r,bK/r
cK,cM=cn/aD,bK/aD
bI=0
ap=O
if aC then
_=c[21][d][4]if(ab[4]==cl or bP==C[4]or C[8])and _>0 then
d=_
end
ay=c[21][d][3]t=1
if(j==3 and C[3]&16>0)or(j==1 and C[3]&8==0)then
t=-1
end
end
for h=k,l,-1 do
cH=bS[h]bi=(aQ-f[3])-cH
g=z-h
cg=O
if g>=0 and g<=M-1 then
if a<aW[g]then
aV=(h-k)/(l-k)I,H=(cE*(1-aV)+cK*aV),(cx*(1-aV)+cM*aV)if A(H+I)-(H-I)<ag then
if aC then
if I~=H then
cg=S
bH=aF*tan(bi)az=bU(v(((A(bH)+A(aF))//bV)+1,16))bD=ac((D(bH-cu,0)-bq)/(ay*az))bX=bD*az
ct={g,s-I,s-H,d,bD,x-y,G[5],af[2]+bN,S,ay*az,az,t,not ap,j==3 and au}if bX>bI or(not ap)or h==l then
bI=bX-1+az
ap=S
q[a][#q[a]+1]=ct
end
cP=ct
end
end
if aA then
if j~=2 then
if H<U[g]then
aR[a][#aR[a]+1]={g,D(H,Z[g]),U[g],G}end
if j==3 then W=H else W=I end
if U[g]>W then U[g]=W end
end
if j~=1 then
if I>Z[g]then
aO[a][#aO[a]+1]={g,Z[g],v(I,U[g]),G}end
if j==3 then W=I else W=H end
if Z[g]<W then Z[g]=W end
end
if(U[g]<=Z[g])or(j==3 and(not au)and aC)then
aW[g]=a
bw=bw-1
end
end
end
end
end
if(not cg)and ap then
ap=O
q[a][#q[a]+1]=cP
q[a][#q[a]][9]=O
end
end
if#q[a]>0 then
q[a][#q[a]][9]=O
end
end
end
end
end
end
end
end
a=a+1
end
end
end
end
function onDraw()aS=ci
local cr,bm,ad,cT=aS.drawTriangleF,aS.drawRectF,aS.setColor,aS.drawText
cJ={aO,aR}if b_ then
e=c[24][c[19][8][av-3]]Y,as=e[1],e[2]E=M/ceil(Y*N)bT=E*1
for a=0,ceil(Y*N),1 do
k=(Y/2-a-1+f[3]/90*Y)%Y
l=(k%1-1)*E
k=ac(k)*as
for o=0,as-1,1 do
R=e[5+o+k]i=c[20][R]ad(i[1],i[2],i[3])bm(a*E+l,o*E,bT,bT)end
end
for a=#q,1,-1 do
for o=1,#q[a]do
d=q[a][o]if d[9]or d[13]then
if d[9]then
P=q[a][o+1]else
P=d
end
e=c[21][d[4]]e=c[21][d[4]+(ca%e[5])*c[19][3][2]+c[19][12][d[11]]]t=d[12]T=v(t,0)g=d[1]l=P[1]cq=d[2-T]cA=P[2-T]h=d[3+T]bd=P[3+T]if not P[9]then l=l+1 end
aL(d[7])cw=t*(d[2]-d[3])*e[3]/d[6]cR=t*(P[2]-P[3])*e[3]/P[6]cd=t>0 and v or D
bk=0
while h*t<cq*t and(bk<e[2]or not d[14])do
cp=cd(h+cw,cq)bb=cd(bd+cR,cA)R=e[7+((T+d[8]//e[3])%e[2])+e[2]*((d[5])%e[1])]i=c[20][R]if i then
ad(i[1]*p,i[2]*p,i[3]*p)cr(g,h,g,cp,l,bb)cr(g,h,l,bd,l,bb)end
h=cp
bd=bb
T=T+t
bk=bk+1
end
end
end
for b=1,2 do
_=cJ[b]bJ={}aw,ao,bt=ag,-ag
for o,d in aU(_[a])do
aw=v(aw,d[2])ao=D(ao,d[3])bt=d
e=c[22][d[4][b+2]]if e and not co then
aL(d[4][5])i=c[20][e[5]]ad(i[1]*p,i[2]*p,i[3]*p)ci.drawLine(d[1],s-d[2],d[1],ac(s-d[3]-1))end
end
if bt and co then
G=bt[4]cQ=(G[b]-f[2])bf=cos(f[3])bB=sin(f[3])for at=ac(aw+s),ceil(ao+s)do
ae=aP*cQ/(s-at)c_=bf*ae-f[1][1]ce=bB*ae-f[1][2]cm=-bB*ae+c_
ch=bf*ae+ce
cv=bB*ae+c_
cF=-bf*ae+ce
cz=(cv-cm)/M
cO=(cF-ch)/M
bJ[at]={cz,cO,cm,ch}end
for o,d in aU(_[a])do
if G[b+2]~=0 then
g=d[1]aL(G[5])m=G[b+2]e=c[22][m]e=c[22][m+(ca%e[4])]ck=z-(z-g)*N
aw,ao=ac(d[2]+s),ceil(d[3]+s)ay=e[3]for at=aw,ao do
aZ=bJ[at]cC=(aZ[3]+aZ[1]*ck)//ay
cy=(aZ[4]+aZ[2]*ck)//ay
R=6+(cy%e[1])+e[1]*(cC%e[2])i=c[20][e[R]]if i then
ad(i[1]*p,i[2]*p,i[3]*p)bm(g,-at+ag,1,1)end
end
end
end
end
end
for o=1,#aN[a]do
_=n[aN[a][o]]if _[6]~=0 then
aY=sub(_,f[1])r=_[20]if r>1 then
J=bj(aH(aY)-f[3])r=r*cos(J)if A(J)<90 then
k=z-aB(tan(J)/N*z)bi=aB((Q+J+f[3]-_[3]+bc*4)/360*8)L=c[16][_[6]][1]if L~=0 and _[6]~=1 then
e=c[17][A(L)][bi%8+1]t=e<0 and-1 or 1
e=A(e)if e>0 then
e=c[23][e+c[19][12][v(bU(r//aI+1),8)]]Y,as=e[1],e[2]E=z/(N*r)aG=E*bu
I=s+(f[2]-_[9])/r*aP
H=I-e[5]*aG
l=k-t*e[4]*E
E,aG=E*e[3],aG*e[3]aL(_[8][5])p=L>0 and p or 1
cc=E
cI=cc*bu
cG=_[4]and c[15][_[4]][23]&8>0
for h=0,Y-1 do
k=l+h*E*t
if a<=aW[br(aB(k),0,M-1)]then
for j=0,as-1 do
R=e[7+j+h*as]if R~=0 then
if cG then
bh=bh%50+1
ad(0,0,0,v(75*c[13][2][bh],255))else
i=c[20][R]ad(i[1]*p,i[2]*p,i[3]*p)end
bm(k,H+j*aG,cc,cI)end
end
end
end
end
end
end
end
end
end
end
end
bc=bc+1
end
