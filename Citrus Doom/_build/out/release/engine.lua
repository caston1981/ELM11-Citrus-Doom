
S=128
L=180
F=math
O=F.max
A=F.min
bb=F.floor
pi=F.pi
au=input.getNumber
ae=input.getBool
ab=output.setBool
o=true
w=false
y=ipairs
abs=F.abs
bc=table.remove
aY=string
function af(b,g)return{(b[1]+g[1]),(b[2]+g[2])}end
function sub(b,g)return{(b[1]-g[1]),(b[2]-g[2])}end
function bL(b)return F.sin(b/L*pi)end
function an(b)return F.cos(b/L*pi)end
function I(b,g)return F.atan(g[2]-b[2],g[1]-b[1])*L/pi end
function H(b,g,an)return O(A(an,b),g)end
function u(b,g)return F.sqrt(((b[1]-g[1])^2)+((b[2]-g[2])^2))end
function V(b,g)return{an(b)*g,bL(b)*g}end
function exp(b)return b[1],b[2]end
f={}aE=1
ay=3
aF=o
ai=2
aq=0
as=0
aS=0
aW=0
U=0
bd=0
l=1
aQ=0
bA=2
function bf(a,b,_)if a<2^15 then
_=f[7][a]return bf(_[_[3]*(b[2]-_[2])-_[4]*(b[1]-_[1])>0 and 8 or 7],b)else
a=f[5][f[6][a-32768][2]]return aa[f[3][f[2][a[4]][a[5]+6]][6]]end
end
function ad(r,bC,z,bu,_)X=h[z]d=B[X[4]]at,ag=d[18],d[19]K=at
D=bf(#f[7],r)R,am=exp(D)ao=sub(r,be)M=P[2+ao[1]//S+ao[2]//S*bP]or{}for a,_ in y(M[0]or{})do
c=h[_]if _~=z and c and X[14]~=c then
k=u(c,r)G=B[c[4]]if c[20]then
Z=k-G[18]if Z<K and G[23]&1>0 and(d[23]&1>0 or H(r[9],c[9]-ag,c[9]+G[19])==r[9])then
aU=c
if bC==w then
return
end
K=Z
aX=I(r,c)end
end
if z==1 then
if k<50 then
b=G[25]if b>0 then
for p,t in y(x[b])do
if t>0 and x[1][p]<x[2][p]then
c=x
h[_]=w
c[1][p]=bb(A(c[1][p]+t,c[2][p]))if H(p,5,12)==p then
ai=p-4
end
end
end
end
b=G[29]if b>0 then
b=f[11][b]for p=7,8 do
e[p]=H(e[p]+b[p*2-13],e[p],b[p*2-12])end
h[_]=w
end
end
end
end
end
if am-R<ag or R>r[9]+24 then
s=(bu or 1)<8 or aS%4>0 or D[6]<18 or ax(X,10)return
end
for a=1,#M do
_=f[2][M[a]]k,br=bO(r,T[_[1]],T[_[2]])if k<K then
if(_[3]&1>0 and d[23]&1>0)or _[3]&4==0 then
if z>1 or aC>0 or _[3]&4>0 then
K=k
aX=br
end
else
aN,aZ=A(_[9],am),O(_[8],R)if A(r[9],am-ag)+24<aZ or O(r[9],R)+ag>aN or aN-aZ<ag then
K=k
aX=br
else
if bu==1 and(_[3]&512>0 or z==1)and(_[4]==2 or z>1)then
aT(_,_[5])end
am,R=aN,aZ
end
end
end
end
D,aU={R,am}if bC then
if K~=at then
_=af(r,V(aX,K-at))r[1]=_[1]r[2]=_[2]end
return o
end
return K==at
end
function bO(q,v,aw)N=u(v,q)bG=I(v,aw)+90
bq=bG-I(q,v)bs=-N*bL(bq)aC=N*an(bq)bg=bG
if aC<0 then
bg=bg+L
end
if bs<0 then
return N,I(q,v)elseif bs>u(aw,v)then
return u(aw,q),I(q,aw)else
return abs(aC),bg
end
end
function aA(q,v,aJ,z,_)aL=u(q,v)ar=aL
aV,s=o
Z,ba=exp(q)bQ,bR=exp(v)b_,aR=exp(sub(v,q))aB,bx=q[9]+32,v[9]+32
for a,_ in y(f[2])do
bM=T[_[1]]bo,bm=exp(sub(T[_[2]],bM))bt,bK=exp(sub(q,bM))bl=bm*b_-bo*aR
W=(bo*bK-bm*bt)/bl
bp=(b_*bK-aR*bt)/bl
if H(W,0,1)==W and H(bp,0,1)==bp then
bn={Z+(W*b_),ba+(W*aR)}k=u(q,bn)E=aB+(bx-aB)*(k/aL)if H(E,_[8]+1,_[9])~=E then
aV=w
if aJ==1 then
return
end
if k<ar then
ar=k
bJ,bD=exp(bn)bi=E
bw=a
end
end
end
end
if aJ>1 then
if aJ==3 then
for a,_ in y(h)do
if _ and a~=z then
d=B[_[4]]if d[23]&1>0 and _[20]then
k=u(q,_)if k<ar then
W=bO(_,q,v)N=(k/aL)E=aB+(bx-aB)*N
if H(E,_[9],_[9]+d[19])==E and W<d[18]then
ar=k
s,aV=o
bJ=Z+(bQ-Z)*N
bD=ba+(bR-ba)*N
bi=E
bw=a
end
end
end
end
end
end
return aV,bw,{bJ,bD,bi}end
return o
end
function httpReply(b,g,an)bH=as//2
as=0
end
function ah()bd=bd%256+1
return f[13][1][bd]end
function ax(_,a,c)d=B[_[4]]if d[23]&2>0 and _[7]>0 then
_[8]=_[8]-(a+1)//2
_[7]=_[7]-a//2+A(_[8],0)_[8]=O(_[8],0)_[41]=d[13]~="lost soul missile state" and c or e
if ah()<d[10]then
_[6]=d[9]_[15]=0
_[10]=o
end
end
end
function bI(b,g,az)return g[20]and abs(((I(b,g)-b[3]+L)%360)-L)<az and aA(b,g,1)end
function aM(C,z)bk=al and(al[9]-C[9])*n[6]/u(al,C)or 0
for a=1,n[12]do
b={}for a=1,30 do
b[a]=C[a]end
b[4]=n[8]b[10]=o
b[14]=C
bN=(ah()/S-1)*n[10]aG=V(C[3]+bN,n[6])if n[7]>0 then
h[#h+1]=b
d=B[b[4]]b[6]=d[3]b[9]=C[9]+n[13]b[11]=aG[1]b[12]=aG[2]b[17]=ai
b[19]=bk
else
c=af(C,aG)c[9]=e[9]+bk
aO,ap,c=aA(C,c,3,z)if not aO then
bB=sub(c,V(C[3]+bN,1))h[#h+1]=b
b[1]=bB[1]b[2]=bB[2]b[6]=B[b[4]][3]b[9]=c[3]b[19]=1
if s then
b=h[ap]ax(b,n[9]*((ah()&3)+2),C)end
end
end
end
end
function aT(_,c)if c>-1 then
b=f[9][c]if b[1]>0 or X[31]*_[10][2]-X[32]*_[10][1]<0 then
g=aa[b[1]]aj[g and g[30]or#aj+1]={c,1,g or X}_[4]=b[7]b=b[8]>0 and aT(_,b[8])end
else
aF=o
ay=-c
m[10]=-c
end
end
function bF()bz,al=2048
for a,_ in y(h)do
if a>1 and _ and bI(e,_,10)then
k=u(_,e)if k<bz then
if B[_[4]][23]&2>0 then
al=_
bz=k
end
end
end
end
end
function bh(_)if _[9]~=D[1]and not bv then
_[9]=D[1]_[10]=true
end
end
function onTick()ab(9,ae(32))ab(2,ae(11))ab(3,w)for j=1,3 do
if ae(32)and(not by)or not f[21]then
aK=property.getText(aE)a=1
i=""
_=aY.sub(aK,a,a)while _~=""do
c=aY.byte(_)if c>64 then
i=(i..c-65)+0
if l==1 then
bE=i
f[i]=f[i]or{}elseif l==2 then
E=i
ak=0
elseif l==3 then
aD=i
else
if ak==0 then
ak=E
aD=aD-1
aP={}f[bE][#f[bE]+1]=aP
end
aP[#aP+1]=i
ak=ak-1
l=O(ak,aD)>0 and l-1 or 0
end
l=l+1
i=""
else
i=i.._
end
a=a+1
_=aY.sub(aK,a,a)end
aE=aE+1
by=aK==""
end
end
if by then
if aF then
aj,aF={}ac=1
for a=1,10 do
f[a]=f[a+10*ay]end
h=f[1]T=f[4]aa=f[8]P=f[10]be,P[1]=P[1]x=f[12]B=f[15]for a=14,16 do
x[1][a]=0
end
ay=ay+1
for a=#h,1,-1 do
_=h[a]for j=7,40 do
_[j]=0
end
_[7]=B[_[4]][4]_[9],_[10]=bf(#f[7],_)[1]if _[5]&bA<1 then
bc(h,a)elseif _[4]==1 then
if e then
_[7]=e[7]_[8]=e[8]end
e=_
end
end
bP=be[3]end
for a,_ in y(f[2])do
_[10]=sub(T[_[2]],T[_[1]])if _[3]&4>0 then
d,G=aa[f[3][_[6]][6]],aa[f[3][_[7]][6]]_[8]=O(d[1],G[1])_[9],d[30],G[30]=A(d[2],G[2])else
_[8],_[9]=0,0
end
end
m={}for a=1,32 do
m[a]=0
end
aW=aW+1
U=A(U+1/bH,2/35)ab(1,U>=0)if U>=0 then
U=U-1/35
aS=aS+1
for a=2,#P do
P[a][0]={}end
for a,t in y(aj)do
_=f[9][t[1]]c=t[3]b=_[2]d=c[b]c[b]=H(_[3],d-_[4],d+_[4])+0
d=c[b]if d==_[3]then
aj[a]=t[2]==_[5]and{_[6],1,c}or{t[1],t[2]+1,c}if _[6]==0 then
bc(aj,a)end
end
c[10]=c[10]or d~=t
c[30]=a
end
for a,_ in y(h)do
if _ then
for j,t in y({1,2,9})do
_[t]=_[t]+_[t+10]end
_[15]=_[15]+1
d=B[_[4]]if _[7]<=0 and _[20]then
_[15]=0
_[6]=d[_[7]<=-d[4]and d[15]>1 and 15 or 14]_[10],_[20]=o
m[12]=d[16]if d[27]>0 then
c={}for j=1,30 do
c[j]=_[j]end
c[4]=d[27]c[6]=d[28]h[#h+1]=c
end
end
aH=f[16][_[6]]_[41]=_[41]and(_[41][20]and _[41]or e)if _[15]>=aH[2]and aH[2]~=-1 then
_[6]=aH[4]_[15]=0
Y=f[16][_[6]][3]bv=d[23]&4>0
if Y==1 then
for a,l in y(h)do
if l then
i=S-u(_,l)if i>0 then
ax(l,i)end
end
end
elseif Y==2 then
if bI(_,e,90)then
_[41]=e
_[6]=d[5]m[12]=d[6]end
ad(_,w,a,8)bh(_)elseif Y==3 then
az,s=bb(I(_,_[41])/45+.5)*45
l=1
while l<5 and not s do
i=af(_,V(az+f[19][2][l],8))i[9]=_[9]s=ad(i,w,a,l)and(D[1]>=i[9]-24 or bv)l=l+1
end
if s then
for j=1,2 do
_[30+j]=i[j]-_[j]_[j]=i[j]end
_[3]=az
_[10]=o
else
ad(_,w,a,8)end
bh(_)b=u(_,_[41])if d[13]>0 and aA(_,_[41],1)and A(b,230)<ah()then
_[6]=d[13]end
if b<64 and d[12]>0 then
_[6]=d[12]end
elseif Y==5 then
for a=1,11 do
e[3]=e[3]+f[19][9][a]n=f[14][23]bF()aM(e,1)end
e[3]=e[3]-20
elseif Y>9 and _[20]then
_[3]=I(_,_[41])n=f[14][Y]_[10]=o
al=_[41]aM(_,a)end
end
if _[17]and _[17]>0 then
n=f[14][_[17]]if not ad(_,w,a)or _[9]<=D[1]then
if aU then
ax(aU,d[21]*((ah()&7)+1),_[14])end
_[1]=_[1]-_[11]_[2]=_[2]-_[12]_[3]=0
_[6]=B[_[4]][5]_[10]=o
_[11]=0
_[12],_[17]=0
m[12]=d[16]_[19]=0
end
end
if _[6]==1 then
h[a]=w
else
ao=sub(_,be)M=P[2+ao[1]//S+ao[2]//S*bP]if M then
M[0][#M[0]+1]=a
end
end
end
end
for a=1,8 do
if ae(a)and x[1][a+4]>0 then
ai=a
end
end
n=f[14][ai]e[3]=e[3]-au(3)*(H(aQ,5,6)*1.5-6)aQ=abs(au(3))*aQ+1
Q=e
for a=1,2 do
Q=af(Q,V(e[3]-L+90*a,au(a)*8.33))end
Q[9]=e[9]for a=1,8 do
s=ad(Q,o,1,a)end
if s then
for a=1,2 do
e[30+a]=Q[a]-e[a]e[a]=Q[a]end
if e[9]>D[1]then
e[19]=e[19]-1
else
e[9]=A(D[1],e[9]+4)e[19]=O(0,e[19])end
else
e[19]=0
e[9]=D[1]end
aI=x[1]c=n[1]if ae(31)and aq<=0 and(c==0 or aI[c]>=n[2])then
ab(3,o)aq=n[3]if c>0 then
aI[c]=aI[c]-n[2]end
bF()aM(e,1)end
aq=aq-1
if au(4)<0 then
_=af(e,V(e[3],64))_[9]=e[9]aO,ap=aA(e,_,2,1)_=f[2][ap]if aO==w then
m[2]=ap
c,s=_[4]for a=14,16 do
s=s or x[1][a]>0 and c==a
end
if c==1 or s then
aT(_,_[5])elseif c>3000 and c<3005 then
bA=bb(c-3000)end
end
end
end
m[1]=ai
for a=3,14 do
m[a]=e[f[19][4][a]]or m[a]end
x[1][17]=bH
m[11]=x[1][aW%#x[1]+1]a=ac
bj=o
J=1
av=#h+#aa
while J<3 and bj do
c=J*9+6
if a<=#h then
_=h[a]if a~=1 then
if _ then
if _[10]then
m[c],_[10]=a
for j=1,8 do
m[c+j]=_[f[19][1][j]]end
J=J+1
end
else
m[c]=-a
bc(h,a)J=J+1
av=av-1
end
end
else
_=aa[a-#h]if _[10]then
m[c],_[10]=a-#h+2^15
for j=1,6 do
m[c+j]=_[j]end
J=J+1
end
end
a=(a-2)%av+1
ac=A(ac,av)bj=a~=ac
end
ac=a
for a=1,32 do
output.setNumber(a,m[a])end
end
as=as+1
async.httpGet(8,"")end
