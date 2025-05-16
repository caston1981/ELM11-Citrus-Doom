bT=""

Q=128
P=180
bm=output
bg=input
D=math
N=D.max
x=D.min
aq=D.floor
pi=D.pi
ax=bg.getNumber
ab=bg.getBool
ak=bm.setBool
n=true
i=false
y=ipairs
abs=D.abs
bi=table.remove
aY=string
function al(b,g)return{(b[1]+g[1]),(b[2]+g[2])}end
function sub(b,g)return{(b[1]-g[1]),(b[2]-g[2])}end
function bC(b)return D.sin(b/P*pi)end
function aj(b)return D.cos(b/P*pi)end
function I(b,g)return D.atan(g[2]-b[2],g[1]-b[1])*P/pi end
function K(b,g,aj)return N(x(aj,b),g)end
function v(b,g)return D.sqrt(((b[1]-g[1])^2)+((b[2]-g[2])^2))end
function X(b,g)return{aj(b)*g,bC(b)*g}end
function exp(b)return b[1],b[2]end
e={}ba=1
ay=3
ap=i
aJ=n
af=2
at=0
az=0
W=0
aD=0
m=1
aM=0
bf=2
function bd(a,b,_)if a<32768then
_=e[7][a]return bd(_[_[3]*(b[2]-_[2])-_[4]*(b[1]-_[1])>0 and 8 or 7],b)else
a=e[5][e[6][a-32768][2]]return R[e[3][e[2][a[4]][a[5]+6]][6]]end
end
function aC(s,be,z,bR,_,a,k)ah=h[z]f=B[ah[4]]au,ac=f[18],f[19]G=au
E=bd(#e[7],s)S,am=exp(E)ae=sub(s,L[1])O=L[2+ae[1]//Q+ae[2]//Q*bM]or{{}}for a,_ in y(O[0])do
c=h[_]if _~=z and c and ah[14]~=_ then
l=v(c,s)C=B[c[4]]if c[20]then
U=l-C[18]if U<G and C[23]&1>0 and(f[23]&1>0 or(s[9]+ac<c[9]or s[9]>c[9]+C[19])==i)then
aV=c
if be==i then
return i
end
G=U
aO=I(s,c)end
end
if z==1 and not c[10]then
if l<50then
b=C[25]if b>0then
for q,t in y(A[b])do
if t>0 and A[1][q]<A[2][q]then
c=A
h[_]=i
c[1][q]=aq(x(c[1][q]+t,c[2][q]))if K(q,5,12)==q then
af=q-4
end
end
end
end
b=C[29]if b>0 then
b=e[11][b]for q=7,8 do
d[q]=K(d[q]+b[q*2-13],d[q],b[q*2-12])end
h[_]=i
end
end
end
end
end
aV=i
if am-S<ac or S>s[9]+24then
return i
end
for a=1,#O do
_=e[2][O[a]]l,bv=by(s,Z[_[1]],Z[_[2]])if l<G then
if bR==1 and(_[3]&512>0 or z==1)and(_[4]==2 or z>1)then
aT(_,_[5])end
if(_[3]&1>0 and f[23]&1>0)or _[3]&4==0 then
G=l
aO=bv
else
aI,aZ=x(_[9],am),N(_[8],S)if x(s[9],am-ac)+24<aZ or N(s[9],S)+ac>aI or aI-aZ<ac then
G=l
aO=bv
else
am,S=aI,aZ
end
end
end
end
E={S,am}if be then
if G~=au then
_=al(s,X(aO,G-au))s[1]=_[1]s[2]=_[2]end
return n
end
return G==au
end
function by(p,w,aB)M=v(w,p)bo=I(w,aB)+90
bD=bo-I(p,w)bN=-M*bC(bD)bs=M*aj(bD)aR=bo
if bs<0 then
aR=aR+P
end
if bN<0 then
return M,I(p,w)elseif bN>v(aB,w)then
return v(aB,p),I(p,aB)else
return abs(bs),aR
end
end
function ao(p,w,aP,z,_)aQ=v(p,w)as=aQ
aX=n
U,aN=exp(p)bP,bQ=exp(w)aG,aW=exp(sub(w,p))av,bB=p[9]+32,w[9]+32
u=i
for a,_ in y(e[2])do
bj=Z[_[1]]bl,bL=exp(sub(Z[_[2]],bj))bp,bw=exp(sub(p,bj))bA=bL*aG-bl*aW
T=(bl*bw-bL*bp)/bA
bI=(aG*bw-aW*bp)/bA
if K(T,0,1)==T and K(bI,0,1)==bI then
br={U+(T*aG),aN+(T*aW)}l=v(p,br)F=av+(bB-av)*(l/aQ)if K(F,_[8]+1,_[9])~=F then
aX=i
if aP==1 then
return i
end
if l<as then
as=l
bh,bE=exp(br)bF=F
bx=a
end
end
end
end
if aP>1 then
if aP==3 then
for a,_ in y(h)do
if _ and a~=z then
f=B[_[4]]if f[23]&1>0 and _[20]then
l=v(p,_)if l<as then
T=by(_,p,w)M=(l/aQ)F=av+(bB-av)*M
if K(F,_[9],_[9]+f[19])==F and T<f[18]then
as=l
u=n
aX=i
bh=U+(bP-U)*M
bE=aN+(bQ-aN)*M
bF=F
bx=a
end
end
end
end
end
end
return aX,bx,{bh,bE,bF}end
return n
end
function httpReply(b,g,aj)bt=az//2
az=0
end
function ag()aD=aD%256+1
return e[13][1][aD]end
function b_(_,a)f=B[_[4]]if f[23]&2>0 and _[7]>0 then
_[8]=_[8]-(a+1)//2
_[7]=_[7]-a//2+x(_[8],0)_[8]=N(_[8],0)if ag()<f[10]then
_[6]=f[9]_[15]=0
_[23]=d
_[10]=n
end
end
end
function bn(b,g,ar)return g[20]and abs(((I(b,g)-b[3]+P)%360)-P)<ar and ao(b,g,1)end
function aK(J,z)bu=ai and(ai[9]-J[9])*o[6]/v(ai,J)or 0
for a=1,o[12]do
b={}for a=1,30 do
b[a]=J[a]end
b[4]=o[8]b[10]=n
b[14]=z
bJ=(ag()/Q-1)*o[10]aL=X(J[3]+bJ,o[6])if o[7]>0then
h[#h+1]=b
f=B[b[4]]b[6]=f[3]b[9]=J[9]+32
b[11]=aL[1]b[12]=aL[2]b[17]=af
b[19]=bu
else
c=al(J,aL)c[9]=d[9]+bu
bc,aw,c=ao(J,c,3,z)if not bc then
bK=sub(c,X(J[3]+bJ,1))h[#h+1]=b
b[1]=bK[1]b[2]=bK[2]b[6]=B[b[4]][3]b[9]=c[3]b[19]=1
if u then
b=h[aw]b_(b,o[9]*((ag()&3)+2))end
end
end
end
end
function aT(_,c)if c>-1 then
b=e[9][c]if b[1]>0 or ah[31]*_[10][2]-ah[32]*_[10][1]<0 then
g=R[b[1]]aa[g and g[30]or#aa+1]={c,1,g or ah}_[4]=b[7]b=b[8]>0 and aT(_,b[8])end
else
aJ=n
ay=-c
r[9]=-c
end
end
function bq()bH,ai=2048
for a,_ in y(h)do
if a>1 and _ and bn(d,_,10)then
l=v(_,d)if l<bH then
if B[_[4]][23]&2>0then
ai=_
bH=l
end
end
end
end
end
function onTick()ak(9,ab(32))ak(2,ab(11))ak(3,i)for k=1,3 do
if ab(32)and(not ap)or not e[21]then
bb=property.getText(ba)a=1
j=bT
_=aY.sub(bb,a,a)while _~=bTdo
c=aY.byte(_)if c>64then
j=(j..c-65)+0
if m==1then
bz=j
e[j]=e[j]or{}elseif m==2then
F=j
ad=0
elseif m==3then
aH=j
else
if ad==0then
ad=F
aH=aH-1
aS={}e[bz][#e[bz]+1]=aS
end
aS[#aS+1]=j
ad=ad-1
m=N(ad,aH)>0 and m-1 or 0
end
m=m+1
j=bT
else
j=j.._
end
a=a+1
_=aY.sub(bb,a,a)end
ba=ba+1
ap=bb==bT
end
end
if ap then
if aJ then
aa,aJ={}an=1
for a=1,10 do
e[a]=e[a+10*ay]end
h=e[1]Z=e[4]R=e[8]L=e[10]A=e[12]B=e[15]for a=14,16 do
A[1][a]=0
end
ay=ay+1
for a,_ in y(h)do
for k=7,40 do
_[k]=0
end
bS=_[5]+1
_[7]=B[_[4]][4]_[9],_[10]=bd(#e[7],_)[1]if _[4]==1 then
if d then
_[7]=d[7]_[8]=d[8]end
d=_
elseif _[5]&bf<1then
h[a]=i
end
end
bM=L[1][3]end
for a,_ in y(e[2])do
_[10]=sub(Z[_[2]],Z[_[1]])if _[3]&4>0 then
f,C=R[e[3][_[6]][6]],R[e[3][_[7]][6]]_[8]=N(f[1],C[1])_[9],f[30],C[30]=x(f[2],C[2])else
_[8],_[9]=0,0
end
end
r={}for a=1,32 do
r[a]=0
end
W=x(W+1/bt,2/35)ak(1,W>=0)if W>=0 then
W=W-1/35
for a=2,#L do
L[a][0]={}end
for a,t in y(aa)do
_=e[9][t[1]]c=t[3]b=_[2]f=c[b]c[b]=K(_[3],f-_[4],f+_[4])+0
f=c[b]if abs(f-_[3])<.1then
aa[a]=t[2]==_[5]and{_[6],1,c}or{t[1],t[2]+1,c}if _[6]==0 then
bi(aa,a)end
end
c[10]=c[10]or f~=t
c[30]=a
end
for a,_ in y(h)do
if _ then
for k,t in y({1,2,9})do
_[t]=_[t]+_[t+10]end
_[15]=_[15]+1
f=B[_[4]]if _[7]<=0 and _[20]then
_[15]=0
_[6]=f[_[7]<=-f[4]and f[15]>1 and 15or 14]_[10],_[20]=n
if f[27]>0 then
c={}for k=1,30 do
c[k]=_[k]end
c[4]=f[27]c[6]=f[28]h[#h+1]=c
end
end
aE=e[16][_[6]]if _[15]>=aE[2]and aE[2]~=-1then
_[6]=aE[4]_[15]=0
V=e[16][_[6]][3]if V==1 then
for a,m in y(h)do
if m then
j=Q-v(_,m)if j>0 then
b_(m,j)end
end
end
elseif V==2then
if bn(_,d,90)then
_[23]=d
_[6]=f[5]end
elseif V==3then
ar=aq(I(_,_[23])/45+.5)*45
u=i
m=1
bG=f[23]&4>0
while m<5 and not u do
j=al(_,X(ar+e[19][2][m],8))j[9]=_[9]u=aC(j,i,a,m)and(E[1]>=j[9]-24 or bG)m=m+1
end
if u then
for k=1,2 do
_[30+k]=j[k]-_[k]_[k]=j[k]end
_[3]=ar
_[10]=n
else
aC(_,i,a)end
_[9]=bG and _[9]or E[1]b=v(_,_[23])if f[13]>0 and ao(_,_[23],1)and x(b,230)<ag()then
_[6]=f[13]end
if b<64 and f[12]>0then
_[6]=f[12]end
elseif V==5then
for a=1,11 do
d[3]=d[3]+e[19][9][a]o=e[14][23]bq()aK(d,1)end
d[3]=d[3]-20
elseif V>9then
_[3]=I(_,_[23])o=e[14][V]_[10]=n
ai=_[23]aK(_,a)end
end
if _[17]and _[17]>0then
o=e[14][_[17]]if not aC(_,i,a)or _[9]<=E[1]then
if aV then
b_(aV,f[21]*((ag()&7)+1))end
_[1]=_[1]-_[11]_[2]=_[2]-_[12]_[3]=0
_[6]=B[_[4]][9]_[10]=n
_[11]=0
_[12]=0
_[17]=bO
_[19]=0
end
end
if _[6]==1then
h[a]=i
else
ae=sub(_,L[1])O=L[2+ae[1]//Q+ae[2]//Q*bM]if O~=bO then
O[0][#O[0]+1]=a
end
end
end
end
for a=1,8 do
if ab(a)and A[1][a+4]>0then
af=a
end
end
o=e[14][af]d[3]=d[3]-ax(3)*(K(aM,5,6)*1.5-6)aM=abs(ax(3))*aM+1
Y=d
for a=1,2 do
Y=al(Y,X(d[3]-P+90*a,ax(a)*8.33))end
Y[9]=d[9]for a=1,8 do
u=aC(Y,n,1,a)end
if u then
for a=1,2 do
d[30+a]=Y[a]-d[a]d[a]=Y[a]end
if d[9]<=E[1]then
d[9]=x(E[1],d[9]+4)d[19]=N(0,d[19])else
if d[9]>=E[2]-56then
d[9]=E[2]-56
d[19]=x(0,d[19])end
d[19]=d[19]-1
end
else
d[19]=0
end
aU=A[1]c=o[1]if ab(31)and at<=0 and(c==0 or aU[c]>=o[2])then
ak(3,n)at=o[3]if c>0then
aU[c]=aU[c]-o[2]end
bq()aK(d,1)end
at=at-1
if ax(4)<0 then
_=al(d,X(d[3],64))_[9]=d[9]bc,aw=ao(d,_,2,1)_=e[2][aw]if bc==i then
r[2]=aw
c,u=_[4]for a=14,16 do
u=u or A[1][a]>0 and c==a
end
if c==1 or u then
aT(_,_[5])elseif c>3000 and c<3005then
bf=aq(c-3000)end
end
end
end
r[1]=af
for a=3,8 do
r[a]=d[e[19][4][a]]end
r[5]=1
r[13]=d[3]a=an
bk=n
H=1
aA=#h+#R
while H<3 and bk do
c=H*9+5
if a<=#h then
_=h[a]if a~=1 then
if _ then
if _[10]then
_[10]=i
r[c]=a
for k=1,8 do
r[c+k]=_[e[19][1][k]]end
H=H+1
end
else
r[c]=-a
bi(h,a)H=H+1
aA=aA-1
end
end
else
_=R[a-#h]if _[10]then
_[10]=i
r[c]=a-#h+2^15
for k=1,6 do
r[c+k]=_[k]end
H=H+1
end
end
a=((a-2)%aA)+1
an=x(an,aA)bk=a~=an
end
an=a
for a=1,32 do
bm.setNumber(a,r[a])end
end
az=az+1
async.httpGet(8,bT)end
function onDraw()aF=screen.drawText
aF(26,137,bt)if ap then
for a=1,4 do
b=124+a*7
aF(240,b,aq(A[1][a]))aF(230,b,A[1][13+a])end
end
end
