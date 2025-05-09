bK=""

R=128
J=180
bz=output
bh=input
z=math
M=z.max
s=z.min
as=z.floor
pi=z.pi
av=bh.getNumber
ax=bh.getBool
ab=bz.setBool
k=true
h=false
w=ipairs
abs=z.abs
b_=table.remove
ay=string
function ag(c,g)return{(c[1]+g[1]),(c[2]+g[2])}end
function sub(c,g)return{(c[1]-g[1]),(c[2]-g[2])}end
function bi(c)return z.sin(c/J*pi)end
function X(c)return z.cos(c/J*pi)end
function H(c,g)return z.atan(g[2]-c[2],g[1]-c[1])*J/pi end
function F(c,g,X)return M(s(X,c),g)end
function u(c,g)return z.sqrt(((c[1]-g[1])^2)+((c[2]-g[2])^2))end
function S(c,g)return{X(c)*g,bi(c)*g}end
function exp(c)return c[1],c[2]end
b={}aH=1
at=3
am=h
aI=k
ae=2
E=0
au=0
ap=0
T=0
aB=0
j=1
aQ=0
aW=2
function aN(a,c,_)if a<32768then
_=b[7][a]return aN(_[_[3]*(c[2]-_[2])-_[4]*(c[1]-_[1])>0 and 8 or 7],c)else
a=b[5][b[6][a-32768][2]]return b[8][b[3][b[2][a[4]][a[5]+6]][6]]end
end
function aw(q,bg,y,bI,_,a,x)f=b[15][b[1][y][4]]an,aj=f[18],f[19]D=an
B=aN(#b[7],q)Q,V=exp(B)aa=sub(q,b[10][1])L=b[10][2+aa[1]//R+aa[2]//R*bb]for a,_ in w(L[0])do
d=b[1][_]if _~=y and d and b[1][y][14]~=_ then
l=u(d,q)C=b[15][d[4]]if d[20]then
N=l-C[18]if N<D and C[23]&1>0 and(f[23]&1>0 or(q[9]+aj<d[9]or q[9]>d[9]+C[19])==h)then
aL=d
if bg==h then
return h
end
D=N
aX=H(q,d)end
end
if y==E and not d[10]then
if l<50then
c=C[25]if c>0then
for m,t in w(b[12][c])do
if t>0 and b[12][1][m]<b[12][2][m]then
d=b[12]b[1][_]=h
d[1][m]=as(s(d[1][m]+t,d[2][m]))if F(m,5,11)==m then
ae=m-4
end
end
end
end
c=C[29]if c>0 then
c=b[11][c]for m=7,8 do
e[m]=F(e[m]+c[m*2-13],e[m],c[m*2-12])end
b[1][_]=h
end
end
end
end
end
aL=h
if V-Q<aj or Q>q[9]+24then
return h
end
for a=1,#L do
_=b[2][L[a]]l,bo=br(q,b[4][_[1]],b[4][_[2]])if l<D then
if bI==1 and _[4]==2 then
aP(_,_[5])end
if(_[3]&1>0 and f[23]&1>0)or _[3]&4==0 then
D=l
aX=bo
else
aZ,bx=s(_[9],V),M(_[8],Q)if s(q[9],V-aj)+24<bx or M(q[9],Q)+aj>aZ then
D=l
aX=bo
else
V,Q=aZ,bx
end
end
end
end
B={Q,V}if bg then
if D~=an then
_=ag(q,S(aX,D-an))q[1]=_[1]q[2]=_[2]end
return k
end
return D==an
end
function br(o,v,al)K=u(v,o)by=H(v,al)+90
bw=by-H(o,v)bd=-K*bi(bw)bf=K*X(bw)aV=by
if bf<0 then
aV=aV+J
end
if bd<0 then
return K,H(o,v)elseif bd>u(al,v)then
return u(al,o),H(o,al)else
return abs(bf),aV
end
end
function aq(o,v,az,y,_)aM=u(o,v)aG=aM
aS=k
N,aD=exp(o)bH,bG=exp(v)aJ,aE=exp(sub(v,o))ah,bu=o[9]+32,v[9]+32
r=h
for a,_ in w(b[2])do
bD=b[4][_[1]]bk,bn=exp(sub(b[4][_[2]],bD))bs,aY=exp(sub(o,bD))bv=bn*aJ-bk*aE
O=(bk*aY-bn*bs)/bv
bc=(aJ*aY-aE*bs)/bv
if F(O,0,1)==O and F(bc,0,1)==bc then
bt={N+(O*aJ),aD+(O*aE)}l=u(o,bt)A=ah+(bu-ah)*(l/aM)if F(A,_[8],_[9])~=A then
aS=h
if az==1 then
return h
end
if l<aG then
aG=l
bm,bF=exp(bt)bq=A
W=a
end
end
end
end
if az>1 then
if az==3 then
for a,_ in w(b[1])do
if _ and a~=y then
f=b[15][_[4]]if f[23]&1>0 and _[20]then
l=u(o,_)if l<aG then
O=br(_,o,v)K=(l/aM)A=ah+(bu-ah)*K
if F(A,_[9],_[9]+f[19])==A and O<f[18]then
r=k
aS=h
bm=N+(bH-N)*K
bF=aD+(bG-aD)*K
bq=A
W=a
end
end
end
end
end
end
return aS,W,{bm,bF,bq}end
return k
end
function httpReply(c,g,X)bA=ap//2
ap=0
end
function Y()aB=aB%256+1
return b[13][1][aB]end
function aT(_,a)f=b[15][_[4]]if f[23]&2>0 and _[7]>0 then
_[8]=_[8]-(a+1)//2
_[7]=_[7]-a//2+s(_[8],0)_[8]=M(_[8],0)if Y()<f[10]then
_[6]=f[9]_[15]=0
_[23]=e
_[10]=k
end
end
end
function ba(c,g,ao)return g[20]and abs(((H(c,g)-c[3]+J)%360)-J)<ao and aq(c,g,1)end
function bl(G,y)be=ac and(ac[9]-G[9])*p[6]/u(ac,G)or 0
for a=1,p[12]do
c={}for a=1,30 do
c[a]=G[a]end
c[4]=p[8]c[10]=k
c[14]=y
bE=(Y()/R-1)*p[10]aR=S(G[3]+bE,p[6])if p[7]>0then
b[1][#b[1]+1]=c
f=b[15][c[4]]c[6]=f[3]c[9]=G[9]+32
c[11]=aR[1]c[12]=aR[2]c[17]=ae
c[19]=be
else
d=ag(G,aR)d[9]=e[9]+be
aA,ak,d=aq(G,d,3,y)if not aA then
bp=sub(d,S(G[3]+bE,1))b[1][#b[1]+1]=c
c[1]=bp[1]c[2]=bp[2]c[6]=b[15][c[4]][3]c[9]=d[3]c[19]=1
if r then
c=b[1][ak]aT(c,p[9]*((Y()&3)+2))end
end
end
end
end
function aP(_,d)if d>-1 then
c=b[9][d]if c[1]>0 or e[31]*_[10][2]-e[32]*_[10][1]<0 then
g=b[8][c[1]]af[g and g[30]or#af+1]={d,1}_[4]=c[7]c=c[8]>0 and aP(_,c[8])end
else
aI=k
at=-d
n[9]=-d
end
end
function onTick()ab(9,ax(32))ab(2,h)ab(3,h)for x=1,3 do
if ax(32)and(not am)or not b[21]then
aF=property.getText(aH..bK)if aF~=bK then
a=1
i=bK
_=ay.sub(aF,a,a)while _~=bKdo
d=ay.byte(_)if d>64 or _==bKthen
i=(i..(d-65))+0
if j==1then
W=i
if b[i]==bj then
b[i]={}end
j=2
elseif j==2then
A=i
U=0
j=3
elseif j==3then
aO=i
j=4
else
if U==0then
U=A
aO=aO-1
aK={}b[W][#b[W]+1]=aK
end
aK[#aK+1]=i
U=U-1
if M(U,aO)==0then
j=1
end
end
i=bK
else
i=i.._
end
a=a+1
_=ay.sub(aF,a,a)end
aH=aH+1
else
am=k
end
end
end
if am then
if aI then
af,aI={}ad=1
for a=1,10 do
b[a]=b[a+10*at]end
for a=14,16 do
b[12][1][a]=0
end
at=at+1
for a,_ in w(b[1])do
for x=7,20 do
_[x]=0
end
bJ=_[5]+1
_[7]=b[15][_[4]][4]_[9],_[10]=aN(#b[7],_)[1]if _[4]==1 then
if e then
_[7]=e[7]_[8]=e[8]end
E=a
e=_
elseif _[5]&aW<1then
b[1][a]=h
end
end
bb=b[10][1][3]end
for a,_ in w(b[2])do
_[10]=sub(b[4][_[2]],b[4][_[1]])if _[3]&4>0 then
f,C=b[8][b[3][_[6]][6]],b[8][b[3][_[7]][6]]_[8]=M(f[1],C[1])_[9],f[30],C[30]=s(f[2],C[2])else
_[8],_[9]=0,0
end
end
n={}for a=1,32 do
n[a]=0
end
T=s(T+1/bA,2/35)ab(1,T>=0)if T>=0 then
T=T-1/35
for a=2,#b[10]do
b[10][a][0]={}end
for a,t in w(af)do
_=b[9][t[1]]d=b[8][_[1]]or e
c=_[2]f=d[c]d[c]=F(_[3],f-_[4],f+_[4])f=d[c]if abs(f-_[3])<.1then
af[a]=t[2]==_[5]and{_[6],1}or{t[1],t[2]+1}if _[6]==0 then
b_(af,a)end
else
d[8]=d[8]or f~=t
end
d[30]=a
end
for a,_ in w(b[1])do
if _ then
for x,t in w({1,2,9})do
_[t]=_[t]+_[t+10]end
_[15]=_[15]+1
f=b[15][_[4]]if _[7]<=0 and _[20]then
_[15]=0
_[6]=f[_[7]<=-f[4]and f[15]>1 and 15or 14]_[10],_[20]=k
if f[27]>0 then
d={}for x=1,30 do
d[x]=_[x]end
d[4]=f[27]d[6]=f[28]b[1][#b[1]+1]=d
end
end
aC=b[16][_[6]]if _[15]>=aC[2]and aC[2]~=-1then
_[6]=aC[4]_[15]=0
Z=b[16][_[6]][3]if Z==1 then
for a,j in w(b[1])do
if j then
i=R-u(_,j)if i>0 then
aT(j,i)end
end
end
elseif Z==2then
if ba(_,e,90)then
_[23]=e
_[6]=f[5]end
elseif Z==3then
ao=as(H(_,_[23])/45+.5)*45
r=h
j=1
while j<5 and not r do
i=ag(_,S(ao+b[19][2][j],8))i[9]=_[9]j=j+1
r=aw(i,h,a)and B[1]>=i[9]-24
end
if r then
_[1]=i[1]_[2]=i[2]_[3]=ao
_[10]=k
else
aw(_,h,a)end
if f[23]&4<1 then
_[9]=B[1]end
c=u(_,_[23])if f[13]>0 and aq(_,_[23],1)and s(c,230)<Y()then
_[6]=f[13]end
if c<64 and f[12]>0then
_[6]=f[12]end
elseif Z>9then
_[3]=H(_,_[23])p=b[14][Z]_[10]=k
ac=_[23]bl(_,a)end
end
if _[17]and _[17]>0then
p=b[14][_[17]]if not aw(_,h,a)or _[9]<=B[1]then
if aL then
aT(aL,f[21]*((Y()&7)+1))end
_[1]=_[1]-_[11]_[2]=_[2]-_[12]_[3]=0
_[6]=b[15][_[4]][9]_[10]=k
_[11]=0
_[12]=0
_[17]=bj
_[19]=0
end
end
if _[6]==1then
b[1][a]=h
else
aa=sub(_,b[10][1])L=b[10][2+aa[1]//R+aa[2]//R*bb]if L~=bj then
L[0][#L[0]+1]=a
end
end
end
end
for a=1,8 do
if ax(a)and b[12][1][a+4]>0then
ae=a
end
end
p=b[14][ae]e[3]=e[3]-av(3)*(F(aQ,5,6)*1.5-6)aQ=abs(av(3))*aQ+1
P=e
for a=1,2 do
P=ag(P,S(e[3]-J+90*a,av(a)*8.33))end
P[9]=e[9]for a=1,8 do
r=aw(P,k,E,a)end
if r then
for a=1,2 do
e[30+a]=P[a]-e[a]e[a]=P[a]end
if e[9]<=B[1]then
e[9]=s(B[1],e[9]+4)e[19]=M(0,e[19])else
if e[9]>=B[2]-56then
e[9]=B[2]-56
e[19]=s(0,e[19])end
e[19]=e[19]-1
end
end
aU=b[12][1]d=p[1]if ax(31)and au<=0 and(d==0 or aU[d]>=p[2])then
ab(3,k)au=p[3]if d>0then
aU[d]=aU[d]-p[2]end
bB,ac=2048
for a,_ in w(b[1])do
if a~=E and _ and ba(e,_,10)then
l=u(_,e)if l<bB then
if b[15][_[4]][23]&2>0then
ac=_
bB=l
end
end
end
end
bl(e,E)end
au=au-1
if av(4)<0 then
_=ag(e,S(e[3],64))_[9]=e[9]aA,ak=aq(e,_,2,E)_=b[2][ak]if aA==h then
n[2]=ak
d,r=_[4]for a=14,16 do
r=r or b[12][1][a]>0 and d==a
end
if d==1 or r then
aP(_,_[5])elseif d>3000 and d<3005then
aW=as(d-3000)end
end
end
end
n[1]=ae
for a=3,8 do
n[a]=e[b[19][4][a]]end
n[5]=E
n[13]=e[3]a=ad
bC=k
I=1
ai=#b[1]+#b[8]while I<3 and bC do
d=I*9+5
if a<=#b[1]then
_=b[1][a]if a~=E then
if _ then
if _[10]then
_[10]=h
n[d]=a
for x=1,8 do
n[d+x]=_[b[19][1][x]]end
I=I+1
end
else
n[d]=-a
b_(b[1],a)I=I+1
ai=ai-1
end
end
else
_=b[8][a-#b[1]]if _[8]then
_[8]=h
n[d]=a-#b[1]+2^15
n[d+1]=_[1]n[d+2]=_[2]I=I+1
end
end
a=((a-2)%ai)+1
ad=s(ad,ai)bC=a~=ad
end
ad=a
for a=1,32 do
bz.setNumber(a,n[a])end
end
ap=ap+1
async.httpGet(8,bK)end
function onDraw()ar=screen.drawText
ar(26,137,bA)if am then
for a=1,4 do
c=124+a*7
ar(240,c,as(b[12][1][a]))ar(230,c,b[12][1][13+a])end
ar(26,143,s(aW,3))end
end
