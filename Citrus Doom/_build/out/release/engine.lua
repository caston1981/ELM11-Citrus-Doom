
P=128
L=180
bO=true
bK=output
bJ=input
G=math
N=G.max
A=G.min
aU=G.floor
pi=G.pi
az=bJ.getNumber
ao=bJ.getBool
ad=bK.setBool
n=bO
i=false
B=ipairs
abs=G.abs
aI=table.remove
aJ=string
function ac(b,h)return{(b[1]+h[1]),(b[2]+h[2])}end
function sub(b,h)return{(b[1]-h[1]),(b[2]-h[2])}end
function bp(b)return G.sin(b/L*pi)end
function al(b)return G.cos(b/L*pi)end
function K(b,h)return G.atan(h[2]-b[2],h[1]-b[1])*L/pi end
function F(b,h,al)return N(A(al,b),h)end
function y(b,h)return G.sqrt(((b[1]-h[1])^2)+((b[2]-h[2])^2))end
function R(b,h)return{al(b)*h,bp(b)*h}end
function exp(b)return b[1],b[2]end
e={}aH=1
av=3
aQ=i
aZ=n
ai=2
aA=0
aB=0
ba=0
aT=0
Z=0
bg=0
l=1
aR=0
bs=2
function bh(a,b,_)if a<2^15 then
_=e[7][a]return bh(_[_[3]*(b[2]-_[2])-_[4]*(b[1]-_[1])>0 and 8 or 7],b)else
a=e[5][e[6][a-32768][2]]return W[e[3][e[2][a[4]][a[5]+6]][6]]end
end
function ag(u,bE,v,bx,_)U=g[v]f=z[U[4]]ax,ak=f[18],f[19]I=ax
C=bh(#e[7],u)S,ah=exp(C)am=sub(u,bf)O=aa[2+am[1]//P+am[2]//P*bI]or{}for a,_ in B(O[0]or{})do
c=g[_]if _~=v and c and U[14]~=_ then
m=y(c,u)H=z[c[4]]if c[20]then
T=m-H[18]if T<I and H[23]&1>0 and(f[23]&1>0 or F(u[9],c[9]-ak,c[9]+H[19])==u[9])then
aX=c
if bE==i then
return i
end
I=T
aL=K(u,c)end
end
if v==1 then
if m<50 then
b=H[25]if b>0 then
for p,s in B(x[b])do
if s>0 and x[1][p]<x[2][p]then
c=x
g[_]=i
c[1][p]=aU(A(c[1][p]+s,c[2][p]))if F(p,5,12)==p then
ai=p-4
end
end
end
end
b=H[29]if b>0 then
b=e[11][b]for p=7,8 do
d[p]=F(d[p]+b[p*2-13],d[p],b[p*2-12])end
g[_]=i
end
end
end
end
end
if ah-S<ak or S>u[9]+24 then
r=(bx or 1)<8 or ba%4>0 or C[6]<18 or ar(U,10)return i
end
for a=1,#O do
_=e[2][O[a]]m,bt=bl(u,V[_[1]],V[_[2]])if m<I then
if(_[3]&1>0 and f[23]&1>0)or _[3]&4==0 then
if v>1 or aN>0 or _[3]&4>0 then
I=m
aL=bt
end
else
aW,aY=A(_[9],ah),N(_[8],S)if A(u[9],ah-ak)+24<aY or N(u[9],S)+ak>aW or aW-aY<ak then
I=m
aL=bt
else
if bx==1 and(_[3]&512>0 or v==1)and(_[4]==2 or v>1)then
aD(_,_[5])end
ah,S=aW,aY
end
end
end
end
C,aX={S,ah}if bE then
if I~=ax then
_=ac(u,R(aL,I-ax))u[1]=_[1]u[2]=_[2]end
return n
end
return I==ax
end
function bl(q,w,aq)M=y(w,q)bj=K(w,aq)+90
by=bj-K(q,w)bo=-M*bp(by)aN=M*al(by)bc=bj
if aN<0 then
bc=bc+L
end
if bo<0 then
return M,K(q,w)elseif bo>y(aq,w)then
return y(aq,q),K(q,aq)else
return abs(aN),bc
end
end
function as(q,w,aE,v,_)aK=y(q,w)ay=aK
aM=n
T,aG=exp(q)bT,bU=exp(w)aV,be=exp(sub(w,q))aw,bM=q[9]+32,w[9]+32
r=i
for a,_ in B(e[2])do
bm=V[_[1]]bk,bu=exp(sub(V[_[2]],bm))bn,bv=exp(sub(q,bm))bQ=bu*aV-bk*be
Y=(bk*bv-bu*bn)/bQ
bi=(aV*bv-be*bn)/bQ
if F(Y,0,1)==Y and F(bi,0,1)==bi then
bw={T+(Y*aV),aG+(Y*be)}m=y(q,bw)D=aw+(bM-aw)*(m/aK)if F(D,_[8]+1,_[9])~=D then
aM=i
if aE==1 then
return i
end
if m<ay then
ay=m
bz,bS=exp(bw)bR=D
bN=a
end
end
end
end
if aE>1 then
if aE==3 then
for a,_ in B(g)do
if _ and a~=v then
f=z[_[4]]if f[23]&1>0 and _[20]then
m=y(q,_)if m<ay then
Y=bl(_,q,w)M=(m/aK)D=aw+(bM-aw)*M
if F(D,_[9],_[9]+f[19])==D and Y<f[18]then
ay=m
r=n
aM=i
bz=T+(bT-T)*M
bS=aG+(bU-aG)*M
bR=D
bN=a
end
end
end
end
end
end
return aM,bN,{bz,bS,bR}end
return n
end
function httpReply(b,h,al)bF=aB//2
aB=0
end
function ae()bg=bg%256+1
return e[13][1][bg]end
function ar(_,a,c)f=z[_[4]]if f[23]&2>0 and _[7]>0 then
_[8]=_[8]-(a+1)//2
_[7]=_[7]-a//2+A(_[8],0)_[8]=N(_[8],0)if ae()<f[10]then
_[6]=f[9]_[15]=0
_[23]=c or d
_[10]=n
end
end
end
function bG(b,h,au)return h[20]and abs(((K(b,h)-b[3]+L)%360)-L)<au and as(b,h,1)end
function aS(E,v)bD=aj and(aj[9]-E[9])*o[6]/y(aj,E)or 0
for a=1,o[12]do
b={}for a=1,30 do
b[a]=E[a]end
b[4]=o[8]b[10]=n
b[14]=v
br=(ae()/P-1)*o[10]aF=R(E[3]+br,o[6])if o[7]>0 then
g[#g+1]=b
f=z[b[4]]b[6]=f[3]b[9]=E[9]+o[13]b[11]=aF[1]b[12]=aF[2]b[17]=ai
b[19]=bD
else
c=ac(E,aF)c[9]=d[9]+bD
aP,ap,c=as(E,c,3,v)if not aP then
bP=sub(c,R(E[3]+br,1))g[#g+1]=b
b[1]=bP[1]b[2]=bP[2]b[6]=z[b[4]][3]b[9]=c[3]b[19]=1
if r then
b=g[ap]ar(b,o[9]*((ae()&3)+2),E)end
end
end
end
end
function aD(_,c)if c>-1 then
b=e[9][c]if b[1]>0 or U[31]*_[10][2]-U[32]*_[10][1]<0 then
h=W[b[1]]an[h and h[30]or#an+1]={c,1,h or U}_[4]=b[7]b=b[8]>0 and aD(_,b[8])end
else
aZ=n
av=-c
t[9]=-c
end
end
function bA()bL,aj=2048
for a,_ in B(g)do
if a>1 and _ and bG(d,_,10)then
m=y(_,d)if m<bL then
if z[_[4]][23]&2>0 then
aj=_
bL=m
end
end
end
end
end
function bC(_)if _[9]~=C[1]and not bB then
_[9]=C[1]_[10]=bO
end
end
function onTick()ad(9,ao(32))ad(2,ao(11))ad(3,i)for k=1,3 do
if ao(32)and(not aQ)or not e[21]then
b_=property.getText(aH)a=1
j=""
_=aJ.sub(b_,a,a)while _~=""do
c=aJ.byte(_)if c>64 then
j=(j..c-65)+0
if l==1 then
bq=j
e[j]=e[j]or{}elseif l==2 then
D=j
ab=0
elseif l==3 then
aO=j
else
if ab==0 then
ab=D
aO=aO-1
bd={}e[bq][#e[bq]+1]=bd
end
bd[#bd+1]=j
ab=ab-1
l=N(ab,aO)>0 and l-1 or 0
end
l=l+1
j=""
else
j=j.._
end
a=a+1
_=aJ.sub(b_,a,a)end
aH=aH+1
aQ=b_==""
end
end
if aQ then
if aZ then
an,aZ={}af=1
for a=1,10 do
e[a]=e[a+10*av]end
g=e[1]V=e[4]W=e[8]aa=e[10]bf,aa[1]=aa[1]x=e[12]z=e[15]for a=14,16 do
x[1][a]=0
end
av=av+1
for a=#g,1,-1 do
_=g[a]for k=7,40 do
_[k]=0
end
_[7]=z[_[4]][4]_[9],_[10]=bh(#e[7],_)[1]if _[5]&bs<1 then
aI(g,a)elseif _[4]==1 then
if d then
_[7]=d[7]_[8]=d[8]end
d=_
end
end
bI=bf[3]end
for a,_ in B(e[2])do
_[10]=sub(V[_[2]],V[_[1]])if _[3]&4>0 then
f,H=W[e[3][_[6]][6]],W[e[3][_[7]][6]]_[8]=N(f[1],H[1])_[9],f[30],H[30]=A(f[2],H[2])else
_[8],_[9]=0,0
end
end
t={}for a=1,32 do
t[a]=0
end
aT=aT+1
Z=A(Z+1/bF,2/35)ad(1,Z>=0)if Z>=0 then
Z=Z-1/35
ba=ba+1
for a=2,#aa do
aa[a][0]={}end
for a,s in B(an)do
_=e[9][s[1]]c=s[3]b=_[2]f=c[b]c[b]=F(_[3],f-_[4],f+_[4])+0
f=c[b]if f==_[3]then
an[a]=s[2]==_[5]and{_[6],1,c}or{s[1],s[2]+1,c}if _[6]==0 then
aI(an,a)end
end
c[10]=c[10]or f~=s
c[30]=a
end
for a,_ in B(g)do
if _ then
for k,s in B({1,2,9})do
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
aC=e[16][_[6]]if _[15]>=aC[2]and aC[2]~=-1 then
_[6]=aC[4]_[15]=0
Q=e[16][_[6]][3]bB=f[23]&4>0
if Q==1 then
for a,l in B(g)do
if l then
j=P-y(_,l)if j>0 then
ar(l,j)end
end
end
elseif Q==2 then
if bG(_,d,90)then
_[23]=d
_[6]=f[5]end
ag(_,i,a,8)bC(_)elseif Q==3 then
_[23]=_[23][20]and _[23]or d
au=aU(K(_,_[23])/45+.5)*45
r=i
l=1
while l<5 and not r do
j=ac(_,R(au+e[19][2][l],8))j[9]=_[9]r=ag(j,i,a,l)and(C[1]>=j[9]-24 or bB)l=l+1
end
if r then
for k=1,2 do
_[30+k]=j[k]-_[k]_[k]=j[k]end
_[3]=au
_[10]=n
else
ag(_,i,a,8)end
bC(_)b=y(_,_[23])if f[13]>0 and as(_,_[23],1)and A(b,230)<ae()then
_[6]=f[13]end
if b<64 and f[12]>0 then
_[6]=f[12]end
elseif Q==5 then
for a=1,11 do
d[3]=d[3]+e[19][9][a]o=e[14][23]bA()aS(d,1)end
d[3]=d[3]-20
elseif Q>9 and _[20]then
_[3]=K(_,_[23])o=e[14][Q]_[10]=n
aj=_[23]aS(_,a)end
end
if _[17]and _[17]>0 then
o=e[14][_[17]]if not ag(_,i,a)or _[9]<=C[1]then
if aX then
ar(aX,f[21]*((ae()&7)+1),g[_[14]])end
_[1]=_[1]-_[11]_[2]=_[2]-_[12]_[3]=0
_[6]=z[_[4]][5]_[10]=n
_[11]=0
_[12],_[17]=0
_[19]=0
end
end
if _[6]==1 then
g[a]=i
else
am=sub(_,bf)O=aa[2+am[1]//P+am[2]//P*bI]if O then
O[0][#O[0]+1]=a
end
end
end
end
for a=1,8 do
if ao(a)and x[1][a+4]>0 then
ai=a
end
end
o=e[14][ai]d[3]=d[3]-az(3)*(F(aR,5,6)*1.5-6)aR=abs(az(3))*aR+1
X=d
for a=1,2 do
X=ac(X,R(d[3]-L+90*a,az(a)*8.33))end
X[9]=d[9]for a=1,8 do
r=ag(X,n,1,a)end
if r then
for a=1,2 do
d[30+a]=X[a]-d[a]d[a]=X[a]end
if d[9]>C[1]then
d[19]=d[19]-1
else
d[9]=A(C[1],d[9]+4)d[19]=N(0,d[19])end
else
d[19]=0
d[9]=C[1]end
bb=x[1]c=o[1]if ao(31)and aA<=0 and(c==0 or bb[c]>=o[2])then
ad(3,n)aA=o[3]if c>0 then
bb[c]=bb[c]-o[2]end
bA()aS(d,1)end
aA=aA-1
if az(4)<0 then
_=ac(d,R(d[3],64))_[9]=d[9]aP,ap=as(d,_,2,1)_=e[2][ap]if aP==i then
t[2]=ap
c,r=_[4]for a=14,16 do
r=r or x[1][a]>0 and c==a
end
if c==1 or r then
aD(_,_[5])elseif c>3000 and c<3005 then
bs=aU(c-3000)end
end
end
end
t[1]=ai
for a=3,13 do
t[a]=d[e[19][4][a]]or t[a]end
x[1][17]=bF
t[10]=x[1][aT%#x[1]+1]a=af
bH=n
J=1
at=#g+#W
while J<3 and bH do
c=J*9+5
if a<=#g then
_=g[a]if a~=1 then
if _ then
if _[10]then
_[10]=i
t[c]=a
for k=1,8 do
t[c+k]=_[e[19][1][k]]end
J=J+1
end
else
t[c]=-a
aI(g,a)J=J+1
at=at-1
end
end
else
_=W[a-#g]if _[10]then
_[10]=i
t[c]=a-#g+2^15
for k=1,6 do
t[c+k]=_[k]end
J=J+1
end
end
a=(a-2)%at+1
af=A(af,at)bH=a~=af
end
af=a
for a=1,32 do
bK.setNumber(a,t[a])end
end
aB=aB+1
async.httpGet(8,"")end
