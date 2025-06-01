bU=""

Z=128
O=180
by=output
bF=input
F=math
N=F.max
A=F.min
aD=F.floor
pi=F.pi
aC=bF.getNumber
ab=bF.getBool
an=by.setBool
o=true
i=false
v=ipairs
abs=F.abs
bt=table.remove
aR=string
function ak(b,g)return{(b[1]+g[1]),(b[2]+g[2])}end
function sub(b,g)return{(b[1]-g[1]),(b[2]-g[2])}end
function bD(b)return F.sin(b/O*pi)end
function am(b)return F.cos(b/O*pi)end
function K(b,g)return F.atan(g[2]-b[2],g[1]-b[1])*O/pi end
function G(b,g,am)return N(A(am,b),g)end
function w(b,g)return F.sqrt(((b[1]-g[1])^2)+((b[2]-g[2])^2))end
function W(b,g)return{am(b)*g,bD(b)*g}end
function exp(b)return b[1],b[2]end
e={}aW=1
ao=3
ar=i
aF=o
ah=2
aw=0
az=0
aX=0
Y=0
aP=0
l=1
aJ=0
bK=2
function aE(a,b,_)if a<2^15 then
_=e[7][a]return aE(_[_[3]*(b[2]-_[2])-_[4]*(b[1]-_[1])>0 and 8 or 7],b)else
a=e[5][e[6][a-32768][2]]return V[e[3][e[2][a[4]][a[5]+6]][6]]end
end
function as(t,bC,x,bR,_)ai=h[x]f=z[ai[4]]ay,ac=f[18],f[19]I=ay
D=aE(#e[7],t)T,ad=exp(D)aa=sub(t,bd)L=Q[2+aa[1]//Z+aa[2]//Z*bM]or{}for a,_ in v(L[0]or{})do
c=h[_]if _~=x and c and ai[14]~=_ then
m=w(c,t)E=z[c[4]]if c[20]then
R=m-E[18]if R<I and E[23]&1>0 and(f[23]&1>0 or G(t[9],c[9]-ac,c[9]+E[19])==t[9])then
bf=c
if bC==i then
return i
end
I=R
aS=K(t,c)end
end
if x==1 then
if m<50 then
b=E[25]if b>0 then
for p,u in v(B[b])do
if u>0 and B[1][p]<B[2][p]then
c=B
h[_]=i
c[1][p]=aD(A(c[1][p]+u,c[2][p]))if G(p,5,12)==p then
ah=p-4
end
end
end
end
b=E[29]if b>0 then
b=e[11][b]for p=7,8 do
d[p]=G(d[p]+b[p*2-13],d[p],b[p*2-12])end
h[_]=i
end
end
end
end
end
if ad-T<ac or T>t[9]+24 then
return i
end
for a=1,#L do
_=e[2][L[a]]m,bq=bj(t,P[_[1]],P[_[2]])if m<I then
if(_[3]&1>0 and f[23]&1>0)or _[3]&4==0 then
if x>1 or aT>0 or _[3]&4>0 then
I=m
aS=bq
end
else
bb,aU=A(_[9],ad),N(_[8],T)if A(t[9],ad-ac)+24<aU or N(t[9],T)+ac>bb or bb-aU<ac then
I=m
aS=bq
else
if bR==1 and(_[3]&512>0 or x==1)and(_[4]==2 or x>1)then
aN(_,_[5])end
ad,T=bb,aU
end
end
end
end
D,bf={T,ad}if bC then
if I~=ay then
_=ak(t,W(aS,I-ay))t[1]=_[1]t[2]=_[2]end
return o
end
return I==ay
end
function bj(q,y,av)M=w(y,q)bH=K(y,av)+90
bA=bH-K(q,y)bO=-M*bD(bA)aT=M*am(bA)bc=bH
if aT<0 then
bc=bc+O
end
if bO<0 then
return M,K(q,y)elseif bO>w(av,y)then
return w(av,q),K(q,av)else
return abs(aT),bc
end
end
function at(q,y,aO,x,_)aL=w(q,y)aq=aL
aM=o
R,aG=exp(q)bS,bQ=exp(y)ba,aK=exp(sub(y,q))ax,bz=q[9]+32,y[9]+32
r=i
for a,_ in v(e[2])do
bl=P[_[1]]bw,bE=exp(sub(P[_[2]],bl))bG,bh=exp(sub(q,bl))bp=bE*ba-bw*aK
X=(bw*bh-bE*bG)/bp
bv=(ba*bh-aK*bG)/bp
if G(X,0,1)==X and G(bv,0,1)==bv then
bL={R+(X*ba),aG+(X*aK)}m=w(q,bL)C=ax+(bz-ax)*(m/aL)if G(C,_[8]+1,_[9])~=C then
aM=i
if aO==1 then
return i
end
if m<aq then
aq=m
bk,bn=exp(bL)bN=C
bP=a
end
end
end
end
if aO>1 then
if aO==3 then
for a,_ in v(h)do
if _ and a~=x then
f=z[_[4]]if f[23]&1>0 and _[20]then
m=w(q,_)if m<aq then
X=bj(_,q,y)M=(m/aL)C=ax+(bz-ax)*M
if G(C,_[9],_[9]+f[19])==C and X<f[18]then
aq=m
r=o
aM=i
bk=R+(bS-R)*M
bn=aG+(bQ-aG)*M
bN=C
bP=a
end
end
end
end
end
end
return aM,bP,{bk,bn,bN}end
return o
end
function httpReply(b,g,am)bx=az//2
az=0
end
function ae()aP=aP%256+1
return e[13][1][aP]end
function aB(_,a)f=z[_[4]]if f[23]&2>0 and _[7]>0 then
_[8]=_[8]-(a+1)//2
_[7]=_[7]-a//2+A(_[8],0)_[8]=N(_[8],0)if ae()<f[10]then
_[6]=f[9]_[15]=0
_[23]=d
_[10]=o
end
end
end
function bB(b,g,au)return g[20]and abs(((K(b,g)-b[3]+O)%360)-O)<au and at(b,g,1)end
function aI(J,x)bs=al and(al[9]-J[9])*n[6]/w(al,J)or 0
for a=1,n[12]do
b={}for a=1,30 do
b[a]=J[a]end
b[4]=n[8]b[10]=o
b[14]=x
br=(ae()/Z-1)*n[10]bg=W(J[3]+br,n[6])if n[7]>0 then
h[#h+1]=b
f=z[b[4]]b[6]=f[3]b[9]=J[9]+n[13]b[11]=bg[1]b[12]=bg[2]b[17]=ah
b[19]=bs
else
c=ak(J,bg)c[9]=d[9]+bs
aY,aA,c=at(J,c,3,x)if not aY then
bJ=sub(c,W(J[3]+br,1))h[#h+1]=b
b[1]=bJ[1]b[2]=bJ[2]b[6]=z[b[4]][3]b[9]=c[3]b[19]=1
if r then
b=h[aA]aB(b,n[9]*((ae()&3)+2))end
end
end
end
end
function aN(_,c)if c>-1 then
b=e[9][c]if b[1]>0 or ai[31]*_[10][2]-ai[32]*_[10][1]<0 then
g=V[b[1]]aj[g and g[30]or#aj+1]={c,1,g or ai}_[4]=b[7]b=b[8]>0 and aN(_,b[8])end
else
aF=o
ao=-c
s[9]=-c
end
end
function bo()bI,al=2048
for a,_ in v(h)do
if a>1 and _ and bB(d,_,10)then
m=w(_,d)if m<bI then
if z[_[4]][23]&2>0 then
al=_
bI=m
end
end
end
end
end
function onTick()an(9,ab(32))an(2,ab(11))an(3,i)for k=1,3 do
if ab(32)and(not ar)or not e[21]then
aQ=property.getText(aW)a=1
j=bU
_=aR.sub(aQ,a,a)while _~=bUdo
c=aR.byte(_)if c>64 then
j=(j..c-65)+0
if l==1 then
bm=j
e[j]=e[j]or{}elseif l==2 then
C=j
ag=0
elseif l==3 then
aV=j
else
if ag==0 then
ag=C
aV=aV-1
aZ={}e[bm][#e[bm]+1]=aZ
end
aZ[#aZ+1]=j
ag=ag-1
l=N(ag,aV)>0 and l-1 or 0
end
l=l+1
j=bU
else
j=j.._
end
a=a+1
_=aR.sub(aQ,a,a)end
aW=aW+1
ar=aQ==bU
end
end
if ar then
if aF then
aj,aF={}af=1
for a=1,10 do
e[a]=e[a+10*ao]end
h=e[1]P=e[4]V=e[8]Q=e[10]bd,Q[1]=Q[1]B=e[12]z=e[15]for a=14,16 do
B[1][a]=0
end
ao=ao+1
for a,_ in v(h)do
for k=7,40 do
_[k]=0
end
bT=_[5]+1
_[7]=z[_[4]][4]_[9],_[10]=aE(#e[7],_)[1]if _[4]==1 then
if d then
_[7]=d[7]_[8]=d[8]end
d=_
elseif _[5]&bK<1 then
h[a]=i
end
end
bM=bd[3]end
for a,_ in v(e[2])do
_[10]=sub(P[_[2]],P[_[1]])if _[3]&4>0 then
f,E=V[e[3][_[6]][6]],V[e[3][_[7]][6]]_[8]=N(f[1],E[1])_[9],f[30],E[30]=A(f[2],E[2])else
_[8],_[9]=0,0
end
end
s={}for a=1,32 do
s[a]=0
end
Y=A(Y+1/bx,2/35)an(1,Y>=0)if Y>=0 then
Y=Y-1/35
aX=aX+1
for a=2,#Q do
Q[a][0]={}end
for a,u in v(aj)do
_=e[9][u[1]]c=u[3]b=_[2]f=c[b]c[b]=G(_[3],f-_[4],f+_[4])+0
f=c[b]if f==_[3]then
aj[a]=u[2]==_[5]and{_[6],1,c}or{u[1],u[2]+1,c}if _[6]==0 then
bt(aj,a)end
end
c[10]=c[10]or f~=u
c[30]=a
end
for a,_ in v(h)do
if _ then
for k,u in v({1,2,9})do
_[u]=_[u]+_[u+10]end
_[15]=_[15]+1
f=z[_[4]]if _[7]<=0 and _[20]then
_[15]=0
_[6]=f[_[7]<=-f[4]and f[15]>1 and 15 or 14]_[10],_[20]=o
if f[27]>0 then
c={}for k=1,30 do
c[k]=_[k]end
c[4]=f[27]c[6]=f[28]h[#h+1]=c
end
end
aH=e[16][_[6]]if _[15]>=aH[2]and aH[2]~=-1 then
_[6]=aH[4]_[15]=0
U=e[16][_[6]][3]if U==1 then
for a,l in v(h)do
if l then
j=Z-w(_,l)if j>0 then
aB(l,j)end
end
end
elseif U==2 then
if bB(_,d,90)then
_[23]=d
_[6]=f[5]end
elseif U==3 then
au=aD(K(_,_[23])/45+.5)*45
r=i
l=1
bu=f[23]&4>0
while l<5 and not r do
j=ak(_,W(au+e[19][2][l],8))j[9]=_[9]r=as(j,i,a,l)and(D[1]>=j[9]-24 or bu)l=l+1
end
if r then
for k=1,2 do
_[30+k]=j[k]-_[k]_[k]=j[k]end
_[3]=au
_[10]=o
else
as(_,i,a)end
_[9]=bu and _[9]or D[1]b=w(_,_[23])if f[13]>0 and at(_,_[23],1)and A(b,230)<ae()then
_[6]=f[13]end
if b<64 and f[12]>0 then
_[6]=f[12]end
elseif U==5 then
for a=1,11 do
d[3]=d[3]+e[19][9][a]n=e[14][23]bo()aI(d,1)end
d[3]=d[3]-20
elseif U>9 and _[20]then
_[3]=K(_,_[23])n=e[14][U]_[10]=o
al=_[23]aI(_,a)end
end
if _[17]and _[17]>0 then
n=e[14][_[17]]if not as(_,i,a)or _[9]<=D[1]then
if bf then
aB(bf,f[21]*((ae()&7)+1))end
_[1]=_[1]-_[11]_[2]=_[2]-_[12]_[3]=0
_[6]=z[_[4]][5]_[10]=o
_[11]=0
_[12],_[17]=0
_[19]=0
end
end
if _[6]==1 then
h[a]=i
else
aa=sub(_,bd)L=Q[2+aa[1]//Z+aa[2]//Z*bM]if L then
L[0][#L[0]+1]=a
end
end
end
end
for a=1,8 do
if ab(a)and B[1][a+4]>0 then
ah=a
end
end
n=e[14][ah]d[3]=d[3]-aC(3)*(G(aJ,5,6)*1.5-6)aJ=abs(aC(3))*aJ+1
S=d
for a=1,2 do
S=ak(S,W(d[3]-O+90*a,aC(a)*8.33))end
S[9]=d[9]for a=1,8 do
r=as(S,o,1,a)end
if r then
for a=1,2 do
d[30+a]=S[a]-d[a]d[a]=S[a]end
if d[9]>D[1]then
d[19]=d[19]-1
else
d[9]=A(D[1],d[9]+4)d[19]=N(0,d[19])end
else
d[19]=0
d[9]=D[1]r=aX%4>0 or D[6]<18 or aB(d,10)end
be=B[1]c=n[1]if ab(31)and aw<=0 and(c==0 or be[c]>=n[2])then
an(3,o)aw=n[3]if c>0 then
be[c]=be[c]-n[2]end
bo()aI(d,1)end
aw=aw-1
if aC(4)<0 then
_=ak(d,W(d[3],64))_[9]=d[9]aY,aA=at(d,_,2,1)_=e[2][aA]if aY==i then
s[2]=aA
c,r=_[4]for a=14,16 do
r=r or B[1][a]>0 and c==a
end
if c==1 or r then
aN(_,_[5])elseif c>3000 and c<3005 then
bK=aD(c-3000)end
end
end
end
s[1]=ah
for a=3,8 do
s[a]=d[e[19][4][a]]end
s[5]=1
s[13]=d[3]a=af
bi=o
H=1
ap=#h+#V
while H<3 and bi do
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
bt(h,a)H=H+1
ap=ap-1
end
end
else
_=V[a-#h]if _[10]then
_[10]=i
s[c]=a-#h+2^15
for k=1,6 do
s[c+k]=_[k]end
H=H+1
end
end
a=(a-2)%ap+1
af=A(af,ap)bi=a~=af
end
af=a
for a=1,32 do
by.setNumber(a,s[a])end
end
az=az+1
async.httpGet(8,bU)end
function onDraw()b_=screen.drawText
b_(26,137,bx)if ar then
for a=1,4 do
b=124+a*7
b_(240,b,aD(B[1][a]))b_(200,b,B[1][13+a])end
end
end
