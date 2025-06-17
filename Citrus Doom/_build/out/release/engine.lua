
T=128
L=180
E=math
N=E.max
C=E.min
aC=E.floor
pi=E.pi
au=input.getNumber
ak=input.getBool
an=output.setBool
n=true
w=false
z=ipairs
abs=E.abs
aT=table.remove
aZ=string
function ao(b,g)return{(b[1]+g[1]),(b[2]+g[2])}end
function sub(b,g)return{(b[1]-g[1]),(b[2]-g[2])}end
function bO(b)return E.sin(b/L*pi)end
function ai(b)return E.cos(b/L*pi)end
function K(b,g)return E.atan(g[2]-b[2],g[1]-b[1])*L/pi end
function H(b,g,ai)return N(C(ai,b),g)end
function u(b,g)return E.sqrt(((b[1]-g[1])^2)+((b[2]-g[2])^2))end
function V(b,g)return{ai(b)*g,bO(b)*g}end
function exp(b)return b[1],b[2]end
f={}b_=1
ax=3
aN=n
ac=2
as=0
aq=0
bg=0
aD=0
Z=0
aY=0
k=1
aQ=0
bn=2
function bc(a,b,_)if a<2^15 then
_=f[7][a]return bc(_[_[3]*(b[2]-_[2])-_[4]*(b[1]-_[1])>0 and 8 or 7],b)else
a=f[5][f[6][a-32768][2]]return Y[f[3][f[2][a[4]][a[5]+6]][6]]end
end
function aj(t,by,D,bK,_)R=h[D]d=y[R[4]]aw,ad=d[18],d[19]I=aw
B=bc(#f[7],t)Q,al=exp(B)ab=sub(t,bb)O=W[2+ab[1]//T+ab[2]//T*bo]or{}for a,_ in z(O[0]or{})do
c=h[_]if _~=D and c and R[14]~=c then
l=u(c,t)F=y[c[4]]if c[20]then
aa=l-F[18]if aa<I and F[23]&1>0 and(d[23]&1>0 or H(t[9],c[9]-ad,c[9]+F[19])==t[9])then
aM=c
if by==w then
return
end
I=aa
aE=K(t,c)end
end
if D==1 then
if l<50 then
b=F[25]if b>0 then
for p,r in z(v[b])do
if r>0 and v[1][p]<v[2][p]then
c=v
h[_]=w
c[1][p]=aC(C(c[1][p]+r,c[2][p]))if H(p,5,12)==p then
ac=p-4
end
end
end
end
b=F[29]if b>0 then
b=f[11][b]for p=7,8 do
e[p]=H(e[p]+b[p*2-13],e[p],b[p*2-12])end
h[_]=w
end
end
end
end
end
if al-Q<ad or Q>t[9]+24 then
s=(bK or 1)<8 or bg%4>0 or B[6]<18 or ay(R,10)return
end
for a=1,#O do
_=f[2][O[a]]l,bC=bq(t,P[_[1]],P[_[2]])if l<I then
if(_[3]&1>0 and d[23]&1>0)or _[3]&4==0 then
if D>1 or aL>0 or _[3]&4>0 then
I=l
aE=bC
end
else
aF,aI=C(_[9],al),N(_[8],Q)if C(t[9],al-ad)+24<aI or N(t[9],Q)+ad>aF or aF-aI<ad then
I=l
aE=bC
else
if bK==1 and(_[3]&512>0 or D==1)and(_[4]==2 or D>1)then
aK(_,_[5])end
al,Q=aF,aI
end
end
end
end
B,aM={Q,al}if by then
if I~=aw then
_=ao(t,V(aE,I-aw))t[1]=_[1]t[2]=_[2]end
return n
end
return I==aw
end
function bq(q,x,ap)M=u(x,q)bs=K(x,ap)+90
bz=bs-K(q,x)bL=-M*bO(bz)aL=M*ai(bz)bd=bs
if aL<0 then
bd=bd+L
end
if bL<0 then
return M,K(q,x)elseif bL>u(ap,x)then
return u(ap,q),K(q,ap)else
return abs(aL),bd
end
end
function aB(q,x,bf,D,_)aS=u(q,x)az=aS
aG,s=n
aa,aJ=exp(q)bQ,bR=exp(x)aP,be=exp(sub(x,q))ar,bj=q[9]+32,x[9]+32
for a,_ in z(f[2])do
bN=P[_[1]]bx,bm=exp(sub(P[_[2]],bN))bD,bP=exp(sub(q,bN))bM=bm*aP-bx*be
X=(bx*bP-bm*bD)/bM
bF=(aP*bP-be*bD)/bM
if H(X,0,1)==X and H(bF,0,1)==bF then
bJ={aa+(X*aP),aJ+(X*be)}l=u(q,bJ)G=ar+(bj-ar)*(l/aS)if H(G,_[8]+1,_[9])~=G then
aG=w
if bf==1 then
return
end
if l<az then
az=l
bk,bi=exp(bJ)br=G
bl=a
end
end
end
end
if bf>1 then
if bf==3 then
for a,_ in z(h)do
if _ and a~=D then
d=y[_[4]]if d[23]&1>0 and _[20]then
l=u(q,_)if l<az then
X=bq(_,q,x)M=(l/aS)G=ar+(bj-ar)*M
if H(G,_[9],_[9]+d[19])==G and X<d[18]then
az=l
s,aG=n
bk=aa+(bQ-aa)*M
bi=aJ+(bR-aJ)*M
br=G
bl=a
end
end
end
end
end
end
return aG,bl,{bk,bi,br}end
return n
end
function httpReply(b,g,ai)bh=aq//2
aq=0
end
function ah()aY=aY%256+1
return f[13][1][aY]end
function ay(_,a,c)d=y[_[4]]if d[23]&2>0 and _[7]>0 then
_[8]=_[8]-(a+1)//2
_[7]=_[7]-a//2+C(_[8],0)_[8]=N(_[8],0)_[41]=d[13]~="lost soul missile state" and c or e
if ah()<d[10]then
_[6]=d[9]_[15]=0
_[10]=n
end
end
end
function bB(b,g,av)return g[20]and abs(((K(b,g)-b[3]+L)%360)-L)<av and aB(b,g,1)end
function aR(A,D)bp=ae and(ae[9]-A[9])*o[6]/u(ae,A)or 0
for a=1,o[12]do
b={}for a=1,30 do
b[a]=A[a]end
b[4]=o[8]b[10]=n
b[14]=A
bu=(ah()/T-1)*o[10]ba=V(A[3]+bu,o[6])if o[7]>0 then
h[#h+1]=b
d=y[b[4]]b[6]=d[3]b[9]=A[9]+o[13]b[11]=ba[1]b[12]=ba[2]b[17]=ac
b[19]=bp
else
c=ao(A,ba)c[9]=e[9]+bp
aX,at,c=aB(A,c,3,D)if not aX then
bI=sub(c,V(A[3]+bu,1))h[#h+1]=b
b[1]=bI[1]b[2]=bI[2]b[6]=y[b[4]][3]b[9]=c[3]b[19]=1
if s then
b=h[at]ay(b,o[9]*((ah()&3)+2),A)end
end
end
end
end
function aK(_,c)if c>-1 then
b=f[9][c]if b[1]>0 or R[31]*_[10][2]-R[32]*_[10][1]<0 then
g=Y[b[1]]ag[g and g[30]or#ag+1]={c,1,g or R}_[4]=b[7]b=b[8]>0 and aK(_,b[8])end
else
aN=n
ax=-c
m[10]=-c
end
end
function bH()bA,ae=2048
for a,_ in z(h)do
if a>1 and _ and bB(e,_,10)then
l=u(_,e)if l<bA then
if y[_[4]][23]&2>0 then
ae=_
bA=l
end
end
end
end
end
function bG(_)if _[9]~=B[1]and not bt then
_[9]=B[1]_[10]=true
end
end
function onTick()an(9,ak(32))an(2,ak(11))an(3,w)for j=1,3 do
if ak(32)and(not bE)or not f[21]then
aV=property.getText(b_)a=1
i=""
_=aZ.sub(aV,a,a)while _~=""do
c=aZ.byte(_)if c>64 then
i=(i..c-65)+0
if k==1 then
bw=i
f[i]=f[i]or{}elseif k==2 then
G=i
am=0
elseif k==3 then
aH=i
else
if am==0 then
am=G
aH=aH-1
aW={}f[bw][#f[bw]+1]=aW
end
aW[#aW+1]=i
am=am-1
k=N(am,aH)>0 and k-1 or 0
end
k=k+1
i=""
else
i=i.._
end
a=a+1
_=aZ.sub(aV,a,a)end
b_=b_+1
bE=aV==""
end
end
if bE then
if aN then
ag,aN={}af=1
for a=1,10 do
f[a]=f[a+10*ax]end
h=f[1]P=f[4]Y=f[8]W=f[10]bb,W[1]=W[1]v=f[12]y=f[15]for a=14,16 do
v[1][a]=0
end
ax=ax+1
for a=#h,1,-1 do
_=h[a]for j=7,40 do
_[j]=0
end
_[7]=y[_[4]][4]_[9],_[10]=bc(#f[7],_)[1]if _[5]&bn<1 then
aT(h,a)elseif _[4]==1 then
if e then
_[7]=e[7]_[8]=e[8]end
e=_
end
end
bo=bb[3]end
for a,_ in z(f[2])do
_[10]=sub(P[_[2]],P[_[1]])if _[3]&4>0 then
d,F=Y[f[3][_[6]][6]],Y[f[3][_[7]][6]]_[8]=N(d[1],F[1])_[9],d[30],F[30]=C(d[2],F[2])else
_[8],_[9]=0,0
end
end
m={}for a=1,32 do
m[a]=0
end
aD=aD+1
Z=C(Z+1/bh,2/35)an(1,Z>=0)if Z>=0 then
Z=Z-1/35
bg=bg+1
for a=2,#W do
W[a][0]={}end
for a,r in z(ag)do
_=f[9][r[1]]c=r[3]b=_[2]d=c[b]c[b]=H(_[3],d-_[4],d+_[4])+0
d=c[b]if d==_[3]then
ag[a]=r[2]==_[5]and{_[6],1,c}or{r[1],r[2]+1,c}if _[6]==0 then
aT(ag,a)end
end
c[10]=c[10]or d~=r
c[30]=a
end
for a,_ in z(h)do
if _ then
for j,r in z({1,2,9})do
_[r]=_[r]+_[r+10]end
_[15]=_[15]+1
d=y[_[4]]if _[7]<=0 and _[20]then
_[15]=0
_[6]=d[_[7]<=-d[4]and d[15]>1 and 15 or 14]_[10],_[20]=n
m[12]=d[16]if d[27]>0 then
c={}for j=1,30 do
c[j]=_[j]end
c[4]=d[27]c[6]=d[28]h[#h+1]=c
end
end
aO=f[16][_[6]]_[41]=_[41]and(_[41][20]and _[41]or e)if _[15]>=aO[2]and aO[2]~=-1 then
_[6]=aO[4]_[15]=0
S=f[16][_[6]][3]bt=d[23]&4>0
if S==1 then
for a,k in z(h)do
if k then
i=T-u(_,k)if i>0 then
ay(k,i)end
end
end
elseif S==2 then
if bB(_,e,90)then
_[41]=e
_[6]=d[5]m[12]=d[6]end
aj(_,w,a,8)bG(_)elseif S==3 then
av,s=aC(K(_,_[41])/45+.5)*45
k=1
while k<5 and not s do
i=ao(_,V(av+f[19][2][k],8))i[9]=_[9]s=aj(i,w,a,k)and(B[1]>=i[9]-24 or bt)k=k+1
end
if s then
for j=1,2 do
_[30+j]=i[j]-_[j]_[j]=i[j]end
_[3]=av
_[10]=n
else
aj(_,w,a,8)end
bG(_)b=u(_,_[41])if d[13]>0 and aB(_,_[41],1)and C(b,230)<ah()then
_[6]=d[13]end
if b<64 and d[12]>0 then
_[6]=d[12]end
elseif S==5 then
for a=1,11 do
e[3]=e[3]+f[19][9][a]o=f[14][23]bH()aR(e,1)end
e[3]=e[3]-20
elseif S>9 and _[20]then
_[3]=K(_,_[41])o=f[14][S]_[10]=n
ae=_[41]aR(_,a)end
end
if _[17]and _[17]>0 then
o=f[14][_[17]]if not aj(_,w,a)or _[9]<=B[1]then
if aM then
ay(aM,d[21]*((ah()&7)+1),_[14])end
_[1]=_[1]-_[11]_[2]=_[2]-_[12]_[3]=0
_[6]=y[_[4]][5]_[10]=n
_[11]=0
_[12],_[17]=0
m[12]=d[16]_[19]=0
end
end
if _[6]==1 then
h[a]=w
else
ab=sub(_,bb)O=W[2+ab[1]//T+ab[2]//T*bo]if O then
O[0][#O[0]+1]=a
end
end
end
end
for a=1,8 do
if ak(a)and v[1][a+4]>0 then
ac=a
end
end
o=f[14][ac]e[3]=e[3]-au(3)*(H(aQ,5,6)*1.5-6)aQ=abs(au(3))*aQ+1
U=e
for a=1,2 do
U=ao(U,V(e[3]-L+90*a,au(a)*8.33))end
U[9]=e[9]for a=1,8 do
s=aj(U,n,1,a)end
if s then
for a=1,2 do
e[30+a]=U[a]-e[a]e[a]=U[a]end
if e[9]>B[1]then
e[19]=e[19]-1
else
e[9]=C(B[1],e[9]+4)e[19]=N(0,e[19])end
else
e[19]=0
e[9]=B[1]end
aU=v[1]c=o[1]if ak(31)and as<=0 and(c==0 or aU[c]>=o[2])then
an(3,n)as=o[3]if c>0 then
aU[c]=aU[c]-o[2]end
bH()aR(e,1)end
as=as-1
if au(4)<0 then
_=ao(e,V(e[3],64))_[9]=e[9]aX,at=aB(e,_,2,1)_=f[2][at]if aX==w then
m[2]=at
c,s=_[4]for a=14,16 do
s=s or v[1][a]>0 and c==a
end
if c==1 or s then
aK(_,_[5])elseif c>3000 and c<3005 then
bn=aC(c-3000)end
end
end
end
m[1]=ac
for a=3,14 do
m[a]=e[f[19][4][a]]or m[a]end
v[1][17]=bh
m[11]=v[1][aD%#v[1]+1]a=af
bv=n
J=1
aA=#h+#Y
while J<3 and bv do
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
aT(h,a)J=J+1
aA=aA-1
end
end
else
_=Y[a-#h]if _[10]then
m[c],_[10]=a-#h+2^15
for j=1,6 do
m[c+j]=_[j]end
J=J+1
end
end
a=(a-2)%aA+1
af=C(af,aA)bv=a~=af
end
af=a
for a=1,32 do
output.setNumber(a,m[a])end
end
aq=aq+1
async.httpGet(8,"")end
