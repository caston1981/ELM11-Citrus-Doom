
Z=128
M=180
bt=true
bv=output
bJ=input
D=math
O=D.max
B=D.min
aD=D.floor
pi=D.pi
ay=bJ.getNumber
ac=bJ.getBool
ag=bv.setBool
o=bt
i=false
z=ipairs
abs=D.abs
bw=table.remove
b_=string
function ah(b,h)return{(b[1]+h[1]),(b[2]+h[2])}end
function sub(b,h)return{(b[1]-h[1]),(b[2]-h[2])}end
function bK(b)return D.sin(b/M*pi)end
function ai(b)return D.cos(b/M*pi)end
function I(b,h)return D.atan(h[2]-b[2],h[1]-b[1])*M/pi end
function G(b,h,ai)return O(B(ai,b),h)end
function w(b,h)return D.sqrt(((b[1]-h[1])^2)+((b[2]-h[2])^2))end
function Y(b,h)return{ai(b)*h,bK(b)*h}end
function exp(b)return b[1],b[2]end
e={}be=1
au=3
aR=i
aJ=o
al=2
az=0
at=0
aO=0
aW=0
R=0
aM=0
m=1
aI=0
bz=2
function bd(a,b,_)if a<2^15 then
_=e[7][a]return bd(_[_[3]*(b[2]-_[2])-_[4]*(b[1]-_[1])>0 and 8 or 7],b)else
a=e[5][e[6][a-32768][2]]return S[e[3][e[2][a[4]][a[5]+6]][6]]end
end
function am(t,bF,y,bB,_)X=g[y]f=A[X[4]]aq,ab=f[18],f[19]J=aq
C=bd(#e[7],t)Q,an=exp(C)ae=sub(t,bf)L=V[2+ae[1]//Z+ae[2]//Z*bj]or{}for a,_ in z(L[0]or{})do
c=g[_]if _~=y and c and X[14]~=_ then
l=w(c,t)F=A[c[4]]if c[20]then
T=l-F[18]if T<J and F[23]&1>0 and(f[23]&1>0 or G(t[9],c[9]-ab,c[9]+F[19])==t[9])then
aK=c
if bF==i then
return i
end
J=T
aL=I(t,c)end
end
if y==1 then
if l<50 then
b=F[25]if b>0 then
for p,s in z(v[b])do
if s>0 and v[1][p]<v[2][p]then
c=v
g[_]=i
c[1][p]=aD(B(c[1][p]+s,c[2][p]))if G(p,5,12)==p then
al=p-4
end
end
end
end
b=F[29]if b>0 then
b=e[11][b]for p=7,8 do
d[p]=G(d[p]+b[p*2-13],d[p],b[p*2-12])end
g[_]=i
end
end
end
end
end
if an-Q<ab or Q>t[9]+24 then
u=(bB or 1)<8 or aO%4>0 or C[6]<18 or aw(X,10)return i
end
for a=1,#L do
_=e[2][L[a]]l,bM=bN(t,P[_[1]],P[_[2]])if l<J then
if(_[3]&1>0 and f[23]&1>0)or _[3]&4==0 then
if y>1 or bg>0 or _[3]&4>0 then
J=l
aL=bM
end
else
aG,aE=B(_[9],an),O(_[8],Q)if B(t[9],an-ab)+24<aE or O(t[9],Q)+ab>aG or aG-aE<ab then
J=l
aL=bM
else
if bB==1 and(_[3]&512>0 or y==1)and(_[4]==2 or y>1)then
aQ(_,_[5])end
an,Q=aG,aE
end
end
end
end
C,aK={Q,an}if bF then
if J~=aq then
_=ah(t,Y(aL,J-aq))t[1]=_[1]t[2]=_[2]end
return o
end
return J==aq
end
function bN(q,x,as)N=w(x,q)bq=I(x,as)+90
bl=bq-I(q,x)bL=-N*bK(bl)bg=N*ai(bl)bc=bq
if bg<0 then
bc=bc+M
end
if bL<0 then
return N,I(q,x)elseif bL>w(as,x)then
return w(as,q),I(q,as)else
return abs(bg),bc
end
end
function ap(q,x,aN,y,_)aU=w(q,x)ar=aU
aZ=o
T,aH=exp(q)bT,bU=exp(x)aF,aS=exp(sub(x,q))av,br=q[9]+32,x[9]+32
u=i
for a,_ in z(e[2])do
bi=P[_[1]]bu,bo=exp(sub(P[_[2]],bi))bA,bS=exp(sub(q,bi))bh=bo*aF-bu*aS
W=(bu*bS-bo*bA)/bh
bn=(aF*bS-aS*bA)/bh
if G(W,0,1)==W and G(bn,0,1)==bn then
bC={T+(W*aF),aH+(W*aS)}l=w(q,bC)H=av+(br-av)*(l/aU)if G(H,_[8]+1,_[9])~=H then
aZ=i
if aN==1 then
return i
end
if l<ar then
ar=l
by,bp=exp(bC)bD=H
bO=a
end
end
end
end
if aN>1 then
if aN==3 then
for a,_ in z(g)do
if _ and a~=y then
f=A[_[4]]if f[23]&1>0 and _[20]then
l=w(q,_)if l<ar then
W=bN(_,q,x)N=(l/aU)H=av+(br-av)*N
if G(H,_[9],_[9]+f[19])==H and W<f[18]then
ar=l
u=o
aZ=i
by=T+(bT-T)*N
bp=aH+(bU-aH)*N
bD=H
bO=a
end
end
end
end
end
end
return aZ,bO,{by,bp,bD}end
return o
end
function httpReply(b,h,ai)bQ=at//2
at=0
end
function aj()aM=aM%256+1
return e[13][1][aM]end
function aw(_,a,c)f=A[_[4]]if f[23]&2>0 and _[7]>0 then
_[8]=_[8]-(a+1)//2
_[7]=_[7]-a//2+B(_[8],0)_[8]=O(_[8],0)if aj()<f[10]then
_[6]=f[9]_[15]=0
_[23]=c or d
_[10]=o
end
end
end
function bP(b,h,ax)return h[20]and abs(((I(b,h)-b[3]+M)%360)-M)<ax and ap(b,h,1)end
function aP(E,y)bI=ao and(ao[9]-E[9])*n[6]/w(ao,E)or 0
for a=1,n[12]do
b={}for a=1,30 do
b[a]=E[a]end
b[4]=n[8]b[10]=o
b[14]=y
bE=(aj()/Z-1)*n[10]aV=Y(E[3]+bE,n[6])if n[7]>0 then
g[#g+1]=b
f=A[b[4]]b[6]=f[3]b[9]=E[9]+n[13]b[11]=aV[1]b[12]=aV[2]b[17]=al
b[19]=bI
else
c=ah(E,aV)c[9]=d[9]+bI
aC,aB,c=ap(E,c,3,y)if not aC then
bH=sub(c,Y(E[3]+bE,1))g[#g+1]=b
b[1]=bH[1]b[2]=bH[2]b[6]=A[b[4]][3]b[9]=c[3]b[19]=1
if u then
b=g[aB]aw(b,n[9]*((aj()&3)+2),E)end
end
end
end
end
function aQ(_,c)if c>-1 then
b=e[9][c]if b[1]>0 or X[31]*_[10][2]-X[32]*_[10][1]<0 then
h=S[b[1]]ak[h and h[30]or#ak+1]={c,1,h or X}_[4]=b[7]b=b[8]>0 and aQ(_,b[8])end
else
aJ=o
au=-c
r[9]=-c
end
end
function bk()bx,ao=2048
for a,_ in z(g)do
if a>1 and _ and bP(d,_,10)then
l=w(_,d)if l<bx then
if A[_[4]][23]&2>0 then
ao=_
bx=l
end
end
end
end
end
function bG(_)if _[9]~=C[1]and not bR then
_[9]=C[1]_[10]=bt
end
end
function onTick()ag(9,ac(32))ag(2,ac(11))ag(3,i)for k=1,3 do
if ac(32)and(not aR)or not e[21]then
aX=property.getText(be)a=1
j=""
_=b_.sub(aX,a,a)while _~=""do
c=b_.byte(_)if c>64 then
j=(j..c-65)+0
if m==1 then
bs=j
e[j]=e[j]or{}elseif m==2 then
H=j
ad=0
elseif m==3 then
bb=j
else
if ad==0 then
ad=H
bb=bb-1
aT={}e[bs][#e[bs]+1]=aT
end
aT[#aT+1]=j
ad=ad-1
m=O(ad,bb)>0 and m-1 or 0
end
m=m+1
j=""
else
j=j.._
end
a=a+1
_=b_.sub(aX,a,a)end
be=be+1
aR=aX==""
end
end
if aR then
if aJ then
ak,aJ={}af=1
for a=1,10 do
e[a]=e[a+10*au]end
g=e[1]P=e[4]S=e[8]V=e[10]bf,V[1]=V[1]v=e[12]A=e[15]for a=14,16 do
v[1][a]=0
end
au=au+1
for a,_ in z(g)do
for k=7,40 do
_[k]=0
end
bV=_[5]+1
_[7]=A[_[4]][4]_[9],_[10]=bd(#e[7],_)[1]if _[4]==1 then
if d then
_[7]=d[7]_[8]=d[8]end
d=_
elseif _[5]&bz<1 then
g[a]=i
end
end
bj=bf[3]end
for a,_ in z(e[2])do
_[10]=sub(P[_[2]],P[_[1]])if _[3]&4>0 then
f,F=S[e[3][_[6]][6]],S[e[3][_[7]][6]]_[8]=O(f[1],F[1])_[9],f[30],F[30]=B(f[2],F[2])else
_[8],_[9]=0,0
end
end
r={}for a=1,32 do
r[a]=0
end
aW=aW+1
R=B(R+1/bQ,2/35)ag(1,R>=0)if R>=0 then
R=R-1/35
aO=aO+1
for a=2,#V do
V[a][0]={}end
for a,s in z(ak)do
_=e[9][s[1]]c=s[3]b=_[2]f=c[b]c[b]=G(_[3],f-_[4],f+_[4])+0
f=c[b]if f==_[3]then
ak[a]=s[2]==_[5]and{_[6],1,c}or{s[1],s[2]+1,c}if _[6]==0 then
bw(ak,a)end
end
c[10]=c[10]or f~=s
c[30]=a
end
for a,_ in z(g)do
if _ then
for k,s in z({1,2,9})do
_[s]=_[s]+_[s+10]end
_[15]=_[15]+1
f=A[_[4]]if _[7]<=0 and _[20]then
_[15]=0
_[6]=f[_[7]<=-f[4]and f[15]>1 and 15 or 14]_[10],_[20]=o
if f[27]>0 then
c={}for k=1,30 do
c[k]=_[k]end
c[4]=f[27]c[6]=f[28]g[#g+1]=c
end
end
ba=e[16][_[6]]if _[15]>=ba[2]and ba[2]~=-1 then
_[6]=ba[4]_[15]=0
aa=e[16][_[6]][3]bR=f[23]&4>0
if aa==1 then
for a,m in z(g)do
if m then
j=Z-w(_,m)if j>0 then
aw(m,j)end
end
end
elseif aa==2 then
if bP(_,d,90)then
_[23]=d
_[6]=f[5]end
am(_,i,a,8)bG(_)elseif aa==3 then
_[23]=_[23][20]and _[23]or d
ax=aD(I(_,_[23])/45+.5)*45
u=i
m=1
while m<5 and not u do
j=ah(_,Y(ax+e[19][2][m],8))j[9]=_[9]u=am(j,i,a,m)and(C[1]>=j[9]-24 or bR)m=m+1
end
if u then
for k=1,2 do
_[30+k]=j[k]-_[k]_[k]=j[k]end
_[3]=ax
_[10]=o
else
am(_,i,a,8)end
bG(_)b=w(_,_[23])if f[13]>0 and ap(_,_[23],1)and B(b,230)<aj()then
_[6]=f[13]end
if b<64 and f[12]>0 then
_[6]=f[12]end
elseif aa==5 then
for a=1,11 do
d[3]=d[3]+e[19][9][a]n=e[14][23]bk()aP(d,1)end
d[3]=d[3]-20
elseif aa>9 and _[20]then
_[3]=I(_,_[23])n=e[14][aa]_[10]=o
ao=_[23]aP(_,a)end
end
if _[17]and _[17]>0 then
n=e[14][_[17]]if not am(_,i,a)or _[9]<=C[1]then
if aK then
aw(aK,f[21]*((aj()&7)+1),g[_[14]])end
_[1]=_[1]-_[11]_[2]=_[2]-_[12]_[3]=0
_[6]=A[_[4]][5]_[10]=o
_[11]=0
_[12],_[17]=0
_[19]=0
end
end
if _[6]==1 then
g[a]=i
else
ae=sub(_,bf)L=V[2+ae[1]//Z+ae[2]//Z*bj]if L then
L[0][#L[0]+1]=a
end
end
end
end
for a=1,8 do
if ac(a)and v[1][a+4]>0 then
al=a
end
end
n=e[14][al]d[3]=d[3]-ay(3)*(G(aI,5,6)*1.5-6)aI=abs(ay(3))*aI+1
U=d
for a=1,2 do
U=ah(U,Y(d[3]-M+90*a,ay(a)*8.33))end
U[9]=d[9]for a=1,8 do
u=am(U,o,1,a)end
if u then
for a=1,2 do
d[30+a]=U[a]-d[a]d[a]=U[a]end
if d[9]>C[1]then
d[19]=d[19]-1
else
d[9]=B(C[1],d[9]+4)d[19]=O(0,d[19])end
else
d[19]=0
d[9]=C[1]end
aY=v[1]c=n[1]if ac(31)and az<=0 and(c==0 or aY[c]>=n[2])then
ag(3,o)az=n[3]if c>0 then
aY[c]=aY[c]-n[2]end
bk()aP(d,1)end
az=az-1
if ay(4)<0 then
_=ah(d,Y(d[3],64))_[9]=d[9]aC,aB=ap(d,_,2,1)_=e[2][aB]if aC==i then
r[2]=aB
c,u=_[4]for a=14,16 do
u=u or v[1][a]>0 and c==a
end
if c==1 or u then
aQ(_,_[5])elseif c>3000 and c<3005 then
bz=aD(c-3000)end
end
end
end
r[1]=al
for a=3,13 do
r[a]=d[e[19][4][a]]or r[a]end
v[1][17]=bQ
r[10]=v[1][aW%#v[1]+1]a=af
bm=o
K=1
aA=#g+#S
while K<3 and bm do
c=K*9+5
if a<=#g then
_=g[a]if a~=1 then
if _ then
if _[10]then
_[10]=i
r[c]=a
for k=1,8 do
r[c+k]=_[e[19][1][k]]end
K=K+1
end
else
r[c]=-a
bw(g,a)K=K+1
aA=aA-1
end
end
else
_=S[a-#g]if _[10]then
_[10]=i
r[c]=a-#g+2^15
for k=1,6 do
r[c+k]=_[k]end
K=K+1
end
end
a=(a-2)%aA+1
af=B(af,aA)bm=a~=af
end
af=a
for a=1,32 do
bv.setNumber(a,r[a])end
end
at=at+1
async.httpGet(8,"")end
