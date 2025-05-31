cU=""

P=180
cm=screen
aI=ipairs
bG=table
bI=input
w=math
B=w.max
v=w.min
E=w.abs
ac=w.floor
ceil=w.ceil
sqrt=w.sqrt
I=bI.getNumber
bp=bI.getBool
pi=w.pi
M=false
R=true
bD=string
function bo(b,n)return b[1]*n[2]-b[2]*n[1]end
function sub(b,n)return{(b[1]-n[1]),(b[2]-n[2])}end
function bn(b)return((b+P)%360)-P end
function sin(b)return w.sin(b/P*pi)end
function cos(b)return w.cos(b/P*pi)end
function tan(b)return w.tan(b/P*pi)end
function cR(b)return w.atan(b)*P/pi end
function aS(b)return w.atan(b[2],b[1])*P/pi end
function bl(b,n,_)return v(B(n,b),_)end
function ay(b)return ac(b+.5)end
function bb(b,n)return sqrt(((b[1]-n[1])^2)+((b[2]-n[2])^2))end
function bg(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
function aY(b)o=v(b/255+bF,1)^2.2 end
c={}bx=1
aD=3
aT=M
ao=R
g={{0,0},0,0}L=288
D=L//2
ah=128
r=ah//2
aE={}ba=400
bR=200
bK=100
cS=0
av={}aQ=32768
bM=3002
by=0
aH=0
aX=0
bc=1.2
N=52
K=tan(N)aV=r*bc*L/ah/K
T=1
cf={}for a=-D,D do cf[a]=aS({1,a/D*K})end
function bd(a)if a<aQ then
local u,bv=c[7][a]bv=0<bo({u[3],u[4]},sub(g[1],u))and 8 or 7
bd(u[bv])bd(u[15-bv])else
au[#au+1]=a-aQ
end
end
function aU(a,b)if a<aQ then
u=c[7][a]return aU(u[0<bo({u[3],u[4]},sub(b,u))and 8 or 7],b)else
return a-aQ
end
end
function bj(b)u=c[5][c[6][b][2]]return c[3][c[2][u[4]][u[5]+6]][6]end
function onTick()bz=0
for m=1,3 do
if bp(9)and(not aT)or not c[21]then
bw=property.getText(bx)a=1
A=cU
_=bD.sub(bw,a,a)while _~=cUdo
cb=bD.byte(_)if cb>64then
A=(A..cb-65)+0
if T==1then
cj=A
c[A]=c[A]or{}elseif T==2then
cI=A
az=0
elseif T==3then
bm=A
else
if az==0then
az=cI
bm=bm-1
be={}c[cj][#c[cj]+1]=be
end
be[#be+1]=A
az=az-1
T=B(az,bm)>0 and T-1 or 0
end
T=T+1
A=cU
else
A=A.._
end
a=a+1
_=bD.sub(bw,a,a)end
bx=bx+1
aT=bw==cU
end
end
if aT then
if I(9)>0 then
ao=R
aD=I(9)end
if bK>0 and not ao then
ad={}av[#av+1]=ad
ap=5
_=I(ap)while _~=0 do
ae={}ad[#ad+1]=ae
for a=0,8 do
ae[a+1]=I(ap+a)end
ap=ap+9
_=I(ap)end
end
if bp(1)then
bN=0
bt=I(1)bK=I(3)aX=aX+1
bZ=aX//10
if ao then
for a=1,10 do
c[a]=c[a+10*aD]end
s=c[1]ak=c[8]aD=aD+1
end
if I(2)>0 then
_=c[2][I(2)]if _ then
b=_[4]if b>0 then
if b==3008 then
bY=_[5]==1
elseif b>3004 then
ba=B(ba+3*(_[4]-3006),1)bR=ba/2
elseif b>3000 then
bM=_[4]end
bN=I(2)if b<3000 and c[9][_[5]][7]==0then
_[8]=1
end
end
end
end
if bp(3)and bt~=1 and bt~=3 then
bF=.1
aH=bt==5 and 5 or 3
else
aH=aH-1
if aH<1then
bF=0
end
end
for a=1,#av do
ad=av[a]for m=1,#ad do
ae=ad[m]_=ae[1]if _>(2^15)then
_=ak[_-(2^15)]for h=1,6 do
_[h]=ae[h+1]end
elseif _<0 then
while-_>#s do
s[#s+1]=M
end
bG.remove(s,-_)else
if not s[_]then
s[_]={}end
_=s[_]for h=1,8 do
_[c[19][1][h]]=ae[h+1]end
_[15]=0
_[7]=aU(#c[7],_)_[8]=bj(_[7])end
end
end
av={}for a=1,#c[6]do
aE[a]={}end
for a=1,#s do
_=s[a]if _ then
if ao then
_[7]=aU(#c[7],_)_[8]=bj(_[7])_[9]=ak[_[8]][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
end
bs=0
for m,d in aI({1,2,9})do
_[d]=_[d]+_[d+10]bs=bs+_[d+10]end
if bs~=0then
_[7]=aU(#c[7],_)_[8]=bj(_[7])end
_[15]=_[15]+1
_[20]=bb(_,g[1])O=c[16][_[6]]if O~=nil then
if _[15]>=O[2]and O[2]~=-1 then
_[6]=O[4]_[15]=0
end
end
aE[_[7]][#aE[_[7]]+1]=a
end
end
ao=M
_=s[1]g[1]={_[1],_[2]}g[2]=_[9]+41
g[3]=_[3]au={}bd(#c[7])aP={}p={}aF={}b_={}V={}Z={}aM={}bA=L
for a=0,L-1 do
aP[a],V[a],Z[a]=#c[6]+2,r+1,-r
end
a=1
while a<=#au and bA>0 do
_=c[6][au[a]]aF[a]={}b_[a]={}p[a]={}aM[a]=aE[au[a]]bG.sort(aM[a],function(b,n)return s[b][20]>s[n][20]end)for m=_[2],_[1]+_[2]-1 do
aa=c[5][m]y=c[2][aa[4]]cs,bL=c[4][aa[1]],c[4][aa[2]]aL,co=sub(cs,g[1]),sub(bL,g[1])bU=aS(aL)G,aW=bn(bU-g[3]),bn(aS(co)-g[3])if E(G)<90 or E(aW)<90 then
aj,ai=bl(G,-N,N),bl(aW,-N,N)if E(G)>=90 or E(aW)>=90 then
cr=bo(aL,co)if E(G)>=90 then
if cr>0 then aj=-N else aj=N end
else
if cr<0 then ai=-N else ai=N end
end
end
l,k=ay(tan(aj)/K*D),ay(tan(ai)/K*D)if l~=k then
q,aC=bb(g[1],cs),bb(g[1],bL)aR=aa[3]+90
bJ=aR-bU
cO=q*sin(bJ)aO=(q*cos(bJ))if G~=aj then
q=aO/cos(aR-(aj+g[3]))end
if aW~=ai then
aC=aO/cos(aR-(ai+g[3]))end
q,aC=q*cos(aj),aC*cos(ai)h=aa[5]+6
cE=(l>k)if cE and y[h]~=0 then
aw=y[3]&4>0
if aw then
X,ab=ak[c[3][y[6]][6]],ak[c[3][y[7]][6]]end
al=c[3][y[h]]cM={al[3],al[4],al[5]}H,c_,bO=ak[al[6]]for j,d in aI(cM)do
ar=d>0
am=R
if(ar or(j==3 and not(c_ and bO)))and(j==3 or aw)then
bP=M
ca=0
if j<3 then
bP=j==1 and B(X[4],ab[4])==0
z,x=X[3-j],ab[3-j]am=(z<x)~=(j==2)~=(h==6)and z~=x and X~=ab
z,x=v(z,x),B(z,x)if am then
if j==1then
c_=R
else
bO=R
ca=y[3]&16>0 and B(X[2],ab[2])-x or 0
end
end
else
if aw then
z,x=B(X[1],ab[1]),v(X[2],ab[2])am=X~=ab
else
z,x=H[1],H[2]end
end
z,x=z-g[2],x-g[2]cp,ce=z*aV,x*aV
if(am or ar)and not bP then
bB=aa[6]-al[1]if y[4]==48 then
bB=bB-aX
end
cx,cK=cp/q,ce/q
cL,cD=cp/aC,ce/aC
bE=0
ax=M
if ar then
_=c[21][d][4]if(aa[4]==bN or bM==y[4]or y[8])and _>0then
d=_
end
aq=c[21][d][3]t=1
if(j==3 and y[3]&16>0)or(j==1 and y[3]&8==0)then
t=-1
end
end
for h=l,k,-1 do
cw=cf[h]aJ=(aR-g[3])-cw
f=D-h
bW=M
if f>=0 and f<=L-1 then
if a<aP[f]then
aN=(h-l)/(k-l)J,F=(cx*(1-aN)+cL*aN),(cK*(1-aN)+cD*aN)if E(F+J)-(F-J)<ah then
if ar then
if J~=F then
bW=R
bT=aO*tan(aJ)aA=v(((E(bT)+E(aO))//bR)+1,8)br=v(bg(ac(aA/cos(aJ))),16)aA=bg(aA)ck=ac((B(bT-cO,0)-bB)/(aq*br))ct=ck*br
bQ={f,r-J,r-F,d,ck,x-z,H[5],al[2]+ca,R,aq*aA,aA,t,not ax,j==3 and aw}if ct>bE or(not ax)or h==k then
bE=ct-1+br
ax=R
p[a][#p[a]+1]=bQ
end
cv=bQ
end
end
if am then
if j~=2 then
if F<V[f]then
b_[a][#b_[a]+1]={f,B(F,Z[f]),V[f],H}end
if j==3then W=F else W=J end
if V[f]>W then V[f]=W end
end
if j~=1 then
if J>Z[f]then
aF[a][#aF[a]+1]={f,Z[f],v(J,V[f]),H}end
if j==3then W=J else W=F end
if Z[f]<W then Z[f]=W end
end
if(V[f]<=Z[f])or(j==3 and(not aw)and ar)then
aP[f]=a
bA=bA-1
end
end
end
end
end
if(not bW)and ax then
ax=M
p[a][#p[a]+1]=cv
p[a][#p[a]][9]=M
end
end
if#p[a]>0 then
p[a][#p[a]][9]=M
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
function onDraw()aG=cm
local cd,bC,af,cT=aG.drawTriangleF,aG.drawRectF,aG.setColor,aG.drawText
cA={aF,b_}if aT then
e=c[24][c[19][8][aD-3]]U,an=e[1],e[2]C=L/ceil(U*K)cq=C*1
for a=0,ceil(U*K),1 do
l=(U/2-a-1+g[3]/90*U)%U
k=(l%1-1)*C
l=ac(l)*an
for m=0,an-1,1 do
Q=e[5+m+l]i=c[20][Q]af(i[1],i[2],i[3])bC(a*C+k,m*C,cq,cq)end
end
for a=#p,1,-1 do
for m=1,#p[a]do
d=p[a][m]if d[9]or d[13]then
if d[9]then
S=p[a][m+1]else
S=d
end
e=c[21][d[4]]e=c[21][d[4]+(bZ%e[5])*c[19][3][2]+c[19][12][d[11]]]t=d[12]Y=v(t,0)f=d[1]k=S[1]bX=d[2-Y]cy=S[2-Y]h=d[3+Y]bf=S[3+Y]if not S[9]then k=k+1 end
aY(d[7])cJ=t*(d[2]-d[3])*e[3]/d[6]cP=t*(S[2]-S[3])*e[3]/S[6]bV=t>0 and v or B
bk=0
while h*t<bX*t and(bk<e[2]or not d[14])do
bS=bV(h+cJ,bX)bi=bV(bf+cP,cy)Q=e[7+((Y+d[8]//e[3])%e[2])+e[2]*((d[5])%e[1])]i=c[20][Q]if i then
af(i[1]*o,i[2]*o,i[3]*o)cd(f,h,f,bS,k,bi)cd(f,h,k,bf,k,bi)end
h=bS
bf=bi
Y=Y+t
bk=bk+1
end
end
end
for b=1,2 do
_=cA[b]cl={}as,aB,bu=ah,-ah
for m,d in aI(_[a])do
as=v(as,d[2])aB=B(aB,d[3])bu=d
e=c[22][d[4][b+2]]if e and not bY then
aY(d[4][5])i=c[20][e[5]]af(i[1]*o,i[2]*o,i[3]*o)cm.drawLine(d[1],r-d[2],d[1],ac(r-d[3]-1))end
end
if bu and bY then
H=bu[4]cB=(H[b]-g[2])bh=cos(g[3])bq=sin(g[3])for at=ac(as+r),ceil(aB+r)do
ag=aV*cB/(r-at)cg=bh*ag-g[1][1]cc=bq*ag-g[1][2]ci=-bq*ag+cg
cn=bh*ag+cc
cG=bq*ag+cg
cH=-bh*ag+cc
cF=(cG-ci)/L
cQ=(cH-cn)/L
cl[at]={cF,cQ,ci,cn}end
for m,d in aI(_[a])do
if H[b+2]~=0 then
aY(H[5])n=H[b+2]e=c[22][n]e=c[22][n+(bZ%e[4])]f=d[1]bH=D-(D-f)*K
as,aB=ac(d[2]+r),ceil(d[3]+r)aq=e[3]for at=as,aB do
aK=cl[at]cN=(aK[3]+aK[1]*bH)//aq
cu=(aK[4]+aK[2]*bH)//aq
Q=6+(cu%e[1])+e[1]*(cN%e[2])i=c[20][e[Q]]if i then
af(i[1]*o,i[2]*o,i[3]*o)bC(f,-at+ah,1,1)end
end
end
end
end
end
for m=1,#aM[a]do
_=s[aM[a][m]]if _[6]~=0 then
aL=sub(_,g[1])q=_[20]if q>1 then
G=bn(aS(aL)-g[3])q=q*cos(G)if E(G)<90 then
l=D-ay(tan(G)/K*D)aJ=ay((P+G+g[3]-_[3]+bz*4)/360*8)O=c[16][_[6]][1]if O~=0 and _[6]~=1 then
e=c[17][E(O)][aJ%8+1]t=e<0 and-1 or 1
e=E(e)if e>0 then
e=c[23][e+c[19][12][v(bg(q//ba+1),8)]]U,an=e[1],e[2]C=D/(K*q)aZ=C*bc
J=r+(g[2]-_[9])/q*aV
F=J-e[5]*aZ
k=l-t*e[4]*C
C,aZ=C*e[3],aZ*e[3]aY(ak[_[8]][5])o=O>0 and o or 1
ch=C
cz=ch*bc
cC=_[4]and c[15][_[4]][23]&8>0
for h=0,U-1 do
l=k+h*C*t
if a<=aP[bl(ay(l),0,L-1)]then
for j=0,an-1 do
Q=e[7+j+h*an]if Q~=0 then
if cC then
by=by%50+1
af(0,0,0,v(75*c[13][2][by],255))else
i=c[20][Q]af(i[1]*o,i[2]*o,i[3]*o)end
bC(l,F+j*aZ,ch,cz)end
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
bz=bz+1
end
