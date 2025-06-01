bU=""

Z=128
M=180
bi=output
bA=input
D=math
N=D.max
z=D.min
aq=D.floor
pi=D.pi
aC=bA.getNumber
aa=bA.getBool
ah=bi.setBool
o=true
i=false
w=ipairs
abs=D.abs
bO=table.remove
aT=string
function ai(b,g)return{(b[1]+g[1]),(b[2]+g[2])}end
function sub(b,g)return{(b[1]-g[1]),(b[2]-g[2])}end
function bH(b)return D.sin(b/M*pi)end
function ad(b)return D.cos(b/M*pi)end
function K(b,g)return D.atan(g[2]-b[2],g[1]-b[1])*M/pi end
function C(b,g,ad)return N(z(ad,b),g)end
function x(b,g)return D.sqrt(((b[1]-g[1])^2)+((b[2]-g[2])^2))end
function Y(b,g)return{ad(b)*g,bH(b)*g}end
function exp(b)return b[1],b[2]end
e={}aY=1
ax=3
aA=i
aK=o
an=2
ay=0
ar=0
aU=0
P=0
aV=0
l=1
ba=0
bn=2
function b_(a,b,_)if a<2^15then
_=e[7][a]return b_(_[_[3]*(b[2]-_[2])-_[4]*(b[1]-_[1])>0 and 8 or 7],b)else
a=e[5][e[6][a-32768][2]]return Q[e[3][e[2][a[4]][a[5]+6]][6]]end
end
function as(r,bq,y,bR,_)ak=h[y]f=B[ak[4]]az,ab=f[18],f[19]J=az
F=b_(#e[7],r)R,am=exp(F)ac=sub(r,aR)O=U[2+ac[1]//Z+ac[2]//Z*bu]or{}for a,_ in w(O[0]or{})do
c=h[_]if _~=y and c and ak[14]~=_ then
m=x(c,r)E=B[c[4]]if c[20]then
X=m-E[18]if X<J and E[23]&1>0 and(f[23]&1>0 or C(r[9],c[9]-ab,c[9]+E[19])==r[9])then
aJ=c
if bq==i then
return i
end
J=X
bc=K(r,c)end
end
if y==1 then
if m<50then
b=E[25]if b>0then
for q,t in w(A[b])do
if t>0 and A[1][q]<A[2][q]then
c=A
h[_]=i
c[1][q]=aq(z(c[1][q]+t,c[2][q]))if C(q,5,12)==q then
an=q-4
end
end
end
end
b=E[29]if b>0 then
b=e[11][b]for q=7,8 do
d[q]=C(d[q]+b[q*2-13],d[q],b[q*2-12])end
h[_]=i
end
end
end
end
end
if am-R<ab or R>r[9]+24then
return i
end
for a=1,#O do
_=e[2][O[a]]m,bw=bp(r,T[_[1]],T[_[2]])if m<J then
if(_[3]&1>0 and f[23]&1>0)or _[3]&4==0 then
if y>1 or bd>0 or _[3]&4>0 then
J=m
bc=bw
end
else
aZ,aF=z(_[9],am),N(_[8],R)if z(r[9],am-ab)+24<aF or N(r[9],R)+ab>aZ or aZ-aF<ab then
J=m
bc=bw
else
if bR==1 and(_[3]&512>0 or y==1)and(_[4]==2 or y>1)then
aE(_,_[5])end
am,R=aZ,aF
end
end
end
end
F,aJ={R,am}if bq then
if J~=az then
_=ai(r,Y(bc,J-az))r[1]=_[1]r[2]=_[2]end
return o
end
return J==az
end
function bp(p,v,av)L=x(v,p)bM=K(v,av)+90
bo=bM-K(p,v)bG=-L*bH(bo)bd=L*ad(bo)aX=bM
if bd<0 then
aX=aX+M
end
if bG<0 then
return L,K(p,v)elseif bG>x(av,v)then
return x(av,p),K(p,av)else
return abs(bd),aX
end
end
function ap(p,v,aW,y,_)aM=x(p,v)aw=aM
aG=o
X,aQ=exp(p)bS,bQ=exp(v)bf,aO=exp(sub(v,p))ao,bI=p[9]+32,v[9]+32
s=i
for a,_ in w(e[2])do
bl=T[_[1]]bE,bh=exp(sub(T[_[2]],bl))bv,bx=exp(sub(p,bl))bF=bh*bf-bE*aO
V=(bE*bx-bh*bv)/bF
bL=(bf*bx-aO*bv)/bF
if C(V,0,1)==V and C(bL,0,1)==bL then
bs={X+(V*bf),aQ+(V*aO)}m=x(p,bs)G=ao+(bI-ao)*(m/aM)if C(G,_[8]+1,_[9])~=G then
aG=i
if aW==1 then
return i
end
if m<aw then
aw=m
br,bN=exp(bs)bz=G
bJ=a
end
end
end
end
if aW>1 then
if aW==3 then
for a,_ in w(h)do
if _ and a~=y then
f=B[_[4]]if f[23]&1>0 and _[20]then
m=x(p,_)if m<aw then
V=bp(_,p,v)L=(m/aM)G=ao+(bI-ao)*L
if C(G,_[9],_[9]+f[19])==G and V<f[18]then
aw=m
s=o
aG=i
br=X+(bS-X)*L
bN=aQ+(bQ-aQ)*L
bz=G
bJ=a
end
end
end
end
end
end
return aG,bJ,{br,bN,bz}end
return o
end
function httpReply(b,g,ad)bk=ar//2
ar=0
end
function al()aV=aV%256+1
return e[13][1][aV]end
function aD(_,a)f=B[_[4]]if f[23]&2>0 and _[7]>0 then
_[8]=_[8]-(a+1)//2
_[7]=_[7]-a//2+z(_[8],0)_[8]=N(_[8],0)if al()<f[10]then
_[6]=f[9]_[15]=0
_[23]=d
_[10]=o
end
end
end
function bj(b,g,aB)return g[20]and abs(((K(b,g)-b[3]+M)%360)-M)<aB and ap(b,g,1)end
function bb(H,y)bP=ag and(ag[9]-H[9])*n[6]/x(ag,H)or 0
for a=1,n[12]do
b={}for a=1,30 do
b[a]=H[a]end
b[4]=n[8]b[10]=o
b[14]=y
by=(al()/Z-1)*n[10]aP=Y(H[3]+by,n[6])if n[7]>0then
h[#h+1]=b
f=B[b[4]]b[6]=f[3]b[9]=H[9]+n[13]b[11]=aP[1]b[12]=aP[2]b[17]=an
b[19]=bP
else
c=ai(H,aP)c[9]=d[9]+bP
be,au,c=ap(H,c,3,y)if not be then
bB=sub(c,Y(H[3]+by,1))h[#h+1]=b
b[1]=bB[1]b[2]=bB[2]b[6]=B[b[4]][3]b[9]=c[3]b[19]=1
if s then
b=h[au]aD(b,n[9]*((al()&3)+2))end
end
end
end
end
function aE(_,c)if c>-1 then
b=e[9][c]if b[1]>0 or ak[31]*_[10][2]-ak[32]*_[10][1]<0 then
g=Q[b[1]]ae[g and g[30]or#ae+1]={c,1,g or ak}_[4]=b[7]b=b[8]>0 and aE(_,b[8])end
else
aK=o
ax=-c
u[9]=-c
end
end
function bK()bC,ag=2048
for a,_ in w(h)do
if a>1 and _ and bj(d,_,10)then
m=x(_,d)if m<bC then
if B[_[4]][23]&2>0then
ag=_
bC=m
end
end
end
end
end
function onTick()ah(9,aa(32))ah(2,aa(11))ah(3,i)for k=1,3 do
if aa(32)and(not aA)or not e[21]then
aS=property.getText(aY)a=1
j=bU
_=aT.sub(aS,a,a)while _~=bUdo
c=aT.byte(_)if c>64then
j=(j..c-65)+0
if l==1then
bm=j
e[j]=e[j]or{}elseif l==2then
G=j
aj=0
elseif l==3then
aL=j
else
if aj==0then
aj=G
aL=aL-1
aH={}e[bm][#e[bm]+1]=aH
end
aH[#aH+1]=j
aj=aj-1
l=N(aj,aL)>0 and l-1 or 0
end
l=l+1
j=bU
else
j=j.._
end
a=a+1
_=aT.sub(aS,a,a)end
aY=aY+1
aA=aS==bU
end
end
if aA then
if aK then
ae,aK={}af=1
for a=1,10 do
e[a]=e[a+10*ax]end
h=e[1]T=e[4]Q=e[8]U=e[10]aR,U[1]=U[1]A=e[12]B=e[15]for a=14,16 do
A[1][a]=0
end
ax=ax+1
for a,_ in w(h)do
for k=7,40 do
_[k]=0
end
bT=_[5]+1
_[7]=B[_[4]][4]_[9],_[10]=b_(#e[7],_)[1]if _[4]==1 then
if d then
_[7]=d[7]_[8]=d[8]end
d=_
elseif _[5]&bn<1then
h[a]=i
end
end
bu=aR[3]end
for a,_ in w(e[2])do
_[10]=sub(T[_[2]],T[_[1]])if _[3]&4>0 then
f,E=Q[e[3][_[6]][6]],Q[e[3][_[7]][6]]_[8]=N(f[1],E[1])_[9],f[30],E[30]=z(f[2],E[2])else
_[8],_[9]=0,0
end
end
u={}for a=1,32 do
u[a]=0
end
P=z(P+1/bk,2/35)ah(1,P>=0)if P>=0 then
P=P-1/35
aU=aU+1
for a=2,#U do
U[a][0]={}end
for a,t in w(ae)do
_=e[9][t[1]]c=t[3]b=_[2]f=c[b]c[b]=C(_[3],f-_[4],f+_[4])+0
f=c[b]if f==_[3]then
ae[a]=t[2]==_[5]and{_[6],1,c}or{t[1],t[2]+1,c}if _[6]==0 then
bO(ae,a)end
end
c[10]=c[10]or f~=t
c[30]=a
end
for a,_ in w(h)do
if _ then
for k,t in w({1,2,9})do
_[t]=_[t]+_[t+10]end
_[15]=_[15]+1
f=B[_[4]]if _[7]<=0 and _[20]then
_[15]=0
_[6]=f[_[7]<=-f[4]and f[15]>1 and 15or 14]_[10],_[20]=o
if f[27]>0 then
c={}for k=1,30 do
c[k]=_[k]end
c[4]=f[27]c[6]=f[28]h[#h+1]=c
end
end
aI=e[16][_[6]]if _[15]>=aI[2]and aI[2]~=-1then
_[6]=aI[4]_[15]=0
S=e[16][_[6]][3]if S==1 then
for a,l in w(h)do
if l then
j=Z-x(_,l)if j>0 then
aD(l,j)end
end
end
elseif S==2then
if bj(_,d,90)then
_[23]=d
_[6]=f[5]end
elseif S==3then
aB=aq(K(_,_[23])/45+.5)*45
s=i
l=1
bt=f[23]&4>0
while l<5 and not s do
j=ai(_,Y(aB+e[19][2][l],8))j[9]=_[9]s=as(j,i,a,l)and(F[1]>=j[9]-24 or bt)l=l+1
end
if s then
for k=1,2 do
_[30+k]=j[k]-_[k]_[k]=j[k]end
_[3]=aB
_[10]=o
else
as(_,i,a)end
_[9]=bt and _[9]or F[1]b=x(_,_[23])if f[13]>0 and ap(_,_[23],1)and z(b,230)<al()then
_[6]=f[13]end
if b<64 and f[12]>0then
_[6]=f[12]end
elseif S==5then
for a=1,11 do
d[3]=d[3]+e[19][9][a]n=e[14][23]bK()bb(d,1)end
d[3]=d[3]-20
elseif S>9 and _[20]then
_[3]=K(_,_[23])n=e[14][S]_[10]=o
ag=_[23]bb(_,a)end
end
if _[17]and _[17]>0then
n=e[14][_[17]]if not as(_,i,a)or _[9]<=F[1]then
if aJ then
aD(aJ,f[21]*((al()&7)+1))end
_[1]=_[1]-_[11]_[2]=_[2]-_[12]_[3]=0
_[6]=B[_[4]][5]_[10]=o
_[11]=0
_[12],_[17]=0
_[19]=0
end
end
if _[6]==1then
h[a]=i
else
ac=sub(_,aR)O=U[2+ac[1]//Z+ac[2]//Z*bu]if O then
O[0][#O[0]+1]=a
end
end
end
end
for a=1,8 do
if aa(a)and A[1][a+4]>0then
an=a
end
end
n=e[14][an]d[3]=d[3]-aC(3)*(C(ba,5,6)*1.5-6)ba=abs(aC(3))*ba+1
W=d
for a=1,2 do
W=ai(W,Y(d[3]-M+90*a,aC(a)*8.33))end
W[9]=d[9]for a=1,8 do
s=as(W,o,1,a)end
if s then
for a=1,2 do
d[30+a]=W[a]-d[a]d[a]=W[a]end
if d[9]>F[1]then
d[19]=d[19]-1
else
d[9]=z(F[1],d[9]+4)d[19]=N(0,d[19])end
else
d[19]=0
d[9]=F[1]s=aU%4>0 or F[6]<18 or aD(d,10)end
bg=A[1]c=n[1]if aa(31)and ay<=0 and(c==0 or bg[c]>=n[2])then
ah(3,o)ay=n[3]if c>0then
bg[c]=bg[c]-n[2]end
bK()bb(d,1)end
ay=ay-1
if aC(4)<0 then
_=ai(d,Y(d[3],64))_[9]=d[9]be,au=ap(d,_,2,1)_=e[2][au]if be==i then
u[2]=au
c,s=_[4]for a=14,16 do
s=s or A[1][a]>0 and c==a
end
if c==1 or s then
aE(_,_[5])elseif c>3000 and c<3005then
bn=aq(c-3000)end
end
end
end
u[1]=an
for a=3,8 do
u[a]=d[e[19][4][a]]end
u[5]=1
u[13]=d[3]a=af
bD=o
I=1
at=#h+#Q
while I<3 and bD do
c=I*9+5
if a<=#h then
_=h[a]if a~=1 then
if _ then
if _[10]then
_[10]=i
u[c]=a
for k=1,8 do
u[c+k]=_[e[19][1][k]]end
I=I+1
end
else
u[c]=-a
bO(h,a)I=I+1
at=at-1
end
end
else
_=Q[a-#h]if _[10]then
_[10]=i
u[c]=a-#h+2^15
for k=1,6 do
u[c+k]=_[k]end
I=I+1
end
end
a=(a-2)%at+1
af=z(af,at)bD=a~=af
end
af=a
for a=1,32 do
bi.setNumber(a,u[a])end
end
ar=ar+1
async.httpGet(8,bU)end
function onDraw()aN=screen.drawText
aN(26,137,bk)if aA then
for a=1,4 do
b=124+a*7
aN(240,b,aq(A[1][a]))aN(200,b,A[1][13+a])end
end
end
