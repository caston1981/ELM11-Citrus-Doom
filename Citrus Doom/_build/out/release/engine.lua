bT=""

Q=128
L=180
bx=output
bB=input
F=math
P=F.max
w=F.min
av=F.floor
pi=F.pi
ao=bB.getNumber
af=bB.getBool
ai=bx.setBool
n=true
i=false
x=ipairs
abs=F.abs
bp=table.remove
aX=string
function ae(b,g)return{(b[1]+g[1]),(b[2]+g[2])}end
function sub(b,g)return{(b[1]-g[1]),(b[2]-g[2])}end
function bl(b)return F.sin(b/L*pi)end
function aj(b)return F.cos(b/L*pi)end
function I(b,g)return F.atan(g[2]-b[2],g[1]-b[1])*L/pi end
function G(b,g,aj)return P(w(aj,b),g)end
function v(b,g)return F.sqrt(((b[1]-g[1])^2)+((b[2]-g[2])^2))end
function R(b,g)return{aj(b)*g,bl(b)*g}end
function exp(b)return b[1],b[2]end
e={}aU=1
au=3
ap=i
aQ=n
ad=2
as=0
aq=0
Y=0
aJ=0
l=1
aV=0
bk=2
function aG(a,b,_)if a<32768then
_=e[7][a]return aG(_[_[3]*(b[2]-_[2])-_[4]*(b[1]-_[1])>0 and 8 or 7],b)else
a=e[5][e[6][a-32768][2]]return S[e[3][e[2][a[4]][a[5]+6]][6]]end
end
function ar(s,bv,z,bP,_,a,k)aa=h[z]f=A[aa[4]]az,ax=f[18],f[19]H=az
D=aG(#e[7],s)T,ab=exp(D)ak=sub(s,N[1])O=N[2+ak[1]//Q+ak[2]//Q*bn]or{{}}for a,_ in x(O[0])do
c=h[_]if _~=z and c and aa[14]~=_ then
m=v(c,s)C=A[c[4]]if c[20]then
U=m-C[18]if U<H and C[23]&1>0 and(f[23]&1>0 or(s[9]+ax<c[9]or s[9]>c[9]+C[19])==i)then
aN=c
if bv==i then
return i
end
H=U
aF=I(s,c)end
end
if z==1 and not c[10]then
if m<50then
b=C[25]if b>0then
for o,t in x(B[b])do
if t>0 and B[1][o]<B[2][o]then
c=B
h[_]=i
c[1][o]=av(w(c[1][o]+t,c[2][o]))if G(o,5,12)==o then
ad=o-4
end
end
end
end
b=C[29]if b>0 then
b=e[11][b]for o=7,8 do
d[o]=G(d[o]+b[o*2-13],d[o],b[o*2-12])end
h[_]=i
end
end
end
end
end
aN=i
if ab-T<ax or T>s[9]+24then
return i
end
for a=1,#O do
_=e[2][O[a]]m,bE=be(s,W[_[1]],W[_[2]])if m<H then
if bP==1 and(_[3]&512>0 or z==1)and(_[4]==2 or z>1)then
aR(_,_[5])end
if(_[3]&1>0 and f[23]&1>0)or _[3]&4==0 then
H=m
aF=bE
else
bJ,bc=w(_[9],ab),P(_[8],T)if w(s[9],ab-ax)+24<bc or P(s[9],T)+ax>bJ then
H=m
aF=bE
else
ab,T=bJ,bc
end
end
end
end
D={T,ab}if bv then
if H~=az then
_=ae(s,R(aF,H-az))s[1]=_[1]s[2]=_[2]end
return n
end
return H==az
end
function be(q,y,an)M=v(y,q)bf=I(y,an)+90
bi=bf-I(q,y)by=-M*bl(bi)bz=M*aj(bi)aT=bf
if bz<0 then
aT=aT+L
end
if by<0 then
return M,I(q,y)elseif by>v(an,y)then
return v(an,q),I(q,an)else
return abs(bz),aT
end
end
function at(q,y,aL,z,_)aM=v(q,y)aD=aM
b_=n
U,aZ=exp(q)bO,bQ=exp(y)aP,aY=exp(sub(y,q))aw,bH=q[9]+32,y[9]+32
u=i
for a,_ in x(e[2])do
bh=W[_[1]]bL,bN=exp(sub(W[_[2]],bh))bg,bw=exp(sub(q,bh))bM=bN*aP-bL*aY
Z=(bL*bw-bN*bg)/bM
bs=(aP*bw-aY*bg)/bM
if G(Z,0,1)==Z and G(bs,0,1)==bs then
bA={U+(Z*aP),aZ+(Z*aY)}m=v(q,bA)E=aw+(bH-aw)*(m/aM)if G(E,_[8]+1,_[9])~=E then
b_=i
if aL==1 then
return i
end
if m<aD then
aD=m
bI,bj=exp(bA)bd=E
bo=a
end
end
end
end
if aL>1 then
if aL==3 then
for a,_ in x(h)do
if _ and a~=z then
f=A[_[4]]if f[23]&1>0 and _[20]then
m=v(q,_)if m<aD then
Z=be(_,q,y)M=(m/aM)E=aw+(bH-aw)*M
if G(E,_[9],_[9]+f[19])==E and Z<f[18]then
u=n
b_=i
bI=U+(bO-U)*M
bj=aZ+(bQ-aZ)*M
bd=E
bo=a
end
end
end
end
end
end
return b_,bo,{bI,bj,bd}end
return n
end
function httpReply(b,g,aj)bq=aq//2
aq=0
end
function ah()aJ=aJ%256+1
return e[13][1][aJ]end
function aS(_,a)f=A[_[4]]if f[23]&2>0 and _[7]>0 then
_[8]=_[8]-(a+1)//2
_[7]=_[7]-a//2+w(_[8],0)_[8]=P(_[8],0)if ah()<f[10]then
_[6]=f[9]_[15]=0
_[23]=d
_[10]=n
end
end
end
function bC(b,g,ay)return g[20]and abs(((I(b,g)-b[3]+L)%360)-L)<ay and at(b,g,1)end
function aW(J,z)bK=al and(al[9]-J[9])*p[6]/v(al,J)or 0
for a=1,p[12]do
b={}for a=1,30 do
b[a]=J[a]end
b[4]=p[8]b[10]=n
b[14]=z
bF=(ah()/Q-1)*p[10]aI=R(J[3]+bF,p[6])if p[7]>0then
h[#h+1]=b
f=A[b[4]]b[6]=f[3]b[9]=J[9]+32
b[11]=aI[1]b[12]=aI[2]b[17]=ad
b[19]=bK
else
c=ae(J,aI)c[9]=d[9]+bK
aH,aB,c=at(J,c,3,z)if not aH then
br=sub(c,R(J[3]+bF,1))h[#h+1]=b
b[1]=br[1]b[2]=br[2]b[6]=A[b[4]][3]b[9]=c[3]b[19]=1
if u then
b=h[aB]aS(b,p[9]*((ah()&3)+2))end
end
end
end
end
function aR(_,c)if c>-1 then
b=e[9][c]if b[1]>0 or aa[31]*_[10][2]-aa[32]*_[10][1]<0 then
g=S[b[1]]am[g and g[30]or#am+1]={c,1,g or aa}_[4]=b[7]b=b[8]>0 and aR(_,b[8])end
else
aQ=n
au=-c
r[9]=-c
end
end
function bm()bD,al=2048
for a,_ in x(h)do
if a>1 and _ and bC(d,_,10)then
m=v(_,d)if m<bD then
if A[_[4]][23]&2>0then
al=_
bD=m
end
end
end
end
end
function onTick()ai(9,af(32))ai(2,af(11))ai(3,i)for k=1,3 do
if af(32)and(not ap)or not e[21]then
aC=property.getText(aU)a=1
j=bT
_=aX.sub(aC,a,a)while _~=bTdo
c=aX.byte(_)if c>64then
j=(j..c-65)+0
if l==1then
bu=j
e[j]=e[j]or{}elseif l==2then
E=j
ag=0
elseif l==3then
aE=j
else
if ag==0then
ag=E
aE=aE-1
aO={}e[bu][#e[bu]+1]=aO
end
aO[#aO+1]=j
ag=ag-1
l=P(ag,aE)>0 and l-1 or 0
end
l=l+1
j=bT
else
j=j.._
end
a=a+1
_=aX.sub(aC,a,a)end
aU=aU+1
ap=aC==bT
end
end
if ap then
if aQ then
am,aQ={}ac=1
for a=1,10 do
e[a]=e[a+10*au]end
h=e[1]W=e[4]S=e[8]N=e[10]B=e[12]A=e[15]for a=14,16 do
B[1][a]=0
end
au=au+1
for a,_ in x(h)do
for k=7,40 do
_[k]=0
end
bS=_[5]+1
_[7]=A[_[4]][4]_[9],_[10]=aG(#e[7],_)[1]if _[4]==1 then
if d then
_[7]=d[7]_[8]=d[8]end
d=_
elseif _[5]&bk<1then
h[a]=i
end
end
bn=N[1][3]end
for a,_ in x(e[2])do
_[10]=sub(W[_[2]],W[_[1]])if _[3]&4>0 then
f,C=S[e[3][_[6]][6]],S[e[3][_[7]][6]]_[8]=P(f[1],C[1])_[9],f[30],C[30]=w(f[2],C[2])else
_[8],_[9]=0,0
end
end
r={}for a=1,32 do
r[a]=0
end
Y=w(Y+1/bq,2/35)ai(1,Y>=0)if Y>=0 then
Y=Y-1/35
for a=2,#N do
N[a][0]={}end
for a,t in x(am)do
_=e[9][t[1]]c=t[3]b=_[2]f=c[b]c[b]=G(_[3],f-_[4],f+_[4])+0
f=c[b]if abs(f-_[3])<.1then
am[a]=t[2]==_[5]and{_[6],1,c}or{t[1],t[2]+1,c}if _[6]==0 then
bp(am,a)end
end
c[10]=c[10]or f~=t
c[30]=a
end
for a,_ in x(h)do
if _ then
for k,t in x({1,2,9})do
_[t]=_[t]+_[t+10]end
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
aK=e[16][_[6]]if _[15]>=aK[2]and aK[2]~=-1then
_[6]=aK[4]_[15]=0
V=e[16][_[6]][3]if V==1 then
for a,l in x(h)do
if l then
j=Q-v(_,l)if j>0 then
aS(l,j)end
end
end
elseif V==2then
if bC(_,d,90)then
_[23]=d
_[6]=f[5]end
elseif V==3then
ay=av(I(_,_[23])/45+.5)*45
u=i
l=1
bt=f[23]&4>0
while l<5 and not u do
j=ae(_,R(ay+e[19][2][l],8))j[9]=_[9]u=ar(j,i,a,l)and(D[1]>=j[9]-24 or bt)l=l+1
end
if u then
for k=1,2 do
_[30+k]=j[k]-_[k]_[k]=j[k]end
_[3]=ay
_[10]=n
else
ar(_,i,a)end
_[9]=bt and _[9]or D[1]b=v(_,_[23])if f[13]>0 and at(_,_[23],1)and w(b,230)<ah()then
_[6]=f[13]end
if b<64 and f[12]>0then
_[6]=f[12]end
elseif V==5then
for a=1,11 do
d[3]=d[3]+e[19][9][a]p=e[14][23]bm()aW(d,1)end
d[3]=d[3]-20
elseif V>9then
_[3]=I(_,_[23])p=e[14][V]_[10]=n
al=_[23]aW(_,a)end
end
if _[17]and _[17]>0then
p=e[14][_[17]]if not ar(_,i,a)or _[9]<=D[1]then
if aN then
aS(aN,f[21]*((ah()&7)+1))end
_[1]=_[1]-_[11]_[2]=_[2]-_[12]_[3]=0
_[6]=A[_[4]][9]_[10]=n
_[11]=0
_[12]=0
_[17]=bR
_[19]=0
end
end
if _[6]==1then
h[a]=i
else
ak=sub(_,N[1])O=N[2+ak[1]//Q+ak[2]//Q*bn]if O~=bR then
O[0][#O[0]+1]=a
end
end
end
end
for a=1,8 do
if af(a)and B[1][a+4]>0then
ad=a
end
end
p=e[14][ad]d[3]=d[3]-ao(3)*(G(aV,5,6)*1.5-6)aV=abs(ao(3))*aV+1
X=d
for a=1,2 do
X=ae(X,R(d[3]-L+90*a,ao(a)*8.33))end
X[9]=d[9]for a=1,8 do
u=ar(X,n,1,a)end
if u then
for a=1,2 do
d[30+a]=X[a]-d[a]d[a]=X[a]end
if d[9]<=D[1]then
d[9]=w(D[1],d[9]+4)d[19]=P(0,d[19])else
if d[9]>=D[2]-56then
d[9]=D[2]-56
d[19]=w(0,d[19])end
d[19]=d[19]-1
end
else
d[19]=0
end
ba=B[1]c=p[1]if af(31)and as<=0 and(c==0 or ba[c]>=p[2])then
ai(3,n)as=p[3]if c>0then
ba[c]=ba[c]-p[2]end
bm()aW(d,1)end
as=as-1
if ao(4)<0 then
_=ae(d,R(d[3],64))_[9]=d[9]aH,aB=at(d,_,2,1)_=e[2][aB]if aH==i then
r[2]=aB
c,u=_[4]for a=14,16 do
u=u or B[1][a]>0 and c==a
end
if c==1 or u then
aR(_,_[5])elseif c>3000 and c<3005then
bk=av(c-3000)end
end
end
end
r[1]=ad
for a=3,8 do
r[a]=d[e[19][4][a]]end
r[5]=1
r[13]=d[3]a=ac
bG=n
K=1
aA=#h+#S
while K<3 and bG do
c=K*9+5
if a<=#h then
_=h[a]if a~=1 then
if _ then
if _[10]then
_[10]=i
r[c]=a
for k=1,8 do
r[c+k]=_[e[19][1][k]]end
K=K+1
end
else
r[c]=-a
bp(h,a)K=K+1
aA=aA-1
end
end
else
_=S[a-#h]if _[10]then
_[10]=i
r[c]=a-#h+2^15
for k=1,6 do
r[c+k]=_[k]end
K=K+1
end
end
a=((a-2)%aA)+1
ac=w(ac,aA)bG=a~=ac
end
ac=a
for a=1,32 do
bx.setNumber(a,r[a])end
end
aq=aq+1
async.httpGet(8,bT)end
function onDraw()bb=screen.drawText
bb(26,137,bq)if ap then
for a=1,4 do
b=124+a*7
bb(240,b,av(B[1][a]))bb(230,b,B[1][13+a])end
end
end
