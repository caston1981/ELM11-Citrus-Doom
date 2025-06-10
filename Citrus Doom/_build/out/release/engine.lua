
aa=128
N=180
G=math
L=G.max
C=G.min
aU=G.floor
pi=G.pi
aA=input.getNumber
ag=input.getBool
ak=output.setBool
o=true
j=false
z=ipairs
abs=G.abs
aI=table.remove
aX=string
function ab(b,h)return{(b[1]+h[1]),(b[2]+h[2])}end
function sub(b,h)return{(b[1]-h[1]),(b[2]-h[2])}end
function bw(b)return G.sin(b/N*pi)end
function aj(b)return G.cos(b/N*pi)end
function J(b,h)return G.atan(h[2]-b[2],h[1]-b[1])*N/pi end
function E(b,h,aj)return L(C(aj,b),h)end
function v(b,h)return G.sqrt(((b[1]-h[1])^2)+((b[2]-h[2])^2))end
function P(b,h)return{aj(b)*h,bw(b)*h}end
function exp(b)return b[1],b[2]end
e={}bc=1
av=3
b_=j
aS=o
ac=2
aq=0
ap=0
aY=0
aC=0
X=0
aG=0
l=1
aN=0
bi=2
function bb(a,b,_)if a<2^15 then
_=e[7][a]return bb(_[_[3]*(b[2]-_[2])-_[4]*(b[1]-_[1])>0 and 8 or 7],b)else
a=e[5][e[6][a-32768][2]]return V[e[3][e[2][a[4]][a[5]+6]][6]]end
end
function an(s,bP,y,bz,_)T=g[y]f=B[T[4]]az,al=f[18],f[19]I=az
A=bb(#e[7],s)U,ao=exp(A)ah=sub(s,aV)M=S[2+ah[1]//aa+ah[2]//aa*bq]or{}for a,_ in z(M[0]or{})do
c=g[_]if _~=y and c and T[14]~=_ then
m=v(c,s)F=B[c[4]]if c[20]then
Y=m-F[18]if Y<I and F[23]&1>0 and(f[23]&1>0 or E(s[9],c[9]-al,c[9]+F[19])==s[9])then
aQ=c
if bP==j then
return j
end
I=Y
aH=J(s,c)end
end
if y==1 then
if m<50 then
b=F[25]if b>0 then
for p,t in z(x[b])do
if t>0 and x[1][p]<x[2][p]then
c=x
g[_]=j
c[1][p]=aU(C(c[1][p]+t,c[2][p]))if E(p,5,12)==p then
ac=p-4
end
end
end
end
b=F[29]if b>0 then
b=e[11][b]for p=7,8 do
d[p]=E(d[p]+b[p*2-13],d[p],b[p*2-12])end
g[_]=j
end
end
end
end
end
if ao-U<al or U>s[9]+24 then
r=(bz or 1)<8 or aY%4>0 or A[6]<18 or au(T,10)return j
end
for a=1,#M do
_=e[2][M[a]]m,bv=bI(s,W[_[1]],W[_[2]])if m<I then
if(_[3]&1>0 and f[23]&1>0)or _[3]&4==0 then
if y>1 or aT>0 or _[3]&4>0 then
I=m
aH=bv
end
else
aD,aE=C(_[9],ao),L(_[8],U)if C(s[9],ao-al)+24<aE or L(s[9],U)+al>aD or aD-aE<al then
I=m
aH=bv
else
if bz==1 and(_[3]&512>0 or y==1)and(_[4]==2 or y>1)then
aM(_,_[5])end
ao,U=aD,aE
end
end
end
end
A,aQ={U,ao}if bP then
if I~=az then
_=ab(s,P(aH,I-az))s[1]=_[1]s[2]=_[2]end
return o
end
return I==az
end
function bI(q,w,aw)O=v(w,q)bK=J(w,aw)+90
bj=bK-J(q,w)bG=-O*bw(bj)aT=O*aj(bj)bh=bK
if aT<0 then
bh=bh+N
end
if bG<0 then
return O,J(q,w)elseif bG>v(aw,w)then
return v(aw,q),J(q,aw)else
return abs(aT),bh
end
end
function ax(q,w,aF,y,_)bd=v(q,w)at=bd
aL=o
Y,aW=exp(q)bQ,bR=exp(w)aJ,ba=exp(sub(w,q))as,bJ=q[9]+32,w[9]+32
r=j
for a,_ in z(e[2])do
bN=W[_[1]]bC,bM=exp(sub(W[_[2]],bN))by,bm=exp(sub(q,bN))bk=bM*aJ-bC*ba
Z=(bC*bm-bM*by)/bk
bt=(aJ*bm-ba*by)/bk
if E(Z,0,1)==Z and E(bt,0,1)==bt then
bs={Y+(Z*aJ),aW+(Z*ba)}m=v(q,bs)D=as+(bJ-as)*(m/bd)if E(D,_[8]+1,_[9])~=D then
aL=j
if aF==1 then
return j
end
if m<at then
at=m
br,bp=exp(bs)bn=D
bH=a
end
end
end
end
if aF>1 then
if aF==3 then
for a,_ in z(g)do
if _ and a~=y then
f=B[_[4]]if f[23]&1>0 and _[20]then
m=v(q,_)if m<at then
Z=bI(_,q,w)O=(m/bd)D=as+(bJ-as)*O
if E(D,_[9],_[9]+f[19])==D and Z<f[18]then
at=m
r=o
aL=j
br=Y+(bQ-Y)*O
bp=aW+(bR-aW)*O
bn=D
bH=a
end
end
end
end
end
end
return aL,bH,{br,bp,bn}end
return o
end
function httpReply(b,h,aj)bA=ap//2
ap=0
end
function ai()aG=aG%256+1
return e[13][1][aG]end
function au(_,a,c)f=B[_[4]]if f[23]&2>0 and _[7]>0 then
_[8]=_[8]-(a+1)//2
_[7]=_[7]-a//2+C(_[8],0)_[8]=L(_[8],0)if ai()<f[10]then
_[6]=f[9]_[15]=0
_[23]=c or d
_[10]=o
end
end
end
function bl(b,h,ar)return h[20]and abs(((J(b,h)-b[3]+N)%360)-N)<ar and ax(b,h,1)end
function be(H,y)bE=ad and(ad[9]-H[9])*n[6]/v(ad,H)or 0
for a=1,n[12]do
b={}for a=1,30 do
b[a]=H[a]end
b[4]=n[8]b[10]=o
b[14]=y
bL=(ai()/aa-1)*n[10]aZ=P(H[3]+bL,n[6])if n[7]>0 then
g[#g+1]=b
f=B[b[4]]b[6]=f[3]b[9]=H[9]+n[13]b[11]=aZ[1]b[12]=aZ[2]b[17]=ac
b[19]=bE
else
c=ab(H,aZ)c[9]=d[9]+bE
aP,aB,c=ax(H,c,3,y)if not aP then
bB=sub(c,P(H[3]+bL,1))g[#g+1]=b
b[1]=bB[1]b[2]=bB[2]b[6]=B[b[4]][3]b[9]=c[3]b[19]=1
if r then
b=g[aB]au(b,n[9]*((ai()&3)+2),H)end
end
end
end
end
function aM(_,c)if c>-1 then
b=e[9][c]if b[1]>0 or T[31]*_[10][2]-T[32]*_[10][1]<0 then
h=V[b[1]]af[h and h[30]or#af+1]={c,1,h or T}_[4]=b[7]b=b[8]>0 and aM(_,b[8])end
else
aS=o
av=-c
u[9]=-c
end
end
function bD()bu,ad=2048
for a,_ in z(g)do
if a>1 and _ and bl(d,_,10)then
m=v(_,d)if m<bu then
if B[_[4]][23]&2>0 then
ad=_
bu=m
end
end
end
end
end
function bx(_)if _[9]~=A[1]and not bO then
_[9]=A[1]_[10]=true
end
end
function onTick()ak(9,ag(32))ak(2,ag(11))ak(3,j)for k=1,3 do
if ag(32)and(not b_)or not e[21]then
aR=property.getText(bc)a=1
i=""
_=aX.sub(aR,a,a)while _~=""do
c=aX.byte(_)if c>64 then
i=(i..c-65)+0
if l==1 then
bo=i
e[i]=e[i]or{}elseif l==2 then
D=i
ae=0
elseif l==3 then
aK=i
else
if ae==0 then
ae=D
aK=aK-1
aO={}e[bo][#e[bo]+1]=aO
end
aO[#aO+1]=i
ae=ae-1
l=L(ae,aK)>0 and l-1 or 0
end
l=l+1
i=""
else
i=i.._
end
a=a+1
_=aX.sub(aR,a,a)end
bc=bc+1
b_=aR==""
end
end
if b_ then
if aS then
af,aS={}am=1
for a=1,10 do
e[a]=e[a+10*av]end
g=e[1]W=e[4]V=e[8]S=e[10]aV,S[1]=S[1]x=e[12]B=e[15]for a=14,16 do
x[1][a]=0
end
av=av+1
for a=#g,1,-1 do
_=g[a]for k=7,40 do
_[k]=0
end
_[7]=B[_[4]][4]_[9],_[10]=bb(#e[7],_)[1]if _[5]&bi<1 then
aI(g,a)elseif _[4]==1 then
if d then
_[7]=d[7]_[8]=d[8]end
d=_
end
end
bq=aV[3]end
for a,_ in z(e[2])do
_[10]=sub(W[_[2]],W[_[1]])if _[3]&4>0 then
f,F=V[e[3][_[6]][6]],V[e[3][_[7]][6]]_[8]=L(f[1],F[1])_[9],f[30],F[30]=C(f[2],F[2])else
_[8],_[9]=0,0
end
end
u={}for a=1,32 do
u[a]=0
end
aC=aC+1
X=C(X+1/bA,2/35)ak(1,X>=0)if X>=0 then
X=X-1/35
aY=aY+1
for a=2,#S do
S[a][0]={}end
for a,t in z(af)do
_=e[9][t[1]]c=t[3]b=_[2]f=c[b]c[b]=E(_[3],f-_[4],f+_[4])+0
f=c[b]if f==_[3]then
af[a]=t[2]==_[5]and{_[6],1,c}or{t[1],t[2]+1,c}if _[6]==0 then
aI(af,a)end
end
c[10]=c[10]or f~=t
c[30]=a
end
for a,_ in z(g)do
if _ then
for k,t in z({1,2,9})do
_[t]=_[t]+_[t+10]end
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
bg=e[16][_[6]]if _[15]>=bg[2]and bg[2]~=-1 then
_[6]=bg[4]_[15]=0
R=e[16][_[6]][3]bO=f[23]&4>0
if R==1 then
for a,l in z(g)do
if l then
i=aa-v(_,l)if i>0 then
au(l,i)end
end
end
elseif R==2 then
if bl(_,d,90)then
_[23]=d
_[6]=f[5]end
an(_,j,a,8)bx(_)elseif R==3 then
_[23]=_[23][20]and _[23]or d
ar=aU(J(_,_[23])/45+.5)*45
r=j
l=1
while l<5 and not r do
i=ab(_,P(ar+e[19][2][l],8))i[9]=_[9]r=an(i,j,a,l)and(A[1]>=i[9]-24 or bO)l=l+1
end
if r then
for k=1,2 do
_[30+k]=i[k]-_[k]_[k]=i[k]end
_[3]=ar
_[10]=o
else
an(_,j,a,8)end
bx(_)b=v(_,_[23])if f[13]>0 and ax(_,_[23],1)and C(b,230)<ai()then
_[6]=f[13]end
if b<64 and f[12]>0 then
_[6]=f[12]end
elseif R==5 then
for a=1,11 do
d[3]=d[3]+e[19][9][a]n=e[14][23]bD()be(d,1)end
d[3]=d[3]-20
elseif R>9 and _[20]then
_[3]=J(_,_[23])n=e[14][R]_[10]=o
ad=_[23]be(_,a)end
end
if _[17]and _[17]>0 then
n=e[14][_[17]]if not an(_,j,a)or _[9]<=A[1]then
if aQ then
au(aQ,f[21]*((ai()&7)+1),g[_[14]])end
_[1]=_[1]-_[11]_[2]=_[2]-_[12]_[3]=0
_[6]=B[_[4]][5]_[10]=o
_[11]=0
_[12],_[17]=0
_[19]=0
end
end
if _[6]==1 then
g[a]=j
else
ah=sub(_,aV)M=S[2+ah[1]//aa+ah[2]//aa*bq]if M then
M[0][#M[0]+1]=a
end
end
end
end
for a=1,8 do
if ag(a)and x[1][a+4]>0 then
ac=a
end
end
n=e[14][ac]d[3]=d[3]-aA(3)*(E(aN,5,6)*1.5-6)aN=abs(aA(3))*aN+1
Q=d
for a=1,2 do
Q=ab(Q,P(d[3]-N+90*a,aA(a)*8.33))end
Q[9]=d[9]for a=1,8 do
r=an(Q,o,1,a)end
if r then
for a=1,2 do
d[30+a]=Q[a]-d[a]d[a]=Q[a]end
if d[9]>A[1]then
d[19]=d[19]-1
else
d[9]=C(A[1],d[9]+4)d[19]=L(0,d[19])end
else
d[19]=0
d[9]=A[1]end
bf=x[1]c=n[1]if ag(31)and aq<=0 and(c==0 or bf[c]>=n[2])then
ak(3,o)aq=n[3]if c>0 then
bf[c]=bf[c]-n[2]end
bD()be(d,1)end
aq=aq-1
if aA(4)<0 then
_=ab(d,P(d[3],64))_[9]=d[9]aP,aB=ax(d,_,2,1)_=e[2][aB]if aP==j then
u[2]=aB
c,r=_[4]for a=14,16 do
r=r or x[1][a]>0 and c==a
end
if c==1 or r then
aM(_,_[5])elseif c>3000 and c<3005 then
bi=aU(c-3000)end
end
end
end
u[1]=ac
for a=3,13 do
u[a]=d[e[19][4][a]]or u[a]end
x[1][17]=bA
u[10]=x[1][aC%#x[1]+1]a=am
bF=o
K=1
ay=#g+#V
while K<3 and bF do
c=K*9+5
if a<=#g then
_=g[a]if a~=1 then
if _ then
if _[10]then
_[10]=j
u[c]=a
for k=1,8 do
u[c+k]=_[e[19][1][k]]end
K=K+1
end
else
u[c]=-a
aI(g,a)K=K+1
ay=ay-1
end
end
else
_=V[a-#g]if _[10]then
_[10]=j
u[c]=a-#g+2^15
for k=1,6 do
u[c+k]=_[k]end
K=K+1
end
end
a=(a-2)%ay+1
am=C(am,ay)bF=a~=am
end
am=a
for a=1,32 do
output.setNumber(a,u[a])end
end
ap=ap+1
async.httpGet(8,"")end
