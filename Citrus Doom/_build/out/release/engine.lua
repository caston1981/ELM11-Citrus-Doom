
P=128
ad=180
E=math
L=E.max
C=E.min
aD=E.floor
pi=E.pi/ad
aA=input.getNumber
aj=input.getBool
ac=output.setBool
o=true
A=false
w=ipairs
abs=E.abs
ba=table.remove
exp=table.unpack
aU=string
function aa(b,h)return{(b[1]+h[1]),(b[2]+h[2])}end
function sub(b,h)return{(b[1]-h[1]),(b[2]-h[2])}end
function bN(b)return E.sin(b*pi)end
function aP(b)return E.cos(b*pi)end
function I(b,h)return E.atan(h[2]-b[2],h[1]-b[1])/pi end
function F(b,h,aP)return L(C(aP,b),h)end
function y(b,h)return E.sqrt(((b[1]-h[1])^2)+((b[2]-h[2])^2))end
function M(b,h)return{aP(b)*h,bN(b)*h}end
e={}aG=1
at=3
aN=o
Z=2
ap=0
ar=0
as=0
bg=0
T=0
aH=0
k=1
bb=0
bv=2
function aT(a,b,_)if a<2^15 then
_=e[7][a]return aT(_[_[3]*(b[2]-_[2])-_[4]*(b[1]-_[1])>0 and 8 or 7],b)else
a=e[5][e[6][a-2^15][2]]return Q[e[3][e[2][a[4]][a[5]+6]][6]]end
end
function ag(u,bP,B,bL,_)O=g[B]d=D[O[4]]ax,ao=d[18],d[19]J,bf=ax
v=aT(#e[7],u)ah,al=exp(v)an=sub(u,aF)N=S[2+an[1]//P+an[2]//P*br]or{}for a,_ in w(N[0]or{})do
c=g[_]if _~=B and c and O[14]~=c then
l=y(c,u)G=D[c[4]]if c[20]then
W=l-G[18]if W<J and G[23]&1>0 and(d[23]&1>0 or F(u[9],c[9]-ao,c[9]+G[19])==u[9])then
bf=c
J=W
be=I(u,c)end
end
if B<2 and l<50 then
b=G[25]if b>0 then
for q,t in w(r[b])do
if t>0 and r[1][q]<r[2][q]then
c=r
g[_]=A
c[1][q]=aD(C(c[1][q]+t,c[2][q]))if F(q,5,12)==q then
Z=q-4
end
end
end
end
b=G[29]if b>0 then
b=e[11][b]for q=7,8 do
f[q]=F(f[q]+b[q*2-13],f[q],b[q*2-12])end
g[_]=A
end
end
end
end
_=bL<8
if al-ah<ao then
p=_ or as%4>0 or v[6]<18 or ai(O,10)return
end
p=_ or as%32>0 or v[6]~=5 or r[1][18]>0 or ai(O,5)for a=1,#N do
_=e[2][N[a]]l,bB=bq(u,X[_[1]],X[_[2]])if l<J then
if _[3]&1>0 and d[23]&1>0 or _[3]&4<1 then
if B>1 or aL>0 or _[3]&4>0 then
J=l
be=bB
end
else
aI,aK=C(_[9],al),L(_[8],ah)if C(u[9],al-ao)+24<aK or L(u[9],ah)+ao>aI or aI-aK<ao then
J=l
be=bB
else
if bL<2 and(_[3]&512>0 or B<2)and(_[4]==2 or B>1)then
aW(_,_[5])end
al,ah=aI,aK
end
end
end
end
v={ah,al}if bP then
if J~=ax then
_=aa(u,M(be,J-ax))u[1]=_[1]u[2]=_[2]end
return o
end
return J==ax
end
function bq(s,x,aB)U=y(x,s)bj=I(x,aB)+90
bQ=bj-I(s,x)aL,bM=exp(M(-bQ,U))bc=bj
if aL<0 then
bc=bc+ad
end
if bM<0 then
return U,I(s,x)elseif bM>y(aB,x)then
return y(aB,s),I(s,aB)else
return abs(aL),bc
end
end
function av(s,x,aZ,B)aC=y(s,x)az=aC
aS,p=o
W,aY=exp(s)bR,bO=exp(x)aQ,aE=exp(sub(x,s))aw,bl=s[9]+32,x[9]+32
for a,_ in w(e[2])do
bw=X[_[1]]bC,bH=exp(sub(X[_[2]],bw))bm,bA=exp(sub(s,bw))bt=bH*aQ-bC*aE
V=(bC*bA-bH*bm)/bt
bE=(aQ*bA-aE*bm)/bt
if F(V,0,1)==V and F(bE,0,1)==bE then
bs={W+(V*aQ),aY+(V*aE)}l=y(s,bs)H=aw+(bl-aw)*(l/aC)if F(H,_[8]+1,_[9])~=H then
aS=A
if aZ==1 then
return
end
if l<az then
az=l
bi,bF=exp(bs)bx=H
bK=a
end
end
end
end
if aZ>1 then
if aZ>2 then
for a,_ in w(g)do
if _ and a~=B then
d=D[_[4]]if d[23]&1>0 and _[20]then
l=y(s,_)if l<az then
V=bq(_,s,x)U=(l/aC)H=aw+(bl-aw)*U
if F(H,_[9],_[9]+d[19])==H and V<d[18]then
az=l
p,aS=o
bi=W+(bR-W)*U
bF=aY+(bO-aY)*U
bx=H
bK=a
end
end
end
end
end
end
return aS,bK,{bi,bF,bx}end
return o
end
function httpReply()bk=ar//2
ar=0
end
function ab()aH=aH%256+1
return e[13][1][aH]end
function ai(_,a,c)d=D[_[4]]if d[23]&2>0 and _[7]>0 then
_[8]=_[8]-(a+1)//2
_[7]=_[7]-a//2+C(_[8],0)_[8]=L(_[8],0)_[33]=d[13]~="lost soul missile state" and c or f
if ab()<d[10]then
_[6]=d[9]_[15]=0
_[10]=o
end
end
end
function bp(b,h,aq)return h[20]and abs(((I(b,h)-b[3]+ad)%360)-ad)<aq and av(b,h,1)end
function aX(z,B)bz=af and(af[9]-z[9])*n[6]/y(af,z)or 0
for a=1,n[12]do
b={}for a=1,33 do
b[a]=z[a]end
b[4]=n[8]b[10]=o
b[14]=z
bJ=(ab()/P-1)*n[10]aJ=M(z[3]+bJ,n[6])if n[7]>0 then
g[#g+1]=b
d=D[b[4]]b[6]=d[3]b[9]=z[9]+n[13]b[11]=aJ[1]b[12]=aJ[2]b[17]=Z
b[19]=bz
else
c=aa(z,aJ)c[9]=f[9]+bz
b_,ay,c=av(z,c,3,B)if not b_ then
bD=sub(c,M(z[3]+bJ,1))g[#g+1]=b
b[1]=bD[1]b[2]=bD[2]b[6]=D[b[4]][3]b[9]=c[3]b[19]=1
if p then
b=g[ay]ai(b,n[9]*((ab()&3)+2),z)end
end
end
end
end
function aW(_,c)if c>-1 then
b=e[9][c]if b[1]>0 or O[31]*_[10][2]-O[32]*_[10][1]<0 then
h=Q[b[1]]am[h and h[30]or#am+1]={c,1,h or O}_[4]=b[7]b=b[8]>0 and aW(_,b[8])end
else
aN=o
at=-c
m[10]=-c
end
end
function bG()bn,af=2048
for a,_ in w(g)do
if a>1 and _ and bp(f,_,10)then
l=y(_,f)if l<bn then
if D[_[4]][23]&2>0 then
af=_
bn=l
end
end
end
end
end
function bI(_)if _[9]~=v[1]and not by then
_[9]=v[1]_[10]=true
end
end
function onTick()ac(9,aj(32))ac(2,aj(11))ac(3,A)for i=1,3 do
if aj(32)and(not bh)or not e[21]then
aV=property.getText(aG)a=1
j=""
_=aU.sub(aV,a,a)while _~=""do
c=aU.byte(_)if c>64 then
j=(j..c-65)+0
if k==1 then
bo=j
e[j]=e[j]or{}elseif k==2 then
H=j
ae=0
elseif k==3 then
aO=j
else
if ae==0 then
ae=H
aO=aO-1
bd={}e[bo][#e[bo]+1]=bd
end
bd[#bd+1]=j
ae=ae-1
k=L(ae,aO)>0 and k-1 or 0
end
k=k+1
j=""
else
j=j.._
end
a=a+1
_=aU.sub(aV,a,a)end
aG=aG+1
bh=aV==""
end
end
if bh then
if aN then
am,aN={}ak=1
for a=1,10 do
e[a]=e[a+10*at]end
g=e[1]X=e[4]Q=e[8]S=e[10]aF,S[1]=S[1]r=e[12]D=e[15]for a=14,16 do
r[1][a]=0
end
at=at+1
for a=#g,1,-1 do
_=g[a]for i=7,32 do
_[i]=0
end
_[7]=D[_[4]][4]_[9],_[10]=aT(#e[7],_)[1]if _[5]&bv<1 then
ba(g,a)elseif _[4]==1 then
if f then
_[7]=f[7]_[8]=f[8]end
f=_
end
end
br=aF[3]end
for a,_ in w(e[2])do
_[10]=sub(X[_[2]],X[_[1]])if _[3]&4>0 then
d,G=Q[e[3][_[6]][6]],Q[e[3][_[7]][6]]_[8]=L(d[1],G[1])_[9],d[30],G[30]=C(d[2],G[2])else
_[8],_[9]=0,0
end
end
m={}for a=1,32 do
m[a]=0
end
bg=bg+1
T=C(T+1/bk,2/35)ac(1,T>=0)if T>=0 then
T=T-1/35
as=as+1
for a=2,#S do
S[a][0]={}end
for a,t in w(am)do
_=e[9][t[1]]c=t[3]b=_[2]d=c[b]c[b]=F(_[3],d-_[4],d+_[4])+0
d=c[b]if d==_[3]then
am[a]=t[2]==_[5]and{_[6],1,c}or{t[1],t[2]+1,c}if _[6]==0 then
ba(am,a)end
end
c[10]=c[10]or d~=t
c[30]=a
end
for a,_ in w(g)do
if _ then
an=sub(_,aF)N=S[2+an[1]//P+an[2]//P*br]if N then
N[0][#N[0]+1]=a
end
end
end
for a,_ in w(g)do
if _ then
for i,t in w({1,2,9})do
_[t]=_[t]+_[t+10]end
_[15]=_[15]+1
d=D[_[4]]if _[7]<=0 and _[20]then
_[15]=0
_[6]=d[_[7]<=-d[4]and d[15]>1 and 15 or 14]_[10],_[20]=o
m[12]=d[16]if d[27]>0 then
c={}for i=1,30 do
c[i]=_[i]end
c[4]=d[27]c[6]=d[28]g[#g+1]=c
end
end
aM=e[16][_[6]]_[33]=_[33]and(_[33][20]and _[33]or f)if _[15]>=aM[2]and aM[2]~=-1 then
_[6]=aM[4]_[15]=0
R=e[16][_[6]][3]by=d[23]&4>0
if R==1 then
for i,k in w(g)do
if k then
j=P-y(_,k)if j>0 then
ai(k,j)end
end
end
elseif R==2 then
if bp(_,f,90)then
_[33]=f
_[6]=d[5]m[12]=d[6]end
ag(_,A,a,8)bI(_)elseif R==3 then
aq,p=aD(I(_,_[33])/45+.5)*45
k=1
while k<5 and not p do
j=aa(_,M(aq+e[19][2][k],8))j[9]=_[9]p=ag(j,A,a,k)and(v[1]>=j[9]-24 or by)k=k+1
end
if p then
for i=1,2 do
_[30+i]=j[i]-_[i]_[i]=j[i]end
_[3]=aq
_[10]=o
else
ag(_,A,a,8)end
bI(_)b=y(_,_[33])if d[13]>0 and av(_,_[33],1)and C(b,230)<ab()then
_[6]=d[13]end
if b<64 and d[12]>0 then
_[6]=d[12]end
elseif R==5 then
for i=1,11 do
f[3]=f[3]+e[19][9][i]n=e[14][23]bG()aX(f,1)end
f[3]=f[3]-20
elseif R>9 and _[20]then
_[3]=I(_,_[33])n=e[14][R]_[10]=o
af=_[33]aX(_,a)end
end
if _[17]and _[17]>0 then
n=e[14][_[17]]if not ag(_,A,a,2)or _[9]<=v[1]then
if bf then
ai(bf,d[21]*((ab()&7)+1),_[14])end
_[1]=_[1]-_[11]_[2]=_[2]-_[12]_[3]=0
_[6]=D[_[4]][5]_[10]=o
_[11]=0
_[12],_[17]=0
m[12]=d[16]_[19]=0
end
end
if _[6]==1 then
g[a]=A
end
end
end
for a=1,8 do
if aj(a)and r[1][a+4]>0 then
Z=a
end
end
n=e[14][Z]r[1][18]=r[1][18]-1
f[3]=f[3]-aA(3)*(F(bb,5,6)*1.5-6)bb=abs(aA(3))*bb+1
Y=f
for a=1,2 do
Y=aa(Y,M(f[3]-ad+90*a,aA(a)*8.33))end
Y[9]=f[9]for a=1,8 do
p=ag(Y,o,1,a)end
if p then
for a=1,2 do
f[30+a]=Y[a]-f[a]f[a]=Y[a]end
if f[9]>v[1]then
f[19]=f[19]-1
else
f[9]=C(v[1],f[9]+4)f[19]=L(0,f[19])end
else
f[19]=0
f[9]=v[1]end
aR=r[1]c=n[1]if aj(31)and ap<=0 and aR[c]>=n[2]then
ac(3,o)ap=n[3]if c>0 then
aR[c]=aR[c]-n[2]end
bG()aX(f,1)end
ap=ap-1
if aA(4)<0 then
_=aa(f,M(f[3],64))_[9]=f[9]b_,ay=av(f,_,2,1)_=e[2][ay]if b_==A then
m[2]=ay
c,p=_[4]for a=14,16 do
p=p or r[1][a]>0 and c==a
end
if c==1 or p then
aW(_,_[5])elseif c>3000 and c<3005 then
bv=aD(c-3000)end
end
end
end
m[1]=Z
for a=3,14 do
m[a]=f[e[19][4][a]]or m[a]end
r[1][17]=bk
m[11]=r[1][bg%#r[1]+1]a=ak
bu=o
K=1
au=#g+#Q
while K<3 and bu do
c=K*9+6
if a<=#e[1]then
_=g[a]if _ then
if _[10]and a>1 then
m[c],_[10]=a
for i=1,8 do
m[c+i]=_[e[19][1][i]]end
K=K+1
end
else
m[c]=-a
ba(g,a)K=K+1
au=au-1
end
else
_=Q[a-#g]if _[10]then
m[c],_[10]=a-#g+2^15
for i=1,6 do
m[c+i]=_[i]end
K=K+1
end
end
a=(a-2)%au+1
ak=C(ak,au)bu=a~=ak
end
ak=a
for a=1,32 do
output.setNumber(a,m[a])end
end
ar=ar+1
async.httpGet(8,"")end
