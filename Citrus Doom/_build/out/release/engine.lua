
W=128
L=180
F=math
M=F.max
C=F.min
aU=F.floor
pi=F.pi
at=input.getNumber
am=input.getBool
ad=output.setBool
n=true
i=false
A=ipairs
abs=F.abs
aC=table.remove
bg=string
function aj(b,h)return{(b[1]+h[1]),(b[2]+h[2])}end
function sub(b,h)return{(b[1]-h[1]),(b[2]-h[2])}end
function bJ(b)return F.sin(b/L*pi)end
function al(b)return F.cos(b/L*pi)end
function I(b,h)return F.atan(h[2]-b[2],h[1]-b[1])*L/pi end
function G(b,h,al)return M(C(al,b),h)end
function v(b,h)return F.sqrt(((b[1]-h[1])^2)+((b[2]-h[2])^2))end
function Z(b,h)return{al(b)*h,bJ(b)*h}end
function exp(b)return b[1],b[2]end
e={}bd=1
aq=3
aG=i
aV=n
ai=2
aw=0
as=0
aF=0
aS=0
S=0
aD=0
m=1
aN=0
bG=2
function aL(a,b,_)if a<2^15 then
_=e[7][a]return aL(_[_[3]*(b[2]-_[2])-_[4]*(b[1]-_[1])>0 and 8 or 7],b)else
a=e[5][e[6][a-32768][2]]return T[e[3][e[2][a[4]][a[5]+6]][6]]end
end
function ah(s,bH,w,bu,_)U=g[w]f=z[U[4]]ax,ak=f[18],f[19]J=ax
B=aL(#e[7],s)aa,af=exp(B)ao=sub(s,aY)N=X[2+ao[1]//W+ao[2]//W*bC]or{}for a,_ in A(N[0]or{})do
c=g[_]if _~=w and c and U[14]~=_ then
l=v(c,s)H=z[c[4]]if c[20]then
Y=l-H[18]if Y<J and H[23]&1>0 and(f[23]&1>0 or G(s[9],c[9]-ak,c[9]+H[19])==s[9])then
aE=c
if bH==i then
return i
end
J=Y
aM=I(s,c)end
end
if w==1 then
if l<50 then
b=H[25]if b>0 then
for p,t in A(x[b])do
if t>0 and x[1][p]<x[2][p]then
c=x
g[_]=i
c[1][p]=aU(C(c[1][p]+t,c[2][p]))if G(p,5,12)==p then
ai=p-4
end
end
end
end
b=H[29]if b>0 then
b=e[11][b]for p=7,8 do
d[p]=G(d[p]+b[p*2-13],d[p],b[p*2-12])end
g[_]=i
end
end
end
end
end
if af-aa<ak or aa>s[9]+24 then
r=(bu or 1)<8 or aF%4>0 or B[6]<18 or ay(U,10)return i
end
for a=1,#N do
_=e[2][N[a]]l,bE=bl(s,R[_[1]],R[_[2]])if l<J then
if(_[3]&1>0 and f[23]&1>0)or _[3]&4==0 then
if w>1 or b_>0 or _[3]&4>0 then
J=l
aM=bE
end
else
aQ,aZ=C(_[9],af),M(_[8],aa)if C(s[9],af-ak)+24<aZ or M(s[9],aa)+ak>aQ or aQ-aZ<ak then
J=l
aM=bE
else
if bu==1 and(_[3]&512>0 or w==1)and(_[4]==2 or w>1)then
aO(_,_[5])end
af,aa=aQ,aZ
end
end
end
end
B,aE={aa,af}if bH then
if J~=ax then
_=aj(s,Z(aM,J-ax))s[1]=_[1]s[2]=_[2]end
return n
end
return J==ax
end
function bl(q,y,az)O=v(y,q)bp=I(y,az)+90
bm=bp-I(q,y)bt=-O*bJ(bm)b_=O*al(bm)bh=bp
if b_<0 then
bh=bh+L
end
if bt<0 then
return O,I(q,y)elseif bt>v(az,y)then
return v(az,q),I(q,az)else
return abs(b_),bh
end
end
function au(q,y,bb,w,_)be=v(q,y)aB=be
aP=n
Y,aI=exp(q)bQ,bR=exp(y)bc,aW=exp(sub(y,q))aA,bz=q[9]+32,y[9]+32
r=i
for a,_ in A(e[2])do
bo=R[_[1]]bI,bk=exp(sub(R[_[2]],bo))bD,by=exp(sub(q,bo))bA=bk*bc-bI*aW
Q=(bI*by-bk*bD)/bA
bw=(bc*by-aW*bD)/bA
if G(Q,0,1)==Q and G(bw,0,1)==bw then
bv={Y+(Q*bc),aI+(Q*aW)}l=v(q,bv)D=aA+(bz-aA)*(l/be)if G(D,_[8]+1,_[9])~=D then
aP=i
if bb==1 then
return i
end
if l<aB then
aB=l
bn,bq=exp(bv)bL=D
bi=a
end
end
end
end
if bb>1 then
if bb==3 then
for a,_ in A(g)do
if _ and a~=w then
f=z[_[4]]if f[23]&1>0 and _[20]then
l=v(q,_)if l<aB then
Q=bl(_,q,y)O=(l/be)D=aA+(bz-aA)*O
if G(D,_[9],_[9]+f[19])==D and Q<f[18]then
aB=l
r=n
aP=i
bn=Y+(bQ-Y)*O
bq=aI+(bR-aI)*O
bL=D
bi=a
end
end
end
end
end
end
return aP,bi,{bn,bq,bL}end
return n
end
function httpReply(b,h,al)bj=as//2
as=0
end
function ag()aD=aD%256+1
return e[13][1][aD]end
function ay(_,a,c)f=z[_[4]]if f[23]&2>0 and _[7]>0 then
_[8]=_[8]-(a+1)//2
_[7]=_[7]-a//2+C(_[8],0)_[8]=M(_[8],0)if ag()<f[10]then
_[6]=f[9]_[15]=0
_[23]=c or d
_[10]=n
end
end
end
function bx(b,h,ar)return h[20]and abs(((I(b,h)-b[3]+L)%360)-L)<ar and au(b,h,1)end
function ba(E,w)bM=ae and(ae[9]-E[9])*o[6]/v(ae,E)or 0
for a=1,o[12]do
b={}for a=1,30 do
b[a]=E[a]end
b[4]=o[8]b[10]=n
b[14]=w
bN=(ag()/W-1)*o[10]bf=Z(E[3]+bN,o[6])if o[7]>0 then
g[#g+1]=b
f=z[b[4]]b[6]=f[3]b[9]=E[9]+o[13]b[11]=bf[1]b[12]=bf[2]b[17]=ai
b[19]=bM
else
c=aj(E,bf)c[9]=d[9]+bM
aJ,ap,c=au(E,c,3,w)if not aJ then
bK=sub(c,Z(E[3]+bN,1))g[#g+1]=b
b[1]=bK[1]b[2]=bK[2]b[6]=z[b[4]][3]b[9]=c[3]b[19]=1
if r then
b=g[ap]ay(b,o[9]*((ag()&3)+2),E)end
end
end
end
end
function aO(_,c)if c>-1 then
b=e[9][c]if b[1]>0 or U[31]*_[10][2]-U[32]*_[10][1]<0 then
h=T[b[1]]ac[h and h[30]or#ac+1]={c,1,h or U}_[4]=b[7]b=b[8]>0 and aO(_,b[8])end
else
aV=n
aq=-c
u[9]=-c
end
end
function bB()bF,ae=2048
for a,_ in A(g)do
if a>1 and _ and bx(d,_,10)then
l=v(_,d)if l<bF then
if z[_[4]][23]&2>0 then
ae=_
bF=l
end
end
end
end
end
function bs(_)if _[9]~=B[1]and not bP then
_[9]=B[1]_[10]=true
end
end
function onTick()ad(9,am(32))ad(2,am(11))ad(3,i)for k=1,3 do
if am(32)and(not aG)or not e[21]then
aX=property.getText(bd)a=1
j=""
_=bg.sub(aX,a,a)while _~=""do
c=bg.byte(_)if c>64 then
j=(j..c-65)+0
if m==1 then
bO=j
e[j]=e[j]or{}elseif m==2 then
D=j
ab=0
elseif m==3 then
aR=j
else
if ab==0 then
ab=D
aR=aR-1
aH={}e[bO][#e[bO]+1]=aH
end
aH[#aH+1]=j
ab=ab-1
m=M(ab,aR)>0 and m-1 or 0
end
m=m+1
j=""
else
j=j.._
end
a=a+1
_=bg.sub(aX,a,a)end
bd=bd+1
aG=aX==""
end
end
if aG then
if aV then
ac,aV={}an=1
for a=1,10 do
e[a]=e[a+10*aq]end
g=e[1]R=e[4]T=e[8]X=e[10]aY,X[1]=X[1]x=e[12]z=e[15]for a=14,16 do
x[1][a]=0
end
aq=aq+1
for a=#g,1,-1 do
_=g[a]for k=7,40 do
_[k]=0
end
_[7]=z[_[4]][4]_[9],_[10]=aL(#e[7],_)[1]if _[5]&bG<1 then
aC(g,a)elseif _[4]==1 then
if d then
_[7]=d[7]_[8]=d[8]end
d=_
end
end
bC=aY[3]end
for a,_ in A(e[2])do
_[10]=sub(R[_[2]],R[_[1]])if _[3]&4>0 then
f,H=T[e[3][_[6]][6]],T[e[3][_[7]][6]]_[8]=M(f[1],H[1])_[9],f[30],H[30]=C(f[2],H[2])else
_[8],_[9]=0,0
end
end
u={}for a=1,32 do
u[a]=0
end
aS=aS+1
S=C(S+1/bj,2/35)ad(1,S>=0)if S>=0 then
S=S-1/35
aF=aF+1
for a=2,#X do
X[a][0]={}end
for a,t in A(ac)do
_=e[9][t[1]]c=t[3]b=_[2]f=c[b]c[b]=G(_[3],f-_[4],f+_[4])+0
f=c[b]if f==_[3]then
ac[a]=t[2]==_[5]and{_[6],1,c}or{t[1],t[2]+1,c}if _[6]==0 then
aC(ac,a)end
end
c[10]=c[10]or f~=t
c[30]=a
end
for a,_ in A(g)do
if _ then
for k,t in A({1,2,9})do
_[t]=_[t]+_[t+10]end
_[15]=_[15]+1
f=z[_[4]]if _[7]<=0 and _[20]then
_[15]=0
_[6]=f[_[7]<=-f[4]and f[15]>1 and 15 or 14]_[10],_[20]=n
if f[27]>0 then
c={}for k=1,30 do
c[k]=_[k]end
c[4]=f[27]c[6]=f[28]g[#g+1]=c
end
end
aK=e[16][_[6]]if _[15]>=aK[2]and aK[2]~=-1 then
_[6]=aK[4]_[15]=0
P=e[16][_[6]][3]bP=f[23]&4>0
if P==1 then
for a,m in A(g)do
if m then
j=W-v(_,m)if j>0 then
ay(m,j)end
end
end
elseif P==2 then
if bx(_,d,90)then
_[23]=d
_[6]=f[5]end
ah(_,i,a,8)bs(_)elseif P==3 then
_[23]=_[23][20]and _[23]or d
ar=aU(I(_,_[23])/45+.5)*45
r=i
m=1
while m<5 and not r do
j=aj(_,Z(ar+e[19][2][m],8))j[9]=_[9]r=ah(j,i,a,m)and(B[1]>=j[9]-24 or bP)m=m+1
end
if r then
for k=1,2 do
_[30+k]=j[k]-_[k]_[k]=j[k]end
_[3]=ar
_[10]=n
else
ah(_,i,a,8)end
bs(_)b=v(_,_[23])if f[13]>0 and au(_,_[23],1)and C(b,230)<ag()then
_[6]=f[13]end
if b<64 and f[12]>0 then
_[6]=f[12]end
elseif P==5 then
for a=1,11 do
d[3]=d[3]+e[19][9][a]o=e[14][23]bB()ba(d,1)end
d[3]=d[3]-20
elseif P>9 and _[20]then
_[3]=I(_,_[23])o=e[14][P]_[10]=n
ae=_[23]ba(_,a)end
end
if _[17]and _[17]>0 then
o=e[14][_[17]]if not ah(_,i,a)or _[9]<=B[1]then
if aE then
ay(aE,f[21]*((ag()&7)+1),g[_[14]])end
_[1]=_[1]-_[11]_[2]=_[2]-_[12]_[3]=0
_[6]=z[_[4]][5]_[10]=n
_[11]=0
_[12],_[17]=0
_[19]=0
end
end
if _[6]==1 then
g[a]=i
else
ao=sub(_,aY)N=X[2+ao[1]//W+ao[2]//W*bC]if N then
N[0][#N[0]+1]=a
end
end
end
end
for a=1,8 do
if am(a)and x[1][a+4]>0 then
ai=a
end
end
o=e[14][ai]d[3]=d[3]-at(3)*(G(aN,5,6)*1.5-6)aN=abs(at(3))*aN+1
V=d
for a=1,2 do
V=aj(V,Z(d[3]-L+90*a,at(a)*8.33))end
V[9]=d[9]for a=1,8 do
r=ah(V,n,1,a)end
if r then
for a=1,2 do
d[30+a]=V[a]-d[a]d[a]=V[a]end
if d[9]>B[1]then
d[19]=d[19]-1
else
d[9]=C(B[1],d[9]+4)d[19]=M(0,d[19])end
else
d[19]=0
d[9]=B[1]end
aT=x[1]c=o[1]if am(31)and aw<=0 and(c==0 or aT[c]>=o[2])then
ad(3,n)aw=o[3]if c>0 then
aT[c]=aT[c]-o[2]end
bB()ba(d,1)end
aw=aw-1
if at(4)<0 then
_=aj(d,Z(d[3],64))_[9]=d[9]aJ,ap=au(d,_,2,1)_=e[2][ap]if aJ==i then
u[2]=ap
c,r=_[4]for a=14,16 do
r=r or x[1][a]>0 and c==a
end
if c==1 or r then
aO(_,_[5])elseif c>3000 and c<3005 then
bG=aU(c-3000)end
end
end
end
u[1]=ai
for a=3,13 do
u[a]=d[e[19][4][a]]or u[a]end
x[1][17]=bj
u[10]=x[1][aS%#x[1]+1]a=an
br=n
K=1
av=#g+#T
while K<3 and br do
c=K*9+5
if a<=#g then
_=g[a]if a~=1 then
if _ then
if _[10]then
_[10]=i
u[c]=a
for k=1,8 do
u[c+k]=_[e[19][1][k]]end
K=K+1
end
else
u[c]=-a
aC(g,a)K=K+1
av=av-1
end
end
else
_=T[a-#g]if _[10]then
_[10]=i
u[c]=a-#g+2^15
for k=1,6 do
u[c+k]=_[k]end
K=K+1
end
end
a=(a-2)%av+1
an=C(an,av)br=a~=an
end
an=a
for a=1,32 do
output.setNumber(a,u[a])end
end
as=as+1
async.httpGet(8,"")end
