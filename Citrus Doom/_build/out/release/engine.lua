
Q=128
ao=180
E=math
L=E.max
A=E.min
aI=E.floor
pi=E.pi/ao
aq=input.getNumber
ab=input.getBool
ae=output.setBool
n=true
z=false
x=ipairs
abs=E.abs
b_=table.remove
aN=string
function ad(b,h)return{(b[1]+h[1]),(b[2]+h[2])}end
function sub(b,h)return{(b[1]-h[1]),(b[2]-h[2])}end
function bR(b)return E.sin(b*pi)end
function aF(b)return E.cos(b*pi)end
function I(b,h)return E.atan(h[2]-b[2],h[1]-b[1])/pi end
function G(b,h,aF)return L(A(aF,b),h)end
function y(b,h)return E.sqrt(((b[1]-h[1])^2)+((b[2]-h[2])^2))end
function N(b,h)return{aF(b)*h,bR(b)*h}end
function exp(b)return b[1],b[2]end
f={}aC=1
ax=3
aJ=n
Z=2
as=0
aB=0
au=0
aO=0
P=0
aH=0
l=1
bf=0
bA=2
function aE(a,b,_)if a<2^15 then
_=f[7][a]return aE(_[_[3]*(b[2]-_[2])-_[4]*(b[1]-_[1])>0 and 8 or 7],b)else
a=f[5][f[6][a-2^15][2]]return V[f[3][f[2][a[4]][a[5]+6]][6]]end
end
function ac(t,bN,C,bE,_)O=g[C]d=D[O[4]]aA,an=d[18],d[19]K,bb=aA
v=aE(#f[7],t)aj,ah=exp(v)ai=sub(t,bd)M=T[2+ai[1]//Q+ai[2]//Q*bK]or{}for a,_ in x(M[0]or{})do
c=g[_]if _~=C and c and O[14]~=c then
k=y(c,t)F=D[c[4]]if c[20]then
S=k-F[18]if S<K and F[23]&1>0 and(d[23]&1>0 or G(t[9],c[9]-an,c[9]+F[19])==t[9])then
bb=c
K=S
aP=I(t,c)end
end
if C==1 and k<50 then
b=F[25]if b>0 then
for r,s in x(w[b])do
if s>0 and w[1][r]<w[2][r]then
c=w
g[_]=z
c[1][r]=aI(A(c[1][r]+s,c[2][r]))if G(r,5,12)==r then
Z=r-4
end
end
end
end
b=F[29]if b>0 then
b=f[11][b]for r=7,8 do
e[r]=G(e[r]+b[r*2-13],e[r],b[r*2-12])end
g[_]=z
end
end
end
end
_=(bE or 1)<8
if ah-aj<an then
p=_ or au%4>0 or v[6]<18 or aa(O,10)return
end
p=_ or au%32>0 or v[6]~=5 or aa(O,10)for a=1,#M do
_=f[2][M[a]]k,bD=bh(t,Y[_[1]],Y[_[2]])if k<K then
if _[3]&1>0 and d[23]&1>0 or _[3]&4==0 then
if C>1 or aL>0 or _[3]&4>0 then
K=k
aP=bD
end
else
aW,bc=A(_[9],ah),L(_[8],aj)if A(t[9],ah-an)+24<bc or L(t[9],aj)+an>aW or aW-bc<an then
K=k
aP=bD
else
if bE==1 and(_[3]&512>0 or C==1)and(_[4]==2 or C>1)then
aQ(_,_[5])end
ah,aj=aW,bc
end
end
end
end
v={aj,ah}if bN then
if K~=aA then
_=ad(t,N(aP,K-aA))t[1]=_[1]t[2]=_[2]end
return n
end
return K==aA
end
function bh(q,u,ap)X=y(u,q)bu=I(u,ap)+90
bP=bu-I(q,u)aL,bo=exp(N(-bP,X))aS=bu
if aL<0 then
aS=aS+ao
end
if bo<0 then
return X,I(q,u)elseif bo>y(ap,u)then
return y(ap,q),I(q,ap)else
return abs(aL),aS
end
end
function ar(q,u,ba,C)aT=y(q,u)az=aT
bg,p=n
S,aU=exp(q)bO,bQ=exp(u)aR,aM=exp(sub(u,q))aw,bn=q[9]+32,u[9]+32
for a,_ in x(f[2])do
bs=Y[_[1]]bt,bI=exp(sub(Y[_[2]],bs))br,bB=exp(sub(q,bs))bv=bI*aR-bt*aM
W=(bt*bB-bI*br)/bv
bF=(aR*bB-aM*br)/bv
if G(W,0,1)==W and G(bF,0,1)==bF then
bp={S+(W*aR),aU+(W*aM)}k=y(q,bp)H=aw+(bn-aw)*(k/aT)if G(H,_[8]+1,_[9])~=H then
bg=z
if ba==1 then
return
end
if k<az then
az=k
bi,bG=exp(bp)bJ=H
bm=a
end
end
end
end
if ba>1 then
if ba==3 then
for a,_ in x(g)do
if _ and a~=C then
d=D[_[4]]if d[23]&1>0 and _[20]then
k=y(q,_)if k<az then
W=bh(_,q,u)X=(k/aT)H=aw+(bn-aw)*X
if G(H,_[9],_[9]+d[19])==H and W<d[18]then
az=k
p,bg=n
bi=S+(bO-S)*X
bG=aU+(bQ-aU)*X
bJ=H
bm=a
end
end
end
end
end
end
return bg,bm,{bi,bG,bJ}end
return n
end
function httpReply()bx=aB//2
aB=0
end
function af()aH=aH%256+1
return f[13][1][aH]end
function aa(_,a,c)d=D[_[4]]if d[23]&2>0 and _[7]>0 then
_[8]=_[8]-(a+1)//2
_[7]=_[7]-a//2+A(_[8],0)_[8]=L(_[8],0)_[33]=d[13]~="lost soul missile state" and c or e
if af()<d[10]then
_[6]=d[9]_[15]=0
_[10]=n
end
end
end
function bw(b,h,av)return h[20]and abs(((I(b,h)-b[3]+ao)%360)-ao)<av and ar(b,h,1)end
function aZ(B,C)bC=ag and(ag[9]-B[9])*o[6]/y(ag,B)or 0
for a=1,o[12]do
b={}for a=1,33 do
b[a]=B[a]end
b[4]=o[8]b[10]=n
b[14]=B
bL=(af()/Q-1)*o[10]aK=N(B[3]+bL,o[6])if o[7]>0 then
g[#g+1]=b
d=D[b[4]]b[6]=d[3]b[9]=B[9]+o[13]b[11]=aK[1]b[12]=aK[2]b[17]=Z
b[19]=bC
else
c=ad(B,aK)c[9]=e[9]+bC
aV,at,c=ar(B,c,3,C)if not aV then
bM=sub(c,N(B[3]+bL,1))g[#g+1]=b
b[1]=bM[1]b[2]=bM[2]b[6]=D[b[4]][3]b[9]=c[3]b[19]=1
if p then
b=g[at]aa(b,o[9]*((af()&3)+2),B)end
end
end
end
end
function aQ(_,c)if c>-1 then
b=f[9][c]if b[1]>0 or O[31]*_[10][2]-O[32]*_[10][1]<0 then
h=V[b[1]]al[h and h[30]or#al+1]={c,1,h or O}_[4]=b[7]b=b[8]>0 and aQ(_,b[8])end
else
aJ=n
ax=-c
m[10]=-c
end
end
function bH()bj,ag=2048
for a,_ in x(g)do
if a>1 and _ and bw(e,_,10)then
k=y(_,e)if k<bj then
if D[_[4]][23]&2>0 then
ag=_
bj=k
end
end
end
end
end
function bk(_)if _[9]~=v[1]and not bl then
_[9]=v[1]_[10]=true
end
end
function onTick()ae(9,ab(32))ae(2,ab(11))ae(3,z)for j=1,3 do
if ab(32)and(not by)or not f[21]then
aX=property.getText(aC)a=1
i=""
_=aN.sub(aX,a,a)while _~=""do
c=aN.byte(_)if c>64 then
i=(i..c-65)+0
if l==1 then
bz=i
f[i]=f[i]or{}elseif l==2 then
H=i
ak=0
elseif l==3 then
aG=i
else
if ak==0 then
ak=H
aG=aG-1
aD={}f[bz][#f[bz]+1]=aD
end
aD[#aD+1]=i
ak=ak-1
l=L(ak,aG)>0 and l-1 or 0
end
l=l+1
i=""
else
i=i.._
end
a=a+1
_=aN.sub(aX,a,a)end
aC=aC+1
by=aX==""
end
end
if by then
if aJ then
al,aJ={}am=1
for a=1,10 do
f[a]=f[a+10*ax]end
g=f[1]Y=f[4]V=f[8]T=f[10]bd,T[1]=T[1]w=f[12]D=f[15]for a=14,16 do
w[1][a]=0
end
ax=ax+1
for a=#g,1,-1 do
_=g[a]for j=7,32 do
_[j]=0
end
_[7]=D[_[4]][4]_[9],_[10]=aE(#f[7],_)[1]if _[5]&bA<1 then
b_(g,a)elseif _[4]==1 then
if e then
_[7]=e[7]_[8]=e[8]end
e=_
end
end
bK=bd[3]end
for a,_ in x(f[2])do
_[10]=sub(Y[_[2]],Y[_[1]])if _[3]&4>0 then
d,F=V[f[3][_[6]][6]],V[f[3][_[7]][6]]_[8]=L(d[1],F[1])_[9],d[30],F[30]=A(d[2],F[2])else
_[8],_[9]=0,0
end
end
m={}for a=1,32 do
m[a]=0
end
aO=aO+1
P=A(P+1/bx,2/35)ae(1,P>=0)if P>=0 then
P=P-1/35
au=au+1
for a=2,#T do
T[a][0]={}end
for a,s in x(al)do
_=f[9][s[1]]c=s[3]b=_[2]d=c[b]c[b]=G(_[3],d-_[4],d+_[4])+0
d=c[b]if d==_[3]then
al[a]=s[2]==_[5]and{_[6],1,c}or{s[1],s[2]+1,c}if _[6]==0 then
b_(al,a)end
end
c[10]=c[10]or d~=s
c[30]=a
end
for a,_ in x(g)do
if _ then
ai=sub(_,bd)M=T[2+ai[1]//Q+ai[2]//Q*bK]if M then
M[0][#M[0]+1]=a
end
end
end
for a,_ in x(g)do
if _ then
for j,s in x({1,2,9})do
_[s]=_[s]+_[s+10]end
_[15]=_[15]+1
d=D[_[4]]if _[7]<=0 and _[20]then
_[15]=0
_[6]=d[_[7]<=-d[4]and d[15]>1 and 15 or 14]_[10],_[20]=n
m[12]=d[16]if d[27]>0 then
c={}for j=1,30 do
c[j]=_[j]end
c[4]=d[27]c[6]=d[28]g[#g+1]=c
end
end
aY=f[16][_[6]]_[33]=_[33]and(_[33][20]and _[33]or e)if _[15]>=aY[2]and aY[2]~=-1 then
_[6]=aY[4]_[15]=0
R=f[16][_[6]][3]bl=d[23]&4>0
if R==1 then
for a,l in x(g)do
if l then
i=Q-y(_,l)if i>0 then
aa(l,i)end
end
end
elseif R==2 then
if bw(_,e,90)then
_[33]=e
_[6]=d[5]m[12]=d[6]end
ac(_,z,a,8)bk(_)elseif R==3 then
av,p=aI(I(_,_[33])/45+.5)*45
l=1
while l<5 and not p do
i=ad(_,N(av+f[19][2][l],8))i[9]=_[9]p=ac(i,z,a,l)and(v[1]>=i[9]-24 or bl)l=l+1
end
if p then
for j=1,2 do
_[30+j]=i[j]-_[j]_[j]=i[j]end
_[3]=av
_[10]=n
else
ac(_,z,a,8)end
bk(_)b=y(_,_[33])if d[13]>0 and ar(_,_[33],1)and A(b,230)<af()then
_[6]=d[13]end
if b<64 and d[12]>0 then
_[6]=d[12]end
elseif R==5 then
for a=1,11 do
e[3]=e[3]+f[19][9][a]o=f[14][23]bH()aZ(e,1)end
e[3]=e[3]-20
elseif R>9 and _[20]then
_[3]=I(_,_[33])o=f[14][R]_[10]=n
ag=_[33]aZ(_,a)end
end
if _[17]and _[17]>0 then
o=f[14][_[17]]if not ac(_,z,a)or _[9]<=v[1]then
if bb then
aa(bb,d[21]*((af()&7)+1),_[14])end
_[1]=_[1]-_[11]_[2]=_[2]-_[12]_[3]=0
_[6]=D[_[4]][5]_[10]=n
_[11]=0
_[12],_[17]=0
m[12]=d[16]_[19]=0
end
end
if _[6]==1 then
g[a]=z
end
end
end
for a=1,8 do
if ab(a)and w[1][a+4]>0 then
Z=a
end
end
o=f[14][Z]e[3]=e[3]-aq(3)*(G(bf,5,6)*1.5-6)bf=abs(aq(3))*bf+1
U=e
for a=1,2 do
U=ad(U,N(e[3]-ao+90*a,aq(a)*8.33))end
U[9]=e[9]for a=1,8 do
p=ac(U,n,1,a)end
if p then
for a=1,2 do
e[30+a]=U[a]-e[a]e[a]=U[a]end
if e[9]>v[1]then
e[19]=e[19]-1
else
e[9]=A(v[1],e[9]+4)e[19]=L(0,e[19])end
else
e[19]=0
e[9]=v[1]end
be=w[1]c=o[1]if ab(31)and as<=0 and(c==0 or be[c]>=o[2])then
ae(3,n)as=o[3]if c>0 then
be[c]=be[c]-o[2]end
bH()aZ(e,1)end
as=as-1
if aq(4)<0 then
_=ad(e,N(e[3],64))_[9]=e[9]aV,at=ar(e,_,2,1)_=f[2][at]if aV==z then
m[2]=at
c,p=_[4]for a=14,16 do
p=p or w[1][a]>0 and c==a
end
if c==1 or p then
aQ(_,_[5])elseif c>3000 and c<3005 then
bA=aI(c-3000)end
end
end
end
m[1]=Z
for a=3,14 do
m[a]=e[f[19][4][a]]or m[a]end
w[1][17]=bx
m[11]=w[1][aO%#w[1]+1]a=am
bq=n
J=1
ay=#g+#V
while J<3 and bq do
c=J*9+6
if a<=#f[1]then
_=g[a]if _ then
if _[10]and a>1 then
m[c],_[10]=a
for j=1,8 do
m[c+j]=_[f[19][1][j]]end
J=J+1
end
else
m[c]=-a
b_(g,a)J=J+1
ay=ay-1
end
else
_=V[a-#g]if _[10]then
m[c],_[10]=a-#g+2^15
for j=1,6 do
m[c+j]=_[j]end
J=J+1
end
end
a=(a-2)%ay+1
am=A(am,ay)bq=a~=am
end
am=a
for a=1,32 do
output.setNumber(a,m[a])end
end
aB=aB+1
async.httpGet(8,"")end
