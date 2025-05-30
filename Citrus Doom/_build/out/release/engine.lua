bU=""

T=128
O=180
bw=output
bi=input
D=math
N=D.max
B=D.min
at=D.floor
pi=D.pi
av=bi.getNumber
ad=bi.getBool
ai=bw.setBool
n=true
i=false
v=ipairs
abs=D.abs
bm=table.remove
aM=string
function al(b,g)return{(b[1]+g[1]),(b[2]+g[2])}end
function sub(b,g)return{(b[1]-g[1]),(b[2]-g[2])}end
function bG(b)return D.sin(b/O*pi)end
function ag(b)return D.cos(b/O*pi)end
function I(b,g)return D.atan(g[2]-b[2],g[1]-b[1])*O/pi end
function G(b,g,ag)return N(B(ag,b),g)end
function x(b,g)return D.sqrt(((b[1]-g[1])^2)+((b[2]-g[2])^2))end
function Y(b,g)return{ag(b)*g,bG(b)*g}end
function exp(b)return b[1],b[2]end
e={}aV=1
aC=3
ap=i
bg=n
af=2
aq=0
ar=0
aN=0
U=0
aZ=0
m=1
aP=0
by=2
function b_(a,b,_)if a<32768then
_=e[7][a]return b_(_[_[3]*(b[2]-_[2])-_[4]*(b[1]-_[1])>0 and 8 or 7],b)else
a=e[5][e[6][a-32768][2]]return Z[e[3][e[2][a[4]][a[5]+6]][6]]end
end
function aB(u,bs,w,bS,_,a,k)aa=h[w]f=z[aa[4]]aA,am=f[18],f[19]J=aA
F=b_(#e[7],u)Q,an=exp(F)ac=sub(u,aL)L=W[2+ac[1]//T+ac[2]//T*bN]or{}for a,_ in v(L[0]or{})do
c=h[_]if _~=w and c and aa[14]~=_ then
l=x(c,u)C=z[c[4]]if c[20]then
R=l-C[18]if R<J and C[23]&1>0 and(f[23]&1>0 or(u[9]+am<c[9]or u[9]>c[9]+C[19])==i)then
bd=c
if bs==i then
return i
end
J=R
aE=I(u,c)end
end
if w==1 and not c[10]then
if l<50then
b=C[25]if b>0then
for q,t in v(A[b])do
if t>0 and A[1][q]<A[2][q]then
c=A
h[_]=i
c[1][q]=at(B(c[1][q]+t,c[2][q]))if G(q,5,12)==q then
af=q-4
end
end
end
end
b=C[29]if b>0 then
b=e[11][b]for q=7,8 do
d[q]=G(d[q]+b[q*2-13],d[q],b[q*2-12])end
h[_]=i
end
end
end
end
end
bd=i
if an-Q<am or Q>u[9]+24then
return i
end
for a=1,#L do
_=e[2][L[a]]l,bJ=bt(u,V[_[1]],V[_[2]])if l<J then
if(_[3]&1>0 and f[23]&1>0)or _[3]&4==0 then
if w>1 or aO>0 or _[3]&4>0 then
J=l
aE=bJ
end
else
aX,aF=B(_[9],an),N(_[8],Q)if B(u[9],an-am)+24<aF or N(u[9],Q)+am>aX or aX-aF<am then
J=l
aE=bJ
else
if bS==1 and(_[3]&512>0 or w==1)and(_[4]==2 or w>1)then
aQ(_,_[5])end
an,Q=aX,aF
end
end
end
end
F={Q,an}if bs then
if J~=aA then
_=al(u,Y(aE,J-aA))u[1]=_[1]u[2]=_[2]end
return n
end
return J==aA
end
function bt(p,y,au)M=x(y,p)bj=I(y,au)+90
br=bj-I(p,y)bB=-M*bG(br)aO=M*ag(br)bc=bj
if aO<0 then
bc=bc+O
end
if bB<0 then
return M,I(p,y)elseif bB>x(au,y)then
return x(au,p),I(p,au)else
return abs(aO),bc
end
end
function as(p,y,aT,w,_)bf=x(p,y)aw=bf
be=n
R,aG=exp(p)bR,bQ=exp(y)aH,aY=exp(sub(y,p))ay,bu=p[9]+32,y[9]+32
r=i
for a,_ in v(e[2])do
bz=V[_[1]]bq,bk=exp(sub(V[_[2]],bz))bl,bA=exp(sub(p,bz))bH=bk*aH-bq*aY
S=(bq*bA-bk*bl)/bH
bo=(aH*bA-aY*bl)/bH
if G(S,0,1)==S and G(bo,0,1)==bo then
bn={R+(S*aH),aG+(S*aY)}l=x(p,bn)E=ay+(bu-ay)*(l/bf)if G(E,_[8]+1,_[9])~=E then
be=i
if aT==1 then
return i
end
if l<aw then
aw=l
bO,bI=exp(bn)bK=E
bp=a
end
end
end
end
if aT>1 then
if aT==3 then
for a,_ in v(h)do
if _ and a~=w then
f=z[_[4]]if f[23]&1>0 and _[20]then
l=x(p,_)if l<aw then
S=bt(_,p,y)M=(l/bf)E=ay+(bu-ay)*M
if G(E,_[9],_[9]+f[19])==E and S<f[18]then
aw=l
r=n
be=i
bO=R+(bR-R)*M
bI=aG+(bQ-aG)*M
bK=E
bp=a
end
end
end
end
end
end
return be,bp,{bO,bI,bK}end
return n
end
function httpReply(b,g,ag)bM=ar//2
ar=0
end
function ak()aZ=aZ%256+1
return e[13][1][aZ]end
function az(_,a)f=z[_[4]]if f[23]&2>0 and _[7]>0 then
_[8]=_[8]-(a+1)//2
_[7]=_[7]-a//2+B(_[8],0)_[8]=N(_[8],0)if ak()<f[10]then
_[6]=f[9]_[15]=0
_[23]=d
_[10]=n
end
end
end
function bL(b,g,aD)return g[20]and abs(((I(b,g)-b[3]+O)%360)-O)<aD and as(b,g,1)end
function aU(H,w)bx=ae and(ae[9]-H[9])*o[6]/x(ae,H)or 0
for a=1,o[12]do
b={}for a=1,30 do
b[a]=H[a]end
b[4]=o[8]b[10]=n
b[14]=w
bP=(ak()/T-1)*o[10]aS=Y(H[3]+bP,o[6])if o[7]>0then
h[#h+1]=b
f=z[b[4]]b[6]=f[3]b[9]=H[9]+o[13]b[11]=aS[1]b[12]=aS[2]b[17]=af
b[19]=bx
else
c=al(H,aS)c[9]=d[9]+bx
ba,ao,c=as(H,c,3,w)if not ba then
bC=sub(c,Y(H[3]+bP,1))h[#h+1]=b
b[1]=bC[1]b[2]=bC[2]b[6]=z[b[4]][3]b[9]=c[3]b[19]=1
if r then
b=h[ao]az(b,o[9]*((ak()&3)+2))end
end
end
end
end
function aQ(_,c)if c>-1 then
b=e[9][c]if b[1]>0 or aa[31]*_[10][2]-aa[32]*_[10][1]<0 then
g=Z[b[1]]ab[g and g[30]or#ab+1]={c,1,g or aa}_[4]=b[7]b=b[8]>0 and aQ(_,b[8])end
else
bg=n
aC=-c
s[9]=-c
end
end
function bv()bF,ae=2048
for a,_ in v(h)do
if a>1 and _ and bL(d,_,10)then
l=x(_,d)if l<bF then
if z[_[4]][23]&2>0then
ae=_
bF=l
end
end
end
end
end
function onTick()ai(9,ad(32))ai(2,ad(11))ai(3,i)for k=1,3 do
if ad(32)and(not ap)or not e[21]then
aJ=property.getText(aV)a=1
j=bU
_=aM.sub(aJ,a,a)while _~=bUdo
c=aM.byte(_)if c>64then
j=(j..c-65)+0
if m==1then
bh=j
e[j]=e[j]or{}elseif m==2then
E=j
aj=0
elseif m==3then
aI=j
else
if aj==0then
aj=E
aI=aI-1
aK={}e[bh][#e[bh]+1]=aK
end
aK[#aK+1]=j
aj=aj-1
m=N(aj,aI)>0 and m-1 or 0
end
m=m+1
j=bU
else
j=j.._
end
a=a+1
_=aM.sub(aJ,a,a)end
aV=aV+1
ap=aJ==bU
end
end
if ap then
if bg then
ab,bg={}ah=1
for a=1,10 do
e[a]=e[a+10*aC]end
h=e[1]V=e[4]Z=e[8]W=e[10]aL,W[1]=W[1]A=e[12]z=e[15]for a=14,16 do
A[1][a]=0
end
aC=aC+1
for a,_ in v(h)do
for k=7,40 do
_[k]=0
end
bT=_[5]+1
_[7]=z[_[4]][4]_[9],_[10]=b_(#e[7],_)[1]if _[4]==1 then
if d then
_[7]=d[7]_[8]=d[8]end
d=_
elseif _[5]&by<1then
h[a]=i
end
end
bN=aL[3]end
for a,_ in v(e[2])do
_[10]=sub(V[_[2]],V[_[1]])if _[3]&4>0 then
f,C=Z[e[3][_[6]][6]],Z[e[3][_[7]][6]]_[8]=N(f[1],C[1])_[9],f[30],C[30]=B(f[2],C[2])else
_[8],_[9]=0,0
end
end
s={}for a=1,32 do
s[a]=0
end
U=B(U+1/bM,2/35)ai(1,U>=0)if U>=0 then
U=U-1/35
aN=aN+1
for a=2,#W do
W[a][0]={}end
for a,t in v(ab)do
_=e[9][t[1]]c=t[3]b=_[2]f=c[b]c[b]=G(_[3],f-_[4],f+_[4])+0
f=c[b]if f==_[3]then
ab[a]=t[2]==_[5]and{_[6],1,c}or{t[1],t[2]+1,c}if _[6]==0 then
bm(ab,a)end
end
c[10]=c[10]or f~=t
c[30]=a
end
for a,_ in v(h)do
if _ then
for k,t in v({1,2,9})do
_[t]=_[t]+_[t+10]end
_[15]=_[15]+1
f=z[_[4]]if _[7]<=0 and _[20]then
_[15]=0
_[6]=f[_[7]<=-f[4]and f[15]>1 and 15or 14]_[10],_[20]=n
if f[27]>0 then
c={}for k=1,30 do
c[k]=_[k]end
c[4]=f[27]c[6]=f[28]h[#h+1]=c
end
end
aW=e[16][_[6]]if _[15]>=aW[2]and aW[2]~=-1then
_[6]=aW[4]_[15]=0
P=e[16][_[6]][3]if P==1 then
for a,m in v(h)do
if m then
j=T-x(_,m)if j>0 then
az(m,j)end
end
end
elseif P==2then
if bL(_,d,90)then
_[23]=d
_[6]=f[5]end
elseif P==3then
aD=at(I(_,_[23])/45+.5)*45
r=i
m=1
bD=f[23]&4>0
while m<5 and not r do
j=al(_,Y(aD+e[19][2][m],8))j[9]=_[9]r=aB(j,i,a,m)and(F[1]>=j[9]-24 or bD)m=m+1
end
if r then
for k=1,2 do
_[30+k]=j[k]-_[k]_[k]=j[k]end
_[3]=aD
_[10]=n
else
aB(_,i,a)end
_[9]=bD and _[9]or F[1]b=x(_,_[23])if f[13]>0 and as(_,_[23],1)and B(b,230)<ak()then
_[6]=f[13]end
if b<64 and f[12]>0then
_[6]=f[12]end
elseif P==5then
for a=1,11 do
d[3]=d[3]+e[19][9][a]o=e[14][23]bv()aU(d,1)end
d[3]=d[3]-20
elseif P>9 and _[20]then
_[3]=I(_,_[23])o=e[14][P]_[10]=n
ae=_[23]aU(_,a)end
end
if _[17]and _[17]>0then
o=e[14][_[17]]if not aB(_,i,a)or _[9]<=F[1]then
if bd then
az(bd,f[21]*((ak()&7)+1))end
_[1]=_[1]-_[11]_[2]=_[2]-_[12]_[3]=0
_[6]=z[_[4]][5]_[10]=n
_[11]=0
_[12],_[17]=0
_[19]=0
end
end
if _[6]==1then
h[a]=i
else
ac=sub(_,aL)L=W[2+ac[1]//T+ac[2]//T*bN]if L then
L[0][#L[0]+1]=a
end
end
end
end
for a=1,8 do
if ad(a)and A[1][a+4]>0then
af=a
end
end
o=e[14][af]d[3]=d[3]-av(3)*(G(aP,5,6)*1.5-6)aP=abs(av(3))*aP+1
X=d
for a=1,2 do
X=al(X,Y(d[3]-O+90*a,av(a)*8.33))end
X[9]=d[9]for a=1,8 do
r=aB(X,n,1,a)end
if r then
for a=1,2 do
d[30+a]=X[a]-d[a]d[a]=X[a]end
if d[9]>F[1]then
d[19]=d[19]-1
else
d[9]=B(F[1],d[9]+4)d[19]=N(0,d[19])end
else
d[19]=0
d[9]=F[1]r=aN%4>0 or F[6]<18 or az(d,10)end
bb=A[1]c=o[1]if ad(31)and aq<=0 and(c==0 or bb[c]>=o[2])then
ai(3,n)aq=o[3]if c>0then
bb[c]=bb[c]-o[2]end
bv()aU(d,1)end
aq=aq-1
if av(4)<0 then
_=al(d,Y(d[3],64))_[9]=d[9]ba,ao=as(d,_,2,1)_=e[2][ao]if ba==i then
s[2]=ao
c,r=_[4]for a=14,16 do
r=r or A[1][a]>0 and c==a
end
if c==1 or r then
aQ(_,_[5])elseif c>3000 and c<3005then
by=at(c-3000)end
end
end
end
s[1]=af
for a=3,8 do
s[a]=d[e[19][4][a]]end
s[5]=1
s[13]=d[3]a=ah
bE=n
K=1
ax=#h+#Z
while K<3 and bE do
c=K*9+5
if a<=#h then
_=h[a]if a~=1 then
if _ then
if _[10]then
_[10]=i
s[c]=a
for k=1,8 do
s[c+k]=_[e[19][1][k]]end
K=K+1
end
else
s[c]=-a
bm(h,a)K=K+1
ax=ax-1
end
end
else
_=Z[a-#h]if _[10]then
_[10]=i
s[c]=a-#h+2^15
for k=1,6 do
s[c+k]=_[k]end
K=K+1
end
end
a=((a-2)%ax)+1
ah=B(ah,ax)bE=a~=ah
end
ah=a
for a=1,32 do
bw.setNumber(a,s[a])end
end
ar=ar+1
async.httpGet(8,bU)end
function onDraw()aR=screen.drawText
aR(26,137,bM)if ap then
for a=1,4 do
b=124+a*7
aR(240,b,at(A[1][a]))aR(200,b,A[1][13+a])end
end
end
