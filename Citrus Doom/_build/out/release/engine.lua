
Q=128
M=180
D=math
L=D.max
B=D.min
bb=D.floor
pi=D.pi
ap=input.getNumber
ae=input.getBool
ad=output.setBool
o=true
j=false
z=ipairs
abs=D.abs
aK=table.remove
b_=string
function ab(b,h)return{(b[1]+h[1]),(b[2]+h[2])}end
function sub(b,h)return{(b[1]-h[1]),(b[2]-h[2])}end
function bD(b)return D.sin(b/M*pi)end
function ag(b)return D.cos(b/M*pi)end
function I(b,h)return D.atan(h[2]-b[2],h[1]-b[1])*M/pi end
function H(b,h,ag)return L(B(ag,b),h)end
function v(b,h)return D.sqrt(((b[1]-h[1])^2)+((b[2]-h[2])^2))end
function W(b,h)return{ag(b)*h,bD(b)*h}end
function exp(b)return b[1],b[2]end
d={}aW=1
aB=3
aL=j
aT=o
al=2
ax=0
aA=0
be=0
ba=0
T=0
aD=0
m=1
bf=0
bB=2
function aJ(a,b,_)if a<2^15 then
_=d[7][a]return aJ(_[_[3]*(b[2]-_[2])-_[4]*(b[1]-_[1])>0 and 8 or 7],b)else
a=d[5][d[6][a-32768][2]]return S[d[3][d[2][a[4]][a[5]+6]][6]]end
end
function ac(s,bL,w,bk,_)U=g[w]f=C[U[4]]ar,am=f[18],f[19]J=ar
A=aJ(#d[7],s)Y,ah=exp(A)an=sub(s,aH)O=aa[2+an[1]//Q+an[2]//Q*bt]or{}for a,_ in z(O[0]or{})do
c=g[_]if _~=w and c and U[14]~=_ then
l=v(c,s)E=C[c[4]]if c[20]then
X=l-E[18]if X<J and E[23]&1>0 and(f[23]&1>0 or H(s[9],c[9]-am,c[9]+E[19])==s[9])then
bg=c
if bL==j then
return j
end
J=X
aO=I(s,c)end
end
if w==1 then
if l<50 then
b=E[25]if b>0 then
for p,u in z(y[b])do
if u>0 and y[1][p]<y[2][p]then
c=y
g[_]=j
c[1][p]=bb(B(c[1][p]+u,c[2][p]))if H(p,5,12)==p then
al=p-4
end
end
end
end
b=E[29]if b>0 then
b=d[11][b]for p=7,8 do
e[p]=H(e[p]+b[p*2-13],e[p],b[p*2-12])end
g[_]=j
end
end
end
end
end
if ah-Y<am or Y>s[9]+24 then
t=(bk or 1)<8 or be%4>0 or A[6]<18 or at(U,10)return j
end
for a=1,#O do
_=d[2][O[a]]l,bM=bl(s,V[_[1]],V[_[2]])if l<J then
if(_[3]&1>0 and f[23]&1>0)or _[3]&4==0 then
if w>1 or aX>0 or _[3]&4>0 then
J=l
aO=bM
end
else
aZ,aI=B(_[9],ah),L(_[8],Y)if B(s[9],ah-am)+24<aI or L(s[9],Y)+am>aZ or aZ-aI<am then
J=l
aO=bM
else
if bk==1 and(_[3]&512>0 or w==1)and(_[4]==2 or w>1)then
aF(_,_[5])end
ah,Y=aZ,aI
end
end
end
end
A,bg={Y,ah}if bL then
if J~=ar then
_=ab(s,W(aO,J-ar))s[1]=_[1]s[2]=_[2]end
return o
end
return J==ar
end
function bl(q,x,ay)N=v(x,q)bP=I(x,ay)+90
by=bP-I(q,x)bm=-N*bD(by)aX=N*ag(by)aP=bP
if aX<0 then
aP=aP+M
end
if bm<0 then
return N,I(q,x)elseif bm>v(ay,x)then
return v(ay,q),I(q,ay)else
return abs(aX),aP
end
end
function as(q,x,aE,w,_)bd=v(q,x)au=bd
aY=o
X,aG=exp(q)bQ,bR=exp(x)aV,bc=exp(sub(x,q))av,bz=q[9]+32,x[9]+32
t=j
for a,_ in z(d[2])do
bi=V[_[1]]bo,bv=exp(sub(V[_[2]],bi))bK,bF=exp(sub(q,bi))bu=bv*aV-bo*bc
R=(bo*bF-bv*bK)/bu
bj=(aV*bF-bc*bK)/bu
if H(R,0,1)==R and H(bj,0,1)==bj then
bJ={X+(R*aV),aG+(R*bc)}l=v(q,bJ)F=av+(bz-av)*(l/bd)if H(F,_[8]+1,_[9])~=F then
aY=j
if aE==1 then
return j
end
if l<au then
au=l
br,bp=exp(bJ)bw=F
bn=a
end
end
end
end
if aE>1 then
if aE==3 then
for a,_ in z(g)do
if _ and a~=w then
f=C[_[4]]if f[23]&1>0 and _[20]then
l=v(q,_)if l<au then
R=bl(_,q,x)N=(l/bd)F=av+(bz-av)*N
if H(F,_[9],_[9]+f[19])==F and R<f[18]then
au=l
t=o
aY=j
br=X+(bQ-X)*N
bp=aG+(bR-aG)*N
bw=F
bn=a
end
end
end
end
end
end
return aY,bn,{br,bp,bw}end
return o
end
function httpReply(b,h,ag)bq=aA//2
aA=0
end
function af()aD=aD%256+1
return d[13][1][aD]end
function at(_,a,c)f=C[_[4]]if f[23]&2>0 and _[7]>0 then
_[8]=_[8]-(a+1)//2
_[7]=_[7]-a//2+B(_[8],0)_[8]=L(_[8],0)if af()<f[10]then
_[6]=f[9]_[15]=0
_[23]=f[13]~=d[19][7][1]and c or e
_[10]=o
end
end
end
function bC(b,h,aq)return h[20]and abs(((I(b,h)-b[3]+M)%360)-M)<aq and as(b,h,1)end
function aM(G,w)bH=ai and(ai[9]-G[9])*n[6]/v(ai,G)or 0
for a=1,n[12]do
b={}for a=1,30 do
b[a]=G[a]end
b[4]=n[8]b[10]=o
b[14]=w
bA=(af()/Q-1)*n[10]aU=W(G[3]+bA,n[6])if n[7]>0 then
g[#g+1]=b
f=C[b[4]]b[6]=f[3]b[9]=G[9]+n[13]b[11]=aU[1]b[12]=aU[2]b[17]=al
b[19]=bH
else
c=ab(G,aU)c[9]=e[9]+bH
aR,az,c=as(G,c,3,w)if not aR then
bI=sub(c,W(G[3]+bA,1))g[#g+1]=b
b[1]=bI[1]b[2]=bI[2]b[6]=C[b[4]][3]b[9]=c[3]b[19]=1
if t then
b=g[az]at(b,n[9]*((af()&3)+2),G)end
end
end
end
end
function aF(_,c)if c>-1 then
b=d[9][c]if b[1]>0 or U[31]*_[10][2]-U[32]*_[10][1]<0 then
h=S[b[1]]aj[h and h[30]or#aj+1]={c,1,h or U}_[4]=b[7]b=b[8]>0 and aF(_,b[8])end
else
aT=o
aB=-c
r[9]=-c
end
end
function bN()bx,ai=2048
for a,_ in z(g)do
if a>1 and _ and bC(e,_,10)then
l=v(_,e)if l<bx then
if C[_[4]][23]&2>0 then
ai=_
bx=l
end
end
end
end
end
function bO(_)if _[9]~=A[1]and not bE then
_[9]=A[1]_[10]=true
end
end
function onTick()ad(9,ae(32))ad(2,ae(11))ad(3,j)for k=1,3 do
if ae(32)and(not aL)or not d[21]then
aQ=property.getText(aW)a=1
i=""
_=b_.sub(aQ,a,a)while _~=""do
c=b_.byte(_)if c>64 then
i=(i..c-65)+0
if m==1 then
bs=i
d[i]=d[i]or{}elseif m==2 then
F=i
ao=0
elseif m==3 then
aS=i
else
if ao==0 then
ao=F
aS=aS-1
bh={}d[bs][#d[bs]+1]=bh
end
bh[#bh+1]=i
ao=ao-1
m=L(ao,aS)>0 and m-1 or 0
end
m=m+1
i=""
else
i=i.._
end
a=a+1
_=b_.sub(aQ,a,a)end
aW=aW+1
aL=aQ==""
end
end
if aL then
if aT then
aj,aT={}ak=1
for a=1,10 do
d[a]=d[a+10*aB]end
g=d[1]V=d[4]S=d[8]aa=d[10]aH,aa[1]=aa[1]y=d[12]C=d[15]for a=14,16 do
y[1][a]=0
end
aB=aB+1
for a=#g,1,-1 do
_=g[a]for k=7,40 do
_[k]=0
end
_[7]=C[_[4]][4]_[9],_[10]=aJ(#d[7],_)[1]if _[5]&bB<1 then
aK(g,a)elseif _[4]==1 then
if e then
_[7]=e[7]_[8]=e[8]end
e=_
end
end
bt=aH[3]end
for a,_ in z(d[2])do
_[10]=sub(V[_[2]],V[_[1]])if _[3]&4>0 then
f,E=S[d[3][_[6]][6]],S[d[3][_[7]][6]]_[8]=L(f[1],E[1])_[9],f[30],E[30]=B(f[2],E[2])else
_[8],_[9]=0,0
end
end
r={}for a=1,32 do
r[a]=0
end
ba=ba+1
T=B(T+1/bq,2/35)ad(1,T>=0)if T>=0 then
T=T-1/35
be=be+1
for a=2,#aa do
aa[a][0]={}end
for a,u in z(aj)do
_=d[9][u[1]]c=u[3]b=_[2]f=c[b]c[b]=H(_[3],f-_[4],f+_[4])+0
f=c[b]if f==_[3]then
aj[a]=u[2]==_[5]and{_[6],1,c}or{u[1],u[2]+1,c}if _[6]==0 then
aK(aj,a)end
end
c[10]=c[10]or f~=u
c[30]=a
end
for a,_ in z(g)do
if _ then
for k,u in z({1,2,9})do
_[u]=_[u]+_[u+10]end
_[15]=_[15]+1
f=C[_[4]]if _[7]<=0 and _[20]then
_[15]=0
_[6]=f[_[7]<=-f[4]and f[15]>1 and 15 or 14]_[10],_[20]=o
if f[27]>0 then
c={}for k=1,30 do
c[k]=_[k]end
c[4]=f[27]c[6]=f[28]g[#g+1]=c
end
end
aN=d[16][_[6]]if _[15]>=aN[2]and aN[2]~=-1 then
_[6]=aN[4]_[15]=0
P=d[16][_[6]][3]bE=f[23]&4>0
if P==1 then
for a,m in z(g)do
if m then
i=Q-v(_,m)if i>0 then
at(m,i)end
end
end
elseif P==2 then
if bC(_,e,90)then
_[23]=e
_[6]=f[5]end
ac(_,j,a,8)bO(_)elseif P==3 then
_[23]=_[23][20]and _[23]or e
aq=bb(I(_,_[23])/45+.5)*45
t=j
m=1
while m<5 and not t do
i=ab(_,W(aq+d[19][2][m],8))i[9]=_[9]t=ac(i,j,a,m)and(A[1]>=i[9]-24 or bE)m=m+1
end
if t then
for k=1,2 do
_[30+k]=i[k]-_[k]_[k]=i[k]end
_[3]=aq
_[10]=o
else
ac(_,j,a,8)end
bO(_)b=v(_,_[23])if f[13]>0 and as(_,_[23],1)and B(b,230)<af()then
_[6]=f[13]end
if b<64 and f[12]>0 then
_[6]=f[12]end
elseif P==5 then
for a=1,11 do
e[3]=e[3]+d[19][9][a]n=d[14][23]bN()aM(e,1)end
e[3]=e[3]-20
elseif P>9 and _[20]then
_[3]=I(_,_[23])n=d[14][P]_[10]=o
ai=_[23]aM(_,a)end
end
if _[17]and _[17]>0 then
n=d[14][_[17]]if not ac(_,j,a)or _[9]<=A[1]then
if bg then
at(bg,f[21]*((af()&7)+1),g[_[14]])end
_[1]=_[1]-_[11]_[2]=_[2]-_[12]_[3]=0
_[6]=C[_[4]][5]_[10]=o
_[11]=0
_[12],_[17]=0
_[19]=0
end
end
if _[6]==1 then
g[a]=j
else
an=sub(_,aH)O=aa[2+an[1]//Q+an[2]//Q*bt]if O then
O[0][#O[0]+1]=a
end
end
end
end
for a=1,8 do
if ae(a)and y[1][a+4]>0 then
al=a
end
end
n=d[14][al]e[3]=e[3]-ap(3)*(H(bf,5,6)*1.5-6)bf=abs(ap(3))*bf+1
Z=e
for a=1,2 do
Z=ab(Z,W(e[3]-M+90*a,ap(a)*8.33))end
Z[9]=e[9]for a=1,8 do
t=ac(Z,o,1,a)end
if t then
for a=1,2 do
e[30+a]=Z[a]-e[a]e[a]=Z[a]end
if e[9]>A[1]then
e[19]=e[19]-1
else
e[9]=B(A[1],e[9]+4)e[19]=L(0,e[19])end
else
e[19]=0
e[9]=A[1]end
aC=y[1]c=n[1]if ae(31)and ax<=0 and(c==0 or aC[c]>=n[2])then
ad(3,o)ax=n[3]if c>0 then
aC[c]=aC[c]-n[2]end
bN()aM(e,1)end
ax=ax-1
if ap(4)<0 then
_=ab(e,W(e[3],64))_[9]=e[9]aR,az=as(e,_,2,1)_=d[2][az]if aR==j then
r[2]=az
c,t=_[4]for a=14,16 do
t=t or y[1][a]>0 and c==a
end
if c==1 or t then
aF(_,_[5])elseif c>3000 and c<3005 then
bB=bb(c-3000)end
end
end
end
r[1]=al
for a=3,13 do
r[a]=e[d[19][4][a]]or r[a]end
y[1][17]=bq
r[10]=y[1][ba%#y[1]+1]a=ak
bG=o
K=1
aw=#g+#S
while K<3 and bG do
c=K*9+5
if a<=#g then
_=g[a]if a~=1 then
if _ then
if _[10]then
_[10]=j
r[c]=a
for k=1,8 do
r[c+k]=_[d[19][1][k]]end
K=K+1
end
else
r[c]=-a
aK(g,a)K=K+1
aw=aw-1
end
end
else
_=S[a-#g]if _[10]then
_[10]=j
r[c]=a-#g+2^15
for k=1,6 do
r[c+k]=_[k]end
K=K+1
end
end
a=(a-2)%aw+1
ak=B(ak,aw)bG=a~=ak
end
ak=a
for a=1,32 do
output.setNumber(a,r[a])end
end
aA=aA+1
async.httpGet(8,"")end
