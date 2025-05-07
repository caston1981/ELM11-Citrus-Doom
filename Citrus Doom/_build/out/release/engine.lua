bK=""

T=128
L=180
bj=output
bw=input
aY=string.sub
z=math
M=z.max
r=z.min
ax=z.floor
pi=z.pi
ah=bw.getNumber
aq=bw.getBool
af=bj.setBool
j=true
h=false
w=ipairs
abs=z.abs
bt=table.remove
function ag(c,g)return{(c[1]+g[1]),(c[2]+g[2])}end
function sub(c,g)return{(c[1]-g[1]),(c[2]-g[2])}end
function bs(c)return z.sin(c/L*pi)end
function ad(c)return z.cos(c/L*pi)end
function E(c,g)return z.atan(g[2]-c[2],g[1]-c[1])*L/pi end
function D(c,g,ad)return M(r(ad,c),g)end
function v(c,g)return z.sqrt(((c[1]-g[1])^2)+((c[2]-g[2])^2))end
function R(c,g)return{ad(c)*g,bs(c)*g}end
function exp(c)return c[1],c[2]end
b={}aM=1
ao=3
ap=h
aA=j
U=2
I=0
aw=0
ak=0
Q=0
aW=0
l=1
aF=0
aE=2
function aO(a,c,_)if a<32768then
_=b[7][a]return aO(_[_[3]*(c[2]-_[2])-_[4]*(c[1]-_[1])>0 and 8 or 7],c)else
a=b[5][b[6][a-32768][2]]return b[8][b[3][b[2][a[4]][a[5]+6]][6]]end
end
function at(p,bC,B,bH,_,a,x)f=b[15][b[1][B][4]]al,am=f[18],f[19]G=al
A=aO(#b[7],p)P,ae=exp(A)ac=sub(p,b[10][1])J=b[10][2+ac[1]//T+ac[2]//T*bi]for a,_ in w(J[0])do
d=b[1][_]if _~=B and d and b[1][B][14]~=_ then
k=v(d,p)y=b[15][d[4]]if d[20]then
N=k-y[18]if N<G and y[23]&1>0 and(f[23]&1>0 or(p[9]+am<d[9]or p[9]>d[9]+y[19])==h)then
aP=d
if bC==h then
return h
end
G=N
aN=E(p,d)end
end
if B==I and not d[10]then
if k<50then
c=y[25]if c>0then
for n,s in w(b[12][c])do
if s>0 and b[12][1][n]<b[12][2][n]then
d=b[12]b[1][_]=h
d[1][n]=ax(r(d[1][n]+s,d[2][n]))if D(n,5,11)==n then
U=n-4
end
end
end
end
c=y[29]if c>0 then
c=b[11][c]for n=7,8 do
e[n]=D(e[n]+c[n*2-13],e[n],c[n*2-12])end
b[1][_]=h
end
end
end
end
end
aP=h
if ae-P<am or P>p[9]+24then
return h
end
for a=1,#J do
_=b[2][J[a]]k,bA=bb(p,b[4][_[1]],b[4][_[2]])if k<G then
if bH==1 and _[4]==2 then
aK(_,_[5])end
if(_[3]&1>0 and f[23]&1>0)or _[3]&4==0 then
G=k
aN=bA
else
bF,bz=r(_[9],ae),M(_[8],P)if r(p[9],ae-am)+24<bz or M(p[9],P)+am>bF then
G=k
aN=bA
else
ae,P=bF,bz
end
end
end
end
A={P,ae}if bC then
if G~=al then
_=ag(p,R(aN,G-al))p[1]=_[1]p[2]=_[2]end
return j
end
return G==al
end
function bb(o,u,au)K=v(u,o)bk=E(u,au)+90
bx=bk-E(o,u)ba=-K*bs(bx)br=K*ad(bx)aS=bk
if br<0 then
aS=aS+L
end
if ba<0 then
return K,E(o,u)elseif ba>v(au,u)then
return v(au,o),E(o,au)else
return abs(br),aS
end
end
function aj(o,u,aG,B,_)aI=v(o,u)aC=aI
aU=j
N,aB=exp(o)bG,bI=exp(u)aT,aR=exp(sub(u,o))an,bo=o[9]+32,u[9]+32
t=h
for a,_ in w(b[2])do
bh=b[4][_[1]]aZ,bp=exp(sub(b[4][_[2]],bh))bn,b_=exp(sub(o,bh))bm=bp*aT-aZ*aR
O=(aZ*b_-bp*bn)/bm
aX=(aT*b_-aR*bn)/bm
if D(O,0,1)==O and D(aX,0,1)==aX then
bq={N+(O*aT),aB+(O*aR)}k=v(o,bq)C=an+(bo-an)*(k/aI)if D(C,_[8],_[9])~=C then
aU=h
if aG==1 then
return h
end
if k<aC then
aC=k
by,bc=exp(bq)bB=C
X=a
end
end
end
end
if aG>1 then
if aG==3 then
for a,_ in w(b[1])do
if _ and a~=B then
f=b[15][_[4]]if f[23]&1>0 and _[20]then
k=v(o,_)if k<aC then
O=bb(_,o,u)K=(k/aI)C=an+(bo-an)*K
if D(C,_[9],_[9]+f[19])==C and O<f[18]then
t=j
aU=h
by=N+(bG-N)*K
bc=aB+(bI-aB)*K
bB=C
X=a
end
end
end
end
end
end
return aU,X,{by,bc,bB}end
return j
end
function httpReply(c,g,ad)bf=ak//2
ak=0
end
function W()aW=aW%256+1
return b[13][1][aW]end
function aH(_,a)f=b[15][_[4]]if f[23]&2>0 and _[7]>0 then
_[8]=_[8]-(a+1)//2
_[7]=_[7]-a//2+r(_[8],0)_[8]=M(_[8],0)if W()<f[10]then
_[6]=f[9]_[15]=0
_[23]=e
_[10]=j
end
end
end
function bE(c,g,as)return g[20]and abs(((E(c,g)-c[3]+L)%360)-L)<as and aj(c,g,1)end
function be(H,B)bD=aa and(aa[9]-H[9])*q[6]/v(aa,H)or 0
for a=1,q[12]do
c={}for a=1,30 do
c[a]=H[a]end
c[4]=q[8]c[10]=j
c[14]=B
bd=(W()/T-1)*q[10]aD=R(H[3]+bd,q[6])if q[7]>0then
b[1][#b[1]+1]=c
f=b[15][c[4]]c[6]=f[3]c[9]=H[9]+32
c[11]=aD[1]c[12]=aD[2]c[17]=U
c[19]=bD
else
d=ag(H,aD)d[9]=e[9]+bD
ay,ai,d=aj(H,d,3,B)if not ay then
bl=sub(d,R(H[3]+bd,1))b[1][#b[1]+1]=c
c[1]=bl[1]c[2]=bl[2]c[6]=b[15][c[4]][3]c[9]=d[3]c[19]=1
if t then
c=b[1][ai]aH(c,q[9]*((W()&3)+2))end
end
end
end
end
function aK(_,d)if d>-1 then
c=b[9][d]if c[1]>0 or e[31]*_[10][2]-e[32]*_[10][1]<0 then
g=b[8][c[1]]Z[g and g[30]or#Z+1]={d,1}_[4]=c[7]c=c[8]>0 and aK(_,c[8])end
else
aA=j
ao=-d
m[9]=-d
end
end
function onTick()af(9,aq(32))af(2,h)af(3,h)for x=1,3 do
if aq(32)and(not ap)or not b[21]then
aJ=property.getText(aM..bK)if aJ~=bK then
a=1
i=bK
_=aY(aJ,a,a)while i.._~=bKdo
if _==","or _==bKthen
i=i+0
if l==1then
X=i
if b[i]==bu then
b[i]={}end
l=2
elseif l==2then
C=i
V=0
l=3
elseif l==3then
aV=i
l=4
else
if V==0then
V=C
aV=aV-1
aL={}b[X][#b[X]+1]=aL
end
aL[#aL+1]=i
V=V-1
if M(V,aV)==0then
l=1
end
end
i=bK
else
i=i.._
end
a=a+1
_=aY(aJ,a,a)end
aM=aM+1
else
ap=j
end
end
end
if ap then
if aA then
Z,aA={}Y=1
for a=1,10 do
b[a]=b[a+10*ao]end
for a=14,16 do
b[12][1][a]=0
end
ao=ao+1
for a,_ in w(b[1])do
for x=7,20 do
_[x]=0
end
bJ=_[5]+1
_[7]=b[15][_[4]][4]_[9],_[10]=aO(#b[7],_)[1]if _[4]==1 then
if e then
_[7]=e[7]_[8]=e[8]end
I=a
e=_
elseif _[5]&aE<1then
b[1][a]=h
end
end
bi=b[10][1][3]end
for a,_ in w(b[2])do
_[10]=sub(b[4][_[2]],b[4][_[1]])if _[3]&4>0 then
f,y=b[8][b[3][_[6]][6]],b[8][b[3][_[7]][6]]_[8]=M(f[1],y[1])_[9],f[30],y[30]=r(f[2],y[2])else
_[8],_[9]=0,0
end
end
m={}for a=1,32 do
m[a]=0
end
Q=r(Q+1/bf,2/35)af(1,Q>=0)if Q>=0 then
Q=Q-1/35
for a=2,#b[10]do
b[10][a][0]={}end
for a,s in w(Z)do
_=b[9][s[1]]d=b[8][_[1]]or e
c=_[2]f=d[c]d[c]=D(_[3],f-_[4],f+_[4])f=d[c]if abs(f-_[3])<.1then
Z[a]=s[2]==_[5]and{_[6],1}or{s[1],s[2]+1}if _[6]==0 then
bt(Z,a)end
else
d[8]=d[8]or f~=s
end
d[30]=a
end
for a,_ in w(b[1])do
if _ then
for x,s in w({1,2,9})do
_[s]=_[s]+_[s+10]end
_[15]=_[15]+1
f=b[15][_[4]]if _[7]<=0 and _[20]then
_[15]=0
_[6]=f[_[7]<=-f[4]and f[15]>1 and 15or 14]_[10],_[20]=j
if f[27]>0 then
d={}for x=1,30 do
d[x]=_[x]end
d[4]=f[27]d[6]=f[28]b[1][#b[1]+1]=d
end
end
az=b[16][_[6]]if _[15]>=az[2]and az[2]~=-1then
_[6]=az[4]_[15]=0
ab=b[16][_[6]][3]if ab==1 then
for a,l in w(b[1])do
if l then
i=T-v(_,l)if i>0 then
aH(l,i)end
end
end
elseif ab==2then
if bE(_,e,90)then
_[23]=e
_[6]=f[5]end
elseif ab==3then
as=ax(E(_,_[23])/45+.5)*45
t=h
l=1
while l<5 and not t do
i=ag(_,R(as+b[19][2][l],8))i[9]=_[9]l=l+1
t=at(i,h,a)and A[1]>=i[9]-24
end
if t then
_[1]=i[1]_[2]=i[2]_[3]=as
_[10]=j
else
at(_,h,a)end
if f[23]&4<1 then
_[9]=A[1]end
c=v(_,_[23])if f[13]>0 and aj(_,_[23],1)and r(c,230)<W()then
_[6]=f[13]end
if c<64 and f[12]>0then
_[6]=f[12]end
elseif ab>9then
_[3]=E(_,_[23])q=b[14][ab]_[10]=j
aa=_[23]be(_,a)end
end
if _[17]and _[17]>0then
q=b[14][_[17]]if not at(_,h,a)or _[9]<=A[1]then
if aP then
aH(aP,f[21]*((W()&7)+1))end
_[1]=_[1]-_[11]_[2]=_[2]-_[12]_[3]=0
_[6]=b[15][_[4]][9]_[10]=j
_[11]=0
_[12]=0
_[17]=bu
_[19]=0
end
end
if _[6]==1then
b[1][a]=h
else
ac=sub(_,b[10][1])J=b[10][2+ac[1]//T+ac[2]//T*bi]if J~=bu then
J[0][#J[0]+1]=a
end
end
end
end
for a=1,8 do
if aq(a)and b[12][1][a+4]>0then
U=a
end
end
q=b[14][U]e[3]=e[3]-ah(3)*(D(aF,5,6)*1.5-6)aF=abs(ah(3))*aF+1
S=e
for a=1,2 do
S=ag(S,R(e[3]-L+90*a,ah(a)*8.33))end
S[9]=e[9]for a=1,8 do
t=at(S,j,I,a)end
if t then
for a=1,2 do
e[30+a]=S[a]-e[a]e[a]=S[a]end
if e[9]<=A[1]then
e[9]=r(A[1],e[9]+4)e[19]=M(0,e[19])else
if e[9]>=A[2]-56then
e[9]=A[2]-56
e[19]=r(0,e[19])end
e[19]=e[19]-1
end
end
aQ=b[12][1]d=q[1]if aq(31)and aw<=0 and(d==0 or aQ[d]>=q[2])then
af(3,j)aw=q[3]if d>0then
aQ[d]=aQ[d]-q[2]end
bg,aa=2048
for a,_ in w(b[1])do
if a~=I and _ and bE(e,_,10)then
k=v(_,e)if k<bg then
if b[15][_[4]][23]&2>0then
aa=_
bg=k
end
end
end
end
be(e,I)end
aw=aw-1
if ah(4)<0 then
_=ag(e,R(e[3],64))_[9]=e[9]ay,ai=aj(e,_,2,I)_=b[2][ai]if ay==h then
m[2]=ai
d,t=_[4]for a=14,16 do
t=t or b[12][1][a]>0 and d==a
end
if d==1 or t then
aK(_,_[5])elseif d>3000 and d<3005then
aE=ax(d-3000)end
end
end
end
m[1]=U
for a=3,8 do
m[a]=e[b[19][4][a]]end
m[5]=I
m[13]=e[3]a=Y
bv=j
F=1
ar=#b[1]+#b[8]while F<3 and bv do
d=F*9+5
if a<=#b[1]then
_=b[1][a]if a~=I then
if _ then
if _[10]then
_[10]=h
m[d]=a
for x=1,8 do
m[d+x]=_[b[19][1][x]]end
F=F+1
end
else
m[d]=-a
bt(b[1],a)F=F+1
ar=ar-1
end
end
else
_=b[8][a-#b[1]]if _[8]then
_[8]=h
m[d]=a-#b[1]+2^15
m[d+1]=_[1]m[d+2]=_[2]F=F+1
end
end
a=((a-2)%ar)+1
Y=r(Y,ar)bv=a~=Y
end
Y=a
for a=1,32 do
bj.setNumber(a,m[a])end
end
ak=ak+1
async.httpGet(8,bK)end
function onDraw()av=screen.drawText
av(26,137,bf)if ap then
for a=1,4 do
c=124+a*7
av(240,c,ax(b[12][1][a]))av(230,c,b[12][1][13+a])end
av(26,143,r(aE,3))end
end
