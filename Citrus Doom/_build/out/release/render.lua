cV=""

P=180
bV=screen
aZ=ipairs
cb=table
bI=input
v=math
C=v.max
x=v.min
B=v.abs
ah=v.floor
ceil=v.ceil
sqrt=v.sqrt
H=bI.getNumber
be=bI.getBool
pi=v.pi
N=false
Q=true
bk=string
function bq(b,o)return b[1]*o[2]-b[2]*o[1]end
function sub(b,o)return{(b[1]-o[1]),(b[2]-o[2])}end
function bz(b)return((b+P)%360)-P end
function sin(b)return v.sin(b/P*pi)end
function cos(b)return v.cos(b/P*pi)end
function tan(b)return v.tan(b/P*pi)end
function cU(b)return v.atan(b)*P/pi end
function aP(b)return v.atan(b[2],b[1])*P/pi end
function bi(b,o,_)return x(C(o,b),_)end
function az(b)return ah(b+.5)end
function b_(b,o)return sqrt(((b[1]-o[1])^2)+((b[2]-o[2])^2))end
function c_(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
function aY(b)r=x(b/255+ci,1)^2.2 end
c={}bj=1
aC=3
aM=N
ay=Q
f={{0,0},0,0}O=288
z=O//2
af=128
s=af//2
aT={}aO=400
bF=200
bS=100
cS=0
as={}aS=32768
bW=3002
bt=0
aJ=0
av=0
bA=1.2
L=52
K=tan(L)aH=s*bA*O/af/K
V=1
cg={}for a=-z,z do cg[a]=aP({1,a/z*K})end
function bh(a)if a<aS then
local u,bo=c[7][a]bo=0<bq({u[3],u[4]},sub(f[1],u))and 8 or 7
bh(u[bo])bh(u[15-bo])else
au[#au+1]=a-aS
end
end
function aX(a,b)if a<aS then
u=c[7][a]return aX(u[0<bq({u[3],u[4]},sub(b,u))and 8 or 7],b)else
return a-aS
end
end
function bf(b)u=c[5][c[6][b][2]]return ar[c[3][c[2][u[4]][u[5]+6]][6]]end
function onTick()bx=0
for n=1,3 do
if be(9)and(not aM)or not c[21]then
bw=property.getText(bj)a=1
A=cV
_=bk.sub(bw,a,a)while _~=cVdo
bH=bk.byte(_)if bH>64 then
A=(A..bH-65)+0
if V==1 then
bL=A
c[A]=c[A]or{}elseif V==2 then
cJ=A
aB=0
elseif V==3 then
bn=A
else
if aB==0 then
aB=cJ
bn=bn-1
bg={}c[bL][#c[bL]+1]=bg
end
bg[#bg+1]=A
aB=aB-1
V=C(aB,bn)>0 and V-1 or 0
end
V=V+1
A=cV
else
A=A.._
end
a=a+1
_=bk.sub(bw,a,a)end
bj=bj+1
aM=bw==cV
end
end
if aM then
if H(9)>0 then
ay=Q
aC=H(9)end
if bS>0 and not ay then
aj={}as[#as+1]=aj
am=5
_=H(am)while _~=0 do
ak={}aj[#aj+1]=ak
for a=0,8 do
ak[a+1]=H(am+a)end
am=am+9
_=H(am)end
end
if be(1)then
bC=0
bs=H(1)bS=H(3)av=av+1
ce=av//10
if ay then
for a=1,10 do
c[a]=c[a+10*aC]end
m=c[1]cd={m[1][1],m[1][2]}ar=c[8]aC=aC+1
end
if H(2)>0 then
_=c[2][H(2)]if _ then
b=_[4]if b>0 then
if b==3008 then
bK=_[5]==1
elseif b>3004 then
aO=C(aO+3*(_[4]-3006),1)bF=aO/2
elseif b>3000 then
bW=_[4]end
bC=H(2)if b<3000 and c[9][_[5]][7]==0 then
_[8]=1
end
end
end
end
if be(3)and bs~=1 and bs~=3 then
ci=.1
aJ=bs==5 and 5 or 3
else
aJ=aJ-1
if aJ<1 then
ci=0
end
end
for a=1,#as do
aj=as[a]for n=1,#aj do
ak=aj[n]_=ak[1]if _>(2^15)then
_=ar[_-(2^15)]for h=1,6 do
_[h]=ak[h+1]end
elseif _<0 then
while-_>#m do
m[#m+1]=N
end
cb.remove(m,-_)else
if not m[_]then
m[_]={}end
_=m[_]for h=1,8 do
_[c[19][1][h]]=ak[h+1]end
_[15]=0
_[7]=aX(#c[7],_)_[8]=bf(_[7])end
end
end
as={}for a=1,#c[6]do
aT[a]={}end
for a=1,#m do
_=m[a]if _ then
if ay then
_[7]=aX(#c[7],_)_[8]=bf(_[7])_[9]=_[8][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
end
bB=0
for n,d in aZ({1,2,9})do
_[d]=_[d]+_[d+10]bB=bB+_[d+10]end
if bB~=0 then
_[7]=aX(#c[7],_)_[8]=bf(_[7])end
_[15]=_[15]+1
_[20]=b_(_,f[1])M=c[16][_[6]]if M~=nil then
if M[5]>0 then
_[9]=_[8][1]end
if _[15]>=M[2]and M[2]~=-1 then
_[6]=M[4]_[15]=0
end
end
aT[_[7]][#aT[_[7]]+1]=a
end
end
ay=N
_=m[1]f[1]={_[1],_[2]}f[3]=_[3]cG=x(b_(f[1],cd)^2/4,16)cd={_[1],_[2]}f[2]=_[9]+41+cG*sin(av*20)/4
au={}bh(#c[7])aF={}q={}aK={}aR={}Y={}T={}aW={}bb=O
for a=0,O-1 do
aF[a],Y[a],T[a]=#c[6]+2,s+1,-s
end
a=1
while a<=#au and bb>0 do
_=c[6][au[a]]aK[a]={}aR[a]={}q[a]={}aW[a]=aT[au[a]]cb.sort(aW[a],function(b,o)return m[b][20]>m[o][20]end)for n=_[2],_[1]+_[2]-1 do
U=c[5][n]D=c[2][U[4]]bY,ct=c[4][U[1]],c[4][U[2]]aG,bQ=sub(bY,f[1]),sub(ct,f[1])bG=aP(aG)J,aL=bz(bG-f[3]),bz(aP(bQ)-f[3])if B(J)<90 or B(aL)<90 then
ai,ad=bi(J,-L,L),bi(aL,-L,L)if B(J)>=90 or B(aL)>=90 then
bP=bq(aG,bQ)if B(J)>=90 then
if bP>0 then ai=-L else ai=L end
else
if bP<0 then ad=-L else ad=L end
end
end
l,k=az(tan(ai)/K*z),az(tan(ad)/K*z)if l~=k then
p,ap=b_(f[1],bY),b_(f[1],ct)aV=U[3]+90
cn=aV-bG
cz=p*sin(cn)aI=(p*cos(cn))if J~=ai then
p=aI/cos(aV-(ai+f[3]))end
if aL~=ad then
ap=aI/cos(aV-(ad+f[3]))end
p,ap=p*cos(ai),ap*cos(ad)h=U[5]+6
cP=(l>k)if cP and D[h]~=0 then
aw=D[3]&4>0
if aw then
X,ab=ar[c[3][D[6]][6]],ar[c[3][D[7]][6]]end
ac=c[3][D[h]]cu={ac[3],ac[4],ac[5]}G,co,cq=ar[ac[6]]for j,d in aZ(cu)do
ao=d>0
an=Q
if(ao or(j==3 and not(co and cq)))and(j==3 or aw)then
cm=N
bJ=0
if j<3 then
cm=j==1 and C(X[4],ab[4])==0
y,w=X[3-j],ab[3-j]an=(y<w)~=(j==2)~=(h==6)and y~=w and X~=ab
y,w=x(y,w),C(y,w)if an then
if j==1 then
co=Q
else
cq=Q
bJ=D[3]&16>0 and C(X[2],ab[2])-w or 0
end
end
else
if aw then
y,w=C(X[1],ab[1]),x(X[2],ab[2])an=X~=ab
else
y,w=G[1],G[2]end
end
y,w=y-f[2],w-f[2]bM,bZ=y*aH,w*aH
if(an or ao)and not cm then
bc=U[6]-ac[1]if D[4]==48 then
bc=bc-av
end
cv,cw=bM/p,bZ/p
cB,cA=bM/ap,bZ/ap
cl=0
aE=N
if ao then
_=c[21][d][4]if(U[4]==bC or bW==D[4]or D[8])and _>0 then
d=_
end
ax=c[21][d][3]t=1
if(j==3 and D[3]&16>0)or(j==1 and D[3]&8==0)then
t=-1
end
end
for h=l,k,-1 do
cQ=cg[h]bv=(aV-f[3])-cQ
g=z-h
bR=N
if g>=0 and g<=O-1 then
if a<aF[g]then
aQ=(h-l)/(k-l)I,F=(cv*(1-aQ)+cB*aQ),(cw*(1-aQ)+cA*aQ)if B(F+I)-(F-I)<af then
if ao then
if I~=F then
bR=Q
ch=aI*tan(bv)aq=c_(x(((B(ch)+B(aI))//bF)+1,16))ca=ah((C(ch-cz,0)-bc)/(ax*aq))cj=ca*aq
ck={g,s-I,s-F,d,ca,w-y,G[5],ac[2]+bJ,Q,ax*aq,aq,t,not aE,j==3 and aw}if cj>cl or(not aE)or h==k then
cl=cj-1+aq
aE=Q
q[a][#q[a]+1]=ck
end
cM=ck
end
end
if an then
if j~=2 then
if F<Y[g]then
aR[a][#aR[a]+1]={g,C(F,T[g]),Y[g],G}end
if j==3 then aa=F else aa=I end
if Y[g]>aa then Y[g]=aa end
end
if j~=1 then
if I>T[g]then
aK[a][#aK[a]+1]={g,T[g],x(I,Y[g]),G}end
if j==3 then aa=I else aa=F end
if T[g]<aa then T[g]=aa end
end
if(Y[g]<=T[g])or(j==3 and(not aw)and ao)then
aF[g]=a
bb=bb-1
end
end
end
end
end
if(not bR)and aE then
aE=N
q[a][#q[a]+1]=cM
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
function onDraw()aU=bV
local bE,br,ag,cT=aU.drawTriangleF,aU.drawRectF,aU.setColor,aU.drawText
cI={aK,aR}if aM then
e=c[24][c[19][8][aC-3]]Z,al=e[1],e[2]E=O/ceil(Z*K)bD=E*1
for a=0,ceil(Z*K),1 do
l=(Z/2-a-1+f[3]/90*Z)%Z
k=(l%1-1)*E
l=ah(l)*al
for n=0,al-1,1 do
S=e[5+n+l]i=c[20][S]ag(i[1],i[2],i[3])br(a*E+k,n*E,bD,bD)end
end
for a=#q,1,-1 do
for n=1,#q[a]do
d=q[a][n]if d[9]or d[13]then
if d[9]then
R=q[a][n+1]else
R=d
end
e=c[21][d[4]]e=c[21][d[4]+(ce%e[5])*c[19][3][2]+c[19][12][d[11]]]t=d[12]W=x(t,0)g=d[1]k=R[1]cp=d[2-W]cD=R[2-W]h=d[3+W]bd=R[3+W]if not R[9]then k=k+1 end
aY(d[7])cH=t*(d[2]-d[3])*e[3]/d[6]cE=t*(R[2]-R[3])*e[3]/R[6]cs=t>0 and x or C
bp=0
while h*t<cp*t and(bp<e[2]or not d[14])do
cc=cs(h+cH,cp)bu=cs(bd+cE,cD)S=e[7+((W+d[8]//e[3])%e[2])+e[2]*((d[5])%e[1])]i=c[20][S]if i then
ag(i[1]*r,i[2]*r,i[3]*r)bE(g,h,g,cc,k,bu)bE(g,h,k,bd,k,bu)end
h=cc
bd=bu
W=W+t
bp=bp+1
end
end
end
for b=1,2 do
_=cI[b]bU={}aA,aD,bl=af,-af
for n,d in aZ(_[a])do
aA=x(aA,d[2])aD=C(aD,d[3])bl=d
e=c[22][d[4][b+2]]if e and not bK then
aY(d[4][5])i=c[20][e[5]]ag(i[1]*r,i[2]*r,i[3]*r)bV.drawLine(d[1],s-d[2],d[1],ah(s-d[3]-1))end
end
if bl and bK then
G=bl[4]cF=(G[b]-f[2])bm=cos(f[3])by=sin(f[3])for at=ah(aA+s),ceil(aD+s)do
ae=aH*cF/(s-at)bT=bm*ae-f[1][1]cf=by*ae-f[1][2]bO=-by*ae+bT
bN=bm*ae+cf
cR=by*ae+bT
cC=-bm*ae+cf
cy=(cR-bO)/O
cK=(cC-bN)/O
bU[at]={cy,cK,bO,bN}end
for n,d in aZ(_[a])do
if G[b+2]~=0 then
g=d[1]aY(G[5])o=G[b+2]e=c[22][o]e=c[22][o+(ce%e[4])]cr=z-(z-g)*K
aA,aD=ah(d[2]+s),ceil(d[3]+s)ax=e[3]for at=aA,aD do
ba=bU[at]cx=(ba[3]+ba[1]*cr)//ax
cL=(ba[4]+ba[2]*cr)//ax
S=6+(cL%e[1])+e[1]*(cx%e[2])i=c[20][e[S]]if i then
ag(i[1]*r,i[2]*r,i[3]*r)br(g,-at+af,1,1)end
end
end
end
end
end
for n=1,#aW[a]do
_=m[aW[a][n]]if _[6]~=0 then
aG=sub(_,f[1])p=_[20]if p>1 then
J=bz(aP(aG)-f[3])p=p*cos(J)if B(J)<90 then
l=z-az(tan(J)/K*z)bv=az((P+J+f[3]-_[3]+bx*4)/360*8)M=c[16][_[6]][1]if M~=0 and _[6]~=1 then
e=c[17][B(M)][bv%8+1]t=e<0 and-1 or 1
e=B(e)if e>0 then
e=c[23][e+c[19][12][x(c_(p//aO+1),8)]]Z,al=e[1],e[2]E=z/(K*p)aN=E*bA
I=s+(f[2]-_[9])/p*aH
F=I-e[5]*aN
k=l-t*e[4]*E
E,aN=E*e[3],aN*e[3]aY(_[8][5])r=M>0 and r or 1
bX=E
cO=bX*bA
cN=_[4]and c[15][_[4]][23]&8>0
for h=0,Z-1 do
l=k+h*E*t
if a<=aF[bi(az(l),0,O-1)]then
for j=0,al-1 do
S=e[7+j+h*al]if S~=0 then
if cN then
bt=bt%50+1
ag(0,0,0,x(75*c[13][2][bt],255))else
i=c[20][S]ag(i[1]*r,i[2]*r,i[3]*r)end
br(l,F+j*aN,bX,cO)end
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
bx=bx+1
end
