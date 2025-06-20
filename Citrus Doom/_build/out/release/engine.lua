
X=128
L=180
G=math
M=G.max
y=G.min
bg=G.floor
pi=G.pi
au=input.getNumber
ai=input.getBool
ac=output.setBool
o=true
v=false
z=ipairs
abs=G.abs
aC=table.remove
ba=string
function aj(b,h)return{(b[1]+h[1]),(b[2]+h[2])}end
function sub(b,h)return{(b[1]-h[1]),(b[2]-h[2])}end
function bC(b)return G.sin(b/L*pi)end
function ag(b)return G.cos(b/L*pi)end
function I(b,h)return G.atan(h[2]-b[2],h[1]-b[1])*L/pi end
function E(b,h,ag)return M(y(ag,b),h)end
function u(b,h)return G.sqrt(((b[1]-h[1])^2)+((b[2]-h[2])^2))end
function T(b,h)return{ag(b)*h,bC(b)*h}end
function exp(b)return b[1],b[2]end
f={}aO=1
ar=3
aE=o
ao=2
aq=0
az=0
aY=0
aN=0
R=0
aU=0
k=1
aL=0
bm=2
function aZ(a,b,_)if a<2^15 then
_=f[7][a]return aZ(_[_[3]*(b[2]-_[2])-_[4]*(b[1]-_[1])>0 and 8 or 7],b)else
a=f[5][f[6][a-32768][2]]return Z[f[3][f[2][a[4]][a[5]+6]][6]]end
end
function al(s,bD,D,bq,_)V=g[D]d=B[V[4]]aB,ab=d[18],d[19]K=aB
C=aZ(#f[7],s)W,ah=exp(C)ak=sub(s,aJ)O=Y[2+ak[1]//X+ak[2]//X*bv]or{}for a,_ in z(O[0]or{})do
c=g[_]if _~=D and c and V[14]~=c then
l=u(c,s)H=B[c[4]]if c[20]then
aa=l-H[18]if aa<K and H[23]&1>0 and(d[23]&1>0 or E(s[9],c[9]-ab,c[9]+H[19])==s[9])then
aD=c
if bD==v then
return
end
K=aa
aP=I(s,c)end
end
if D==1 then
if l<50 then
b=H[25]if b>0 then
for p,r in z(x[b])do
if r>0 and x[1][p]<x[2][p]then
c=x
g[_]=v
c[1][p]=bg(y(c[1][p]+r,c[2][p]))if E(p,5,12)==p then
ao=p-4
end
end
end
end
b=H[29]if b>0 then
b=f[11][b]for p=7,8 do
e[p]=E(e[p]+b[p*2-13],e[p],b[p*2-12])end
g[_]=v
end
end
end
end
end
if ah-W<ab or W>s[9]+24 then
t=(bq or 1)<8 or aY%4>0 or C[6]<18 or as(V,10)return
end
for a=1,#O do
_=f[2][O[a]]l,bo=bx(s,S[_[1]],S[_[2]])if l<K then
if(_[3]&1>0 and d[23]&1>0)or _[3]&4==0 then
if D>1 or aH>0 or _[3]&4>0 then
K=l
aP=bo
end
else
aT,aS=y(_[9],ah),M(_[8],W)if y(s[9],ah-ab)+24<aS or M(s[9],W)+ab>aT or aT-aS<ab then
K=l
aP=bo
else
if bq==1 and(_[3]&512>0 or D==1)and(_[4]==2 or D>1)then
aR(_,_[5])end
ah,W=aT,aS
end
end
end
end
C,aD={W,ah}if bD then
if K~=aB then
_=aj(s,T(aP,K-aB))s[1]=_[1]s[2]=_[2]end
return o
end
return K==aB
end
function bx(q,w,av)N=u(w,q)by=I(w,av)+90
bs=by-I(q,w)bO=-N*bC(bs)aH=N*ag(bs)aQ=by
if aH<0 then
aQ=aQ+L
end
if bO<0 then
return N,I(q,w)elseif bO>u(av,w)then
return u(av,q),I(q,av)else
return abs(aH),aQ
end
end
function ax(q,w,b_,D,_)aF=u(q,w)at=aF
be,t=o
aa,aM=exp(q)bQ,bR=exp(w)bf,aV=exp(sub(w,q))aw,bI=q[9]+32,w[9]+32
for a,_ in z(f[2])do
bk=S[_[1]]bP,bN=exp(sub(S[_[2]],bk))bn,bE=exp(sub(q,bk))bK=bN*bf-bP*aV
P=(bP*bE-bN*bn)/bK
bA=(bf*bE-aV*bn)/bK
if E(P,0,1)==P and E(bA,0,1)==bA then
bi={aa+(P*bf),aM+(P*aV)}l=u(q,bi)F=aw+(bI-aw)*(l/aF)if E(F,_[8]+1,_[9])~=F then
be=v
if b_==1 then
return
end
if l<at then
at=l
bH,bl=exp(bi)bu=F
bj=a
end
end
end
end
if b_>1 then
if b_==3 then
for a,_ in z(g)do
if _ and a~=D then
d=B[_[4]]if d[23]&1>0 and _[20]then
l=u(q,_)if l<at then
P=bx(_,q,w)N=(l/aF)F=aw+(bI-aw)*N
if E(F,_[9],_[9]+d[19])==F and P<d[18]then
at=l
t,be=o
bH=aa+(bQ-aa)*N
bl=aM+(bR-aM)*N
bu=F
bj=a
end
end
end
end
end
end
return be,bj,{bH,bl,bu}end
return o
end
function httpReply(b,h,ag)bp=az//2
az=0
end
function af()aU=aU%256+1
return f[13][1][aU]end
function as(_,a,c)d=B[_[4]]if d[23]&2>0 and _[7]>0 then
_[8]=_[8]-(a+1)//2
_[7]=_[7]-a//2+y(_[8],0)_[8]=M(_[8],0)_[33]=d[13]~="lost soul missile state" and c or e
if af()<d[10]then
_[6]=d[9]_[15]=0
_[10]=o
end
end
end
function br(b,h,ay)return h[20]and abs(((I(b,h)-b[3]+L)%360)-L)<ay and ax(b,h,1)end
function aK(A,D)bJ=ad and(ad[9]-A[9])*n[6]/u(ad,A)or 0
for a=1,n[12]do
b={}for a=1,33 do
b[a]=A[a]end
b[4]=n[8]b[10]=o
b[14]=A
bt=(af()/X-1)*n[10]bd=T(A[3]+bt,n[6])if n[7]>0 then
g[#g+1]=b
d=B[b[4]]b[6]=d[3]b[9]=A[9]+n[13]b[11]=bd[1]b[12]=bd[2]b[17]=ao
b[19]=bJ
else
c=aj(A,bd)c[9]=e[9]+bJ
aG,aA,c=ax(A,c,3,D)if not aG then
bB=sub(c,T(A[3]+bt,1))g[#g+1]=b
b[1]=bB[1]b[2]=bB[2]b[6]=B[b[4]][3]b[9]=c[3]b[19]=1
if t then
b=g[aA]as(b,n[9]*((af()&3)+2),A)end
end
end
end
end
function aR(_,c)if c>-1 then
b=f[9][c]if b[1]>0 or V[31]*_[10][2]-V[32]*_[10][1]<0 then
h=Z[b[1]]an[h and h[30]or#an+1]={c,1,h or V}_[4]=b[7]b=b[8]>0 and aR(_,b[8])end
else
aE=o
ar=-c
m[10]=-c
end
end
function bM()bF,ad=2048
for a,_ in z(g)do
if a>1 and _ and br(e,_,10)then
l=u(_,e)if l<bF then
if B[_[4]][23]&2>0 then
ad=_
bF=l
end
end
end
end
end
function bL(_)if _[9]~=C[1]and not bG then
_[9]=C[1]_[10]=true
end
end
function onTick()ac(9,ai(32))ac(2,ai(11))ac(3,v)for j=1,3 do
if ai(32)and(not bh)or not f[21]then
bc=property.getText(aO)a=1
i=""
_=ba.sub(bc,a,a)while _~=""do
c=ba.byte(_)if c>64 then
i=(i..c-65)+0
if k==1 then
bz=i
f[i]=f[i]or{}elseif k==2 then
F=i
ae=0
elseif k==3 then
aX=i
else
if ae==0 then
ae=F
aX=aX-1
aI={}f[bz][#f[bz]+1]=aI
end
aI[#aI+1]=i
ae=ae-1
k=M(ae,aX)>0 and k-1 or 0
end
k=k+1
i=""
else
i=i.._
end
a=a+1
_=ba.sub(bc,a,a)end
aO=aO+1
bh=bc==""
end
end
if bh then
if aE then
an,aE={}am=1
for a=1,10 do
f[a]=f[a+10*ar]end
g=f[1]S=f[4]Z=f[8]Y=f[10]aJ,Y[1]=Y[1]x=f[12]B=f[15]for a=14,16 do
x[1][a]=0
end
ar=ar+1
for a=#g,1,-1 do
_=g[a]for j=7,32 do
_[j]=0
end
_[7]=B[_[4]][4]_[9],_[10]=aZ(#f[7],_)[1]if _[5]&bm<1 then
aC(g,a)elseif _[4]==1 then
if e then
_[7]=e[7]_[8]=e[8]end
e=_
end
end
bv=aJ[3]end
for a,_ in z(f[2])do
_[10]=sub(S[_[2]],S[_[1]])if _[3]&4>0 then
d,H=Z[f[3][_[6]][6]],Z[f[3][_[7]][6]]_[8]=M(d[1],H[1])_[9],d[30],H[30]=y(d[2],H[2])else
_[8],_[9]=0,0
end
end
m={}for a=1,32 do
m[a]=0
end
aN=aN+1
R=y(R+1/bp,2/35)ac(1,R>=0)if R>=0 then
R=R-1/35
aY=aY+1
for a=2,#Y do
Y[a][0]={}end
for a,r in z(an)do
_=f[9][r[1]]c=r[3]b=_[2]d=c[b]c[b]=E(_[3],d-_[4],d+_[4])+0
d=c[b]if d==_[3]then
an[a]=r[2]==_[5]and{_[6],1,c}or{r[1],r[2]+1,c}if _[6]==0 then
aC(an,a)end
end
c[10]=c[10]or d~=r
c[30]=a
end
for a,_ in z(g)do
if _ then
for j,r in z({1,2,9})do
_[r]=_[r]+_[r+10]end
_[15]=_[15]+1
d=B[_[4]]if _[7]<=0 and _[20]then
_[15]=0
_[6]=d[_[7]<=-d[4]and d[15]>1 and 15 or 14]_[10],_[20]=o
m[12]=d[16]if d[27]>0 then
c={}for j=1,30 do
c[j]=_[j]end
c[4]=d[27]c[6]=d[28]g[#g+1]=c
end
end
bb=f[16][_[6]]_[33]=_[33]and(_[33][20]and _[33]or e)if _[15]>=bb[2]and bb[2]~=-1 then
_[6]=bb[4]_[15]=0
U=f[16][_[6]][3]bG=d[23]&4>0
if U==1 then
for a,k in z(g)do
if k then
i=X-u(_,k)if i>0 then
as(k,i)end
end
end
elseif U==2 then
if br(_,e,90)then
_[33]=e
_[6]=d[5]m[12]=d[6]end
al(_,v,a,8)bL(_)elseif U==3 then
ay,t=bg(I(_,_[33])/45+.5)*45
k=1
while k<5 and not t do
i=aj(_,T(ay+f[19][2][k],8))i[9]=_[9]t=al(i,v,a,k)and(C[1]>=i[9]-24 or bG)k=k+1
end
if t then
for j=1,2 do
_[30+j]=i[j]-_[j]_[j]=i[j]end
_[3]=ay
_[10]=o
else
al(_,v,a,8)end
bL(_)b=u(_,_[33])if d[13]>0 and ax(_,_[33],1)and y(b,230)<af()then
_[6]=d[13]end
if b<64 and d[12]>0 then
_[6]=d[12]end
elseif U==5 then
for a=1,11 do
e[3]=e[3]+f[19][9][a]n=f[14][23]bM()aK(e,1)end
e[3]=e[3]-20
elseif U>9 and _[20]then
_[3]=I(_,_[33])n=f[14][U]_[10]=o
ad=_[33]aK(_,a)end
end
if _[17]and _[17]>0 then
n=f[14][_[17]]if not al(_,v,a)or _[9]<=C[1]then
if aD then
as(aD,d[21]*((af()&7)+1),_[14])end
_[1]=_[1]-_[11]_[2]=_[2]-_[12]_[3]=0
_[6]=B[_[4]][5]_[10]=o
_[11]=0
_[12],_[17]=0
m[12]=d[16]_[19]=0
end
end
if _[6]==1 then
g[a]=v
else
ak=sub(_,aJ)O=Y[2+ak[1]//X+ak[2]//X*bv]if O then
O[0][#O[0]+1]=a
end
end
end
end
for a=1,8 do
if ai(a)and x[1][a+4]>0 then
ao=a
end
end
n=f[14][ao]e[3]=e[3]-au(3)*(E(aL,5,6)*1.5-6)aL=abs(au(3))*aL+1
Q=e
for a=1,2 do
Q=aj(Q,T(e[3]-L+90*a,au(a)*8.33))end
Q[9]=e[9]for a=1,8 do
t=al(Q,o,1,a)end
if t then
for a=1,2 do
e[30+a]=Q[a]-e[a]e[a]=Q[a]end
if e[9]>C[1]then
e[19]=e[19]-1
else
e[9]=y(C[1],e[9]+4)e[19]=M(0,e[19])end
else
e[19]=0
e[9]=C[1]end
aW=x[1]c=n[1]if ai(31)and aq<=0 and(c==0 or aW[c]>=n[2])then
ac(3,o)aq=n[3]if c>0 then
aW[c]=aW[c]-n[2]end
bM()aK(e,1)end
aq=aq-1
if au(4)<0 then
_=aj(e,T(e[3],64))_[9]=e[9]aG,aA=ax(e,_,2,1)_=f[2][aA]if aG==v then
m[2]=aA
c,t=_[4]for a=14,16 do
t=t or x[1][a]>0 and c==a
end
if c==1 or t then
aR(_,_[5])elseif c>3000 and c<3005 then
bm=bg(c-3000)end
end
end
end
m[1]=ao
for a=3,14 do
m[a]=e[f[19][4][a]]or m[a]end
x[1][17]=bp
m[11]=x[1][aN%#x[1]+1]a=am
bw=o
J=1
ap=#g+#Z
while J<3 and bw do
c=J*9+6
if a<=#g then
_=g[a]if a~=1 then
if _ then
if _[10]then
m[c],_[10]=a
for j=1,8 do
m[c+j]=_[f[19][1][j]]end
J=J+1
end
else
m[c]=-a
aC(g,a)J=J+1
ap=ap-1
end
end
else
_=Z[a-#g]if _[10]then
m[c],_[10]=a-#g+2^15
for j=1,6 do
m[c+j]=_[j]end
J=J+1
end
end
a=(a-2)%ap+1
am=y(am,ap)bw=a~=am
end
am=a
for a=1,32 do
output.setNumber(a,m[a])end
end
az=az+1
async.httpGet(8,"")end
