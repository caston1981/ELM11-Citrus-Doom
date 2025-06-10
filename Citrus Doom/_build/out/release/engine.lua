
S=128
O=180
G=math
N=G.max
B=G.min
aM=G.floor
pi=G.pi
ax=input.getNumber
ac=input.getBool
ad=output.setBool
n=true
j=false
A=ipairs
abs=G.abs
aF=table.remove
aZ=string
function ai(b,h)return{(b[1]+h[1]),(b[2]+h[2])}end
function sub(b,h)return{(b[1]-h[1]),(b[2]-h[2])}end
function bz(b)return G.sin(b/O*pi)end
function aj(b)return G.cos(b/O*pi)end
function K(b,h)return G.atan(h[2]-b[2],h[1]-b[1])*O/pi end
function F(b,h,aj)return N(B(aj,b),h)end
function x(b,h)return G.sqrt(((b[1]-h[1])^2)+((b[2]-h[2])^2))end
function U(b,h)return{aj(b)*h,bz(b)*h}end
function exp(b)return b[1],b[2]end
e={}aE=1
av=3
aP=j
aL=n
ab=2
aw=0
at=0
aO=0
bb=0
P=0
aG=0
l=1
bd=0
by=2
function aK(a,b,_)if a<2^15 then
_=e[7][a]return aK(_[_[3]*(b[2]-_[2])-_[4]*(b[1]-_[1])>0 and 8 or 7],b)else
a=e[5][e[6][a-32768][2]]return Y[e[3][e[2][a[4]][a[5]+6]][6]]end
end
function af(r,bP,w,bO,_)R=g[w]f=z[R[4]]aA,ao=f[18],f[19]I=aA
C=aK(#e[7],r)Z,ak=exp(C)ag=sub(r,aW)L=T[2+ag[1]//S+ag[2]//S*bp]or{}for a,_ in A(L[0]or{})do
c=g[_]if _~=w and c and R[14]~=_ then
m=x(c,r)E=z[c[4]]if c[20]then
W=m-E[18]if W<I and E[23]&1>0 and(f[23]&1>0 or F(r[9],c[9]-ao,c[9]+E[19])==r[9])then
aJ=c
if bP==j then
return j
end
I=W
aC=K(r,c)end
end
if w==1 then
if m<50 then
b=E[25]if b>0 then
for q,s in A(v[b])do
if s>0 and v[1][q]<v[2][q]then
c=v
g[_]=j
c[1][q]=aM(B(c[1][q]+s,c[2][q]))if F(q,5,12)==q then
ab=q-4
end
end
end
end
b=E[29]if b>0 then
b=e[11][b]for q=7,8 do
d[q]=F(d[q]+b[q*2-13],d[q],b[q*2-12])end
g[_]=j
end
end
end
end
end
if ak-Z<ao or Z>r[9]+24 then
t=(bO or 1)<8 or aO%4>0 or C[6]<18 or ar(R,10)return j
end
for a=1,#L do
_=e[2][L[a]]m,bu=br(r,Q[_[1]],Q[_[2]])if m<I then
if(_[3]&1>0 and f[23]&1>0)or _[3]&4==0 then
if w>1 or b_>0 or _[3]&4>0 then
I=m
aC=bu
end
else
aS,ba=B(_[9],ak),N(_[8],Z)if B(r[9],ak-ao)+24<ba or N(r[9],Z)+ao>aS or aS-ba<ao then
I=m
aC=bu
else
if bO==1 and(_[3]&512>0 or w==1)and(_[4]==2 or w>1)then
aR(_,_[5])end
ak,Z=aS,ba
end
end
end
end
C,aJ={Z,ak}if bP then
if I~=aA then
_=ai(r,U(aC,I-aA))r[1]=_[1]r[2]=_[2]end
return n
end
return I==aA
end
function br(p,y,ay)M=x(y,p)bo=K(y,ay)+90
bs=bo-K(p,y)bw=-M*bz(bs)b_=M*aj(bs)aD=bo
if b_<0 then
aD=aD+O
end
if bw<0 then
return M,K(p,y)elseif bw>x(ay,y)then
return x(ay,p),K(p,ay)else
return abs(b_),aD
end
end
function au(p,y,bf,w,_)aI=x(p,y)az=aI
bc=n
W,aX=exp(p)bR,bQ=exp(y)aV,aY=exp(sub(y,p))ap,bi=p[9]+32,y[9]+32
t=j
for a,_ in A(e[2])do
bM=Q[_[1]]bA,bE=exp(sub(Q[_[2]],bM))bv,bC=exp(sub(p,bM))bt=bE*aV-bA*aY
aa=(bA*bC-bE*bv)/bt
bB=(aV*bC-aY*bv)/bt
if F(aa,0,1)==aa and F(bB,0,1)==bB then
bN={W+(aa*aV),aX+(aa*aY)}m=x(p,bN)H=ap+(bi-ap)*(m/aI)if F(H,_[8]+1,_[9])~=H then
bc=j
if bf==1 then
return j
end
if m<az then
az=m
bk,bH=exp(bN)bj=H
bn=a
end
end
end
end
if bf>1 then
if bf==3 then
for a,_ in A(g)do
if _ and a~=w then
f=z[_[4]]if f[23]&1>0 and _[20]then
m=x(p,_)if m<az then
aa=br(_,p,y)M=(m/aI)H=ap+(bi-ap)*M
if F(H,_[9],_[9]+f[19])==H and aa<f[18]then
az=m
t=n
bc=j
bk=W+(bR-W)*M
bH=aX+(bQ-aX)*M
bj=H
bn=a
end
end
end
end
end
end
return bc,bn,{bk,bH,bj}end
return n
end
function httpReply(b,h,aj)bx=at//2
at=0
end
function ae()aG=aG%256+1
return e[13][1][aG]end
function ar(_,a,c)f=z[_[4]]if f[23]&2>0 and _[7]>0 then
_[8]=_[8]-(a+1)//2
_[7]=_[7]-a//2+B(_[8],0)_[8]=N(_[8],0)if ae()<f[10]then
_[6]=f[9]_[15]=0
_[23]=c or d
_[10]=n
end
end
end
function bl(b,h,as)return h[20]and abs(((K(b,h)-b[3]+O)%360)-O)<as and au(b,h,1)end
function aH(D,w)bm=ah and(ah[9]-D[9])*o[6]/x(ah,D)or 0
for a=1,o[12]do
b={}for a=1,30 do
b[a]=D[a]end
b[4]=o[8]b[10]=n
b[14]=w
bF=(ae()/S-1)*o[10]aU=U(D[3]+bF,o[6])if o[7]>0 then
g[#g+1]=b
f=z[b[4]]b[6]=f[3]b[9]=D[9]+o[13]b[11]=aU[1]b[12]=aU[2]b[17]=ab
b[19]=bm
else
c=ai(D,aU)c[9]=d[9]+bm
bg,aB,c=au(D,c,3,w)if not bg then
bq=sub(c,U(D[3]+bF,1))g[#g+1]=b
b[1]=bq[1]b[2]=bq[2]b[6]=z[b[4]][3]b[9]=c[3]b[19]=1
if t then
b=g[aB]ar(b,o[9]*((ae()&3)+2),D)end
end
end
end
end
function aR(_,c)if c>-1 then
b=e[9][c]if b[1]>0 or R[31]*_[10][2]-R[32]*_[10][1]<0 then
h=Y[b[1]]am[h and h[30]or#am+1]={c,1,h or R}_[4]=b[7]b=b[8]>0 and aR(_,b[8])end
else
aL=n
av=-c
u[9]=-c
end
end
function bD()bJ,ah=2048
for a,_ in A(g)do
if a>1 and _ and bl(d,_,10)then
m=x(_,d)if m<bJ then
if z[_[4]][23]&2>0 then
ah=_
bJ=m
end
end
end
end
end
function bL(_)if _[9]~=C[1]and not bI then
_[9]=C[1]_[10]=true
end
end
function onTick()ad(9,ac(32))ad(2,ac(11))ad(3,j)for k=1,3 do
if ac(32)and(not aP)or not e[21]then
aT=property.getText(aE)a=1
i=""
_=aZ.sub(aT,a,a)while _~=""do
c=aZ.byte(_)if c>64 then
i=(i..c-65)+0
if l==1 then
bK=i
e[i]=e[i]or{}elseif l==2 then
H=i
al=0
elseif l==3 then
be=i
else
if al==0 then
al=H
be=be-1
aN={}e[bK][#e[bK]+1]=aN
end
aN[#aN+1]=i
al=al-1
l=N(al,be)>0 and l-1 or 0
end
l=l+1
i=""
else
i=i.._
end
a=a+1
_=aZ.sub(aT,a,a)end
aE=aE+1
aP=aT==""
end
end
if aP then
if aL then
am,aL={}an=1
for a=1,10 do
e[a]=e[a+10*av]end
g=e[1]Q=e[4]Y=e[8]T=e[10]aW,T[1]=T[1]v=e[12]z=e[15]for a=14,16 do
v[1][a]=0
end
av=av+1
for a=#g,1,-1 do
_=g[a]for k=7,40 do
_[k]=0
end
_[7]=z[_[4]][4]_[9],_[10]=aK(#e[7],_)[1]if _[5]&by<1 then
aF(g,a)elseif _[4]==1 then
if d then
_[7]=d[7]_[8]=d[8]end
d=_
end
end
bp=aW[3]end
for a,_ in A(e[2])do
_[10]=sub(Q[_[2]],Q[_[1]])if _[3]&4>0 then
f,E=Y[e[3][_[6]][6]],Y[e[3][_[7]][6]]_[8]=N(f[1],E[1])_[9],f[30],E[30]=B(f[2],E[2])else
_[8],_[9]=0,0
end
end
u={}for a=1,32 do
u[a]=0
end
bb=bb+1
P=B(P+1/bx,2/35)ad(1,P>=0)if P>=0 then
P=P-1/35
aO=aO+1
for a=2,#T do
T[a][0]={}end
for a,s in A(am)do
_=e[9][s[1]]c=s[3]b=_[2]f=c[b]c[b]=F(_[3],f-_[4],f+_[4])+0
f=c[b]if f==_[3]then
am[a]=s[2]==_[5]and{_[6],1,c}or{s[1],s[2]+1,c}if _[6]==0 then
aF(am,a)end
end
c[10]=c[10]or f~=s
c[30]=a
end
for a,_ in A(g)do
if _ then
for k,s in A({1,2,9})do
_[s]=_[s]+_[s+10]end
_[15]=_[15]+1
f=z[_[4]]if _[7]<=0 and _[20]then
_[15]=0
_[6]=f[_[7]<=-f[4]and f[15]>1 and 15 or 14]_[10],_[20]=n
if f[27]>0 then
c={}for k=1,30 do
c[k]=_[k]end
c[4]=f[27]c[6]=f[28]g[#g+1]=c
end
end
aQ=e[16][_[6]]if _[15]>=aQ[2]and aQ[2]~=-1 then
_[6]=aQ[4]_[15]=0
X=e[16][_[6]][3]bI=f[23]&4>0
if X==1 then
for a,l in A(g)do
if l then
i=S-x(_,l)if i>0 then
ar(l,i)end
end
end
elseif X==2 then
if bl(_,d,90)then
_[23]=d
_[6]=f[5]end
af(_,j,a,8)bL(_)elseif X==3 then
_[23]=_[23][20]and _[23]or d
as=aM(K(_,_[23])/45+.5)*45
t=j
l=1
while l<5 and not t do
i=ai(_,U(as+e[19][2][l],8))i[9]=_[9]t=af(i,j,a,l)and(C[1]>=i[9]-24 or bI)l=l+1
end
if t then
for k=1,2 do
_[30+k]=i[k]-_[k]_[k]=i[k]end
_[3]=as
_[10]=n
else
af(_,j,a,8)end
bL(_)b=x(_,_[23])if f[13]>0 and au(_,_[23],1)and B(b,230)<ae()then
_[6]=f[13]end
if b<64 and f[12]>0 then
_[6]=f[12]end
elseif X==5 then
for a=1,11 do
d[3]=d[3]+e[19][9][a]o=e[14][23]bD()aH(d,1)end
d[3]=d[3]-20
elseif X>9 and _[20]then
_[3]=K(_,_[23])o=e[14][X]_[10]=n
ah=_[23]aH(_,a)end
end
if _[17]and _[17]>0 then
o=e[14][_[17]]if not af(_,j,a)or _[9]<=C[1]then
if aJ then
ar(aJ,f[21]*((ae()&7)+1),g[_[14]])end
_[1]=_[1]-_[11]_[2]=_[2]-_[12]_[3]=0
_[6]=z[_[4]][5]_[10]=n
_[11]=0
_[12],_[17]=0
_[19]=0
end
end
if _[6]==1 then
g[a]=j
else
ag=sub(_,aW)L=T[2+ag[1]//S+ag[2]//S*bp]if L then
L[0][#L[0]+1]=a
end
end
end
end
for a=1,8 do
if ac(a)and v[1][a+4]>0 then
ab=a
end
end
o=e[14][ab]d[3]=d[3]-ax(3)*(F(bd,5,6)*1.5-6)bd=abs(ax(3))*bd+1
V=d
for a=1,2 do
V=ai(V,U(d[3]-O+90*a,ax(a)*8.33))end
V[9]=d[9]for a=1,8 do
t=af(V,n,1,a)end
if t then
for a=1,2 do
d[30+a]=V[a]-d[a]d[a]=V[a]end
if d[9]>C[1]then
d[19]=d[19]-1
else
d[9]=B(C[1],d[9]+4)d[19]=N(0,d[19])end
else
d[19]=0
d[9]=C[1]end
bh=v[1]c=o[1]if ac(31)and aw<=0 and(c==0 or bh[c]>=o[2])then
ad(3,n)aw=o[3]if c>0 then
bh[c]=bh[c]-o[2]end
bD()aH(d,1)end
aw=aw-1
if ax(4)<0 then
_=ai(d,U(d[3],64))_[9]=d[9]bg,aB=au(d,_,2,1)_=e[2][aB]if bg==j then
u[2]=aB
c,t=_[4]for a=14,16 do
t=t or v[1][a]>0 and c==a
end
if c==1 or t then
aR(_,_[5])elseif c>3000 and c<3005 then
by=aM(c-3000)end
end
end
end
u[1]=ab
for a=3,13 do
u[a]=d[e[19][4][a]]or u[a]end
v[1][17]=bx
u[10]=v[1][bb%#v[1]+1]a=an
bG=n
J=1
aq=#g+#Y
while J<3 and bG do
c=J*9+5
if a<=#g then
_=g[a]if a~=1 then
if _ then
if _[10]then
_[10]=j
u[c]=a
for k=1,8 do
u[c+k]=_[e[19][1][k]]end
J=J+1
end
else
u[c]=-a
aF(g,a)J=J+1
aq=aq-1
end
end
else
_=Y[a-#g]if _[10]then
_[10]=j
u[c]=a-#g+2^15
for k=1,6 do
u[c+k]=_[k]end
J=J+1
end
end
a=(a-2)%aq+1
an=B(an,aq)bG=a~=an
end
an=a
for a=1,32 do
output.setNumber(a,u[a])end
end
at=at+1
async.httpGet(8,"")end
