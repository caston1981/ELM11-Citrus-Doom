bT=""

S=128
N=180
br=output
bq=input
F=math
O=F.max
v=F.min
aw=F.floor
pi=F.pi
au=bq.getNumber
am=bq.getBool
an=br.setBool
n=true
i=false
x=ipairs
abs=F.abs
bn=table.remove
bd=string
function ah(b,g)return{(b[1]+g[1]),(b[2]+g[2])}end
function sub(b,g)return{(b[1]-g[1]),(b[2]-g[2])}end
function bF(b)return F.sin(b/N*pi)end
function ac(b)return F.cos(b/N*pi)end
function H(b,g)return F.atan(g[2]-b[2],g[1]-b[1])*N/pi end
function K(b,g,ac)return O(v(ac,b),g)end
function y(b,g)return F.sqrt(((b[1]-g[1])^2)+((b[2]-g[2])^2))end
function Q(b,g)return{ac(b)*g,bF(b)*g}end
function exp(b)return b[1],b[2]end
e={}aJ=1
az=3
ax=i
aG=n
ai=2
aC=0
as=0
W=0
ba=0
l=1
aP=0
bv=2
function aY(a,b,_)if a<32768then
_=e[7][a]return aY(_[_[3]*(b[2]-_[2])-_[4]*(b[1]-_[1])>0 and 8 or 7],b)else
a=e[5][e[6][a-32768][2]]return R[e[3][e[2][a[4]][a[5]+6]][6]]end
end
function ar(s,bI,z,bP,_,a,k)aj=h[z]f=A[aj[4]]aA,al=f[18],f[19]J=aA
D=aY(#e[7],s)U,ag=exp(D)af=sub(s,P[1])L=P[2+af[1]//S+af[2]//S*bf]or{{}}for a,_ in x(L[0])do
c=h[_]if _~=z and c and aj[14]~=_ then
m=y(c,s)C=A[c[4]]if c[20]then
Y=m-C[18]if Y<J and C[23]&1>0 and(f[23]&1>0 or(s[9]+al<c[9]or s[9]>c[9]+C[19])==i)then
aW=c
if bI==i then
return i
end
J=Y
aO=H(s,c)end
end
if z==1 and not c[10]then
if m<50then
b=C[25]if b>0then
for q,r in x(B[b])do
if r>0 and B[1][q]<B[2][q]then
c=B
h[_]=i
c[1][q]=aw(v(c[1][q]+r,c[2][q]))if K(q,5,12)==q then
ai=q-4
end
end
end
end
b=C[29]if b>0 then
b=e[11][b]for q=7,8 do
d[q]=K(d[q]+b[q*2-13],d[q],b[q*2-12])end
h[_]=i
end
end
end
end
end
aW=i
if ag-U<al or U>s[9]+24then
return i
end
for a=1,#L do
_=e[2][L[a]]m,bN=bi(s,V[_[1]],V[_[2]])if m<J then
if bP==1 and(_[3]&512>0 or z==1)and(_[4]==2 or z>1)then
aS(_,_[5])end
if(_[3]&1>0 and f[23]&1>0)or _[3]&4==0 then
J=m
aO=bN
else
aR,bb=v(_[9],ag),O(_[8],U)if v(s[9],ag-al)+24<bb or O(s[9],U)+al>aR or aR-bb<al then
J=m
aO=bN
else
ag,U=aR,bb
end
end
end
end
D={U,ag}if bI then
if J~=aA then
_=ah(s,Q(aO,J-aA))s[1]=_[1]s[2]=_[2]end
return n
end
return J==aA
end
function bi(p,w,av)M=y(w,p)bE=H(w,av)+90
bj=bE-H(p,w)bt=-M*bF(bj)by=M*ac(bj)aT=bE
if by<0 then
aT=aT+N
end
if bt<0 then
return M,H(p,w)elseif bt>y(av,w)then
return y(av,p),H(p,av)else
return abs(by),aT
end
end
function at(p,w,bc,z,_)b_=y(p,w)aq=b_
aF=n
Y,aE=exp(p)bR,bO=exp(w)aV,aI=exp(sub(w,p))aB,be=p[9]+32,w[9]+32
u=i
for a,_ in x(e[2])do
bC=V[_[1]]bu,bD=exp(sub(V[_[2]],bC))bp,bG=exp(sub(p,bC))bm=bD*aV-bu*aI
X=(bu*bG-bD*bp)/bm
bh=(aV*bG-aI*bp)/bm
if K(X,0,1)==X and K(bh,0,1)==bh then
bs={Y+(X*aV),aE+(X*aI)}m=y(p,bs)E=aB+(be-aB)*(m/b_)if K(E,_[8]+1,_[9])~=E then
aF=i
if bc==1 then
return i
end
if m<aq then
aq=m
bl,bo=exp(bs)bK=E
bA=a
end
end
end
end
if bc>1 then
if bc==3 then
for a,_ in x(h)do
if _ and a~=z then
f=A[_[4]]if f[23]&1>0 and _[20]then
m=y(p,_)if m<aq then
X=bi(_,p,w)M=(m/b_)E=aB+(be-aB)*M
if K(E,_[9],_[9]+f[19])==E and X<f[18]then
aq=m
u=n
aF=i
bl=Y+(bR-Y)*M
bo=aE+(bO-aE)*M
bK=E
bA=a
end
end
end
end
end
end
return aF,bA,{bl,bo,bK}end
return n
end
function httpReply(b,g,ac)bx=as//2
as=0
end
function ad()ba=ba%256+1
return e[13][1][ba]end
function aM(_,a)f=A[_[4]]if f[23]&2>0 and _[7]>0 then
_[8]=_[8]-(a+1)//2
_[7]=_[7]-a//2+v(_[8],0)_[8]=O(_[8],0)if ad()<f[10]then
_[6]=f[9]_[15]=0
_[23]=d
_[10]=n
end
end
end
function bk(b,g,ay)return g[20]and abs(((H(b,g)-b[3]+N)%360)-N)<ay and at(b,g,1)end
function aX(G,z)bH=ae and(ae[9]-G[9])*o[6]/y(ae,G)or 0
for a=1,o[12]do
b={}for a=1,30 do
b[a]=G[a]end
b[4]=o[8]b[10]=n
b[14]=z
bg=(ad()/S-1)*o[10]aK=Q(G[3]+bg,o[6])if o[7]>0then
h[#h+1]=b
f=A[b[4]]b[6]=f[3]b[9]=G[9]+o[13]b[11]=aK[1]b[12]=aK[2]b[17]=ai
b[19]=bH
else
c=ah(G,aK)c[9]=d[9]+bH
aU,ao,c=at(G,c,3,z)if not aU then
bJ=sub(c,Q(G[3]+bg,1))h[#h+1]=b
b[1]=bJ[1]b[2]=bJ[2]b[6]=A[b[4]][3]b[9]=c[3]b[19]=1
if u then
b=h[ao]aM(b,o[9]*((ad()&3)+2))end
end
end
end
end
function aS(_,c)if c>-1 then
b=e[9][c]if b[1]>0 or aj[31]*_[10][2]-aj[32]*_[10][1]<0 then
g=R[b[1]]ab[g and g[30]or#ab+1]={c,1,g or aj}_[4]=b[7]b=b[8]>0 and aS(_,b[8])end
else
aG=n
az=-c
t[9]=-c
end
end
function bL()bM,ae=2048
for a,_ in x(h)do
if a>1 and _ and bk(d,_,10)then
m=y(_,d)if m<bM then
if A[_[4]][23]&2>0then
ae=_
bM=m
end
end
end
end
end
function onTick()an(9,am(32))an(2,am(11))an(3,i)for k=1,3 do
if am(32)and(not ax)or not e[21]then
aZ=property.getText(aJ)a=1
j=bT
_=bd.sub(aZ,a,a)while _~=bTdo
c=bd.byte(_)if c>64then
j=(j..c-65)+0
if l==1then
bz=j
e[j]=e[j]or{}elseif l==2then
E=j
aa=0
elseif l==3then
aL=j
else
if aa==0then
aa=E
aL=aL-1
aN={}e[bz][#e[bz]+1]=aN
end
aN[#aN+1]=j
aa=aa-1
l=O(aa,aL)>0 and l-1 or 0
end
l=l+1
j=bT
else
j=j.._
end
a=a+1
_=bd.sub(aZ,a,a)end
aJ=aJ+1
ax=aZ==bT
end
end
if ax then
if aG then
ab,aG={}ak=1
for a=1,10 do
e[a]=e[a+10*az]end
h=e[1]V=e[4]R=e[8]P=e[10]B=e[12]A=e[15]for a=14,16 do
B[1][a]=0
end
az=az+1
for a,_ in x(h)do
for k=7,40 do
_[k]=0
end
bS=_[5]+1
_[7]=A[_[4]][4]_[9],_[10]=aY(#e[7],_)[1]if _[4]==1 then
if d then
_[7]=d[7]_[8]=d[8]end
d=_
elseif _[5]&bv<1then
h[a]=i
end
end
bf=P[1][3]end
for a,_ in x(e[2])do
_[10]=sub(V[_[2]],V[_[1]])if _[3]&4>0 then
f,C=R[e[3][_[6]][6]],R[e[3][_[7]][6]]_[8]=O(f[1],C[1])_[9],f[30],C[30]=v(f[2],C[2])else
_[8],_[9]=0,0
end
end
t={}for a=1,32 do
t[a]=0
end
W=v(W+1/bx,2/35)an(1,W>=0)if W>=0 then
W=W-1/35
for a=2,#P do
P[a][0]={}end
for a,r in x(ab)do
_=e[9][r[1]]c=r[3]b=_[2]f=c[b]c[b]=K(_[3],f-_[4],f+_[4])+0
f=c[b]if abs(f-_[3])<.1then
ab[a]=r[2]==_[5]and{_[6],1,c}or{r[1],r[2]+1,c}if _[6]==0 then
bn(ab,a)end
end
c[10]=c[10]or f~=r
c[30]=a
end
for a,_ in x(h)do
if _ then
for k,r in x({1,2,9})do
_[r]=_[r]+_[r+10]end
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
aH=e[16][_[6]]if _[15]>=aH[2]and aH[2]~=-1then
_[6]=aH[4]_[15]=0
T=e[16][_[6]][3]if T==1 then
for a,l in x(h)do
if l then
j=S-y(_,l)if j>0 then
aM(l,j)end
end
end
elseif T==2then
if bk(_,d,90)then
_[23]=d
_[6]=f[5]end
elseif T==3then
ay=aw(H(_,_[23])/45+.5)*45
u=i
l=1
bB=f[23]&4>0
while l<5 and not u do
j=ah(_,Q(ay+e[19][2][l],8))j[9]=_[9]u=ar(j,i,a,l)and(D[1]>=j[9]-24 or bB)l=l+1
end
if u then
for k=1,2 do
_[30+k]=j[k]-_[k]_[k]=j[k]end
_[3]=ay
_[10]=n
else
ar(_,i,a)end
_[9]=bB and _[9]or D[1]b=y(_,_[23])if f[13]>0 and at(_,_[23],1)and v(b,230)<ad()then
_[6]=f[13]end
if b<64 and f[12]>0then
_[6]=f[12]end
elseif T==5then
for a=1,11 do
d[3]=d[3]+e[19][9][a]o=e[14][23]bL()aX(d,1)end
d[3]=d[3]-20
elseif T>9 and _[20]then
_[3]=H(_,_[23])o=e[14][T]_[10]=n
ae=_[23]aX(_,a)end
end
if _[17]and _[17]>0then
o=e[14][_[17]]if not ar(_,i,a)or _[9]<=D[1]then
if aW then
aM(aW,f[21]*((ad()&7)+1))end
_[1]=_[1]-_[11]_[2]=_[2]-_[12]_[3]=0
_[6]=A[_[4]][5]_[10]=n
_[11]=0
_[12]=0
_[17]=bQ
_[19]=0
end
end
if _[6]==1then
h[a]=i
else
af=sub(_,P[1])L=P[2+af[1]//S+af[2]//S*bf]if L~=bQ then
L[0][#L[0]+1]=a
end
end
end
end
for a=1,8 do
if am(a)and B[1][a+4]>0then
ai=a
end
end
o=e[14][ai]d[3]=d[3]-au(3)*(K(aP,5,6)*1.5-6)aP=abs(au(3))*aP+1
Z=d
for a=1,2 do
Z=ah(Z,Q(d[3]-N+90*a,au(a)*8.33))end
Z[9]=d[9]for a=1,8 do
u=ar(Z,n,1,a)end
if u then
for a=1,2 do
d[30+a]=Z[a]-d[a]d[a]=Z[a]end
if d[9]<=D[1]then
d[9]=v(D[1],d[9]+4)d[19]=O(0,d[19])else
if d[9]>=D[2]-56then
d[9]=D[2]-56
d[19]=v(0,d[19])end
d[19]=d[19]-1
end
else
d[19]=0
end
aD=B[1]c=o[1]if am(31)and aC<=0 and(c==0 or aD[c]>=o[2])then
an(3,n)aC=o[3]if c>0then
aD[c]=aD[c]-o[2]end
bL()aX(d,1)end
aC=aC-1
if au(4)<0 then
_=ah(d,Q(d[3],64))_[9]=d[9]aU,ao=at(d,_,2,1)_=e[2][ao]if aU==i then
t[2]=ao
c,u=_[4]for a=14,16 do
u=u or B[1][a]>0 and c==a
end
if c==1 or u then
aS(_,_[5])elseif c>3000 and c<3005then
bv=aw(c-3000)end
end
end
end
t[1]=ai
for a=3,8 do
t[a]=d[e[19][4][a]]end
t[5]=1
t[13]=d[3]a=ak
bw=n
I=1
ap=#h+#R
while I<3 and bw do
c=I*9+5
if a<=#h then
_=h[a]if a~=1 then
if _ then
if _[10]then
_[10]=i
t[c]=a
for k=1,8 do
t[c+k]=_[e[19][1][k]]end
I=I+1
end
else
t[c]=-a
bn(h,a)I=I+1
ap=ap-1
end
end
else
_=R[a-#h]if _[10]then
_[10]=i
t[c]=a-#h+2^15
for k=1,6 do
t[c+k]=_[k]end
I=I+1
end
end
a=((a-2)%ap)+1
ak=v(ak,ap)bw=a~=ak
end
ak=a
for a=1,32 do
br.setNumber(a,t[a])end
end
as=as+1
async.httpGet(8,bT)end
function onDraw()aQ=screen.drawText
aQ(26,137,bx)if ax then
for a=1,4 do
b=124+a*7
aQ(240,b,aw(B[1][a]))aQ(230,b,B[1][13+a])end
end
end
