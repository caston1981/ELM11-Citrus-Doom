bJ=""

Q=128
L=180
bs=output
bg=input
bl=string.sub
z=math
K=z.max
r=z.min
ap=z.floor
pi=z.pi
aj=bg.getNumber
ak=bg.getBool
aa=bs.setBool
j=true
h=false
v=ipairs
abs=z.abs
bc=table.remove
function U(c,g)return{(c[1]+g[1]),(c[2]+g[2])}end
function sub(c,g)return{(c[1]-g[1]),(c[2]-g[2])}end
function bx(c)return z.sin(c/L*pi)end
function Z(c)return z.cos(c/L*pi)end
function E(c,g)return z.atan(g[2]-c[2],g[1]-c[1])*L/pi end
function I(c,g,Z)return K(r(Z,c),g)end
function w(c,g)return z.sqrt(((c[1]-g[1])^2)+((c[2]-g[2])^2))end
function N(c,g)return{Z(c)*g,bx(c)*g}end
function exp(c)return c[1],c[2]end
a={}az=1
as=3
al=h
aF=j
ae=2
F=0
ar=0
ah=0
R=0
ay=0
k=1
aB=0
aL=2
function aP(b,c,_)if b<32768then
_=a[7][b]return aP(_[_[3]*(c[2]-_[2])-_[4]*(c[1]-_[1])>0 and 8 or 7],c)else
b=a[5][a[6][b-32768][2]]return a[8][a[3][a[2][b[4]][b[5]+6]][6]]end
end
function ax(q,bh,y,bG,_,b,x)f=a[15][a[1][y][4]]au,ai=f[18],f[19]D=au
C=aP(#a[7],q)P,ab=exp(C)ag=sub(q,a[10][1])M=a[10][2+ag[1]//Q+ag[2]//Q*bv]for b,_ in v(M[0])do
d=a[1][_]if _~=y and d and a[1][y][14]~=_ then
l=w(d,q)A=a[15][d[4]]if d[20]then
O=l-A[18]if O<D and A[23]&1>0 and(f[23]&1>0 or(q[9]+ai<d[9]or q[9]>d[9]+A[19])==h)then
aT=d
if bh==h then
return h
end
D=O
aJ=E(q,d)end
end
if y==F and not d[10]then
if l<50then
c=A[25]if c>0then
for n,t in v(a[12][c])do
if t>0 and a[12][1][n]<a[12][2][n]then
d=a[12]a[1][_]=h
d[1][n]=ap(r(d[1][n]+t,d[2][n]))if I(n,5,11)==n then
ae=n-4
end
end
end
end
c=A[29]if c>0 then
c=a[11][c]for n=7,8 do
e[n]=I(e[n]+c[n*2-13],e[n],c[n*2-12])end
a[1][_]=h
end
end
end
end
end
aT=h
if ab-P<ai or P>q[9]+24then
return h
end
for b=1,#M do
_=a[2][M[b]]l,aY=bb(q,a[4][_[1]],a[4][_[2]])if l<D then
if bG==1 and _[4]==2 then
aU(_,_[5])end
if(_[3]&1>0 and f[23]&1>0)or _[3]&4==0 then
D=l
aJ=aY
else
bD,bz=r(_[9],ab),K(_[8],P)if r(q[9],ab-ai)+24<bz or K(q[9],P)+ai>bD then
D=l
aJ=aY
else
ab,P=bD,bz
end
end
end
end
C={P,ab}if bh then
if D~=au then
_=U(q,N(aJ,D-au))q[1]=_[1]q[2]=_[2]end
return j
end
return D==au
end
function bb(m,u,at)J=w(u,m)b_=E(u,at)+90
by=b_-E(m,u)bq=-J*bx(by)br=J*Z(by)aN=b_
if br<0 then
aN=aN+L
end
if bq<0 then
return J,E(m,u)elseif bq>w(at,u)then
return w(at,m),E(m,at)else
return abs(br),aN
end
end
function aq(m,u,aR,y,_)aA=w(m,u)aW=aA
aS=j
O,aC=exp(m)bH,bI=exp(u)aG,aM=exp(sub(u,m))aw,ba=m[9]+32,u[9]+32
s=h
for b,_ in v(a[2])do
aX=a[4][_[1]]bC,bo=exp(sub(a[4][_[2]],aX))bE,bt=exp(sub(m,aX))bp=bo*aG-bC*aM
T=(bC*bt-bo*bE)/bp
bF=(aG*bt-aM*bE)/bp
if I(T,0,1)==T and I(bF,0,1)==bF then
bk={O+(T*aG),aC+(T*aM)}l=w(m,bk)B=aw+(ba-aw)*(l/aA)if I(B,_[8],_[9])~=B then
aS=h
if aR==1 then
return h
end
if l<aW then
aW=l
aZ,bn=exp(bk)bB=B
af=b
end
end
end
end
if aR>1 then
if aR==3 then
for b,_ in v(a[1])do
if _ and b~=y then
f=a[15][_[4]]if f[23]&1>0 and _[20]then
l=w(m,_)if l<aW then
T=bb(_,m,u)J=(l/aA)B=aw+(ba-aw)*J
if I(B,_[9],_[9]+f[19])==B and T<f[18]then
s=j
aS=h
aZ=O+(bH-O)*J
bn=aC+(bI-aC)*J
bB=B
af=b
end
end
end
end
end
end
return aS,af,{aZ,bn,bB}end
return j
end
function httpReply(c,g,Z)bf=ah//2
ah=0
end
function ac()ay=ay%256+1
return a[13][1][ay]end
function aE(_,b)f=a[15][_[4]]if f[23]&2>0 and _[7]>0 then
_[8]=_[8]-(b+1)//2
_[7]=_[7]-b//2+r(_[8],0)_[8]=K(_[8],0)if ac()<f[10]then
_[6]=f[9]_[15]=0
_[23]=e
_[10]=j
end
end
end
function be(c,g,ao)return g[20]and abs(((E(c,g)-c[3]+L)%360)-L)<ao and aq(c,g,1)end
function bj(H,y)bi=V and(V[9]-H[9])*p[6]/w(V,H)or 0
for b=1,p[12]do
c={}for b=1,30 do
c[b]=H[b]end
c[4]=p[8]c[10]=j
c[14]=y
bd=(ac()/Q-1)*p[10]aV=N(H[3]+bd,p[6])if p[7]>0then
a[1][#a[1]+1]=c
f=a[15][c[4]]c[6]=f[3]c[9]=H[9]+32
c[11]=aV[1]c[12]=aV[2]c[17]=ae
c[19]=bi
else
d=U(H,aV)d[9]=e[9]+bi
aK,av,d=aq(H,d,3,y)if not aK then
bA=sub(d,N(H[3]+bd,1))a[1][#a[1]+1]=c
c[1]=bA[1]c[2]=bA[2]c[6]=a[15][c[4]][3]c[9]=d[3]c[19]=1
if s then
c=a[1][av]aE(c,p[9]*((ac()&3)+2))end
end
end
end
end
function aU(_,d)if d>-1 then
c=a[9][d]if c[1]>0 or e[31]*_[10][2]-e[32]*_[10][1]<0 then
g=a[8][c[1]]Y[g and g[30]or#Y+1]={d,1}_[4]=c[7]c=c[8]>0 and aU(_,c[8])end
else
aF=j
as=-d
o[9]=-d
end
end
function onTick()aa(9,ak(32))aa(2,h)aa(3,h)for x=1,3 do
if ak(32)and(not al)or not a[21]then
aO=property.getText(az..bJ)if aO~=bJ then
b=1
i=bJ
_=bl(aO,b,b)while i.._~=bJdo
if _==","or _==bJthen
i=i+0
if k==1then
af=i
if a[i]==bm then
a[i]={}end
k=2
elseif k==2then
B=i
W=0
k=3
elseif k==3then
aH=i
k=4
else
if W==0then
W=B
aH=aH-1
aQ={}a[af][#a[af]+1]=aQ
end
aQ[#aQ+1]=i
W=W-1
if K(W,aH)==0then
k=1
end
end
i=bJ
else
i=i.._
end
b=b+1
_=bl(aO,b,b)end
az=az+1
else
al=j
end
end
end
if al then
if aF then
Y,aF={}X=1
for b=1,10 do
a[b]=a[b+10*as]end
for b=14,16 do
a[12][1][b]=0
end
as=as+1
for b,_ in v(a[1])do
for x=7,20 do
_[x]=0
end
_[7]=a[15][_[4]][4]_[9],_[10]=aP(#a[7],_)[1]if _[4]==1 then
if e then
_[7]=e[7]_[8]=e[8]end
F=b
e=_
elseif _[5]&aL<1then
a[1][b]=h
end
end
bv=a[10][1][3]end
for b,_ in v(a[2])do
_[10]=sub(a[4][_[2]],a[4][_[1]])if _[3]&4>0 then
f,A=a[8][a[3][_[6]][6]],a[8][a[3][_[7]][6]]_[8]=K(f[1],A[1])_[9],f[30],A[30]=r(f[2],A[2])else
_[8],_[9]=0,0
end
end
o={}for b=1,32 do
o[b]=0
end
R=r(R+1/bf,2/35)aa(1,R>=0)if R>=0 then
R=R-1/35
for b=2,#a[10]do
a[10][b][0]={}end
for b,t in v(Y)do
_=a[9][t[1]]d=a[8][_[1]]or e
c=_[2]f=d[c]d[c]=I(_[3],f-_[4],f+_[4])f=d[c]if abs(f-_[3])<.1then
Y[b]=t[2]==_[5]and{_[6],1}or{t[1],t[2]+1}if _[6]==0 then
bc(Y,b)end
else
d[8]=d[8]or f~=t
end
d[30]=b
end
for b,_ in v(a[1])do
if _ then
for x,t in v({1,2,9})do
_[t]=_[t]+_[t+10]end
_[15]=_[15]+1
f=a[15][_[4]]if _[7]<=0 and _[20]then
_[15]=0
_[6]=f[_[7]<=-f[4]and f[15]>1 and 15or 14]_[10],_[20]=j
if f[27]>0 then
d={}for x=1,30 do
d[x]=_[x]end
d[4]=f[27]d[6]=f[28]a[1][#a[1]+1]=d
end
end
aI=a[16][_[6]]if _[15]>=aI[2]and aI[2]~=-1then
_[6]=aI[4]_[15]=0
ad=a[16][_[6]][3]if ad==1 then
for b,k in v(a[1])do
if k then
i=Q-w(_,k)if i>0 then
aE(k,i)end
end
end
elseif ad==2then
if be(_,e,90)then
_[23]=e
_[6]=f[5]end
elseif ad==3then
ao=ap(E(_,_[23])/45+.5)*45
s=h
k=1
while k<5 and not s do
i=U(_,N(ao+a[19][2][k],8))i[9]=_[9]k=k+1
s=ax(i,h,b)and C[1]>=i[9]-24
end
if s then
_[1]=i[1]_[2]=i[2]_[3]=ao
_[10]=j
else
ax(_,h,b)end
if f[23]&4<1 then
_[9]=C[1]end
c=w(_,_[23])if f[13]>0 and aq(_,_[23],1)and r(c,230)<ac()then
_[6]=f[13]end
if c<64 and f[12]>0then
_[6]=f[12]end
elseif ad>9then
_[3]=E(_,_[23])p=a[14][ad]_[10]=j
V=_[23]bj(_,b)end
end
if _[17]and _[17]>0then
p=a[14][_[17]]if not ax(_,h,b)or _[9]<=C[1]then
if aT then
aE(aT,f[21]*((ac()&7)+1))end
_[1]=_[1]-_[11]_[2]=_[2]-_[12]_[3]=0
_[6]=a[15][_[4]][9]_[10]=j
_[11]=0
_[12]=0
_[17]=bm
_[19]=0
end
end
if _[6]==1then
a[1][b]=h
else
ag=sub(_,a[10][1])M=a[10][2+ag[1]//Q+ag[2]//Q*bv]if M~=bm then
M[0][#M[0]+1]=b
end
end
end
end
for b=1,8 do
if ak(b)and a[12][1][b+4]>0then
ae=b
end
end
p=a[14][ae]e[3]=e[3]-aj(3)*(I(aB,5,6)*1.5-6)aB=abs(aj(3))*aB+1
S=e
for b=1,2 do
S=U(S,N(e[3]-L+90*b,aj(b)*8.33))end
S[9]=e[9]for b=1,8 do
s=ax(S,j,F,b)end
if s then
for b=1,2 do
e[30+b]=S[b]-e[b]e[b]=S[b]end
if e[9]<=C[1]then
e[9]=r(C[1],e[9]+4)e[19]=K(0,e[19])else
if e[9]>=C[2]-56then
e[9]=C[2]-56
e[19]=r(0,e[19])end
e[19]=e[19]-1
end
end
aD=a[12][1]d=p[1]if ak(31)and ar<=0 and(d==0 or aD[d]>=p[2])then
aa(3,j)ar=p[3]if d>0then
aD[d]=aD[d]-p[2]end
bu,V=2048
for b,_ in v(a[1])do
if b~=F and _ and be(e,_,10)then
l=w(_,e)if l<bu then
if a[15][_[4]][23]&2>0then
V=_
bu=l
end
end
end
end
bj(e,F)end
ar=ar-1
if aj(4)<0 then
_=U(e,N(e[3],64))_[9]=e[9]aK,av=aq(e,_,2,F)_=a[2][av]if aK==h then
o[2]=av
d,s=_[4]for b=14,16 do
s=s or a[12][1][b]>0 and d==b
end
if d==1 or s then
aU(_,_[5])elseif d>3000 and d<3005then
aL=ap(d-3000)end
end
end
end
o[1]=ae
for b=3,8 do
o[b]=e[a[19][4][b]]end
o[5]=F
o[13]=e[3]b=X
bw=j
G=1
am=#a[1]+#a[8]while G<3 and bw do
d=G*9+5
if b<=#a[1]then
_=a[1][b]if b~=F then
if _ then
if _[10]then
_[10]=h
o[d]=b
for x=1,8 do
o[d+x]=_[a[19][1][x]]end
G=G+1
end
else
o[d]=-b
bc(a[1],b)G=G+1
am=am-1
end
end
else
_=a[8][b-#a[1]]if _[8]then
_[8]=h
o[d]=b-#a[1]+2^15
o[d+1]=_[1]o[d+2]=_[2]G=G+1
end
end
b=((b-2)%am)+1
X=r(X,am)bw=b~=X
end
X=b
for b=1,32 do
bs.setNumber(b,o[b])end
end
ah=ah+1
async.httpGet(8,bJ)end
function onDraw()an=screen.drawText
an(26,137,bf)if al then
for b=1,4 do
c=124+b*7
an(240,c,ap(a[12][1][b]))an(230,c,a[12][1][13+b])end
an(26,143,r(aL,3))end
end
