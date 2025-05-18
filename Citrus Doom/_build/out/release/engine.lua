bU=""

Z=128
M=180
bl=output
br=input
C=math
O=C.max
w=C.min
au=C.floor
pi=C.pi
aB=br.getNumber
aa=br.getBool
am=bl.setBool
n=true
i=false
v=ipairs
abs=C.abs
bJ=table.remove
aP=string
function ah(b,g)return{(b[1]+g[1]),(b[2]+g[2])}end
function sub(b,g)return{(b[1]-g[1]),(b[2]-g[2])}end
function bu(b)return C.sin(b/M*pi)end
function al(b)return C.cos(b/M*pi)end
function J(b,g)return C.atan(g[2]-b[2],g[1]-b[1])*M/pi end
function H(b,g,al)return O(w(al,b),g)end
function y(b,g)return C.sqrt(((b[1]-g[1])^2)+((b[2]-g[2])^2))end
function Y(b,g)return{al(b)*g,bu(b)*g}end
function exp(b)return b[1],b[2]end
e={}b_=1
aw=3
az=i
aT=n
ai=2
as=0
ar=0
R=0
aZ=0
l=1
bb=0
bm=2
function aL(a,b,_)if a<32768then
_=e[7][a]return aL(_[_[3]*(b[2]-_[2])-_[4]*(b[1]-_[1])>0 and 8 or 7],b)else
a=e[5][e[6][a-32768][2]]return P[e[3][e[2][a[4]][a[5]+6]][6]]end
end
function aq(r,bs,z,bR,_,a,k)ad=h[z]f=A[ad[4]]at,ak=f[18],f[19]I=at
D=aL(#e[7],r)W,an=exp(D)ag=sub(r,aX)L=S[2+ag[1]//Z+ag[2]//Z*bj]or{}for a,_ in v(L[0]or{})do
c=h[_]if _~=z and c and ad[14]~=_ then
m=y(c,r)F=A[c[4]]if c[20]then
Q=m-F[18]if Q<I and F[23]&1>0 and(f[23]&1>0 or(r[9]+ak<c[9]or r[9]>c[9]+F[19])==i)then
aE=c
if bs==i then
return i
end
I=Q
aS=J(r,c)end
end
if z==1 and not c[10]then
if m<50then
b=F[25]if b>0then
for p,s in v(B[b])do
if s>0 and B[1][p]<B[2][p]then
c=B
h[_]=i
c[1][p]=au(w(c[1][p]+s,c[2][p]))if H(p,5,12)==p then
ai=p-4
end
end
end
end
b=F[29]if b>0 then
b=e[11][b]for p=7,8 do
d[p]=H(d[p]+b[p*2-13],d[p],b[p*2-12])end
h[_]=i
end
end
end
end
end
aE=i
if an-W<ak or W>r[9]+24then
return i
end
for a=1,#L do
_=e[2][L[a]]m,bz=bA(r,V[_[1]],V[_[2]])if m<I then
if bR==1 and(_[3]&512>0 or z==1)and(_[4]==2 or z>1)then
aM(_,_[5])end
if(_[3]&1>0 and f[23]&1>0)or _[3]&4==0 then
if z>1 or aV>0then
I=m
aS=bz
end
else
aJ,aO=w(_[9],an),O(_[8],W)if w(r[9],an-ak)+24<aO or O(r[9],W)+ak>aJ or aJ-aO<ak then
I=m
aS=bz
else
an,W=aJ,aO
end
end
end
end
D={W,an}if bs then
if I~=at then
_=ah(r,Y(aS,I-at))r[1]=_[1]r[2]=_[2]end
return n
end
return I==at
end
function bA(q,x,ap)N=y(x,q)by=J(x,ap)+90
bk=by-J(q,x)bC=-N*bu(bk)aV=N*al(bk)aI=by
if aV<0 then
aI=aI+M
end
if bC<0 then
return N,J(q,x)elseif bC>y(ap,x)then
return y(ap,q),J(q,ap)else
return abs(aV),aI
end
end
function ay(q,x,ba,z,_)aW=y(q,x)ao=aW
aN=n
Q,aY=exp(q)bQ,bP=exp(x)bc,aD=exp(sub(x,q))aA,bg=q[9]+32,x[9]+32
u=i
for a,_ in v(e[2])do
bE=V[_[1]]bt,bw=exp(sub(V[_[2]],bE))bK,bq=exp(sub(q,bE))bo=bw*bc-bt*aD
X=(bt*bq-bw*bK)/bo
bn=(bc*bq-aD*bK)/bo
if H(X,0,1)==X and H(bn,0,1)==bn then
bH={Q+(X*bc),aY+(X*aD)}m=y(q,bH)E=aA+(bg-aA)*(m/aW)if H(E,_[8]+1,_[9])~=E then
aN=i
if ba==1 then
return i
end
if m<ao then
ao=m
bD,bF=exp(bH)bN=E
bO=a
end
end
end
end
if ba>1 then
if ba==3 then
for a,_ in v(h)do
if _ and a~=z then
f=A[_[4]]if f[23]&1>0 and _[20]then
m=y(q,_)if m<ao then
X=bA(_,q,x)N=(m/aW)E=aA+(bg-aA)*N
if H(E,_[9],_[9]+f[19])==E and X<f[18]then
ao=m
u=n
aN=i
bD=Q+(bQ-Q)*N
bF=aY+(bP-aY)*N
bN=E
bO=a
end
end
end
end
end
end
return aN,bO,{bD,bF,bN}end
return n
end
function httpReply(b,g,al)bi=ar//2
ar=0
end
function aj()aZ=aZ%256+1
return e[13][1][aZ]end
function aK(_,a)f=A[_[4]]if f[23]&2>0 and _[7]>0 then
_[8]=_[8]-(a+1)//2
_[7]=_[7]-a//2+w(_[8],0)_[8]=O(_[8],0)if aj()<f[10]then
_[6]=f[9]_[15]=0
_[23]=d
_[10]=n
end
end
end
function bh(b,g,aC)return g[20]and abs(((J(b,g)-b[3]+M)%360)-M)<aC and ay(b,g,1)end
function aF(K,z)bI=af and(af[9]-K[9])*o[6]/y(af,K)or 0
for a=1,o[12]do
b={}for a=1,30 do
b[a]=K[a]end
b[4]=o[8]b[10]=n
b[14]=z
bx=(aj()/Z-1)*o[10]bd=Y(K[3]+bx,o[6])if o[7]>0then
h[#h+1]=b
f=A[b[4]]b[6]=f[3]b[9]=K[9]+o[13]b[11]=bd[1]b[12]=bd[2]b[17]=ai
b[19]=bI
else
c=ah(K,bd)c[9]=d[9]+bI
aG,av,c=ay(K,c,3,z)if not aG then
bB=sub(c,Y(K[3]+bx,1))h[#h+1]=b
b[1]=bB[1]b[2]=bB[2]b[6]=A[b[4]][3]b[9]=c[3]b[19]=1
if u then
b=h[av]aK(b,o[9]*((aj()&3)+2))end
end
end
end
end
function aM(_,c)if c>-1 then
b=e[9][c]if b[1]>0 or ad[31]*_[10][2]-ad[32]*_[10][1]<0 then
g=P[b[1]]ae[g and g[30]or#ae+1]={c,1,g or ad}_[4]=b[7]b=b[8]>0 and aM(_,b[8])end
else
aT=n
aw=-c
t[9]=-c
end
end
function bG()bL,af=2048
for a,_ in v(h)do
if a>1 and _ and bh(d,_,10)then
m=y(_,d)if m<bL then
if A[_[4]][23]&2>0then
af=_
bL=m
end
end
end
end
end
function onTick()am(9,aa(32))am(2,aa(11))am(3,i)for k=1,3 do
if aa(32)and(not az)or not e[21]then
aH=property.getText(b_)a=1
j=bU
_=aP.sub(aH,a,a)while _~=bUdo
c=aP.byte(_)if c>64then
j=(j..c-65)+0
if l==1then
bp=j
e[j]=e[j]or{}elseif l==2then
E=j
ac=0
elseif l==3then
aQ=j
else
if ac==0then
ac=E
aQ=aQ-1
aR={}e[bp][#e[bp]+1]=aR
end
aR[#aR+1]=j
ac=ac-1
l=O(ac,aQ)>0 and l-1 or 0
end
l=l+1
j=bU
else
j=j.._
end
a=a+1
_=aP.sub(aH,a,a)end
b_=b_+1
az=aH==bU
end
end
if az then
if aT then
ae,aT={}ab=1
for a=1,10 do
e[a]=e[a+10*aw]end
h=e[1]V=e[4]P=e[8]S=e[10]aX,S[1]=S[1]B=e[12]A=e[15]for a=14,16 do
B[1][a]=0
end
aw=aw+1
for a,_ in v(h)do
for k=7,40 do
_[k]=0
end
bS=_[5]+1
_[7]=A[_[4]][4]_[9],_[10]=aL(#e[7],_)[1]if _[4]==1 then
if d then
_[7]=d[7]_[8]=d[8]end
d=_
elseif _[5]&bm<1then
h[a]=i
end
end
bj=aX[3]end
for a,_ in v(e[2])do
_[10]=sub(V[_[2]],V[_[1]])if _[3]&4>0 then
f,F=P[e[3][_[6]][6]],P[e[3][_[7]][6]]_[8]=O(f[1],F[1])_[9],f[30],F[30]=w(f[2],F[2])else
_[8],_[9]=0,0
end
end
t={}for a=1,32 do
t[a]=0
end
R=w(R+1/bi,2/35)am(1,R>=0)if R>=0 then
R=R-1/35
for a=2,#S do
S[a][0]={}end
for a,s in v(ae)do
_=e[9][s[1]]c=s[3]b=_[2]f=c[b]c[b]=H(_[3],f-_[4],f+_[4])+0
f=c[b]if abs(f-_[3])<.1then
ae[a]=s[2]==_[5]and{_[6],1,c}or{s[1],s[2]+1,c}if _[6]==0 then
bJ(ae,a)end
end
c[10]=c[10]or f~=s
c[30]=a
end
for a,_ in v(h)do
if _ then
for k,s in v({1,2,9})do
_[s]=_[s]+_[s+10]end
_[15]=_[15]+1
f=A[_[4]]if _[7]<=0 and _[20]then
_[15]=0
_[6]=f[_[7]<=-f[4]and f[15]>1 and 15or 14]_[10],_[20]=n
if f[27]>0 then
c={}for k=1,30 do
c[k]=_[k]end
c[4]=f[27]c[6]=f[28]h[#h+1]=c
end
end
be=e[16][_[6]]if _[15]>=be[2]and be[2]~=-1then
_[6]=be[4]_[15]=0
T=e[16][_[6]][3]if T==1 then
for a,l in v(h)do
if l then
j=Z-y(_,l)if j>0 then
aK(l,j)end
end
end
elseif T==2then
if bh(_,d,90)then
_[23]=d
_[6]=f[5]end
elseif T==3then
aC=au(J(_,_[23])/45+.5)*45
u=i
l=1
bv=f[23]&4>0
while l<5 and not u do
j=ah(_,Y(aC+e[19][2][l],8))j[9]=_[9]u=aq(j,i,a,l)and(D[1]>=j[9]-24 or bv)l=l+1
end
if u then
for k=1,2 do
_[30+k]=j[k]-_[k]_[k]=j[k]end
_[3]=aC
_[10]=n
else
aq(_,i,a)end
_[9]=bv and _[9]or D[1]b=y(_,_[23])if f[13]>0 and ay(_,_[23],1)and w(b,230)<aj()then
_[6]=f[13]end
if b<64 and f[12]>0then
_[6]=f[12]end
elseif T==5then
for a=1,11 do
d[3]=d[3]+e[19][9][a]o=e[14][23]bG()aF(d,1)end
d[3]=d[3]-20
elseif T>9 and _[20]then
_[3]=J(_,_[23])o=e[14][T]_[10]=n
af=_[23]aF(_,a)end
end
if _[17]and _[17]>0then
o=e[14][_[17]]if not aq(_,i,a)or _[9]<=D[1]then
if aE then
aK(aE,f[21]*((aj()&7)+1))end
_[1]=_[1]-_[11]_[2]=_[2]-_[12]_[3]=0
_[6]=A[_[4]][5]_[10]=n
_[11]=0
_[12]=0
_[17]=bT
_[19]=0
end
end
if _[6]==1then
h[a]=i
else
ag=sub(_,aX)L=S[2+ag[1]//Z+ag[2]//Z*bj]if L then
L[0][#L[0]+1]=a
end
end
end
end
for a=1,8 do
if aa(a)and B[1][a+4]>0then
ai=a
end
end
o=e[14][ai]d[3]=d[3]-aB(3)*(H(bb,5,6)*1.5-6)bb=abs(aB(3))*bb+1
U=d
for a=1,2 do
U=ah(U,Y(d[3]-M+90*a,aB(a)*8.33))end
U[9]=d[9]for a=1,8 do
u=aq(U,n,1,a)end
if u then
for a=1,2 do
d[30+a]=U[a]-d[a]d[a]=U[a]end
if d[9]<=D[1]then
d[9]=w(D[1],d[9]+4)d[19]=O(0,d[19])else
if d[9]>=D[2]-56then
d[9]=D[2]-56
d[19]=w(0,d[19])end
d[19]=d[19]-1
end
else
d[19]=0
end
bf=B[1]c=o[1]if aa(31)and as<=0 and(c==0 or bf[c]>=o[2])then
am(3,n)as=o[3]if c>0then
bf[c]=bf[c]-o[2]end
bG()aF(d,1)end
as=as-1
if aB(4)<0 then
_=ah(d,Y(d[3],64))_[9]=d[9]aG,av=ay(d,_,2,1)_=e[2][av]if aG==i then
t[2]=av
c,u=_[4]for a=14,16 do
u=u or B[1][a]>0 and c==a
end
if c==1 or u then
aM(_,_[5])elseif c>3000 and c<3005then
bm=au(c-3000)end
end
end
end
t[1]=ai
for a=3,8 do
t[a]=d[e[19][4][a]]end
t[5]=1
t[13]=d[3]a=ab
bM=n
G=1
ax=#h+#P
while G<3 and bM do
c=G*9+5
if a<=#h then
_=h[a]if a~=1 then
if _ then
if _[10]then
_[10]=i
t[c]=a
for k=1,8 do
t[c+k]=_[e[19][1][k]]end
G=G+1
end
else
t[c]=-a
bJ(h,a)G=G+1
ax=ax-1
end
end
else
_=P[a-#h]if _[10]then
_[10]=i
t[c]=a-#h+2^15
for k=1,6 do
t[c+k]=_[k]end
G=G+1
end
end
a=((a-2)%ax)+1
ab=w(ab,ax)bM=a~=ab
end
ab=a
for a=1,32 do
bl.setNumber(a,t[a])end
end
ar=ar+1
async.httpGet(8,bU)end
function onDraw()aU=screen.drawText
aU(26,137,bi)if az then
for a=1,4 do
b=124+a*7
aU(240,b,au(B[1][a]))aU(230,b,B[1][13+a])end
end
end
