bU=""

X=128
L=180
bh=output
bO=input
F=math
M=F.max
z=F.min
ao=F.floor
pi=F.pi
aC=bO.getNumber
al=bO.getBool
ad=bh.setBool
o=true
i=false
x=ipairs
abs=F.abs
bM=table.remove
aI=string
function ak(b,g)return{(b[1]+g[1]),(b[2]+g[2])}end
function sub(b,g)return{(b[1]-g[1]),(b[2]-g[2])}end
function bq(b)return F.sin(b/L*pi)end
function am(b)return F.cos(b/L*pi)end
function G(b,g)return F.atan(g[2]-b[2],g[1]-b[1])*L/pi end
function K(b,g,am)return M(z(am,b),g)end
function y(b,g)return F.sqrt(((b[1]-g[1])^2)+((b[2]-g[2])^2))end
function P(b,g)return{am(b)*g,bq(b)*g}end
function exp(b)return b[1],b[2]end
e={}aV=1
aB=3
av=i
aJ=o
ac=2
ay=0
au=0
aO=0
U=0
aP=0
l=1
aF=0
bm=2
function aR(a,b,_)if a<32768then
_=e[7][a]return aR(_[_[3]*(b[2]-_[2])-_[4]*(b[1]-_[1])>0 and 8 or 7],b)else
a=e[5][e[6][a-32768][2]]return S[e[3][e[2][a[4]][a[5]+6]][6]]end
end
function ax(t,bL,v,bS,_,a,k)ae=h[v]f=A[ae[4]]as,aj=f[18],f[19]H=as
D=aR(#e[7],t)W,ai=exp(D)ab=sub(t,aM)N=T[2+ab[1]//X+ab[2]//X*bD]or{}for a,_ in x(N[0]or{})do
c=h[_]if _~=v and c and ae[14]~=_ then
m=y(c,t)E=A[c[4]]if c[20]then
Q=m-E[18]if Q<H and E[23]&1>0 and(f[23]&1>0 or(t[9]+aj<c[9]or t[9]>c[9]+E[19])==i)then
aK=c
if bL==i then
return i
end
H=Q
aW=G(t,c)end
end
if v==1 and not c[10]then
if m<50then
b=E[25]if b>0then
for p,u in x(B[b])do
if u>0 and B[1][p]<B[2][p]then
c=B
h[_]=i
c[1][p]=ao(z(c[1][p]+u,c[2][p]))if K(p,5,12)==p then
ac=p-4
end
end
end
end
b=E[29]if b>0 then
b=e[11][b]for p=7,8 do
d[p]=K(d[p]+b[p*2-13],d[p],b[p*2-12])end
h[_]=i
end
end
end
end
end
aK=i
if ai-W<aj or W>t[9]+24then
return i
end
for a=1,#N do
_=e[2][N[a]]m,bP=bi(t,Z[_[1]],Z[_[2]])if m<H then
if(_[3]&1>0 and f[23]&1>0)or _[3]&4==0 then
if v>1 or b_>0 or _[3]&4>0 then
H=m
aW=bP
end
else
aQ,aL=z(_[9],ai),M(_[8],W)if z(t[9],ai-aj)+24<aL or M(t[9],W)+aj>aQ or aQ-aL<aj then
H=m
aW=bP
else
if bS==1 and(_[3]&512>0 or v==1)and(_[4]==2 or v>1)then
aZ(_,_[5])end
ai,W=aQ,aL
end
end
end
end
D={W,ai}if bL then
if H~=as then
_=ak(t,P(aW,H-as))t[1]=_[1]t[2]=_[2]end
return o
end
return H==as
end
function bi(q,w,aq)O=y(w,q)bk=G(w,aq)+90
bw=bk-G(q,w)bz=-O*bq(bw)b_=O*am(bw)bd=bk
if b_<0 then
bd=bd+L
end
if bz<0 then
return O,G(q,w)elseif bz>y(aq,w)then
return y(aq,q),G(q,aq)else
return abs(b_),bd
end
end
function aA(q,w,be,v,_)aY=y(q,w)aD=aY
aG=o
Q,aU=exp(q)bQ,bR=exp(w)aT,aN=exp(sub(w,q))aw,bl=q[9]+32,w[9]+32
r=i
for a,_ in x(e[2])do
by=Z[_[1]]bx,bK=exp(sub(Z[_[2]],by))bt,bH=exp(sub(q,by))bv=bK*aT-bx*aN
V=(bx*bH-bK*bt)/bv
bG=(aT*bH-aN*bt)/bv
if K(V,0,1)==V and K(bG,0,1)==bG then
bI={Q+(V*aT),aU+(V*aN)}m=y(q,bI)C=aw+(bl-aw)*(m/aY)if K(C,_[8]+1,_[9])~=C then
aG=i
if be==1 then
return i
end
if m<aD then
aD=m
bC,bj=exp(bI)bJ=C
bA=a
end
end
end
end
if be>1 then
if be==3 then
for a,_ in x(h)do
if _ and a~=v then
f=A[_[4]]if f[23]&1>0 and _[20]then
m=y(q,_)if m<aD then
V=bi(_,q,w)O=(m/aY)C=aw+(bl-aw)*O
if K(C,_[9],_[9]+f[19])==C and V<f[18]then
aD=m
r=o
aG=i
bC=Q+(bQ-Q)*O
bj=aU+(bR-aU)*O
bJ=C
bA=a
end
end
end
end
end
end
return aG,bA,{bC,bj,bJ}end
return o
end
function httpReply(b,g,am)bo=au//2
au=0
end
function ag()aP=aP%256+1
return e[13][1][aP]end
function ap(_,a)f=A[_[4]]if f[23]&2>0 and _[7]>0 then
_[8]=_[8]-(a+1)//2
_[7]=_[7]-a//2+z(_[8],0)_[8]=M(_[8],0)if ag()<f[10]then
_[6]=f[9]_[15]=0
_[23]=d
_[10]=o
end
end
end
function bN(b,g,ar)return g[20]and abs(((G(b,g)-b[3]+L)%360)-L)<ar and aA(b,g,1)end
function bb(J,v)bB=ah and(ah[9]-J[9])*n[6]/y(ah,J)or 0
for a=1,n[12]do
b={}for a=1,30 do
b[a]=J[a]end
b[4]=n[8]b[10]=o
b[14]=v
bu=(ag()/X-1)*n[10]aE=P(J[3]+bu,n[6])if n[7]>0then
h[#h+1]=b
f=A[b[4]]b[6]=f[3]b[9]=J[9]+n[13]b[11]=aE[1]b[12]=aE[2]b[17]=ac
b[19]=bB
else
c=ak(J,aE)c[9]=d[9]+bB
aS,az,c=aA(J,c,3,v)if not aS then
br=sub(c,P(J[3]+bu,1))h[#h+1]=b
b[1]=br[1]b[2]=br[2]b[6]=A[b[4]][3]b[9]=c[3]b[19]=1
if r then
b=h[az]ap(b,n[9]*((ag()&3)+2))end
end
end
end
end
function aZ(_,c)if c>-1 then
b=e[9][c]if b[1]>0 or ae[31]*_[10][2]-ae[32]*_[10][1]<0 then
g=S[b[1]]aa[g and g[30]or#aa+1]={c,1,g or ae}_[4]=b[7]b=b[8]>0 and aZ(_,b[8])end
else
aJ=o
aB=-c
s[9]=-c
end
end
function bp()bE,ah=2048
for a,_ in x(h)do
if a>1 and _ and bN(d,_,10)then
m=y(_,d)if m<bE then
if A[_[4]][23]&2>0then
ah=_
bE=m
end
end
end
end
end
function onTick()ad(9,al(32))ad(2,al(11))ad(3,i)for k=1,3 do
if al(32)and(not av)or not e[21]then
aX=property.getText(aV)a=1
j=bU
_=aI.sub(aX,a,a)while _~=bUdo
c=aI.byte(_)if c>64then
j=(j..c-65)+0
if l==1then
bn=j
e[j]=e[j]or{}elseif l==2then
C=j
an=0
elseif l==3then
bc=j
else
if an==0then
an=C
bc=bc-1
aH={}e[bn][#e[bn]+1]=aH
end
aH[#aH+1]=j
an=an-1
l=M(an,bc)>0 and l-1 or 0
end
l=l+1
j=bU
else
j=j.._
end
a=a+1
_=aI.sub(aX,a,a)end
aV=aV+1
av=aX==bU
end
end
if av then
if aJ then
aa,aJ={}af=1
for a=1,10 do
e[a]=e[a+10*aB]end
h=e[1]Z=e[4]S=e[8]T=e[10]aM,T[1]=T[1]B=e[12]A=e[15]for a=14,16 do
B[1][a]=0
end
aB=aB+1
for a,_ in x(h)do
for k=7,40 do
_[k]=0
end
bT=_[5]+1
_[7]=A[_[4]][4]_[9],_[10]=aR(#e[7],_)[1]if _[4]==1 then
if d then
_[7]=d[7]_[8]=d[8]end
d=_
elseif _[5]&bm<1then
h[a]=i
end
end
bD=aM[3]end
for a,_ in x(e[2])do
_[10]=sub(Z[_[2]],Z[_[1]])if _[3]&4>0 then
f,E=S[e[3][_[6]][6]],S[e[3][_[7]][6]]_[8]=M(f[1],E[1])_[9],f[30],E[30]=z(f[2],E[2])else
_[8],_[9]=0,0
end
end
s={}for a=1,32 do
s[a]=0
end
U=z(U+1/bo,2/35)ad(1,U>=0)if U>=0 then
U=U-1/35
aO=aO+1
for a=2,#T do
T[a][0]={}end
for a,u in x(aa)do
_=e[9][u[1]]c=u[3]b=_[2]f=c[b]c[b]=K(_[3],f-_[4],f+_[4])+0
f=c[b]if f==_[3]then
aa[a]=u[2]==_[5]and{_[6],1,c}or{u[1],u[2]+1,c}if _[6]==0 then
bM(aa,a)end
end
c[10]=c[10]or f~=u
c[30]=a
end
for a,_ in x(h)do
if _ then
for k,u in x({1,2,9})do
_[u]=_[u]+_[u+10]end
_[15]=_[15]+1
f=A[_[4]]if _[7]<=0 and _[20]then
_[15]=0
_[6]=f[_[7]<=-f[4]and f[15]>1 and 15or 14]_[10],_[20]=o
if f[27]>0 then
c={}for k=1,30 do
c[k]=_[k]end
c[4]=f[27]c[6]=f[28]h[#h+1]=c
end
end
ba=e[16][_[6]]if _[15]>=ba[2]and ba[2]~=-1then
_[6]=ba[4]_[15]=0
Y=e[16][_[6]][3]if Y==1 then
for a,l in x(h)do
if l then
j=X-y(_,l)if j>0 then
ap(l,j)end
end
end
elseif Y==2then
if bN(_,d,90)then
_[23]=d
_[6]=f[5]end
elseif Y==3then
ar=ao(G(_,_[23])/45+.5)*45
r=i
l=1
bs=f[23]&4>0
while l<5 and not r do
j=ak(_,P(ar+e[19][2][l],8))j[9]=_[9]r=ax(j,i,a,l)and(D[1]>=j[9]-24 or bs)l=l+1
end
if r then
for k=1,2 do
_[30+k]=j[k]-_[k]_[k]=j[k]end
_[3]=ar
_[10]=o
else
ax(_,i,a)end
_[9]=bs and _[9]or D[1]b=y(_,_[23])if f[13]>0 and aA(_,_[23],1)and z(b,230)<ag()then
_[6]=f[13]end
if b<64 and f[12]>0then
_[6]=f[12]end
elseif Y==5then
for a=1,11 do
d[3]=d[3]+e[19][9][a]n=e[14][23]bp()bb(d,1)end
d[3]=d[3]-20
elseif Y>9 and _[20]then
_[3]=G(_,_[23])n=e[14][Y]_[10]=o
ah=_[23]bb(_,a)end
end
if _[17]and _[17]>0then
n=e[14][_[17]]if not ax(_,i,a)or _[9]<=D[1]then
if aK then
ap(aK,f[21]*((ag()&7)+1))end
_[1]=_[1]-_[11]_[2]=_[2]-_[12]_[3]=0
_[6]=A[_[4]][5]_[10]=o
_[11]=0
_[12],_[17]=0
_[19]=0
end
end
if _[6]==1then
h[a]=i
else
ab=sub(_,aM)N=T[2+ab[1]//X+ab[2]//X*bD]if N then
N[0][#N[0]+1]=a
end
end
end
end
for a=1,8 do
if al(a)and B[1][a+4]>0then
ac=a
end
end
n=e[14][ac]d[3]=d[3]-aC(3)*(K(aF,5,6)*1.5-6)aF=abs(aC(3))*aF+1
R=d
for a=1,2 do
R=ak(R,P(d[3]-L+90*a,aC(a)*8.33))end
R[9]=d[9]for a=1,8 do
r=ax(R,o,1,a)end
if r then
for a=1,2 do
d[30+a]=R[a]-d[a]d[a]=R[a]end
if d[9]>D[1]then
d[19]=d[19]-1
else
d[9]=z(D[1],d[9]+4)d[19]=M(0,d[19])end
else
d[19]=0
d[9]=D[1]r=aO%4>0 or D[6]<18 or ap(d,10)end
bg=B[1]c=n[1]if al(31)and ay<=0 and(c==0 or bg[c]>=n[2])then
ad(3,o)ay=n[3]if c>0then
bg[c]=bg[c]-n[2]end
bp()bb(d,1)end
ay=ay-1
if aC(4)<0 then
_=ak(d,P(d[3],64))_[9]=d[9]aS,az=aA(d,_,2,1)_=e[2][az]if aS==i then
s[2]=az
c,r=_[4]for a=14,16 do
r=r or B[1][a]>0 and c==a
end
if c==1 or r then
aZ(_,_[5])elseif c>3000 and c<3005then
bm=ao(c-3000)end
end
end
end
s[1]=ac
for a=3,8 do
s[a]=d[e[19][4][a]]end
s[5]=1
s[13]=d[3]a=af
bF=o
I=1
at=#h+#S
while I<3 and bF do
c=I*9+5
if a<=#h then
_=h[a]if a~=1 then
if _ then
if _[10]then
_[10]=i
s[c]=a
for k=1,8 do
s[c+k]=_[e[19][1][k]]end
I=I+1
end
else
s[c]=-a
bM(h,a)I=I+1
at=at-1
end
end
else
_=S[a-#h]if _[10]then
_[10]=i
s[c]=a-#h+2^15
for k=1,6 do
s[c+k]=_[k]end
I=I+1
end
end
a=((a-2)%at)+1
af=z(af,at)bF=a~=af
end
af=a
for a=1,32 do
bh.setNumber(a,s[a])end
end
au=au+1
async.httpGet(8,bU)end
function onDraw()bf=screen.drawText
bf(26,137,bo)if av then
for a=1,4 do
b=124+a*7
bf(240,b,ao(B[1][a]))bf(200,b,B[1][13+a])end
end
end
