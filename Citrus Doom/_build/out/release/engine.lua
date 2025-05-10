bL=""

Q=128
J=180
bt=output
b_=input
z=math
L=z.max
w=z.min
an=z.floor
pi=z.pi
ax=b_.getNumber
ar=b_.getBool
ae=bt.setBool
l=true
h=false
v=ipairs
abs=z.abs
bq=table.remove
aU=string
function af(c,g)return{(c[1]+g[1]),(c[2]+g[2])}end
function sub(c,g)return{(c[1]-g[1]),(c[2]-g[2])}end
function bC(c)return z.sin(c/J*pi)end
function X(c)return z.cos(c/J*pi)end
function E(c,g)return z.atan(g[2]-c[2],g[1]-c[1])*J/pi end
function D(c,g,X)return L(w(X,c),g)end
function x(c,g)return z.sqrt(((c[1]-g[1])^2)+((c[2]-g[2])^2))end
function S(c,g)return{X(c)*g,bC(c)*g}end
function exp(c)return c[1],c[2]end
b={}aP=1
au=3
ak=h
aN=l
W=2
G=0
aq=0
ap=0
T=0
aK=0
k=1
ay=0
bG=2
function aS(a,c,_)if a<32768then
_=b[7][a]return aS(_[_[3]*(c[2]-_[2])-_[4]*(c[1]-_[1])>0 and 8 or 7],c)else
a=b[5][b[6][a-32768][2]]return b[8][b[3][b[2][a[4]][a[5]+6]][6]]end
end
function av(s,bc,F,bI,_,a,j)aa=b[1][F]f=b[15][aa[4]]at,aj=f[18],f[19]I=at
y=aS(#b[7],s)R,ad=exp(y)Z=sub(s,b[10][1])K=b[10][2+Z[1]//Q+Z[2]//Q*bn]for a,_ in v(K[0])do
d=b[1][_]if _~=F and d and aa[14]~=_ then
m=x(d,s)B=b[15][d[4]]if d[20]then
N=m-B[18]if N<I and B[23]&1>0 and(f[23]&1>0 or(s[9]+aj<d[9]or s[9]>d[9]+B[19])==h)then
az=d
if bc==h then
return h
end
I=N
aB=E(s,d)end
end
if F==G and not d[10]then
if m<50then
c=B[25]if c>0then
for o,r in v(b[12][c])do
if r>0 and b[12][1][o]<b[12][2][o]then
d=b[12]b[1][_]=h
d[1][o]=an(w(d[1][o]+r,d[2][o]))if D(o,5,11)==o then
W=o-4
end
end
end
end
c=B[29]if c>0 then
c=b[11][c]for o=7,8 do
e[o]=D(e[o]+c[o*2-13],e[o],c[o*2-12])end
b[1][_]=h
end
end
end
end
end
az=h
if ad-R<aj or R>s[9]+24then
return h
end
for a=1,#K do
_=b[2][K[a]]m,bA=bb(s,b[4][_[1]],b[4][_[2]])if m<I then
if bI==1 and _[4]==2 then
aT(_,_[5])end
if(_[3]&1>0 and f[23]&1>0)or _[3]&4==0 then
I=m
aB=bA
else
bg,bs=w(_[9],ad),L(_[8],R)if w(s[9],ad-aj)+24<bs or L(s[9],R)+aj>bg then
I=m
aB=bA
else
ad,R=bg,bs
end
end
end
end
y={R,ad}if bc then
if I~=at then
_=af(s,S(aB,I-at))s[1]=_[1]s[2]=_[2]end
return l
end
return I==at
end
function bb(n,u,as)M=x(u,n)by=E(u,as)+90
aZ=by-E(n,u)bh=-M*bC(aZ)bp=M*X(aZ)aE=by
if bp<0 then
aE=aE+J
end
if bh<0 then
return M,E(n,u)elseif bh>x(as,u)then
return x(as,n),E(n,as)else
return abs(bp),aE
end
end
function am(n,u,aH,F,_)aF=x(n,u)aX=aF
aD=l
N,aL=exp(n)bJ,bH=exp(u)aA,aO=exp(sub(u,n))ai,bD=n[9]+32,u[9]+32
t=h
for a,_ in v(b[2])do
aY=b[4][_[1]]bu,bm=exp(sub(b[4][_[2]],aY))bd,be=exp(sub(n,aY))br=bm*aA-bu*aO
O=(bu*be-bm*bd)/br
bB=(aA*be-aO*bd)/br
if D(O,0,1)==O and D(bB,0,1)==bB then
bo={N+(O*aA),aL+(O*aO)}m=x(n,bo)A=ai+(bD-ai)*(m/aF)if D(A,_[8],_[9])~=A then
aD=h
if aH==1 then
return h
end
if m<aX then
aX=m
bj,bf=exp(bo)bl=A
ab=a
end
end
end
end
if aH>1 then
if aH==3 then
for a,_ in v(b[1])do
if _ and a~=F then
f=b[15][_[4]]if f[23]&1>0 and _[20]then
m=x(n,_)if m<aX then
O=bb(_,n,u)M=(m/aF)A=ai+(bD-ai)*M
if D(A,_[9],_[9]+f[19])==A and O<f[18]then
t=l
aD=h
bj=N+(bJ-N)*M
bf=aL+(bH-aL)*M
bl=A
ab=a
end
end
end
end
end
end
return aD,ab,{bj,bf,bl}end
return l
end
function httpReply(c,g,X)bE=ap//2
ap=0
end
function Y()aK=aK%256+1
return b[13][1][aK]end
function aI(_,a)f=b[15][_[4]]if f[23]&2>0 and _[7]>0 then
_[8]=_[8]-(a+1)//2
_[7]=_[7]-a//2+w(_[8],0)_[8]=L(_[8],0)if Y()<f[10]then
_[6]=f[9]_[15]=0
_[23]=e
_[10]=l
end
end
end
function bi(c,g,aw)return g[20]and abs(((E(c,g)-c[3]+J)%360)-J)<aw and am(c,g,1)end
function bk(C,F)bv=ag and(ag[9]-C[9])*q[6]/x(ag,C)or 0
for a=1,q[12]do
c={}for a=1,30 do
c[a]=C[a]end
c[4]=q[8]c[10]=l
c[14]=F
ba=(Y()/Q-1)*q[10]aM=S(C[3]+ba,q[6])if q[7]>0then
b[1][#b[1]+1]=c
f=b[15][c[4]]c[6]=f[3]c[9]=C[9]+32
c[11]=aM[1]c[12]=aM[2]c[17]=W
c[19]=bv
else
d=af(C,aM)d[9]=e[9]+bv
aQ,ao,d=am(C,d,3,F)if not aQ then
bF=sub(d,S(C[3]+ba,1))b[1][#b[1]+1]=c
c[1]=bF[1]c[2]=bF[2]c[6]=b[15][c[4]][3]c[9]=d[3]c[19]=1
if t then
c=b[1][ao]aI(c,q[9]*((Y()&3)+2))end
end
end
end
end
function aT(_,d)if d>-1 then
c=b[9][d]if c[1]>0 or aa[31]*_[10][2]-aa[32]*_[10][1]<0 then
g=b[8][c[1]]U[g and g[30]or#U+1]={d,1,g or aa}_[4]=c[7]c=c[8]>0 and aT(_,c[8])end
else
aN=l
au=-d
p[9]=-d
end
end
function onTick()ae(9,ar(32))ae(2,h)ae(3,h)for j=1,3 do
if ar(32)and(not ak)or not b[21]then
aW=property.getText(aP..bL)if aW~=bL then
a=1
i=bL
_=aU.sub(aW,a,a)while _~=bLdo
d=aU.byte(_)if d>64 or _==bLthen
i=(i..(d-65))+0
if k==1then
ab=i
if b[i]==bw then
b[i]={}end
k=2
elseif k==2then
A=i
V=0
k=3
elseif k==3then
aV=i
k=4
else
if V==0then
V=A
aV=aV-1
aC={}b[ab][#b[ab]+1]=aC
end
aC[#aC+1]=i
V=V-1
if L(V,aV)==0then
k=1
end
end
i=bL
else
i=i.._
end
a=a+1
_=aU.sub(aW,a,a)end
aP=aP+1
else
ak=l
end
end
end
if ak then
if aN then
U,aN={}ac=1
for a=1,10 do
b[a]=b[a+10*au]end
for a=14,16 do
b[12][1][a]=0
end
au=au+1
for a,_ in v(b[1])do
for j=7,40 do
_[j]=0
end
bK=_[5]+1
_[7]=b[15][_[4]][4]_[9],_[10]=aS(#b[7],_)[1]if _[4]==1 then
if e then
_[7]=e[7]_[8]=e[8]end
G=a
e=_
elseif _[5]&bG<1then
b[1][a]=h
end
end
bn=b[10][1][3]end
for a,_ in v(b[2])do
_[10]=sub(b[4][_[2]],b[4][_[1]])if _[3]&4>0 then
f,B=b[8][b[3][_[6]][6]],b[8][b[3][_[7]][6]]_[8]=L(f[1],B[1])_[9],f[30],B[30]=w(f[2],B[2])else
_[8],_[9]=0,0
end
end
p={}for a=1,32 do
p[a]=0
end
T=w(T+1/bE,2/35)ae(1,T>=0)if T>=0 then
T=T-1/35
for a=2,#b[10]do
b[10][a][0]={}end
for a,r in v(U)do
_=b[9][r[1]]d=r[3]c=_[2]f=d[c]d[c]=D(_[3],f-_[4],f+_[4])+0
f=d[c]if abs(f-_[3])<.1then
U[a]=r[2]==_[5]and{_[6],1,d}or{r[1],r[2]+1,d}if _[6]==0 then
bq(U,a)end
else
d[8]=d[8]or f~=r
end
d[30]=a
end
for a,_ in v(b[1])do
if _ then
for j,r in v({1,2,9})do
_[r]=_[r]+_[r+10]end
_[15]=_[15]+1
f=b[15][_[4]]if _[7]<=0 and _[20]then
_[15]=0
_[6]=f[_[7]<=-f[4]and f[15]>1 and 15or 14]_[10],_[20]=l
if f[27]>0 then
d={}for j=1,30 do
d[j]=_[j]end
d[4]=f[27]d[6]=f[28]b[1][#b[1]+1]=d
end
end
aR=b[16][_[6]]if _[15]>=aR[2]and aR[2]~=-1then
_[6]=aR[4]_[15]=0
ah=b[16][_[6]][3]if ah==1 then
for a,k in v(b[1])do
if k then
i=Q-x(_,k)if i>0 then
aI(k,i)end
end
end
elseif ah==2then
if bi(_,e,90)then
_[23]=e
_[6]=f[5]end
elseif ah==3then
aw=an(E(_,_[23])/45+.5)*45
t=h
k=1
while k<5 and not t do
i=af(_,S(aw+b[19][2][k],8))i[9]=_[9]k=k+1
t=av(i,h,a)and y[1]>=i[9]-24
end
if t then
for j=1,2 do
_[30+j]=i[j]-_[j]_[j]=i[j]end
_[3]=aw
_[10]=l
else
av(_,h,a)end
if f[23]&4<1 then
_[9]=y[1]end
c=x(_,_[23])if f[13]>0 and am(_,_[23],1)and w(c,230)<Y()then
_[6]=f[13]end
if c<64 and f[12]>0then
_[6]=f[12]end
elseif ah>9then
_[3]=E(_,_[23])q=b[14][ah]_[10]=l
ag=_[23]bk(_,a)end
end
if _[17]and _[17]>0then
q=b[14][_[17]]if not av(_,h,a)or _[9]<=y[1]then
if az then
aI(az,f[21]*((Y()&7)+1))end
_[1]=_[1]-_[11]_[2]=_[2]-_[12]_[3]=0
_[6]=b[15][_[4]][9]_[10]=l
_[11]=0
_[12]=0
_[17]=bw
_[19]=0
end
end
if _[6]==1then
b[1][a]=h
else
Z=sub(_,b[10][1])K=b[10][2+Z[1]//Q+Z[2]//Q*bn]if K~=bw then
K[0][#K[0]+1]=a
end
end
end
end
for a=1,8 do
if ar(a)and b[12][1][a+4]>0then
W=a
end
end
q=b[14][W]e[3]=e[3]-ax(3)*(D(ay,5,6)*1.5-6)ay=abs(ax(3))*ay+1
P=e
for a=1,2 do
P=af(P,S(e[3]-J+90*a,ax(a)*8.33))end
P[9]=e[9]for a=1,8 do
t=av(P,l,G,a)end
if t then
for a=1,2 do
e[30+a]=P[a]-e[a]e[a]=P[a]end
if e[9]<=y[1]then
e[9]=w(y[1],e[9]+4)e[19]=L(0,e[19])else
if e[9]>=y[2]-56then
e[9]=y[2]-56
e[19]=w(0,e[19])end
e[19]=e[19]-1
end
end
aJ=b[12][1]d=q[1]if ar(31)and aq<=0 and(d==0 or aJ[d]>=q[2])then
ae(3,l)aq=q[3]if d>0then
aJ[d]=aJ[d]-q[2]end
bx,ag=2048
for a,_ in v(b[1])do
if a~=G and _ and bi(e,_,10)then
m=x(_,e)if m<bx then
if b[15][_[4]][23]&2>0then
ag=_
bx=m
end
end
end
end
bk(e,G)end
aq=aq-1
if ax(4)<0 then
_=af(e,S(e[3],64))_[9]=e[9]aQ,ao=am(e,_,2,G)_=b[2][ao]if aQ==h then
p[2]=ao
d,t=_[4]for a=14,16 do
t=t or b[12][1][a]>0 and d==a
end
if d==1 or t then
aT(_,_[5])elseif d>3000 and d<3005then
bG=an(d-3000)end
end
end
end
p[1]=W
for a=3,8 do
p[a]=e[b[19][4][a]]end
p[5]=G
p[13]=e[3]a=ac
bz=l
H=1
al=#b[1]+#b[8]while H<3 and bz do
d=H*9+5
if a<=#b[1]then
_=b[1][a]if a~=G then
if _ then
if _[10]then
_[10]=h
p[d]=a
for j=1,8 do
p[d+j]=_[b[19][1][j]]end
H=H+1
end
else
p[d]=-a
bq(b[1],a)H=H+1
al=al-1
end
end
else
_=b[8][a-#b[1]]if _[8]then
_[8]=h
p[d]=a-#b[1]+2^15
p[d+1]=_[1]p[d+2]=_[2]H=H+1
end
end
a=((a-2)%al)+1
ac=w(ac,al)bz=a~=ac
end
ac=a
for a=1,32 do
bt.setNumber(a,p[a])end
end
ap=ap+1
async.httpGet(8,bL)end
function onDraw()aG=screen.drawText
aG(26,137,bE)if ak then
for a=1,4 do
c=124+a*7
aG(240,c,an(b[12][1][a]))aG(230,c,b[12][1][13+a])end
end
end
