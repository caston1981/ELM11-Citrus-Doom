
U=128
O=180
G=math
M=G.max
C=G.min
aK=G.floor
pi=G.pi
aA=input.getNumber
ac=input.getBool
al=output.setBool
o=true
j=false
z=ipairs
abs=G.abs
aH=table.remove
bg=string
function ah(b,h)return{(b[1]+h[1]),(b[2]+h[2])}end
function sub(b,h)return{(b[1]-h[1]),(b[2]-h[2])}end
function bj(b)return G.sin(b/O*pi)end
function ao(b)return G.cos(b/O*pi)end
function J(b,h)return G.atan(h[2]-b[2],h[1]-b[1])*O/pi end
function D(b,h,ao)return M(C(ao,b),h)end
function w(b,h)return G.sqrt(((b[1]-h[1])^2)+((b[2]-h[2])^2))end
function T(b,h)return{ao(b)*h,bj(b)*h}end
function exp(b)return b[1],b[2]end
e={}b_=1
ax=3
aE=j
aC=o
am=2
av=0
aB=0
aU=0
bf=0
Y=0
aR=0
m=1
bh=0
bD=2
function aN(a,b,_)if a<2^15 then
_=e[7][a]return aN(_[_[3]*(b[2]-_[2])-_[4]*(b[1]-_[1])>0 and 8 or 7],b)else
a=e[5][e[6][a-32768][2]]return Q[e[3][e[2][a[4]][a[5]+6]][6]]end
end
function ad(t,bl,y,by,_)S=g[y]f=B[S[4]]ar,an=f[18],f[19]K=ar
A=aN(#e[7],t)aa,ab=exp(A)ag=sub(t,aQ)N=V[2+ag[1]//U+ag[2]//U*bs]or{}for a,_ in z(N[0]or{})do
c=g[_]if _~=y and c and S[14]~=_ then
l=w(c,t)E=B[c[4]]if c[20]then
X=l-E[18]if X<K and E[23]&1>0 and(f[23]&1>0 or D(t[9],c[9]-an,c[9]+E[19])==t[9])then
bc=c
if bl==j then
return j
end
K=X
aG=J(t,c)end
end
if y==1 then
if l<50 then
b=E[25]if b>0 then
for q,r in z(x[b])do
if r>0 and x[1][q]<x[2][q]then
c=x
g[_]=j
c[1][q]=aK(C(c[1][q]+r,c[2][q]))if D(q,5,12)==q then
am=q-4
end
end
end
end
b=E[29]if b>0 then
b=e[11][b]for q=7,8 do
d[q]=D(d[q]+b[q*2-13],d[q],b[q*2-12])end
g[_]=j
end
end
end
end
end
if ab-aa<an or aa>t[9]+24 then
u=(by or 1)<8 or aU%4>0 or A[6]<18 or ap(S,10)return j
end
for a=1,#N do
_=e[2][N[a]]l,bC=bM(t,R[_[1]],R[_[2]])if l<K then
if(_[3]&1>0 and f[23]&1>0)or _[3]&4==0 then
if y>1 or aV>0 or _[3]&4>0 then
K=l
aG=bC
end
else
aP,bd=C(_[9],ab),M(_[8],aa)if C(t[9],ab-an)+24<bd or M(t[9],aa)+an>aP or aP-bd<an then
K=l
aG=bC
else
if by==1 and(_[3]&512>0 or y==1)and(_[4]==2 or y>1)then
aZ(_,_[5])end
ab,aa=aP,bd
end
end
end
end
A,bc={aa,ab}if bl then
if K~=ar then
_=ah(t,T(aG,K-ar))t[1]=_[1]t[2]=_[2]end
return o
end
return K==ar
end
function bM(p,v,aw)L=w(v,p)bv=J(v,aw)+90
bH=bv-J(p,v)bn=-L*bj(bH)aV=L*ao(bH)aS=bv
if aV<0 then
aS=aS+O
end
if bn<0 then
return L,J(p,v)elseif bn>w(aw,v)then
return w(aw,p),J(p,aw)else
return abs(aV),aS
end
end
function ay(p,v,aF,y,_)aT=w(p,v)aq=aT
bb=o
X,aJ=exp(p)bR,bQ=exp(v)aY,ba=exp(sub(v,p))at,bq=p[9]+32,v[9]+32
u=j
for a,_ in z(e[2])do
bx=R[_[1]]bB,bF=exp(sub(R[_[2]],bx))bN,bk=exp(sub(p,bx))br=bF*aY-bB*ba
Z=(bB*bk-bF*bN)/br
bw=(aY*bk-ba*bN)/br
if D(Z,0,1)==Z and D(bw,0,1)==bw then
bP={X+(Z*aY),aJ+(Z*ba)}l=w(p,bP)F=at+(bq-at)*(l/aT)if D(F,_[8]+1,_[9])~=F then
bb=j
if aF==1 then
return j
end
if l<aq then
aq=l
bz,bE=exp(bP)bt=F
bm=a
end
end
end
end
if aF>1 then
if aF==3 then
for a,_ in z(g)do
if _ and a~=y then
f=B[_[4]]if f[23]&1>0 and _[20]then
l=w(p,_)if l<aq then
Z=bM(_,p,v)L=(l/aT)F=at+(bq-at)*L
if D(F,_[9],_[9]+f[19])==F and Z<f[18]then
aq=l
u=o
bb=j
bz=X+(bR-X)*L
bE=aJ+(bQ-aJ)*L
bt=F
bm=a
end
end
end
end
end
end
return bb,bm,{bz,bE,bt}end
return o
end
function httpReply(b,h,ao)bA=aB//2
aB=0
end
function aj()aR=aR%256+1
return e[13][1][aR]end
function ap(_,a,c)f=B[_[4]]if f[23]&2>0 and _[7]>0 then
_[8]=_[8]-(a+1)//2
_[7]=_[7]-a//2+C(_[8],0)_[8]=M(_[8],0)if aj()<f[10]then
_[6]=f[9]_[15]=0
_[23]=c or d
_[10]=o
end
end
end
function bI(b,h,as)return h[20]and abs(((J(b,h)-b[3]+O)%360)-O)<as and ay(b,h,1)end
function aM(H,y)bp=ak and(ak[9]-H[9])*n[6]/w(ak,H)or 0
for a=1,n[12]do
b={}for a=1,30 do
b[a]=H[a]end
b[4]=n[8]b[10]=o
b[14]=y
bu=(aj()/U-1)*n[10]be=T(H[3]+bu,n[6])if n[7]>0 then
g[#g+1]=b
f=B[b[4]]b[6]=f[3]b[9]=H[9]+n[13]b[11]=be[1]b[12]=be[2]b[17]=am
b[19]=bp
else
c=ah(H,be)c[9]=d[9]+bp
aD,az,c=ay(H,c,3,y)if not aD then
bO=sub(c,T(H[3]+bu,1))g[#g+1]=b
b[1]=bO[1]b[2]=bO[2]b[6]=B[b[4]][3]b[9]=c[3]b[19]=1
if u then
b=g[az]ap(b,n[9]*((aj()&3)+2),H)end
end
end
end
end
function aZ(_,c)if c>-1 then
b=e[9][c]if b[1]>0 or S[31]*_[10][2]-S[32]*_[10][1]<0 then
h=Q[b[1]]af[h and h[30]or#af+1]={c,1,h or S}_[4]=b[7]b=b[8]>0 and aZ(_,b[8])end
else
aC=o
ax=-c
s[9]=-c
end
end
function bi()bG,ak=2048
for a,_ in z(g)do
if a>1 and _ and bI(d,_,10)then
l=w(_,d)if l<bG then
if B[_[4]][23]&2>0 then
ak=_
bG=l
end
end
end
end
end
function bK(_)if _[9]~=A[1]and not bL then
_[9]=A[1]_[10]=true
end
end
function onTick()al(9,ac(32))al(2,ac(11))al(3,j)for k=1,3 do
if ac(32)and(not aE)or not e[21]then
aX=property.getText(b_)a=1
i=""
_=bg.sub(aX,a,a)while _~=""do
c=bg.byte(_)if c>64 then
i=(i..c-65)+0
if m==1 then
bJ=i
e[i]=e[i]or{}elseif m==2 then
F=i
ae=0
elseif m==3 then
aW=i
else
if ae==0 then
ae=F
aW=aW-1
aO={}e[bJ][#e[bJ]+1]=aO
end
aO[#aO+1]=i
ae=ae-1
m=M(ae,aW)>0 and m-1 or 0
end
m=m+1
i=""
else
i=i.._
end
a=a+1
_=bg.sub(aX,a,a)end
b_=b_+1
aE=aX==""
end
end
if aE then
if aC then
af,aC={}ai=1
for a=1,10 do
e[a]=e[a+10*ax]end
g=e[1]R=e[4]Q=e[8]V=e[10]aQ,V[1]=V[1]x=e[12]B=e[15]for a=14,16 do
x[1][a]=0
end
ax=ax+1
for a=#g,1,-1 do
_=g[a]for k=7,40 do
_[k]=0
end
_[7]=B[_[4]][4]_[9],_[10]=aN(#e[7],_)[1]if _[5]&bD<1 then
aH(g,a)elseif _[4]==1 then
if d then
_[7]=d[7]_[8]=d[8]end
d=_
end
end
bs=aQ[3]end
for a,_ in z(e[2])do
_[10]=sub(R[_[2]],R[_[1]])if _[3]&4>0 then
f,E=Q[e[3][_[6]][6]],Q[e[3][_[7]][6]]_[8]=M(f[1],E[1])_[9],f[30],E[30]=C(f[2],E[2])else
_[8],_[9]=0,0
end
end
s={}for a=1,32 do
s[a]=0
end
bf=bf+1
Y=C(Y+1/bA,2/35)al(1,Y>=0)if Y>=0 then
Y=Y-1/35
aU=aU+1
for a=2,#V do
V[a][0]={}end
for a,r in z(af)do
_=e[9][r[1]]c=r[3]b=_[2]f=c[b]c[b]=D(_[3],f-_[4],f+_[4])+0
f=c[b]if f==_[3]then
af[a]=r[2]==_[5]and{_[6],1,c}or{r[1],r[2]+1,c}if _[6]==0 then
aH(af,a)end
end
c[10]=c[10]or f~=r
c[30]=a
end
for a,_ in z(g)do
if _ then
for k,r in z({1,2,9})do
_[r]=_[r]+_[r+10]end
_[15]=_[15]+1
f=B[_[4]]if _[7]<=0 and _[20]then
_[15]=0
_[6]=f[_[7]<=-f[4]and f[15]>1 and 15 or 14]_[10],_[20]=o
if f[27]>0 then
c={}for k=1,30 do
c[k]=_[k]end
c[4]=f[27]c[6]=f[28]g[#g+1]=c
end
end
aI=e[16][_[6]]if _[15]>=aI[2]and aI[2]~=-1 then
_[6]=aI[4]_[15]=0
W=e[16][_[6]][3]bL=f[23]&4>0
if W==1 then
for a,m in z(g)do
if m then
i=U-w(_,m)if i>0 then
ap(m,i)end
end
end
elseif W==2 then
if bI(_,d,90)then
_[23]=d
_[6]=f[5]end
ad(_,j,a,8)bK(_)elseif W==3 then
_[23]=_[23][20]and _[23]or d
as=aK(J(_,_[23])/45+.5)*45
u=j
m=1
while m<5 and not u do
i=ah(_,T(as+e[19][2][m],8))i[9]=_[9]u=ad(i,j,a,m)and(A[1]>=i[9]-24 or bL)m=m+1
end
if u then
for k=1,2 do
_[30+k]=i[k]-_[k]_[k]=i[k]end
_[3]=as
_[10]=o
else
ad(_,j,a,8)end
bK(_)b=w(_,_[23])if f[13]>0 and ay(_,_[23],1)and C(b,230)<aj()then
_[6]=f[13]end
if b<64 and f[12]>0 then
_[6]=f[12]end
elseif W==5 then
for a=1,11 do
d[3]=d[3]+e[19][9][a]n=e[14][23]bi()aM(d,1)end
d[3]=d[3]-20
elseif W>9 and _[20]then
_[3]=J(_,_[23])n=e[14][W]_[10]=o
ak=_[23]aM(_,a)end
end
if _[17]and _[17]>0 then
n=e[14][_[17]]if not ad(_,j,a)or _[9]<=A[1]then
if bc then
ap(bc,f[21]*((aj()&7)+1),g[_[14]])end
_[1]=_[1]-_[11]_[2]=_[2]-_[12]_[3]=0
_[6]=B[_[4]][5]_[10]=o
_[11]=0
_[12],_[17]=0
_[19]=0
end
end
if _[6]==1 then
g[a]=j
else
ag=sub(_,aQ)N=V[2+ag[1]//U+ag[2]//U*bs]if N then
N[0][#N[0]+1]=a
end
end
end
end
for a=1,8 do
if ac(a)and x[1][a+4]>0 then
am=a
end
end
n=e[14][am]d[3]=d[3]-aA(3)*(D(bh,5,6)*1.5-6)bh=abs(aA(3))*bh+1
P=d
for a=1,2 do
P=ah(P,T(d[3]-O+90*a,aA(a)*8.33))end
P[9]=d[9]for a=1,8 do
u=ad(P,o,1,a)end
if u then
for a=1,2 do
d[30+a]=P[a]-d[a]d[a]=P[a]end
if d[9]>A[1]then
d[19]=d[19]-1
else
d[9]=C(A[1],d[9]+4)d[19]=M(0,d[19])end
else
d[19]=0
d[9]=A[1]end
aL=x[1]c=n[1]if ac(31)and av<=0 and(c==0 or aL[c]>=n[2])then
al(3,o)av=n[3]if c>0 then
aL[c]=aL[c]-n[2]end
bi()aM(d,1)end
av=av-1
if aA(4)<0 then
_=ah(d,T(d[3],64))_[9]=d[9]aD,az=ay(d,_,2,1)_=e[2][az]if aD==j then
s[2]=az
c,u=_[4]for a=14,16 do
u=u or x[1][a]>0 and c==a
end
if c==1 or u then
aZ(_,_[5])elseif c>3000 and c<3005 then
bD=aK(c-3000)end
end
end
end
s[1]=am
for a=3,13 do
s[a]=d[e[19][4][a]]or s[a]end
x[1][17]=bA
s[10]=x[1][bf%#x[1]+1]a=ai
bo=o
I=1
au=#g+#Q
while I<3 and bo do
c=I*9+5
if a<=#g then
_=g[a]if a~=1 then
if _ then
if _[10]then
_[10]=j
s[c]=a
for k=1,8 do
s[c+k]=_[e[19][1][k]]end
I=I+1
end
else
s[c]=-a
aH(g,a)I=I+1
au=au-1
end
end
else
_=Q[a-#g]if _[10]then
_[10]=j
s[c]=a-#g+2^15
for k=1,6 do
s[c+k]=_[k]end
I=I+1
end
end
a=(a-2)%au+1
ai=C(ai,au)bo=a~=ai
end
ai=a
for a=1,32 do
output.setNumber(a,s[a])end
end
aB=aB+1
async.httpGet(8,"")end
