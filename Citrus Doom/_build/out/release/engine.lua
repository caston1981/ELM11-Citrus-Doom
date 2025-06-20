
aa=128
M=180
H=math
O=H.max
C=H.min
aU=H.floor
pi=H.pi
aq=input.getNumber
ag=input.getBool
ac=output.setBool
n=true
v=false
B=ipairs
abs=H.abs
aG=table.remove
aY=string
function ae(b,g)return{(b[1]+g[1]),(b[2]+g[2])}end
function sub(b,g)return{(b[1]-g[1]),(b[2]-g[2])}end
function bC(b)return H.sin(b/M*pi)end
function ak(b)return H.cos(b/M*pi)end
function J(b,g)return H.atan(g[2]-b[2],g[1]-b[1])*M/pi end
function E(b,g,ak)return O(C(ak,b),g)end
function x(b,g)return H.sqrt(((b[1]-g[1])^2)+((b[2]-g[2])^2))end
function Y(b,g)return{ak(b)*g,bC(b)*g}end
function exp(b)return b[1],b[2]end
f={}aN=1
ar=3
aH=n
af=2
at=0
ay=0
aF=0
aM=0
W=0
aD=0
l=1
bd=0
bx=2
function aC(a,b,_)if a<2^15 then
_=f[7][a]return aC(_[_[3]*(b[2]-_[2])-_[4]*(b[1]-_[1])>0 and 8 or 7],b)else
a=f[5][f[6][a-32768][2]]return R[f[3][f[2][a[4]][a[5]+6]][6]]end
end
function ah(s,bK,z,bA,_)P=h[z]d=A[P[4]]aB,aj=d[18],d[19]I=aB
D=aC(#f[7],s)T,ad=exp(D)an=sub(s,bg)N=V[2+an[1]//aa+an[2]//aa*bk]or{}for a,_ in B(N[0]or{})do
c=h[_]if _~=z and c and P[14]~=c then
k=x(c,s)F=A[c[4]]if c[20]then
S=k-F[18]if S<I and F[23]&1>0 and(d[23]&1>0 or E(s[9],c[9]-aj,c[9]+F[19])==s[9])then
aQ=c
if bK==v then
return
end
I=S
aJ=J(s,c)end
end
if z==1 then
if k<50 then
b=F[25]if b>0 then
for p,r in B(u[b])do
if r>0 and u[1][p]<u[2][p]then
c=u
h[_]=v
c[1][p]=aU(C(c[1][p]+r,c[2][p]))if E(p,5,12)==p then
af=p-4
end
end
end
end
b=F[29]if b>0 then
b=f[11][b]for p=7,8 do
e[p]=E(e[p]+b[p*2-13],e[p],b[p*2-12])end
h[_]=v
end
end
end
end
end
if ad-T<aj or T>s[9]+24 then
t=(bA or 1)<8 or aF%4>0 or D[6]<18 or ax(P,10)return
end
for a=1,#N do
_=f[2][N[a]]k,bB=bo(s,U[_[1]],U[_[2]])if k<I then
if(_[3]&1>0 and d[23]&1>0)or _[3]&4==0 then
if z>1 or aL>0 or _[3]&4>0 then
I=k
aJ=bB
end
else
aT,aI=C(_[9],ad),O(_[8],T)if C(s[9],ad-aj)+24<aI or O(s[9],T)+aj>aT or aT-aI<aj then
I=k
aJ=bB
else
if bA==1 and(_[3]&512>0 or z==1)and(_[4]==2 or z>1)then
be(_,_[5])end
ad,T=aT,aI
end
end
end
end
D,aQ={T,ad}if bK then
if I~=aB then
_=ae(s,Y(aJ,I-aB))s[1]=_[1]s[2]=_[2]end
return n
end
return I==aB
end
function bo(q,w,au)L=x(w,q)bM=J(w,au)+90
bF=bM-J(q,w)bJ=-L*bC(bF)aL=L*ak(bF)bc=bM
if aL<0 then
bc=bc+M
end
if bJ<0 then
return L,J(q,w)elseif bJ>x(au,w)then
return x(au,q),J(q,au)else
return abs(aL),bc
end
end
function as(q,w,aV,z,_)aK=x(q,w)aA=aK
b_,t=n
S,aZ=exp(q)bR,bQ=exp(w)aR,bf=exp(sub(w,q))av,br=q[9]+32,w[9]+32
for a,_ in B(f[2])do
bE=U[_[1]]bL,bi=exp(sub(U[_[2]],bE))bu,bm=exp(sub(q,bE))bz=bi*aR-bL*bf
Z=(bL*bm-bi*bu)/bz
bj=(aR*bm-bf*bu)/bz
if E(Z,0,1)==Z and E(bj,0,1)==bj then
by={S+(Z*aR),aZ+(Z*bf)}k=x(q,by)G=av+(br-av)*(k/aK)if E(G,_[8]+1,_[9])~=G then
b_=v
if aV==1 then
return
end
if k<aA then
aA=k
bv,bN=exp(by)bp=G
bn=a
end
end
end
end
if aV>1 then
if aV==3 then
for a,_ in B(h)do
if _ and a~=z then
d=A[_[4]]if d[23]&1>0 and _[20]then
k=x(q,_)if k<aA then
Z=bo(_,q,w)L=(k/aK)G=av+(br-av)*L
if E(G,_[9],_[9]+d[19])==G and Z<d[18]then
aA=k
t,b_=n
bv=S+(bR-S)*L
bN=aZ+(bQ-aZ)*L
bp=G
bn=a
end
end
end
end
end
end
return b_,bn,{bv,bN,bp}end
return n
end
function httpReply(b,g,ak)bO=ay//2
ay=0
end
function al()aD=aD%256+1
return f[13][1][aD]end
function ax(_,a,c)d=A[_[4]]if d[23]&2>0 and _[7]>0 then
_[8]=_[8]-(a+1)//2
_[7]=_[7]-a//2+C(_[8],0)_[8]=O(_[8],0)_[33]=d[13]~="lost soul missile state" and c or e
if al()<d[10]then
_[6]=d[9]_[15]=0
_[10]=n
end
end
end
function bh(b,g,az)return g[20]and abs(((J(b,g)-b[3]+M)%360)-M)<az and as(b,g,1)end
function bb(y,z)bt=am and(am[9]-y[9])*o[6]/x(am,y)or 0
for a=1,o[12]do
b={}for a=1,33 do
b[a]=y[a]end
b[4]=o[8]b[10]=n
b[14]=y
bq=(al()/aa-1)*o[10]ba=Y(y[3]+bq,o[6])if o[7]>0 then
h[#h+1]=b
d=A[b[4]]b[6]=d[3]b[9]=y[9]+o[13]b[11]=ba[1]b[12]=ba[2]b[17]=af
b[19]=bt
else
c=ae(y,ba)c[9]=e[9]+bt
aW,aw,c=as(y,c,3,z)if not aW then
bD=sub(c,Y(y[3]+bq,1))h[#h+1]=b
b[1]=bD[1]b[2]=bD[2]b[6]=A[b[4]][3]b[9]=c[3]b[19]=1
if t then
b=h[aw]ax(b,o[9]*((al()&3)+2),y)end
end
end
end
end
function be(_,c)if c>-1 then
b=f[9][c]if b[1]>0 or P[31]*_[10][2]-P[32]*_[10][1]<0 then
g=R[b[1]]ao[g and g[30]or#ao+1]={c,1,g or P}_[4]=b[7]b=b[8]>0 and be(_,b[8])end
else
aH=n
ar=-c
m[10]=-c
end
end
function bw()bP,am=2048
for a,_ in B(h)do
if a>1 and _ and bh(e,_,10)then
k=x(_,e)if k<bP then
if A[_[4]][23]&2>0 then
am=_
bP=k
end
end
end
end
end
function bs(_)if _[9]~=D[1]and not bl then
_[9]=D[1]_[10]=true
end
end
function onTick()ac(9,ag(32))ac(2,ag(11))ac(3,v)for j=1,3 do
if ag(32)and(not bI)or not f[21]then
aE=property.getText(aN)a=1
i=""
_=aY.sub(aE,a,a)while _~=""do
c=aY.byte(_)if c>64 then
i=(i..c-65)+0
if l==1 then
bH=i
f[i]=f[i]or{}elseif l==2 then
G=i
ab=0
elseif l==3 then
aS=i
else
if ab==0 then
ab=G
aS=aS-1
aO={}f[bH][#f[bH]+1]=aO
end
aO[#aO+1]=i
ab=ab-1
l=O(ab,aS)>0 and l-1 or 0
end
l=l+1
i=""
else
i=i.._
end
a=a+1
_=aY.sub(aE,a,a)end
aN=aN+1
bI=aE==""
end
end
if bI then
if aH then
ao,aH={}ai=1
for a=1,10 do
f[a]=f[a+10*ar]end
h=f[1]U=f[4]R=f[8]V=f[10]bg,V[1]=V[1]u=f[12]A=f[15]for a=14,16 do
u[1][a]=0
end
ar=ar+1
for a=#h,1,-1 do
_=h[a]for j=7,32 do
_[j]=0
end
_[7]=A[_[4]][4]_[9],_[10]=aC(#f[7],_)[1]if _[5]&bx<1 then
aG(h,a)elseif _[4]==1 then
if e then
_[7]=e[7]_[8]=e[8]end
e=_
end
end
bk=bg[3]end
for a,_ in B(f[2])do
_[10]=sub(U[_[2]],U[_[1]])if _[3]&4>0 then
d,F=R[f[3][_[6]][6]],R[f[3][_[7]][6]]_[8]=O(d[1],F[1])_[9],d[30],F[30]=C(d[2],F[2])else
_[8],_[9]=0,0
end
end
m={}for a=1,32 do
m[a]=0
end
aM=aM+1
W=C(W+1/bO,2/35)ac(1,W>=0)if W>=0 then
W=W-1/35
aF=aF+1
for a=2,#V do
V[a][0]={}end
for a,r in B(ao)do
_=f[9][r[1]]c=r[3]b=_[2]d=c[b]c[b]=E(_[3],d-_[4],d+_[4])+0
d=c[b]if d==_[3]then
ao[a]=r[2]==_[5]and{_[6],1,c}or{r[1],r[2]+1,c}if _[6]==0 then
aG(ao,a)end
end
c[10]=c[10]or d~=r
c[30]=a
end
for a,_ in B(h)do
if _ then
for j,r in B({1,2,9})do
_[r]=_[r]+_[r+10]end
_[15]=_[15]+1
d=A[_[4]]if _[7]<=0 and _[20]then
_[15]=0
_[6]=d[_[7]<=-d[4]and d[15]>1 and 15 or 14]_[10],_[20]=n
m[12]=d[16]if d[27]>0 then
c={}for j=1,30 do
c[j]=_[j]end
c[4]=d[27]c[6]=d[28]h[#h+1]=c
end
end
aP=f[16][_[6]]_[33]=_[33]and(_[33][20]and _[33]or e)if _[15]>=aP[2]and aP[2]~=-1 then
_[6]=aP[4]_[15]=0
Q=f[16][_[6]][3]bl=d[23]&4>0
if Q==1 then
for a,l in B(h)do
if l then
i=aa-x(_,l)if i>0 then
ax(l,i)end
end
end
elseif Q==2 then
if bh(_,e,90)then
_[33]=e
_[6]=d[5]m[12]=d[6]end
ah(_,v,a,8)bs(_)elseif Q==3 then
az,t=aU(J(_,_[33])/45+.5)*45
l=1
while l<5 and not t do
i=ae(_,Y(az+f[19][2][l],8))i[9]=_[9]t=ah(i,v,a,l)and(D[1]>=i[9]-24 or bl)l=l+1
end
if t then
for j=1,2 do
_[30+j]=i[j]-_[j]_[j]=i[j]end
_[3]=az
_[10]=n
else
ah(_,v,a,8)end
bs(_)b=x(_,_[33])if d[13]>0 and as(_,_[33],1)and C(b,230)<al()then
_[6]=d[13]end
if b<64 and d[12]>0 then
_[6]=d[12]end
elseif Q==5 then
for a=1,11 do
e[3]=e[3]+f[19][9][a]o=f[14][23]bw()bb(e,1)end
e[3]=e[3]-20
elseif Q>9 and _[20]then
_[3]=J(_,_[33])o=f[14][Q]_[10]=n
am=_[33]bb(_,a)end
end
if _[17]and _[17]>0 then
o=f[14][_[17]]if not ah(_,v,a)or _[9]<=D[1]then
if aQ then
ax(aQ,d[21]*((al()&7)+1),_[14])end
_[1]=_[1]-_[11]_[2]=_[2]-_[12]_[3]=0
_[6]=A[_[4]][5]_[10]=n
_[11]=0
_[12],_[17]=0
m[12]=d[16]_[19]=0
end
end
if _[6]==1 then
h[a]=v
else
an=sub(_,bg)N=V[2+an[1]//aa+an[2]//aa*bk]if N then
N[0][#N[0]+1]=a
end
end
end
end
for a=1,8 do
if ag(a)and u[1][a+4]>0 then
af=a
end
end
o=f[14][af]e[3]=e[3]-aq(3)*(E(bd,5,6)*1.5-6)bd=abs(aq(3))*bd+1
X=e
for a=1,2 do
X=ae(X,Y(e[3]-M+90*a,aq(a)*8.33))end
X[9]=e[9]for a=1,8 do
t=ah(X,n,1,a)end
if t then
for a=1,2 do
e[30+a]=X[a]-e[a]e[a]=X[a]end
if e[9]>D[1]then
e[19]=e[19]-1
else
e[9]=C(D[1],e[9]+4)e[19]=O(0,e[19])end
else
e[19]=0
e[9]=D[1]end
aX=u[1]c=o[1]if ag(31)and at<=0 and(c==0 or aX[c]>=o[2])then
ac(3,n)at=o[3]if c>0 then
aX[c]=aX[c]-o[2]end
bw()bb(e,1)end
at=at-1
if aq(4)<0 then
_=ae(e,Y(e[3],64))_[9]=e[9]aW,aw=as(e,_,2,1)_=f[2][aw]if aW==v then
m[2]=aw
c,t=_[4]for a=14,16 do
t=t or u[1][a]>0 and c==a
end
if c==1 or t then
be(_,_[5])elseif c>3000 and c<3005 then
bx=aU(c-3000)end
end
end
end
m[1]=af
for a=3,14 do
m[a]=e[f[19][4][a]]or m[a]end
u[1][17]=bO
m[11]=u[1][aM%#u[1]+1]a=ai
bG=n
K=1
ap=#h+#R
while K<3 and bG do
c=K*9+6
if a<=#h then
_=h[a]if a~=1 then
if _ then
if _[10]then
m[c],_[10]=a
for j=1,8 do
m[c+j]=_[f[19][1][j]]end
K=K+1
end
else
m[c]=-a
aG(h,a)K=K+1
ap=ap-1
end
end
else
_=R[a-#h]if _[10]then
m[c],_[10]=a-#h+2^15
for j=1,6 do
m[c+j]=_[j]end
K=K+1
end
end
a=(a-2)%ap+1
ai=C(ai,ap)bG=a~=ai
end
ai=a
for a=1,32 do
output.setNumber(a,m[a])end
end
ay=ay+1
async.httpGet(8,"")end
