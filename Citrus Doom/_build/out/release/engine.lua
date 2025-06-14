
X=128
M=180
E=math
N=E.max
z=E.min
aH=E.floor
pi=E.pi
aq=input.getNumber
an=input.getBool
ag=output.setBool
o=true
i=false
C=ipairs
abs=E.abs
aG=table.remove
bd=string
function ae(b,h)return{(b[1]+h[1]),(b[2]+h[2])}end
function sub(b,h)return{(b[1]-h[1]),(b[2]-h[2])}end
function bM(b)return E.sin(b/M*pi)end
function ab(b)return E.cos(b/M*pi)end
function K(b,h)return E.atan(h[2]-b[2],h[1]-b[1])*M/pi end
function H(b,h,ab)return N(z(ab,b),h)end
function y(b,h)return E.sqrt(((b[1]-h[1])^2)+((b[2]-h[2])^2))end
function R(b,h)return{ab(b)*h,bM(b)*h}end
function exp(b)return b[1],b[2]end
e={}be=1
ar=3
aQ=i
aL=o
ai=2
ax=0
aA=0
aX=0
aY=0
V=0
aW=0
m=1
aC=0
bl=2
function aU(a,b,_)if a<2^15 then
_=e[7][a]return aU(_[_[3]*(b[2]-_[2])-_[4]*(b[1]-_[1])>0 and 8 or 7],b)else
a=e[5][e[6][a-32768][2]]return S[e[3][e[2][a[4]][a[5]+6]][6]]end
end
function aj(t,bv,w,bp,_)T=g[w]f=A[T[4]]at,ad=f[18],f[19]I=at
B=aU(#e[7],t)Y,ah=exp(B)af=sub(t,aM)O=Q[2+af[1]//X+af[2]//X*bi]or{}for a,_ in C(O[0]or{})do
c=g[_]if _~=w and c and T[14]~=_ then
l=y(c,t)F=A[c[4]]if c[20]then
P=l-F[18]if P<I and F[23]&1>0 and(f[23]&1>0 or H(t[9],c[9]-ad,c[9]+F[19])==t[9])then
aZ=c
if bv==i then
return i
end
I=P
aI=K(t,c)end
end
if w==1 then
if l<50 then
b=F[25]if b>0 then
for p,u in C(x[b])do
if u>0 and x[1][p]<x[2][p]then
c=x
g[_]=i
c[1][p]=aH(z(c[1][p]+u,c[2][p]))if H(p,5,12)==p then
ai=p-4
end
end
end
end
b=F[29]if b>0 then
b=e[11][b]for p=7,8 do
d[p]=H(d[p]+b[p*2-13],d[p],b[p*2-12])end
g[_]=i
end
end
end
end
end
if ah-Y<ad or Y>t[9]+24 then
s=(bp or 1)<8 or aX%4>0 or B[6]<18 or av(T,10)return i
end
for a=1,#O do
_=e[2][O[a]]l,bq=bk(t,W[_[1]],W[_[2]])if l<I then
if(_[3]&1>0 and f[23]&1>0)or _[3]&4==0 then
if w>1 or bh>0 or _[3]&4>0 then
I=l
aI=bq
end
else
aP,aO=z(_[9],ah),N(_[8],Y)if z(t[9],ah-ad)+24<aO or N(t[9],Y)+ad>aP or aP-aO<ad then
I=l
aI=bq
else
if bp==1 and(_[3]&512>0 or w==1)and(_[4]==2 or w>1)then
b_(_,_[5])end
ah,Y=aP,aO
end
end
end
end
B,aZ={Y,ah}if bv then
if I~=at then
_=ae(t,R(aI,I-at))t[1]=_[1]t[2]=_[2]end
return o
end
return I==at
end
function bk(q,v,az)L=y(v,q)bF=K(v,az)+90
bG=bF-K(q,v)bO=-L*bM(bG)bh=L*ab(bG)aT=bF
if bh<0 then
aT=aT+M
end
if bO<0 then
return L,K(q,v)elseif bO>y(az,v)then
return y(az,q),K(q,az)else
return abs(bh),aT
end
end
function ay(q,v,aD,w,_)aN=y(q,v)aB=aN
bg=o
P,bc=exp(q)bQ,bR=exp(v)bb,aV=exp(sub(v,q))ap,bK=q[9]+32,v[9]+32
s=i
for a,_ in C(e[2])do
bA=W[_[1]]bu,bJ=exp(sub(W[_[2]],bA))bz,bI=exp(sub(q,bA))bL=bJ*bb-bu*aV
Z=(bu*bI-bJ*bz)/bL
bj=(bb*bI-aV*bz)/bL
if H(Z,0,1)==Z and H(bj,0,1)==bj then
bP={P+(Z*bb),bc+(Z*aV)}l=y(q,bP)G=ap+(bK-ap)*(l/aN)if H(G,_[8]+1,_[9])~=G then
bg=i
if aD==1 then
return i
end
if l<aB then
aB=l
bt,bw=exp(bP)bo=G
bE=a
end
end
end
end
if aD>1 then
if aD==3 then
for a,_ in C(g)do
if _ and a~=w then
f=A[_[4]]if f[23]&1>0 and _[20]then
l=y(q,_)if l<aB then
Z=bk(_,q,v)L=(l/aN)G=ap+(bK-ap)*L
if H(G,_[9],_[9]+f[19])==G and Z<f[18]then
aB=l
s=o
bg=i
bt=P+(bQ-P)*L
bw=bc+(bR-bc)*L
bo=G
bE=a
end
end
end
end
end
end
return bg,bE,{bt,bw,bo}end
return o
end
function httpReply(b,h,ab)bn=aA//2
aA=0
end
function ao()aW=aW%256+1
return e[13][1][aW]end
function av(_,a,c)f=A[_[4]]if f[23]&2>0 and _[7]>0 then
_[8]=_[8]-(a+1)//2
_[7]=_[7]-a//2+z(_[8],0)_[8]=N(_[8],0)if ao()<f[10]then
_[6]=f[9]_[15]=0
_[23]=f[13]~="lost soul missile state" and c or d
_[10]=o
end
end
end
function bC(b,h,as)return h[20]and abs(((K(b,h)-b[3]+M)%360)-M)<as and ay(b,h,1)end
function aR(D,w)bD=ac and(ac[9]-D[9])*n[6]/y(ac,D)or 0
for a=1,n[12]do
b={}for a=1,30 do
b[a]=D[a]end
b[4]=n[8]b[10]=o
b[14]=w
by=(ao()/X-1)*n[10]bf=R(D[3]+by,n[6])if n[7]>0 then
g[#g+1]=b
f=A[b[4]]b[6]=f[3]b[9]=D[9]+n[13]b[11]=bf[1]b[12]=bf[2]b[17]=ai
b[19]=bD
else
c=ae(D,bf)c[9]=d[9]+bD
aK,au,c=ay(D,c,3,w)if not aK then
bB=sub(c,R(D[3]+by,1))g[#g+1]=b
b[1]=bB[1]b[2]=bB[2]b[6]=A[b[4]][3]b[9]=c[3]b[19]=1
if s then
b=g[au]av(b,n[9]*((ao()&3)+2),D)end
end
end
end
end
function b_(_,c)if c>-1 then
b=e[9][c]if b[1]>0 or T[31]*_[10][2]-T[32]*_[10][1]<0 then
h=S[b[1]]ak[h and h[30]or#ak+1]={c,1,h or T}_[4]=b[7]b=b[8]>0 and b_(_,b[8])end
else
aL=o
ar=-c
r[10]=-c
end
end
function bs()bN,ac=2048
for a,_ in C(g)do
if a>1 and _ and bC(d,_,10)then
l=y(_,d)if l<bN then
if A[_[4]][23]&2>0 then
ac=_
bN=l
end
end
end
end
end
function bH(_)if _[9]~=B[1]and not bm then
_[9]=B[1]_[10]=true
end
end
function onTick()ag(9,an(32))ag(2,an(11))ag(3,i)for k=1,3 do
if an(32)and(not aQ)or not e[21]then
aS=property.getText(be)a=1
j=""
_=bd.sub(aS,a,a)while _~=""do
c=bd.byte(_)if c>64 then
j=(j..c-65)+0
if m==1 then
br=j
e[j]=e[j]or{}elseif m==2 then
G=j
am=0
elseif m==3 then
aE=j
else
if am==0 then
am=G
aE=aE-1
aJ={}e[br][#e[br]+1]=aJ
end
aJ[#aJ+1]=j
am=am-1
m=N(am,aE)>0 and m-1 or 0
end
m=m+1
j=""
else
j=j.._
end
a=a+1
_=bd.sub(aS,a,a)end
be=be+1
aQ=aS==""
end
end
if aQ then
if aL then
ak,aL={}al=1
for a=1,10 do
e[a]=e[a+10*ar]end
g=e[1]W=e[4]S=e[8]Q=e[10]aM,Q[1]=Q[1]x=e[12]A=e[15]for a=14,16 do
x[1][a]=0
end
ar=ar+1
for a=#g,1,-1 do
_=g[a]for k=7,40 do
_[k]=0
end
_[7]=A[_[4]][4]_[9],_[10]=aU(#e[7],_)[1]if _[5]&bl<1 then
aG(g,a)elseif _[4]==1 then
if d then
_[7]=d[7]_[8]=d[8]end
d=_
end
end
bi=aM[3]end
for a,_ in C(e[2])do
_[10]=sub(W[_[2]],W[_[1]])if _[3]&4>0 then
f,F=S[e[3][_[6]][6]],S[e[3][_[7]][6]]_[8]=N(f[1],F[1])_[9],f[30],F[30]=z(f[2],F[2])else
_[8],_[9]=0,0
end
end
r={}for a=1,32 do
r[a]=0
end
aY=aY+1
V=z(V+1/bn,2/35)ag(1,V>=0)if V>=0 then
V=V-1/35
aX=aX+1
for a=2,#Q do
Q[a][0]={}end
for a,u in C(ak)do
_=e[9][u[1]]c=u[3]b=_[2]f=c[b]c[b]=H(_[3],f-_[4],f+_[4])+0
f=c[b]if f==_[3]then
ak[a]=u[2]==_[5]and{_[6],1,c}or{u[1],u[2]+1,c}if _[6]==0 then
aG(ak,a)end
end
c[10]=c[10]or f~=u
c[30]=a
end
for a,_ in C(g)do
if _ then
for k,u in C({1,2,9})do
_[u]=_[u]+_[u+10]end
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
aF=e[16][_[6]]if _[15]>=aF[2]and aF[2]~=-1 then
_[6]=aF[4]_[15]=0
aa=e[16][_[6]][3]bm=f[23]&4>0
if aa==1 then
for a,m in C(g)do
if m then
j=X-y(_,m)if j>0 then
av(m,j)end
end
end
elseif aa==2 then
if bC(_,d,90)then
_[23]=d
_[6]=f[5]r[12]=f[6]end
aj(_,i,a,8)bH(_)elseif aa==3 then
_[23]=_[23][20]and _[23]or d
as=aH(K(_,_[23])/45+.5)*45
s=i
m=1
while m<5 and not s do
j=ae(_,R(as+e[19][2][m],8))j[9]=_[9]s=aj(j,i,a,m)and(B[1]>=j[9]-24 or bm)m=m+1
end
if s then
for k=1,2 do
_[30+k]=j[k]-_[k]_[k]=j[k]end
_[3]=as
_[10]=o
else
aj(_,i,a,8)end
bH(_)b=y(_,_[23])if f[13]>0 and ay(_,_[23],1)and z(b,230)<ao()then
_[6]=f[13]end
if b<64 and f[12]>0 then
_[6]=f[12]end
elseif aa==5 then
for a=1,11 do
d[3]=d[3]+e[19][9][a]n=e[14][23]bs()aR(d,1)end
d[3]=d[3]-20
elseif aa>9 and _[20]then
_[3]=K(_,_[23])n=e[14][aa]_[10]=o
ac=_[23]aR(_,a)end
end
if _[17]and _[17]>0 then
n=e[14][_[17]]if not aj(_,i,a)or _[9]<=B[1]then
if aZ then
av(aZ,f[21]*((ao()&7)+1),g[_[14]])end
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
af=sub(_,aM)O=Q[2+af[1]//X+af[2]//X*bi]if O then
O[0][#O[0]+1]=a
end
end
end
end
for a=1,8 do
if an(a)and x[1][a+4]>0 then
ai=a
end
end
n=e[14][ai]d[3]=d[3]-aq(3)*(H(aC,5,6)*1.5-6)aC=abs(aq(3))*aC+1
U=d
for a=1,2 do
U=ae(U,R(d[3]-M+90*a,aq(a)*8.33))end
U[9]=d[9]for a=1,8 do
s=aj(U,o,1,a)end
if s then
for a=1,2 do
d[30+a]=U[a]-d[a]d[a]=U[a]end
if d[9]>B[1]then
d[19]=d[19]-1
else
d[9]=z(B[1],d[9]+4)d[19]=N(0,d[19])end
else
d[19]=0
d[9]=B[1]end
ba=x[1]c=n[1]if an(31)and ax<=0 and(c==0 or ba[c]>=n[2])then
ag(3,o)ax=n[3]if c>0 then
ba[c]=ba[c]-n[2]end
bs()aR(d,1)end
ax=ax-1
if aq(4)<0 then
_=ae(d,R(d[3],64))_[9]=d[9]aK,au=ay(d,_,2,1)_=e[2][au]if aK==i then
r[2]=au
c,s=_[4]for a=14,16 do
s=s or x[1][a]>0 and c==a
end
if c==1 or s then
b_(_,_[5])elseif c>3000 and c<3005 then
bl=aH(c-3000)end
end
end
end
r[1]=ai
for a=3,14 do
r[a]=d[e[19][4][a]]or r[a]end
x[1][17]=bn
r[11]=x[1][aY%#x[1]+1]a=al
bx=o
J=1
aw=#g+#S
while J<3 and bx do
c=J*9+6
if a<=#g then
_=g[a]if a~=1 then
if _ then
if _[10]then
_[10]=i
r[c]=a
for k=1,8 do
r[c+k]=_[e[19][1][k]]end
J=J+1
end
else
r[c]=-a
aG(g,a)J=J+1
aw=aw-1
end
end
else
_=S[a-#g]if _[10]then
_[10]=i
r[c]=a-#g+2^15
for k=1,6 do
r[c+k]=_[k]end
J=J+1
end
end
a=(a-2)%aw+1
al=z(al,aw)bx=a~=al
end
al=a
for a=1,32 do
output.setNumber(a,r[a])end
end
aA=aA+1
async.httpGet(8,"")end
