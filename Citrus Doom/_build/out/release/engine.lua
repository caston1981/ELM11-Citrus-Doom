
X=128
ad=180
H=math
L=H.max
C=H.min
aX=H.floor
pi=H.pi/ad
ax=input.getNumber
af=input.getBool
ah=output.setBool
o=true
z=false
v=ipairs
abs=H.abs
ba=table.remove
exp=table.unpack
aW=string
function ac(b,h)return{(b[1]+h[1]),(b[2]+h[2])}end
function sub(b,h)return{(b[1]-h[1]),(b[2]-h[2])}end
function bQ(b)return H.sin(b*pi)end
function aO(b)return H.cos(b*pi)end
function I(b,h)return H.atan(h[2]-b[2],h[1]-b[1])/pi end
function G(b,h,aO)return L(C(aO,b),h)end
function y(b,h)return H.sqrt(((b[1]-h[1])^2)+((b[2]-h[2])^2))end
function N(b,h)return{aO(b)*h,bQ(b)*h}end
e={}bb=1
ar=3
aU=o
am=2
as=0
aA=0
aq=0
b_=0
T=0
aS=0
l=1
aL=0
bm=2
function aQ(a,b,_)if a<2^15 then
_=e[7][a]return aQ(_[_[3]*(b[2]-_[2])-_[4]*(b[1]-_[1])>0 and 8 or 7],b)else
a=e[5][e[6][a-2^15][2]]return U[e[3][e[2][a[4]][a[5]+6]][6]]end
end
function Z(u,bO,A,bB,_)O=g[A]d=B[O[4]]av,ag=d[18],d[19]K,aR=av
x=aQ(#e[7],u)al,ao=exp(x)ai=sub(u,aI)M=S[2+ai[1]//X+ai[2]//X*bv]or{}for a,_ in v(M[0]or{})do
c=g[_]if _~=A and c and O[14]~=c then
k=y(c,u)F=B[c[4]]if c[20]then
V=k-F[18]if V<K and F[23]&1>0 and(d[23]&1>0 or G(u[9],c[9]-ag,c[9]+F[19])==u[9])then
aR=c
K=V
bd=I(u,c)end
end
if A<2 and k<50 then
b=F[25]if b>0 then
for p,t in v(q[b])do
if t>0 and q[1][p]<q[2][p]then
c=q
g[_]=z
c[1][p]=aX(C(c[1][p]+t,c[2][p]))if G(p,5,12)==p then
am=p-4
end
end
end
end
b=F[29]if b>0 then
b=e[11][b]for p=7,8 do
f[p]=G(f[p]+b[p*2-13],f[p],b[p*2-12])end
g[_]=z
end
end
end
end
_=bB<8
if ao-al<ag then
r=_ or aq%4>0 or x[6]<18 or an(O,10)return
end
r=_ or aq%32>0 or x[6]~=5 or q[1][18]>0 or an(O,5)for a=1,#M do
_=e[2][M[a]]k,bx=bo(u,Y[_[1]],Y[_[2]])if k<K then
if _[3]&1>0 and d[23]&1>0 or _[3]&4<1 then
if A>1 or aM>0 or _[3]&4>0 then
K=k
bd=bx
end
else
aE,bg=C(_[9],ao),L(_[8],al)if C(u[9],ao-ag)+24<bg or L(u[9],al)+ag>aE or aE-bg<ag then
K=k
bd=bx
else
if bB<2 and(_[3]&512>0 or A<2)and(_[4]==2 or A>1)then
be(_,_[5])end
ao,al=aE,bg
end
end
end
end
x={al,ao}if bO then
if K~=av then
_=ac(u,N(bd,K-av))u[1]=_[1]u[2]=_[2]end
return o
end
return K==av
end
function bo(s,w,ay)W=y(w,s)bI=I(w,ay)+90
bN=bI-I(s,w)aM,bn=exp(N(-bN,W))aG=bI
if aM<0 then
aG=aG+ad
end
if bn<0 then
return W,I(s,w)elseif bn>y(ay,w)then
return y(ay,s),I(s,ay)else
return abs(aM),aG
end
end
function az(s,w,bf,A)aP=y(s,w)aB=aP
aF,r=o
V,aD=exp(s)bR,bP=exp(w)aV,aN=exp(sub(w,s))aw,bF=s[9]+32,w[9]+32
for a,_ in v(e[2])do
bz=Y[_[1]]bk,bw=exp(sub(Y[_[2]],bz))bt,bH=exp(sub(s,bz))bq=bw*aV-bk*aN
Q=(bk*bH-bw*bt)/bq
bu=(aV*bH-aN*bt)/bq
if G(Q,0,1)==Q and G(bu,0,1)==bu then
bh={V+(Q*aV),aD+(Q*aN)}k=y(s,bh)E=aw+(bF-aw)*(k/aP)if G(E,_[8]+1,_[9])~=E then
if k<aB then
aF=z
if bf==1 then
return
end
aB=k
bl,bj=exp(bh)by=E
bE=a
end
end
end
end
if bf>1 then
if bf>2 then
for a,_ in v(g)do
if _ and a~=A then
d=B[_[4]]if d[23]&1>0 and _[20]then
k=y(s,_)if k<aB then
Q=bo(_,s,w)W=(k/aP)E=aw+(bF-aw)*W
if G(E,_[9],_[9]+d[19])==E and Q<d[18]then
aB=k
r,aF=o
bl=V+(bR-V)*W
bj=aD+(bP-aD)*W
by=E
bE=a
end
end
end
end
end
end
return aF,bE,{bl,bj,by}end
return o
end
function httpReply()bA=aA//2
aA=0
end
function ak()aS=aS%256+1
return e[13][1][aS]end
function an(_,a,c)d=B[_[4]]if d[23]&2>0 and _[7]>0 then
_[8]=_[8]-(a+1)//2
_[7]=_[7]-a//2+C(_[8],0)_[8]=L(_[8],0)_[33]=d[13]~="lost soul missile state" and c or f
if ak()<d[10]then
_[6]=d[9]_[15]=0
_[10]=o
end
end
end
function bi(b,h,ap)return h[20]and abs(((I(b,h)-b[3]+ad)%360)-ad)<ap and az(b,h,1)end
function aY(D,A)bD=ae and(ae[9]-D[9])*n[6]/y(ae,D)or 0
for a=1,n[12]do
b={}for a=1,33 do
b[a]=D[a]end
b[4]=n[8]b[10]=o
b[14]=D
bs=(ak()/X-1)*n[10]aH=N(D[3]+bs,n[6])if n[7]>0 then
g[#g+1]=b
d=B[b[4]]b[6]=d[3]b[9]=D[9]+n[13]b[11]=aH[1]b[12]=aH[2]b[17]=am
b[19]=bD
else
c=ac(D,aH)c[9]=f[9]+bD
bc,au,c=az(D,c,3,A)if not bc then
br=sub(c,N(D[3]+bs,1))g[#g+1]=b
b[1]=br[1]b[2]=br[2]b[6]=B[b[4]][3]b[9]=c[3]b[19]=1
if r then
b=g[au]an(b,n[9]*((ak()&3)+2),D)end
end
end
end
end
function be(_,c)if c>-1 then
b=e[9][c]if b[1]>0 or O[31]*_[10][2]-O[32]*_[10][1]<0 then
h=U[b[1]]aa[h and h[30]or#aa+1]={c,1,h or O}_[4]=b[7]b=b[8]>0 and be(_,b[8])end
else
aU=o
ar=-c
m[10]=-c
end
end
function bK()bJ,ae=2048
for a,_ in v(g)do
if a>1 and _ and bi(f,_,10)then
k=y(_,f)if k<bJ then
if B[_[4]][23]&2>0 then
ae=_
bJ=k
end
end
end
end
end
function bp(_)if _[9]~=x[1]and not bM then
_[9]=x[1]_[10]=true
end
end
function onTick()ah(9,af(32))ah(2,af(11))ah(3,z)for i=1,3 do
if af(32)and(not bG)or not e[21]then
aC=property.getText(bb)a=1
j=""
_=aW.sub(aC,a,a)while _~=""do
c=aW.byte(_)if c>64 then
j=(j..c-65)+0
if l==1 then
bC=j
e[j]=e[j]or{}elseif l==2 then
E=j
aj=0
elseif l==3 then
aJ=j
else
if aj==0 then
aj=E
aJ=aJ-1
aK={}e[bC][#e[bC]+1]=aK
end
aK[#aK+1]=j
aj=aj-1
l=L(aj,aJ)>0 and l-1 or 0
end
l=l+1
j=""
else
j=j.._
end
a=a+1
_=aW.sub(aC,a,a)end
bb=bb+1
bG=aC==""
end
end
if bG then
if aU then
aa,aU={}ab=1
for a=1,10 do
e[a]=e[a+10*ar]end
g=e[1]Y=e[4]U=e[8]S=e[10]aI,S[1]=S[1]q=e[12]B=e[15]for a=14,16 do
q[1][a]=0
end
ar=ar+1
for a=#g,1,-1 do
_=g[a]for i=7,32 do
_[i]=0
end
_[7]=B[_[4]][4]_[9],_[10]=aQ(#e[7],_)[1]if _[5]&bm<1 then
ba(g,a)elseif _[4]==1 then
if f then
_[7]=f[7]_[8]=f[8]end
f=_
end
end
bv=aI[3]end
for a,_ in v(e[2])do
_[10]=sub(Y[_[2]],Y[_[1]])if _[3]&4>0 then
d,F=U[e[3][_[6]][6]],U[e[3][_[7]][6]]_[8]=L(d[1],F[1])_[9],d[30],F[30]=C(d[2],F[2])else
_[8],_[9]=0,0
end
end
m={}for a=1,32 do
m[a]=0
end
b_=b_+1
T=C(T+1/bA,2/35)ah(1,T>=0)if T>=0 then
T=T-1/35
aq=aq+1
for a=2,#S do
S[a][0]={}end
for a,t in v(aa)do
_=e[9][t[1]]c=t[3]b=_[2]d=c[b]c[b]=G(_[3],d-_[4],d+_[4])+0
d=c[b]if d==_[3]then
aa[a]=t[2]==_[5]and{_[6],1,c}or{t[1],t[2]+1,c}if _[6]==0 then
ba(aa,a)end
end
c[10]=c[10]or d~=t
c[30]=a
end
for a,_ in v(g)do
if _ then
ai=sub(_,aI)M=S[2+ai[1]//X+ai[2]//X*bv]if M then
M[0][#M[0]+1]=a
end
end
end
for a,_ in v(g)do
if _ then
for i,t in v({1,2,9})do
_[t]=_[t]+_[t+10]end
_[15]=_[15]+1
d=B[_[4]]if _[7]<=0 and _[20]then
_[15]=0
_[6]=d[_[7]<=-d[4]and d[15]>1 and 15 or 14]_[10],_[20]=o
m[12]=d[16]if d[27]>0 then
c={}for i=1,30 do
c[i]=_[i]end
c[4]=d[27]c[6]=d[28]g[#g+1]=c
end
end
aZ=e[16][_[6]]_[33]=_[33]and(_[33][20]and _[33]or f)if _[15]>=aZ[2]and aZ[2]~=-1 then
_[6]=aZ[4]_[15]=0
P=e[16][_[6]][3]bM=d[23]&4>0
if P==1 then
for i,l in v(g)do
if l then
j=X-y(_,l)if j>0 then
an(l,j)end
end
end
elseif P==2 then
if bi(_,f,90)then
_[33]=f
_[6]=d[5]m[12]=d[6]end
Z(_,z,a,8)bp(_)elseif P==3 then
ap,r=aX(I(_,_[33])/45+.5)*45
l=1
while l<5 and not r do
j=ac(_,N(ap+e[19][2][l],8))j[9]=_[9]r=Z(j,z,a,l)and(x[1]>=j[9]-24 or bM)l=l+1
end
if r then
for i=1,2 do
_[30+i]=j[i]-_[i]_[i]=j[i]end
_[3]=ap
_[10]=o
else
Z(_,z,a,8)end
bp(_)b=y(_,_[33])if d[13]>0 and az(_,_[33],1)and C(b,230)<ak()then
_[6]=d[13]end
if b<64 and d[12]>0 then
_[6]=d[12]end
elseif P==5 then
for i=1,11 do
f[3]=f[3]+e[19][9][i]n=e[14][23]bK()aY(f,1)end
f[3]=f[3]-20
elseif P>9 and _[20]then
_[3]=I(_,_[33])n=e[14][P]_[10]=o
ae=_[33]aY(_,a)end
end
if _[17]and _[17]>0 then
n=e[14][_[17]]if not Z(_,z,a,2)or _[9]<=x[1]then
if aR then
an(aR,d[21]*((ak()&7)+1),_[14])end
_[1]=_[1]-_[11]_[2]=_[2]-_[12]_[3]=0
_[6]=B[_[4]][5]_[10]=o
_[11]=0
_[12],_[17]=0
m[12]=d[16]_[19]=0
end
end
if _[6]==1 then
g[a]=z
end
end
end
for a=1,8 do
if af(a)and q[1][a+4]>0 then
am=a
end
end
n=e[14][am]q[1][18]=q[1][18]-1
f[3]=f[3]-ax(3)*(G(aL,5,6)*1.5-6)aL=abs(ax(3))*aL+1
R=f
for a=1,2 do
R=ac(R,N(f[3]-ad+90*a,ax(a)*8.33))end
R[9]=f[9]for a=1,8 do
r=Z(R,o,1,a)end
if r then
for a=1,2 do
f[30+a]=R[a]-f[a]f[a]=R[a]end
if f[9]>x[1]then
f[19]=f[19]-1
else
f[9]=C(x[1],f[9]+4)f[19]=L(0,f[19])end
else
f[19]=0
f[9]=x[1]end
aT=q[1]c=n[1]if af(31)and as<=0 and aT[c]>=n[2]then
ah(3,o)as=n[3]if c>0 then
aT[c]=aT[c]-n[2]end
bK()aY(f,1)end
as=as-1
if ax(4)<0 then
_=ac(f,N(f[3],64))_[9]=f[9]bc,au=az(f,_,2,1)_=e[2][au]if bc==z then
m[2]=au
c,r=_[4]for a=14,16 do
r=r or q[1][a]>0 and c==a
end
if c==1 or r then
be(_,_[5])elseif c>3000 and c<3005 then
bm=aX(c-3000)end
end
end
end
m[1]=am
for a=3,14 do
m[a]=f[e[19][4][a]]or m[a]end
q[1][17]=bA
m[11]=q[1][b_%#q[1]+1]a=ab
bL=o
J=1
at=#g+#U
while J<3 and bL do
c=J*9+6
if a<=#e[1]then
_=g[a]if _ then
if _[10]and a>1 then
m[c],_[10]=a
for i=1,8 do
m[c+i]=_[e[19][1][i]]end
J=J+1
end
else
m[c]=-a
ba(g,a)J=J+1
at=at-1
end
else
_=U[a-#g]if _[10]then
m[c],_[10]=a-#g+2^15
for i=1,6 do
m[c+i]=_[i]end
J=J+1
end
end
a=(a-2)%at+1
ab=C(ab,at)bL=a~=ab
end
ab=a
for a=1,32 do
output.setNumber(a,m[a])end
end
aA=aA+1
async.httpGet(8,"")end
