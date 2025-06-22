
P=128
ai=180
G=math
N=G.max
C=G.min
aQ=G.floor
pi=G.pi/ai
as=input.getNumber
ad=input.getBool
ak=output.setBool
n=true
u=false
y=ipairs
abs=G.abs
be=table.remove
b_=string
function ac(b,g)return{(b[1]+g[1]),(b[2]+g[2])}end
function sub(b,g)return{(b[1]-g[1]),(b[2]-g[2])}end
function bP(b)return G.sin(b*pi)end
function aF(b)return G.cos(b*pi)end
function K(b,g)return G.atan(g[2]-b[2],g[1]-b[1])/pi end
function E(b,g,aF)return N(C(aF,b),g)end
function v(b,g)return G.sqrt(((b[1]-g[1])^2)+((b[2]-g[2])^2))end
function M(b,g)return{aF(b)*g,bP(b)*g}end
function exp(b)return b[1],b[2]end
e={}aB=1
ao=3
ba=n
ae=2
ap=0
ar=0
aI=0
bd=0
V=0
bg=0
k=1
aL=0
bz=2
function aR(a,b,_)if a<2^15 then
_=e[7][a]return aR(_[_[3]*(b[2]-_[2])-_[4]*(b[1]-_[1])>0 and 8 or 7],b)else
a=e[5][e[6][a-2^15][2]]return Y[e[3][e[2][a[4]][a[5]+6]][6]]end
end
function Z(t,bK,z,bG,_)W=h[z]d=D[W[4]]aq,af=d[18],d[19]J=aq
A=aR(#e[7],t)ag,al=exp(A)am=sub(t,aP)L=U[2+am[1]//P+am[2]//P*br]or{}for a,_ in y(L[0]or{})do
c=h[_]if _~=z and c and W[14]~=c then
l=v(c,t)H=D[c[4]]if c[20]then
T=l-H[18]if T<J and H[23]&1>0 and(d[23]&1>0 or E(t[9],c[9]-af,c[9]+H[19])==t[9])then
aZ=c
if bK==u then
return
end
J=T
aM=K(t,c)end
end
if z==1 and l<50 then
b=H[25]if b>0 then
for p,r in y(x[b])do
if r>0 and x[1][p]<x[2][p]then
c=x
h[_]=u
c[1][p]=aQ(C(c[1][p]+r,c[2][p]))if E(p,5,12)==p then
ae=p-4
end
end
end
end
b=H[29]if b>0 then
b=e[11][b]for p=7,8 do
f[p]=E(f[p]+b[p*2-13],f[p],b[p*2-12])end
h[_]=u
end
end
end
end
_=(bG or 1)<8
if al-ag<af then
s=_ or aI%4>0 or A[6]<18 or at(W,10)return
end
for a=1,#L do
_=e[2][L[a]]l,bE=bJ(t,O[_[1]],O[_[2]])if l<J then
if _[3]&1>0 and d[23]&1>0 or _[3]&4==0 then
if z>1 or aW>0 or _[3]&4>0 then
J=l
aM=bE
end
else
aS,aC=C(_[9],al),N(_[8],ag)if C(t[9],al-af)+24<aC or N(t[9],ag)+af>aS or aS-aC<af then
J=l
aM=bE
else
if bG==1 and(_[3]&512>0 or z==1)and(_[4]==2 or z>1)then
aY(_,_[5])end
al,ag=aS,aC
end
end
end
end
A,aZ={ag,al}if bK then
if J~=aq then
_=ac(t,M(aM,J-aq))t[1]=_[1]t[2]=_[2]end
return n
end
return J==aq
end
function bJ(q,w,ay)X=v(w,q)bo=K(w,ay)+90
bO=bo-K(q,w)aW,bH=exp(M(-bO,X))aG=bo
if aW<0 then
aG=aG+ai
end
if bH<0 then
return X,K(q,w)elseif bH>v(ay,w)then
return v(ay,q),K(q,ay)else
return abs(aW),aG
end
end
function aw(q,w,aX,z)aH=v(q,w)ax=aH
aN,s=n
T,bc=exp(q)bQ,bR=exp(w)bf,aV=exp(sub(w,q))aA,bj=q[9]+32,w[9]+32
for a,_ in y(e[2])do
by=O[_[1]]bt,bx=exp(sub(O[_[2]],by))bq,bv=exp(sub(q,by))bs=bx*bf-bt*aV
Q=(bt*bv-bx*bq)/bs
bu=(bf*bv-aV*bq)/bs
if E(Q,0,1)==Q and E(bu,0,1)==bu then
bm={T+(Q*bf),bc+(Q*aV)}l=v(q,bm)F=aA+(bj-aA)*(l/aH)if E(F,_[8]+1,_[9])~=F then
aN=u
if aX==1 then
return
end
if l<ax then
ax=l
bh,bw=exp(bm)bC=F
bD=a
end
end
end
end
if aX>1 then
if aX==3 then
for a,_ in y(h)do
if _ and a~=z then
d=D[_[4]]if d[23]&1>0 and _[20]then
l=v(q,_)if l<ax then
Q=bJ(_,q,w)X=(l/aH)F=aA+(bj-aA)*X
if E(F,_[9],_[9]+d[19])==F and Q<d[18]then
ax=l
s,aN=n
bh=T+(bQ-T)*X
bw=bc+(bR-bc)*X
bC=F
bD=a
end
end
end
end
end
end
return aN,bD,{bh,bw,bC}end
return n
end
function httpReply()bF=ar//2
ar=0
end
function aa()bg=bg%256+1
return e[13][1][bg]end
function at(_,a,c)d=D[_[4]]if d[23]&2>0 and _[7]>0 then
_[8]=_[8]-(a+1)//2
_[7]=_[7]-a//2+C(_[8],0)_[8]=N(_[8],0)_[33]=d[13]~="lost soul missile state" and c or f
if aa()<d[10]then
_[6]=d[9]_[15]=0
_[10]=n
end
end
end
function bp(b,g,az)return g[20]and abs(((K(b,g)-b[3]+ai)%360)-ai)<az and aw(b,g,1)end
function aT(B,z)bi=ah and(ah[9]-B[9])*o[6]/v(ah,B)or 0
for a=1,o[12]do
b={}for a=1,33 do
b[a]=B[a]end
b[4]=o[8]b[10]=n
b[14]=B
bl=(aa()/P-1)*o[10]aU=M(B[3]+bl,o[6])if o[7]>0 then
h[#h+1]=b
d=D[b[4]]b[6]=d[3]b[9]=B[9]+o[13]b[11]=aU[1]b[12]=aU[2]b[17]=ae
b[19]=bi
else
c=ac(B,aU)c[9]=f[9]+bi
aO,au,c=aw(B,c,3,z)if not aO then
bL=sub(c,M(B[3]+bl,1))h[#h+1]=b
b[1]=bL[1]b[2]=bL[2]b[6]=D[b[4]][3]b[9]=c[3]b[19]=1
if s then
b=h[au]at(b,o[9]*((aa()&3)+2),B)end
end
end
end
end
function aY(_,c)if c>-1 then
b=e[9][c]if b[1]>0 or W[31]*_[10][2]-W[32]*_[10][1]<0 then
g=Y[b[1]]ab[g and g[30]or#ab+1]={c,1,g or W}_[4]=b[7]b=b[8]>0 and aY(_,b[8])end
else
ba=n
ao=-c
m[10]=-c
end
end
function bk()bn,ah=2048
for a,_ in y(h)do
if a>1 and _ and bp(f,_,10)then
l=v(_,f)if l<bn then
if D[_[4]][23]&2>0 then
ah=_
bn=l
end
end
end
end
end
function bI(_)if _[9]~=A[1]and not bA then
_[9]=A[1]_[10]=true
end
end
function onTick()ak(9,ad(32))ak(2,ad(11))ak(3,u)for j=1,3 do
if ad(32)and(not bN)or not e[21]then
aD=property.getText(aB)a=1
i=""
_=b_.sub(aD,a,a)while _~=""do
c=b_.byte(_)if c>64 then
i=(i..c-65)+0
if k==1 then
bM=i
e[i]=e[i]or{}elseif k==2 then
F=i
an=0
elseif k==3 then
aE=i
else
if an==0 then
an=F
aE=aE-1
bb={}e[bM][#e[bM]+1]=bb
end
bb[#bb+1]=i
an=an-1
k=N(an,aE)>0 and k-1 or 0
end
k=k+1
i=""
else
i=i.._
end
a=a+1
_=b_.sub(aD,a,a)end
aB=aB+1
bN=aD==""
end
end
if bN then
if ba then
ab,ba={}aj=1
for a=1,10 do
e[a]=e[a+10*ao]end
h=e[1]O=e[4]Y=e[8]U=e[10]aP,U[1]=U[1]x=e[12]D=e[15]for a=14,16 do
x[1][a]=0
end
ao=ao+1
for a=#h,1,-1 do
_=h[a]for j=7,32 do
_[j]=0
end
_[7]=D[_[4]][4]_[9],_[10]=aR(#e[7],_)[1]if _[5]&bz<1 then
be(h,a)elseif _[4]==1 then
if f then
_[7]=f[7]_[8]=f[8]end
f=_
end
end
br=aP[3]end
for a,_ in y(e[2])do
_[10]=sub(O[_[2]],O[_[1]])if _[3]&4>0 then
d,H=Y[e[3][_[6]][6]],Y[e[3][_[7]][6]]_[8]=N(d[1],H[1])_[9],d[30],H[30]=C(d[2],H[2])else
_[8],_[9]=0,0
end
end
m={}for a=1,32 do
m[a]=0
end
bd=bd+1
V=C(V+1/bF,2/35)ak(1,V>=0)if V>=0 then
V=V-1/35
aI=aI+1
for a=2,#U do
U[a][0]={}end
for a,r in y(ab)do
_=e[9][r[1]]c=r[3]b=_[2]d=c[b]c[b]=E(_[3],d-_[4],d+_[4])+0
d=c[b]if d==_[3]then
ab[a]=r[2]==_[5]and{_[6],1,c}or{r[1],r[2]+1,c}if _[6]==0 then
be(ab,a)end
end
c[10]=c[10]or d~=r
c[30]=a
end
for a,_ in y(h)do
if _ then
for j,r in y({1,2,9})do
_[r]=_[r]+_[r+10]end
_[15]=_[15]+1
d=D[_[4]]if _[7]<=0 and _[20]then
_[15]=0
_[6]=d[_[7]<=-d[4]and d[15]>1 and 15 or 14]_[10],_[20]=n
m[12]=d[16]if d[27]>0 then
c={}for j=1,30 do
c[j]=_[j]end
c[4]=d[27]c[6]=d[28]h[#h+1]=c
end
end
aJ=e[16][_[6]]_[33]=_[33]and(_[33][20]and _[33]or f)if _[15]>=aJ[2]and aJ[2]~=-1 then
_[6]=aJ[4]_[15]=0
S=e[16][_[6]][3]bA=d[23]&4>0
if S==1 then
for a,k in y(h)do
if k then
i=P-v(_,k)if i>0 then
at(k,i)end
end
end
elseif S==2 then
if bp(_,f,90)then
_[33]=f
_[6]=d[5]m[12]=d[6]end
Z(_,u,a,8)bI(_)elseif S==3 then
az,s=aQ(K(_,_[33])/45+.5)*45
k=1
while k<5 and not s do
i=ac(_,M(az+e[19][2][k],8))i[9]=_[9]s=Z(i,u,a,k)and(A[1]>=i[9]-24 or bA)k=k+1
end
if s then
for j=1,2 do
_[30+j]=i[j]-_[j]_[j]=i[j]end
_[3]=az
_[10]=n
else
Z(_,u,a,8)end
bI(_)b=v(_,_[33])if d[13]>0 and aw(_,_[33],1)and C(b,230)<aa()then
_[6]=d[13]end
if b<64 and d[12]>0 then
_[6]=d[12]end
elseif S==5 then
for a=1,11 do
f[3]=f[3]+e[19][9][a]o=e[14][23]bk()aT(f,1)end
f[3]=f[3]-20
elseif S>9 and _[20]then
_[3]=K(_,_[33])o=e[14][S]_[10]=n
ah=_[33]aT(_,a)end
end
if _[17]and _[17]>0 then
o=e[14][_[17]]if not Z(_,u,a)or _[9]<=A[1]then
if aZ then
at(aZ,d[21]*((aa()&7)+1),_[14])end
_[1]=_[1]-_[11]_[2]=_[2]-_[12]_[3]=0
_[6]=D[_[4]][5]_[10]=n
_[11]=0
_[12],_[17]=0
m[12]=d[16]_[19]=0
end
end
if _[6]==1 then
h[a]=u
else
am=sub(_,aP)L=U[2+am[1]//P+am[2]//P*br]if L then
L[0][#L[0]+1]=a
end
end
end
end
for a=1,8 do
if ad(a)and x[1][a+4]>0 then
ae=a
end
end
o=e[14][ae]f[3]=f[3]-as(3)*(E(aL,5,6)*1.5-6)aL=abs(as(3))*aL+1
R=f
for a=1,2 do
R=ac(R,M(f[3]-ai+90*a,as(a)*8.33))end
R[9]=f[9]for a=1,8 do
s=Z(R,n,1,a)end
if s then
for a=1,2 do
f[30+a]=R[a]-f[a]f[a]=R[a]end
if f[9]>A[1]then
f[19]=f[19]-1
else
f[9]=C(A[1],f[9]+4)f[19]=N(0,f[19])end
else
f[19]=0
f[9]=A[1]end
aK=x[1]c=o[1]if ad(31)and ap<=0 and(c==0 or aK[c]>=o[2])then
ak(3,n)ap=o[3]if c>0 then
aK[c]=aK[c]-o[2]end
bk()aT(f,1)end
ap=ap-1
if as(4)<0 then
_=ac(f,M(f[3],64))_[9]=f[9]aO,au=aw(f,_,2,1)_=e[2][au]if aO==u then
m[2]=au
c,s=_[4]for a=14,16 do
s=s or x[1][a]>0 and c==a
end
if c==1 or s then
aY(_,_[5])elseif c>3000 and c<3005 then
bz=aQ(c-3000)end
end
end
end
m[1]=ae
for a=3,14 do
m[a]=f[e[19][4][a]]or m[a]end
x[1][17]=bF
m[11]=x[1][bd%#x[1]+1]a=aj
bB=n
I=1
av=#h+#Y
while I<3 and bB do
c=I*9+6
if a<=#e[1]then
_=h[a]if _ then
if _[10]and a>1 then
m[c],_[10]=a
for j=1,8 do
m[c+j]=_[e[19][1][j]]end
I=I+1
end
else
m[c]=-a
be(h,a)I=I+1
av=av-1
end
else
_=Y[a-#h]if _[10]then
m[c],_[10]=a-#h+2^15
for j=1,6 do
m[c+j]=_[j]end
I=I+1
end
end
a=(a-2)%av+1
aj=C(aj,av)bB=a~=aj
end
aj=a
for a=1,32 do
output.setNumber(a,m[a])end
end
ar=ar+1
async.httpGet(8,"")end
