bL=""

O=128
L=180
aZ=output
bu=input
B=math
M=B.max
w=B.min
ao=B.floor
pi=B.pi
ai=bu.getNumber
at=bu.getBool
U=aZ.setBool
m=true
h=false
x=ipairs
abs=B.abs
bq=table.remove
aR=string
function af(c,g)return{(c[1]+g[1]),(c[2]+g[2])}end
function sub(c,g)return{(c[1]-g[1]),(c[2]-g[2])}end
function bx(c)return B.sin(c/L*pi)end
function ae(c)return B.cos(c/L*pi)end
function I(c,g)return B.atan(g[2]-c[2],g[1]-c[1])*L/pi end
function G(c,g,ae)return M(w(ae,c),g)end
function v(c,g)return B.sqrt(((c[1]-g[1])^2)+((c[2]-g[2])^2))end
function R(c,g)return{ae(c)*g,bx(c)*g}end
function exp(c)return c[1],c[2]end
b={}aB=1
as=3
ap=h
aF=m
ac=2
y=0
al=0
ax=0
T=0
aV=0
j=1
aN=0
bn=2
function aC(a,c,_)if a<32768then
_=b[7][a]return aC(_[_[3]*(c[2]-_[2])-_[4]*(c[1]-_[1])>0 and 8 or 7],c)else
a=b[5][b[6][a-32768][2]]return b[8][b[3][b[2][a[4]][a[5]+6]][6]]end
end
function ar(q,bm,z,bH,_,a,k)aa=b[1][z]f=b[15][aa[4]]aj,an=f[18],f[19]E=aj
A=aC(#b[7],q)N,X=exp(A)ah=sub(q,b[10][1])K=b[10][2+ah[1]//O+ah[2]//O*bh]for a,_ in x(K[0])do
d=b[1][_]if _~=z and d and aa[14]~=_ then
l=v(d,q)C=b[15][d[4]]if d[20]then
P=l-C[18]if P<E and C[23]&1>0 and(f[23]&1>0 or(q[9]+an<d[9]or q[9]>d[9]+C[19])==h)then
aM=d
if bm==h then
return h
end
E=P
aE=I(q,d)end
end
if z==y and not d[10]then
if l<50then
c=C[25]if c>0then
for p,r in x(b[12][c])do
if r>0 and b[12][1][p]<b[12][2][p]then
d=b[12]b[1][_]=h
d[1][p]=ao(w(d[1][p]+r,d[2][p]))if G(p,5,12)==p then
ac=p-4
end
end
end
end
c=C[29]if c>0 then
c=b[11][c]for p=7,8 do
e[p]=G(e[p]+c[p*2-13],e[p],c[p*2-12])end
b[1][_]=h
end
end
end
end
end
aM=h
if X-N<an or N>q[9]+24then
return h
end
for a=1,#K do
_=b[2][K[a]]l,bj=bb(q,b[4][_[1]],b[4][_[2]])if l<E then
if bH==1 and(_[3]&512>0 or z==y)and(_[4]==2 or z~=y)then
aT(_,_[5])end
if(_[3]&1>0 and f[23]&1>0)or _[3]&4==0 then
E=l
aE=bj
else
bF,ba=w(_[9],X),M(_[8],N)if w(q[9],X-an)+24<ba or M(q[9],N)+an>bF then
E=l
aE=bj
else
X,N=bF,ba
end
end
end
end
A={N,X}if bm then
if E~=aj then
_=af(q,R(aE,E-aj))q[1]=_[1]q[2]=_[2]end
return m
end
return E==aj
end
function bb(o,u,au)J=v(u,o)bp=I(u,au)+90
by=bp-I(o,u)bD=-J*bx(by)bz=J*ae(by)aO=bp
if bz<0 then
aO=aO+L
end
if bD<0 then
return J,I(o,u)elseif bD>v(au,u)then
return v(au,o),I(o,au)else
return abs(bz),aO
end
end
function aq(o,u,ay,z,_)aP=v(o,u)aI=aP
aL=m
P,aU=exp(o)bI,bJ=exp(u)aJ,aX=exp(sub(u,o))am,aY=o[9]+32,u[9]+32
t=h
for a,_ in x(b[2])do
bs=b[4][_[1]]bk,bo=exp(sub(b[4][_[2]],bs))bg,bA=exp(sub(o,bs))bw=bo*aJ-bk*aX
S=(bk*bA-bo*bg)/bw
bv=(aJ*bA-aX*bg)/bw
if G(S,0,1)==S and G(bv,0,1)==bv then
br={P+(S*aJ),aU+(S*aX)}l=v(o,br)D=am+(aY-am)*(l/aP)if G(D,_[8],_[9])~=D then
aL=h
if ay==1 then
return h
end
if l<aI then
aI=l
bi,bE=exp(br)bt=D
V=a
end
end
end
end
if ay>1 then
if ay==3 then
for a,_ in x(b[1])do
if _ and a~=z then
f=b[15][_[4]]if f[23]&1>0 and _[20]then
l=v(o,_)if l<aI then
S=bb(_,o,u)J=(l/aP)D=am+(aY-am)*J
if G(D,_[9],_[9]+f[19])==D and S<f[18]then
t=m
aL=h
bi=P+(bI-P)*J
bE=aU+(bJ-aU)*J
bt=D
V=a
end
end
end
end
end
end
return aL,V,{bi,bE,bt}end
return m
end
function httpReply(c,g,ae)bd=ax//2
ax=0
end
function Y()aV=aV%256+1
return b[13][1][aV]end
function aS(_,a)f=b[15][_[4]]if f[23]&2>0 and _[7]>0 then
_[8]=_[8]-(a+1)//2
_[7]=_[7]-a//2+w(_[8],0)_[8]=M(_[8],0)if Y()<f[10]then
_[6]=f[9]_[15]=0
_[23]=e
_[10]=m
end
end
end
function bc(c,g,av)return g[20]and abs(((I(c,g)-c[3]+L)%360)-L)<av and aq(c,g,1)end
function bl(H,z)bC=ab and(ab[9]-H[9])*s[6]/v(ab,H)or 0
for a=1,s[12]do
c={}for a=1,30 do
c[a]=H[a]end
c[4]=s[8]c[10]=m
c[14]=z
bB=(Y()/O-1)*s[10]aH=R(H[3]+bB,s[6])if s[7]>0then
b[1][#b[1]+1]=c
f=b[15][c[4]]c[6]=f[3]c[9]=H[9]+32
c[11]=aH[1]c[12]=aH[2]c[17]=ac
c[19]=bC
else
d=af(H,aH)d[9]=e[9]+bC
aG,ak,d=aq(H,d,3,z)if not aG then
bf=sub(d,R(H[3]+bB,1))b[1][#b[1]+1]=c
c[1]=bf[1]c[2]=bf[2]c[6]=b[15][c[4]][3]c[9]=d[3]c[19]=1
if t then
c=b[1][ak]aS(c,s[9]*((Y()&3)+2))end
end
end
end
end
function aT(_,d)if d>-1 then
c=b[9][d]if c[1]>0 or aa[31]*_[10][2]-aa[32]*_[10][1]<0 then
g=b[8][c[1]]ag[g and g[30]or#ag+1]={d,1,g or aa}_[4]=c[7]c=c[8]>0 and aT(_,c[8])end
else
aF=m
as=-d
n[9]=-d
end
end
function onTick()U(9,at(32))U(2,h)U(3,h)for k=1,3 do
if at(32)and(not ap)or not b[21]then
aD=property.getText(aB..bL)if aD~=bL then
a=1
i=bL
_=aR.sub(aD,a,a)while _~=bLdo
d=aR.byte(_)if d>64 or _==bLthen
i=(i..(d-65))+0
if j==1then
V=i
if b[i]==bG then
b[i]={}end
j=2
elseif j==2then
D=i
W=0
j=3
elseif j==3then
aA=i
j=4
else
if W==0then
W=D
aA=aA-1
aK={}b[V][#b[V]+1]=aK
end
aK[#aK+1]=i
W=W-1
if M(W,aA)==0then
j=1
end
end
i=bL
else
i=i.._
end
a=a+1
_=aR.sub(aD,a,a)end
aB=aB+1
else
ap=m
end
end
end
if ap then
if aF then
ag,aF={}ad=1
for a=1,10 do
b[a]=b[a+10*as]end
for a=14,16 do
b[12][1][a]=0
end
as=as+1
for a,_ in x(b[1])do
for k=7,40 do
_[k]=0
end
bK=_[5]+1
_[7]=b[15][_[4]][4]_[9],_[10]=aC(#b[7],_)[1]if _[4]==1 then
if e then
_[7]=e[7]_[8]=e[8]end
y=a
e=_
elseif _[5]&bn<1then
b[1][a]=h
end
end
bh=b[10][1][3]end
for a,_ in x(b[2])do
_[10]=sub(b[4][_[2]],b[4][_[1]])if _[3]&4>0 then
f,C=b[8][b[3][_[6]][6]],b[8][b[3][_[7]][6]]_[8]=M(f[1],C[1])_[9],f[30],C[30]=w(f[2],C[2])else
_[8],_[9]=0,0
end
end
n={}for a=1,32 do
n[a]=0
end
T=w(T+1/bd,2/35)U(1,T>=0)if T>=0 then
T=T-1/35
for a=2,#b[10]do
b[10][a][0]={}end
for a,r in x(ag)do
_=b[9][r[1]]d=r[3]c=_[2]f=d[c]d[c]=G(_[3],f-_[4],f+_[4])+0
f=d[c]if abs(f-_[3])<.1then
ag[a]=r[2]==_[5]and{_[6],1,d}or{r[1],r[2]+1,d}if _[6]==0 then
bq(ag,a)end
else
d[8]=d[8]or f~=r
end
d[30]=a
end
for a,_ in x(b[1])do
if _ then
for k,r in x({1,2,9})do
_[r]=_[r]+_[r+10]end
_[15]=_[15]+1
f=b[15][_[4]]if _[7]<=0 and _[20]then
_[15]=0
_[6]=f[_[7]<=-f[4]and f[15]>1 and 15or 14]_[10],_[20]=m
if f[27]>0 then
d={}for k=1,30 do
d[k]=_[k]end
d[4]=f[27]d[6]=f[28]b[1][#b[1]+1]=d
end
end
az=b[16][_[6]]if _[15]>=az[2]and az[2]~=-1then
_[6]=az[4]_[15]=0
Z=b[16][_[6]][3]if Z==1 then
for a,j in x(b[1])do
if j then
i=O-v(_,j)if i>0 then
aS(j,i)end
end
end
elseif Z==2then
if bc(_,e,90)then
_[23]=e
_[6]=f[5]end
elseif Z==3then
av=ao(I(_,_[23])/45+.5)*45
t=h
j=1
while j<5 and not t do
i=af(_,R(av+b[19][2][j],8))i[9]=_[9]t=ar(i,h,a,j)and A[1]>=i[9]-24
j=j+1
end
if t then
for k=1,2 do
_[30+k]=i[k]-_[k]_[k]=i[k]end
_[3]=av
_[10]=m
else
ar(_,h,a)end
if f[23]&4<1 then
_[9]=A[1]end
c=v(_,_[23])if f[13]>0 and aq(_,_[23],1)and w(c,230)<Y()then
_[6]=f[13]end
if c<64 and f[12]>0then
_[6]=f[12]end
elseif Z>9then
_[3]=I(_,_[23])s=b[14][Z]_[10]=m
ab=_[23]bl(_,a)end
end
if _[17]and _[17]>0then
s=b[14][_[17]]if not ar(_,h,a)or _[9]<=A[1]then
if aM then
aS(aM,f[21]*((Y()&7)+1))end
_[1]=_[1]-_[11]_[2]=_[2]-_[12]_[3]=0
_[6]=b[15][_[4]][9]_[10]=m
_[11]=0
_[12]=0
_[17]=bG
_[19]=0
end
end
if _[6]==1then
b[1][a]=h
else
ah=sub(_,b[10][1])K=b[10][2+ah[1]//O+ah[2]//O*bh]if K~=bG then
K[0][#K[0]+1]=a
end
end
end
end
for a=1,8 do
if at(a)and b[12][1][a+4]>0then
ac=a
end
end
s=b[14][ac]e[3]=e[3]-ai(3)*(G(aN,5,6)*1.5-6)aN=abs(ai(3))*aN+1
Q=e
for a=1,2 do
Q=af(Q,R(e[3]-L+90*a,ai(a)*8.33))end
Q[9]=e[9]for a=1,8 do
t=ar(Q,m,y,a)end
if t then
for a=1,2 do
e[30+a]=Q[a]-e[a]e[a]=Q[a]end
if e[9]<=A[1]then
e[9]=w(A[1],e[9]+4)e[19]=M(0,e[19])else
if e[9]>=A[2]-56then
e[9]=A[2]-56
e[19]=w(0,e[19])end
e[19]=e[19]-1
end
end
aQ=b[12][1]d=s[1]if at(31)and al<=0 and(d==0 or aQ[d]>=s[2])then
U(3,m)al=s[3]if d>0then
aQ[d]=aQ[d]-s[2]end
b_,ab=2048
for a,_ in x(b[1])do
if a~=y and _ and bc(e,_,10)then
l=v(_,e)if l<b_ then
if b[15][_[4]][23]&2>0then
ab=_
b_=l
end
end
end
end
bl(e,y)end
al=al-1
if ai(4)<0 then
_=af(e,R(e[3],64))_[9]=e[9]aG,ak=aq(e,_,2,y)_=b[2][ak]if aG==h then
n[2]=ak
d,t=_[4]for a=14,16 do
t=t or b[12][1][a]>0 and d==a
end
if d==1 or t then
aT(_,_[5])elseif d>3000 and d<3005then
bn=ao(d-3000)end
end
end
end
n[1]=ac
for a=3,8 do
n[a]=e[b[19][4][a]]end
n[5]=y
n[13]=e[3]a=ad
be=m
F=1
aw=#b[1]+#b[8]while F<3 and be do
d=F*9+5
if a<=#b[1]then
_=b[1][a]if a~=y then
if _ then
if _[10]then
_[10]=h
n[d]=a
for k=1,8 do
n[d+k]=_[b[19][1][k]]end
F=F+1
end
else
n[d]=-a
bq(b[1],a)F=F+1
aw=aw-1
end
end
else
_=b[8][a-#b[1]]if _[8]then
_[8]=h
n[d]=a-#b[1]+2^15
n[d+1]=_[1]n[d+2]=_[2]F=F+1
end
end
a=((a-2)%aw)+1
ad=w(ad,aw)be=a~=ad
end
ad=a
for a=1,32 do
aZ.setNumber(a,n[a])end
end
ax=ax+1
async.httpGet(8,bL)end
function onDraw()aW=screen.drawText
aW(26,137,bd)if ap then
for a=1,4 do
c=124+a*7
aW(240,c,ao(b[12][1][a]))aW(230,c,b[12][1][13+a])end
end
end
