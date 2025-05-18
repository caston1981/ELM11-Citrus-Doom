bU=""

P=128
L=180
bo=output
bA=input
C=math
M=C.max
y=C.min
ap=C.floor
pi=C.pi
au=bA.getNumber
ak=bA.getBool
an=bo.setBool
n=true
i=false
w=ipairs
abs=C.abs
bO=table.remove
aW=string
function ac(b,g)return{(b[1]+g[1]),(b[2]+g[2])}end
function sub(b,g)return{(b[1]-g[1]),(b[2]-g[2])}end
function bH(b)return C.sin(b/L*pi)end
function aj(b)return C.cos(b/L*pi)end
function K(b,g)return C.atan(g[2]-b[2],g[1]-b[1])*L/pi end
function G(b,g,aj)return M(y(aj,b),g)end
function z(b,g)return C.sqrt(((b[1]-g[1])^2)+((b[2]-g[2])^2))end
function V(b,g)return{aj(b)*g,bH(b)*g}end
function exp(b)return b[1],b[2]end
e={}bd=1
aA=3
aC=i
aK=n
ag=2
ar=0
as=0
Z=0
aI=0
m=1
aE=0
by=2
function aO(a,b,_)if a<32768then
_=e[7][a]return aO(_[_[3]*(b[2]-_[2])-_[4]*(b[1]-_[1])>0 and 8 or 7],b)else
a=e[5][e[6][a-32768][2]]return X[e[3][e[2][a[4]][a[5]+6]][6]]end
end
function av(r,bi,v,bP,_,a,k)ab=h[v]f=B[ab[4]]aB,ae=f[18],f[19]I=aB
E=aO(#e[7],r)W,aa=exp(E)ad=sub(r,bb)O=Q[2+ad[1]//P+ad[2]//P*bC]or{}for a,_ in w(O[0]or{})do
c=h[_]if _~=v and c and ab[14]~=_ then
l=z(c,r)D=B[c[4]]if c[20]then
Y=l-D[18]if Y<I and D[23]&1>0 and(f[23]&1>0 or(r[9]+ae<c[9]or r[9]>c[9]+D[19])==i)then
aL=c
if bi==i then
return i
end
I=Y
aZ=K(r,c)end
end
if v==1 and not c[10]then
if l<50then
b=D[25]if b>0then
for q,t in w(A[b])do
if t>0 and A[1][q]<A[2][q]then
c=A
h[_]=i
c[1][q]=ap(y(c[1][q]+t,c[2][q]))if G(q,5,12)==q then
ag=q-4
end
end
end
end
b=D[29]if b>0 then
b=e[11][b]for q=7,8 do
d[q]=G(d[q]+b[q*2-13],d[q],b[q*2-12])end
h[_]=i
end
end
end
end
end
aL=i
if aa-W<ae or W>r[9]+24then
return i
end
for a=1,#O do
_=e[2][O[a]]l,bs=bJ(r,U[_[1]],U[_[2]])if l<I then
if bP==1 and(_[3]&512>0 or v==1)and(_[4]==2 or v>1)then
aU(_,_[5])end
if(_[3]&1>0 and f[23]&1>0)or _[3]&4==0 then
if v>1 or aS>0then
I=l
aZ=bs
end
else
aN,aV=y(_[9],aa),M(_[8],W)if y(r[9],aa-ae)+24<aV or M(r[9],W)+ae>aN or aN-aV<ae then
I=l
aZ=bs
else
aa,W=aN,aV
end
end
end
end
E={W,aa}if bi then
if I~=aB then
_=ac(r,V(aZ,I-aB))r[1]=_[1]r[2]=_[2]end
return n
end
return I==aB
end
function bJ(p,x,ao)N=z(x,p)bN=K(x,ao)+90
bB=bN-K(p,x)bt=-N*bH(bB)aS=N*aj(bB)bf=bN
if aS<0 then
bf=bf+L
end
if bt<0 then
return N,K(p,x)elseif bt>z(ao,x)then
return z(ao,p),K(p,ao)else
return abs(aS),bf
end
end
function at(p,x,ba,v,_)aD=z(p,x)aq=aD
aX=n
Y,aG=exp(p)bR,bQ=exp(x)be,aF=exp(sub(x,p))ay,bq=p[9]+32,x[9]+32
u=i
for a,_ in w(e[2])do
bz=U[_[1]]bv,bh=exp(sub(U[_[2]],bz))bG,bj=exp(sub(p,bz))bg=bh*be-bv*aF
T=(bv*bj-bh*bG)/bg
bu=(be*bj-aF*bG)/bg
if G(T,0,1)==T and G(bu,0,1)==bu then
br={Y+(T*be),aG+(T*aF)}l=z(p,br)F=ay+(bq-ay)*(l/aD)if G(F,_[8]+1,_[9])~=F then
aX=i
if ba==1 then
return i
end
if l<aq then
aq=l
bD,bM=exp(br)bx=F
bn=a
end
end
end
end
if ba>1 then
if ba==3 then
for a,_ in w(h)do
if _ and a~=v then
f=B[_[4]]if f[23]&1>0 and _[20]then
l=z(p,_)if l<aq then
T=bJ(_,p,x)N=(l/aD)F=ay+(bq-ay)*N
if G(F,_[9],_[9]+f[19])==F and T<f[18]then
aq=l
u=n
aX=i
bD=Y+(bR-Y)*N
bM=aG+(bQ-aG)*N
bx=F
bn=a
end
end
end
end
end
end
return aX,bn,{bD,bM,bx}end
return n
end
function httpReply(b,g,aj)bm=as//2
as=0
end
function am()aI=aI%256+1
return e[13][1][aI]end
function aT(_,a)f=B[_[4]]if f[23]&2>0 and _[7]>0 then
_[8]=_[8]-(a+1)//2
_[7]=_[7]-a//2+y(_[8],0)_[8]=M(_[8],0)if am()<f[10]then
_[6]=f[9]_[15]=0
_[23]=d
_[10]=n
end
end
end
function bl(b,g,az)return g[20]and abs(((K(b,g)-b[3]+L)%360)-L)<az and at(b,g,1)end
function b_(J,v)bK=ai and(ai[9]-J[9])*o[6]/z(ai,J)or 0
for a=1,o[12]do
b={}for a=1,30 do
b[a]=J[a]end
b[4]=o[8]b[10]=n
b[14]=v
bF=(am()/P-1)*o[10]aR=V(J[3]+bF,o[6])if o[7]>0then
h[#h+1]=b
f=B[b[4]]b[6]=f[3]b[9]=J[9]+o[13]b[11]=aR[1]b[12]=aR[2]b[17]=ag
b[19]=bK
else
c=ac(J,aR)c[9]=d[9]+bK
aQ,aw,c=at(J,c,3,v)if not aQ then
bw=sub(c,V(J[3]+bF,1))h[#h+1]=b
b[1]=bw[1]b[2]=bw[2]b[6]=B[b[4]][3]b[9]=c[3]b[19]=1
if u then
b=h[aw]aT(b,o[9]*((am()&3)+2))end
end
end
end
end
function aU(_,c)if c>-1 then
b=e[9][c]if b[1]>0 or ab[31]*_[10][2]-ab[32]*_[10][1]<0 then
g=X[b[1]]ah[g and g[30]or#ah+1]={c,1,g or ab}_[4]=b[7]b=b[8]>0 and aU(_,b[8])end
else
aK=n
aA=-c
s[9]=-c
end
end
function bL()bp,ai=2048
for a,_ in w(h)do
if a>1 and _ and bl(d,_,10)then
l=z(_,d)if l<bp then
if B[_[4]][23]&2>0then
ai=_
bp=l
end
end
end
end
end
function onTick()an(9,ak(32))an(2,ak(11))an(3,i)for k=1,3 do
if ak(32)and(not aC)or not e[21]then
aM=property.getText(bd)a=1
j=bU
_=aW.sub(aM,a,a)while _~=bUdo
c=aW.byte(_)if c>64then
j=(j..c-65)+0
if m==1then
bk=j
e[j]=e[j]or{}elseif m==2then
F=j
af=0
elseif m==3then
aJ=j
else
if af==0then
af=F
aJ=aJ-1
aY={}e[bk][#e[bk]+1]=aY
end
aY[#aY+1]=j
af=af-1
m=M(af,aJ)>0 and m-1 or 0
end
m=m+1
j=bU
else
j=j.._
end
a=a+1
_=aW.sub(aM,a,a)end
bd=bd+1
aC=aM==bU
end
end
if aC then
if aK then
ah,aK={}al=1
for a=1,10 do
e[a]=e[a+10*aA]end
h=e[1]U=e[4]X=e[8]Q=e[10]bb,Q[1]=Q[1]A=e[12]B=e[15]for a=14,16 do
A[1][a]=0
end
aA=aA+1
for a,_ in w(h)do
for k=7,40 do
_[k]=0
end
bT=_[5]+1
_[7]=B[_[4]][4]_[9],_[10]=aO(#e[7],_)[1]if _[4]==1 then
if d then
_[7]=d[7]_[8]=d[8]end
d=_
elseif _[5]&by<1then
h[a]=i
end
end
bC=bb[3]end
for a,_ in w(e[2])do
_[10]=sub(U[_[2]],U[_[1]])if _[3]&4>0 then
f,D=X[e[3][_[6]][6]],X[e[3][_[7]][6]]_[8]=M(f[1],D[1])_[9],f[30],D[30]=y(f[2],D[2])else
_[8],_[9]=0,0
end
end
s={}for a=1,32 do
s[a]=0
end
Z=y(Z+1/bm,2/35)an(1,Z>=0)if Z>=0 then
Z=Z-1/35
for a=2,#Q do
Q[a][0]={}end
for a,t in w(ah)do
_=e[9][t[1]]c=t[3]b=_[2]f=c[b]c[b]=G(_[3],f-_[4],f+_[4])+0
f=c[b]if abs(f-_[3])<.1then
ah[a]=t[2]==_[5]and{_[6],1,c}or{t[1],t[2]+1,c}if _[6]==0 then
bO(ah,a)end
end
c[10]=c[10]or f~=t
c[30]=a
end
for a,_ in w(h)do
if _ then
for k,t in w({1,2,9})do
_[t]=_[t]+_[t+10]end
_[15]=_[15]+1
f=B[_[4]]if _[7]<=0 and _[20]then
_[15]=0
_[6]=f[_[7]<=-f[4]and f[15]>1 and 15or 14]_[10],_[20]=n
if f[27]>0 then
c={}for k=1,30 do
c[k]=_[k]end
c[4]=f[27]c[6]=f[28]h[#h+1]=c
end
end
bc=e[16][_[6]]if _[15]>=bc[2]and bc[2]~=-1then
_[6]=bc[4]_[15]=0
R=e[16][_[6]][3]if R==1 then
for a,m in w(h)do
if m then
j=P-z(_,m)if j>0 then
aT(m,j)end
end
end
elseif R==2then
if bl(_,d,90)then
_[23]=d
_[6]=f[5]end
elseif R==3then
az=ap(K(_,_[23])/45+.5)*45
u=i
m=1
bI=f[23]&4>0
while m<5 and not u do
j=ac(_,V(az+e[19][2][m],8))j[9]=_[9]u=av(j,i,a,m)and(E[1]>=j[9]-24 or bI)m=m+1
end
if u then
for k=1,2 do
_[30+k]=j[k]-_[k]_[k]=j[k]end
_[3]=az
_[10]=n
else
av(_,i,a)end
_[9]=bI and _[9]or E[1]b=z(_,_[23])if f[13]>0 and at(_,_[23],1)and y(b,230)<am()then
_[6]=f[13]end
if b<64 and f[12]>0then
_[6]=f[12]end
elseif R==5then
for a=1,11 do
d[3]=d[3]+e[19][9][a]o=e[14][23]bL()b_(d,1)end
d[3]=d[3]-20
elseif R>9 and _[20]then
_[3]=K(_,_[23])o=e[14][R]_[10]=n
ai=_[23]b_(_,a)end
end
if _[17]and _[17]>0then
o=e[14][_[17]]if not av(_,i,a)or _[9]<=E[1]then
if aL then
aT(aL,f[21]*((am()&7)+1))end
_[1]=_[1]-_[11]_[2]=_[2]-_[12]_[3]=0
_[6]=B[_[4]][5]_[10]=n
_[11]=0
_[12]=0
_[17]=bS
_[19]=0
end
end
if _[6]==1then
h[a]=i
else
ad=sub(_,bb)O=Q[2+ad[1]//P+ad[2]//P*bC]if O then
O[0][#O[0]+1]=a
end
end
end
end
for a=1,8 do
if ak(a)and A[1][a+4]>0then
ag=a
end
end
o=e[14][ag]d[3]=d[3]-au(3)*(G(aE,5,6)*1.5-6)aE=abs(au(3))*aE+1
S=d
for a=1,2 do
S=ac(S,V(d[3]-L+90*a,au(a)*8.33))end
S[9]=d[9]for a=1,8 do
u=av(S,n,1,a)end
if u then
for a=1,2 do
d[30+a]=S[a]-d[a]d[a]=S[a]end
if d[9]<=E[1]then
d[9]=y(E[1],d[9]+4)d[19]=M(0,d[19])else
if d[9]>=E[2]-56then
d[9]=E[2]-56
d[19]=y(0,d[19])end
d[19]=d[19]-1
end
else
d[19]=0
end
aH=A[1]c=o[1]if ak(31)and ar<=0 and(c==0 or aH[c]>=o[2])then
an(3,n)ar=o[3]if c>0then
aH[c]=aH[c]-o[2]end
bL()b_(d,1)end
ar=ar-1
if au(4)<0 then
_=ac(d,V(d[3],64))_[9]=d[9]aQ,aw=at(d,_,2,1)_=e[2][aw]if aQ==i then
s[2]=aw
c,u=_[4]for a=14,16 do
u=u or A[1][a]>0 and c==a
end
if c==1 or u then
aU(_,_[5])elseif c>3000 and c<3005then
by=ap(c-3000)end
end
end
end
s[1]=ag
for a=3,8 do
s[a]=d[e[19][4][a]]end
s[5]=1
s[13]=d[3]a=al
bE=n
H=1
ax=#h+#X
while H<3 and bE do
c=H*9+5
if a<=#h then
_=h[a]if a~=1 then
if _ then
if _[10]then
_[10]=i
s[c]=a
for k=1,8 do
s[c+k]=_[e[19][1][k]]end
H=H+1
end
else
s[c]=-a
bO(h,a)H=H+1
ax=ax-1
end
end
else
_=X[a-#h]if _[10]then
_[10]=i
s[c]=a-#h+2^15
for k=1,6 do
s[c+k]=_[k]end
H=H+1
end
end
a=((a-2)%ax)+1
al=y(al,ax)bE=a~=al
end
al=a
for a=1,32 do
bo.setNumber(a,s[a])end
end
as=as+1
async.httpGet(8,bU)end
function onDraw()aP=screen.drawText
aP(26,137,bm)if aC then
for a=1,4 do
b=124+a*7
aP(240,b,ap(A[1][a]))aP(230,b,A[1][13+a])end
end
end
