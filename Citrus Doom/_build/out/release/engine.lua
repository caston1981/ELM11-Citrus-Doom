
V=128
ai=180
F=math
O=F.max
z=F.min
aK=F.floor
pi=F.pi/ai
as=input.getNumber
ag=input.getBool
al=output.setBool
o=true
w=false
B=ipairs
abs=F.abs
aX=table.remove
aZ=string
function ac(b,g)return{(b[1]+g[1]),(b[2]+g[2])}end
function sub(b,g)return{(b[1]-g[1]),(b[2]-g[2])}end
function bQ(b)return F.sin(b*pi)end
function aL(b)return F.cos(b*pi)end
function K(b,g)return F.atan(g[2]-b[2],g[1]-b[1])/pi end
function E(b,g,aL)return O(z(aL,b),g)end
function v(b,g)return F.sqrt(((b[1]-g[1])^2)+((b[2]-g[2])^2))end
function M(b,g)return{aL(b)*g,bQ(b)*g}end
function exp(b)return b[1],b[2]end
e={}aH=1
ax=3
bd=o
ae=2
az=0
aA=0
aq=0
bg=0
T=0
ba=0
k=1
aF=0
bL=2
function aD(a,b,_)if a<2^15 then
_=e[7][a]return aD(_[_[3]*(b[2]-_[2])-_[4]*(b[1]-_[1])>0 and 8 or 7],b)else
a=e[5][e[6][a-2^15][2]]return Y[e[3][e[2][a[4]][a[5]+6]][6]]end
end
function aj(t,bt,A,bj,_)N=h[A]d=D[N[4]]ap,ah=d[18],d[19]I=ap
x=aD(#e[7],t)af,ab=exp(x)am=sub(t,b_)L=P[2+am[1]//V+am[2]//V*bB]or{}for a,_ in B(L[0]or{})do
c=h[_]if _~=A and c and N[14]~=c then
l=v(c,t)G=D[c[4]]if c[20]then
R=l-G[18]if R<I and G[23]&1>0 and(d[23]&1>0 or E(t[9],c[9]-ah,c[9]+G[19])==t[9])then
aC=c
if bt==w then
return
end
I=R
aE=K(t,c)end
end
if A==1 and l<50 then
b=G[25]if b>0 then
for r,s in B(y[b])do
if s>0 and y[1][r]<y[2][r]then
c=y
h[_]=w
c[1][r]=aK(z(c[1][r]+s,c[2][r]))if E(r,5,12)==r then
ae=r-4
end
end
end
end
b=G[29]if b>0 then
b=e[11][b]for r=7,8 do
f[r]=E(f[r]+b[r*2-13],f[r],b[r*2-12])end
h[_]=w
end
end
end
end
_=(bj or 1)<8
if ab-af<ah then
q=_ or aq%4>0 or x[6]<18 or an(N,10)return
end
q=_ or aq%32>0 or x[6]~=5 or an(N,10)for a=1,#L do
_=e[2][L[a]]l,bl=bs(t,W[_[1]],W[_[2]])if l<I then
if _[3]&1>0 and d[23]&1>0 or _[3]&4==0 then
if A>1 or aT>0 or _[3]&4>0 then
I=l
aE=bl
end
else
aY,be=z(_[9],ab),O(_[8],af)if z(t[9],ab-ah)+24<be or O(t[9],af)+ah>aY or aY-be<ah then
I=l
aE=bl
else
if bj==1 and(_[3]&512>0 or A==1)and(_[4]==2 or A>1)then
aN(_,_[5])end
ab,af=aY,be
end
end
end
end
x,aC={af,ab}if bt then
if I~=ap then
_=ac(t,M(aE,I-ap))t[1]=_[1]t[2]=_[2]end
return o
end
return I==ap
end
function bs(p,u,aw)S=v(u,p)br=K(u,aw)+90
bP=br-K(p,u)aT,bq=exp(M(-bP,S))aO=br
if aT<0 then
aO=aO+ai
end
if bq<0 then
return S,K(p,u)elseif bq>v(aw,u)then
return v(aw,p),K(p,aw)else
return abs(aT),aO
end
end
function at(p,u,aR,A)aW=v(p,u)ay=aW
aS,q=o
R,aG=exp(p)bR,bO=exp(u)aU,aM=exp(sub(u,p))ar,bx=p[9]+32,u[9]+32
for a,_ in B(e[2])do
bH=W[_[1]]bD,bN=exp(sub(W[_[2]],bH))bM,bu=exp(sub(p,bH))by=bN*aU-bD*aM
Q=(bD*bu-bN*bM)/by
bC=(aU*bu-aM*bM)/by
if E(Q,0,1)==Q and E(bC,0,1)==bC then
bn={R+(Q*aU),aG+(Q*aM)}l=v(p,bn)H=ar+(bx-ar)*(l/aW)if E(H,_[8]+1,_[9])~=H then
aS=w
if aR==1 then
return
end
if l<ay then
ay=l
bK,bi=exp(bn)bm=H
bJ=a
end
end
end
end
if aR>1 then
if aR==3 then
for a,_ in B(h)do
if _ and a~=A then
d=D[_[4]]if d[23]&1>0 and _[20]then
l=v(p,_)if l<ay then
Q=bs(_,p,u)S=(l/aW)H=ar+(bx-ar)*S
if E(H,_[9],_[9]+d[19])==H and Q<d[18]then
ay=l
q,aS=o
bK=R+(bR-R)*S
bi=aG+(bO-aG)*S
bm=H
bJ=a
end
end
end
end
end
end
return aS,bJ,{bK,bi,bm}end
return o
end
function httpReply()bh=aA//2
aA=0
end
function aa()ba=ba%256+1
return e[13][1][ba]end
function an(_,a,c)d=D[_[4]]if d[23]&2>0 and _[7]>0 then
_[8]=_[8]-(a+1)//2
_[7]=_[7]-a//2+z(_[8],0)_[8]=O(_[8],0)_[33]=d[13]~="lost soul missile state" and c or f
if aa()<d[10]then
_[6]=d[9]_[15]=0
_[10]=o
end
end
end
function bk(b,g,av)return g[20]and abs(((K(b,g)-b[3]+ai)%360)-ai)<av and at(b,g,1)end
function aV(C,A)bp=ao and(ao[9]-C[9])*n[6]/v(ao,C)or 0
for a=1,n[12]do
b={}for a=1,33 do
b[a]=C[a]end
b[4]=n[8]b[10]=o
b[14]=C
bz=(aa()/V-1)*n[10]bb=M(C[3]+bz,n[6])if n[7]>0 then
h[#h+1]=b
d=D[b[4]]b[6]=d[3]b[9]=C[9]+n[13]b[11]=bb[1]b[12]=bb[2]b[17]=ae
b[19]=bp
else
c=ac(C,bb)c[9]=f[9]+bp
aI,aB,c=at(C,c,3,A)if not aI then
bv=sub(c,M(C[3]+bz,1))h[#h+1]=b
b[1]=bv[1]b[2]=bv[2]b[6]=D[b[4]][3]b[9]=c[3]b[19]=1
if q then
b=h[aB]an(b,n[9]*((aa()&3)+2),C)end
end
end
end
end
function aN(_,c)if c>-1 then
b=e[9][c]if b[1]>0 or N[31]*_[10][2]-N[32]*_[10][1]<0 then
g=Y[b[1]]ad[g and g[30]or#ad+1]={c,1,g or N}_[4]=b[7]b=b[8]>0 and aN(_,b[8])end
else
bd=o
ax=-c
m[10]=-c
end
end
function bA()bo,ao=2048
for a,_ in B(h)do
if a>1 and _ and bk(f,_,10)then
l=v(_,f)if l<bo then
if D[_[4]][23]&2>0 then
ao=_
bo=l
end
end
end
end
end
function bG(_)if _[9]~=x[1]and not bw then
_[9]=x[1]_[10]=true
end
end
function onTick()al(9,ag(32))al(2,ag(11))al(3,w)for j=1,3 do
if ag(32)and(not bE)or not e[21]then
aP=property.getText(aH)a=1
i=""
_=aZ.sub(aP,a,a)while _~=""do
c=aZ.byte(_)if c>64 then
i=(i..c-65)+0
if k==1 then
bI=i
e[i]=e[i]or{}elseif k==2 then
H=i
ak=0
elseif k==3 then
bf=i
else
if ak==0 then
ak=H
bf=bf-1
bc={}e[bI][#e[bI]+1]=bc
end
bc[#bc+1]=i
ak=ak-1
k=O(ak,bf)>0 and k-1 or 0
end
k=k+1
i=""
else
i=i.._
end
a=a+1
_=aZ.sub(aP,a,a)end
aH=aH+1
bE=aP==""
end
end
if bE then
if bd then
ad,bd={}Z=1
for a=1,10 do
e[a]=e[a+10*ax]end
h=e[1]W=e[4]Y=e[8]P=e[10]b_,P[1]=P[1]y=e[12]D=e[15]for a=14,16 do
y[1][a]=0
end
ax=ax+1
for a=#h,1,-1 do
_=h[a]for j=7,32 do
_[j]=0
end
_[7]=D[_[4]][4]_[9],_[10]=aD(#e[7],_)[1]if _[5]&bL<1 then
aX(h,a)elseif _[4]==1 then
if f then
_[7]=f[7]_[8]=f[8]end
f=_
end
end
bB=b_[3]end
for a,_ in B(e[2])do
_[10]=sub(W[_[2]],W[_[1]])if _[3]&4>0 then
d,G=Y[e[3][_[6]][6]],Y[e[3][_[7]][6]]_[8]=O(d[1],G[1])_[9],d[30],G[30]=z(d[2],G[2])else
_[8],_[9]=0,0
end
end
m={}for a=1,32 do
m[a]=0
end
bg=bg+1
T=z(T+1/bh,2/35)al(1,T>=0)if T>=0 then
T=T-1/35
aq=aq+1
for a=2,#P do
P[a][0]={}end
for a,s in B(ad)do
_=e[9][s[1]]c=s[3]b=_[2]d=c[b]c[b]=E(_[3],d-_[4],d+_[4])+0
d=c[b]if d==_[3]then
ad[a]=s[2]==_[5]and{_[6],1,c}or{s[1],s[2]+1,c}if _[6]==0 then
aX(ad,a)end
end
c[10]=c[10]or d~=s
c[30]=a
end
for a,_ in B(h)do
if _ then
for j,s in B({1,2,9})do
_[s]=_[s]+_[s+10]end
_[15]=_[15]+1
d=D[_[4]]if _[7]<=0 and _[20]then
_[15]=0
_[6]=d[_[7]<=-d[4]and d[15]>1 and 15 or 14]_[10],_[20]=o
m[12]=d[16]if d[27]>0 then
c={}for j=1,30 do
c[j]=_[j]end
c[4]=d[27]c[6]=d[28]h[#h+1]=c
end
end
aJ=e[16][_[6]]_[33]=_[33]and(_[33][20]and _[33]or f)if _[15]>=aJ[2]and aJ[2]~=-1 then
_[6]=aJ[4]_[15]=0
U=e[16][_[6]][3]bw=d[23]&4>0
if U==1 then
for a,k in B(h)do
if k then
i=V-v(_,k)if i>0 then
an(k,i)end
end
end
elseif U==2 then
if bk(_,f,90)then
_[33]=f
_[6]=d[5]m[12]=d[6]end
aj(_,w,a,8)bG(_)elseif U==3 then
av,q=aK(K(_,_[33])/45+.5)*45
k=1
while k<5 and not q do
i=ac(_,M(av+e[19][2][k],8))i[9]=_[9]q=aj(i,w,a,k)and(x[1]>=i[9]-24 or bw)k=k+1
end
if q then
for j=1,2 do
_[30+j]=i[j]-_[j]_[j]=i[j]end
_[3]=av
_[10]=o
else
aj(_,w,a,8)end
bG(_)b=v(_,_[33])if d[13]>0 and at(_,_[33],1)and z(b,230)<aa()then
_[6]=d[13]end
if b<64 and d[12]>0 then
_[6]=d[12]end
elseif U==5 then
for a=1,11 do
f[3]=f[3]+e[19][9][a]n=e[14][23]bA()aV(f,1)end
f[3]=f[3]-20
elseif U>9 and _[20]then
_[3]=K(_,_[33])n=e[14][U]_[10]=o
ao=_[33]aV(_,a)end
end
if _[17]and _[17]>0 then
n=e[14][_[17]]if not aj(_,w,a)or _[9]<=x[1]then
if aC then
an(aC,d[21]*((aa()&7)+1),_[14])end
_[1]=_[1]-_[11]_[2]=_[2]-_[12]_[3]=0
_[6]=D[_[4]][5]_[10]=o
_[11]=0
_[12],_[17]=0
m[12]=d[16]_[19]=0
end
end
if _[6]==1 then
h[a]=w
else
am=sub(_,b_)L=P[2+am[1]//V+am[2]//V*bB]if L then
L[0][#L[0]+1]=a
end
end
end
end
for a=1,8 do
if ag(a)and y[1][a+4]>0 then
ae=a
end
end
n=e[14][ae]f[3]=f[3]-as(3)*(E(aF,5,6)*1.5-6)aF=abs(as(3))*aF+1
X=f
for a=1,2 do
X=ac(X,M(f[3]-ai+90*a,as(a)*8.33))end
X[9]=f[9]for a=1,8 do
q=aj(X,o,1,a)end
if q then
for a=1,2 do
f[30+a]=X[a]-f[a]f[a]=X[a]end
if f[9]>x[1]then
f[19]=f[19]-1
else
f[9]=z(x[1],f[9]+4)f[19]=O(0,f[19])end
else
f[19]=0
f[9]=x[1]end
aQ=y[1]c=n[1]if ag(31)and az<=0 and(c==0 or aQ[c]>=n[2])then
al(3,o)az=n[3]if c>0 then
aQ[c]=aQ[c]-n[2]end
bA()aV(f,1)end
az=az-1
if as(4)<0 then
_=ac(f,M(f[3],64))_[9]=f[9]aI,aB=at(f,_,2,1)_=e[2][aB]if aI==w then
m[2]=aB
c,q=_[4]for a=14,16 do
q=q or y[1][a]>0 and c==a
end
if c==1 or q then
aN(_,_[5])elseif c>3000 and c<3005 then
bL=aK(c-3000)end
end
end
end
m[1]=ae
for a=3,14 do
m[a]=f[e[19][4][a]]or m[a]end
y[1][17]=bh
m[11]=y[1][bg%#y[1]+1]a=Z
bF=o
J=1
au=#h+#Y
while J<3 and bF do
c=J*9+6
if a<=#e[1]then
_=h[a]if _ then
if _[10]and a>1 then
m[c],_[10]=a
for j=1,8 do
m[c+j]=_[e[19][1][j]]end
J=J+1
end
else
m[c]=-a
aX(h,a)J=J+1
au=au-1
end
else
_=Y[a-#h]if _[10]then
m[c],_[10]=a-#h+2^15
for j=1,6 do
m[c+j]=_[j]end
J=J+1
end
end
a=(a-2)%au+1
Z=z(Z,au)bF=a~=Z
end
Z=a
for a=1,32 do
output.setNumber(a,m[a])end
end
aA=aA+1
async.httpGet(8,"")end
