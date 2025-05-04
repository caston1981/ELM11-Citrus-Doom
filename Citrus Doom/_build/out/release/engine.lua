bJ=""

Q=128
K=180
bw=output
bx=input
bt=string.sub
y=math
J=y.max
s=y.min
av=y.floor
pi=y.pi
ao=bx.getNumber
an=bx.getBool
S=bw.setBool
j=true
g=false
u=ipairs
abs=y.abs
aZ=table.remove
function ae(c,i)return{(c[1]+i[1]),(c[2]+i[2])}end
function sub(c,i)return{(c[1]-i[1]),(c[2]-i[2])}end
function bE(c)return y.sin(c/K*pi)end
function ac(c)return y.cos(c/K*pi)end
function E(c,i)return y.atan(i[2]-c[2],i[1]-c[1])*K/pi end
function F(c,i,ac)return J(s(ac,c),i)end
function w(c,i)return y.sqrt(((c[1]-i[1])^2)+((c[2]-i[2])^2))end
function T(c,i)return{ac(c)*i,bE(c)*i}end
function exp(c)return c[1],c[2]end
a={}aK=1
aR=3
ak=g
aL=j
W=2
D=0
at=0
au=0
R=0
ay=0
k=1
aT=0
aG=2
function aO(b,c,_)if b<32768then
_=a[7][b]return aO(_[_[3]*(c[2]-_[2])-_[4]*(c[1]-_[1])>0 and 8 or 7],c)else
b=a[5][a[6][b-32768][2]]return a[8][a[3][a[2][b[4]][b[5]+6]][6]]end
end
function al(o,bf,B,bG,_,b,x)e=a[15][a[1][B][4]]aj,ai=e[18],e[19]H=aj
A=aO(#a[7],o)N,ab=exp(A)ag=sub(o,a[10][1])L=a[10][2+ag[1]//Q+ag[2]//Q*br]for b,_ in u(L[0])do
d=a[1][_]if _~=B and d and a[1][B][14]~=_ then
l=w(d,o)z=a[15][d[4]]if d[20]then
P=l-z[18]if P<H and z[23]&1>0 and(e[23]&1>0 or(o[9]+ai<d[9]or o[9]>d[9]+z[19])==g)then
aV=d
if bf==g then
return g
end
H=P
ax=E(o,d)end
end
if B==D and not d[10]then
if l<50then
c=z[25]if c>0then
for n,t in u(a[12][c])do
if t>0 and a[12][1][n]<a[12][2][n]then
d=a[12]a[1][_]=g
d[1][n]=av(s(d[1][n]+t,d[2][n]))if F(n,5,11)==n then
W=n-4
end
end
end
end
c=z[29]if c>0 then
c=a[11][c]for n=7,8 do
f[n]=F(f[n]+c[n*2-13],f[n],c[n*2-12])end
a[1][_]=g
end
end
end
end
end
aV=g
if ab-N<ai or N>o[9]+24then
return g
end
for b=1,#L do
_=a[2][L[b]]l,bc=bF(o,a[4][_[1]],a[4][_[2]])if l<H then
if bG==1 and _[4]==2 then
az(_,_[5])end
if(_[3]&1>0 and e[23]&1>0)or _[3]&4==0 then
H=l
ax=bc
else
ba,bs=s(_[9],ab),J(_[8],N)if s(o[9],ab-ai)+24<bs or J(o[9],N)+ai>ba then
H=l
ax=bc
else
ab,N=ba,bs
end
end
end
end
A={N,ab}if bf then
if H~=aj then
_=ae(o,T(ax,H-aj))o[1]=_[1]o[2]=_[2]end
return j
end
return H==aj
end
function bF(m,v,ar)M=w(v,m)bz=E(v,ar)+90
bk=bz-E(m,v)bb=-M*bE(bk)bl=M*ac(bk)aE=bz
if bl<0 then
aE=aE+K
end
if bb<0 then
return M,E(m,v)elseif bb>w(ar,v)then
return w(ar,m),E(m,ar)else
return abs(bl),aE
end
end
function aq(m,v,aQ,B,_)aH=w(m,v)aC=aH
aN=j
P,aW=exp(m)bH,bI=exp(v)aB,aI=exp(sub(v,m))ap,aY=m[9]+32,v[9]+32
r=g
for b,_ in u(a[2])do
bB=a[4][_[1]]by,bm=exp(sub(a[4][_[2]],bB))b_,bi=exp(sub(m,bB))bo=bm*aB-by*aI
O=(by*bi-bm*b_)/bo
bg=(aB*bi-aI*b_)/bo
if F(O,0,1)==O and F(bg,0,1)==bg then
be={P+(O*aB),aW+(O*aI)}l=w(m,be)C=ap+(aY-ap)*(l/aH)if F(C,_[8],_[9])~=C then
aN=g
if aQ==1 then
return g
end
if l<aC then
aC=l
bj,bA=exp(be)bv=C
ad=b
end
end
end
end
if aQ>1 then
if aQ==3 then
for b,_ in u(a[1])do
if _ and b~=B then
e=a[15][_[4]]if e[23]&1>0 and _[20]then
l=w(m,_)if l<aC then
O=bF(_,m,v)M=(l/aH)C=ap+(aY-ap)*M
if F(C,_[9],_[9]+e[19])==C and O<e[18]then
r=j
aN=g
bj=P+(bH-P)*M
bA=aW+(bI-aW)*M
bv=C
ad=b
end
end
end
end
end
end
return aN,ad,{bj,bA,bv}end
return j
end
function httpReply(c,i,ac)bp=au//2
au=0
end
function af()ay=ay%256+1
return a[13][1][ay]end
function aD(_,b)e=a[15][_[4]]if e[23]&2>0 and _[7]>0 then
_[8]=_[8]-(b+1)//2
_[7]=_[7]-b//2+s(_[8],0)_[8]=J(_[8],0)if af()<e[10]then
_[6]=e[9]_[15]=0
_[23]=f
_[10]=j
end
end
end
function bh(c,i,as)return i[20]and abs(((E(c,i)-c[3]+K)%360)-K)<as and aq(c,i,1)end
function bu(G,B)bd=Y and(Y[9]-G[9])*q[6]/w(Y,G)or 0
for b=1,q[12]do
c={}for b=1,30 do
c[b]=G[b]end
c[4]=q[8]c[10]=j
c[14]=B
bq=(af()/Q-1)*q[10]aS=T(G[3]+bq,q[6])if q[7]>0then
a[1][#a[1]+1]=c
e=a[15][c[4]]c[6]=e[3]c[9]=G[9]+32
c[11]=aS[1]c[12]=aS[2]c[17]=W
c[19]=bd
else
d=ae(G,aS)d[9]=f[9]+bd
aP,am,d=aq(G,d,3,B)if not aP then
bn=sub(d,T(G[3]+bq,1))a[1][#a[1]+1]=c
c[1]=bn[1]c[2]=bn[2]c[6]=a[15][c[4]][3]c[9]=d[3]c[19]=1
if r then
c=a[1][am]aD(c,q[9]*((af()&3)+2))end
end
end
end
end
function az(_,d)if d>0 then
c=a[9][d]V[a[8][c[1]][9]or#V+1]={d,1}_[4]=c[6]c=c[7]>0 and az(_,c[7])else
aL=j
S(2,j)end
end
function onTick()S(9,an(32))S(2,g)S(3,g)for x=1,3 do
if an(32)and(not ak)or not a[21]then
aA=property.getText(aK..bJ)if aA~=bJ then
b=1
h=bJ
_=bt(aA,b,b)while h.._~=bJdo
if _==","or _==bJthen
h=h+0
if k==1then
ad=h
if a[h]==bD then
a[h]={}end
k=2
elseif k==2then
C=h
aa=0
k=3
elseif k==3then
aM=h
k=4
else
if aa==0then
aa=C
aM=aM-1
aU={}a[ad][#a[ad]+1]=aU
end
aU[#aU+1]=h
aa=aa-1
if J(aa,aM)==0then
k=1
end
end
h=bJ
else
h=h.._
end
b=b+1
_=bt(aA,b,b)end
aK=aK+1
else
ak=j
end
end
end
if ak then
if aL then
V,aL={}X=1
for b=1,10 do
a[b]=a[b+10*aR]end
for b=14,16 do
a[12][1][b]=0
end
aR=aR+1
for b,_ in u(a[1])do
for x=7,20 do
_[x]=0
end
_[7]=a[15][_[4]][4]_[9],_[10]=aO(#a[7],_)[1]if _[4]==1 then
if f then
_[7]=f[7]_[8]=f[8]end
D=b
f=_
elseif _[5]&aG<1then
a[1][b]=g
end
end
br=a[10][1][3]end
for b,_ in u(a[2])do
if _[3]&4>0 then
e,z=a[8][a[3][_[6]][6]],a[8][a[3][_[7]][6]]_[8]=J(e[1],z[1])_[9],e[9],z[9]=s(e[2],z[2])else
_[8],_[9]=0,0
end
end
p={}for b=1,32 do
p[b]=0
end
R=s(R+1/bp,2/35)S(1,R>=0)if R>=0 then
R=R-1/35
for b=2,#a[10]do
a[10][b][0]={}end
for b,t in u(V)do
_=a[9][t[1]]d=a[8][_[1]]e=d[_[2]]if e==_[3]then
V[b]=t[2]==_[4]and{_[5],1}or{t[1],t[2]+1}if _[5]==0 then
aZ(V,b)end
else
d[8]=d[8]or e~=t
d[_[2]]=F(_[3],e-2,e+2)end
d[9]=b
end
for b,_ in u(a[1])do
if _ then
for x,t in u({1,2,9})do
_[t]=_[t]+_[t+10]end
_[15]=_[15]+1
e=a[15][_[4]]if _[7]<=0 and _[20]then
_[15]=0
_[6]=e[_[7]<=-e[4]and e[15]>1 and 15or 14]_[10],_[20]=j
if e[27]>0 then
d={}for x=1,30 do
d[x]=_[x]end
d[4]=e[27]d[6]=e[28]a[1][#a[1]+1]=d
end
end
aJ=a[16][_[6]]if _[15]>=aJ[2]and aJ[2]~=-1then
_[6]=aJ[4]_[15]=0
Z=a[16][_[6]][3]if Z==1 then
for b,k in u(a[1])do
if k then
h=Q-w(_,k)if h>0 then
aD(k,h)end
end
end
elseif Z==2then
if bh(_,f,90)then
_[23]=f
_[6]=e[5]end
elseif Z==3then
as=av(E(_,_[23])/45+.5)*45
r=g
k=1
while k<5 and not r do
h=ae(_,T(as+a[19][2][k],8))h[9]=_[9]k=k+1
r=al(h,g,b)and A[1]>=h[9]-24
end
if r then
_[1]=h[1]_[2]=h[2]_[3]=as
_[10]=j
else
al(_,g,b)end
if e[23]&4<1 then
_[9]=A[1]end
c=w(_,_[23])if e[13]>0 and aq(_,_[23],1)and s(c,230)<af()then
_[6]=e[13]end
if c<64 and e[12]>0then
_[6]=e[12]end
elseif Z>9then
_[3]=E(_,_[23])q=a[14][Z]_[10]=j
Y=_[23]bu(_,b)end
end
if _[17]and _[17]>0then
q=a[14][_[17]]if not al(_,g,b)or _[9]<=A[1]then
if aV then
aD(aV,e[21]*((af()&7)+1))end
_[1]=_[1]-_[11]_[2]=_[2]-_[12]_[3]=0
_[6]=a[15][_[4]][9]_[10]=j
_[11]=0
_[12]=0
_[17]=bD
_[19]=0
end
end
if _[6]==1then
a[1][b]=g
else
ag=sub(_,a[10][1])L=a[10][2+ag[1]//Q+ag[2]//Q*br]if L~=bD then
L[0][#L[0]+1]=b
end
end
end
end
for b=1,8 do
if an(b)and a[12][1][b+4]>0then
W=b
end
end
q=a[14][W]f[3]=f[3]-ao(3)*(F(aT,5,6)*1.5-6)aT=abs(ao(3))*aT+1
U=f
for b=1,2 do
U=ae(U,T(f[3]-K+90*b,ao(b)*8.33))end
U[9]=f[9]for b=1,8 do
r=al(U,j,D,b)end
if r then
for b=1,2 do
f[b]=U[b]end
if f[9]<=A[1]then
f[9]=s(A[1],f[9]+4)f[19]=J(0,f[19])else
if f[9]>=A[2]-56then
f[9]=A[2]-56
f[19]=s(0,f[19])end
f[19]=f[19]-1
end
end
aF=a[12][1]d=q[1]if an(31)and at<=0 and(d==0 or aF[d]>=q[2])then
S(3,j)at=q[3]if d>0then
aF[d]=aF[d]-q[2]end
bC,Y=2048
for b,_ in u(a[1])do
if b~=D and _ and bh(f,_,10)then
l=w(_,f)if l<bC then
if a[15][_[4]][23]&2>0then
Y=_
bC=l
end
end
end
end
bu(f,D)end
at=at-1
if ao(4)<0 then
_=ae(f,T(f[3],64))_[9]=f[9]aP,am=aq(f,_,2,D)_=a[2][am]if aP==g then
p[2]=am
d,r=_[4]for b=14,16 do
r=r or a[12][1][b]>0 and d==b
end
if d==1 or r then
az(_,_[5])elseif d>3000 and d<3005then
aG=av(d-3000)end
end
end
end
p[1]=W
for b=3,8 do
p[b]=f[a[19][4][b]]end
p[5]=D
p[13]=f[3]b=X
aX=j
I=1
ah=#a[1]+#a[8]while I<3 and aX do
d=I*9+5
if b<=#a[1]then
_=a[1][b]if b~=D then
if _ then
if _[10]then
_[10]=g
p[d]=b
for x=1,8 do
p[d+x]=_[a[19][1][x]]end
I=I+1
end
else
p[d]=-b
aZ(a[1],b)I=I+1
ah=ah-1
end
end
else
_=a[8][b-#a[1]]if _[8]then
_[8]=g
p[d]=b-#a[1]+2^15
p[d+1]=_[1]p[d+2]=_[2]I=I+1
end
end
b=((b-2)%ah)+1
X=s(X,ah)aX=b~=X
end
X=b
for b=1,32 do
bw.setNumber(b,p[b])end
end
au=au+1
async.httpGet(8,bJ)end
function onDraw()aw=screen.drawText
aw(26,137,bp)if ak then
for b=1,4 do
c=124+b*7
aw(240,c,av(a[12][1][b]))aw(230,c,a[12][1][13+b])end
aw(26,143,s(aG,3))end
end
