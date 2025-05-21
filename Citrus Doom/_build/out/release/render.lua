cS=""

Q=180
bG=screen
aX=ipairs
bR=table
ce=input
w=math
E=w.max
x=w.min
D=w.abs
W=w.floor
ceil=w.ceil
sqrt=w.sqrt
H=ce.getNumber
bB=ce.getBool
pi=w.pi
O=false
R=true
bj=string
function bh(b,n)return b[1]*n[2]-b[2]*n[1]end
function sub(b,n)return{(b[1]-n[1]),(b[2]-n[2])}end
function bn(b)return((b+Q)%360)-Q end
function sin(b)return w.sin(b/Q*pi)end
function cos(b)return w.cos(b/Q*pi)end
function tan(b)return w.tan(b/Q*pi)end
function cP(b)return w.atan(b)*Q/pi end
function aG(b)return w.atan(b[2],b[1])*Q/pi end
function bo(b,n,_)return x(E(n,b),_)end
function ar(b)return W(b+.5)end
function bw(b,n)return sqrt(((b[1]-n[1])^2)+((b[2]-n[2])^2))end
function bE(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
function b_(b)o=x(b/255+bM,1)^2.2 end
c={}bA=1
aw=3
aT=O
aD=R
f={{0,0},0,0}L=288
y=L//2
aj=128
s=aj//2
aJ={}aM=400
cm=100
cR=0
at={}aO=32768
cp=3002
bk=0
aR=0
aK=0
bd=1.2
N=52
K=tan(N)aY=s*bd*L/aj/K
ab=1
cn={}for a=-y,y do cn[a]=aG({1,a/y*K})end
function bu(a)if a<aO then
local u,be=c[7][a]be=0<bh({u[3],u[4]},sub(f[1],u))and 8 or 7
bu(u[be])bu(u[15-be])else
aq[#aq+1]=a-aO
end
end
function aZ(a,b)if a<aO then
u=c[7][a]return aZ(u[0<bh({u[3],u[4]},sub(b,u))and 8 or 7],b)else
return a-aO
end
end
function bq(b)u=c[5][c[6][b][2]]return c[3][c[2][u[4]][u[5]+6]][6]end
function onTick()bx=0
for l=1,3 do
if bB(9)and(not aT)or not c[21]then
bm=property.getText(bA)a=1
z=cS
_=bj.sub(bm,a,a)while _~=cSdo
co=bj.byte(_)if co>64then
z=(z..co-65)+0
if ab==1then
cf=z
c[z]=c[z]or{}elseif ab==2then
ct=z
ax=0
elseif ab==3then
bb=z
else
if ax==0then
ax=ct
bb=bb-1
bf={}c[cf][#c[cf]+1]=bf
end
bf[#bf+1]=z
ax=ax-1
ab=E(ax,bb)>0 and ab-1 or 0
end
ab=ab+1
z=cS
else
z=z.._
end
a=a+1
_=bj.sub(bm,a,a)end
bA=bA+1
aT=bm==cS
end
end
if aT then
if H(9)>0 then
aD=R
aw=H(9)end
if cm>0 and not aD then
al={}at[#at+1]=al
av=5
_=H(av)while _~=0 do
af={}al[#al+1]=af
for a=0,8 do
af[a+1]=H(av+a)end
av=av+9
_=H(av)end
end
if bB(1)then
bO=0
bp=H(1)cm=H(3)aK=aK+1
bF=aK//10
if aD then
for a=1,10 do
c[a]=c[a+10*aw]end
r=c[1]ak=c[8]aw=aw+1
end
if H(2)>0 then
_=c[2][H(2)]if _ then
b=_[4]if b>0 then
if b==3008 then
c_=_[5]==1
elseif b>3004 then
aM=E(aM+3*(_[4]-3006),1)elseif b>3000 then
cp=_[4]end
bO=H(2)if b<3000 and c[9][_[5]][7]==0then
_[8]=1
end
end
end
end
if bB(3)and bp~=1 and bp~=3 then
bM=.1
aR=bp==5 and 5 or 3
else
aR=aR-1
if aR<1then
bM=0
end
end
for a=1,#at do
al=at[a]for l=1,#al do
af=al[l]_=af[1]if _>(2^15)then
_=ak[_-(2^15)]for h=1,6 do
_[h]=af[h+1]end
elseif _<0 then
while-_>#r do
r[#r+1]=O
end
bR.remove(r,-_)else
if not r[_]then
r[_]={}end
_=r[_]for h=1,8 do
_[c[19][1][h]]=af[h+1]end
_[15]=0
_[7]=aZ(#c[7],_)_[8]=bq(_[7])end
end
end
at={}for a=1,#c[6]do
aJ[a]={}end
for a=1,#r do
_=r[a]if _ then
if aD then
_[7]=aZ(#c[7],_)_[8]=bq(_[7])_[9]=ak[_[8]][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
end
bg=0
for l,d in aX({1,2,9})do
_[d]=_[d]+_[d+10]bg=bg+_[d+10]end
if bg~=0then
_[7]=aZ(#c[7],_)_[8]=bq(_[7])end
_[15]=_[15]+1
_[20]=bw(_,f[1])T=c[16][_[6]]if T~=nil then
if _[15]>=T[2]and T[2]~=-1 then
_[6]=T[4]_[15]=0
end
end
aJ[_[7]][#aJ[_[7]]+1]=a
end
end
aD=O
_=r[1]f[1]={_[1],_[2]}f[2]=_[9]+41
f[3]=_[3]aq={}bu(#c[7])aP={}p={}aQ={}aS={}V={}Z={}aW={}bs=L
for a=0,L-1 do
aP[a],V[a],Z[a]=#c[6]+2,s+1,-s
end
a=1
while a<=#aq and bs>0 do
_=c[6][aq[a]]aQ[a]={}aS[a]={}p[a]={}aW[a]=aJ[aq[a]]bR.sort(aW[a],function(b,n)return r[b][20]>r[n][20]end)for l=_[2],_[1]+_[2]-1 do
X=c[5][l]B=c[2][X[4]]bU,ci=c[4][X[1]],c[4][X[2]]aL,ch=sub(bU,f[1]),sub(ci,f[1])bJ=aG(aL)G,aE=bn(bJ-f[3]),bn(aG(ch)-f[3])if D(G)<90 or D(aE)<90 then
ai,am=bo(G,-N,N),bo(aE,-N,N)if D(G)>=90 or D(aE)>=90 then
bH=bh(aL,ch)if D(G)>=90 then
if bH>0 then ai=-N else ai=N end
else
if bH<0 then am=-N else am=N end
end
end
m,k=ar(tan(ai)/K*y),ar(tan(am)/K*y)if m~=k then
q,aA=bw(f[1],bU),bw(f[1],ci)ba=X[3]+90
bS=ba-bJ
cy=q*sin(bS)aV=(q*cos(bS))if G~=ai then
q=aV/cos(ba-(ai+f[3]))end
if aE~=am then
aA=aV/cos(ba-(am+f[3]))end
q,aA=q*cos(ai),aA*cos(am)h=X[5]+6
cK=(m>k)if cK and B[h]~=0 then
as=B[3]&4>0
if as then
Y,U=ak[c[3][B[6]][6]],ak[c[3][B[7]][6]]end
ah=c[3][B[h]]cN={ah[3],ah[4],ah[5]}F,cd,cc=ak[ah[6]]for j,d in aX(cN)do
au=d>0
az=R
if(au or(j==3 and not(cd and cc)))and(j==3 or as)then
bK=O
bN=0
if j<3 then
bK=j==1 and E(Y[4],U[4])==0
C,v=Y[3-j],U[3-j]az=(C<v)~=(j==2)~=(h==6)and C~=v and Y~=U
C,v=x(C,v),E(C,v)if az then
if j==1then
cd=R
else
cc=R
bN=B[3]&16>0 and E(Y[2],U[2])-v or 0
end
end
else
if as then
C,v=E(Y[1],U[1]),x(Y[2],U[2])az=Y~=U
else
C,v=F[1],F[2]end
end
C,v=C-f[2],v-f[2]bP,bL=C*aY,v*aY
if(az or au)and not bK then
bl=X[6]-ah[1]if B[4]==48 then
bl=bl-aK
end
cD,cu=bP/q,bL/q
cG,cB=bP/aA,bL/aA
ck=0
ao=O
if au then
_=c[21][d][4]if(X[4]==bO or cp==B[4]or B[8])and _>0then
d=_
end
ay=c[21][d][3]t=1
if(j==3 and B[3]&16>0)or(j==1 and B[3]&8==0)then
t=-1
end
end
for h=m,k,-1 do
cs=cn[h]aH=(ba-f[3])-cs
g=y-h
bI=O
if g>=0 and g<=L-1 then
if a<aP[g]then
aN=(h-m)/(k-m)I,J=(cD*(1-aN)+cG*aN),(cu*(1-aN)+cB*aN)if D(J+I)-(J-I)<aj then
if au then
if I~=J then
bI=R
bT=aV*tan(aH)M=x(((D(bT)+D(aV))//aM)+1,4)bC=x(bE(W(M/cos(aH))),16)M=bE(M)bi=W((E(bT-cy,0)-bl)/(ay*bC))*bC
cl={g,s-I,s-J,d,bi,v-C,F[5],ah[2]+bN,R,ay*M,M,t,not ao,j==3 and as}if bi>ck or(not ao)or h==k then
ck=bi-1+bC
ao=R
p[a][#p[a]+1]=cl
end
cF=cl
end
end
if az then
if j~=2 then
if J<V[g]then
aS[a][#aS[a]+1]={g,E(J,Z[g]),V[g],F}end
if j==3then ac=J else ac=I end
if V[g]>ac then V[g]=ac end
end
if j~=1 then
if I>Z[g]then
aQ[a][#aQ[a]+1]={g,Z[g],x(I,V[g]),F}end
if j==3then ac=I else ac=J end
if Z[g]<ac then Z[g]=ac end
end
if(V[g]<=Z[g])or(j==3 and(not as)and au)then
aP[g]=a
bs=bs-1
end
end
end
end
end
if(not bI)and ao then
ao=O
p[a][#p[a]+1]=cF
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
function onDraw()aI=bG
local cj,bD,ae,cQ=aI.drawTriangleF,aI.drawRectF,aI.setColor,aI.drawText
bx=bx+1
cE={aQ,aS}if bx<=1 then
if aT then
e=c[24][c[19][8][aw-3]]ad,an=e[1],e[2]A=L/ceil(ad*K)cr=A*1
for a=0,ceil(ad*K),1 do
m=(ad/2-a-1+f[3]/90*ad)%ad
k=(m%1-1)*A
m=W(m)*an
for l=0,an-1,1 do
P=e[5+l+m]i=c[20][P]ae(i[1],i[2],i[3])bD(a*A+k,l*A,cr,cr)end
end
for a=#p,1,-1 do
for l=1,#p[a]do
d=p[a][l]if d[9]or d[13]then
if d[9]then
S=p[a][l+1]else
S=d
end
e=c[21][d[4]]e=c[21][d[4]+(bF%e[5])]t=d[12]aa=x(t,0)g=d[1]k=S[1]cq=d[2-aa]cM=S[2-aa]h=d[3+aa]bc=S[3+aa]if not S[9]then k=k+1 end
b_(d[7])cv=t*(d[2]-d[3])*d[10]/d[6]cC=t*(S[2]-S[3])*d[10]/S[6]cb=t>0 and x or E
br=0
while h*t<cq*t and(br<e[2]or not d[14])do
bZ=cb(h+cv,cq)bz=cb(bc+cC,cM)P=e[7+((aa*d[11]+d[8]//e[3])%e[2])+e[2]*(d[5]%e[1])]i=c[20][P]if i then
ae(i[1]*o,i[2]*o,i[3]*o)cj(g,h,g,bZ,k,bz)cj(g,h,k,bc,k,bz)end
h=bZ
bc=bz
aa=aa+t
br=br+d[11]end
end
end
for b=1,2 do
_=cE[b]bQ={}aC,aB,bv=aj,-aj
for l,d in aX(_[a])do
aC=x(aC,d[2])aB=E(aB,d[3])bv=d
e=c[22][d[4][b+2]]if e and not c_ then
b_(d[4][5])i=c[20][e[5]]ae(i[1]*o,i[2]*o,i[3]*o)bG.drawLine(d[1],s-d[2],d[1],W(s-d[3]-1))end
end
if bv and c_ then
F=bv[4]cA=(F[b]-f[2])bt=cos(f[3])by=sin(f[3])for ap=W(aC+s),ceil(aB+s)do
ag=aY*cA/(s-ap)cg=bt*ag-f[1][1]bX=by*ag-f[1][2]bW=-by*ag+cg
bY=bt*ag+bX
cI=by*ag+cg
cx=-bt*ag+bX
cL=(cI-bW)/L
cJ=(cx-bY)/L
bQ[ap]={cL,cJ,bW,bY}end
for l,d in aX(_[a])do
if F[b+2]~=0 then
b_(F[5])n=F[b+2]e=c[22][n]e=c[22][n+(bF%e[4])]g=d[1]bV=y-(y-g)*K
aC,aB=W(d[2]+s),ceil(d[3]+s)ay=e[3]for ap=aC,aB do
aF=bQ[ap]cz=(aF[3]+aF[1]*bV)//ay
cw=(aF[4]+aF[2]*bV)//ay
P=6+(cw%e[1])+e[1]*(cz%e[2])i=c[20][e[P]]if i then
ae(i[1]*o,i[2]*o,i[3]*o)bD(g,-ap+aj,1,1)end
end
end
end
end
end
for l=1,#aW[a]do
_=r[aW[a][l]]if _[6]~=0 then
aL=sub(_,f[1])q=_[20]if q>1 then
G=bn(aG(aL)-f[3])q=q*cos(G)if D(G)<90 then
m=y-ar(tan(G)/K*y)aH=ar((Q+G+f[3]-_[3])/360*8)T=c[16][_[6]][1]if T~=0 and _[6]~=1 then
e=c[17][D(T)][aH%8+1]t=e<0 and-1 or 1
e=D(e)if e>0 then
e=c[23][e]ad,an=e[1],e[2]M=x(bE(q//aM+1),8)A=y/(K*q)aU=A*bd
I=s+(f[2]-_[9])/q*aY
J=I-e[5]*aU
k=m-t*e[4]*A
A,aU=A*e[3],aU*e[3]b_(ak[_[8]][5])o=T>0 and o or 1
ca=A*M
cO=ca*bd
cH=_[4]and c[15][_[4]][23]&8>0
for h=0,ad-1,M do
m=k+h*A*t
if a<=aP[bo(ar(m),0,L-1)]then
for j=0,an-1,M do
P=e[7+j+h*an]if P~=0 then
if cH then
bk=bk%50+1
ae(0,0,0,x(75*c[13][2][bk],255))else
i=c[20][P]ae(i[1]*o,i[2]*o,i[3]*o)end
bD(m,J+j*aU,ca,cO)end
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
