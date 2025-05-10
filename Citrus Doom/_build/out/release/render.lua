cQ=""

S=180
ce=screen
aF=ipairs
bP=table
bY=input
w=math
B=w.max
r=w.min
v=w.abs
ae=w.floor
ceil=w.ceil
sqrt=w.sqrt
I=bY.getNumber
ba=bY.getBool
pi=w.pi
N=false
D=true
bb=string
function bs(c,k)return c[1]*k[2]-c[2]*k[1]end
function sub(c,k)return{(c[1]-k[1]),(c[2]-k[2])}end
function bv(c)return((c+S)%360)-S end
function sin(c)return w.sin(c/S*pi)end
function cos(c)return w.cos(c/S*pi)end
function tan(c)return w.tan(c/S*pi)end
function cP(c)return w.atan(c)*S/pi end
function aE(c)return w.atan(c[2],c[1])*S/pi end
function bp(c,k,_)return r(B(k,c),_)end
function aq(c)return ae(c+.5)end
function bg(c,k)return sqrt(((c[1]-k[1])^2)+((c[2]-k[2])^2))end
function bC(c)c=c-1
c=c|(c>>1)c=c|(c>>2)c=c|(c>>4)return c+1
end
b={}bl=1
ao=3
aX=N
aC=D
g={{0,0},0,0}K=288
A=K//2
ad=128
t=ad//2
aG={}aU=400
bI=100
cO=0
ar={}aR=32768
bR=3002
bk=0
b_=0
bH=D
aJ=0
bc=1.2
P=52
O=tan(P)aT=t*bc*K/ad/O
ac=1
cl={}for a=-A,A do cl[a]=aE({1,a/A*O})end
function bz(a)if a<aR then
local u,bh=b[7][a]bh=0<bs({u[3],u[4]},sub(g[1],u))and 8 or 7
bz(u[bh])bz(u[15-bh])else
aB[#aB+1]=a-aR
end
end
function aK(a,c)if a<aR then
u=b[7][a]return aK(u[0<bs({u[3],u[4]},sub(c,u))and 8 or 7],c)else
return a-aR
end
end
function bw(c)u=b[5][b[6][c][2]]return b[3][b[2][u[4]][u[5]+6]][6]end
function onTick()bx=0
for m=1,3 do
if ba(9)and(not aX)or not b[21]then
bf=property.getText(bl..cQ)if bf~=cQ then
a=1
y=cQ
_=bb.sub(bf,a,a)while _~=cQdo
bQ=bb.byte(_)if bQ>64 or _==cQthen
y=(y..(bQ-65))+0
if ac==1then
ck=y
if b[y]==cN then
b[y]={}end
ac=2
elseif ac==2then
cp=y
an=0
ac=3
elseif ac==3then
bu=y
ac=4
else
if an==0then
an=cp
bu=bu-1
ak={}b[ck][#b[ck]+1]=ak
end
ak[#ak+1]=y
an=an-1
if B(an,bu)==0then
ac=1
end
end
y=cQ
else
y=y.._
end
a=a+1
_=bb.sub(bf,a,a)end
bl=bl+1
else
aX=D
end
end
end
if aX then
if I(9)>0 then
aC=D
ao=I(9)end
if bI>0 and not aC then
ag={}ar[#ar+1]=ag
ap=5
_=I(ap)while _~=0 do
T={}ag[#ag+1]=T
for a=0,8 do
T[a+1]=I(ap+a)end
ap=ap+9
_=I(ap)end
end
if ba(1)then
bT=0
bn=I(1)bI=I(3)aJ=aJ+1
c_=aJ//10
if aC then
for a=1,10 do
b[a]=b[a+10*ao]end
for a=1,#b[8]do
b[8][a][5]=b[8][a][5]/255
end
ao=ao+1
end
if I(2)>0 then
_=b[2][I(2)]if _ then
if _[4]>3004 then
aU=B(aU+3*(_[4]-3006),1)elseif _[4]>3000 then
bR=_[4]end
bT=I(2)end
end
if ba(3)and bn~=1 and bn~=3 then
aW=.1
b_=bn==5 and 5 or 3
else
b_=b_-1
if b_<1then
aW=0
end
end
for a=1,#ar do
ag=ar[a]for m=1,#ag do
T=ag[m]_=T[1]if _>(2^15)then
_=b[8][_-(2^15)]_[1]=T[2]_[2]=T[3]elseif _<0 then
while-_>#b[1]do
b[1][#b[1]+1]=N
end
bP.remove(b[1],-_)else
if not b[1][_]then
b[1][_]={}end
_=b[1][_]for i=1,8 do
_[b[19][1][i]]=T[i+1]end
_[15]=0
_[7]=aK(#b[7],_)_[8]=bw(_[7])end
end
end
ar={}for a=1,#b[6]do
aG[a]={}end
for a=1,#b[1]do
_=b[1][a]if _ then
if aC then
_[7]=aK(#b[7],_)_[8]=bw(_[7])_[9]=b[8][_[8]][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
if _[4]==1 then
cI=a
end
end
bd=0
for m,d in aF({1,2,9})do
_[d]=_[d]+_[d+10]bd=bd+_[d+10]end
if bd~=0then
_[7]=aK(#b[7],_)_[8]=bw(_[7])end
_[15]=_[15]+1
_[20]=bg(_,g[1])M=b[16][_[6]]if M~=nil then
if _[15]>=M[2]and M[2]~=-1 then
_[6]=M[4]_[15]=0
end
end
aG[_[7]][#aG[_[7]]+1]=a
end
end
aC=N
_=b[1][cI]g[1]={_[1],_[2]}g[2]=_[9]+41
g[3]=_[3]aB={}bz(#b[7])aO={}p={}aV={}aQ={}W={}ab={}aH={}bi=K
for a=0,K-1 do
aO[a],W[a],ab[a]=#b[6]+2,t+1,-t
end
a=1
while a<=#aB and bi>0 do
_=b[6][aB[a]]aV[a]={}aQ[a]={}p[a]={}aH[a]=aG[aB[a]]bP.sort(aH[a],function(c,k)return b[1][c][20]>b[1][k][20]end)for m=_[2],_[1]+_[2]-1 do
X=b[5][m]J=b[2][X[4]]bE,bS=b[4][X[1]],b[4][X[2]]aI,cf=sub(bE,g[1]),sub(bS,g[1])bZ=aE(aI)F,aL=bv(bZ-g[3]),bv(aE(cf)-g[3])if v(F)<90 or v(aL)<90 then
af,ah=bp(F,-P,P),bp(aL,-P,P)if v(F)>=90 or v(aL)>=90 then
bF=bs(aI,cf)if v(F)>=90 then
if bF>0 then af=-P else af=P end
else
if bF<0 then ah=-P else ah=P end
end
end
l,n=aq(tan(af)/O*A),aq(tan(ah)/O*A)if l~=n then
o,au=bg(g[1],bE),bg(g[1],bS)aZ=X[3]+90
bL=aZ-bZ
cF=o*sin(bL)aM=(o*cos(bL))if F~=af then
o=aM/cos(aZ-(af+g[3]))end
if aL~=ah then
au=aM/cos(aZ-(ah+g[3]))end
o,au=o*cos(af),au*cos(ah)i=X[5]+6
cA=(l>n)if cA and J[i]~=0 then
aw=J[3]&4>0
if aw then
aa,V=b[8][b[3][J[6]][6]],b[8][b[3][J[7]][6]]end
aj=b[3][J[i]]cG={aj[3],aj[4],aj[5]}G,bK,bU=b[8][aj[6]]for j,d in aF(cG)do
as=d>0
am=D
if(as or(j==3 and not(bK and bU)))and(j==3 or aw)then
bD=N
cb=0
if j<3 then
bD=j==1 and B(aa[4],V[4])==0
z,x=aa[3-j],V[3-j]am=(z<x)~=(j==2)~=(i==6)and z~=x and aa~=V
z,x=r(z,x),B(z,x)if am then
if j==1then
bK=D
else
bU=D
cb=J[3]&16>0 and B(aa[2],V[2])-x or 0
end
end
else
if aw then
z,x=B(aa[1],V[1]),r(aa[2],V[2])am=aa~=V
else
z,x=G[1],G[2]end
end
z,x=z-g[2],x-g[2]bJ,ch=z*aT,x*aT
if(am or as)and not bD then
bo=X[6]-aj[1]if J[4]==48 then
bo=bo-aJ
end
co,cs=bJ/o,ch/o
cq,cB=bJ/au,ch/au
bX=0
aA=N
if as then
_=b[21][d][4]if(X[4]==bT or bR==J[4])and _>0then
d=_
end
av=b[21][d][3]s=1
if(j==3 and J[3]&16>0)or(j==1 and J[3]&8==0)then
s=-1
end
end
for i=l,n,-1 do
cr=cl[i]aS=(aZ-g[3])-cr
f=A-i
bV=N
if f>=0 and f<=K-1 then
if a<aO[f]then
aD=(i-l)/(n-l)E,H=(co*(1-aD)+cq*aD),(cs*(1-aD)+cB*aD)if v(H+E)-(H-E)<ad then
if as then
if E~=H then
bV=D
cd=aM*tan(aS)L=r(((v(cd)+v(aM))//aU)+1,4)bt=r(bC(ae(L/cos(aS))),16)L=bC(L)bq=ae((B(cd-cF,0)-bo)/(av*bt))*bt
bM={f,t-E,t-H,d,bq,x-z,G[5],aj[2]+cb,D,av*L,L,s,not aA,j==3 and aw}if bq>bX or(not aA)or i==n then
bX=bq-1+bt
aA=D
p[a][#p[a]+1]=bM
end
cL=bM
end
end
if am then
if j~=2 then
if H<W[f]then
aQ[a][#aQ[a]+1]={f,B(H,ab[f]),W[f],G}end
if j==3then Z=H else Z=E end
if W[f]>Z then W[f]=Z end
end
if j~=1 then
if E>ab[f]then
aV[a][#aV[a]+1]={f,ab[f],r(E,W[f]),G}end
if j==3then Z=E else Z=H end
if ab[f]<Z then ab[f]=Z end
end
if(W[f]<=ab[f])or(j==3 and(not aw)and as)then
aO[f]=a
bi=bi-1
end
end
end
end
end
if(not bV)and aA then
aA=N
p[a][#p[a]+1]=cL
p[a][#p[a]][9]=N
end
end
if#p[a]>0 then
p[a][#p[a]][9]=N
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
function onDraw()aN=ce
local cj,bm,ai,cM=aN.drawTriangleF,aN.drawRectF,aN.setColor,aN.drawText
bx=bx+1
cK={aV,aQ}if bx<=1 then
if aX then
e=b[24][b[19][8][ao-3]]U,ax=e[1],e[2]C=K/ceil(U*O)bN=C*1
for a=0,ceil(U*O),1 do
l=(U/2-a-1+g[3]/90*U)%U
n=(l%1-1)*C
l=ae(l)*ax
for m=0,ax-1,1 do
R=e[5+m+l]h=b[20][R]ai(h[1],h[2],h[3])bm(a*C+n,m*C,bN,bN)end
end
for a=#p,1,-1 do
for m=1,#p[a]do
d=p[a][m]if d[9]or d[13]then
if d[9]then
Q=p[a][m+1]else
Q=d
end
e=b[21][d[4]]e=b[21][d[4]+(c_%e[5])]s=d[12]Y=r(s,0)f=d[1]n=Q[1]ci=d[2-Y]cC=Q[2-Y]i=d[3+Y]bB=Q[3+Y]if not Q[9]then n=n+1 end
q=r(d[7]+aW,1)^2.2
cz=s*(d[2]-d[3])*d[10]/d[6]cy=s*(Q[2]-Q[3])*d[10]/Q[6]ak=s>0 and r or B
bj=0
while i*s<ci*s and(bj<e[2]or not d[14])do
cn=ak(i+cz,ci)be=ak(bB+cy,cC)R=e[7+((Y*d[11]+d[8]//e[3])%e[2])+e[2]*(d[5]%e[1])]h=b[20][R]if h then
ai(h[1]*q,h[2]*q,h[3]*q)cj(f,i,f,cn,n,be)cj(f,i,n,bB,n,be)end
i=cn
bB=be
Y=Y+s
bj=bj+d[11]end
end
end
for c=1,2 do
_=cK[c]cg={}at,az,br=ad,-ad
for m,d in aF(_[a])do
at=r(at,d[2])az=B(az,d[3])br=d
e=b[22][d[4][c+2]]if e and not bH then
h=b[20][e[5]]ai(h[1]*q,h[2]*q,h[3]*q)ce.drawLine(f,-d[2]+t,f,-d[3]+t)end
end
if br and bH then
G=br[4]ct=(G[c]-g[2])bA=cos(g[3])by=sin(g[3])for ay=ae(at+t),ceil(az+t)do
al=aT*ct/(t-ay)ca=bA*al-g[1][1]bO=by*al-g[1][2]bW=-by*al+ca
cc=bA*al+bO
cv=by*al+ca
cw=-bA*al+bO
cx=(cv-bW)/K
cD=(cw-cc)/K
cg[ay]={cx,cD,bW,cc}end
for m,d in aF(_[a])do
if G[c+2]~=0 then
q=r(G[5]+aW,1)^2.2
k=G[c+2]e=b[22][k]e=b[22][k+(c_%e[4])]f=d[1]cm=A-(A-f)*O
at,az=ae(d[2]+t),ceil(d[3]+t)av=e[3]for ay=at,az do
aP=cg[ay]cH=(aP[3]+aP[1]*cm)//av
cE=(aP[4]+aP[2]*cm)//av
R=6+(cE%e[1])+e[1]*(cH%e[2])h=b[20][e[R]]if h then
ai(h[1]*q,h[2]*q,h[3]*q)bm(f,-ay+ad,1,1)end
end
end
end
end
end
for m=1,#aH[a]do
_=b[1][aH[a][m]]if _[6]~=0 then
aI=sub(_,g[1])o=_[20]if o>1 then
F=bv(aE(aI)-g[3])o=o*cos(F)if v(F)<90 then
l=A-aq(tan(F)/O*A)aS=aq((S+F+g[3]-_[3])/360*8)M=b[16][_[6]][1]if M~=0 and _[6]~=1 then
e=b[17][v(M)][aS%8+1]if e==0 then
e=b[17][v(M)][1]end
s=e<0 and-1 or 1
e=v(e)if e>0 then
e=b[23][e]U,ax=e[1],e[2]L=r(bC(o//aU+1),8)C=A/(O*o)aY=C*bc
E=t+(g[2]-_[9])/o*aT
H=E-e[5]*aY
n=l-s*e[4]*C
C,aY=C*e[3],aY*e[3]q=M>0 and r(b[8][_[8]][5]+aW,1)^2.2 or 1
bG=C*L
cJ=bG*bc
cu=_[4]and b[15][_[4]][23]&8>0
for i=0,U-1,L do
l=n+i*C*s
if a<=aO[bp(aq(l),0,K-1)]then
for j=0,ax-1,L do
R=e[7+j+i*ax]if R~=0 then
if cu then
bk=bk%50+1
ai(0,0,0,r(75*b[13][2][bk],255))else
h=b[20][R]ai(h[1]*q,h[2]*q,h[3]*q)end
bm(l,H+j*aY,bG,cJ)end
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
