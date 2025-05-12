cP=""

Q=180
cj=screen
aK=ipairs
bK=table
cl=input
v=math
y=v.max
m=v.min
C=v.abs
al=v.floor
ceil=v.ceil
sqrt=v.sqrt
E=cl.getNumber
bq=cl.getBool
pi=v.pi
O=false
M=true
ba=string
function bc(c,k)return c[1]*k[2]-c[2]*k[1]end
function sub(c,k)return{(c[1]-k[1]),(c[2]-k[2])}end
function bf(c)return((c+Q)%360)-Q end
function sin(c)return v.sin(c/Q*pi)end
function cos(c)return v.cos(c/Q*pi)end
function tan(c)return v.tan(c/Q*pi)end
function cN(c)return v.atan(c)*Q/pi end
function aN(c)return v.atan(c[2],c[1])*Q/pi end
function bk(c,k,_)return m(y(k,c),_)end
function au(c)return al(c+.5)end
function bi(c,k)return sqrt(((c[1]-k[1])^2)+((c[2]-k[2])^2))end
function bb(c)c=c-1
c=c|(c>>1)c=c|(c>>2)c=c|(c>>4)return c+1
end
b={}bs=1
ay=3
aZ=O
at=M
f={{0,0},0,0}L=288
x=L//2
ah=128
t=ah//2
aT={}aY=400
cf=100
cM=0
ax={}aW=32768
bD=3002
bp=0
aU=0
aI=0
bt=1.2
K=52
N=tan(K)aP=t*bt*L/ah/N
V=1
bG={}for a=-x,x do bG[a]=aN({1,a/x*N})end
function bl(a)if a<aW then
local s,bd=b[7][a]bd=0<bc({s[3],s[4]},sub(f[1],s))and 8 or 7
bl(s[bd])bl(s[15-bd])else
aB[#aB+1]=a-aW
end
end
function aR(a,c)if a<aW then
s=b[7][a]return aR(s[0<bc({s[3],s[4]},sub(c,s))and 8 or 7],c)else
return a-aW
end
end
function bm(c)s=b[5][b[6][c][2]]return b[3][b[2][s[4]][s[5]+6]][6]end
function onTick()bn=0
for n=1,3 do
if bq(9)and(not aZ)or not b[21]then
bj=property.getText(bs..cP)if bj~=cP then
a=1
A=cP
_=ba.sub(bj,a,a)while _~=cPdo
k=ba.byte(_)if k>64 or _==cPthen
A=(A..(k-65))+0
if V==1then
bQ=A
if b[A]==cO then
b[A]={}end
V=2
elseif V==2then
ct=A
aA=0
V=3
elseif V==3then
bv=A
V=4
else
if aA==0then
aA=ct
bv=bv-1
ak={}b[bQ][#b[bQ]+1]=ak
end
ak[#ak+1]=A
aA=aA-1
if y(aA,bv)==0then
V=1
end
end
A=cP
else
A=A.._
end
a=a+1
_=ba.sub(bj,a,a)end
bs=bs+1
else
aZ=M
end
end
end
if aZ then
if E(9)>0 then
at=M
ay=E(9)end
if cf>0 and not at then
ai={}ax[#ax+1]=ai
aq=5
_=E(aq)while _~=0 do
W={}ai[#ai+1]=W
for a=0,8 do
W[a+1]=E(aq+a)end
aq=aq+9
_=E(aq)end
end
if bq(1)then
bY=0
bu=E(1)cf=E(3)aI=aI+1
bJ=aI//10
if at then
for a=1,10 do
b[a]=b[a+10*ay]end
for a=1,#b[8]do
b[8][a][5]=b[8][a][5]/255
end
ay=ay+1
end
if E(2)>0 then
_=b[2][E(2)]if _ then
c=_[4]if c==3008 then
ck=_[5]==1
elseif c>3004 then
aY=y(aY+3*(_[4]-3006),1)elseif c>3000 then
bD=_[4]end
bY=E(2)end
end
if bq(3)and bu~=1 and bu~=3 then
ar=.1
aU=bu==5 and 5 or 3
else
aU=aU-1
if aU<1then
ar=0
end
end
for a=1,#ax do
ai=ax[a]for n=1,#ai do
W=ai[n]_=W[1]if _>(2^15)then
_=b[8][_-(2^15)]_[1]=W[2]_[2]=W[3]elseif _<0 then
while-_>#b[1]do
b[1][#b[1]+1]=O
end
bK.remove(b[1],-_)else
if not b[1][_]then
b[1][_]={}end
_=b[1][_]for i=1,8 do
_[b[19][1][i]]=W[i+1]end
_[15]=0
_[7]=aR(#b[7],_)_[8]=bm(_[7])end
end
end
ax={}for a=1,#b[6]do
aT[a]={}end
for a=1,#b[1]do
_=b[1][a]if _ then
if at then
_[7]=aR(#b[7],_)_[8]=bm(_[7])_[9]=b[8][_[8]][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
if _[4]==1 then
cC=a
end
end
bB=0
for n,d in aK({1,2,9})do
_[d]=_[d]+_[d+10]bB=bB+_[d+10]end
if bB~=0then
_[7]=aR(#b[7],_)_[8]=bm(_[7])end
_[15]=_[15]+1
_[20]=bi(_,f[1])R=b[16][_[6]]if R~=nil then
if _[15]>=R[2]and R[2]~=-1 then
_[6]=R[4]_[15]=0
end
end
aT[_[7]][#aT[_[7]]+1]=a
end
end
at=O
_=b[1][cC]f[1]={_[1],_[2]}f[2]=_[9]+41
f[3]=_[3]aB={}bl(#b[7])aV={}r={}aF={}b_={}aa={}U={}aS={}bg=L
for a=0,L-1 do
aV[a],aa[a],U[a]=#b[6]+2,t+1,-t
end
a=1
while a<=#aB and bg>0 do
_=b[6][aB[a]]aF[a]={}b_[a]={}r[a]={}aS[a]=aT[aB[a]]bK.sort(aS[a],function(c,k)return b[1][c][20]>b[1][k][20]end)for n=_[2],_[1]+_[2]-1 do
X=b[5][n]D=b[2][X[4]]c_,bE=b[4][X[1]],b[4][X[2]]aJ,bU=sub(c_,f[1]),sub(bE,f[1])bM=aN(aJ)G,aG=bf(bM-f[3]),bf(aN(bU)-f[3])if C(G)<90 or C(aG)<90 then
ae,aj=bk(G,-K,K),bk(aG,-K,K)if C(G)>=90 or C(aG)>=90 then
cm=bc(aJ,bU)if C(G)>=90 then
if cm>0 then ae=-K else ae=K end
else
if cm<0 then aj=-K else aj=K end
end
end
l,p=au(tan(ae)/N*x),au(tan(aj)/N*x)if l~=p then
q,aD=bi(f[1],c_),bi(f[1],bE)aO=X[3]+90
bX=aO-bM
cn=q*sin(bX)aH=(q*cos(bX))if G~=ae then
q=aH/cos(aO-(ae+f[3]))end
if aG~=aj then
aD=aH/cos(aO-(aj+f[3]))end
q,aD=q*cos(ae),aD*cos(aj)i=X[5]+6
cz=(l>p)if cz and D[i]~=0 then
az=D[3]&4>0
if az then
Z,T=b[8][b[3][D[6]][6]],b[8][b[3][D[7]][6]]end
ad=b[3][D[i]]co={ad[3],ad[4],ad[5]}I,bN,bT=b[8][ad[6]]for j,d in aK(co)do
ao=d>0
am=M
if(ao or(j==3 and not(bN and bT)))and(j==3 or az)then
cc=O
cg=0
if j<3 then
cc=j==1 and y(Z[4],T[4])==0
z,w=Z[3-j],T[3-j]am=(z<w)~=(j==2)~=(i==6)and z~=w and Z~=T
z,w=m(z,w),y(z,w)if am then
if j==1then
bN=M
else
bT=M
cg=D[3]&16>0 and y(Z[2],T[2])-w or 0
end
end
else
if az then
z,w=y(Z[1],T[1]),m(Z[2],T[2])am=Z~=T
else
z,w=I[1],I[2]end
end
z,w=z-f[2],w-f[2]bR,bS=z*aP,w*aP
if(am or ao)and not cc then
bh=X[6]-ad[1]if D[4]==48 then
bh=bh-aI
end
cp,cu=bR/q,bS/q
cr,cq=bR/aD,bS/aD
ch=0
aC=O
if ao then
_=b[21][d][4]if(X[4]==bY or bD==D[4])and _>0then
d=_
end
aw=b[21][d][3]u=1
if(j==3 and D[3]&16>0)or(j==1 and D[3]&8==0)then
u=-1
end
end
for i=l,p,-1 do
cJ=bG[i]aQ=(aO-f[3])-cJ
g=x-i
bF=O
if g>=0 and g<=L-1 then
if a<aV[g]then
aE=(i-l)/(p-l)F,H=(cp*(1-aE)+cr*aE),(cu*(1-aE)+cq*aE)if C(H+F)-(H-F)<ah then
if ao then
if F~=H then
bF=M
bH=aH*tan(aQ)J=m(((C(bH)+C(aH))//aY)+1,4)bx=m(bb(al(J/cos(aQ))),16)J=bb(J)bw=al((y(bH-cn,0)-bh)/(aw*bx))*bx
bZ={g,t-F,t-H,d,bw,w-z,I[5],ad[2]+cg,M,aw*J,J,u,not aC,j==3 and az}if bw>ch or(not aC)or i==p then
ch=bw-1+bx
aC=M
r[a][#r[a]+1]=bZ
end
cw=bZ
end
end
if am then
if j~=2 then
if H<aa[g]then
b_[a][#b_[a]+1]={g,y(H,U[g]),aa[g],I}end
if j==3then Y=H else Y=F end
if aa[g]>Y then aa[g]=Y end
end
if j~=1 then
if F>U[g]then
aF[a][#aF[a]+1]={g,U[g],m(F,aa[g]),I}end
if j==3then Y=F else Y=H end
if U[g]<Y then U[g]=Y end
end
if(aa[g]<=U[g])or(j==3 and(not az)and ao)then
aV[g]=a
bg=bg-1
end
end
end
end
end
if(not bF)and aC then
aC=O
r[a][#r[a]+1]=cw
r[a][#r[a]][9]=O
end
end
if#r[a]>0 then
r[a][#r[a]][9]=O
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
function onDraw()aX=cj
local bP,br,ag,cL=aX.drawTriangleF,aX.drawRectF,aX.setColor,aX.drawText
bn=bn+1
cB={aF,b_}if bn<=1 then
if aZ then
e=b[24][b[19][8][ay-3]]ac,as=e[1],e[2]B=L/ceil(ac*N)ca=B*1
for a=0,ceil(ac*N),1 do
l=(ac/2-a-1+f[3]/90*ac)%ac
p=(l%1-1)*B
l=al(l)*as
for n=0,as-1,1 do
S=e[5+n+l]h=b[20][S]ag(h[1],h[2],h[3])br(a*B+p,n*B,ca,ca)end
end
for a=#r,1,-1 do
for n=1,#r[a]do
d=r[a][n]if d[9]or d[13]then
if d[9]then
P=r[a][n+1]else
P=d
end
e=b[21][d[4]]e=b[21][d[4]+(bJ%e[5])]u=d[12]ab=m(u,0)g=d[1]p=P[1]ce=d[2-ab]cA=P[2-ab]i=d[3+ab]bo=P[3+ab]if not P[9]then p=p+1 end
o=m(d[7]+ar,1)^2.2
cE=u*(d[2]-d[3])*d[10]/d[6]cI=u*(P[2]-P[3])*d[10]/P[6]ak=u>0 and m or y
by=0
while i*u<ce*u and(by<e[2]or not d[14])do
bV=ak(i+cE,ce)bz=ak(bo+cI,cA)S=e[7+((ab*d[11]+d[8]//e[3])%e[2])+e[2]*(d[5]%e[1])]h=b[20][S]if h then
ag(h[1]*o,h[2]*o,h[3]*o)bP(g,i,g,bV,p,bz)bP(g,i,p,bo,p,bz)end
i=bV
bo=bz
ab=ab+u
by=by+d[11]end
end
end
for c=1,2 do
_=cB[c]cd={}an,ap,be=ah,-ah
for n,d in aK(_[a])do
an=m(an,d[2])ap=y(ap,d[3])be=d
e=b[22][d[4][c+2]]if e and not ck then
o=m(d[4][5]+ar,1)^2.2
h=b[20][e[5]]ag(h[1]*o,h[2]*o,h[3]*o)cj.drawLine(d[1],t-d[2],d[1],t-d[3]-1.5)end
end
if be and ck then
I=be[4]cD=(I[c]-f[2])bC=cos(f[3])bA=sin(f[3])for av=al(an+t),ceil(ap+t)do
af=aP*cD/(t-av)ci=bC*af-f[1][1]bO=bA*af-f[1][2]cb=-bA*af+ci
bI=bC*af+bO
cs=bA*af+ci
cG=-bC*af+bO
cK=(cs-cb)/L
cF=(cG-bI)/L
cd[av]={cK,cF,cb,bI}end
for n,d in aK(_[a])do
if I[c+2]~=0 then
o=m(I[5]+ar,1)^2.2
k=I[c+2]e=b[22][k]e=b[22][k+(bJ%e[4])]g=d[1]bL=x-(x-g)*N
an,ap=al(d[2]+t),ceil(d[3]+t)aw=e[3]for av=an,ap do
aL=cd[av]cv=(aL[3]+aL[1]*bL)//aw
cH=(aL[4]+aL[2]*bL)//aw
S=6+(cH%e[1])+e[1]*(cv%e[2])h=b[20][e[S]]if h then
ag(h[1]*o,h[2]*o,h[3]*o)br(g,-av+ah,1,1)end
end
end
end
end
end
for n=1,#aS[a]do
_=b[1][aS[a][n]]if _[6]~=0 then
aJ=sub(_,f[1])q=_[20]if q>1 then
G=bf(aN(aJ)-f[3])q=q*cos(G)if C(G)<90 then
l=x-au(tan(G)/N*x)aQ=au((Q+G+f[3]-_[3])/360*8)R=b[16][_[6]][1]if R~=0 and _[6]~=1 then
e=b[17][C(R)][aQ%8+1]u=e<0 and-1 or 1
e=C(e)if e>0 then
e=b[23][e]ac,as=e[1],e[2]J=m(bb(q//aY+1),8)B=x/(N*q)aM=B*bt
F=t+(f[2]-_[9])/q*aP
H=F-e[5]*aM
p=l-u*e[4]*B
B,aM=B*e[3],aM*e[3]o=R>0 and m(b[8][_[8]][5]+ar,1)^2.2 or 1
bW=B*J
cy=bW*bt
cx=_[4]and b[15][_[4]][23]&8>0
for i=0,ac-1,J do
l=p+i*B*u
if a<=aV[bk(au(l),0,L-1)]then
for j=0,as-1,J do
S=e[7+j+i*as]if S~=0 then
if cx then
bp=bp%50+1
ag(0,0,0,m(75*b[13][2][bp],255))else
h=b[20][S]ag(h[1]*o,h[2]*o,h[3]*o)end
br(l,H+j*aM,bW,cy)end
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
