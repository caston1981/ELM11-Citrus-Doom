bS=""

W=128
N=180
bC=output
bw=input
F=math
P=F.max
w=F.min
ao=F.floor
pi=F.pi
ap=bw.getNumber
ad=bw.getBool
aj=bC.setBool
m=true
i=false
v=ipairs
abs=F.abs
bh=table.remove
aL=string
function am(b,g)return{(b[1]+g[1]),(b[2]+g[2])}end
function sub(b,g)return{(b[1]-g[1]),(b[2]-g[2])}end
function bq(b)return F.sin(b/N*pi)end
function an(b)return F.cos(b/N*pi)end
function J(b,g)return F.atan(g[2]-b[2],g[1]-b[1])*N/pi end
function K(b,g,an)return P(w(an,b),g)end
function y(b,g)return F.sqrt(((b[1]-g[1])^2)+((b[2]-g[2])^2))end
function Y(b,g)return{an(b)*g,bq(b)*g}end
function exp(b)return b[1],b[2]end
e={}ba=1
az=3
ar=i
b_=m
al=2
at=0
aC=0
U=0
aY=0
l=1
aW=0
bD=2
function aX(a,b,_)if a<32768then
_=e[7][a]return aX(_[_[3]*(b[2]-_[2])-_[4]*(b[1]-_[1])>0 and 8 or 7],b)else
a=e[5][e[6][a-32768][2]]return Q[e[3][e[2][a[4]][a[5]+6]][6]]end
end
function aB(s,bt,z,bP,_,a,k)aa=h[z]f=A[aa[4]]aA,ax=f[18],f[19]H=aA
C=aX(#e[7],s)X,ae=exp(C)ab=sub(s,M[1])O=M[2+ab[1]//W+ab[2]//W*bx]or{{}}for a,_ in v(O[0])do
c=h[_]if _~=z and c and aa[14]~=_ then
n=y(c,s)E=A[c[4]]if c[20]then
Z=n-E[18]if Z<H and E[23]&1>0 and(f[23]&1>0 or(s[9]+ax<c[9]or s[9]>c[9]+E[19])==i)then
aD=c
if bt==i then
return i
end
H=Z
aE=J(s,c)end
end
if z==1 and not c[10]then
if n<50then
b=E[25]if b>0then
for o,r in v(B[b])do
if r>0 and B[1][o]<B[2][o]then
c=B
h[_]=i
c[1][o]=ao(w(c[1][o]+r,c[2][o]))if K(o,5,12)==o then
al=o-4
end
end
end
end
b=E[29]if b>0 then
b=e[11][b]for o=7,8 do
d[o]=K(d[o]+b[o*2-13],d[o],b[o*2-12])end
h[_]=i
end
end
end
end
end
aD=i
if ae-X<ax or X>s[9]+24then
return i
end
for a=1,#O do
_=e[2][O[a]]n,bH=bg(s,V[_[1]],V[_[2]])if n<H then
if bP==1 and(_[3]&512>0 or z==1)and(_[4]==2 or z>1)then
aS(_,_[5])end
if(_[3]&1>0 and f[23]&1>0)or _[3]&4==0 then
H=n
aE=bH
else
be,bz=w(_[9],ae),P(_[8],X)if w(s[9],ae-ax)+24<bz or P(s[9],X)+ax>be then
H=n
aE=bH
else
ae,X=be,bz
end
end
end
end
C={X,ae}if bt then
if H~=aA then
_=am(s,Y(aE,H-aA))s[1]=_[1]s[2]=_[2]end
return m
end
return H==aA
end
function bg(q,x,ay)L=y(x,q)by=J(x,ay)+90
br=by-J(q,x)bL=-L*bq(br)bl=L*an(br)aK=by
if bl<0 then
aK=aK+N
end
if bL<0 then
return L,J(q,x)elseif bL>y(ay,x)then
return y(ay,q),J(q,ay)else
return abs(bl),aK
end
end
function av(q,x,bc,z,_)aJ=y(q,x)aZ=aJ
aP=m
Z,aT=exp(q)bO,bQ=exp(x)aI,aN=exp(sub(x,q))aq,bi=q[9]+32,x[9]+32
u=i
for a,_ in v(e[2])do
bs=V[_[1]]bK,bv=exp(sub(V[_[2]],bs))bG,bE=exp(sub(q,bs))bk=bv*aI-bK*aN
S=(bK*bE-bv*bG)/bk
bB=(aI*bE-aN*bG)/bk
if K(S,0,1)==S and K(bB,0,1)==bB then
bo={Z+(S*aI),aT+(S*aN)}n=y(q,bo)D=aq+(bi-aq)*(n/aJ)if K(D,_[8]+1,_[9])~=D then
aP=i
if bc==1 then
return i
end
if n<aZ then
aZ=n
bj,bA=exp(bo)bm=D
ak=a
end
end
end
end
if bc>1 then
if bc==3 then
for a,_ in v(h)do
if _ and a~=z then
f=A[_[4]]if f[23]&1>0 and _[20]then
n=y(q,_)if n<aZ then
S=bg(_,q,x)L=(n/aJ)D=aq+(bi-aq)*L
if K(D,_[9],_[9]+f[19])==D and S<f[18]then
u=m
aP=i
bj=Z+(bO-Z)*L
bA=aT+(bQ-aT)*L
bm=D
ak=a
end
end
end
end
end
end
return aP,ak,{bj,bA,bm}end
return m
end
function httpReply(b,g,an)bn=aC//2
aC=0
end
function af()aY=aY%256+1
return e[13][1][aY]end
function aV(_,a)f=A[_[4]]if f[23]&2>0 and _[7]>0 then
_[8]=_[8]-(a+1)//2
_[7]=_[7]-a//2+w(_[8],0)_[8]=P(_[8],0)if af()<f[10]then
_[6]=f[9]_[15]=0
_[23]=d
_[10]=m
end
end
end
function bM(b,g,as)return g[20]and abs(((J(b,g)-b[3]+N)%360)-N)<as and av(b,g,1)end
function aO(G,z)bd=ai and(ai[9]-G[9])*p[6]/y(ai,G)or 0
for a=1,p[12]do
b={}for a=1,30 do
b[a]=G[a]end
b[4]=p[8]b[10]=m
b[14]=z
bp=(af()/W-1)*p[10]aM=Y(G[3]+bp,p[6])if p[7]>0then
h[#h+1]=b
f=A[b[4]]b[6]=f[3]b[9]=G[9]+32
b[11]=aM[1]b[12]=aM[2]b[17]=al
b[19]=bd
else
c=am(G,aM)c[9]=d[9]+bd
bb,au,c=av(G,c,3,z)if not bb then
bu=sub(c,Y(G[3]+bp,1))h[#h+1]=b
b[1]=bu[1]b[2]=bu[2]b[6]=A[b[4]][3]b[9]=c[3]b[19]=1
if u then
b=h[au]aV(b,p[9]*((af()&3)+2))end
end
end
end
end
function aS(_,c)if c>-1 then
b=e[9][c]if b[1]>0 or aa[31]*_[10][2]-aa[32]*_[10][1]<0 then
g=Q[b[1]]ag[g and g[30]or#ag+1]={c,1,g or aa}_[4]=b[7]b=b[8]>0 and aS(_,b[8])end
else
b_=m
az=-c
t[9]=-c
end
end
function bF()bf,ai=2048
for a,_ in v(h)do
if a>1 and _ and bM(d,_,10)then
n=y(_,d)if n<bf then
if A[_[4]][23]&2>0then
ai=_
bf=n
end
end
end
end
end
function onTick()aj(9,ad(32))aj(2,ad(11))aj(3,i)for k=1,3 do
if ad(32)and(not ar)or not e[21]then
aH=property.getText(ba..bS)if aH~=bS then
a=1
j=bS
_=aL.sub(aH,a,a)while _~=bSdo
c=aL.byte(_)if c>64 or _==bSthen
j=(j..(c-65))+0
if l==1then
ak=j
if e[j]==bJ then
e[j]={}end
l=2
elseif l==2then
D=j
ac=0
l=3
elseif l==3then
aR=j
l=4
else
if ac==0then
ac=D
aR=aR-1
aG={}e[ak][#e[ak]+1]=aG
end
aG[#aG+1]=j
ac=ac-1
if P(ac,aR)==0then
l=1
end
end
j=bS
else
j=j.._
end
a=a+1
_=aL.sub(aH,a,a)end
ba=ba+1
else
ar=m
end
end
end
if ar then
if b_ then
ag,b_={}ah=1
for a=1,10 do
e[a]=e[a+10*az]end
h=e[1]V=e[4]Q=e[8]M=e[10]B=e[12]A=e[15]for a=14,16 do
B[1][a]=0
end
az=az+1
for a,_ in v(h)do
for k=7,40 do
_[k]=0
end
bR=_[5]+1
_[7]=A[_[4]][4]_[9],_[10]=aX(#e[7],_)[1]if _[4]==1 then
if d then
_[7]=d[7]_[8]=d[8]end
d=_
elseif _[5]&bD<1then
h[a]=i
end
end
bx=M[1][3]end
for a,_ in v(e[2])do
_[10]=sub(V[_[2]],V[_[1]])if _[3]&4>0 then
f,E=Q[e[3][_[6]][6]],Q[e[3][_[7]][6]]_[8]=P(f[1],E[1])_[9],f[30],E[30]=w(f[2],E[2])else
_[8],_[9]=0,0
end
end
t={}for a=1,32 do
t[a]=0
end
U=w(U+1/bn,2/35)aj(1,U>=0)if U>=0 then
U=U-1/35
for a=2,#M do
M[a][0]={}end
for a,r in v(ag)do
_=e[9][r[1]]c=r[3]b=_[2]f=c[b]c[b]=K(_[3],f-_[4],f+_[4])+0
f=c[b]if abs(f-_[3])<.1then
ag[a]=r[2]==_[5]and{_[6],1,c}or{r[1],r[2]+1,c}if _[6]==0 then
bh(ag,a)end
end
c[10]=c[10]or f~=r
c[30]=a
end
for a,_ in v(h)do
if _ then
for k,r in v({1,2,9})do
_[r]=_[r]+_[r+10]end
_[15]=_[15]+1
f=A[_[4]]if _[7]<=0 and _[20]then
_[15]=0
_[6]=f[_[7]<=-f[4]and f[15]>1 and 15or 14]_[10],_[20]=m
if f[27]>0 then
c={}for k=1,30 do
c[k]=_[k]end
c[4]=f[27]c[6]=f[28]h[#h+1]=c
end
end
aQ=e[16][_[6]]if _[15]>=aQ[2]and aQ[2]~=-1then
_[6]=aQ[4]_[15]=0
T=e[16][_[6]][3]if T==1 then
for a,l in v(h)do
if l then
j=W-y(_,l)if j>0 then
aV(l,j)end
end
end
elseif T==2then
if bM(_,d,90)then
_[23]=d
_[6]=f[5]end
elseif T==3then
as=ao(J(_,_[23])/45+.5)*45
u=i
l=1
bI=f[23]&4>0
while l<5 and not u do
j=am(_,Y(as+e[19][2][l],8))j[9]=_[9]u=aB(j,i,a,l)and(C[1]>=j[9]-24 or bI)l=l+1
end
if u then
for k=1,2 do
_[30+k]=j[k]-_[k]_[k]=j[k]end
_[3]=as
_[10]=m
else
aB(_,i,a)end
_[9]=bI and _[9]or C[1]b=y(_,_[23])if f[13]>0 and av(_,_[23],1)and w(b,230)<af()then
_[6]=f[13]end
if b<64 and f[12]>0then
_[6]=f[12]end
elseif T==5then
for a=1,11 do
d[3]=d[3]+e[19][9][a]p=e[14][23]bF()aO(d,1)end
d[3]=d[3]-20
elseif T>9then
_[3]=J(_,_[23])p=e[14][T]_[10]=m
ai=_[23]aO(_,a)end
end
if _[17]and _[17]>0then
p=e[14][_[17]]if not aB(_,i,a)or _[9]<=C[1]then
if aD then
aV(aD,f[21]*((af()&7)+1))end
_[1]=_[1]-_[11]_[2]=_[2]-_[12]_[3]=0
_[6]=A[_[4]][9]_[10]=m
_[11]=0
_[12]=0
_[17]=bJ
_[19]=0
end
end
if _[6]==1then
h[a]=i
else
ab=sub(_,M[1])O=M[2+ab[1]//W+ab[2]//W*bx]if O~=bJ then
O[0][#O[0]+1]=a
end
end
end
end
for a=1,8 do
if ad(a)and B[1][a+4]>0then
al=a
end
end
p=e[14][al]d[3]=d[3]-ap(3)*(K(aW,5,6)*1.5-6)aW=abs(ap(3))*aW+1
R=d
for a=1,2 do
R=am(R,Y(d[3]-N+90*a,ap(a)*8.33))end
R[9]=d[9]for a=1,8 do
u=aB(R,m,1,a)end
if u then
for a=1,2 do
d[30+a]=R[a]-d[a]d[a]=R[a]end
if d[9]<=C[1]then
d[9]=w(C[1],d[9]+4)d[19]=P(0,d[19])else
if d[9]>=C[2]-56then
d[9]=C[2]-56
d[19]=w(0,d[19])end
d[19]=d[19]-1
end
else
d[19]=0
end
aU=B[1]c=p[1]if ad(31)and at<=0 and(c==0 or aU[c]>=p[2])then
aj(3,m)at=p[3]if c>0then
aU[c]=aU[c]-p[2]end
bF()aO(d,1)end
at=at-1
if ap(4)<0 then
_=am(d,Y(d[3],64))_[9]=d[9]bb,au=av(d,_,2,1)_=e[2][au]if bb==i then
t[2]=au
c,u=_[4]for a=14,16 do
u=u or B[1][a]>0 and c==a
end
if c==1 or u then
aS(_,_[5])elseif c>3000 and c<3005then
bD=ao(c-3000)end
end
end
end
t[1]=al
for a=3,8 do
t[a]=d[e[19][4][a]]end
t[5]=1
t[13]=d[3]a=ah
bN=m
I=1
aw=#h+#Q
while I<3 and bN do
c=I*9+5
if a<=#h then
_=h[a]if a~=1 then
if _ then
if _[10]then
_[10]=i
t[c]=a
for k=1,8 do
t[c+k]=_[e[19][1][k]]end
I=I+1
end
else
t[c]=-a
bh(h,a)I=I+1
aw=aw-1
end
end
else
_=Q[a-#h]if _[10]then
_[10]=i
t[c]=a-#h+2^15
for k=1,6 do
t[c+k]=_[k]end
I=I+1
end
end
a=((a-2)%aw)+1
ah=w(ah,aw)bN=a~=ah
end
ah=a
for a=1,32 do
bC.setNumber(a,t[a])end
end
aC=aC+1
async.httpGet(8,bS)end
function onDraw()aF=screen.drawText
aF(26,137,bn)if ar then
for a=1,4 do
b=124+a*7
aF(240,b,ao(B[1][a]))aF(230,b,B[1][13+a])end
end
end
