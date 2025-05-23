cS=""

P=180
bQ=screen
aU=ipairs
bZ=table
cq=input
v=math
A=v.max
w=v.min
D=v.abs
aa=v.floor
ceil=v.ceil
sqrt=v.sqrt
H=cq.getNumber
bj=cq.getBool
pi=v.pi
O=false
S=true
bq=string
function bx(b,m)return b[1]*m[2]-b[2]*m[1]end
function sub(b,m)return{(b[1]-m[1]),(b[2]-m[2])}end
function bm(b)return((b+P)%360)-P end
function sin(b)return v.sin(b/P*pi)end
function cos(b)return v.cos(b/P*pi)end
function tan(b)return v.tan(b/P*pi)end
function cQ(b)return v.atan(b)*P/pi end
function aI(b)return v.atan(b[2],b[1])*P/pi end
function br(b,m,_)return w(A(m,b),_)end
function aD(b)return aa(b+.5)end
function bE(b,m)return sqrt(((b[1]-m[1])^2)+((b[2]-m[2])^2))end
function bc(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
function aE(b)q=w(b/255+bL,1)^2.2 end
c={}bn=1
aC=3
aM=O
aA=S
f={{0,0},0,0}L=288
E=L//2
ag=128
r=ag//2
aS={}b_=400
ch=100
cR=0
as={}aP=32768
cf=3002
bt=0
aG=0
aH=0
by=1.2
M=52
N=tan(M)aJ=r*by*L/ag/N
Z=1
cm={}for a=-E,E do cm[a]=aI({1,a/E*N})end
function bD(a)if a<aP then
local s,bv=c[7][a]bv=0<bx({s[3],s[4]},sub(f[1],s))and 8 or 7
bD(s[bv])bD(s[15-bv])else
ay[#ay+1]=a-aP
end
end
function aW(a,b)if a<aP then
s=c[7][a]return aW(s[0<bx({s[3],s[4]},sub(b,s))and 8 or 7],b)else
return a-aP
end
end
function bp(b)s=c[5][c[6][b][2]]return c[3][c[2][s[4]][s[5]+6]][6]end
function onTick()bA=0
for k=1,3 do
if bj(9)and(not aM)or not c[21]then
bB=property.getText(bn)a=1
y=cS
_=bq.sub(bB,a,a)while _~=cSdo
cd=bq.byte(_)if cd>64then
y=(y..cd-65)+0
if Z==1then
bH=y
c[y]=c[y]or{}elseif Z==2then
cH=y
an=0
elseif Z==3then
bw=y
else
if an==0then
an=cH
bw=bw-1
bb={}c[bH][#c[bH]+1]=bb
end
bb[#bb+1]=y
an=an-1
Z=A(an,bw)>0 and Z-1 or 0
end
Z=Z+1
y=cS
else
y=y.._
end
a=a+1
_=bq.sub(bB,a,a)end
bn=bn+1
aM=bB==cS
end
end
if aM then
if H(9)>0 then
aA=S
aC=H(9)end
if ch>0 and not aA then
am={}as[#as+1]=am
ar=5
_=H(ar)while _~=0 do
af={}am[#am+1]=af
for a=0,8 do
af[a+1]=H(ar+a)end
ar=ar+9
_=H(ar)end
end
if bj(1)then
bK=0
bh=H(1)ch=H(3)aH=aH+1
bO=aH//10
if aA then
for a=1,10 do
c[a]=c[a+10*aC]end
t=c[1]aj=c[8]aC=aC+1
end
if H(2)>0 then
_=c[2][H(2)]if _ then
b=_[4]if b>0 then
if b==3008 then
bF=_[5]==1
elseif b>3004 then
b_=A(b_+3*(_[4]-3006),1)elseif b>3000 then
cf=_[4]end
bK=H(2)if b<3000 and c[9][_[5]][7]==0then
_[8]=1
end
end
end
end
if bj(3)and bh~=1 and bh~=3 then
bL=.1
aG=bh==5 and 5 or 3
else
aG=aG-1
if aG<1then
bL=0
end
end
for a=1,#as do
am=as[a]for k=1,#am do
af=am[k]_=af[1]if _>(2^15)then
_=aj[_-(2^15)]for h=1,6 do
_[h]=af[h+1]end
elseif _<0 then
while-_>#t do
t[#t+1]=O
end
bZ.remove(t,-_)else
if not t[_]then
t[_]={}end
_=t[_]for h=1,8 do
_[c[19][1][h]]=af[h+1]end
_[15]=0
_[7]=aW(#c[7],_)_[8]=bp(_[7])end
end
end
as={}for a=1,#c[6]do
aS[a]={}end
for a=1,#t do
_=t[a]if _ then
if aA then
_[7]=aW(#c[7],_)_[8]=bp(_[7])_[9]=aj[_[8]][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
end
bg=0
for k,d in aU({1,2,9})do
_[d]=_[d]+_[d+10]bg=bg+_[d+10]end
if bg~=0then
_[7]=aW(#c[7],_)_[8]=bp(_[7])end
_[15]=_[15]+1
_[20]=bE(_,f[1])Q=c[16][_[6]]if Q~=nil then
if _[15]>=Q[2]and Q[2]~=-1 then
_[6]=Q[4]_[15]=0
end
end
aS[_[7]][#aS[_[7]]+1]=a
end
end
aA=O
_=t[1]f[1]={_[1],_[2]}f[2]=_[9]+41
f[3]=_[3]ay={}bD(#c[7])aY={}p={}aK={}aQ={}X={}W={}aN={}bd=L
for a=0,L-1 do
aY[a],X[a],W[a]=#c[6]+2,r+1,-r
end
a=1
while a<=#ay and bd>0 do
_=c[6][ay[a]]aK[a]={}aQ[a]={}p[a]={}aN[a]=aS[ay[a]]bZ.sort(aN[a],function(b,m)return t[b][20]>t[m][20]end)for k=_[2],_[1]+_[2]-1 do
V=c[5][k]C=c[2][V[4]]co,cj=c[4][V[1]],c[4][V[2]]aR,bW=sub(co,f[1]),sub(cj,f[1])bM=aI(aR)I,aX=bm(bM-f[3]),bm(aI(bW)-f[3])if D(I)<90 or D(aX)<90 then
ak,ai=br(I,-M,M),br(aX,-M,M)if D(I)>=90 or D(aX)>=90 then
bV=bx(aR,bW)if D(I)>=90 then
if bV>0 then ak=-M else ak=M end
else
if bV<0 then ai=-M else ai=M end
end
end
l,n=aD(tan(ak)/N*E),aD(tan(ai)/N*E)if l~=n then
o,aq=bE(f[1],co),bE(f[1],cj)aZ=V[3]+90
cn=aZ-bM
cO=o*sin(cn)aL=(o*cos(cn))if I~=ak then
o=aL/cos(aZ-(ak+f[3]))end
if aX~=ai then
aq=aL/cos(aZ-(ai+f[3]))end
o,aq=o*cos(ak),aq*cos(ai)h=V[5]+6
cG=(l>n)if cG and C[h]~=0 then
az=C[3]&4>0
if az then
Y,ad=aj[c[3][C[6]][6]],aj[c[3][C[7]][6]]end
ah=c[3][C[h]]cv={ah[3],ah[4],ah[5]}J,bS,cl=aj[ah[6]]for j,d in aU(cv)do
ap=d>0
av=S
if(ap or(j==3 and not(bS and cl)))and(j==3 or az)then
bY=O
bP=0
if j<3 then
bY=j==1 and A(Y[4],ad[4])==0
B,x=Y[3-j],ad[3-j]av=(B<x)~=(j==2)~=(h==6)and B~=x and Y~=ad
B,x=w(B,x),A(B,x)if av then
if j==1then
bS=S
else
cl=S
bP=C[3]&16>0 and A(Y[2],ad[2])-x or 0
end
end
else
if az then
B,x=A(Y[1],ad[1]),w(Y[2],ad[2])av=Y~=ad
else
B,x=J[1],J[2]end
end
B,x=B-f[2],x-f[2]bR,bX=B*aJ,x*aJ
if(av or ap)and not bY then
bf=V[6]-ah[1]if C[4]==48 then
bf=bf-aH
end
cF,cK=bR/o,bX/o
cD,cM=bR/aq,bX/aq
bT=0
aw=O
if ap then
_=c[21][d][4]if(V[4]==bK or cf==C[4]or C[8])and _>0then
d=_
end
at=c[21][d][3]u=1
if(j==3 and C[3]&16>0)or(j==1 and C[3]&8==0)then
u=-1
end
end
for h=l,n,-1 do
cs=cm[h]aO=(aZ-f[3])-cs
g=E-h
bI=O
if g>=0 and g<=L-1 then
if a<aY[g]then
ba=(h-l)/(n-l)F,G=(cF*(1-ba)+cD*ba),(cK*(1-ba)+cM*ba)if D(G+F)-(G-F)<ag then
if ap then
if F~=G then
bI=S
bN=aL*tan(aO)K=w(((D(bN)+D(aL))//b_)+1,4)bz=w(bc(aa(K/cos(aO))),16)K=bc(K)bs=aa((A(bN-cO,0)-bf)/(at*bz))*bz
ca={g,r-F,r-G,d,bs,x-B,J[5],ah[2]+bP,S,at*K,K,u,not aw,j==3 and az}if bs>bT or(not aw)or h==n then
bT=bs-1+bz
aw=S
p[a][#p[a]+1]=ca
end
cC=ca
end
end
if av then
if j~=2 then
if G<X[g]then
aQ[a][#aQ[a]+1]={g,A(G,W[g]),X[g],J}end
if j==3then ab=G else ab=F end
if X[g]>ab then X[g]=ab end
end
if j~=1 then
if F>W[g]then
aK[a][#aK[a]+1]={g,W[g],w(F,X[g]),J}end
if j==3then ab=F else ab=G end
if W[g]<ab then W[g]=ab end
end
if(X[g]<=W[g])or(j==3 and(not az)and ap)then
aY[g]=a
bd=bd-1
end
end
end
end
end
if(not bI)and aw then
aw=O
p[a][#p[a]+1]=cC
p[a][#p[a]][9]=O
end
end
if#p[a]>0 then
p[a][#p[a]][9]=O
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
function onDraw()aF=bQ
local ce,bC,al,cP=aF.drawTriangleF,aF.drawRectF,aF.setColor,aF.drawText
bA=bA+1
cI={aK,aQ}if bA<=1 then
if aM then
e=c[24][c[19][8][aC-3]]ac,ax=e[1],e[2]z=L/ceil(ac*N)bJ=z*1
for a=0,ceil(ac*N),1 do
l=(ac/2-a-1+f[3]/90*ac)%ac
n=(l%1-1)*z
l=aa(l)*ax
for k=0,ax-1,1 do
T=e[5+k+l]i=c[20][T]al(i[1],i[2],i[3])bC(a*z+n,k*z,bJ,bJ)end
end
for a=#p,1,-1 do
for k=1,#p[a]do
d=p[a][k]if d[9]or d[13]then
if d[9]then
R=p[a][k+1]else
R=d
end
e=c[21][d[4]]e=c[21][d[4]+(bO%e[5])]u=d[12]U=w(u,0)g=d[1]n=R[1]bU=d[2-U]cE=R[2-U]h=d[3+U]bo=R[3+U]if not R[9]then n=n+1 end
aE(d[7])ct=u*(d[2]-d[3])*d[10]/d[6]cz=u*(R[2]-R[3])*d[10]/R[6]cc=u>0 and w or A
bu=0
while h*u<bU*u and(bu<e[2]or not d[14])do
bG=cc(h+ct,bU)bk=cc(bo+cz,cE)T=e[7+((U*d[11]+d[8]//e[3])%e[2])+e[2]*(d[5]%e[1])]i=c[20][T]if i then
al(i[1]*q,i[2]*q,i[3]*q)ce(g,h,g,bG,n,bk)ce(g,h,n,bo,n,bk)end
h=bG
bo=bk
U=U+u
bu=bu+d[11]end
end
end
for b=1,2 do
_=cI[b]ck={}ao,au,be=ag,-ag
for k,d in aU(_[a])do
ao=w(ao,d[2])au=A(au,d[3])be=d
e=c[22][d[4][b+2]]if e and not bF then
aE(d[4][5])i=c[20][e[5]]al(i[1]*q,i[2]*q,i[3]*q)bQ.drawLine(d[1],r-d[2],d[1],aa(r-d[3]-1))end
end
if be and bF then
J=be[4]cN=(J[b]-f[2])bl=cos(f[3])bi=sin(f[3])for aB=aa(ao+r),ceil(au+r)do
ae=aJ*cN/(r-aB)cp=bl*ae-f[1][1]cr=bi*ae-f[1][2]cb=-bi*ae+cp
ci=bl*ae+cr
cu=bi*ae+cp
cJ=-bl*ae+cr
cx=(cu-cb)/L
cB=(cJ-ci)/L
ck[aB]={cx,cB,cb,ci}end
for k,d in aU(_[a])do
if J[b+2]~=0 then
aE(J[5])m=J[b+2]e=c[22][m]e=c[22][m+(bO%e[4])]g=d[1]cg=E-(E-g)*N
ao,au=aa(d[2]+r),ceil(d[3]+r)at=e[3]for aB=ao,au do
aT=ck[aB]cw=(aT[3]+aT[1]*cg)//at
cy=(aT[4]+aT[2]*cg)//at
T=6+(cy%e[1])+e[1]*(cw%e[2])i=c[20][e[T]]if i then
al(i[1]*q,i[2]*q,i[3]*q)bC(g,-aB+ag,1,1)end
end
end
end
end
end
for k=1,#aN[a]do
_=t[aN[a][k]]if _[6]~=0 then
aR=sub(_,f[1])o=_[20]if o>1 then
I=bm(aI(aR)-f[3])o=o*cos(I)if D(I)<90 then
l=E-aD(tan(I)/N*E)aO=aD((P+I+f[3]-_[3])/360*8)Q=c[16][_[6]][1]if Q~=0 and _[6]~=1 then
e=c[17][D(Q)][aO%8+1]u=e<0 and-1 or 1
e=D(e)if e>0 then
e=c[23][e]ac,ax=e[1],e[2]K=w(bc(o//b_+1),8)z=E/(N*o)aV=z*by
F=r+(f[2]-_[9])/o*aJ
G=F-e[5]*aV
n=l-u*e[4]*z
z,aV=z*e[3],aV*e[3]aE(aj[_[8]][5])q=Q>0 and q or 1
c_=z*K
cL=c_*by
cA=_[4]and c[15][_[4]][23]&8>0
for h=0,ac-1,K do
l=n+h*z*u
if a<=aY[br(aD(l),0,L-1)]then
for j=0,ax-1,K do
T=e[7+j+h*ax]if T~=0 then
if cA then
bt=bt%50+1
al(0,0,0,w(75*c[13][2][bt],255))else
i=c[20][T]al(i[1]*q,i[2]*q,i[3]*q)end
bC(l,G+j*aV,c_,cL)end
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
