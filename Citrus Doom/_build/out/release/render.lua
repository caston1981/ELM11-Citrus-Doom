cS=""

T=180
cf=screen
aL=ipairs
cm=table
bU=input
w=math
C=w.max
v=w.min
A=w.abs
ad=w.floor
ceil=w.ceil
sqrt=w.sqrt
F=bU.getNumber
bw=bU.getBool
pi=w.pi
L=false
R=true
bd=string
function bD(b,k)return b[1]*k[2]-b[2]*k[1]end
function sub(b,k)return{(b[1]-k[1]),(b[2]-k[2])}end
function bq(b)return((b+T)%360)-T end
function sin(b)return w.sin(b/T*pi)end
function cos(b)return w.cos(b/T*pi)end
function tan(b)return w.tan(b/T*pi)end
function cR(b)return w.atan(b)*T/pi end
function aP(b)return w.atan(b[2],b[1])*T/pi end
function bn(b,k,_)return v(C(k,b),_)end
function ax(b)return ad(b+.5)end
function bl(b,k)return sqrt(((b[1]-k[1])^2)+((b[2]-k[2])^2))end
function be(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
function aM(b)q=v(b/255+cr,1)^2.2 end
c={}bs=1
au=3
b_=L
ar=R
f={{0,0},0,0}N=288
E=N//2
ae=128
r=ae//2
aU={}aO=400
bV=100
cQ=0
az={}aZ=32768
cn=3002
bu=0
aH=0
aX=0
bt=1.2
O=52
K=tan(O)aN=r*bt*N/ae/K
W=1
bM={}for a=-E,E do bM[a]=aP({1,a/E*K})end
function bg(a)if a<aZ then
local t,by=c[7][a]by=0<bD({t[3],t[4]},sub(f[1],t))and 8 or 7
bg(t[by])bg(t[15-by])else
aB[#aB+1]=a-aZ
end
end
function aY(a,b)if a<aZ then
t=c[7][a]return aY(t[0<bD({t[3],t[4]},sub(b,t))and 8 or 7],b)else
return a-aZ
end
end
function bb(b)t=c[5][c[6][b][2]]return c[3][c[2][t[4]][t[5]+6]][6]end
function onTick()bo=0
for n=1,3 do
if bw(9)and(not b_)or not c[21]then
bz=property.getText(bs)a=1
z=cS
_=bd.sub(bz,a,a)while _~=cSdo
bN=bd.byte(_)if bN>64then
z=(z..bN-65)+0
if W==1then
c_=z
c[z]=c[z]or{}elseif W==2then
cO=z
ap=0
elseif W==3then
bE=z
else
if ap==0then
ap=cO
bE=bE-1
bm={}c[c_][#c[c_]+1]=bm
end
bm[#bm+1]=z
ap=ap-1
W=C(ap,bE)>0 and W-1 or 0
end
W=W+1
z=cS
else
z=z.._
end
a=a+1
_=bd.sub(bz,a,a)end
bs=bs+1
b_=bz==cS
end
end
if b_ then
if F(9)>0 then
ar=R
au=F(9)end
if bV>0 and not ar then
al={}az[#az+1]=al
ay=5
_=F(ay)while _~=0 do
ah={}al[#al+1]=ah
for a=0,8 do
ah[a+1]=F(ay+a)end
ay=ay+9
_=F(ay)end
end
if bw(1)then
bY=0
bC=F(1)bV=F(3)aX=aX+1
cq=aX//10
if ar then
for a=1,10 do
c[a]=c[a+10*au]end
s=c[1]am=c[8]au=au+1
end
if F(2)>0 then
_=c[2][F(2)]if _ then
b=_[4]if b>0 then
if b==3008 then
cb=_[5]==1
elseif b>3004 then
aO=C(aO+3*(_[4]-3006),1)elseif b>3000 then
cn=_[4]end
bY=F(2)if b<3000 and c[9][_[5]][7]==0then
_[8]=1
end
end
end
end
if bw(3)and bC~=1 and bC~=3 then
cr=.1
aH=bC==5 and 5 or 3
else
aH=aH-1
if aH<1then
cr=0
end
end
for a=1,#az do
al=az[a]for n=1,#al do
ah=al[n]_=ah[1]if _>(2^15)then
_=am[_-(2^15)]for h=1,6 do
_[h]=ah[h+1]end
elseif _<0 then
while-_>#s do
s[#s+1]=L
end
cm.remove(s,-_)else
if not s[_]then
s[_]={}end
_=s[_]for h=1,8 do
_[c[19][1][h]]=ah[h+1]end
_[15]=0
_[7]=aY(#c[7],_)_[8]=bb(_[7])end
end
end
az={}for a=1,#c[6]do
aU[a]={}end
for a=1,#s do
_=s[a]if _ then
if ar then
_[7]=aY(#c[7],_)_[8]=bb(_[7])_[9]=am[_[8]][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
end
bc=0
for n,d in aL({1,2,9})do
_[d]=_[d]+_[d+10]bc=bc+_[d+10]end
if bc~=0then
_[7]=aY(#c[7],_)_[8]=bb(_[7])end
_[15]=_[15]+1
_[20]=bl(_,f[1])S=c[16][_[6]]if S~=nil then
if _[15]>=S[2]and S[2]~=-1 then
_[6]=S[4]_[15]=0
end
end
aU[_[7]][#aU[_[7]]+1]=a
end
end
ar=L
_=s[1]f[1]={_[1],_[2]}f[2]=_[9]+41
f[3]=_[3]aB={}bg(#c[7])aS={}p={}aT={}aI={}U={}X={}aK={}bv=N
for a=0,N-1 do
aS[a],U[a],X[a]=#c[6]+2,r+1,-r
end
a=1
while a<=#aB and bv>0 do
_=c[6][aB[a]]aT[a]={}aI[a]={}p[a]={}aK[a]=aU[aB[a]]cm.sort(aK[a],function(b,k)return s[b][20]>s[k][20]end)for n=_[2],_[1]+_[2]-1 do
aa=c[5][n]y=c[2][aa[4]]bX,bI=c[4][aa[1]],c[4][aa[2]]aW,cg=sub(bX,f[1]),sub(bI,f[1])ca=aP(aW)I,aE=bq(ca-f[3]),bq(aP(cg)-f[3])if A(I)<90 or A(aE)<90 then
af,ak=bn(I,-O,O),bn(aE,-O,O)if A(I)>=90 or A(aE)>=90 then
cc=bD(aW,cg)if A(I)>=90 then
if cc>0 then af=-O else af=O end
else
if cc<0 then ak=-O else ak=O end
end
end
m,l=ax(tan(af)/K*E),ax(tan(ak)/K*E)if m~=l then
o,at=bl(f[1],bX),bl(f[1],bI)aV=aa[3]+90
bL=aV-ca
cw=o*sin(bL)aG=(o*cos(bL))if I~=af then
o=aG/cos(aV-(af+f[3]))end
if aE~=ak then
at=aG/cos(aV-(ak+f[3]))end
o,at=o*cos(af),at*cos(ak)h=aa[5]+6
cu=(m>l)if cu and y[h]~=0 then
aC=y[3]&4>0
if aC then
ab,Y=am[c[3][y[6]][6]],am[c[3][y[7]][6]]end
aj=c[3][y[h]]cL={aj[3],aj[4],aj[5]}J,cl,cj=am[aj[6]]for j,d in aL(cL)do
as=d>0
an=R
if(as or(j==3 and not(cl and cj)))and(j==3 or aC)then
bP=L
bK=0
if j<3 then
bP=j==1 and C(ab[4],Y[4])==0
D,x=ab[3-j],Y[3-j]an=(D<x)~=(j==2)~=(h==6)and D~=x and ab~=Y
D,x=v(D,x),C(D,x)if an then
if j==1then
cl=R
else
cj=R
bK=y[3]&16>0 and C(ab[2],Y[2])-x or 0
end
end
else
if aC then
D,x=C(ab[1],Y[1]),v(ab[2],Y[2])an=ab~=Y
else
D,x=J[1],J[2]end
end
D,x=D-f[2],x-f[2]ck,bF=D*aN,x*aN
if(an or as)and not bP then
bk=aa[6]-aj[1]if y[4]==48 then
bk=bk-aX
end
cN,cs=ck/o,bF/o
ct,cv=ck/at,bF/at
bW=0
aq=L
if as then
_=c[21][d][4]if(aa[4]==bY or cn==y[4]or y[8])and _>0then
d=_
end
aw=c[21][d][3]u=1
if(j==3 and y[3]&16>0)or(j==1 and y[3]&8==0)then
u=-1
end
end
for h=m,l,-1 do
cM=bM[h]aQ=(aV-f[3])-cM
g=E-h
bJ=L
if g>=0 and g<=N-1 then
if a<aS[g]then
aJ=(h-m)/(l-m)G,H=(cN*(1-aJ)+ct*aJ),(cs*(1-aJ)+cv*aJ)if A(H+G)-(H-G)<ae then
if as then
if G~=H then
bJ=R
bR=aG*tan(aQ)M=v(((A(bR)+A(aG))//aO)+1,4)bj=v(be(ad(M/cos(aQ))),16)M=be(M)bi=ad((C(bR-cw,0)-bk)/(aw*bj))*bj
bT={g,r-G,r-H,d,bi,x-D,J[5],aj[2]+bK,R,aw*M,M,u,not aq,j==3 and aC}if bi>bW or(not aq)or h==l then
bW=bi-1+bj
aq=R
p[a][#p[a]+1]=bT
end
cI=bT
end
end
if an then
if j~=2 then
if H<U[g]then
aI[a][#aI[a]+1]={g,C(H,X[g]),U[g],J}end
if j==3then ac=H else ac=G end
if U[g]>ac then U[g]=ac end
end
if j~=1 then
if G>X[g]then
aT[a][#aT[a]+1]={g,X[g],v(G,U[g]),J}end
if j==3then ac=G else ac=H end
if X[g]<ac then X[g]=ac end
end
if(U[g]<=X[g])or(j==3 and(not aC)and as)then
aS[g]=a
bv=bv-1
end
end
end
end
end
if(not bJ)and aq then
aq=L
p[a][#p[a]+1]=cI
p[a][#p[a]][9]=L
end
end
if#p[a]>0 then
p[a][#p[a]][9]=L
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
function onDraw()aF=cf
local co,bA,ai,cP=aF.drawTriangleF,aF.drawRectF,aF.setColor,aF.drawText
bo=bo+1
cB={aT,aI}if bo<=1 then
if b_ then
e=c[24][c[19][8][au-3]]Z,aA=e[1],e[2]B=N/ceil(Z*K)ch=B*1
for a=0,ceil(Z*K),1 do
m=(Z/2-a-1+f[3]/90*Z)%Z
l=(m%1-1)*B
m=ad(m)*aA
for n=0,aA-1,1 do
Q=e[5+n+m]i=c[20][Q]ai(i[1],i[2],i[3])bA(a*B+l,n*B,ch,ch)end
end
for a=#p,1,-1 do
for n=1,#p[a]do
d=p[a][n]if d[9]or d[13]then
if d[9]then
P=p[a][n+1]else
P=d
end
e=c[21][d[4]]e=c[21][d[4]+(cq%e[5])]u=d[12]V=v(u,0)g=d[1]l=P[1]cp=d[2-V]cJ=P[2-V]h=d[3+V]bx=P[3+V]if not P[9]then l=l+1 end
aM(d[7])cD=u*(d[2]-d[3])*d[10]/d[6]cH=u*(P[2]-P[3])*d[10]/P[6]bS=u>0 and v or C
bf=0
while h*u<cp*u and(bf<e[2]or not d[14])do
bO=bS(h+cD,cp)bh=bS(bx+cH,cJ)Q=e[7+((V*d[11]+d[8]//e[3])%e[2])+e[2]*(d[5]%e[1])]i=c[20][Q]if i then
ai(i[1]*q,i[2]*q,i[3]*q)co(g,h,g,bO,l,bh)co(g,h,l,bx,l,bh)end
h=bO
bx=bh
V=V+u
bf=bf+d[11]end
end
end
for b=1,2 do
_=cB[b]bG={}av,ao,bp=ae,-ae
for n,d in aL(_[a])do
av=v(av,d[2])ao=C(ao,d[3])bp=d
e=c[22][d[4][b+2]]if e and not cb then
aM(d[4][5])i=c[20][e[5]]ai(i[1]*q,i[2]*q,i[3]*q)cf.drawLine(d[1],r-d[2],d[1],ad(r-d[3]-1))end
end
if bp and cb then
J=bp[4]cE=(J[b]-f[2])br=cos(f[3])bB=sin(f[3])for aD=ad(av+r),ceil(ao+r)do
ag=aN*cE/(r-aD)bH=br*ag-f[1][1]ci=bB*ag-f[1][2]bQ=-bB*ag+bH
cd=br*ag+ci
cK=bB*ag+bH
cy=-br*ag+ci
cC=(cK-bQ)/N
cz=(cy-cd)/N
bG[aD]={cC,cz,bQ,cd}end
for n,d in aL(_[a])do
if J[b+2]~=0 then
aM(J[5])k=J[b+2]e=c[22][k]e=c[22][k+(cq%e[4])]g=d[1]ce=E-(E-g)*K
av,ao=ad(d[2]+r),ceil(d[3]+r)aw=e[3]for aD=av,ao do
aR=bG[aD]cF=(aR[3]+aR[1]*ce)//aw
cA=(aR[4]+aR[2]*ce)//aw
Q=6+(cA%e[1])+e[1]*(cF%e[2])i=c[20][e[Q]]if i then
ai(i[1]*q,i[2]*q,i[3]*q)bA(g,-aD+ae,1,1)end
end
end
end
end
end
for n=1,#aK[a]do
_=s[aK[a][n]]if _[6]~=0 then
aW=sub(_,f[1])o=_[20]if o>1 then
I=bq(aP(aW)-f[3])o=o*cos(I)if A(I)<90 then
m=E-ax(tan(I)/K*E)aQ=ax((T+I+f[3]-_[3])/360*8)S=c[16][_[6]][1]if S~=0 and _[6]~=1 then
e=c[17][A(S)][aQ%8+1]u=e<0 and-1 or 1
e=A(e)if e>0 then
e=c[23][e]Z,aA=e[1],e[2]M=v(be(o//aO+1),8)B=E/(K*o)ba=B*bt
G=r+(f[2]-_[9])/o*aN
H=G-e[5]*ba
l=m-u*e[4]*B
B,ba=B*e[3],ba*e[3]aM(am[_[8]][5])q=S>0 and q or 1
bZ=B*M
cx=bZ*bt
cG=_[4]and c[15][_[4]][23]&8>0
for h=0,Z-1,M do
m=l+h*B*u
if a<=aS[bn(ax(m),0,N-1)]then
for j=0,aA-1,M do
Q=e[7+j+h*aA]if Q~=0 then
if cG then
bu=bu%50+1
ai(0,0,0,v(75*c[13][2][bu],255))else
i=c[20][Q]ai(i[1]*q,i[2]*q,i[3]*q)end
bA(m,H+j*ba,bZ,cx)end
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
