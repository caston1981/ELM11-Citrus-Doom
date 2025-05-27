bU=""

Y=128
M=180
bl=output
br=input
F=math
O=F.max
B=F.min
aC=F.floor
pi=F.pi
au=br.getNumber
aj=br.getBool
al=bl.setBool
o=true
i=false
w=ipairs
abs=F.abs
bE=table.remove
bc=string
function aa(b,g)return{(b[1]+g[1]),(b[2]+g[2])}end
function sub(b,g)return{(b[1]-g[1]),(b[2]-g[2])}end
function bv(b)return F.sin(b/M*pi)end
function ad(b)return F.cos(b/M*pi)end
function I(b,g)return F.atan(g[2]-b[2],g[1]-b[1])*M/pi end
function J(b,g,ad)return O(B(ad,b),g)end
function x(b,g)return F.sqrt(((b[1]-g[1])^2)+((b[2]-g[2])^2))end
function W(b,g)return{ad(b)*g,bv(b)*g}end
function exp(b)return b[1],b[2]end
e={}aP=1
at=3
az=i
aS=o
ab=2
ay=0
aA=0
ba=0
P=0
aN=0
m=1
aI=0
bn=2
function aQ(a,b,_)if a<32768then
_=e[7][a]return aQ(_[_[3]*(b[2]-_[2])-_[4]*(b[1]-_[1])>0 and 8 or 7],b)else
a=e[5][e[6][a-32768][2]]return R[e[3][e[2][a[4]][a[5]+6]][6]]end
end
function ax(t,bG,y,bR,_,a,k)ac=h[y]f=A[ac[4]]av,af=f[18],f[19]G=av
C=aQ(#e[7],t)X,ae=exp(C)ai=sub(t,be)L=S[2+ai[1]//Y+ai[2]//Y*bA]or{}for a,_ in w(L[0]or{})do
c=h[_]if _~=y and c and ac[14]~=_ then
l=x(c,t)D=A[c[4]]if c[20]then
Q=l-D[18]if Q<G and D[23]&1>0 and(f[23]&1>0 or(t[9]+af<c[9]or t[9]>c[9]+D[19])==i)then
aU=c
if bG==i then
return i
end
G=Q
aY=I(t,c)end
end
if y==1 and not c[10]then
if l<50then
b=D[25]if b>0then
for p,s in w(z[b])do
if s>0 and z[1][p]<z[2][p]then
c=z
h[_]=i
c[1][p]=aC(B(c[1][p]+s,c[2][p]))if J(p,5,12)==p then
ab=p-4
end
end
end
end
b=D[29]if b>0 then
b=e[11][b]for p=7,8 do
d[p]=J(d[p]+b[p*2-13],d[p],b[p*2-12])end
h[_]=i
end
end
end
end
end
aU=i
if ae-X<af or X>t[9]+24then
return i
end
for a=1,#L do
_=e[2][L[a]]l,bq=bO(t,Z[_[1]],Z[_[2]])if l<G then
if(_[3]&1>0 and f[23]&1>0)or _[3]&4==0 then
if y>1 or bb>0 or _[3]&4>0 then
G=l
aY=bq
end
else
aK,bf=B(_[9],ae),O(_[8],X)if B(t[9],ae-af)+24<bf or O(t[9],X)+af>aK or aK-bf<af then
G=l
aY=bq
else
if bR==1 and(_[3]&512>0 or y==1)and(_[4]==2 or y>1)then
aZ(_,_[5])end
ae,X=aK,bf
end
end
end
end
C={X,ae}if bG then
if G~=av then
_=aa(t,W(aY,G-av))t[1]=_[1]t[2]=_[2]end
return o
end
return G==av
end
function bO(q,v,aB)N=x(v,q)bM=I(v,aB)+90
bJ=bM-I(q,v)bK=-N*bv(bJ)bb=N*ad(bJ)aO=bM
if bb<0 then
aO=aO+M
end
if bK<0 then
return N,I(q,v)elseif bK>x(aB,v)then
return x(aB,q),I(q,aB)else
return abs(bb),aO
end
end
function ar(q,v,aT,y,_)b_=x(q,v)ap=b_
bg=o
Q,aG=exp(q)bS,bQ=exp(v)aX,aJ=exp(sub(v,q))aD,bw=q[9]+32,v[9]+32
r=i
for a,_ in w(e[2])do
bo=Z[_[1]]bk,bi=exp(sub(Z[_[2]],bo))bz,bB=exp(sub(q,bo))by=bi*aX-bk*aJ
U=(bk*bB-bi*bz)/by
bt=(aX*bB-aJ*bz)/by
if J(U,0,1)==U and J(bt,0,1)==bt then
bm={Q+(U*aX),aG+(U*aJ)}l=x(q,bm)E=aD+(bw-aD)*(l/b_)if J(E,_[8]+1,_[9])~=E then
bg=i
if aT==1 then
return i
end
if l<ap then
ap=l
bj,bL=exp(bm)bN=E
bI=a
end
end
end
end
if aT>1 then
if aT==3 then
for a,_ in w(h)do
if _ and a~=y then
f=A[_[4]]if f[23]&1>0 and _[20]then
l=x(q,_)if l<ap then
U=bO(_,q,v)N=(l/b_)E=aD+(bw-aD)*N
if J(E,_[9],_[9]+f[19])==E and U<f[18]then
ap=l
r=o
bg=i
bj=Q+(bS-Q)*N
bL=aG+(bQ-aG)*N
bN=E
bI=a
end
end
end
end
end
end
return bg,bI,{bj,bL,bN}end
return o
end
function httpReply(b,g,ad)bs=aA//2
aA=0
end
function ag()aN=aN%256+1
return e[13][1][aN]end
function ao(_,a)f=A[_[4]]if f[23]&2>0 and _[7]>0 then
_[8]=_[8]-(a+1)//2
_[7]=_[7]-a//2+B(_[8],0)_[8]=O(_[8],0)if ag()<f[10]then
_[6]=f[9]_[15]=0
_[23]=d
_[10]=o
end
end
end
function bD(b,g,aw)return g[20]and abs(((I(b,g)-b[3]+M)%360)-M)<aw and ar(b,g,1)end
function bd(H,y)bu=ah and(ah[9]-H[9])*n[6]/x(ah,H)or 0
for a=1,n[12]do
b={}for a=1,30 do
b[a]=H[a]end
b[4]=n[8]b[10]=o
b[14]=y
bh=(ag()/Y-1)*n[10]aE=W(H[3]+bh,n[6])if n[7]>0then
h[#h+1]=b
f=A[b[4]]b[6]=f[3]b[9]=H[9]+n[13]b[11]=aE[1]b[12]=aE[2]b[17]=ab
b[19]=bu
else
c=aa(H,aE)c[9]=d[9]+bu
aW,aq,c=ar(H,c,3,y)if not aW then
bp=sub(c,W(H[3]+bh,1))h[#h+1]=b
b[1]=bp[1]b[2]=bp[2]b[6]=A[b[4]][3]b[9]=c[3]b[19]=1
if r then
b=h[aq]ao(b,n[9]*((ag()&3)+2))end
end
end
end
end
function aZ(_,c)if c>-1 then
b=e[9][c]if b[1]>0 or ac[31]*_[10][2]-ac[32]*_[10][1]<0 then
g=R[b[1]]am[g and g[30]or#am+1]={c,1,g or ac}_[4]=b[7]b=b[8]>0 and aZ(_,b[8])end
else
aS=o
at=-c
u[9]=-c
end
end
function bH()bC,ah=2048
for a,_ in w(h)do
if a>1 and _ and bD(d,_,10)then
l=x(_,d)if l<bC then
if A[_[4]][23]&2>0then
ah=_
bC=l
end
end
end
end
end
function onTick()al(9,aj(32))al(2,aj(11))al(3,i)for k=1,3 do
if aj(32)and(not az)or not e[21]then
aR=property.getText(aP)a=1
j=bU
_=bc.sub(aR,a,a)while _~=bUdo
c=bc.byte(_)if c>64then
j=(j..c-65)+0
if m==1then
bx=j
e[j]=e[j]or{}elseif m==2then
E=j
an=0
elseif m==3then
aH=j
else
if an==0then
an=E
aH=aH-1
aM={}e[bx][#e[bx]+1]=aM
end
aM[#aM+1]=j
an=an-1
m=O(an,aH)>0 and m-1 or 0
end
m=m+1
j=bU
else
j=j.._
end
a=a+1
_=bc.sub(aR,a,a)end
aP=aP+1
az=aR==bU
end
end
if az then
if aS then
am,aS={}ak=1
for a=1,10 do
e[a]=e[a+10*at]end
h=e[1]Z=e[4]R=e[8]S=e[10]be,S[1]=S[1]z=e[12]A=e[15]for a=14,16 do
z[1][a]=0
end
at=at+1
for a,_ in w(h)do
for k=7,40 do
_[k]=0
end
bT=_[5]+1
_[7]=A[_[4]][4]_[9],_[10]=aQ(#e[7],_)[1]if _[4]==1 then
if d then
_[7]=d[7]_[8]=d[8]end
d=_
elseif _[5]&bn<1then
h[a]=i
end
end
bA=be[3]end
for a,_ in w(e[2])do
_[10]=sub(Z[_[2]],Z[_[1]])if _[3]&4>0 then
f,D=R[e[3][_[6]][6]],R[e[3][_[7]][6]]_[8]=O(f[1],D[1])_[9],f[30],D[30]=B(f[2],D[2])else
_[8],_[9]=0,0
end
end
u={}for a=1,32 do
u[a]=0
end
P=B(P+1/bs,2/35)al(1,P>=0)if P>=0 then
P=P-1/35
ba=ba+1
for a=2,#S do
S[a][0]={}end
for a,s in w(am)do
_=e[9][s[1]]c=s[3]b=_[2]f=c[b]c[b]=J(_[3],f-_[4],f+_[4])+0
f=c[b]if f==_[3]then
am[a]=s[2]==_[5]and{_[6],1,c}or{s[1],s[2]+1,c}if _[6]==0 then
bE(am,a)end
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
_[6]=f[_[7]<=-f[4]and f[15]>1 and 15or 14]_[10],_[20]=o
if f[27]>0 then
c={}for k=1,30 do
c[k]=_[k]end
c[4]=f[27]c[6]=f[28]h[#h+1]=c
end
end
aL=e[16][_[6]]if _[15]>=aL[2]and aL[2]~=-1then
_[6]=aL[4]_[15]=0
T=e[16][_[6]][3]if T==1 then
for a,m in w(h)do
if m then
j=Y-x(_,m)if j>0 then
ao(m,j)end
end
end
elseif T==2then
if bD(_,d,90)then
_[23]=d
_[6]=f[5]end
elseif T==3then
aw=aC(I(_,_[23])/45+.5)*45
r=i
m=1
bP=f[23]&4>0
while m<5 and not r do
j=aa(_,W(aw+e[19][2][m],8))j[9]=_[9]r=ax(j,i,a,m)and(C[1]>=j[9]-24 or bP)m=m+1
end
if r then
for k=1,2 do
_[30+k]=j[k]-_[k]_[k]=j[k]end
_[3]=aw
_[10]=o
else
ax(_,i,a)end
_[9]=bP and _[9]or C[1]b=x(_,_[23])if f[13]>0 and ar(_,_[23],1)and B(b,230)<ag()then
_[6]=f[13]end
if b<64 and f[12]>0then
_[6]=f[12]end
elseif T==5then
for a=1,11 do
d[3]=d[3]+e[19][9][a]n=e[14][23]bH()bd(d,1)end
d[3]=d[3]-20
elseif T>9 and _[20]then
_[3]=I(_,_[23])n=e[14][T]_[10]=o
ah=_[23]bd(_,a)end
end
if _[17]and _[17]>0then
n=e[14][_[17]]if not ax(_,i,a)or _[9]<=C[1]then
if aU then
ao(aU,f[21]*((ag()&7)+1))end
_[1]=_[1]-_[11]_[2]=_[2]-_[12]_[3]=0
_[6]=A[_[4]][5]_[10]=o
_[11]=0
_[12],_[17]=0
_[19]=0
end
end
if _[6]==1then
h[a]=i
else
ai=sub(_,be)L=S[2+ai[1]//Y+ai[2]//Y*bA]if L then
L[0][#L[0]+1]=a
end
end
end
end
for a=1,8 do
if aj(a)and z[1][a+4]>0then
ab=a
end
end
n=e[14][ab]d[3]=d[3]-au(3)*(J(aI,5,6)*1.5-6)aI=abs(au(3))*aI+1
V=d
for a=1,2 do
V=aa(V,W(d[3]-M+90*a,au(a)*8.33))end
V[9]=d[9]for a=1,8 do
r=ax(V,o,1,a)end
if r then
for a=1,2 do
d[30+a]=V[a]-d[a]d[a]=V[a]end
if d[9]>C[1]then
d[19]=d[19]-1
else
d[9]=B(C[1],d[9]+4)d[19]=O(0,d[19])end
else
d[19]=0
d[9]=C[1]r=ba%4>0 or C[6]<18 or ao(d,10)end
aF=z[1]c=n[1]if aj(31)and ay<=0 and(c==0 or aF[c]>=n[2])then
al(3,o)ay=n[3]if c>0then
aF[c]=aF[c]-n[2]end
bH()bd(d,1)end
ay=ay-1
if au(4)<0 then
_=aa(d,W(d[3],64))_[9]=d[9]aW,aq=ar(d,_,2,1)_=e[2][aq]if aW==i then
u[2]=aq
c,r=_[4]for a=14,16 do
r=r or z[1][a]>0 and c==a
end
if c==1 or r then
aZ(_,_[5])elseif c>3000 and c<3005then
bn=aC(c-3000)end
end
end
end
u[1]=ab
for a=3,8 do
u[a]=d[e[19][4][a]]end
u[5]=1
u[13]=d[3]a=ak
bF=o
K=1
as=#h+#R
while K<3 and bF do
c=K*9+5
if a<=#h then
_=h[a]if a~=1 then
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
bE(h,a)K=K+1
as=as-1
end
end
else
_=R[a-#h]if _[10]then
_[10]=i
u[c]=a-#h+2^15
for k=1,6 do
u[c+k]=_[k]end
K=K+1
end
end
a=((a-2)%as)+1
ak=B(ak,as)bF=a~=ak
end
ak=a
for a=1,32 do
bl.setNumber(a,u[a])end
end
aA=aA+1
async.httpGet(8,bU)end
function onDraw()aV=screen.drawText
aV(26,137,bs)if az then
for a=1,4 do
b=124+a*7
aV(240,b,aC(z[1][a]))aV(230,b,z[1][13+a])end
end
end
