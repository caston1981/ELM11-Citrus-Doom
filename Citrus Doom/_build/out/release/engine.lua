bU=""

U=128
M=180
bM=output
bE=input
F=math
L=F.max
A=F.min
aD=F.floor
pi=F.pi
az=bE.getNumber
an=bE.getBool
aj=bM.setBool
o=true
i=false
y=ipairs
abs=F.abs
bL=table.remove
aN=string
function af(b,g)return{(b[1]+g[1]),(b[2]+g[2])}end
function sub(b,g)return{(b[1]-g[1]),(b[2]-g[2])}end
function bP(b)return F.sin(b/M*pi)end
function ad(b)return F.cos(b/M*pi)end
function I(b,g)return F.atan(g[2]-b[2],g[1]-b[1])*M/pi end
function G(b,g,ad)return L(A(ad,b),g)end
function w(b,g)return F.sqrt(((b[1]-g[1])^2)+((b[2]-g[2])^2))end
function V(b,g)return{ad(b)*g,bP(b)*g}end
function exp(b)return b[1],b[2]end
e={}aP=1
aA=3
at=i
aU=o
aa=2
ay=0
av=0
aM=0
Y=0
aJ=0
l=1
bg=0
bK=2
function aK(a,b,_)if a<32768then
_=e[7][a]return aK(_[_[3]*(b[2]-_[2])-_[4]*(b[1]-_[1])>0 and 8 or 7],b)else
a=e[5][e[6][a-32768][2]]return T[e[3][e[2][a[4]][a[5]+6]][6]]end
end
function as(r,bI,v,bR,_,a,k)al=h[v]f=B[al[4]]aq,ac=f[18],f[19]K=aq
E=aK(#e[7],r)X,ai=exp(E)ab=sub(r,b_)N=R[2+ab[1]//U+ab[2]//U*bj]or{}for a,_ in y(N[0]or{})do
c=h[_]if _~=v and c and al[14]~=_ then
m=w(c,r)C=B[c[4]]if c[20]then
W=m-C[18]if W<K and C[23]&1>0 and(f[23]&1>0 or(r[9]+ac<c[9]or r[9]>c[9]+C[19])==i)then
aW=c
if bI==i then
return i
end
K=W
aX=I(r,c)end
end
if v==1 and not c[10]then
if m<50then
b=C[25]if b>0then
for p,u in y(z[b])do
if u>0 and z[1][p]<z[2][p]then
c=z
h[_]=i
c[1][p]=aD(A(c[1][p]+u,c[2][p]))if G(p,5,12)==p then
aa=p-4
end
end
end
end
b=C[29]if b>0 then
b=e[11][b]for p=7,8 do
d[p]=G(d[p]+b[p*2-13],d[p],b[p*2-12])end
h[_]=i
end
end
end
end
end
aW=i
if ai-X<ac or X>r[9]+24then
return i
end
for a=1,#N do
_=e[2][N[a]]m,bz=br(r,Q[_[1]],Q[_[2]])if m<K then
if(_[3]&1>0 and f[23]&1>0)or _[3]&4==0 then
if v>1 or bd>0 or _[3]&4>0 then
K=m
aX=bz
end
else
bf,aY=A(_[9],ai),L(_[8],X)if A(r[9],ai-ac)+24<aY or L(r[9],X)+ac>bf or bf-aY<ac then
K=m
aX=bz
else
if bR==1 and(_[3]&512>0 or v==1)and(_[4]==2 or v>1)then
aR(_,_[5])end
ai,X=bf,aY
end
end
end
end
E={X,ai}if bI then
if K~=aq then
_=af(r,V(aX,K-aq))r[1]=_[1]r[2]=_[2]end
return o
end
return K==aq
end
function br(q,x,ap)O=w(x,q)bA=I(x,ap)+90
bh=bA-I(q,x)bu=-O*bP(bh)bd=O*ad(bh)aT=bA
if bd<0 then
aT=aT+M
end
if bu<0 then
return O,I(q,x)elseif bu>w(ap,x)then
return w(ap,q),I(q,ap)else
return abs(bd),aT
end
end
function aw(q,x,aQ,v,_)aS=w(q,x)aB=aS
be=o
W,aZ=exp(q)bS,bQ=exp(x)aV,ba=exp(sub(x,q))aC,bN=q[9]+32,x[9]+32
s=i
for a,_ in y(e[2])do
bo=Q[_[1]]bn,bt=exp(sub(Q[_[2]],bo))bv,bm=exp(sub(q,bo))bk=bt*aV-bn*ba
S=(bn*bm-bt*bv)/bk
by=(aV*bm-ba*bv)/bk
if G(S,0,1)==S and G(by,0,1)==by then
bl={W+(S*aV),aZ+(S*ba)}m=w(q,bl)D=aC+(bN-aC)*(m/aS)if G(D,_[8]+1,_[9])~=D then
be=i
if aQ==1 then
return i
end
if m<aB then
aB=m
bi,bx=exp(bl)bs=D
bC=a
end
end
end
end
if aQ>1 then
if aQ==3 then
for a,_ in y(h)do
if _ and a~=v then
f=B[_[4]]if f[23]&1>0 and _[20]then
m=w(q,_)if m<aB then
S=br(_,q,x)O=(m/aS)D=aC+(bN-aC)*O
if G(D,_[9],_[9]+f[19])==D and S<f[18]then
aB=m
s=o
be=i
bi=W+(bS-W)*O
bx=aZ+(bQ-aZ)*O
bs=D
bC=a
end
end
end
end
end
end
return be,bC,{bi,bx,bs}end
return o
end
function httpReply(b,g,ad)bG=av//2
av=0
end
function ae()aJ=aJ%256+1
return e[13][1][aJ]end
function au(_,a)f=B[_[4]]if f[23]&2>0 and _[7]>0 then
_[8]=_[8]-(a+1)//2
_[7]=_[7]-a//2+A(_[8],0)_[8]=L(_[8],0)if ae()<f[10]then
_[6]=f[9]_[15]=0
_[23]=d
_[10]=o
end
end
end
function bD(b,g,ar)return g[20]and abs(((I(b,g)-b[3]+M)%360)-M)<ar and aw(b,g,1)end
function bb(J,v)bF=ah and(ah[9]-J[9])*n[6]/w(ah,J)or 0
for a=1,n[12]do
b={}for a=1,30 do
b[a]=J[a]end
b[4]=n[8]b[10]=o
b[14]=v
bB=(ae()/U-1)*n[10]aI=V(J[3]+bB,n[6])if n[7]>0then
h[#h+1]=b
f=B[b[4]]b[6]=f[3]b[9]=J[9]+n[13]b[11]=aI[1]b[12]=aI[2]b[17]=aa
b[19]=bF
else
c=af(J,aI)c[9]=d[9]+bF
aL,ao,c=aw(J,c,3,v)if not aL then
bp=sub(c,V(J[3]+bB,1))h[#h+1]=b
b[1]=bp[1]b[2]=bp[2]b[6]=B[b[4]][3]b[9]=c[3]b[19]=1
if s then
b=h[ao]au(b,n[9]*((ae()&3)+2))end
end
end
end
end
function aR(_,c)if c>-1 then
b=e[9][c]if b[1]>0 or al[31]*_[10][2]-al[32]*_[10][1]<0 then
g=T[b[1]]ag[g and g[30]or#ag+1]={c,1,g or al}_[4]=b[7]b=b[8]>0 and aR(_,b[8])end
else
aU=o
aA=-c
t[9]=-c
end
end
function bw()bH,ah=2048
for a,_ in y(h)do
if a>1 and _ and bD(d,_,10)then
m=w(_,d)if m<bH then
if B[_[4]][23]&2>0then
ah=_
bH=m
end
end
end
end
end
function onTick()aj(9,an(32))aj(2,an(11))aj(3,i)for k=1,3 do
if an(32)and(not at)or not e[21]then
bc=property.getText(aP)a=1
j=bU
_=aN.sub(bc,a,a)while _~=bUdo
c=aN.byte(_)if c>64then
j=(j..c-65)+0
if l==1then
bJ=j
e[j]=e[j]or{}elseif l==2then
D=j
am=0
elseif l==3then
aF=j
else
if am==0then
am=D
aF=aF-1
aG={}e[bJ][#e[bJ]+1]=aG
end
aG[#aG+1]=j
am=am-1
l=L(am,aF)>0 and l-1 or 0
end
l=l+1
j=bU
else
j=j.._
end
a=a+1
_=aN.sub(bc,a,a)end
aP=aP+1
at=bc==bU
end
end
if at then
if aU then
ag,aU={}ak=1
for a=1,10 do
e[a]=e[a+10*aA]end
h=e[1]Q=e[4]T=e[8]R=e[10]b_,R[1]=R[1]z=e[12]B=e[15]for a=14,16 do
z[1][a]=0
end
aA=aA+1
for a,_ in y(h)do
for k=7,40 do
_[k]=0
end
bT=_[5]+1
_[7]=B[_[4]][4]_[9],_[10]=aK(#e[7],_)[1]if _[4]==1 then
if d then
_[7]=d[7]_[8]=d[8]end
d=_
elseif _[5]&bK<1then
h[a]=i
end
end
bj=b_[3]end
for a,_ in y(e[2])do
_[10]=sub(Q[_[2]],Q[_[1]])if _[3]&4>0 then
f,C=T[e[3][_[6]][6]],T[e[3][_[7]][6]]_[8]=L(f[1],C[1])_[9],f[30],C[30]=A(f[2],C[2])else
_[8],_[9]=0,0
end
end
t={}for a=1,32 do
t[a]=0
end
Y=A(Y+1/bG,2/35)aj(1,Y>=0)if Y>=0 then
Y=Y-1/35
aM=aM+1
for a=2,#R do
R[a][0]={}end
for a,u in y(ag)do
_=e[9][u[1]]c=u[3]b=_[2]f=c[b]c[b]=G(_[3],f-_[4],f+_[4])+0
f=c[b]if f==_[3]then
ag[a]=u[2]==_[5]and{_[6],1,c}or{u[1],u[2]+1,c}if _[6]==0 then
bL(ag,a)end
end
c[10]=c[10]or f~=u
c[30]=a
end
for a,_ in y(h)do
if _ then
for k,u in y({1,2,9})do
_[u]=_[u]+_[u+10]end
_[15]=_[15]+1
f=B[_[4]]if _[7]<=0 and _[20]then
_[15]=0
_[6]=f[_[7]<=-f[4]and f[15]>1 and 15or 14]_[10],_[20]=o
if f[27]>0 then
c={}for k=1,30 do
c[k]=_[k]end
c[4]=f[27]c[6]=f[28]h[#h+1]=c
end
end
aE=e[16][_[6]]if _[15]>=aE[2]and aE[2]~=-1then
_[6]=aE[4]_[15]=0
P=e[16][_[6]][3]if P==1 then
for a,l in y(h)do
if l then
j=U-w(_,l)if j>0 then
au(l,j)end
end
end
elseif P==2then
if bD(_,d,90)then
_[23]=d
_[6]=f[5]end
elseif P==3then
ar=aD(I(_,_[23])/45+.5)*45
s=i
l=1
bO=f[23]&4>0
while l<5 and not s do
j=af(_,V(ar+e[19][2][l],8))j[9]=_[9]s=as(j,i,a,l)and(E[1]>=j[9]-24 or bO)l=l+1
end
if s then
for k=1,2 do
_[30+k]=j[k]-_[k]_[k]=j[k]end
_[3]=ar
_[10]=o
else
as(_,i,a)end
_[9]=bO and _[9]or E[1]b=w(_,_[23])if f[13]>0 and aw(_,_[23],1)and A(b,230)<ae()then
_[6]=f[13]end
if b<64 and f[12]>0then
_[6]=f[12]end
elseif P==5then
for a=1,11 do
d[3]=d[3]+e[19][9][a]n=e[14][23]bw()bb(d,1)end
d[3]=d[3]-20
elseif P>9 and _[20]then
_[3]=I(_,_[23])n=e[14][P]_[10]=o
ah=_[23]bb(_,a)end
end
if _[17]and _[17]>0then
n=e[14][_[17]]if not as(_,i,a)or _[9]<=E[1]then
if aW then
au(aW,f[21]*((ae()&7)+1))end
_[1]=_[1]-_[11]_[2]=_[2]-_[12]_[3]=0
_[6]=B[_[4]][5]_[10]=o
_[11]=0
_[12],_[17]=0
_[19]=0
end
end
if _[6]==1then
h[a]=i
else
ab=sub(_,b_)N=R[2+ab[1]//U+ab[2]//U*bj]if N then
N[0][#N[0]+1]=a
end
end
end
end
for a=1,8 do
if an(a)and z[1][a+4]>0then
aa=a
end
end
n=e[14][aa]d[3]=d[3]-az(3)*(G(bg,5,6)*1.5-6)bg=abs(az(3))*bg+1
Z=d
for a=1,2 do
Z=af(Z,V(d[3]-M+90*a,az(a)*8.33))end
Z[9]=d[9]for a=1,8 do
s=as(Z,o,1,a)end
if s then
for a=1,2 do
d[30+a]=Z[a]-d[a]d[a]=Z[a]end
if d[9]>E[1]then
d[19]=d[19]-1
else
d[9]=A(E[1],d[9]+4)d[19]=L(0,d[19])end
else
d[19]=0
d[9]=E[1]s=aM%4>0 or E[6]<18 or au(d,10)end
aO=z[1]c=n[1]if an(31)and ay<=0 and(c==0 or aO[c]>=n[2])then
aj(3,o)ay=n[3]if c>0then
aO[c]=aO[c]-n[2]end
bw()bb(d,1)end
ay=ay-1
if az(4)<0 then
_=af(d,V(d[3],64))_[9]=d[9]aL,ao=aw(d,_,2,1)_=e[2][ao]if aL==i then
t[2]=ao
c,s=_[4]for a=14,16 do
s=s or z[1][a]>0 and c==a
end
if c==1 or s then
aR(_,_[5])elseif c>3000 and c<3005then
bK=aD(c-3000)end
end
end
end
t[1]=aa
for a=3,8 do
t[a]=d[e[19][4][a]]end
t[5]=1
t[13]=d[3]a=ak
bq=o
H=1
ax=#h+#T
while H<3 and bq do
c=H*9+5
if a<=#h then
_=h[a]if a~=1 then
if _ then
if _[10]then
_[10]=i
t[c]=a
for k=1,8 do
t[c+k]=_[e[19][1][k]]end
H=H+1
end
else
t[c]=-a
bL(h,a)H=H+1
ax=ax-1
end
end
else
_=T[a-#h]if _[10]then
_[10]=i
t[c]=a-#h+2^15
for k=1,6 do
t[c+k]=_[k]end
H=H+1
end
end
a=((a-2)%ax)+1
ak=A(ak,ax)bq=a~=ak
end
ak=a
for a=1,32 do
bM.setNumber(a,t[a])end
end
av=av+1
async.httpGet(8,bU)end
function onDraw()aH=screen.drawText
aH(26,137,bG)if at then
for a=1,4 do
b=124+a*7
aH(240,b,aD(z[1][a]))aH(200,b,z[1][13+a])end
end
end
