bL=""

N=128
J=180
bG=output
bp=input
A=math
L=A.max
t=A.min
au=A.floor
pi=A.pi
as=bp.getNumber
ap=bp.getBool
aa=bG.setBool
j=true
h=false
x=ipairs
abs=A.abs
bj=table.remove
aR=string
function af(c,g)return{(c[1]+g[1]),(c[2]+g[2])}end
function sub(c,g)return{(c[1]-g[1]),(c[2]-g[2])}end
function bb(c)return A.sin(c/J*pi)end
function ad(c)return A.cos(c/J*pi)end
function E(c,g)return A.atan(g[2]-c[2],g[1]-c[1])*J/pi end
function I(c,g,ad)return L(t(ad,c),g)end
function u(c,g)return A.sqrt(((c[1]-g[1])^2)+((c[2]-g[2])^2))end
function P(c,g)return{ad(c)*g,bb(c)*g}end
function exp(c)return c[1],c[2]end
b={}aI=1
am=3
an=h
aK=j
Y=2
C=0
ao=0
av=0
Q=0
aP=0
l=1
aO=0
bn=2
function aS(a,c,_)if a<32768then
_=b[7][a]return aS(_[_[3]*(c[2]-_[2])-_[4]*(c[1]-_[1])>0 and 8 or 7],c)else
a=b[5][b[6][a-32768][2]]return b[8][b[3][b[2][a[4]][a[5]+6]][6]]end
end
function aj(q,bi,G,bI,_,a,v)ae=b[1][G]f=b[15][ae[4]]ar,aw=f[18],f[19]D=ar
y=aS(#b[7],q)R,ab=exp(y)ag=sub(q,b[10][1])K=b[10][2+ag[1]//N+ag[2]//N*bt]for a,_ in x(K[0])do
d=b[1][_]if _~=G and d and ae[14]~=_ then
k=u(d,q)z=b[15][d[4]]if d[20]then
T=k-z[18]if T<D and z[23]&1>0 and(f[23]&1>0 or(q[9]+aw<d[9]or q[9]>d[9]+z[19])==h)then
ay=d
if bi==h then
return h
end
D=T
az=E(q,d)end
end
if G==C and not d[10]then
if k<50then
c=z[25]if c>0then
for m,p in x(b[12][c])do
if p>0 and b[12][1][m]<b[12][2][m]then
d=b[12]b[1][_]=h
d[1][m]=au(t(d[1][m]+p,d[2][m]))if I(m,5,11)==m then
Y=m-4
end
end
end
end
c=z[29]if c>0 then
c=b[11][c]for m=7,8 do
e[m]=I(e[m]+c[m*2-13],e[m],c[m*2-12])end
b[1][_]=h
end
end
end
end
end
ay=h
if ab-R<aw or R>q[9]+24then
return h
end
for a=1,#K do
_=b[2][K[a]]k,bw=bC(q,b[4][_[1]],b[4][_[2]])if k<D then
if bI==1 and _[4]==2 then
aC(_,_[5])end
if(_[3]&1>0 and f[23]&1>0)or _[3]&4==0 then
D=k
az=bw
else
bE,bg=t(_[9],ab),L(_[8],R)if t(q[9],ab-aw)+24<bg or L(q[9],R)+aw>bE then
D=k
az=bw
else
ab,R=bE,bg
end
end
end
end
y={R,ab}if bi then
if D~=ar then
_=af(q,P(az,D-ar))q[1]=_[1]q[2]=_[2]end
return j
end
return D==ar
end
function bC(n,w,at)M=u(w,n)bm=E(w,at)+90
bv=bm-E(n,w)aY=-M*bb(bv)bD=M*ad(bv)aH=bm
if bD<0 then
aH=aH+J
end
if aY<0 then
return M,E(n,w)elseif aY>u(at,w)then
return u(at,n),E(n,at)else
return abs(bD),aH
end
end
function ai(n,w,aF,G,_)aD=u(n,w)aA=aD
aJ=j
T,aW=exp(n)bJ,bH=exp(w)aG,aX=exp(sub(w,n))ax,b_=n[9]+32,w[9]+32
s=h
for a,_ in x(b[2])do
ba=b[4][_[1]]bx,bh=exp(sub(b[4][_[2]],ba))bc,bd=exp(sub(n,ba))bo=bh*aG-bx*aX
O=(bx*bd-bh*bc)/bo
be=(aG*bd-aX*bc)/bo
if I(O,0,1)==O and I(be,0,1)==be then
bf={T+(O*aG),aW+(O*aX)}k=u(n,bf)B=ax+(b_-ax)*(k/aD)if I(B,_[8],_[9])~=B then
aJ=h
if aF==1 then
return h
end
if k<aA then
aA=k
bB,bu=exp(bf)bq=B
ac=a
end
end
end
end
if aF>1 then
if aF==3 then
for a,_ in x(b[1])do
if _ and a~=G then
f=b[15][_[4]]if f[23]&1>0 and _[20]then
k=u(n,_)if k<aA then
O=bC(_,n,w)M=(k/aD)B=ax+(b_-ax)*M
if I(B,_[9],_[9]+f[19])==B and O<f[18]then
s=j
aJ=h
bB=T+(bJ-T)*M
bu=aW+(bH-aW)*M
bq=B
ac=a
end
end
end
end
end
end
return aJ,ac,{bB,bu,bq}end
return j
end
function httpReply(c,g,ad)bl=av//2
av=0
end
function Z()aP=aP%256+1
return b[13][1][aP]end
function aL(_,a)f=b[15][_[4]]if f[23]&2>0 and _[7]>0 then
_[8]=_[8]-(a+1)//2
_[7]=_[7]-a//2+t(_[8],0)_[8]=L(_[8],0)if Z()<f[10]then
_[6]=f[9]_[15]=0
_[23]=e
_[10]=j
end
end
end
function by(c,g,aq)return g[20]and abs(((E(c,g)-c[3]+J)%360)-J)<aq and ai(c,g,1)end
function aZ(H,G)bk=ah and(ah[9]-H[9])*r[6]/u(ah,H)or 0
for a=1,r[12]do
c={}for a=1,30 do
c[a]=H[a]end
c[4]=r[8]c[10]=j
c[14]=G
bs=(Z()/N-1)*r[10]aE=P(H[3]+bs,r[6])if r[7]>0then
b[1][#b[1]+1]=c
f=b[15][c[4]]c[6]=f[3]c[9]=H[9]+32
c[11]=aE[1]c[12]=aE[2]c[17]=Y
c[19]=bk
else
d=af(H,aE)d[9]=e[9]+bk
aB,al,d=ai(H,d,3,G)if not aB then
br=sub(d,P(H[3]+bs,1))b[1][#b[1]+1]=c
c[1]=br[1]c[2]=br[2]c[6]=b[15][c[4]][3]c[9]=d[3]c[19]=1
if s then
c=b[1][al]aL(c,r[9]*((Z()&3)+2))end
end
end
end
end
function aC(_,d)if d>-1 then
c=b[9][d]if c[1]>0 or ae[31]*_[10][2]-ae[32]*_[10][1]<0 then
g=b[8][c[1]]V[g and g[30]or#V+1]={d,1,g or ae}_[4]=c[7]c=c[8]>0 and aC(_,c[8])end
else
aK=j
am=-d
o[9]=-d
end
end
function onTick()aa(9,ap(32))aa(2,h)aa(3,h)for v=1,3 do
if ap(32)and(not an)or not b[21]then
aN=property.getText(aI..bL)if aN~=bL then
a=1
i=bL
_=aR.sub(aN,a,a)while _~=bLdo
d=aR.byte(_)if d>64 or _==bLthen
i=(i..(d-65))+0
if l==1then
ac=i
if b[i]==bF then
b[i]={}end
l=2
elseif l==2then
B=i
X=0
l=3
elseif l==3then
aT=i
l=4
else
if X==0then
X=B
aT=aT-1
aQ={}b[ac][#b[ac]+1]=aQ
end
aQ[#aQ+1]=i
X=X-1
if L(X,aT)==0then
l=1
end
end
i=bL
else
i=i.._
end
a=a+1
_=aR.sub(aN,a,a)end
aI=aI+1
else
an=j
end
end
end
if an then
if aK then
V,aK={}W=1
for a=1,10 do
b[a]=b[a+10*am]end
for a=14,16 do
b[12][1][a]=0
end
am=am+1
for a,_ in x(b[1])do
for v=7,40 do
_[v]=0
end
bK=_[5]+1
_[7]=b[15][_[4]][4]_[9],_[10]=aS(#b[7],_)[1]if _[4]==1 then
if e then
_[7]=e[7]_[8]=e[8]end
C=a
e=_
elseif _[5]&bn<1then
b[1][a]=h
end
end
bt=b[10][1][3]end
for a,_ in x(b[2])do
_[10]=sub(b[4][_[2]],b[4][_[1]])if _[3]&4>0 then
f,z=b[8][b[3][_[6]][6]],b[8][b[3][_[7]][6]]_[8]=L(f[1],z[1])_[9],f[30],z[30]=t(f[2],z[2])else
_[8],_[9]=0,0
end
end
o={}for a=1,32 do
o[a]=0
end
Q=t(Q+1/bl,2/35)aa(1,Q>=0)if Q>=0 then
Q=Q-1/35
for a=2,#b[10]do
b[10][a][0]={}end
for a,p in x(V)do
_=b[9][p[1]]d=p[3]c=_[2]f=d[c]d[c]=I(_[3],f-_[4],f+_[4])+0
f=d[c]if abs(f-_[3])<.1then
V[a]=p[2]==_[5]and{_[6],1,d}or{p[1],p[2]+1,d}if _[6]==0 then
bj(V,a)end
else
d[8]=d[8]or f~=p
end
d[30]=a
end
for a,_ in x(b[1])do
if _ then
for v,p in x({1,2,9})do
_[p]=_[p]+_[p+10]end
_[15]=_[15]+1
f=b[15][_[4]]if _[7]<=0 and _[20]then
_[15]=0
_[6]=f[_[7]<=-f[4]and f[15]>1 and 15or 14]_[10],_[20]=j
if f[27]>0 then
d={}for v=1,30 do
d[v]=_[v]end
d[4]=f[27]d[6]=f[28]b[1][#b[1]+1]=d
end
end
aM=b[16][_[6]]if _[15]>=aM[2]and aM[2]~=-1then
_[6]=aM[4]_[15]=0
U=b[16][_[6]][3]if U==1 then
for a,l in x(b[1])do
if l then
i=N-u(_,l)if i>0 then
aL(l,i)end
end
end
elseif U==2then
if by(_,e,90)then
_[23]=e
_[6]=f[5]end
elseif U==3then
aq=au(E(_,_[23])/45+.5)*45
s=h
l=1
while l<5 and not s do
i=af(_,P(aq+b[19][2][l],8))i[9]=_[9]l=l+1
s=aj(i,h,a)and y[1]>=i[9]-24
end
if s then
for v=1,2 do
_[30+a]=i[a]-_[a]_[a]=i[a]end
_[3]=aq
_[10]=j
else
aj(_,h,a)end
if f[23]&4<1 then
_[9]=y[1]end
c=u(_,_[23])if f[13]>0 and ai(_,_[23],1)and t(c,230)<Z()then
_[6]=f[13]end
if c<64 and f[12]>0then
_[6]=f[12]end
elseif U>9then
_[3]=E(_,_[23])r=b[14][U]_[10]=j
ah=_[23]aZ(_,a)end
end
if _[17]and _[17]>0then
r=b[14][_[17]]if not aj(_,h,a)or _[9]<=y[1]then
if ay then
aL(ay,f[21]*((Z()&7)+1))end
_[1]=_[1]-_[11]_[2]=_[2]-_[12]_[3]=0
_[6]=b[15][_[4]][9]_[10]=j
_[11]=0
_[12]=0
_[17]=bF
_[19]=0
end
end
if _[6]==1then
b[1][a]=h
else
ag=sub(_,b[10][1])K=b[10][2+ag[1]//N+ag[2]//N*bt]if K~=bF then
K[0][#K[0]+1]=a
end
end
end
end
for a=1,8 do
if ap(a)and b[12][1][a+4]>0then
Y=a
end
end
r=b[14][Y]e[3]=e[3]-as(3)*(I(aO,5,6)*1.5-6)aO=abs(as(3))*aO+1
S=e
for a=1,2 do
S=af(S,P(e[3]-J+90*a,as(a)*8.33))end
S[9]=e[9]for a=1,8 do
s=aj(S,j,C,a)end
if s then
for a=1,2 do
e[30+a]=S[a]-e[a]e[a]=S[a]end
if e[9]<=y[1]then
e[9]=t(y[1],e[9]+4)e[19]=L(0,e[19])else
if e[9]>=y[2]-56then
e[9]=y[2]-56
e[19]=t(0,e[19])end
e[19]=e[19]-1
end
end
aU=b[12][1]d=r[1]if ap(31)and ao<=0 and(d==0 or aU[d]>=r[2])then
aa(3,j)ao=r[3]if d>0then
aU[d]=aU[d]-r[2]end
bz,ah=2048
for a,_ in x(b[1])do
if a~=C and _ and by(e,_,10)then
k=u(_,e)if k<bz then
if b[15][_[4]][23]&2>0then
ah=_
bz=k
end
end
end
end
aZ(e,C)end
ao=ao-1
if as(4)<0 then
_=af(e,P(e[3],64))_[9]=e[9]aB,al=ai(e,_,2,C)_=b[2][al]if aB==h then
o[2]=al
d,s=_[4]for a=14,16 do
s=s or b[12][1][a]>0 and d==a
end
if d==1 or s then
aC(_,_[5])elseif d>3000 and d<3005then
bn=au(d-3000)end
end
end
end
o[1]=Y
for a=3,8 do
o[a]=e[b[19][4][a]]end
o[5]=C
o[13]=e[3]a=W
bA=j
F=1
ak=#b[1]+#b[8]while F<3 and bA do
d=F*9+5
if a<=#b[1]then
_=b[1][a]if a~=C then
if _ then
if _[10]then
_[10]=h
o[d]=a
for v=1,8 do
o[d+v]=_[b[19][1][v]]end
F=F+1
end
else
o[d]=-a
bj(b[1],a)F=F+1
ak=ak-1
end
end
else
_=b[8][a-#b[1]]if _[8]then
_[8]=h
o[d]=a-#b[1]+2^15
o[d+1]=_[1]o[d+2]=_[2]F=F+1
end
end
a=((a-2)%ak)+1
W=t(W,ak)bA=a~=W
end
W=a
for a=1,32 do
bG.setNumber(a,o[a])end
end
av=av+1
async.httpGet(8,bL)end
function onDraw()aV=screen.drawText
aV(26,137,bl)if an then
for a=1,4 do
c=124+a*7
aV(240,c,au(b[12][1][a]))aV(230,c,b[12][1][13+a])end
end
end
