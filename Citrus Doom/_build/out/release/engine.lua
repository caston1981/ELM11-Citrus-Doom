
P=128
O=180
G=math
L=G.max
C=G.min
aP=G.floor
pi=G.pi
az=input.getNumber
aj=input.getBool
al=output.setBool
o=true
i=false
A=ipairs
abs=G.abs
bc=table.remove
aL=string
function ae(b,h)return{(b[1]+h[1]),(b[2]+h[2])}end
function sub(b,h)return{(b[1]-h[1]),(b[2]-h[2])}end
function br(b)return G.sin(b/O*pi)end
function ac(b)return G.cos(b/O*pi)end
function K(b,h)return G.atan(h[2]-b[2],h[1]-b[1])*O/pi end
function F(b,h,ac)return L(C(ac,b),h)end
function w(b,h)return G.sqrt(((b[1]-h[1])^2)+((b[2]-h[2])^2))end
function R(b,h)return{ac(b)*h,br(b)*h}end
function exp(b)return b[1],b[2]end
e={}aY=1
at=3
aS=i
bd=o
ak=2
av=0
aq=0
bf=0
aZ=0
S=0
aV=0
l=1
aM=0
bM=2
function aR(a,b,_)if a<2^15 then
_=e[7][a]return aR(_[_[3]*(b[2]-_[2])-_[4]*(b[1]-_[1])>0 and 8 or 7],b)else
a=e[5][e[6][a-32768][2]]return W[e[3][e[2][a[4]][a[5]+6]][6]]end
end
function ah(r,bD,x,bI,_)X=g[x]f=B[X[4]]ay,ai=f[18],f[19]J=ay
z=aR(#e[7],r)aa,an=exp(z)am=sub(r,bb)N=Z[2+am[1]//P+am[2]//P*bo]or{}for a,_ in A(N[0]or{})do
c=g[_]if _~=x and c and X[14]~=_ then
m=w(c,r)H=B[c[4]]if c[20]then
U=m-H[18]if U<J and H[23]&1>0 and(f[23]&1>0 or F(r[9],c[9]-ai,c[9]+H[19])==r[9])then
aC=c
if bD==i then
return i
end
J=U
aI=K(r,c)end
end
if x==1 then
if m<50 then
b=H[25]if b>0 then
for q,s in A(v[b])do
if s>0 and v[1][q]<v[2][q]then
c=v
g[_]=i
c[1][q]=aP(C(c[1][q]+s,c[2][q]))if F(q,5,12)==q then
ak=q-4
end
end
end
end
b=H[29]if b>0 then
b=e[11][b]for q=7,8 do
d[q]=F(d[q]+b[q*2-13],d[q],b[q*2-12])end
g[_]=i
end
end
end
end
end
if an-aa<ai or aa>r[9]+24 then
t=(bI or 1)<8 or bf%4>0 or z[6]<18 or ar(X,10)return i
end
for a=1,#N do
_=e[2][N[a]]m,bz=bG(r,Y[_[1]],Y[_[2]])if m<J then
if(_[3]&1>0 and f[23]&1>0)or _[3]&4==0 then
if x>1 or aK>0 or _[3]&4>0 then
J=m
aI=bz
end
else
aW,aF=C(_[9],an),L(_[8],aa)if C(r[9],an-ai)+24<aF or L(r[9],aa)+ai>aW or aW-aF<ai then
J=m
aI=bz
else
if bI==1 and(_[3]&512>0 or x==1)and(_[4]==2 or x>1)then
aU(_,_[5])end
an,aa=aW,aF
end
end
end
end
z,aC={aa,an}if bD then
if J~=ay then
_=ae(r,R(aI,J-ay))r[1]=_[1]r[2]=_[2]end
return o
end
return J==ay
end
function bG(p,y,aB)M=w(y,p)bp=K(y,aB)+90
bB=bp-K(p,y)bP=-M*br(bB)aK=M*ac(bB)bh=bp
if aK<0 then
bh=bh+O
end
if bP<0 then
return M,K(p,y)elseif bP>w(aB,y)then
return w(aB,p),K(p,aB)else
return abs(aK),bh
end
end
function aA(p,y,aD,x,_)aT=w(p,y)as=aT
aN=o
U,aE=exp(p)bR,bQ=exp(y)aH,aJ=exp(sub(y,p))aw,bt=p[9]+32,y[9]+32
t=i
for a,_ in A(e[2])do
bl=Y[_[1]]bk,bH=exp(sub(Y[_[2]],bl))bj,bL=exp(sub(p,bl))by=bH*aH-bk*aJ
Q=(bk*bL-bH*bj)/by
bn=(aH*bL-aJ*bj)/by
if F(Q,0,1)==Q and F(bn,0,1)==bn then
bx={U+(Q*aH),aE+(Q*aJ)}m=w(p,bx)E=aw+(bt-aw)*(m/aT)if F(E,_[8]+1,_[9])~=E then
aN=i
if aD==1 then
return i
end
if m<as then
as=m
bu,bA=exp(bx)bC=E
bJ=a
end
end
end
end
if aD>1 then
if aD==3 then
for a,_ in A(g)do
if _ and a~=x then
f=B[_[4]]if f[23]&1>0 and _[20]then
m=w(p,_)if m<as then
Q=bG(_,p,y)M=(m/aT)E=aw+(bt-aw)*M
if F(E,_[9],_[9]+f[19])==E and Q<f[18]then
as=m
t=o
aN=i
bu=U+(bR-U)*M
bA=aE+(bQ-aE)*M
bC=E
bJ=a
end
end
end
end
end
end
return aN,bJ,{bu,bA,bC}end
return o
end
function httpReply(b,h,ac)bK=aq//2
aq=0
end
function ab()aV=aV%256+1
return e[13][1][aV]end
function ar(_,a,c)f=B[_[4]]if f[23]&2>0 and _[7]>0 then
_[8]=_[8]-(a+1)//2
_[7]=_[7]-a//2+C(_[8],0)_[8]=L(_[8],0)if ab()<f[10]then
_[6]=f[9]_[15]=0
_[23]=c or d
_[10]=o
end
end
end
function bv(b,h,au)return h[20]and abs(((K(b,h)-b[3]+O)%360)-O)<au and aA(b,h,1)end
function aX(D,x)bq=ad and(ad[9]-D[9])*n[6]/w(ad,D)or 0
for a=1,n[12]do
b={}for a=1,30 do
b[a]=D[a]end
b[4]=n[8]b[10]=o
b[14]=x
bi=(ab()/P-1)*n[10]be=R(D[3]+bi,n[6])if n[7]>0 then
g[#g+1]=b
f=B[b[4]]b[6]=f[3]b[9]=D[9]+n[13]b[11]=be[1]b[12]=be[2]b[17]=ak
b[19]=bq
else
c=ae(D,be)c[9]=d[9]+bq
aO,ap,c=aA(D,c,3,x)if not aO then
bm=sub(c,R(D[3]+bi,1))g[#g+1]=b
b[1]=bm[1]b[2]=bm[2]b[6]=B[b[4]][3]b[9]=c[3]b[19]=1
if t then
b=g[ap]ar(b,n[9]*((ab()&3)+2),D)end
end
end
end
end
function aU(_,c)if c>-1 then
b=e[9][c]if b[1]>0 or X[31]*_[10][2]-X[32]*_[10][1]<0 then
h=W[b[1]]ao[h and h[30]or#ao+1]={c,1,h or X}_[4]=b[7]b=b[8]>0 and aU(_,b[8])end
else
bd=o
at=-c
u[9]=-c
end
end
function bO()bw,ad=2048
for a,_ in A(g)do
if a>1 and _ and bv(d,_,10)then
m=w(_,d)if m<bw then
if B[_[4]][23]&2>0 then
ad=_
bw=m
end
end
end
end
end
function bN(_)if _[9]~=z[1]and not bF then
_[9]=z[1]_[10]=true
end
end
function onTick()al(9,aj(32))al(2,aj(11))al(3,i)for k=1,3 do
if aj(32)and(not aS)or not e[21]then
bg=property.getText(aY)a=1
j=""
_=aL.sub(bg,a,a)while _~=""do
c=aL.byte(_)if c>64 then
j=(j..c-65)+0
if l==1 then
bs=j
e[j]=e[j]or{}elseif l==2 then
E=j
ag=0
elseif l==3 then
aG=j
else
if ag==0 then
ag=E
aG=aG-1
ba={}e[bs][#e[bs]+1]=ba
end
ba[#ba+1]=j
ag=ag-1
l=L(ag,aG)>0 and l-1 or 0
end
l=l+1
j=""
else
j=j.._
end
a=a+1
_=aL.sub(bg,a,a)end
aY=aY+1
aS=bg==""
end
end
if aS then
if bd then
ao,bd={}af=1
for a=1,10 do
e[a]=e[a+10*at]end
g=e[1]Y=e[4]W=e[8]Z=e[10]bb,Z[1]=Z[1]v=e[12]B=e[15]for a=14,16 do
v[1][a]=0
end
at=at+1
for a=#g,1,-1 do
_=g[a]for k=7,40 do
_[k]=0
end
_[7]=B[_[4]][4]_[9],_[10]=aR(#e[7],_)[1]if _[5]&bM<1 then
bc(g,a)elseif _[4]==1 then
if d then
_[7]=d[7]_[8]=d[8]end
d=_
end
end
bo=bb[3]end
for a,_ in A(e[2])do
_[10]=sub(Y[_[2]],Y[_[1]])if _[3]&4>0 then
f,H=W[e[3][_[6]][6]],W[e[3][_[7]][6]]_[8]=L(f[1],H[1])_[9],f[30],H[30]=C(f[2],H[2])else
_[8],_[9]=0,0
end
end
u={}for a=1,32 do
u[a]=0
end
aZ=aZ+1
S=C(S+1/bK,2/35)al(1,S>=0)if S>=0 then
S=S-1/35
bf=bf+1
for a=2,#Z do
Z[a][0]={}end
for a,s in A(ao)do
_=e[9][s[1]]c=s[3]b=_[2]f=c[b]c[b]=F(_[3],f-_[4],f+_[4])+0
f=c[b]if f==_[3]then
ao[a]=s[2]==_[5]and{_[6],1,c}or{s[1],s[2]+1,c}if _[6]==0 then
bc(ao,a)end
end
c[10]=c[10]or f~=s
c[30]=a
end
for a,_ in A(g)do
if _ then
for k,s in A({1,2,9})do
_[s]=_[s]+_[s+10]end
_[15]=_[15]+1
f=B[_[4]]if _[7]<=0 and _[20]then
_[15]=0
_[6]=f[_[7]<=-f[4]and f[15]>1 and 15 or 14]_[10],_[20]=o
if f[27]>0 then
c={}for k=1,30 do
c[k]=_[k]end
c[4]=f[27]c[6]=f[28]g[#g+1]=c
end
end
aQ=e[16][_[6]]if _[15]>=aQ[2]and aQ[2]~=-1 then
_[6]=aQ[4]_[15]=0
T=e[16][_[6]][3]bF=f[23]&4>0
if T==1 then
for a,l in A(g)do
if l then
j=P-w(_,l)if j>0 then
ar(l,j)end
end
end
elseif T==2 then
if bv(_,d,90)then
_[23]=d
_[6]=f[5]end
ah(_,i,a,8)bN(_)elseif T==3 then
_[23]=_[23][20]and _[23]or d
au=aP(K(_,_[23])/45+.5)*45
t=i
l=1
while l<5 and not t do
j=ae(_,R(au+e[19][2][l],8))j[9]=_[9]t=ah(j,i,a,l)and(z[1]>=j[9]-24 or bF)l=l+1
end
if t then
for k=1,2 do
_[30+k]=j[k]-_[k]_[k]=j[k]end
_[3]=au
_[10]=o
else
ah(_,i,a,8)end
bN(_)b=w(_,_[23])if f[13]>0 and aA(_,_[23],1)and C(b,230)<ab()then
_[6]=f[13]end
if b<64 and f[12]>0 then
_[6]=f[12]end
elseif T==5 then
for a=1,11 do
d[3]=d[3]+e[19][9][a]n=e[14][23]bO()aX(d,1)end
d[3]=d[3]-20
elseif T>9 and _[20]then
_[3]=K(_,_[23])n=e[14][T]_[10]=o
ad=_[23]aX(_,a)end
end
if _[17]and _[17]>0 then
n=e[14][_[17]]if not ah(_,i,a)or _[9]<=z[1]then
if aC then
ar(aC,f[21]*((ab()&7)+1),g[_[14]])end
_[1]=_[1]-_[11]_[2]=_[2]-_[12]_[3]=0
_[6]=B[_[4]][5]_[10]=o
_[11]=0
_[12],_[17]=0
_[19]=0
end
end
if _[6]==1 then
g[a]=i
else
am=sub(_,bb)N=Z[2+am[1]//P+am[2]//P*bo]if N then
N[0][#N[0]+1]=a
end
end
end
end
for a=1,8 do
if aj(a)and v[1][a+4]>0 then
ak=a
end
end
n=e[14][ak]d[3]=d[3]-az(3)*(F(aM,5,6)*1.5-6)aM=abs(az(3))*aM+1
V=d
for a=1,2 do
V=ae(V,R(d[3]-O+90*a,az(a)*8.33))end
V[9]=d[9]for a=1,8 do
t=ah(V,o,1,a)end
if t then
for a=1,2 do
d[30+a]=V[a]-d[a]d[a]=V[a]end
if d[9]>z[1]then
d[19]=d[19]-1
else
d[9]=C(z[1],d[9]+4)d[19]=L(0,d[19])end
else
d[19]=0
d[9]=z[1]end
b_=v[1]c=n[1]if aj(31)and av<=0 and(c==0 or b_[c]>=n[2])then
al(3,o)av=n[3]if c>0 then
b_[c]=b_[c]-n[2]end
bO()aX(d,1)end
av=av-1
if az(4)<0 then
_=ae(d,R(d[3],64))_[9]=d[9]aO,ap=aA(d,_,2,1)_=e[2][ap]if aO==i then
u[2]=ap
c,t=_[4]for a=14,16 do
t=t or v[1][a]>0 and c==a
end
if c==1 or t then
aU(_,_[5])elseif c>3000 and c<3005 then
bM=aP(c-3000)end
end
end
end
u[1]=ak
for a=3,13 do
u[a]=d[e[19][4][a]]or u[a]end
v[1][17]=bK
u[10]=v[1][aZ%#v[1]+1]a=af
bE=o
I=1
ax=#g+#W
while I<3 and bE do
c=I*9+5
if a<=#g then
_=g[a]if a~=1 then
if _ then
if _[10]then
_[10]=i
u[c]=a
for k=1,8 do
u[c+k]=_[e[19][1][k]]end
I=I+1
end
else
u[c]=-a
bc(g,a)I=I+1
ax=ax-1
end
end
else
_=W[a-#g]if _[10]then
_[10]=i
u[c]=a-#g+2^15
for k=1,6 do
u[c+k]=_[k]end
I=I+1
end
end
a=(a-2)%ax+1
af=C(af,ax)bE=a~=af
end
af=a
for a=1,32 do
output.setNumber(a,u[a])end
end
aq=aq+1
async.httpGet(8,"")end
