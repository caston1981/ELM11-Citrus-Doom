bK=""

N=128
K=180
bs=output
bv=input
y=math
M=y.max
s=y.min
au=y.floor
pi=y.pi
ap=bv.getNumber
am=bv.getBool
ad=bs.setBool
k=true
h=false
v=ipairs
abs=y.abs
bc=table.remove
aF=string
function Z(c,g)return{(c[1]+g[1]),(c[2]+g[2])}end
function sub(c,g)return{(c[1]-g[1]),(c[2]-g[2])}end
function bu(c)return y.sin(c/K*pi)end
function ac(c)return y.cos(c/K*pi)end
function H(c,g)return y.atan(g[2]-c[2],g[1]-c[1])*K/pi end
function F(c,g,ac)return M(s(ac,c),g)end
function u(c,g)return y.sqrt(((c[1]-g[1])^2)+((c[2]-g[2])^2))end
function O(c,g)return{ac(c)*g,bu(c)*g}end
function exp(c)return c[1],c[2]end
a={}aO=1
aq=3
aw=h
aR=k
ag=2
D=0
ax=0
av=0
P=0
aC=0
j=1
aB=0
aW=2
function aJ(b,c,_)if b<32768then
_=a[7][b]return aJ(_[_[3]*(c[2]-_[2])-_[4]*(c[1]-_[1])>0 and 8 or 7],c)else
b=a[5][a[6][b-32768][2]]return a[8][a[3][a[2][b[4]][b[5]+6]][6]]end
end
function aj(p,bB,A,bH,_,b,x)f=a[15][a[1][A][4]]ai,ar=f[18],f[19]E=ai
z=aJ(#a[7],p)T,Y=exp(z)ab=sub(p,a[10][1])J=a[10][2+ab[1]//N+ab[2]//N*bD]for b,_ in v(J[0])do
d=a[1][_]if _~=A and d and a[1][A][14]~=_ then
l=u(d,p)C=a[15][d[4]]if d[20]then
R=l-C[18]if R<E and C[23]&1>0 and(f[23]&1>0 or(p[9]+ar<d[9]or p[9]>d[9]+C[19])==h)then
aI=d
if bB==h then
return h
end
E=R
aH=H(p,d)end
end
if A==D and not d[10]then
if l<50then
c=C[25]if c>0then
for n,t in v(a[12][c])do
if t>0 and a[12][1][n]<a[12][2][n]then
d=a[12]a[1][_]=h
d[1][n]=au(s(d[1][n]+t,d[2][n]))if F(n,5,11)==n then
ag=n-4
end
end
end
end
c=C[29]if c>0 then
c=a[11][c]for n=7,8 do
e[n]=F(e[n]+c[n*2-13],e[n],c[n*2-12])end
a[1][_]=h
end
end
end
end
end
aI=h
if Y-T<ar or T>p[9]+24then
return h
end
for b=1,#J do
_=a[2][J[b]]l,bd=bF(p,a[4][_[1]],a[4][_[2]])if l<E then
if bH==1 and _[4]==2 then
aM(_,_[5])end
if(_[3]&1>0 and f[23]&1>0)or _[3]&4==0 then
E=l
aH=bd
else
bn,b_=s(_[9],Y),M(_[8],T)if s(p[9],Y-ar)+24<b_ or M(p[9],T)+ar>bn then
E=l
aH=bd
else
Y,T=bn,b_
end
end
end
end
z={T,Y}if bB then
if E~=ai then
_=Z(p,O(aH,E-ai))p[1]=_[1]p[2]=_[2]end
return k
end
return E==ai
end
function bF(o,w,an)L=u(w,o)be=H(w,an)+90
bz=be-H(o,w)ba=-L*bu(bz)bl=L*ac(bz)aU=be
if bl<0 then
aU=aU+K
end
if ba<0 then
return L,H(o,w)elseif ba>u(an,w)then
return u(an,o),H(o,an)else
return abs(bl),aU
end
end
function at(o,w,aA,A,_)az=u(o,w)aP=az
aE=k
R,aS=exp(o)bI,bG=exp(w)aQ,aL=exp(sub(w,o))as,bh=o[9]+32,w[9]+32
r=h
for b,_ in v(a[2])do
bw=a[4][_[1]]bC,bq=exp(sub(a[4][_[2]],bw))bo,bg=exp(sub(o,bw))bp=bq*aQ-bC*aL
S=(bC*bg-bq*bo)/bp
bA=(aQ*bg-aL*bo)/bp
if F(S,0,1)==S and F(bA,0,1)==bA then
bf={R+(S*aQ),aS+(S*aL)}l=u(o,bf)B=as+(bh-as)*(l/az)if F(B,_[8],_[9])~=B then
aE=h
if aA==1 then
return h
end
if l<aP then
aP=l
bb,bt=exp(bf)bx=B
X=b
end
end
end
end
if aA>1 then
if aA==3 then
for b,_ in v(a[1])do
if _ and b~=A then
f=a[15][_[4]]if f[23]&1>0 and _[20]then
l=u(o,_)if l<aP then
S=bF(_,o,w)L=(l/az)B=as+(bh-as)*L
if F(B,_[9],_[9]+f[19])==B and S<f[18]then
r=k
aE=h
bb=R+(bI-R)*L
bt=aS+(bG-aS)*L
bx=B
X=b
end
end
end
end
end
end
return aE,X,{bb,bt,bx}end
return k
end
function httpReply(c,g,ac)bk=av//2
av=0
end
function U()aC=aC%256+1
return a[13][1][aC]end
function aD(_,b)f=a[15][_[4]]if f[23]&2>0 and _[7]>0 then
_[8]=_[8]-(b+1)//2
_[7]=_[7]-b//2+s(_[8],0)_[8]=M(_[8],0)if U()<f[10]then
_[6]=f[9]_[15]=0
_[23]=e
_[10]=k
end
end
end
function bi(c,g,ak)return g[20]and abs(((H(c,g)-c[3]+K)%360)-K)<ak and at(c,g,1)end
function br(G,A)aY=W and(W[9]-G[9])*q[6]/u(W,G)or 0
for b=1,q[12]do
c={}for b=1,30 do
c[b]=G[b]end
c[4]=q[8]c[10]=k
c[14]=A
aZ=(U()/N-1)*q[10]aV=O(G[3]+aZ,q[6])if q[7]>0then
a[1][#a[1]+1]=c
f=a[15][c[4]]c[6]=f[3]c[9]=G[9]+32
c[11]=aV[1]c[12]=aV[2]c[17]=ag
c[19]=aY
else
d=Z(G,aV)d[9]=e[9]+aY
aK,ah,d=at(G,d,3,A)if not aK then
by=sub(d,O(G[3]+aZ,1))a[1][#a[1]+1]=c
c[1]=by[1]c[2]=by[2]c[6]=a[15][c[4]][3]c[9]=d[3]c[19]=1
if r then
c=a[1][ah]aD(c,q[9]*((U()&3)+2))end
end
end
end
end
function aM(_,d)if d>-1 then
c=a[9][d]if c[1]>0 or e[31]*_[10][2]-e[32]*_[10][1]<0 then
g=a[8][c[1]]aa[g and g[30]or#aa+1]={d,1}_[4]=c[7]c=c[8]>0 and aM(_,c[8])end
else
aR=k
aq=-d
m[9]=-d
end
end
function onTick()ad(9,am(32))ad(2,h)ad(3,h)for x=1,3 do
if am(32)and(not aw)or not a[21]then
aN=property.getText(aO..bK)if aN~=bK then
b=1
i=bK
_=aF.sub(aN,b,b)while _~=bKdo
d=aF.byte(_)if d>64 or _==bKthen
i=(i..(d-65))+0
if j==1then
X=i
if a[i]==bj then
a[i]={}end
j=2
elseif j==2then
B=i
ae=0
j=3
elseif j==3then
ay=i
j=4
else
if ae==0then
ae=B
ay=ay-1
aT={}a[X][#a[X]+1]=aT
end
aT[#aT+1]=i
ae=ae-1
if M(ae,ay)==0then
j=1
end
end
i=bK
else
i=i.._
end
b=b+1
_=aF.sub(aN,b,b)end
aO=aO+1
else
aw=k
end
end
end
if aw then
if aR then
aa,aR={}af=1
for b=1,10 do
a[b]=a[b+10*aq]end
for b=14,16 do
a[12][1][b]=0
end
aq=aq+1
for b,_ in v(a[1])do
for x=7,20 do
_[x]=0
end
bJ=_[5]+1
_[7]=a[15][_[4]][4]_[9],_[10]=aJ(#a[7],_)[1]if _[4]==1 then
if e then
_[7]=e[7]_[8]=e[8]end
D=b
e=_
elseif _[5]&aW<1then
a[1][b]=h
end
end
bD=a[10][1][3]end
for b,_ in v(a[2])do
_[10]=sub(a[4][_[2]],a[4][_[1]])if _[3]&4>0 then
f,C=a[8][a[3][_[6]][6]],a[8][a[3][_[7]][6]]_[8]=M(f[1],C[1])_[9],f[30],C[30]=s(f[2],C[2])else
_[8],_[9]=0,0
end
end
m={}for b=1,32 do
m[b]=0
end
P=s(P+1/bk,2/35)ad(1,P>=0)if P>=0 then
P=P-1/35
for b=2,#a[10]do
a[10][b][0]={}end
for b,t in v(aa)do
_=a[9][t[1]]d=a[8][_[1]]or e
c=_[2]f=d[c]d[c]=F(_[3],f-_[4],f+_[4])f=d[c]if abs(f-_[3])<.1then
aa[b]=t[2]==_[5]and{_[6],1}or{t[1],t[2]+1}if _[6]==0 then
bc(aa,b)end
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
_[6]=f[_[7]<=-f[4]and f[15]>1 and 15or 14]_[10],_[20]=k
if f[27]>0 then
d={}for x=1,30 do
d[x]=_[x]end
d[4]=f[27]d[6]=f[28]a[1][#a[1]+1]=d
end
end
aG=a[16][_[6]]if _[15]>=aG[2]and aG[2]~=-1then
_[6]=aG[4]_[15]=0
V=a[16][_[6]][3]if V==1 then
for b,j in v(a[1])do
if j then
i=N-u(_,j)if i>0 then
aD(j,i)end
end
end
elseif V==2then
if bi(_,e,90)then
_[23]=e
_[6]=f[5]end
elseif V==3then
ak=au(H(_,_[23])/45+.5)*45
r=h
j=1
while j<5 and not r do
i=Z(_,O(ak+a[19][2][j],8))i[9]=_[9]j=j+1
r=aj(i,h,b)and z[1]>=i[9]-24
end
if r then
_[1]=i[1]_[2]=i[2]_[3]=ak
_[10]=k
else
aj(_,h,b)end
if f[23]&4<1 then
_[9]=z[1]end
c=u(_,_[23])if f[13]>0 and at(_,_[23],1)and s(c,230)<U()then
_[6]=f[13]end
if c<64 and f[12]>0then
_[6]=f[12]end
elseif V>9then
_[3]=H(_,_[23])q=a[14][V]_[10]=k
W=_[23]br(_,b)end
end
if _[17]and _[17]>0then
q=a[14][_[17]]if not aj(_,h,b)or _[9]<=z[1]then
if aI then
aD(aI,f[21]*((U()&7)+1))end
_[1]=_[1]-_[11]_[2]=_[2]-_[12]_[3]=0
_[6]=a[15][_[4]][9]_[10]=k
_[11]=0
_[12]=0
_[17]=bj
_[19]=0
end
end
if _[6]==1then
a[1][b]=h
else
ab=sub(_,a[10][1])J=a[10][2+ab[1]//N+ab[2]//N*bD]if J~=bj then
J[0][#J[0]+1]=b
end
end
end
end
for b=1,8 do
if am(b)and a[12][1][b+4]>0then
ag=b
end
end
q=a[14][ag]e[3]=e[3]-ap(3)*(F(aB,5,6)*1.5-6)aB=abs(ap(3))*aB+1
Q=e
for b=1,2 do
Q=Z(Q,O(e[3]-K+90*b,ap(b)*8.33))end
Q[9]=e[9]for b=1,8 do
r=aj(Q,k,D,b)end
if r then
for b=1,2 do
e[30+b]=Q[b]-e[b]e[b]=Q[b]end
if e[9]<=z[1]then
e[9]=s(z[1],e[9]+4)e[19]=M(0,e[19])else
if e[9]>=z[2]-56then
e[9]=z[2]-56
e[19]=s(0,e[19])end
e[19]=e[19]-1
end
end
aX=a[12][1]d=q[1]if am(31)and ax<=0 and(d==0 or aX[d]>=q[2])then
ad(3,k)ax=q[3]if d>0then
aX[d]=aX[d]-q[2]end
bm,W=2048
for b,_ in v(a[1])do
if b~=D and _ and bi(e,_,10)then
l=u(_,e)if l<bm then
if a[15][_[4]][23]&2>0then
W=_
bm=l
end
end
end
end
br(e,D)end
ax=ax-1
if ap(4)<0 then
_=Z(e,O(e[3],64))_[9]=e[9]aK,ah=at(e,_,2,D)_=a[2][ah]if aK==h then
m[2]=ah
d,r=_[4]for b=14,16 do
r=r or a[12][1][b]>0 and d==b
end
if d==1 or r then
aM(_,_[5])elseif d>3000 and d<3005then
aW=au(d-3000)end
end
end
end
m[1]=ag
for b=3,8 do
m[b]=e[a[19][4][b]]end
m[5]=D
m[13]=e[3]b=af
bE=k
I=1
al=#a[1]+#a[8]while I<3 and bE do
d=I*9+5
if b<=#a[1]then
_=a[1][b]if b~=D then
if _ then
if _[10]then
_[10]=h
m[d]=b
for x=1,8 do
m[d+x]=_[a[19][1][x]]end
I=I+1
end
else
m[d]=-b
bc(a[1],b)I=I+1
al=al-1
end
end
else
_=a[8][b-#a[1]]if _[8]then
_[8]=h
m[d]=b-#a[1]+2^15
m[d+1]=_[1]m[d+2]=_[2]I=I+1
end
end
b=((b-2)%al)+1
af=s(af,al)bE=b~=af
end
af=b
for b=1,32 do
bs.setNumber(b,m[b])end
end
av=av+1
async.httpGet(8,bK)end
function onDraw()ao=screen.drawText
ao(26,137,bk)if aw then
for b=1,4 do
c=124+b*7
ao(240,c,au(a[12][1][b]))ao(230,c,a[12][1][13+b])end
ao(26,143,s(aW,3))end
end
