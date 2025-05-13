bR=""

X=128
P=180
bJ=output
bg=input
E=math
M=E.max
y=E.min
au=E.floor
pi=E.pi
aA=bg.getNumber
as=bg.getBool
ad=bJ.setBool
m=true
i=false
v=ipairs
abs=E.abs
bn=table.remove
aO=string
function ai(b,g)return{(b[1]+g[1]),(b[2]+g[2])}end
function sub(b,g)return{(b[1]-g[1]),(b[2]-g[2])}end
function bu(b)return E.sin(b/P*pi)end
function ac(b)return E.cos(b/P*pi)end
function H(b,g)return E.atan(g[2]-b[2],g[1]-b[1])*P/pi end
function J(b,g,ac)return M(y(ac,b),g)end
function w(b,g)return E.sqrt(((b[1]-g[1])^2)+((b[2]-g[2])^2))end
function T(b,g)return{ac(b)*g,bu(b)*g}end
function exp(b)return b[1],b[2]end
f={}aN=1
at=3
aB=i
aH=m
ak=2
C=0
ao=0
aC=0
U=0
aZ=0
l=1
b_=0
bj=2
function aE(a,b,_)if a<32768then
_=f[7][a]return aE(_[_[3]*(b[2]-_[2])-_[4]*(b[1]-_[1])>0 and 8 or 7],b)else
a=f[5][f[6][a-32768][2]]return V[f[3][f[2][a[4]][a[5]+6]][6]]end
end
function ax(q,be,B,bO,_,a,k)aj=h[B]d=A[aj[4]]aw,ap=d[18],d[19]K=aw
D=aE(#f[7],q)Y,ae=exp(D)al=sub(q,Q[1])O=Q[2+al[1]//X+al[2]//X*bs]for a,_ in v(O[0])do
c=h[_]if _~=B and c and aj[14]~=_ then
n=w(c,q)F=A[c[4]]if c[20]then
Z=n-F[18]if Z<K and F[23]&1>0 and(d[23]&1>0 or(q[9]+ap<c[9]or q[9]>c[9]+F[19])==i)then
aK=c
if be==i then
return i
end
K=Z
aV=H(q,c)end
end
if B==C and not c[10]then
if n<50then
b=F[25]if b>0then
for o,r in v(z[b])do
if r>0 and z[1][o]<z[2][o]then
c=z
h[_]=i
c[1][o]=au(y(c[1][o]+r,c[2][o]))if J(o,5,12)==o then
ak=o-4
end
end
end
end
b=F[29]if b>0 then
b=f[11][b]for o=7,8 do
e[o]=J(e[o]+b[o*2-13],e[o],b[o*2-12])end
h[_]=i
end
end
end
end
end
aK=i
if ae-Y<ap or Y>q[9]+24then
return i
end
for a=1,#O do
_=f[2][O[a]]n,bx=bk(q,W[_[1]],W[_[2]])if n<K then
if bO==1 and(_[3]&512>0 or B==C)and(_[4]==2 or B~=C)then
aL(_,_[5])end
if(_[3]&1>0 and d[23]&1>0)or _[3]&4==0 then
K=n
aV=bx
else
bF,bz=y(_[9],ae),M(_[8],Y)if y(q[9],ae-ap)+24<bz or M(q[9],Y)+ap>bF then
K=n
aV=bx
else
ae,Y=bF,bz
end
end
end
end
D={Y,ae}if be then
if K~=aw then
_=ai(q,T(aV,K-aw))q[1]=_[1]q[2]=_[2]end
return m
end
return K==aw
end
function bk(p,x,ar)N=w(x,p)bh=H(x,ar)+90
bH=bh-H(p,x)bw=-N*bu(bH)bB=N*ac(bH)aP=bh
if bB<0 then
aP=aP+P
end
if bw<0 then
return N,H(p,x)elseif bw>w(ar,x)then
return w(ar,p),H(p,ar)else
return abs(bB),aP
end
end
function ay(p,x,aU,B,_)bc=w(p,x)aW=bc
bb=m
Z,ba=exp(p)bP,bN=exp(x)aY,aQ=exp(sub(x,p))av,bA=p[9]+32,x[9]+32
u=i
for a,_ in v(f[2])do
bp=W[_[1]]bt,bv=exp(sub(W[_[2]],bp))bf,bd=exp(sub(p,bp))bM=bv*aY-bt*aQ
S=(bt*bd-bv*bf)/bM
bL=(aY*bd-aQ*bf)/bM
if J(S,0,1)==S and J(bL,0,1)==bL then
bC={Z+(S*aY),ba+(S*aQ)}n=w(p,bC)G=av+(bA-av)*(n/bc)if J(G,_[8],_[9])~=G then
bb=i
if aU==1 then
return i
end
if n<aW then
aW=n
bD,bI=exp(bC)bE=G
ah=a
end
end
end
end
if aU>1 then
if aU==3 then
for a,_ in v(h)do
if _ and a~=B then
d=A[_[4]]if d[23]&1>0 and _[20]then
n=w(p,_)if n<aW then
S=bk(_,p,x)N=(n/bc)G=av+(bA-av)*N
if J(G,_[9],_[9]+d[19])==G and S<d[18]then
u=m
bb=i
bD=Z+(bP-Z)*N
bI=ba+(bN-ba)*N
bE=G
ah=a
end
end
end
end
end
end
return bb,ah,{bD,bI,bE}end
return m
end
function httpReply(b,g,ac)bK=aC//2
aC=0
end
function ag()aZ=aZ%256+1
return f[13][1][aZ]end
function aR(_,a)d=A[_[4]]if d[23]&2>0 and _[7]>0 then
_[8]=_[8]-(a+1)//2
_[7]=_[7]-a//2+y(_[8],0)_[8]=M(_[8],0)if ag()<d[10]then
_[6]=d[9]_[15]=0
_[23]=e
_[10]=m
end
end
end
function br(b,g,az)return g[20]and abs(((H(b,g)-b[3]+P)%360)-P)<az and ay(b,g,1)end
function bq(L,B)bi=aa and(aa[9]-L[9])*s[6]/w(aa,L)or 0
for a=1,s[12]do
b={}for a=1,30 do
b[a]=L[a]end
b[4]=s[8]b[10]=m
b[14]=B
by=(ag()/X-1)*s[10]aF=T(L[3]+by,s[6])if s[7]>0then
h[#h+1]=b
d=A[b[4]]b[6]=d[3]b[9]=L[9]+32
b[11]=aF[1]b[12]=aF[2]b[17]=ak
b[19]=bi
else
c=ai(L,aF)c[9]=e[9]+bi
aG,aD,c=ay(L,c,3,B)if not aG then
bl=sub(c,T(L[3]+by,1))h[#h+1]=b
b[1]=bl[1]b[2]=bl[2]b[6]=A[b[4]][3]b[9]=c[3]b[19]=1
if u then
b=h[aD]aR(b,s[9]*((ag()&3)+2))end
end
end
end
end
function aL(_,c)if c>-1 then
b=f[9][c]if b[1]>0 or aj[31]*_[10][2]-aj[32]*_[10][1]<0 then
g=V[b[1]]af[g and g[30]or#af+1]={c,1,g or aj}_[4]=b[7]b=b[8]>0 and aL(_,b[8])end
else
aH=m
at=-c
t[9]=-c
end
end
function onTick()ad(9,as(32))ad(2,i)ad(3,i)for k=1,3 do
if as(32)and(not aB)or not f[21]then
aX=property.getText(aN..bR)if aX~=bR then
a=1
j=bR
_=aO.sub(aX,a,a)while _~=bRdo
c=aO.byte(_)if c>64 or _==bRthen
j=(j..(c-65))+0
if l==1then
ah=j
if f[j]==bo then
f[j]={}end
l=2
elseif l==2then
G=j
an=0
l=3
elseif l==3then
aI=j
l=4
else
if an==0then
an=G
aI=aI-1
aS={}f[ah][#f[ah]+1]=aS
end
aS[#aS+1]=j
an=an-1
if M(an,aI)==0then
l=1
end
end
j=bR
else
j=j.._
end
a=a+1
_=aO.sub(aX,a,a)end
aN=aN+1
else
aB=m
end
end
end
if aB then
if aH then
af,aH={}am=1
for a=1,10 do
f[a]=f[a+10*at]end
h=f[1]W=f[4]V=f[8]Q=f[10]z=f[12]A=f[15]for a=14,16 do
z[1][a]=0
end
at=at+1
for a,_ in v(h)do
for k=7,40 do
_[k]=0
end
bQ=_[5]+1
_[7]=A[_[4]][4]_[9],_[10]=aE(#f[7],_)[1]if _[4]==1 then
if e then
_[7]=e[7]_[8]=e[8]end
C=a
e=_
elseif _[5]&bj<1then
h[a]=i
end
end
bs=Q[1][3]end
for a,_ in v(f[2])do
_[10]=sub(W[_[2]],W[_[1]])if _[3]&4>0 then
d,F=V[f[3][_[6]][6]],V[f[3][_[7]][6]]_[8]=M(d[1],F[1])_[9],d[30],F[30]=y(d[2],F[2])else
_[8],_[9]=0,0
end
end
t={}for a=1,32 do
t[a]=0
end
U=y(U+1/bK,2/35)ad(1,U>=0)if U>=0 then
U=U-1/35
for a=2,#Q do
Q[a][0]={}end
for a,r in v(af)do
_=f[9][r[1]]c=r[3]b=_[2]d=c[b]c[b]=J(_[3],d-_[4],d+_[4])+0
d=c[b]if abs(d-_[3])<.1then
af[a]=r[2]==_[5]and{_[6],1,c}or{r[1],r[2]+1,c}if _[6]==0 then
bn(af,a)end
end
c[10]=c[10]or d~=r
c[30]=a
end
for a,_ in v(h)do
if _ then
for k,r in v({1,2,9})do
_[r]=_[r]+_[r+10]end
_[15]=_[15]+1
d=A[_[4]]if _[7]<=0 and _[20]then
_[15]=0
_[6]=d[_[7]<=-d[4]and d[15]>1 and 15or 14]_[10],_[20]=m
if d[27]>0 then
c={}for k=1,30 do
c[k]=_[k]end
c[4]=d[27]c[6]=d[28]h[#h+1]=c
end
end
aT=f[16][_[6]]if _[15]>=aT[2]and aT[2]~=-1then
_[6]=aT[4]_[15]=0
ab=f[16][_[6]][3]if ab==1 then
for a,l in v(h)do
if l then
j=X-w(_,l)if j>0 then
aR(l,j)end
end
end
elseif ab==2then
if br(_,e,90)then
_[23]=e
_[6]=d[5]end
elseif ab==3then
az=au(H(_,_[23])/45+.5)*45
u=i
l=1
while l<5 and not u do
j=ai(_,T(az+f[19][2][l],8))j[9]=_[9]u=ax(j,i,a,l)and D[1]>=j[9]-24
l=l+1
end
if u then
for k=1,2 do
_[30+k]=j[k]-_[k]_[k]=j[k]end
_[3]=az
_[10]=m
else
ax(_,i,a)end
if d[23]&4<1 then
_[9]=D[1]end
b=w(_,_[23])if d[13]>0 and ay(_,_[23],1)and y(b,230)<ag()then
_[6]=d[13]end
if b<64 and d[12]>0then
_[6]=d[12]end
elseif ab>9then
_[3]=H(_,_[23])s=f[14][ab]_[10]=m
aa=_[23]bq(_,a)end
end
if _[17]and _[17]>0then
s=f[14][_[17]]if not ax(_,i,a)or _[9]<=D[1]then
if aK then
aR(aK,d[21]*((ag()&7)+1))end
_[1]=_[1]-_[11]_[2]=_[2]-_[12]_[3]=0
_[6]=A[_[4]][9]_[10]=m
_[11]=0
_[12]=0
_[17]=bo
_[19]=0
end
end
if _[6]==1then
h[a]=i
else
al=sub(_,Q[1])O=Q[2+al[1]//X+al[2]//X*bs]if O~=bo then
O[0][#O[0]+1]=a
end
end
end
end
for a=1,8 do
if as(a)and z[1][a+4]>0then
ak=a
end
end
s=f[14][ak]e[3]=e[3]-aA(3)*(J(b_,5,6)*1.5-6)b_=abs(aA(3))*b_+1
R=e
for a=1,2 do
R=ai(R,T(e[3]-P+90*a,aA(a)*8.33))end
R[9]=e[9]for a=1,8 do
u=ax(R,m,C,a)end
if u then
for a=1,2 do
e[30+a]=R[a]-e[a]e[a]=R[a]end
if e[9]<=D[1]then
e[9]=y(D[1],e[9]+4)e[19]=M(0,e[19])else
if e[9]>=D[2]-56then
e[9]=D[2]-56
e[19]=y(0,e[19])end
e[19]=e[19]-1
end
end
aM=z[1]c=s[1]if as(31)and ao<=0 and(c==0 or aM[c]>=s[2])then
ad(3,m)ao=s[3]if c>0then
aM[c]=aM[c]-s[2]end
bm,aa=2048
for a,_ in v(h)do
if a~=C and _ and br(e,_,10)then
n=w(_,e)if n<bm then
if A[_[4]][23]&2>0then
aa=_
bm=n
end
end
end
end
bq(e,C)end
ao=ao-1
if aA(4)<0 then
_=ai(e,T(e[3],64))_[9]=e[9]aG,aD=ay(e,_,2,C)_=f[2][aD]if aG==i then
t[2]=aD
c,u=_[4]for a=14,16 do
u=u or z[1][a]>0 and c==a
end
if c==1 or u then
aL(_,_[5])elseif c>3000 and c<3005then
bj=au(c-3000)end
end
end
end
t[1]=ak
for a=3,8 do
t[a]=e[f[19][4][a]]end
t[5]=C
t[13]=e[3]a=am
bG=m
I=1
aq=#h+#V
while I<3 and bG do
c=I*9+5
if a<=#h then
_=h[a]if a~=C then
if _ then
if _[10]then
_[10]=i
t[c]=a
for k=1,8 do
t[c+k]=_[f[19][1][k]]end
I=I+1
end
else
t[c]=-a
bn(h,a)I=I+1
aq=aq-1
end
end
else
_=V[a-#h]if _[10]then
_[10]=i
t[c]=a-#h+2^15
for k=1,6 do
t[c+k]=_[k]end
I=I+1
end
end
a=((a-2)%aq)+1
am=y(am,aq)bG=a~=am
end
am=a
for a=1,32 do
bJ.setNumber(a,t[a])end
end
aC=aC+1
async.httpGet(8,bR)end
function onDraw()aJ=screen.drawText
aJ(26,137,bK)if aB then
for a=1,4 do
b=124+a*7
aJ(240,b,au(z[1][a]))aJ(230,b,z[1][13+a])end
end
end
