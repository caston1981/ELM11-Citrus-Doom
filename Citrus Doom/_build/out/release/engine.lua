bU=""

S=128
L=180
bo=output
bB=input
C=math
M=C.max
B=C.min
ax=C.floor
pi=C.pi
ap=bB.getNumber
ah=bB.getBool
ab=bo.setBool
o=true
i=false
x=ipairs
abs=C.abs
bE=table.remove
aJ=string
function an(b,g)return{(b[1]+g[1]),(b[2]+g[2])}end
function sub(b,g)return{(b[1]-g[1]),(b[2]-g[2])}end
function bu(b)return C.sin(b/L*pi)end
function ai(b)return C.cos(b/L*pi)end
function G(b,g)return C.atan(g[2]-b[2],g[1]-b[1])*L/pi end
function H(b,g,ai)return M(B(ai,b),g)end
function w(b,g)return C.sqrt(((b[1]-g[1])^2)+((b[2]-g[2])^2))end
function Y(b,g)return{ai(b)*g,bu(b)*g}end
function exp(b)return b[1],b[2]end
e={}aP=1
au=3
ao=i
aS=o
ag=2
ay=0
av=0
aG=0
X=0
bc=0
m=1
aN=0
bn=2
function aM(a,b,_)if a<32768then
_=e[7][a]return aM(_[_[3]*(b[2]-_[2])-_[4]*(b[1]-_[1])>0 and 8 or 7],b)else
a=e[5][e[6][a-32768][2]]return Q[e[3][e[2][a[4]][a[5]+6]][6]]end
end
function az(u,bD,v,bR,_,a,k)aa=h[v]f=z[aa[4]]as,ad=f[18],f[19]J=as
F=aM(#e[7],u)R,ae=exp(F)am=sub(u,bd)N=P[2+am[1]//S+am[2]//S*by]or{}for a,_ in x(N[0]or{})do
c=h[_]if _~=v and c and aa[14]~=_ then
l=w(c,u)E=z[c[4]]if c[20]then
W=l-E[18]if W<J and E[23]&1>0 and(f[23]&1>0 or(u[9]+ad<c[9]or u[9]>c[9]+E[19])==i)then
aE=c
if bD==i then
return i
end
J=W
aK=G(u,c)end
end
if v==1 and not c[10]then
if l<50then
b=E[25]if b>0then
for q,r in x(A[b])do
if r>0 and A[1][q]<A[2][q]then
c=A
h[_]=i
c[1][q]=ax(B(c[1][q]+r,c[2][q]))if H(q,5,12)==q then
ag=q-4
end
end
end
end
b=E[29]if b>0 then
b=e[11][b]for q=7,8 do
d[q]=H(d[q]+b[q*2-13],d[q],b[q*2-12])end
h[_]=i
end
end
end
end
end
aE=i
if ae-R<ad or R>u[9]+24then
return i
end
for a=1,#N do
_=e[2][N[a]]l,bM=br(u,V[_[1]],V[_[2]])if l<J then
if(_[3]&1>0 and f[23]&1>0)or _[3]&4==0 then
if v>1 or aX>0 or _[3]&4>0 then
J=l
aK=bM
end
else
aV,aF=B(_[9],ae),M(_[8],R)if B(u[9],ae-ad)+24<aF or M(u[9],R)+ad>aV or aV-aF<ad then
J=l
aK=bM
else
if bR==1 and(_[3]&512>0 or v==1)and(_[4]==2 or v>1)then
b_(_,_[5])end
ae,R=aV,aF
end
end
end
end
F={R,ae}if bD then
if J~=as then
_=an(u,Y(aK,J-as))u[1]=_[1]u[2]=_[2]end
return o
end
return J==as
end
function br(p,y,aA)O=w(y,p)bp=G(y,aA)+90
bz=bp-G(p,y)bm=-O*bu(bz)aX=O*ai(bz)be=bp
if aX<0 then
be=be+L
end
if bm<0 then
return O,G(p,y)elseif bm>w(aA,y)then
return w(aA,p),G(p,aA)else
return abs(aX),be
end
end
function ar(p,y,aH,v,_)aR=w(p,y)aB=aR
aQ=o
W,aZ=exp(p)bS,bQ=exp(y)bf,aO=exp(sub(y,p))at,bA=p[9]+32,y[9]+32
s=i
for a,_ in x(e[2])do
bt=V[_[1]]bl,bj=exp(sub(V[_[2]],bt))bq,bF=exp(sub(p,bt))bv=bj*bf-bl*aO
U=(bl*bF-bj*bq)/bv
bi=(bf*bF-aO*bq)/bv
if H(U,0,1)==U and H(bi,0,1)==bi then
bO={W+(U*bf),aZ+(U*aO)}l=w(p,bO)D=at+(bA-at)*(l/aR)if H(D,_[8]+1,_[9])~=D then
aQ=i
if aH==1 then
return i
end
if l<aB then
aB=l
bP,bk=exp(bO)bK=D
bs=a
end
end
end
end
if aH>1 then
if aH==3 then
for a,_ in x(h)do
if _ and a~=v then
f=z[_[4]]if f[23]&1>0 and _[20]then
l=w(p,_)if l<aB then
U=br(_,p,y)O=(l/aR)D=at+(bA-at)*O
if H(D,_[9],_[9]+f[19])==D and U<f[18]then
aB=l
s=o
aQ=i
bP=W+(bS-W)*O
bk=aZ+(bQ-aZ)*O
bK=D
bs=a
end
end
end
end
end
end
return aQ,bs,{bP,bk,bK}end
return o
end
function httpReply(b,g,ai)bw=av//2
av=0
end
function af()bc=bc%256+1
return e[13][1][bc]end
function aw(_,a)f=z[_[4]]if f[23]&2>0 and _[7]>0 then
_[8]=_[8]-(a+1)//2
_[7]=_[7]-a//2+B(_[8],0)_[8]=M(_[8],0)if af()<f[10]then
_[6]=f[9]_[15]=0
_[23]=d
_[10]=o
end
end
end
function bJ(b,g,aD)return g[20]and abs(((G(b,g)-b[3]+L)%360)-L)<aD and ar(b,g,1)end
function aW(I,v)bN=aj and(aj[9]-I[9])*n[6]/w(aj,I)or 0
for a=1,n[12]do
b={}for a=1,30 do
b[a]=I[a]end
b[4]=n[8]b[10]=o
b[14]=v
bI=(af()/S-1)*n[10]bb=Y(I[3]+bI,n[6])if n[7]>0then
h[#h+1]=b
f=z[b[4]]b[6]=f[3]b[9]=I[9]+n[13]b[11]=bb[1]b[12]=bb[2]b[17]=ag
b[19]=bN
else
c=an(I,bb)c[9]=d[9]+bN
aY,aq,c=ar(I,c,3,v)if not aY then
bh=sub(c,Y(I[3]+bI,1))h[#h+1]=b
b[1]=bh[1]b[2]=bh[2]b[6]=z[b[4]][3]b[9]=c[3]b[19]=1
if s then
b=h[aq]aw(b,n[9]*((af()&3)+2))end
end
end
end
end
function b_(_,c)if c>-1 then
b=e[9][c]if b[1]>0 or aa[31]*_[10][2]-aa[32]*_[10][1]<0 then
g=Q[b[1]]al[g and g[30]or#al+1]={c,1,g or aa}_[4]=b[7]b=b[8]>0 and b_(_,b[8])end
else
aS=o
au=-c
t[9]=-c
end
end
function bL()bG,aj=2048
for a,_ in x(h)do
if a>1 and _ and bJ(d,_,10)then
l=w(_,d)if l<bG then
if z[_[4]][23]&2>0then
aj=_
bG=l
end
end
end
end
end
function onTick()ab(9,ah(32))ab(2,ah(11))ab(3,i)for k=1,3 do
if ah(32)and(not ao)or not e[21]then
ba=property.getText(aP)a=1
j=bU
_=aJ.sub(ba,a,a)while _~=bUdo
c=aJ.byte(_)if c>64then
j=(j..c-65)+0
if m==1then
bx=j
e[j]=e[j]or{}elseif m==2then
D=j
ac=0
elseif m==3then
aU=j
else
if ac==0then
ac=D
aU=aU-1
aI={}e[bx][#e[bx]+1]=aI
end
aI[#aI+1]=j
ac=ac-1
m=M(ac,aU)>0 and m-1 or 0
end
m=m+1
j=bU
else
j=j.._
end
a=a+1
_=aJ.sub(ba,a,a)end
aP=aP+1
ao=ba==bU
end
end
if ao then
if aS then
al,aS={}ak=1
for a=1,10 do
e[a]=e[a+10*au]end
h=e[1]V=e[4]Q=e[8]P=e[10]bd,P[1]=P[1]A=e[12]z=e[15]for a=14,16 do
A[1][a]=0
end
au=au+1
for a,_ in x(h)do
for k=7,40 do
_[k]=0
end
bT=_[5]+1
_[7]=z[_[4]][4]_[9],_[10]=aM(#e[7],_)[1]if _[4]==1 then
if d then
_[7]=d[7]_[8]=d[8]end
d=_
elseif _[5]&bn<1then
h[a]=i
end
end
by=bd[3]end
for a,_ in x(e[2])do
_[10]=sub(V[_[2]],V[_[1]])if _[3]&4>0 then
f,E=Q[e[3][_[6]][6]],Q[e[3][_[7]][6]]_[8]=M(f[1],E[1])_[9],f[30],E[30]=B(f[2],E[2])else
_[8],_[9]=0,0
end
end
t={}for a=1,32 do
t[a]=0
end
X=B(X+1/bw,2/35)ab(1,X>=0)if X>=0 then
X=X-1/35
aG=aG+1
for a=2,#P do
P[a][0]={}end
for a,r in x(al)do
_=e[9][r[1]]c=r[3]b=_[2]f=c[b]c[b]=H(_[3],f-_[4],f+_[4])+0
f=c[b]if f==_[3]then
al[a]=r[2]==_[5]and{_[6],1,c}or{r[1],r[2]+1,c}if _[6]==0 then
bE(al,a)end
end
c[10]=c[10]or f~=r
c[30]=a
end
for a,_ in x(h)do
if _ then
for k,r in x({1,2,9})do
_[r]=_[r]+_[r+10]end
_[15]=_[15]+1
f=z[_[4]]if _[7]<=0 and _[20]then
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
for a,m in x(h)do
if m then
j=S-w(_,m)if j>0 then
aw(m,j)end
end
end
elseif T==2then
if bJ(_,d,90)then
_[23]=d
_[6]=f[5]end
elseif T==3then
aD=ax(G(_,_[23])/45+.5)*45
s=i
m=1
bC=f[23]&4>0
while m<5 and not s do
j=an(_,Y(aD+e[19][2][m],8))j[9]=_[9]s=az(j,i,a,m)and(F[1]>=j[9]-24 or bC)m=m+1
end
if s then
for k=1,2 do
_[30+k]=j[k]-_[k]_[k]=j[k]end
_[3]=aD
_[10]=o
else
az(_,i,a)end
_[9]=bC and _[9]or F[1]b=w(_,_[23])if f[13]>0 and ar(_,_[23],1)and B(b,230)<af()then
_[6]=f[13]end
if b<64 and f[12]>0then
_[6]=f[12]end
elseif T==5then
for a=1,11 do
d[3]=d[3]+e[19][9][a]n=e[14][23]bL()aW(d,1)end
d[3]=d[3]-20
elseif T>9 and _[20]then
_[3]=G(_,_[23])n=e[14][T]_[10]=o
aj=_[23]aW(_,a)end
end
if _[17]and _[17]>0then
n=e[14][_[17]]if not az(_,i,a)or _[9]<=F[1]then
if aE then
aw(aE,f[21]*((af()&7)+1))end
_[1]=_[1]-_[11]_[2]=_[2]-_[12]_[3]=0
_[6]=z[_[4]][5]_[10]=o
_[11]=0
_[12],_[17]=0
_[19]=0
end
end
if _[6]==1then
h[a]=i
else
am=sub(_,bd)N=P[2+am[1]//S+am[2]//S*by]if N then
N[0][#N[0]+1]=a
end
end
end
end
for a=1,8 do
if ah(a)and A[1][a+4]>0then
ag=a
end
end
n=e[14][ag]d[3]=d[3]-ap(3)*(H(aN,5,6)*1.5-6)aN=abs(ap(3))*aN+1
Z=d
for a=1,2 do
Z=an(Z,Y(d[3]-L+90*a,ap(a)*8.33))end
Z[9]=d[9]for a=1,8 do
s=az(Z,o,1,a)end
if s then
for a=1,2 do
d[30+a]=Z[a]-d[a]d[a]=Z[a]end
if d[9]>F[1]then
d[19]=d[19]-1
else
d[9]=B(F[1],d[9]+4)d[19]=M(0,d[19])end
else
d[19]=0
d[9]=F[1]s=aG%4>0 or F[6]<18 or aw(d,10)end
bg=A[1]c=n[1]if ah(31)and ay<=0 and(c==0 or bg[c]>=n[2])then
ab(3,o)ay=n[3]if c>0then
bg[c]=bg[c]-n[2]end
bL()aW(d,1)end
ay=ay-1
if ap(4)<0 then
_=an(d,Y(d[3],64))_[9]=d[9]aY,aq=ar(d,_,2,1)_=e[2][aq]if aY==i then
t[2]=aq
c,s=_[4]for a=14,16 do
s=s or A[1][a]>0 and c==a
end
if c==1 or s then
b_(_,_[5])elseif c>3000 and c<3005then
bn=ax(c-3000)end
end
end
end
t[1]=ag
for a=3,8 do
t[a]=d[e[19][4][a]]end
t[5]=1
t[13]=d[3]a=ak
bH=o
K=1
aC=#h+#Q
while K<3 and bH do
c=K*9+5
if a<=#h then
_=h[a]if a~=1 then
if _ then
if _[10]then
_[10]=i
t[c]=a
for k=1,8 do
t[c+k]=_[e[19][1][k]]end
K=K+1
end
else
t[c]=-a
bE(h,a)K=K+1
aC=aC-1
end
end
else
_=Q[a-#h]if _[10]then
_[10]=i
t[c]=a-#h+2^15
for k=1,6 do
t[c+k]=_[k]end
K=K+1
end
end
a=((a-2)%aC)+1
ak=B(ak,aC)bH=a~=ak
end
ak=a
for a=1,32 do
bo.setNumber(a,t[a])end
end
av=av+1
async.httpGet(8,bU)end
function onDraw()aT=screen.drawText
aT(26,137,bw)if ao then
for a=1,4 do
b=124+a*7
aT(240,b,ax(A[1][a]))aT(200,b,A[1][13+a])end
end
end
