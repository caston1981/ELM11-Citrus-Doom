
Y=128
M=180
bx=output
bj=input
F=math
O=F.max
A=F.min
aW=F.floor
pi=F.pi
aA=bj.getNumber
ah=bj.getBool
ag=bx.setBool
o=true
j=false
v=ipairs
abs=F.abs
bs=table.remove
bd=string
function am(b,g)return{(b[1]+g[1]),(b[2]+g[2])}end
function sub(b,g)return{(b[1]-g[1]),(b[2]-g[2])}end
function bl(b)return F.sin(b/M*pi)end
function ab(b)return F.cos(b/M*pi)end
function K(b,g)return F.atan(g[2]-b[2],g[1]-b[1])*M/pi end
function G(b,g,ab)return O(A(ab,b),g)end
function y(b,g)return F.sqrt(((b[1]-g[1])^2)+((b[2]-g[2])^2))end
function P(b,g)return{ab(b)*g,bl(b)*g}end
function exp(b)return b[1],b[2]end
e={}aC=1
av=3
aD=j
bc=o
al=2
ao=0
at=0
b_=0
aR=0
Q=0
aI=0
m=1
ba=0
bm=2
function aS(a,b,_)if a<2^15 then
_=e[7][a]return aS(_[_[3]*(b[2]-_[2])-_[4]*(b[1]-_[1])>0 and 8 or 7],b)else
a=e[5][e[6][a-32768][2]]return W[e[3][e[2][a[4]][a[5]+6]][6]]end
end
function ax(t,bM,w,bT,_)ai=h[w]f=B[ai[4]]ay,aa=f[18],f[19]J=ay
C=aS(#e[7],t)S,an=exp(C)ak=sub(t,aE)N=T[2+ak[1]//Y+ak[2]//Y*bw]or{}for a,_ in v(N[0]or{})do
c=h[_]if _~=w and c and ai[14]~=_ then
l=y(c,t)D=B[c[4]]if c[20]then
U=l-D[18]if U<J and D[23]&1>0 and(f[23]&1>0 or G(t[9],c[9]-aa,c[9]+D[19])==t[9])then
aG=c
if bM==j then
return j
end
J=U
aV=K(t,c)end
end
if w==1 then
if l<50 then
b=D[25]if b>0 then
for p,u in v(z[b])do
if u>0 and z[1][p]<z[2][p]then
c=z
h[_]=j
c[1][p]=aW(A(c[1][p]+u,c[2][p]))if G(p,5,12)==p then
al=p-4
end
end
end
end
b=D[29]if b>0 then
b=e[11][b]for p=7,8 do
d[p]=G(d[p]+b[p*2-13],d[p],b[p*2-12])end
h[_]=j
end
end
end
end
end
if an-S<aa or S>t[9]+24 then
return j
end
for a=1,#N do
_=e[2][N[a]]l,bJ=bD(t,X[_[1]],X[_[2]])if l<J then
if(_[3]&1>0 and f[23]&1>0)or _[3]&4==0 then
if w>1 or aM>0 or _[3]&4>0 then
J=l
aV=bJ
end
else
aT,aP=A(_[9],an),O(_[8],S)if A(t[9],an-aa)+24<aP or O(t[9],S)+aa>aT or aT-aP<aa then
J=l
aV=bJ
else
if bT==1 and(_[3]&512>0 or w==1)and(_[4]==2 or w>1)then
aY(_,_[5])end
an,S=aT,aP
end
end
end
end
C,aG={S,an}if bM then
if J~=ay then
_=am(t,P(aV,J-ay))t[1]=_[1]t[2]=_[2]end
return o
end
return J==ay
end
function bD(q,x,az)L=y(x,q)bi=K(x,az)+90
bz=bi-K(q,x)bF=-L*bl(bz)aM=L*ab(bz)aX=bi
if aM<0 then
aX=aX+M
end
if bF<0 then
return L,K(q,x)elseif bF>y(az,x)then
return y(az,q),K(q,az)else
return abs(aM),aX
end
end
function ap(q,x,aZ,w,_)aU=y(q,x)au=aU
aH=o
U,be=exp(q)bQ,bS=exp(x)aF,bb=exp(sub(x,q))ar,bC=q[9]+32,x[9]+32
s=j
for a,_ in v(e[2])do
bo=X[_[1]]bH,bh=exp(sub(X[_[2]],bo))bt,bu=exp(sub(q,bo))bn=bh*aF-bH*bb
V=(bH*bu-bh*bt)/bn
bI=(aF*bu-bb*bt)/bn
if G(V,0,1)==V and G(bI,0,1)==bI then
bP={U+(V*aF),be+(V*bb)}l=y(q,bP)E=ar+(bC-ar)*(l/aU)if G(E,_[8]+1,_[9])~=E then
aH=j
if aZ==1 then
return j
end
if l<au then
au=l
by,bK=exp(bP)bG=E
bk=a
end
end
end
end
if aZ>1 then
if aZ==3 then
for a,_ in v(h)do
if _ and a~=w then
f=B[_[4]]if f[23]&1>0 and _[20]then
l=y(q,_)if l<au then
V=bD(_,q,x)L=(l/aU)E=ar+(bC-ar)*L
if G(E,_[9],_[9]+f[19])==E and V<f[18]then
au=l
s=o
aH=j
by=U+(bQ-U)*L
bK=be+(bS-be)*L
bG=E
bk=a
end
end
end
end
end
end
return aH,bk,{by,bK,bG}end
return o
end
function httpReply(b,g,ab)bp=at//2
at=0
end
function af()aI=aI%256+1
return e[13][1][aI]end
function as(_,a)f=B[_[4]]if f[23]&2>0 and _[7]>0 then
_[8]=_[8]-(a+1)//2
_[7]=_[7]-a//2+A(_[8],0)_[8]=O(_[8],0)if af()<f[10]then
_[6]=f[9]_[15]=0
_[23]=d
_[10]=o
end
end
end
function br(b,g,aw)return g[20]and abs(((K(b,g)-b[3]+M)%360)-M)<aw and ap(b,g,1)end
function bf(I,w)bE=ac and(ac[9]-I[9])*n[6]/y(ac,I)or 0
for a=1,n[12]do
b={}for a=1,30 do
b[a]=I[a]end
b[4]=n[8]b[10]=o
b[14]=w
bB=(af()/Y-1)*n[10]aL=P(I[3]+bB,n[6])if n[7]>0 then
h[#h+1]=b
f=B[b[4]]b[6]=f[3]b[9]=I[9]+n[13]b[11]=aL[1]b[12]=aL[2]b[17]=al
b[19]=bE
else
c=am(I,aL)c[9]=d[9]+bE
aJ,aB,c=ap(I,c,3,w)if not aJ then
bA=sub(c,P(I[3]+bB,1))h[#h+1]=b
b[1]=bA[1]b[2]=bA[2]b[6]=B[b[4]][3]b[9]=c[3]b[19]=1
if s then
b=h[aB]as(b,n[9]*((af()&3)+2))end
end
end
end
end
function aY(_,c)if c>-1 then
b=e[9][c]if b[1]>0 or ai[31]*_[10][2]-ai[32]*_[10][1]<0 then
g=W[b[1]]ad[g and g[30]or#ad+1]={c,1,g or ai}_[4]=b[7]b=b[8]>0 and aY(_,b[8])end
else
bc=o
av=-c
r[9]=-c
end
end
function bv()bq,ac=2048
for a,_ in v(h)do
if a>1 and _ and br(d,_,10)then
l=y(_,d)if l<bq then
if B[_[4]][23]&2>0 then
ac=_
bq=l
end
end
end
end
end
function onTick()ag(9,ah(32))ag(2,ah(11))ag(3,j)for k=1,3 do
if ah(32)and(not aD)or not e[21]then
aN=property.getText(aC)a=1
i=""
_=bd.sub(aN,a,a)while _~=""do
c=bd.byte(_)if c>64 then
i=(i..c-65)+0
if m==1 then
bO=i
e[i]=e[i]or{}elseif m==2 then
E=i
aj=0
elseif m==3 then
aK=i
else
if aj==0 then
aj=E
aK=aK-1
aO={}e[bO][#e[bO]+1]=aO
end
aO[#aO+1]=i
aj=aj-1
m=O(aj,aK)>0 and m-1 or 0
end
m=m+1
i=""
else
i=i.._
end
a=a+1
_=bd.sub(aN,a,a)end
aC=aC+1
aD=aN==""
end
end
if aD then
if bc then
ad,bc={}ae=1
for a=1,10 do
e[a]=e[a+10*av]end
h=e[1]X=e[4]W=e[8]T=e[10]aE,T[1]=T[1]z=e[12]B=e[15]for a=14,16 do
z[1][a]=0
end
av=av+1
for a,_ in v(h)do
for k=7,40 do
_[k]=0
end
bU=_[5]+1
_[7]=B[_[4]][4]_[9],_[10]=aS(#e[7],_)[1]if _[4]==1 then
if d then
_[7]=d[7]_[8]=d[8]end
d=_
elseif _[5]&bm<1 then
h[a]=j
end
end
bw=aE[3]end
for a,_ in v(e[2])do
_[10]=sub(X[_[2]],X[_[1]])if _[3]&4>0 then
f,D=W[e[3][_[6]][6]],W[e[3][_[7]][6]]_[8]=O(f[1],D[1])_[9],f[30],D[30]=A(f[2],D[2])else
_[8],_[9]=0,0
end
end
r={}for a=1,32 do
r[a]=0
end
aR=aR+1
Q=A(Q+1/bp,2/35)ag(1,Q>=0)if Q>=0 then
Q=Q-1/35
b_=b_+1
for a=2,#T do
T[a][0]={}end
for a,u in v(ad)do
_=e[9][u[1]]c=u[3]b=_[2]f=c[b]c[b]=G(_[3],f-_[4],f+_[4])+0
f=c[b]if f==_[3]then
ad[a]=u[2]==_[5]and{_[6],1,c}or{u[1],u[2]+1,c}if _[6]==0 then
bs(ad,a)end
end
c[10]=c[10]or f~=u
c[30]=a
end
for a,_ in v(h)do
if _ then
for k,u in v({1,2,9})do
_[u]=_[u]+_[u+10]end
_[15]=_[15]+1
f=B[_[4]]if _[7]<=0 and _[20]then
_[15]=0
_[6]=f[_[7]<=-f[4]and f[15]>1 and 15 or 14]_[10],_[20]=o
if f[27]>0 then
c={}for k=1,30 do
c[k]=_[k]end
c[4]=f[27]c[6]=f[28]h[#h+1]=c
end
end
bg=e[16][_[6]]if _[15]>=bg[2]and bg[2]~=-1 then
_[6]=bg[4]_[15]=0
R=e[16][_[6]][3]if R==1 then
for a,m in v(h)do
if m then
i=Y-y(_,m)if i>0 then
as(m,i)end
end
end
elseif R==2 then
if br(_,d,90)then
_[23]=d
_[6]=f[5]end
elseif R==3 then
aw=aW(K(_,_[23])/45+.5)*45
s=j
m=1
bL=f[23]&4>0
while m<5 and not s do
i=am(_,P(aw+e[19][2][m],8))i[9]=_[9]s=ax(i,j,a,m)and(C[1]>=i[9]-24 or bL)m=m+1
end
if s then
for k=1,2 do
_[30+k]=i[k]-_[k]_[k]=i[k]end
_[3]=aw
_[10]=o
else
ax(_,j,a)end
_[9]=bL and _[9]or C[1]b=y(_,_[23])if f[13]>0 and ap(_,_[23],1)and A(b,230)<af()then
_[6]=f[13]end
if b<64 and f[12]>0 then
_[6]=f[12]end
elseif R==5 then
for a=1,11 do
d[3]=d[3]+e[19][9][a]n=e[14][23]bv()bf(d,1)end
d[3]=d[3]-20
elseif R>9 and _[20]then
_[3]=K(_,_[23])n=e[14][R]_[10]=o
ac=_[23]bf(_,a)end
end
if _[17]and _[17]>0 then
n=e[14][_[17]]if not ax(_,j,a)or _[9]<=C[1]then
if aG then
as(aG,f[21]*((af()&7)+1))end
_[1]=_[1]-_[11]_[2]=_[2]-_[12]_[3]=0
_[6]=B[_[4]][5]_[10]=o
_[11]=0
_[12],_[17]=0
_[19]=0
end
end
if _[6]==1 then
h[a]=j
else
ak=sub(_,aE)N=T[2+ak[1]//Y+ak[2]//Y*bw]if N then
N[0][#N[0]+1]=a
end
end
end
end
for a=1,8 do
if ah(a)and z[1][a+4]>0 then
al=a
end
end
n=e[14][al]d[3]=d[3]-aA(3)*(G(ba,5,6)*1.5-6)ba=abs(aA(3))*ba+1
Z=d
for a=1,2 do
Z=am(Z,P(d[3]-M+90*a,aA(a)*8.33))end
Z[9]=d[9]for a=1,8 do
s=ax(Z,o,1,a)end
if s then
for a=1,2 do
d[30+a]=Z[a]-d[a]d[a]=Z[a]end
if d[9]>C[1]then
d[19]=d[19]-1
else
d[9]=A(C[1],d[9]+4)d[19]=O(0,d[19])end
else
d[19]=0
d[9]=C[1]s=b_%4>0 or C[6]<18 or as(d,10)end
aQ=z[1]c=n[1]if ah(31)and ao<=0 and(c==0 or aQ[c]>=n[2])then
ag(3,o)ao=n[3]if c>0 then
aQ[c]=aQ[c]-n[2]end
bv()bf(d,1)end
ao=ao-1
if aA(4)<0 then
_=am(d,P(d[3],64))_[9]=d[9]aJ,aB=ap(d,_,2,1)_=e[2][aB]if aJ==j then
r[2]=aB
c,s=_[4]for a=14,16 do
s=s or z[1][a]>0 and c==a
end
if c==1 or s then
aY(_,_[5])elseif c>3000 and c<3005 then
bm=aW(c-3000)end
end
end
end
r[1]=al
for a=3,13 do
r[a]=d[e[19][4][a]]or r[a]end
r[10]=z[1][aR%#z[1]+1]a=ae
bN=o
H=1
aq=#h+#W
while H<3 and bN do
c=H*9+5
if a<=#h then
_=h[a]if a~=1 then
if _ then
if _[10]then
_[10]=j
r[c]=a
for k=1,8 do
r[c+k]=_[e[19][1][k]]end
H=H+1
end
else
r[c]=-a
bs(h,a)H=H+1
aq=aq-1
end
end
else
_=W[a-#h]if _[10]then
_[10]=j
r[c]=a-#h+2^15
for k=1,6 do
r[c+k]=_[k]end
H=H+1
end
end
a=(a-2)%aq+1
ae=A(ae,aq)bN=a~=ae
end
ae=a
for a=1,32 do
bx.setNumber(a,r[a])end
end
at=at+1
async.httpGet(8,"")end
function onDraw()bR=screen.drawText
bR(26,137,bp)end
