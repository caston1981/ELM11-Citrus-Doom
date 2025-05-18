cS=""

Q=180
cl=screen
aQ=ipairs
bR=table
bT=input
x=math
E=x.max
v=x.min
D=x.abs
ac=x.floor
ceil=x.ceil
sqrt=x.sqrt
G=bT.getNumber
bc=bT.getBool
pi=x.pi
N=false
R=true
bh=string
function bC(b,k)return b[1]*k[2]-b[2]*k[1]end
function sub(b,k)return{(b[1]-k[1]),(b[2]-k[2])}end
function bx(b)return((b+Q)%360)-Q end
function sin(b)return x.sin(b/Q*pi)end
function cos(b)return x.cos(b/Q*pi)end
function tan(b)return x.tan(b/Q*pi)end
function cR(b)return x.atan(b)*Q/pi end
function aM(b)return x.atan(b[2],b[1])*Q/pi end
function bw(b,k,_)return v(E(k,b),_)end
function aw(b)return ac(b+.5)end
function bq(b,k)return sqrt(((b[1]-k[1])^2)+((b[2]-k[2])^2))end
function bt(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
function aZ(b)q=v(b/255+bQ,1)^2.2 end
c={}bb=1
aD=3
aT=N
aC=R
g={{0,0},0,0}M=288
C=M//2
ai=128
s=ai//2
ba={}aH=400
bF=100
cP=0
aq={}aV=32768
cj=3002
bm=0
aX=0
aP=0
bf=1.2
K=52
O=tan(K)aN=s*bf*M/ai/O
ab=1
bU={}for a=-C,C do bU[a]=aM({1,a/C*O})end
function bn(a)if a<aV then
local t,bz=c[7][a]bz=0<bC({t[3],t[4]},sub(g[1],t))and 8 or 7
bn(t[bz])bn(t[15-bz])else
aB[#aB+1]=a-aV
end
end
function aU(a,b)if a<aV then
t=c[7][a]return aU(t[0<bC({t[3],t[4]},sub(b,t))and 8 or 7],b)else
return a-aV
end
end
function bg(b)t=c[5][c[6][b][2]]return c[3][c[2][t[4]][t[5]+6]][6]end
function onTick()bD=0
for n=1,3 do
if bc(9)and(not aT)or not c[21]then
bo=property.getText(bb)a=1
y=cS
_=bh.sub(bo,a,a)while _~=cSdo
ce=bh.byte(_)if ce>64then
y=(y..ce-65)+0
if ab==1then
bI=y
c[y]=c[y]or{}elseif ab==2then
cz=y
av=0
elseif ab==3then
bl=y
else
if av==0then
av=cz
bl=bl-1
bB={}c[bI][#c[bI]+1]=bB
end
bB[#bB+1]=y
av=av-1
ab=E(av,bl)>0 and ab-1 or 0
end
ab=ab+1
y=cS
else
y=y.._
end
a=a+1
_=bh.sub(bo,a,a)end
bb=bb+1
aT=bo==cS
end
end
if aT then
if G(9)>0 then
aC=R
aD=G(9)end
if bF>0 and not aC then
am={}aq[#aq+1]=am
at=5
_=G(at)while _~=0 do
ak={}am[#am+1]=ak
for a=0,8 do
ak[a+1]=G(at+a)end
at=at+9
_=G(at)end
end
if bc(1)then
cq=0
bj=G(1)bF=G(3)aP=aP+1
bX=aP//10
if aC then
for a=1,10 do
c[a]=c[a+10*aD]end
u=c[1]ag=c[8]aD=aD+1
end
if G(2)>0 then
_=c[2][G(2)]if _ then
b=_[4]if b>0 then
if b==3008 then
cn=_[5]==1
elseif b>3004 then
aH=E(aH+3*(_[4]-3006),1)elseif b>3000 then
cj=_[4]end
cq=G(2)if b<3000 and c[9][_[5]][7]==0then
_[8]=1
end
end
end
end
if bc(3)and bj~=1 and bj~=3 then
bQ=.1
aX=bj==5 and 5 or 3
else
aX=aX-1
if aX<1then
bQ=0
end
end
for a=1,#aq do
am=aq[a]for n=1,#am do
ak=am[n]_=ak[1]if _>(2^15)then
_=ag[_-(2^15)]for h=1,6 do
_[h]=ak[h+1]end
elseif _<0 then
while-_>#u do
u[#u+1]=N
end
bR.remove(u,-_)else
if not u[_]then
u[_]={}end
_=u[_]for h=1,8 do
_[c[19][1][h]]=ak[h+1]end
_[15]=0
_[7]=aU(#c[7],_)_[8]=bg(_[7])end
end
end
aq={}for a=1,#c[6]do
ba[a]={}end
for a=1,#u do
_=u[a]if _ then
if aC then
_[7]=aU(#c[7],_)_[8]=bg(_[7])_[9]=ag[_[8]][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
end
bp=0
for n,d in aQ({1,2,9})do
_[d]=_[d]+_[d+10]bp=bp+_[d+10]end
if bp~=0then
_[7]=aU(#c[7],_)_[8]=bg(_[7])end
_[15]=_[15]+1
_[20]=bq(_,g[1])P=c[16][_[6]]if P~=nil then
if _[15]>=P[2]and P[2]~=-1 then
_[6]=P[4]_[15]=0
end
end
ba[_[7]][#ba[_[7]]+1]=a
end
end
aC=N
_=u[1]g[1]={_[1],_[2]}g[2]=_[9]+41
g[3]=_[3]aB={}bn(#c[7])aF={}o={}aR={}aI={}Y={}aa={}aK={}bu=M
for a=0,M-1 do
aF[a],Y[a],aa[a]=#c[6]+2,s+1,-s
end
a=1
while a<=#aB and bu>0 do
_=c[6][aB[a]]aR[a]={}aI[a]={}o[a]={}aK[a]=ba[aB[a]]bR.sort(aK[a],function(b,k)return u[b][20]>u[k][20]end)for n=_[2],_[1]+_[2]-1 do
X=c[5][n]B=c[2][X[4]]bV,cd=c[4][X[1]],c[4][X[2]]aW,c_=sub(bV,g[1]),sub(cd,g[1])bZ=aM(aW)F,aO=bx(bZ-g[3]),bx(aM(c_)-g[3])if D(F)<90 or D(aO)<90 then
af,ah=bw(F,-K,K),bw(aO,-K,K)if D(F)>=90 or D(aO)>=90 then
cc=bC(aW,c_)if D(F)>=90 then
if cc>0 then af=-K else af=K end
else
if cc<0 then ah=-K else ah=K end
end
end
l,m=aw(tan(af)/O*C),aw(tan(ah)/O*C)if l~=m then
p,ay=bq(g[1],bV),bq(g[1],cd)aJ=X[3]+90
ca=aJ-bZ
cC=p*sin(ca)b_=(p*cos(ca))if F~=af then
p=b_/cos(aJ-(af+g[3]))end
if aO~=ah then
ay=b_/cos(aJ-(ah+g[3]))end
p,ay=p*cos(af),ay*cos(ah)h=X[5]+6
cL=(l>m)if cL and B[h]~=0 then
ao=B[3]&4>0
if ao then
U,ad=ag[c[3][B[6]][6]],ag[c[3][B[7]][6]]end
al=c[3][B[h]]cM={al[3],al[4],al[5]}H,bY,bM=ag[al[6]]for j,d in aQ(cM)do
an=d>0
ax=R
if(an or(j==3 and not(bY and bM)))and(j==3 or ao)then
cf=N
bL=0
if j<3 then
cf=j==1 and E(U[4],ad[4])==0
z,w=U[3-j],ad[3-j]ax=(z<w)~=(j==2)~=(h==6)and z~=w and U~=ad
z,w=v(z,w),E(z,w)if ax then
if j==1then
bY=R
else
bM=R
bL=B[3]&16>0 and E(U[2],ad[2])-w or 0
end
end
else
if ao then
z,w=E(U[1],ad[1]),v(U[2],ad[2])ax=U~=ad
else
z,w=H[1],H[2]end
end
z,w=z-g[2],w-g[2]cm,bJ=z*aN,w*aN
if(ax or an)and not cf then
bE=X[6]-al[1]if B[4]==48 then
bE=bE-aP
end
cK,cv=cm/p,bJ/p
cJ,cI=cm/ay,bJ/ay
cp=0
ar=N
if an then
_=c[21][d][4]if(X[4]==cq or cj==B[4]or B[8])and _>0then
d=_
end
az=c[21][d][3]r=1
if(j==3 and B[3]&16>0)or(j==1 and B[3]&8==0)then
r=-1
end
end
for h=l,m,-1 do
cy=bU[h]aE=(aJ-g[3])-cy
f=C-h
bK=N
if f>=0 and f<=M-1 then
if a<aF[f]then
aL=(h-l)/(m-l)J,I=(cK*(1-aL)+cJ*aL),(cv*(1-aL)+cI*aL)if D(I+J)-(I-J)<ai then
if an then
if J~=I then
bK=R
co=b_*tan(aE)L=v(((D(co)+D(b_))//aH)+1,4)bs=v(bt(ac(L/cos(aE))),16)L=bt(L)bi=ac((E(co-cC,0)-bE)/(az*bs))*bs
bO={f,s-J,s-I,d,bi,w-z,H[5],al[2]+bL,R,az*L,L,r,not ar,j==3 and ao}if bi>cp or(not ar)or h==m then
cp=bi-1+bs
ar=R
o[a][#o[a]+1]=bO
end
cx=bO
end
end
if ax then
if j~=2 then
if I<Y[f]then
aI[a][#aI[a]+1]={f,E(I,aa[f]),Y[f],H}end
if j==3then V=I else V=J end
if Y[f]>V then Y[f]=V end
end
if j~=1 then
if J>aa[f]then
aR[a][#aR[a]+1]={f,aa[f],v(J,Y[f]),H}end
if j==3then V=J else V=I end
if aa[f]<V then aa[f]=V end
end
if(Y[f]<=aa[f])or(j==3 and(not ao)and an)then
aF[f]=a
bu=bu-1
end
end
end
end
end
if(not bK)and ar then
ar=N
o[a][#o[a]+1]=cx
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
function onDraw()aG=cl
local cb,bk,aj,cQ=aG.drawTriangleF,aG.drawRectF,aG.setColor,aG.drawText
bD=bD+1
cw={aR,aI}if bD<=1 then
if aT then
e=c[24][c[19][8][aD-3]]Z,ap=e[1],e[2]A=M/ceil(Z*O)cr=A*1
for a=0,ceil(Z*O),1 do
l=(Z/2-a-1+g[3]/90*Z)%Z
m=(l%1-1)*A
l=ac(l)*ap
for n=0,ap-1,1 do
S=e[5+n+l]i=c[20][S]aj(i[1],i[2],i[3])bk(a*A+m,n*A,cr,cr)end
end
for a=#o,1,-1 do
for n=1,#o[a]do
d=o[a][n]if d[9]or d[13]then
if d[9]then
T=o[a][n+1]else
T=d
end
e=c[21][d[4]]e=c[21][d[4]+(bX%e[5])]r=d[12]W=v(r,0)f=d[1]m=T[1]bN=d[2-W]cN=T[2-W]h=d[3+W]bv=T[3+W]if not T[9]then m=m+1 end
aZ(d[7])cO=r*(d[2]-d[3])*d[10]/d[6]cu=r*(T[2]-T[3])*d[10]/T[6]ck=r>0 and v or E
by=0
while h*r<bN*r and(by<e[2]or not d[14])do
ci=ck(h+cO,bN)be=ck(bv+cu,cN)S=e[7+((W*d[11]+d[8]//e[3])%e[2])+e[2]*(d[5]%e[1])]i=c[20][S]if i then
aj(i[1]*q,i[2]*q,i[3]*q)cb(f,h,f,ci,m,be)cb(f,h,m,bv,m,be)end
h=ci
bv=be
W=W+r
by=by+d[11]end
end
end
for b=1,2 do
_=cw[b]bH={}au,as,bA=ai,-ai
for n,d in aQ(_[a])do
au=v(au,d[2])as=E(as,d[3])bA=d
e=c[22][d[4][b+2]]if e and not cn then
aZ(d[4][5])i=c[20][e[5]]aj(i[1]*q,i[2]*q,i[3]*q)cl.drawLine(d[1],s-d[2],d[1],ac(s-d[3]-1))end
end
if bA and cn then
H=bA[4]ct=(H[b]-g[2])bd=cos(g[3])br=sin(g[3])for aA=ac(au+s),ceil(as+s)do
ae=aN*ct/(s-aA)cg=bd*ae-g[1][1]ch=br*ae-g[1][2]bG=-br*ae+cg
bW=bd*ae+ch
cH=br*ae+cg
cE=-bd*ae+ch
cs=(cH-bG)/M
cF=(cE-bW)/M
bH[aA]={cs,cF,bG,bW}end
for n,d in aQ(_[a])do
if H[b+2]~=0 then
aZ(H[5])k=H[b+2]e=c[22][k]e=c[22][k+(bX%e[4])]f=d[1]bP=C-(C-f)*O
au,as=ac(d[2]+s),ceil(d[3]+s)az=e[3]for aA=au,as do
aY=bH[aA]cG=(aY[3]+aY[1]*bP)//az
cB=(aY[4]+aY[2]*bP)//az
S=6+(cB%e[1])+e[1]*(cG%e[2])i=c[20][e[S]]if i then
aj(i[1]*q,i[2]*q,i[3]*q)bk(f,-aA+ai,1,1)end
end
end
end
end
end
for n=1,#aK[a]do
_=u[aK[a][n]]if _[6]~=0 then
aW=sub(_,g[1])p=_[20]if p>1 then
F=bx(aM(aW)-g[3])p=p*cos(F)if D(F)<90 then
l=C-aw(tan(F)/O*C)aE=aw((Q+F+g[3]-_[3])/360*8)P=c[16][_[6]][1]if P~=0 and _[6]~=1 then
e=c[17][D(P)][aE%8+1]r=e<0 and-1 or 1
e=D(e)if e>0 then
e=c[23][e]Z,ap=e[1],e[2]L=v(bt(p//aH+1),8)A=C/(O*p)aS=A*bf
J=s+(g[2]-_[9])/p*aN
I=J-e[5]*aS
m=l-r*e[4]*A
A,aS=A*e[3],aS*e[3]aZ(ag[_[8]][5])q=P>0 and q or 1
bS=A*L
cD=bS*bf
cA=_[4]and c[15][_[4]][23]&8>0
for h=0,Z-1,L do
l=m+h*A*r
if a<=aF[bw(aw(l),0,M-1)]then
for j=0,ap-1,L do
S=e[7+j+h*ap]if S~=0 then
if cA then
bm=bm%50+1
aj(0,0,0,v(75*c[13][2][bm],255))else
i=c[20][S]aj(i[1]*q,i[2]*q,i[3]*q)end
bk(l,I+j*aS,bS,cD)end
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
