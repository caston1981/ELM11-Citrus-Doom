bU=""

T=128
L=180
bq=output
bJ=input
D=math
M=D.max
B=D.min
ax=D.floor
pi=D.pi
aq=bJ.getNumber
aa=bJ.getBool
ag=bq.setBool
n=true
i=false
w=ipairs
abs=D.abs
by=table.remove
ba=string
function ab(b,g)return{(b[1]+g[1]),(b[2]+g[2])}end
function sub(b,g)return{(b[1]-g[1]),(b[2]-g[2])}end
function bF(b)return D.sin(b/L*pi)end
function al(b)return D.cos(b/L*pi)end
function H(b,g)return D.atan(g[2]-b[2],g[1]-b[1])*L/pi end
function I(b,g,al)return M(B(al,b),g)end
function v(b,g)return D.sqrt(((b[1]-g[1])^2)+((b[2]-g[2])^2))end
function U(b,g)return{al(b)*g,bF(b)*g}end
function exp(b)return b[1],b[2]end
e={}aI=1
ao=3
aw=i
bc=n
ah=2
as=0
au=0
aL=0
R=0
aS=0
l=1
b_=0
bl=2
function aM(a,b,_)if a<32768then
_=e[7][a]return aM(_[_[3]*(b[2]-_[2])-_[4]*(b[1]-_[1])>0 and 8 or 7],b)else
a=e[5][e[6][a-32768][2]]return V[e[3][e[2][a[4]][a[5]+6]][6]]end
end
function aD(u,bj,x,bR,_,a,k)ai=h[x]f=A[ai[4]]aA,ad=f[18],f[19]G=aA
F=aM(#e[7],u)W,aj=exp(F)am=sub(u,aW)O=X[2+am[1]//T+am[2]//T*bm]or{}for a,_ in w(O[0]or{})do
c=h[_]if _~=x and c and ai[14]~=_ then
m=v(c,u)E=A[c[4]]if c[20]then
Z=m-E[18]if Z<G and E[23]&1>0 and(f[23]&1>0 or(u[9]+ad<c[9]or u[9]>c[9]+E[19])==i)then
aN=c
if bj==i then
return i
end
G=Z
aU=H(u,c)end
end
if x==1 and not c[10]then
if m<50then
b=E[25]if b>0then
for q,s in w(z[b])do
if s>0 and z[1][q]<z[2][q]then
c=z
h[_]=i
c[1][q]=ax(B(c[1][q]+s,c[2][q]))if I(q,5,12)==q then
ah=q-4
end
end
end
end
b=E[29]if b>0 then
b=e[11][b]for q=7,8 do
d[q]=I(d[q]+b[q*2-13],d[q],b[q*2-12])end
h[_]=i
end
end
end
end
end
aN=i
if aj-W<ad or W>u[9]+24then
return i
end
for a=1,#O do
_=e[2][O[a]]m,bw=bP(u,P[_[1]],P[_[2]])if m<G then
if(_[3]&1>0 and f[23]&1>0)or _[3]&4==0 then
if x>1 or aK>0 or _[3]&4>0 then
G=m
aU=bw
end
else
bg,aH=B(_[9],aj),M(_[8],W)if B(u[9],aj-ad)+24<aH or M(u[9],W)+ad>bg or bg-aH<ad then
G=m
aU=bw
else
if bR==1 and(_[3]&512>0 or x==1)and(_[4]==2 or x>1)then
aE(_,_[5])end
aj,W=bg,aH
end
end
end
end
F={W,aj}if bj then
if G~=aA then
_=ab(u,U(aU,G-aA))u[1]=_[1]u[2]=_[2]end
return n
end
return G==aA
end
function bP(p,y,av)N=v(y,p)bs=H(y,av)+90
bu=bs-H(p,y)bA=-N*bF(bu)aK=N*al(bu)aQ=bs
if aK<0 then
aQ=aQ+L
end
if bA<0 then
return N,H(p,y)elseif bA>v(av,y)then
return v(av,p),H(p,av)else
return abs(aK),aQ
end
end
function ap(p,y,aZ,x,_)aG=v(p,y)ar=aG
be=n
Z,aX=exp(p)bS,bQ=exp(y)aF,aV=exp(sub(y,p))az,bE=p[9]+32,y[9]+32
t=i
for a,_ in w(e[2])do
bz=P[_[1]]bB,bp=exp(sub(P[_[2]],bz))br,bn=exp(sub(p,bz))bK=bp*aF-bB*aV
S=(bB*bn-bp*br)/bK
bM=(aF*bn-aV*br)/bK
if I(S,0,1)==S and I(bM,0,1)==bM then
bh={Z+(S*aF),aX+(S*aV)}m=v(p,bh)C=az+(bE-az)*(m/aG)if I(C,_[8]+1,_[9])~=C then
be=i
if aZ==1 then
return i
end
if m<ar then
ar=m
bC,bv=exp(bh)bG=C
bk=a
end
end
end
end
if aZ>1 then
if aZ==3 then
for a,_ in w(h)do
if _ and a~=x then
f=A[_[4]]if f[23]&1>0 and _[20]then
m=v(p,_)if m<ar then
S=bP(_,p,y)N=(m/aG)C=az+(bE-az)*N
if I(C,_[9],_[9]+f[19])==C and S<f[18]then
ar=m
t=n
be=i
bC=Z+(bS-Z)*N
bv=aX+(bQ-aX)*N
bG=C
bk=a
end
end
end
end
end
end
return be,bk,{bC,bv,bG}end
return n
end
function httpReply(b,g,al)bN=au//2
au=0
end
function ae()aS=aS%256+1
return e[13][1][aS]end
function aB(_,a)f=A[_[4]]if f[23]&2>0 and _[7]>0 then
_[8]=_[8]-(a+1)//2
_[7]=_[7]-a//2+B(_[8],0)_[8]=M(_[8],0)if ae()<f[10]then
_[6]=f[9]_[15]=0
_[23]=d
_[10]=n
end
end
end
function bH(b,g,ay)return g[20]and abs(((H(b,g)-b[3]+L)%360)-L)<ay and ap(b,g,1)end
function bd(K,x)bI=an and(an[9]-K[9])*o[6]/v(an,K)or 0
for a=1,o[12]do
b={}for a=1,30 do
b[a]=K[a]end
b[4]=o[8]b[10]=n
b[14]=x
bi=(ae()/T-1)*o[10]bb=U(K[3]+bi,o[6])if o[7]>0then
h[#h+1]=b
f=A[b[4]]b[6]=f[3]b[9]=K[9]+o[13]b[11]=bb[1]b[12]=bb[2]b[17]=ah
b[19]=bI
else
c=ab(K,bb)c[9]=d[9]+bI
aR,at,c=ap(K,c,3,x)if not aR then
bD=sub(c,U(K[3]+bi,1))h[#h+1]=b
b[1]=bD[1]b[2]=bD[2]b[6]=A[b[4]][3]b[9]=c[3]b[19]=1
if t then
b=h[at]aB(b,o[9]*((ae()&3)+2))end
end
end
end
end
function aE(_,c)if c>-1 then
b=e[9][c]if b[1]>0 or ai[31]*_[10][2]-ai[32]*_[10][1]<0 then
g=V[b[1]]ac[g and g[30]or#ac+1]={c,1,g or ai}_[4]=b[7]b=b[8]>0 and aE(_,b[8])end
else
bc=n
ao=-c
r[9]=-c
end
end
function bO()bL,an=2048
for a,_ in w(h)do
if a>1 and _ and bH(d,_,10)then
m=v(_,d)if m<bL then
if A[_[4]][23]&2>0then
an=_
bL=m
end
end
end
end
end
function onTick()ag(9,aa(32))ag(2,aa(11))ag(3,i)for k=1,3 do
if aa(32)and(not aw)or not e[21]then
aT=property.getText(aI)a=1
j=bU
_=ba.sub(aT,a,a)while _~=bUdo
c=ba.byte(_)if c>64then
j=(j..c-65)+0
if l==1then
bo=j
e[j]=e[j]or{}elseif l==2then
C=j
ak=0
elseif l==3then
aY=j
else
if ak==0then
ak=C
aY=aY-1
aJ={}e[bo][#e[bo]+1]=aJ
end
aJ[#aJ+1]=j
ak=ak-1
l=M(ak,aY)>0 and l-1 or 0
end
l=l+1
j=bU
else
j=j.._
end
a=a+1
_=ba.sub(aT,a,a)end
aI=aI+1
aw=aT==bU
end
end
if aw then
if bc then
ac,bc={}af=1
for a=1,10 do
e[a]=e[a+10*ao]end
h=e[1]P=e[4]V=e[8]X=e[10]aW,X[1]=X[1]z=e[12]A=e[15]for a=14,16 do
z[1][a]=0
end
ao=ao+1
for a,_ in w(h)do
for k=7,40 do
_[k]=0
end
bT=_[5]+1
_[7]=A[_[4]][4]_[9],_[10]=aM(#e[7],_)[1]if _[4]==1 then
if d then
_[7]=d[7]_[8]=d[8]end
d=_
elseif _[5]&bl<1then
h[a]=i
end
end
bm=aW[3]end
for a,_ in w(e[2])do
_[10]=sub(P[_[2]],P[_[1]])if _[3]&4>0 then
f,E=V[e[3][_[6]][6]],V[e[3][_[7]][6]]_[8]=M(f[1],E[1])_[9],f[30],E[30]=B(f[2],E[2])else
_[8],_[9]=0,0
end
end
r={}for a=1,32 do
r[a]=0
end
R=B(R+1/bN,2/35)ag(1,R>=0)if R>=0 then
R=R-1/35
aL=aL+1
for a=2,#X do
X[a][0]={}end
for a,s in w(ac)do
_=e[9][s[1]]c=s[3]b=_[2]f=c[b]c[b]=I(_[3],f-_[4],f+_[4])+0
f=c[b]if f==_[3]then
ac[a]=s[2]==_[5]and{_[6],1,c}or{s[1],s[2]+1,c}if _[6]==0 then
by(ac,a)end
end
c[10]=c[10]or f~=s
c[30]=a
end
for a,_ in w(h)do
if _ then
for k,s in w({1,2,9})do
_[s]=_[s]+_[s+10]end
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
bf=e[16][_[6]]if _[15]>=bf[2]and bf[2]~=-1then
_[6]=bf[4]_[15]=0
Y=e[16][_[6]][3]if Y==1 then
for a,l in w(h)do
if l then
j=T-v(_,l)if j>0 then
aB(l,j)end
end
end
elseif Y==2then
if bH(_,d,90)then
_[23]=d
_[6]=f[5]end
elseif Y==3then
ay=ax(H(_,_[23])/45+.5)*45
t=i
l=1
bt=f[23]&4>0
while l<5 and not t do
j=ab(_,U(ay+e[19][2][l],8))j[9]=_[9]t=aD(j,i,a,l)and(F[1]>=j[9]-24 or bt)l=l+1
end
if t then
for k=1,2 do
_[30+k]=j[k]-_[k]_[k]=j[k]end
_[3]=ay
_[10]=n
else
aD(_,i,a)end
_[9]=bt and _[9]or F[1]b=v(_,_[23])if f[13]>0 and ap(_,_[23],1)and B(b,230)<ae()then
_[6]=f[13]end
if b<64 and f[12]>0then
_[6]=f[12]end
elseif Y==5then
for a=1,11 do
d[3]=d[3]+e[19][9][a]o=e[14][23]bO()bd(d,1)end
d[3]=d[3]-20
elseif Y>9 and _[20]then
_[3]=H(_,_[23])o=e[14][Y]_[10]=n
an=_[23]bd(_,a)end
end
if _[17]and _[17]>0then
o=e[14][_[17]]if not aD(_,i,a)or _[9]<=F[1]then
if aN then
aB(aN,f[21]*((ae()&7)+1))end
_[1]=_[1]-_[11]_[2]=_[2]-_[12]_[3]=0
_[6]=A[_[4]][5]_[10]=n
_[11]=0
_[12],_[17]=0
_[19]=0
end
end
if _[6]==1then
h[a]=i
else
am=sub(_,aW)O=X[2+am[1]//T+am[2]//T*bm]if O then
O[0][#O[0]+1]=a
end
end
end
end
for a=1,8 do
if aa(a)and z[1][a+4]>0then
ah=a
end
end
o=e[14][ah]d[3]=d[3]-aq(3)*(I(b_,5,6)*1.5-6)b_=abs(aq(3))*b_+1
Q=d
for a=1,2 do
Q=ab(Q,U(d[3]-L+90*a,aq(a)*8.33))end
Q[9]=d[9]for a=1,8 do
t=aD(Q,n,1,a)end
if t then
for a=1,2 do
d[30+a]=Q[a]-d[a]d[a]=Q[a]end
if d[9]>F[1]then
d[19]=d[19]-1
else
d[9]=B(F[1],d[9]+4)d[19]=M(0,d[19])end
else
d[19]=0
d[9]=F[1]t=aL%4>0 or F[6]<18 or aB(d,10)end
aP=z[1]c=o[1]if aa(31)and as<=0 and(c==0 or aP[c]>=o[2])then
ag(3,n)as=o[3]if c>0then
aP[c]=aP[c]-o[2]end
bO()bd(d,1)end
as=as-1
if aq(4)<0 then
_=ab(d,U(d[3],64))_[9]=d[9]aR,at=ap(d,_,2,1)_=e[2][at]if aR==i then
r[2]=at
c,t=_[4]for a=14,16 do
t=t or z[1][a]>0 and c==a
end
if c==1 or t then
aE(_,_[5])elseif c>3000 and c<3005then
bl=ax(c-3000)end
end
end
end
r[1]=ah
for a=3,8 do
r[a]=d[e[19][4][a]]end
r[5]=1
r[13]=d[3]a=af
bx=n
J=1
aC=#h+#V
while J<3 and bx do
c=J*9+5
if a<=#h then
_=h[a]if a~=1 then
if _ then
if _[10]then
_[10]=i
r[c]=a
for k=1,8 do
r[c+k]=_[e[19][1][k]]end
J=J+1
end
else
r[c]=-a
by(h,a)J=J+1
aC=aC-1
end
end
else
_=V[a-#h]if _[10]then
_[10]=i
r[c]=a-#h+2^15
for k=1,6 do
r[c+k]=_[k]end
J=J+1
end
end
a=((a-2)%aC)+1
af=B(af,aC)bx=a~=af
end
af=a
for a=1,32 do
bq.setNumber(a,r[a])end
end
au=au+1
async.httpGet(8,bU)end
function onDraw()aO=screen.drawText
aO(26,137,bN)if aw then
for a=1,4 do
b=124+a*7
aO(240,b,ax(z[1][a]))aO(230,b,z[1][13+a])end
end
end
