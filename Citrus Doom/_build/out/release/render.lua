cS=""

R=180
bY=screen
aV=ipairs
c_=table
bP=input
w=math
D=w.max
v=w.min
C=w.abs
Y=w.floor
ceil=w.ceil
sqrt=w.sqrt
I=bP.getNumber
bp=bP.getBool
pi=w.pi
N=false
Q=true
bc=string
function bB(b,l)return b[1]*l[2]-b[2]*l[1]end
function sub(b,l)return{(b[1]-l[1]),(b[2]-l[2])}end
function br(b)return((b+R)%360)-R end
function sin(b)return w.sin(b/R*pi)end
function cos(b)return w.cos(b/R*pi)end
function tan(b)return w.tan(b/R*pi)end
function cQ(b)return w.atan(b)*R/pi end
function aM(b)return w.atan(b[2],b[1])*R/pi end
function bg(b,l,_)return v(D(l,b),_)end
function ao(b)return Y(b+.5)end
function bm(b,l)return sqrt(((b[1]-l[1])^2)+((b[2]-l[2])^2))end
function bo(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
function aN(b)q=v(b/255+co,1)^2.2 end
c={}bn=1
ax=3
aH=N
aB=Q
f={{0,0},0,0}L=288
z=L//2
ae=128
s=ae//2
aP={}aG=400
cd=100
cP=0
ay={}aS=32768
bQ=3002
bk=0
aO=0
aW=0
bx=1.2
O=52
K=tan(O)aY=s*bx*L/ae/K
X=1
ce={}for a=-z,z do ce[a]=aM({1,a/z*K})end
function bw(a)if a<aS then
local r,bE=c[7][a]bE=0<bB({r[3],r[4]},sub(f[1],r))and 8 or 7
bw(r[bE])bw(r[15-bE])else
an[#an+1]=a-aS
end
end
function aT(a,b)if a<aS then
r=c[7][a]return aT(r[0<bB({r[3],r[4]},sub(b,r))and 8 or 7],b)else
return a-aS
end
end
function bu(b)r=c[5][c[6][b][2]]return c[3][c[2][r[4]][r[5]+6]][6]end
function onTick()bt=0
for k=1,3 do
if bp(9)and(not aH)or not c[21]then
bv=property.getText(bn)a=1
E=cS
_=bc.sub(bv,a,a)while _~=cSdo
bV=bc.byte(_)if bV>64then
E=(E..bV-65)+0
if X==1then
bT=E
c[E]=c[E]or{}elseif X==2then
cA=E
az=0
elseif X==3then
bD=E
else
if az==0then
az=cA
bD=bD-1
bh={}c[bT][#c[bT]+1]=bh
end
bh[#bh+1]=E
az=az-1
X=D(az,bD)>0 and X-1 or 0
end
X=X+1
E=cS
else
E=E.._
end
a=a+1
_=bc.sub(bv,a,a)end
bn=bn+1
aH=bv==cS
end
end
if aH then
if I(9)>0 then
aB=Q
ax=I(9)end
if cd>0 and not aB then
ag={}ay[#ay+1]=ag
aD=5
_=I(aD)while _~=0 do
af={}ag[#ag+1]=af
for a=0,8 do
af[a+1]=I(aD+a)end
aD=aD+9
_=I(aD)end
end
if bp(1)then
bF=0
bj=I(1)cd=I(3)aW=aW+1
cf=aW//10
if aB then
for a=1,10 do
c[a]=c[a+10*ax]end
u=c[1]ah=c[8]ax=ax+1
end
if I(2)>0 then
_=c[2][I(2)]if _ then
b=_[4]if b>0 then
if b==3008 then
cl=_[5]==1
elseif b>3004 then
aG=D(aG+3*(_[4]-3006),1)elseif b>3000 then
bQ=_[4]end
bF=I(2)if b<3000 and c[9][_[5]][7]==0then
_[8]=1
end
end
end
end
if bp(3)and bj~=1 and bj~=3 then
co=.1
aO=bj==5 and 5 or 3
else
aO=aO-1
if aO<1then
co=0
end
end
for a=1,#ay do
ag=ay[a]for k=1,#ag do
af=ag[k]_=af[1]if _>(2^15)then
_=ah[_-(2^15)]for h=1,6 do
_[h]=af[h+1]end
elseif _<0 then
while-_>#u do
u[#u+1]=N
end
c_.remove(u,-_)else
if not u[_]then
u[_]={}end
_=u[_]for h=1,8 do
_[c[19][1][h]]=af[h+1]end
_[15]=0
_[7]=aT(#c[7],_)_[8]=bu(_[7])end
end
end
ay={}for a=1,#c[6]do
aP[a]={}end
for a=1,#u do
_=u[a]if _ then
if aB then
_[7]=aT(#c[7],_)_[8]=bu(_[7])_[9]=ah[_[8]][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
end
bz=0
for k,d in aV({1,2,9})do
_[d]=_[d]+_[d+10]bz=bz+_[d+10]end
if bz~=0then
_[7]=aT(#c[7],_)_[8]=bu(_[7])end
_[15]=_[15]+1
_[20]=bm(_,f[1])P=c[16][_[6]]if P~=nil then
if _[15]>=P[2]and P[2]~=-1 then
_[6]=P[4]_[15]=0
end
end
aP[_[7]][#aP[_[7]]+1]=a
end
end
aB=N
_=u[1]f[1]={_[1],_[2]}f[2]=_[9]+41
f[3]=_[3]an={}bw(#c[7])aE={}o={}aK={}aI={}ab={}Z={}aR={}bf=L
for a=0,L-1 do
aE[a],ab[a],Z[a]=#c[6]+2,s+1,-s
end
a=1
while a<=#an and bf>0 do
_=c[6][an[a]]aK[a]={}aI[a]={}o[a]={}aR[a]=aP[an[a]]c_.sort(aR[a],function(b,l)return u[b][20]>u[l][20]end)for k=_[2],_[1]+_[2]-1 do
W=c[5][k]B=c[2][W[4]]bU,bR=c[4][W[1]],c[4][W[2]]aJ,cg=sub(bU,f[1]),sub(bR,f[1])bS=aM(aJ)F,aX=br(bS-f[3]),br(aM(cg)-f[3])if C(F)<90 or C(aX)<90 then
al,aj=bg(F,-O,O),bg(aX,-O,O)if C(F)>=90 or C(aX)>=90 then
cp=bB(aJ,cg)if C(F)>=90 then
if cp>0 then al=-O else al=O end
else
if cp<0 then aj=-O else aj=O end
end
end
m,n=ao(tan(al)/K*z),ao(tan(aj)/K*z)if m~=n then
p,aC=bm(f[1],bU),bm(f[1],bR)ba=W[3]+90
bG=ba-bS
cL=p*sin(bG)aL=(p*cos(bG))if F~=al then
p=aL/cos(ba-(al+f[3]))end
if aX~=aj then
aC=aL/cos(ba-(aj+f[3]))end
p,aC=p*cos(al),aC*cos(aj)h=W[5]+6
cO=(m>n)if cO and B[h]~=0 then
av=B[3]&4>0
if av then
U,V=ah[c[3][B[6]][6]],ah[c[3][B[7]][6]]end
am=c[3][B[h]]cM={am[3],am[4],am[5]}G,cn,ca=ah[am[6]]for j,d in aV(cM)do
as=d>0
aq=Q
if(as or(j==3 and not(cn and ca)))and(j==3 or av)then
ck=N
bL=0
if j<3 then
ck=j==1 and D(U[4],V[4])==0
A,x=U[3-j],V[3-j]aq=(A<x)~=(j==2)~=(h==6)and A~=x and U~=V
A,x=v(A,x),D(A,x)if aq then
if j==1then
cn=Q
else
ca=Q
bL=B[3]&16>0 and D(U[2],V[2])-x or 0
end
end
else
if av then
A,x=D(U[1],V[1]),v(U[2],V[2])aq=U~=V
else
A,x=G[1],G[2]end
end
A,x=A-f[2],x-f[2]bZ,bJ=A*aY,x*aY
if(aq or as)and not ck then
by=W[6]-am[1]if B[4]==48 then
by=by-aW
end
cK,cD=bZ/p,bJ/p
cI,cw=bZ/aC,bJ/aC
bI=0
ap=N
if as then
_=c[21][d][4]if(W[4]==bF or bQ==B[4]or B[8])and _>0then
d=_
end
at=c[21][d][3]t=1
if(j==3 and B[3]&16>0)or(j==1 and B[3]&8==0)then
t=-1
end
end
for h=m,n,-1 do
cs=ce[h]aZ=(ba-f[3])-cs
g=z-h
cj=N
if g>=0 and g<=L-1 then
if a<aE[g]then
aU=(h-m)/(n-m)J,H=(cK*(1-aU)+cI*aU),(cD*(1-aU)+cw*aU)if C(H+J)-(H-J)<ae then
if as then
if J~=H then
cj=Q
cm=aL*tan(aZ)M=v(((C(cm)+C(aL))//aG)+1,4)bi=v(bo(Y(M/cos(aZ))),16)M=bo(M)bl=Y((D(cm-cL,0)-by)/(at*bi))*bi
cq={g,s-J,s-H,d,bl,x-A,G[5],am[2]+bL,Q,at*M,M,t,not ap,j==3 and av}if bl>bI or(not ap)or h==n then
bI=bl-1+bi
ap=Q
o[a][#o[a]+1]=cq
end
cF=cq
end
end
if aq then
if j~=2 then
if H<ab[g]then
aI[a][#aI[a]+1]={g,D(H,Z[g]),ab[g],G}end
if j==3then aa=H else aa=J end
if ab[g]>aa then ab[g]=aa end
end
if j~=1 then
if J>Z[g]then
aK[a][#aK[a]+1]={g,Z[g],v(J,ab[g]),G}end
if j==3then aa=J else aa=H end
if Z[g]<aa then Z[g]=aa end
end
if(ab[g]<=Z[g])or(j==3 and(not av)and as)then
aE[g]=a
bf=bf-1
end
end
end
end
end
if(not cj)and ap then
ap=N
o[a][#o[a]+1]=cF
o[a][#o[a]][9]=N
end
end
if#o[a]>0 then
o[a][#o[a]][9]=N
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
function onDraw()aF=bY
local cc,bq,ak,cR=aF.drawTriangleF,aF.drawRectF,aF.setColor,aF.drawText
bt=bt+1
cx={aK,aI}if bt<=1 then
if aH then
e=c[24][c[19][8][ax-3]]ad,aA=e[1],e[2]y=L/ceil(ad*K)bK=y*1
for a=0,ceil(ad*K),1 do
m=(ad/2-a-1+f[3]/90*ad)%ad
n=(m%1-1)*y
m=Y(m)*aA
for k=0,aA-1,1 do
T=e[5+k+m]i=c[20][T]ak(i[1],i[2],i[3])bq(a*y+n,k*y,bK,bK)end
end
for a=#o,1,-1 do
for k=1,#o[a]do
d=o[a][k]if d[9]or d[13]then
if d[9]then
S=o[a][k+1]else
S=d
end
e=c[21][d[4]]e=c[21][d[4]+(cf%e[5])]t=d[12]ac=v(t,0)g=d[1]n=S[1]ch=d[2-ac]cz=S[2-ac]h=d[3+ac]bA=S[3+ac]if not S[9]then n=n+1 end
aN(d[7])cN=t*(d[2]-d[3])*d[10]/d[6]cy=t*(S[2]-S[3])*d[10]/S[6]bX=t>0 and v or D
bb=0
while h*t<ch*t and(bb<e[2]or not d[14])do
ci=bX(h+cN,ch)bC=bX(bA+cy,cz)T=e[7+((ac*d[11]+d[8]//e[3])%e[2])+e[2]*(d[5]%e[1])]i=c[20][T]if i then
ak(i[1]*q,i[2]*q,i[3]*q)cc(g,h,g,ci,n,bC)cc(g,h,n,bA,n,bC)end
h=ci
bA=bC
ac=ac+t
bb=bb+d[11]end
end
end
for b=1,2 do
_=cx[b]bN={}au,ar,bs=ae,-ae
for k,d in aV(_[a])do
au=v(au,d[2])ar=D(ar,d[3])bs=d
e=c[22][d[4][b+2]]if e and not cl then
aN(d[4][5])i=c[20][e[5]]ak(i[1]*q,i[2]*q,i[3]*q)bY.drawLine(d[1],s-d[2],d[1],Y(s-d[3]-1))end
end
if bs and cl then
G=bs[4]cJ=(G[b]-f[2])be=cos(f[3])bd=sin(f[3])for aw=Y(au+s),ceil(ar+s)do
ai=aY*cJ/(s-aw)cb=be*ai-f[1][1]bH=bd*ai-f[1][2]bW=-bd*ai+cb
bM=be*ai+bH
ct=bd*ai+cb
cC=-be*ai+bH
cB=(ct-bW)/L
cv=(cC-bM)/L
bN[aw]={cB,cv,bW,bM}end
for k,d in aV(_[a])do
if G[b+2]~=0 then
aN(G[5])l=G[b+2]e=c[22][l]e=c[22][l+(cf%e[4])]g=d[1]bO=z-(z-g)*K
au,ar=Y(d[2]+s),ceil(d[3]+s)at=e[3]for aw=au,ar do
aQ=bN[aw]cH=(aQ[3]+aQ[1]*bO)//at
cG=(aQ[4]+aQ[2]*bO)//at
T=6+(cG%e[1])+e[1]*(cH%e[2])i=c[20][e[T]]if i then
ak(i[1]*q,i[2]*q,i[3]*q)bq(g,-aw+ae,1,1)end
end
end
end
end
end
for k=1,#aR[a]do
_=u[aR[a][k]]if _[6]~=0 then
aJ=sub(_,f[1])p=_[20]if p>1 then
F=br(aM(aJ)-f[3])p=p*cos(F)if C(F)<90 then
m=z-ao(tan(F)/K*z)aZ=ao((R+F+f[3]-_[3])/360*8)P=c[16][_[6]][1]if P~=0 and _[6]~=1 then
e=c[17][C(P)][aZ%8+1]t=e<0 and-1 or 1
e=C(e)if e>0 then
e=c[23][e]ad,aA=e[1],e[2]M=v(bo(p//aG+1),8)y=z/(K*p)b_=y*bx
J=s+(f[2]-_[9])/p*aY
H=J-e[5]*b_
n=m-t*e[4]*y
y,b_=y*e[3],b_*e[3]aN(ah[_[8]][5])q=P>0 and q or 1
cr=y*M
cu=cr*bx
cE=_[4]and c[15][_[4]][23]&8>0
for h=0,ad-1,M do
m=n+h*y*t
if a<=aE[bg(ao(m),0,L-1)]then
for j=0,aA-1,M do
T=e[7+j+h*aA]if T~=0 then
if cE then
bk=bk%50+1
ak(0,0,0,v(75*c[13][2][bk],255))else
i=c[20][T]ak(i[1]*q,i[2]*q,i[3]*q)end
bq(m,H+j*b_,cr,cu)end
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
