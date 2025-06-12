
S=128
L=180
F=math
N=F.max
C=F.min
be=F.floor
pi=F.pi
ar=input.getNumber
ac=input.getBool
ad=output.setBool
n=true
j=false
z=ipairs
abs=F.abs
aG=table.remove
bc=string
function ah(b,h)return{(b[1]+h[1]),(b[2]+h[2])}end
function sub(b,h)return{(b[1]-h[1]),(b[2]-h[2])}end
function by(b)return F.sin(b/L*pi)end
function ao(b)return F.cos(b/L*pi)end
function K(b,h)return F.atan(h[2]-b[2],h[1]-b[1])*L/pi end
function E(b,h,ao)return N(C(ao,b),h)end
function v(b,h)return F.sqrt(((b[1]-h[1])^2)+((b[2]-h[2])^2))end
function Y(b,h)return{ao(b)*h,by(b)*h}end
function exp(b)return b[1],b[2]end
e={}aD=1
at=3
bb=j
aO=n
an=2
az=0
au=0
bd=0
aE=0
W=0
aH=0
l=1
aY=0
bp=2
function aP(a,b,_)if a<2^15 then
_=e[7][a]return aP(_[_[3]*(b[2]-_[2])-_[4]*(b[1]-_[1])>0 and 8 or 7],b)else
a=e[5][e[6][a-32768][2]]return Q[e[3][e[2][a[4]][a[5]+6]][6]]end
end
function ai(u,bl,w,bD,_)X=g[w]f=B[X[4]]aA,aj=f[18],f[19]I=aA
A=aP(#e[7],u)V,am=exp(A)ab=sub(u,aX)M=U[2+ab[1]//S+ab[2]//S*bJ]or{}for a,_ in z(M[0]or{})do
c=g[_]if _~=w and c and X[14]~=_ then
m=v(c,u)D=B[c[4]]if c[20]then
aa=m-D[18]if aa<I and D[23]&1>0 and(f[23]&1>0 or E(u[9],c[9]-aj,c[9]+D[19])==u[9])then
bf=c
if bl==j then
return j
end
I=aa
aR=K(u,c)end
end
if w==1 then
if m<50 then
b=D[25]if b>0 then
for q,s in z(y[b])do
if s>0 and y[1][q]<y[2][q]then
c=y
g[_]=j
c[1][q]=be(C(c[1][q]+s,c[2][q]))if E(q,5,12)==q then
an=q-4
end
end
end
end
b=D[29]if b>0 then
b=e[11][b]for q=7,8 do
d[q]=E(d[q]+b[q*2-13],d[q],b[q*2-12])end
g[_]=j
end
end
end
end
end
if am-V<aj or V>u[9]+24 then
t=(bD or 1)<8 or bd%4>0 or A[6]<18 or aB(X,10)return j
end
for a=1,#M do
_=e[2][M[a]]m,bn=bq(u,Z[_[1]],Z[_[2]])if m<I then
if(_[3]&1>0 and f[23]&1>0)or _[3]&4==0 then
if w>1 or aN>0 or _[3]&4>0 then
I=m
aR=bn
end
else
ba,aL=C(_[9],am),N(_[8],V)if C(u[9],am-aj)+24<aL or N(u[9],V)+aj>ba or ba-aL<aj then
I=m
aR=bn
else
if bD==1 and(_[3]&512>0 or w==1)and(_[4]==2 or w>1)then
aU(_,_[5])end
am,V=ba,aL
end
end
end
end
A,bf={V,am}if bl then
if I~=aA then
_=ah(u,Y(aR,I-aA))u[1]=_[1]u[2]=_[2]end
return n
end
return I==aA
end
function bq(p,x,as)O=v(x,p)bA=K(x,as)+90
bK=bA-K(p,x)bx=-O*by(bK)aN=O*ao(bK)aV=bA
if aN<0 then
aV=aV+L
end
if bx<0 then
return O,K(p,x)elseif bx>v(as,x)then
return v(as,p),K(p,as)else
return abs(aN),aV
end
end
function aq(p,x,bg,w,_)aS=v(p,x)ax=aS
bh=n
aa,aW=exp(p)bR,bQ=exp(x)aI,aZ=exp(sub(x,p))ay,bE=p[9]+32,x[9]+32
t=j
for a,_ in z(e[2])do
bI=Z[_[1]]bt,bM=exp(sub(Z[_[2]],bI))bC,bz=exp(sub(p,bI))bm=bM*aI-bt*aZ
R=(bt*bz-bM*bC)/bm
bv=(aI*bz-aZ*bC)/bm
if E(R,0,1)==R and E(bv,0,1)==bv then
br={aa+(R*aI),aW+(R*aZ)}m=v(p,br)G=ay+(bE-ay)*(m/aS)if E(G,_[8]+1,_[9])~=G then
bh=j
if bg==1 then
return j
end
if m<ax then
ax=m
bB,bo=exp(br)bG=G
bi=a
end
end
end
end
if bg>1 then
if bg==3 then
for a,_ in z(g)do
if _ and a~=w then
f=B[_[4]]if f[23]&1>0 and _[20]then
m=v(p,_)if m<ax then
R=bq(_,p,x)O=(m/aS)G=ay+(bE-ay)*O
if E(G,_[9],_[9]+f[19])==G and R<f[18]then
ax=m
t=n
bh=j
bB=aa+(bR-aa)*O
bo=aW+(bQ-aW)*O
bG=G
bi=a
end
end
end
end
end
end
return bh,bi,{bB,bo,bG}end
return n
end
function httpReply(b,h,ao)bk=au//2
au=0
end
function ak()aH=aH%256+1
return e[13][1][aH]end
function aB(_,a,c)f=B[_[4]]if f[23]&2>0 and _[7]>0 then
_[8]=_[8]-(a+1)//2
_[7]=_[7]-a//2+C(_[8],0)_[8]=N(_[8],0)if ak()<f[10]then
_[6]=f[9]_[15]=0
_[23]=c or d
_[10]=n
end
end
end
function bw(b,h,ap)return h[20]and abs(((K(b,h)-b[3]+L)%360)-L)<ap and aq(b,h,1)end
function aJ(H,w)bj=al and(al[9]-H[9])*o[6]/v(al,H)or 0
for a=1,o[12]do
b={}for a=1,30 do
b[a]=H[a]end
b[4]=o[8]b[10]=n
b[14]=w
bN=(ak()/S-1)*o[10]b_=Y(H[3]+bN,o[6])if o[7]>0 then
g[#g+1]=b
f=B[b[4]]b[6]=f[3]b[9]=H[9]+o[13]b[11]=b_[1]b[12]=b_[2]b[17]=an
b[19]=bj
else
c=ah(H,b_)c[9]=d[9]+bj
aQ,aw,c=aq(H,c,3,w)if not aQ then
bL=sub(c,Y(H[3]+bN,1))g[#g+1]=b
b[1]=bL[1]b[2]=bL[2]b[6]=B[b[4]][3]b[9]=c[3]b[19]=1
if t then
b=g[aw]aB(b,o[9]*((ak()&3)+2),H)end
end
end
end
end
function aU(_,c)if c>-1 then
b=e[9][c]if b[1]>0 or X[31]*_[10][2]-X[32]*_[10][1]<0 then
h=Q[b[1]]ag[h and h[30]or#ag+1]={c,1,h or X}_[4]=b[7]b=b[8]>0 and aU(_,b[8])end
else
aO=n
at=-c
r[9]=-c
end
end
function bu()bP,al=2048
for a,_ in z(g)do
if a>1 and _ and bw(d,_,10)then
m=v(_,d)if m<bP then
if B[_[4]][23]&2>0 then
al=_
bP=m
end
end
end
end
end
function bO(_)if _[9]~=A[1]and not bH then
_[9]=A[1]_[10]=true
end
end
function onTick()ad(9,ac(32))ad(2,ac(11))ad(3,j)for k=1,3 do
if ac(32)and(not bb)or not e[21]then
aM=property.getText(aD)a=1
i=""
_=bc.sub(aM,a,a)while _~=""do
c=bc.byte(_)if c>64 then
i=(i..c-65)+0
if l==1 then
bF=i
e[i]=e[i]or{}elseif l==2 then
G=i
af=0
elseif l==3 then
aK=i
else
if af==0 then
af=G
aK=aK-1
aT={}e[bF][#e[bF]+1]=aT
end
aT[#aT+1]=i
af=af-1
l=N(af,aK)>0 and l-1 or 0
end
l=l+1
i=""
else
i=i.._
end
a=a+1
_=bc.sub(aM,a,a)end
aD=aD+1
bb=aM==""
end
end
if bb then
if aO then
ag,aO={}ae=1
for a=1,10 do
e[a]=e[a+10*at]end
g=e[1]Z=e[4]Q=e[8]U=e[10]aX,U[1]=U[1]y=e[12]B=e[15]for a=14,16 do
y[1][a]=0
end
at=at+1
for a=#g,1,-1 do
_=g[a]for k=7,40 do
_[k]=0
end
_[7]=B[_[4]][4]_[9],_[10]=aP(#e[7],_)[1]if _[5]&bp<1 then
aG(g,a)elseif _[4]==1 then
if d then
_[7]=d[7]_[8]=d[8]end
d=_
end
end
bJ=aX[3]end
for a,_ in z(e[2])do
_[10]=sub(Z[_[2]],Z[_[1]])if _[3]&4>0 then
f,D=Q[e[3][_[6]][6]],Q[e[3][_[7]][6]]_[8]=N(f[1],D[1])_[9],f[30],D[30]=C(f[2],D[2])else
_[8],_[9]=0,0
end
end
r={}for a=1,32 do
r[a]=0
end
aE=aE+1
W=C(W+1/bk,2/35)ad(1,W>=0)if W>=0 then
W=W-1/35
bd=bd+1
for a=2,#U do
U[a][0]={}end
for a,s in z(ag)do
_=e[9][s[1]]c=s[3]b=_[2]f=c[b]c[b]=E(_[3],f-_[4],f+_[4])+0
f=c[b]if f==_[3]then
ag[a]=s[2]==_[5]and{_[6],1,c}or{s[1],s[2]+1,c}if _[6]==0 then
aG(ag,a)end
end
c[10]=c[10]or f~=s
c[30]=a
end
for a,_ in z(g)do
if _ then
for k,s in z({1,2,9})do
_[s]=_[s]+_[s+10]end
_[15]=_[15]+1
f=B[_[4]]if _[7]<=0 and _[20]then
_[15]=0
_[6]=f[_[7]<=-f[4]and f[15]>1 and 15 or 14]_[10],_[20]=n
if f[27]>0 then
c={}for k=1,30 do
c[k]=_[k]end
c[4]=f[27]c[6]=f[28]g[#g+1]=c
end
end
aC=e[16][_[6]]if _[15]>=aC[2]and aC[2]~=-1 then
_[6]=aC[4]_[15]=0
T=e[16][_[6]][3]bH=f[23]&4>0
if T==1 then
for a,l in z(g)do
if l then
i=S-v(_,l)if i>0 then
aB(l,i)end
end
end
elseif T==2 then
if bw(_,d,90)then
_[23]=d
_[6]=f[5]end
ai(_,j,a,8)bO(_)elseif T==3 then
_[23]=_[23][20]and _[23]or d
ap=be(K(_,_[23])/45+.5)*45
t=j
l=1
while l<5 and not t do
i=ah(_,Y(ap+e[19][2][l],8))i[9]=_[9]t=ai(i,j,a,l)and(A[1]>=i[9]-24 or bH)l=l+1
end
if t then
for k=1,2 do
_[30+k]=i[k]-_[k]_[k]=i[k]end
_[3]=ap
_[10]=n
else
ai(_,j,a,8)end
bO(_)b=v(_,_[23])if f[13]>0 and aq(_,_[23],1)and C(b,230)<ak()then
_[6]=f[13]end
if b<64 and f[12]>0 then
_[6]=f[12]end
elseif T==5 then
for a=1,11 do
d[3]=d[3]+e[19][9][a]o=e[14][23]bu()aJ(d,1)end
d[3]=d[3]-20
elseif T>9 and _[20]then
_[3]=K(_,_[23])o=e[14][T]_[10]=n
al=_[23]aJ(_,a)end
end
if _[17]and _[17]>0 then
o=e[14][_[17]]if not ai(_,j,a)or _[9]<=A[1]then
if bf then
aB(bf,f[21]*((ak()&7)+1),g[_[14]])end
_[1]=_[1]-_[11]_[2]=_[2]-_[12]_[3]=0
_[6]=B[_[4]][5]_[10]=n
_[11]=0
_[12],_[17]=0
_[19]=0
end
end
if _[6]==1 then
g[a]=j
else
ab=sub(_,aX)M=U[2+ab[1]//S+ab[2]//S*bJ]if M then
M[0][#M[0]+1]=a
end
end
end
end
for a=1,8 do
if ac(a)and y[1][a+4]>0 then
an=a
end
end
o=e[14][an]d[3]=d[3]-ar(3)*(E(aY,5,6)*1.5-6)aY=abs(ar(3))*aY+1
P=d
for a=1,2 do
P=ah(P,Y(d[3]-L+90*a,ar(a)*8.33))end
P[9]=d[9]for a=1,8 do
t=ai(P,n,1,a)end
if t then
for a=1,2 do
d[30+a]=P[a]-d[a]d[a]=P[a]end
if d[9]>A[1]then
d[19]=d[19]-1
else
d[9]=C(A[1],d[9]+4)d[19]=N(0,d[19])end
else
d[19]=0
d[9]=A[1]end
aF=y[1]c=o[1]if ac(31)and az<=0 and(c==0 or aF[c]>=o[2])then
ad(3,n)az=o[3]if c>0 then
aF[c]=aF[c]-o[2]end
bu()aJ(d,1)end
az=az-1
if ar(4)<0 then
_=ah(d,Y(d[3],64))_[9]=d[9]aQ,aw=aq(d,_,2,1)_=e[2][aw]if aQ==j then
r[2]=aw
c,t=_[4]for a=14,16 do
t=t or y[1][a]>0 and c==a
end
if c==1 or t then
aU(_,_[5])elseif c>3000 and c<3005 then
bp=be(c-3000)end
end
end
end
r[1]=an
for a=3,13 do
r[a]=d[e[19][4][a]]or r[a]end
y[1][17]=bk
r[10]=y[1][aE%#y[1]+1]a=ae
bs=n
J=1
av=#g+#Q
while J<3 and bs do
c=J*9+5
if a<=#g then
_=g[a]if a~=1 then
if _ then
if _[10]then
_[10]=j
r[c]=a
for k=1,8 do
r[c+k]=_[e[19][1][k]]end
J=J+1
end
else
r[c]=-a
aG(g,a)J=J+1
av=av-1
end
end
else
_=Q[a-#g]if _[10]then
_[10]=j
r[c]=a-#g+2^15
for k=1,6 do
r[c+k]=_[k]end
J=J+1
end
end
a=(a-2)%av+1
ae=C(ae,av)bs=a~=ae
end
ae=a
for a=1,32 do
output.setNumber(a,r[a])end
end
au=au+1
async.httpGet(8,"")end
