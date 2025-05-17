cS=""

Q=180
ch=screen
aJ=ipairs
bN=table
bH=input
x=math
C=x.max
v=x.min
B=x.abs
U=x.floor
ceil=x.ceil
sqrt=x.sqrt
I=bH.getNumber
bi=bH.getBool
pi=x.pi
N=false
R=true
by=string
function bh(b,m)return b[1]*m[2]-b[2]*m[1]end
function sub(b,m)return{(b[1]-m[1]),(b[2]-m[2])}end
function br(b)return((b+Q)%360)-Q end
function sin(b)return x.sin(b/Q*pi)end
function cos(b)return x.cos(b/Q*pi)end
function tan(b)return x.tan(b/Q*pi)end
function cP(b)return x.atan(b)*Q/pi end
function aO(b)return x.atan(b[2],b[1])*Q/pi end
function bv(b,m,_)return v(C(m,b),_)end
function aC(b)return U(b+.5)end
function bb(b,m)return sqrt(((b[1]-m[1])^2)+((b[2]-m[2])^2))end
function bs(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
function aZ(b)o=v(b/255+cm,1)^2.2 end
c={}bc=1
ay=3
aE=N
aB=R
g={{0,0},0,0}K=288
E=K//2
ae=128
t=ae//2
aH={}aX=400
cd=100
cR=0
as={}aQ=32768
bU=3002
bk=0
aU=0
aK=0
bz=1.2
O=52
M=tan(O)aN=t*bz*K/ae/M
aa=1
bW={}for a=-E,E do bW[a]=aO({1,a/E*M})end
function bB(a)if a<aQ then
local u,bn=c[7][a]bn=0<bh({u[3],u[4]},sub(g[1],u))and 8 or 7
bB(u[bn])bB(u[15-bn])else
ar[#ar+1]=a-aQ
end
end
function aF(a,b)if a<aQ then
u=c[7][a]return aF(u[0<bh({u[3],u[4]},sub(b,u))and 8 or 7],b)else
return a-aQ
end
end
function bq(b)u=c[5][c[6][b][2]]return c[3][c[2][u[4]][u[5]+6]][6]end
function onTick()bl=0
for k=1,3 do
if bi(9)and(not aE)or not c[21]then
bo=property.getText(bc)a=1
D=cS
_=by.sub(bo,a,a)while _~=cSdo
cq=by.byte(_)if cq>64then
D=(D..cq-65)+0
if aa==1then
bO=D
c[D]=c[D]or{}elseif aa==2then
cA=D
au=0
elseif aa==3then
be=D
else
if au==0then
au=cA
be=be-1
bC={}c[bO][#c[bO]+1]=bC
end
bC[#bC+1]=D
au=au-1
aa=C(au,be)>0 and aa-1 or 0
end
aa=aa+1
D=cS
else
D=D.._
end
a=a+1
_=by.sub(bo,a,a)end
bc=bc+1
aE=bo==cS
end
end
if aE then
if I(9)>0 then
aB=R
ay=I(9)end
if cd>0 and not aB then
aj={}as[#as+1]=aj
ap=5
_=I(ap)while _~=0 do
ak={}aj[#aj+1]=ak
for a=0,8 do
ak[a+1]=I(ap+a)end
ap=ap+9
_=I(ap)end
end
if bi(1)then
cj=0
bd=I(1)cd=I(3)aK=aK+1
cr=aK//10
if aB then
for a=1,10 do
c[a]=c[a+10*ay]end
s=c[1]am=c[8]ay=ay+1
end
if I(2)>0 then
_=c[2][I(2)]if _ then
b=_[4]if b>0 then
if b==3008 then
bM=_[5]==1
elseif b>3004 then
aX=C(aX+3*(_[4]-3006),1)elseif b>3000 then
bU=_[4]end
cj=I(2)if b<3000 and c[9][_[5]][7]==0then
_[8]=1
end
end
end
end
if bi(3)and bd~=1 and bd~=3 then
cm=.1
aU=bd==5 and 5 or 3
else
aU=aU-1
if aU<1then
cm=0
end
end
for a=1,#as do
aj=as[a]for k=1,#aj do
ak=aj[k]_=ak[1]if _>(2^15)then
_=am[_-(2^15)]for h=1,6 do
_[h]=ak[h+1]end
elseif _<0 then
while-_>#s do
s[#s+1]=N
end
bN.remove(s,-_)else
if not s[_]then
s[_]={}end
_=s[_]for h=1,8 do
_[c[19][1][h]]=ak[h+1]end
_[15]=0
_[7]=aF(#c[7],_)_[8]=bq(_[7])end
end
end
as={}for a=1,#c[6]do
aH[a]={}end
for a=1,#s do
_=s[a]if _ then
if aB then
_[7]=aF(#c[7],_)_[8]=bq(_[7])_[9]=am[_[8]][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
end
bg=0
for k,d in aJ({1,2,9})do
_[d]=_[d]+_[d+10]bg=bg+_[d+10]end
if bg~=0then
_[7]=aF(#c[7],_)_[8]=bq(_[7])end
_[15]=_[15]+1
_[20]=bb(_,g[1])T=c[16][_[6]]if T~=nil then
if _[15]>=T[2]and T[2]~=-1 then
_[6]=T[4]_[15]=0
end
end
aH[_[7]][#aH[_[7]]+1]=a
end
end
aB=N
_=s[1]g[1]={_[1],_[2]}g[2]=_[9]+41
g[3]=_[3]ar={}bB(#c[7])aI={}q={}aG={}aW={}V={}ac={}aT={}bf=K
for a=0,K-1 do
aI[a],V[a],ac[a]=#c[6]+2,t+1,-t
end
a=1
while a<=#ar and bf>0 do
_=c[6][ar[a]]aG[a]={}aW[a]={}q[a]={}aT[a]=aH[ar[a]]bN.sort(aT[a],function(b,m)return s[b][20]>s[m][20]end)for k=_[2],_[1]+_[2]-1 do
Y=c[5][k]y=c[2][Y[4]]bR,bX=c[4][Y[1]],c[4][Y[2]]aP,bI=sub(bR,g[1]),sub(bX,g[1])bF=aO(aP)H,aR=br(bF-g[3]),br(aO(bI)-g[3])if B(H)<90 or B(aR)<90 then
ai,af=bv(H,-O,O),bv(aR,-O,O)if B(H)>=90 or B(aR)>=90 then
bQ=bh(aP,bI)if B(H)>=90 then
if bQ>0 then ai=-O else ai=O end
else
if bQ<0 then af=-O else af=O end
end
end
n,l=aC(tan(ai)/M*E),aC(tan(af)/M*E)if n~=l then
p,aD=bb(g[1],bR),bb(g[1],bX)ba=Y[3]+90
bT=ba-bF
cK=p*sin(bT)aL=(p*cos(bT))if H~=ai then
p=aL/cos(ba-(ai+g[3]))end
if aR~=af then
aD=aL/cos(ba-(af+g[3]))end
p,aD=p*cos(ai),aD*cos(af)h=Y[5]+6
cM=(n>l)if cM and y[h]~=0 then
aw=y[3]&4>0
if aw then
ad,ab=am[c[3][y[6]][6]],am[c[3][y[7]][6]]end
al=c[3][y[h]]cw={al[3],al[4],al[5]}G,cf,ca=am[al[6]]for j,d in aJ(cw)do
ao=d>0
aA=R
if(ao or(j==3 and not(cf and ca)))and(j==3 or aw)then
cb=N
bS=0
if j<3 then
cb=j==1 and C(ad[4],ab[4])==0
A,w=ad[3-j],ab[3-j]aA=(A<w)~=(j==2)~=(h==6)and A~=w and ad~=ab
A,w=v(A,w),C(A,w)if aA then
if j==1then
cf=R
else
ca=R
bS=y[3]&16>0 and C(ad[2],ab[2])-w or 0
end
end
else
if aw then
A,w=C(ad[1],ab[1]),v(ad[2],ab[2])aA=ad~=ab
else
A,w=G[1],G[2]end
end
A,w=A-g[2],w-g[2]cn,bG=A*aN,w*aN
if(aA or ao)and not cb then
bp=Y[6]-al[1]if y[4]==48 then
bp=bp-aK
end
cH,cO=cn/p,bG/p
cB,cy=cn/aD,bG/aD
bV=0
ax=N
if ao then
_=c[21][d][4]if(Y[4]==cj or bU==y[4]or y[8])and _>0then
d=_
end
at=c[21][d][3]r=1
if(j==3 and y[3]&16>0)or(j==1 and y[3]&8==0)then
r=-1
end
end
for h=n,l,-1 do
cG=bW[h]aS=(ba-g[3])-cG
f=E-h
bY=N
if f>=0 and f<=K-1 then
if a<aI[f]then
aV=(h-n)/(l-n)J,F=(cH*(1-aV)+cB*aV),(cO*(1-aV)+cy*aV)if B(F+J)-(F-J)<ae then
if ao then
if J~=F then
bY=R
bP=aL*tan(aS)L=v(((B(bP)+B(aL))//aX)+1,4)bD=v(bs(U(L/cos(aS))),16)L=bs(L)bE=U((C(bP-cK,0)-bp)/(at*bD))*bD
ce={f,t-J,t-F,d,bE,w-A,G[5],al[2]+bS,R,at*L,L,r,not ax,j==3 and aw}if bE>bV or(not ax)or h==l then
bV=bE-1+bD
ax=R
q[a][#q[a]+1]=ce
end
cv=ce
end
end
if aA then
if j~=2 then
if F<V[f]then
aW[a][#aW[a]+1]={f,C(F,ac[f]),V[f],G}end
if j==3then Z=F else Z=J end
if V[f]>Z then V[f]=Z end
end
if j~=1 then
if J>ac[f]then
aG[a][#aG[a]+1]={f,ac[f],v(J,V[f]),G}end
if j==3then Z=J else Z=F end
if ac[f]<Z then ac[f]=Z end
end
if(V[f]<=ac[f])or(j==3 and(not aw)and ao)then
aI[f]=a
bf=bf-1
end
end
end
end
end
if(not bY)and ax then
ax=N
q[a][#q[a]+1]=cv
q[a][#q[a]][9]=N
end
end
if#q[a]>0 then
q[a][#q[a]][9]=N
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
function onDraw()aM=ch
local bJ,bj,ah,cQ=aM.drawTriangleF,aM.drawRectF,aM.setColor,aM.drawText
bl=bl+1
cz={aG,aW}if bl<=1 then
if aE then
e=c[24][c[19][8][ay-3]]X,av=e[1],e[2]z=K/ceil(X*M)co=z*1
for a=0,ceil(X*M),1 do
n=(X/2-a-1+g[3]/90*X)%X
l=(n%1-1)*z
n=U(n)*av
for k=0,av-1,1 do
S=e[5+k+n]i=c[20][S]ah(i[1],i[2],i[3])bj(a*z+l,k*z,co,co)end
end
for a=#q,1,-1 do
for k=1,#q[a]do
d=q[a][k]if d[9]or d[13]then
if d[9]then
P=q[a][k+1]else
P=d
end
e=c[21][d[4]]e=c[21][d[4]+(cr%e[5])]r=d[12]W=v(r,0)f=d[1]l=P[1]ck=d[2-W]cu=P[2-W]h=d[3+W]bt=P[3+W]if not P[9]then l=l+1 end
aZ(d[7])cF=r*(d[2]-d[3])*d[10]/d[6]ct=r*(P[2]-P[3])*d[10]/P[6]bZ=r>0 and v or C
bA=0
while h*r<ck*r and(bA<e[2]or not d[14])do
c_=bZ(h+cF,ck)bx=bZ(bt+ct,cu)S=e[7+((W*d[11]+d[8]//e[3])%e[2])+e[2]*(d[5]%e[1])]i=c[20][S]if i then
ah(i[1]*o,i[2]*o,i[3]*o)bJ(f,h,f,c_,l,bx)bJ(f,h,l,bt,l,bx)end
h=c_
bt=bx
W=W+r
bA=bA+d[11]end
end
end
for b=1,2 do
_=cz[b]cg={}an,az,bm=ae,-ae
for k,d in aJ(_[a])do
an=v(an,d[2])az=C(az,d[3])bm=d
e=c[22][d[4][b+2]]if e and not bM then
aZ(d[4][5])i=c[20][e[5]]ah(i[1]*o,i[2]*o,i[3]*o)ch.drawLine(d[1],t-d[2],d[1],U(t-d[3]-1))end
end
if bm and bM then
G=bm[4]cD=(G[b]-g[2])bw=cos(g[3])bu=sin(g[3])for aq=U(an+t),ceil(az+t)do
ag=aN*cD/(t-aq)cc=bw*ag-g[1][1]bK=bu*ag-g[1][2]cl=-bu*ag+cc
bL=bw*ag+bK
cI=bu*ag+cc
cE=-bw*ag+bK
cC=(cI-cl)/K
cL=(cE-bL)/K
cg[aq]={cC,cL,cl,bL}end
for k,d in aJ(_[a])do
if G[b+2]~=0 then
aZ(G[5])m=G[b+2]e=c[22][m]e=c[22][m+(cr%e[4])]f=d[1]cp=E-(E-f)*M
an,az=U(d[2]+t),ceil(d[3]+t)at=e[3]for aq=an,az do
aY=cg[aq]cN=(aY[3]+aY[1]*cp)//at
cJ=(aY[4]+aY[2]*cp)//at
S=6+(cJ%e[1])+e[1]*(cN%e[2])i=c[20][e[S]]if i then
ah(i[1]*o,i[2]*o,i[3]*o)bj(f,-aq+ae,1,1)end
end
end
end
end
end
for k=1,#aT[a]do
_=s[aT[a][k]]if _[6]~=0 then
aP=sub(_,g[1])p=_[20]if p>1 then
H=br(aO(aP)-g[3])p=p*cos(H)if B(H)<90 then
n=E-aC(tan(H)/M*E)aS=aC((Q+H+g[3]-_[3])/360*8)T=c[16][_[6]][1]if T~=0 and _[6]~=1 then
e=c[17][B(T)][aS%8+1]r=e<0 and-1 or 1
e=B(e)if e>0 then
e=c[23][e]X,av=e[1],e[2]L=v(bs(p//aX+1),8)z=E/(M*p)b_=z*bz
J=t+(g[2]-_[9])/p*aN
F=J-e[5]*b_
l=n-r*e[4]*z
z,b_=z*e[3],b_*e[3]aZ(am[_[8]][5])o=T>0 and o or 1
ci=z*L
cs=ci*bz
cx=_[4]and c[15][_[4]][23]&8>0
for h=0,X-1,L do
n=l+h*z*r
if a<=aI[bv(aC(n),0,K-1)]then
for j=0,av-1,L do
S=e[7+j+h*av]if S~=0 then
if cx then
bk=bk%50+1
ah(0,0,0,v(75*c[13][2][bk],255))else
i=c[20][S]ah(i[1]*o,i[2]*o,i[3]*o)end
bj(n,F+j*b_,ci,cs)end
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
end
end
