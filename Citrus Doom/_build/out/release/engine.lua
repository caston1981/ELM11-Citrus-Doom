bT=""

Y=128
L=180
bj=output
bl=input
E=math
O=E.max
v=E.min
aA=E.floor
pi=E.pi
ax=bl.getNumber
ac=bl.getBool
ae=bj.setBool
n=true
i=false
w=ipairs
abs=E.abs
be=table.remove
aY=string
function aa(b,g)return{(b[1]+g[1]),(b[2]+g[2])}end
function sub(b,g)return{(b[1]-g[1]),(b[2]-g[2])}end
function bA(b)return E.sin(b/L*pi)end
function ad(b)return E.cos(b/L*pi)end
function H(b,g)return E.atan(g[2]-b[2],g[1]-b[1])*L/pi end
function J(b,g,ad)return O(v(ad,b),g)end
function y(b,g)return E.sqrt(((b[1]-g[1])^2)+((b[2]-g[2])^2))end
function Q(b,g)return{ad(b)*g,bA(b)*g}end
function exp(b)return b[1],b[2]end
e={}b_=1
an=3
au=i
aE=n
ag=2
av=0
at=0
X=0
aN=0
l=1
ba=0
bd=2
function aQ(a,b,_)if a<32768then
_=e[7][a]return aQ(_[_[3]*(b[2]-_[2])-_[4]*(b[1]-_[1])>0 and 8 or 7],b)else
a=e[5][e[6][a-32768][2]]return W[e[3][e[2][a[4]][a[5]+6]][6]]end
end
function aq(s,bs,B,bQ,_,a,k)aj=h[B]f=z[aj[4]]as,aw=f[18],f[19]G=as
C=aQ(#e[7],s)V,ah=exp(C)am=sub(s,M[1])N=M[2+am[1]//Y+am[2]//Y*bn]or{{}}for a,_ in w(N[0])do
c=h[_]if _~=B and c and aj[14]~=_ then
m=y(c,s)F=z[c[4]]if c[20]then
Z=m-F[18]if Z<G and F[23]&1>0 and(f[23]&1>0 or(s[9]+aw<c[9]or s[9]>c[9]+F[19])==i)then
aU=c
if bs==i then
return i
end
G=Z
aS=H(s,c)end
end
if B==1 and not c[10]then
if m<50then
b=F[25]if b>0then
for q,r in w(A[b])do
if r>0 and A[1][q]<A[2][q]then
c=A
h[_]=i
c[1][q]=aA(v(c[1][q]+r,c[2][q]))if J(q,5,12)==q then
ag=q-4
end
end
end
end
b=F[29]if b>0 then
b=e[11][b]for q=7,8 do
d[q]=J(d[q]+b[q*2-13],d[q],b[q*2-12])end
h[_]=i
end
end
end
end
end
aU=i
if ah-V<aw or V>s[9]+24then
return i
end
for a=1,#N do
_=e[2][N[a]]m,bI=bp(s,T[_[1]],T[_[2]])if m<G then
if bQ==1 and(_[3]&512>0 or B==1)and(_[4]==2 or B>1)then
aH(_,_[5])end
if(_[3]&1>0 and f[23]&1>0)or _[3]&4==0 then
G=m
aS=bI
else
bq,bF=v(_[9],ah),O(_[8],V)if v(s[9],ah-aw)+24<bF or O(s[9],V)+aw>bq then
G=m
aS=bI
else
ah,V=bq,bF
end
end
end
end
C={V,ah}if bs then
if G~=as then
_=aa(s,Q(aS,G-as))s[1]=_[1]s[2]=_[2]end
return n
end
return G==as
end
function bp(p,x,ar)P=y(x,p)bu=H(x,ar)+90
bt=bu-H(p,x)bg=-P*bA(bt)bf=P*ad(bt)aW=bu
if bf<0 then
aW=aW+L
end
if bg<0 then
return P,H(p,x)elseif bg>y(ar,x)then
return y(ar,p),H(p,ar)else
return abs(bf),aW
end
end
function aC(p,x,aJ,B,_)aD=y(p,x)ap=aD
aV=n
Z,aZ=exp(p)bO,bR=exp(x)aF,aT=exp(sub(x,p))ay,bm=p[9]+32,x[9]+32
u=i
for a,_ in w(e[2])do
bw=T[_[1]]bB,bk=exp(sub(T[_[2]],bw))bh,bH=exp(sub(p,bw))bL=bk*aF-bB*aT
R=(bB*bH-bk*bh)/bL
bz=(aF*bH-aT*bh)/bL
if J(R,0,1)==R and J(bz,0,1)==bz then
bi={Z+(R*aF),aZ+(R*aT)}m=y(p,bi)D=ay+(bm-ay)*(m/aD)if J(D,_[8]+1,_[9])~=D then
aV=i
if aJ==1 then
return i
end
if m<ap then
ap=m
bM,bC=exp(bi)bx=D
bo=a
end
end
end
end
if aJ>1 then
if aJ==3 then
for a,_ in w(h)do
if _ and a~=B then
f=z[_[4]]if f[23]&1>0 and _[20]then
m=y(p,_)if m<ap then
R=bp(_,p,x)P=(m/aD)D=ay+(bm-ay)*P
if J(D,_[9],_[9]+f[19])==D and R<f[18]then
ap=m
u=n
aV=i
bM=Z+(bO-Z)*P
bC=aZ+(bR-aZ)*P
bx=D
bo=a
end
end
end
end
end
end
return aV,bo,{bM,bC,bx}end
return n
end
function httpReply(b,g,ad)bv=at//2
at=0
end
function al()aN=aN%256+1
return e[13][1][aN]end
function aR(_,a)f=z[_[4]]if f[23]&2>0 and _[7]>0 then
_[8]=_[8]-(a+1)//2
_[7]=_[7]-a//2+v(_[8],0)_[8]=O(_[8],0)if al()<f[10]then
_[6]=f[9]_[15]=0
_[23]=d
_[10]=n
end
end
end
function by(b,g,ao)return g[20]and abs(((H(b,g)-b[3]+L)%360)-L)<ao and aC(b,g,1)end
function aG(I,B)bc=ab and(ab[9]-I[9])*o[6]/y(ab,I)or 0
for a=1,o[12]do
b={}for a=1,30 do
b[a]=I[a]end
b[4]=o[8]b[10]=n
b[14]=B
bE=(al()/Y-1)*o[10]bb=Q(I[3]+bE,o[6])if o[7]>0then
h[#h+1]=b
f=z[b[4]]b[6]=f[3]b[9]=I[9]+32
b[11]=bb[1]b[12]=bb[2]b[17]=ag
b[19]=bc
else
c=aa(I,bb)c[9]=d[9]+bc
aI,az,c=aC(I,c,3,B)if not aI then
bK=sub(c,Q(I[3]+bE,1))h[#h+1]=b
b[1]=bK[1]b[2]=bK[2]b[6]=z[b[4]][3]b[9]=c[3]b[19]=1
if u then
b=h[az]aR(b,o[9]*((al()&3)+2))end
end
end
end
end
function aH(_,c)if c>-1 then
b=e[9][c]if b[1]>0 or aj[31]*_[10][2]-aj[32]*_[10][1]<0 then
g=W[b[1]]af[g and g[30]or#af+1]={c,1,g or aj}_[4]=b[7]b=b[8]>0 and aH(_,b[8])end
else
aE=n
an=-c
t[9]=-c
end
end
function bN()br,ab=2048
for a,_ in w(h)do
if a>1 and _ and by(d,_,10)then
m=y(_,d)if m<br then
if z[_[4]][23]&2>0then
ab=_
br=m
end
end
end
end
end
function onTick()ae(9,ac(32))ae(2,ac(11))ae(3,i)for k=1,3 do
if ac(32)and(not au)or not e[21]then
aO=property.getText(b_)a=1
j=bT
_=aY.sub(aO,a,a)while _~=bTdo
c=aY.byte(_)if c>64then
j=(j..c-65)+0
if l==1then
bG=j
e[j]=e[j]or{}elseif l==2then
D=j
ak=0
elseif l==3then
aX=j
else
if ak==0then
ak=D
aX=aX-1
aL={}e[bG][#e[bG]+1]=aL
end
aL[#aL+1]=j
ak=ak-1
l=O(ak,aX)>0 and l-1 or 0
end
l=l+1
j=bT
else
j=j.._
end
a=a+1
_=aY.sub(aO,a,a)end
b_=b_+1
au=aO==bT
end
end
if au then
if aE then
af,aE={}ai=1
for a=1,10 do
e[a]=e[a+10*an]end
h=e[1]T=e[4]W=e[8]M=e[10]A=e[12]z=e[15]for a=14,16 do
A[1][a]=0
end
an=an+1
for a,_ in w(h)do
for k=7,40 do
_[k]=0
end
bS=_[5]+1
_[7]=z[_[4]][4]_[9],_[10]=aQ(#e[7],_)[1]if _[4]==1 then
if d then
_[7]=d[7]_[8]=d[8]end
d=_
elseif _[5]&bd<1then
h[a]=i
end
end
bn=M[1][3]end
for a,_ in w(e[2])do
_[10]=sub(T[_[2]],T[_[1]])if _[3]&4>0 then
f,F=W[e[3][_[6]][6]],W[e[3][_[7]][6]]_[8]=O(f[1],F[1])_[9],f[30],F[30]=v(f[2],F[2])else
_[8],_[9]=0,0
end
end
t={}for a=1,32 do
t[a]=0
end
X=v(X+1/bv,2/35)ae(1,X>=0)if X>=0 then
X=X-1/35
for a=2,#M do
M[a][0]={}end
for a,r in w(af)do
_=e[9][r[1]]c=r[3]b=_[2]f=c[b]c[b]=J(_[3],f-_[4],f+_[4])+0
f=c[b]if abs(f-_[3])<.1then
af[a]=r[2]==_[5]and{_[6],1,c}or{r[1],r[2]+1,c}if _[6]==0 then
be(af,a)end
end
c[10]=c[10]or f~=r
c[30]=a
end
for a,_ in w(h)do
if _ then
for k,r in w({1,2,9})do
_[r]=_[r]+_[r+10]end
_[15]=_[15]+1
f=z[_[4]]if _[7]<=0 and _[20]then
_[15]=0
_[6]=f[_[7]<=-f[4]and f[15]>1 and 15or 14]_[10],_[20]=n
if f[27]>0 then
c={}for k=1,30 do
c[k]=_[k]end
c[4]=f[27]c[6]=f[28]h[#h+1]=c
end
end
aK=e[16][_[6]]if _[15]>=aK[2]and aK[2]~=-1then
_[6]=aK[4]_[15]=0
U=e[16][_[6]][3]if U==1 then
for a,l in w(h)do
if l then
j=Y-y(_,l)if j>0 then
aR(l,j)end
end
end
elseif U==2then
if by(_,d,90)then
_[23]=d
_[6]=f[5]end
elseif U==3then
ao=aA(H(_,_[23])/45+.5)*45
u=i
l=1
bD=f[23]&4>0
while l<5 and not u do
j=aa(_,Q(ao+e[19][2][l],8))j[9]=_[9]u=aq(j,i,a,l)and(C[1]>=j[9]-24 or bD)l=l+1
end
if u then
for k=1,2 do
_[30+k]=j[k]-_[k]_[k]=j[k]end
_[3]=ao
_[10]=n
else
aq(_,i,a)end
_[9]=bD and _[9]or C[1]b=y(_,_[23])if f[13]>0 and aC(_,_[23],1)and v(b,230)<al()then
_[6]=f[13]end
if b<64 and f[12]>0then
_[6]=f[12]end
elseif U==5then
for a=1,11 do
d[3]=d[3]+e[19][9][a]o=e[14][23]bN()aG(d,1)end
d[3]=d[3]-20
elseif U>9then
_[3]=H(_,_[23])o=e[14][U]_[10]=n
ab=_[23]aG(_,a)end
end
if _[17]and _[17]>0then
o=e[14][_[17]]if not aq(_,i,a)or _[9]<=C[1]then
if aU then
aR(aU,f[21]*((al()&7)+1))end
_[1]=_[1]-_[11]_[2]=_[2]-_[12]_[3]=0
_[6]=z[_[4]][9]_[10]=n
_[11]=0
_[12]=0
_[17]=bP
_[19]=0
end
end
if _[6]==1then
h[a]=i
else
am=sub(_,M[1])N=M[2+am[1]//Y+am[2]//Y*bn]if N~=bP then
N[0][#N[0]+1]=a
end
end
end
end
for a=1,8 do
if ac(a)and A[1][a+4]>0then
ag=a
end
end
o=e[14][ag]d[3]=d[3]-ax(3)*(J(ba,5,6)*1.5-6)ba=abs(ax(3))*ba+1
S=d
for a=1,2 do
S=aa(S,Q(d[3]-L+90*a,ax(a)*8.33))end
S[9]=d[9]for a=1,8 do
u=aq(S,n,1,a)end
if u then
for a=1,2 do
d[30+a]=S[a]-d[a]d[a]=S[a]end
if d[9]<=C[1]then
d[9]=v(C[1],d[9]+4)d[19]=O(0,d[19])else
if d[9]>=C[2]-56then
d[9]=C[2]-56
d[19]=v(0,d[19])end
d[19]=d[19]-1
end
else
d[19]=0
end
aP=A[1]c=o[1]if ac(31)and av<=0 and(c==0 or aP[c]>=o[2])then
ae(3,n)av=o[3]if c>0then
aP[c]=aP[c]-o[2]end
bN()aG(d,1)end
av=av-1
if ax(4)<0 then
_=aa(d,Q(d[3],64))_[9]=d[9]aI,az=aC(d,_,2,1)_=e[2][az]if aI==i then
t[2]=az
c,u=_[4]for a=14,16 do
u=u or A[1][a]>0 and c==a
end
if c==1 or u then
aH(_,_[5])elseif c>3000 and c<3005then
bd=aA(c-3000)end
end
end
end
t[1]=ag
for a=3,8 do
t[a]=d[e[19][4][a]]end
t[5]=1
t[13]=d[3]a=ai
bJ=n
K=1
aB=#h+#W
while K<3 and bJ do
c=K*9+5
if a<=#h then
_=h[a]if a~=1 then
if _ then
if _[10]then
_[10]=i
t[c]=a
for k=1,8 do
t[c+k]=_[e[19][1][k]]end
K=K+1
end
else
t[c]=-a
be(h,a)K=K+1
aB=aB-1
end
end
else
_=W[a-#h]if _[10]then
_[10]=i
t[c]=a-#h+2^15
for k=1,6 do
t[c+k]=_[k]end
K=K+1
end
end
a=((a-2)%aB)+1
ai=v(ai,aB)bJ=a~=ai
end
ai=a
for a=1,32 do
bj.setNumber(a,t[a])end
end
at=at+1
async.httpGet(8,bT)end
function onDraw()aM=screen.drawText
aM(26,137,bv)if au then
for a=1,4 do
b=124+a*7
aM(240,b,aA(A[1][a]))aM(230,b,A[1][13+a])end
end
end
