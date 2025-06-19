
U=128
O=180
H=math
N=H.max
B=H.min
bc=H.floor
pi=H.pi
aq=input.getNumber
ag=input.getBool
ab=output.setBool
o=true
v=false
z=ipairs
abs=H.abs
aR=table.remove
aS=string
function ae(b,g)return{(b[1]+g[1]),(b[2]+g[2])}end
function sub(b,g)return{(b[1]-g[1]),(b[2]-g[2])}end
function bh(b)return H.sin(b/O*pi)end
function aj(b)return H.cos(b/O*pi)end
function J(b,g)return H.atan(g[2]-b[2],g[1]-b[1])*O/pi end
function F(b,g,aj)return N(B(aj,b),g)end
function w(b,g)return H.sqrt(((b[1]-g[1])^2)+((b[2]-g[2])^2))end
function Y(b,g)return{aj(b)*g,bh(b)*g}end
function exp(b)return b[1],b[2]end
f={}aU=1
aB=3
aW=o
ac=2
as=0
ar=0
aG=0
aJ=0
P=0
bd=0
l=1
aC=0
bk=2
function aX(a,b,_)if a<2^15 then
_=f[7][a]return aX(_[_[3]*(b[2]-_[2])-_[4]*(b[1]-_[1])>0 and 8 or 7],b)else
a=f[5][f[6][a-32768][2]]return Z[f[3][f[2][a[4]][a[5]+6]][6]]end
end
function al(t,bj,D,bq,_)V=h[D]d=y[V[4]]ax,am=d[18],d[19]I=ax
A=aX(#f[7],t)T,an=exp(A)ak=sub(t,aN)M=R[2+ak[1]//U+ak[2]//U*bm]or{}for a,_ in z(M[0]or{})do
c=h[_]if _~=D and c and V[14]~=c then
k=w(c,t)E=y[c[4]]if c[20]then
Q=k-E[18]if Q<I and E[23]&1>0 and(d[23]&1>0 or F(t[9],c[9]-am,c[9]+E[19])==t[9])then
ba=c
if bj==v then
return
end
I=Q
aV=J(t,c)end
end
if D==1 then
if k<50 then
b=E[25]if b>0 then
for q,s in z(x[b])do
if s>0 and x[1][q]<x[2][q]then
c=x
h[_]=v
c[1][q]=bc(B(c[1][q]+s,c[2][q]))if F(q,5,12)==q then
ac=q-4
end
end
end
end
b=E[29]if b>0 then
b=f[11][b]for q=7,8 do
e[q]=F(e[q]+b[q*2-13],e[q],b[q*2-12])end
h[_]=v
end
end
end
end
end
if an-T<am or T>t[9]+24 then
r=(bq or 1)<8 or aG%4>0 or A[6]<18 or az(V,10)return
end
for a=1,#M do
_=f[2][M[a]]k,bE=bt(t,W[_[1]],W[_[2]])if k<I then
if(_[3]&1>0 and d[23]&1>0)or _[3]&4==0 then
if D>1 or aE>0 or _[3]&4>0 then
I=k
aV=bE
end
else
bg,aY=B(_[9],an),N(_[8],T)if B(t[9],an-am)+24<aY or N(t[9],T)+am>bg or bg-aY<am then
I=k
aV=bE
else
if bq==1 and(_[3]&512>0 or D==1)and(_[4]==2 or D>1)then
bf(_,_[5])end
an,T=bg,aY
end
end
end
end
A,ba={T,an}if bj then
if I~=ax then
_=ae(t,Y(aV,I-ax))t[1]=_[1]t[2]=_[2]end
return o
end
return I==ax
end
function bt(p,u,aA)L=w(u,p)bA=J(u,aA)+90
bw=bA-J(p,u)bo=-L*bh(bw)aE=L*aj(bw)aT=bA
if aE<0 then
aT=aT+O
end
if bo<0 then
return L,J(p,u)elseif bo>w(aA,u)then
return w(aA,p),J(p,aA)else
return abs(aE),aT
end
end
function au(p,u,aD,D,_)be=w(p,u)aw=be
aZ,r=o
Q,aP=exp(p)bR,bQ=exp(u)aL,b_=exp(sub(u,p))ap,bp=p[9]+32,u[9]+32
for a,_ in z(f[2])do
bz=W[_[1]]bP,bv=exp(sub(W[_[2]],bz))bL,bx=exp(sub(p,bz))br=bv*aL-bP*b_
aa=(bP*bx-bv*bL)/br
bs=(aL*bx-b_*bL)/br
if F(aa,0,1)==aa and F(bs,0,1)==bs then
bF={Q+(aa*aL),aP+(aa*b_)}k=w(p,bF)G=ap+(bp-ap)*(k/be)if F(G,_[8]+1,_[9])~=G then
aZ=v
if aD==1 then
return
end
if k<aw then
aw=k
bN,bG=exp(bF)bl=G
bn=a
end
end
end
end
if aD>1 then
if aD==3 then
for a,_ in z(h)do
if _ and a~=D then
d=y[_[4]]if d[23]&1>0 and _[20]then
k=w(p,_)if k<aw then
aa=bt(_,p,u)L=(k/be)G=ap+(bp-ap)*L
if F(G,_[9],_[9]+d[19])==G and aa<d[18]then
aw=k
r,aZ=o
bN=Q+(bR-Q)*L
bG=aP+(bQ-aP)*L
bl=G
bn=a
end
end
end
end
end
end
return aZ,bn,{bN,bG,bl}end
return o
end
function httpReply(b,g,aj)by=ar//2
ar=0
end
function ao()bd=bd%256+1
return f[13][1][bd]end
function az(_,a,c)d=y[_[4]]if d[23]&2>0 and _[7]>0 then
_[8]=_[8]-(a+1)//2
_[7]=_[7]-a//2+B(_[8],0)_[8]=N(_[8],0)_[33]=d[13]~="lost soul missile state" and c or e
if ao()<d[10]then
_[6]=d[9]_[15]=0
_[10]=o
end
end
end
function bM(b,g,av)return g[20]and abs(((J(b,g)-b[3]+O)%360)-O)<av and au(b,g,1)end
function aM(C,D)bu=af and(af[9]-C[9])*n[6]/w(af,C)or 0
for a=1,n[12]do
b={}for a=1,33 do
b[a]=C[a]end
b[4]=n[8]b[10]=o
b[14]=C
bI=(ao()/U-1)*n[10]aH=Y(C[3]+bI,n[6])if n[7]>0 then
h[#h+1]=b
d=y[b[4]]b[6]=d[3]b[9]=C[9]+n[13]b[11]=aH[1]b[12]=aH[2]b[17]=ac
b[19]=bu
else
c=ae(C,aH)c[9]=e[9]+bu
aO,ay,c=au(C,c,3,D)if not aO then
bO=sub(c,Y(C[3]+bI,1))h[#h+1]=b
b[1]=bO[1]b[2]=bO[2]b[6]=y[b[4]][3]b[9]=c[3]b[19]=1
if r then
b=h[ay]az(b,n[9]*((ao()&3)+2),C)end
end
end
end
end
function bf(_,c)if c>-1 then
b=f[9][c]if b[1]>0 or V[31]*_[10][2]-V[32]*_[10][1]<0 then
g=Z[b[1]]ah[g and g[30]or#ah+1]={c,1,g or V}_[4]=b[7]b=b[8]>0 and bf(_,b[8])end
else
aW=o
aB=-c
m[10]=-c
end
end
function bK()bJ,af=2048
for a,_ in z(h)do
if a>1 and _ and bM(e,_,10)then
k=w(_,e)if k<bJ then
if y[_[4]][23]&2>0 then
af=_
bJ=k
end
end
end
end
end
function bi(_)if _[9]~=A[1]and not bC then
_[9]=A[1]_[10]=true
end
end
function onTick()ab(9,ag(32))ab(2,ag(11))ab(3,v)for j=1,3 do
if ag(32)and(not bH)or not f[21]then
aK=property.getText(aU)a=1
i=""
_=aS.sub(aK,a,a)while _~=""do
c=aS.byte(_)if c>64 then
i=(i..c-65)+0
if l==1 then
bB=i
f[i]=f[i]or{}elseif l==2 then
G=i
ad=0
elseif l==3 then
aQ=i
else
if ad==0 then
ad=G
aQ=aQ-1
aI={}f[bB][#f[bB]+1]=aI
end
aI[#aI+1]=i
ad=ad-1
l=N(ad,aQ)>0 and l-1 or 0
end
l=l+1
i=""
else
i=i.._
end
a=a+1
_=aS.sub(aK,a,a)end
aU=aU+1
bH=aK==""
end
end
if bH then
if aW then
ah,aW={}ai=1
for a=1,10 do
f[a]=f[a+10*aB]end
h=f[1]W=f[4]Z=f[8]R=f[10]aN,R[1]=R[1]x=f[12]y=f[15]for a=14,16 do
x[1][a]=0
end
aB=aB+1
for a=#h,1,-1 do
_=h[a]for j=7,32 do
_[j]=0
end
_[7]=y[_[4]][4]_[9],_[10]=aX(#f[7],_)[1]if _[5]&bk<1 then
aR(h,a)elseif _[4]==1 then
if e then
_[7]=e[7]_[8]=e[8]end
e=_
end
end
bm=aN[3]end
for a,_ in z(f[2])do
_[10]=sub(W[_[2]],W[_[1]])if _[3]&4>0 then
d,E=Z[f[3][_[6]][6]],Z[f[3][_[7]][6]]_[8]=N(d[1],E[1])_[9],d[30],E[30]=B(d[2],E[2])else
_[8],_[9]=0,0
end
end
m={}for a=1,32 do
m[a]=0
end
aJ=aJ+1
P=B(P+1/by,2/35)ab(1,P>=0)if P>=0 then
P=P-1/35
aG=aG+1
for a=2,#R do
R[a][0]={}end
for a,s in z(ah)do
_=f[9][s[1]]c=s[3]b=_[2]d=c[b]c[b]=F(_[3],d-_[4],d+_[4])+0
d=c[b]if d==_[3]then
ah[a]=s[2]==_[5]and{_[6],1,c}or{s[1],s[2]+1,c}if _[6]==0 then
aR(ah,a)end
end
c[10]=c[10]or d~=s
c[30]=a
end
for a,_ in z(h)do
if _ then
for j,s in z({1,2,9})do
_[s]=_[s]+_[s+10]end
_[15]=_[15]+1
d=y[_[4]]if _[7]<=0 and _[20]then
_[15]=0
_[6]=d[_[7]<=-d[4]and d[15]>1 and 15 or 14]_[10],_[20]=o
m[12]=d[16]if d[27]>0 then
c={}for j=1,30 do
c[j]=_[j]end
c[4]=d[27]c[6]=d[28]h[#h+1]=c
end
end
bb=f[16][_[6]]_[33]=_[33]and(_[33][20]and _[33]or e)if _[15]>=bb[2]and bb[2]~=-1 then
_[6]=bb[4]_[15]=0
X=f[16][_[6]][3]bC=d[23]&4>0
if X==1 then
for a,l in z(h)do
if l then
i=U-w(_,l)if i>0 then
az(l,i)end
end
end
elseif X==2 then
if bM(_,e,90)then
_[33]=e
_[6]=d[5]m[12]=d[6]end
al(_,v,a,8)bi(_)elseif X==3 then
av,r=bc(J(_,_[33])/45+.5)*45
l=1
while l<5 and not r do
i=ae(_,Y(av+f[19][2][l],8))i[9]=_[9]r=al(i,v,a,l)and(A[1]>=i[9]-24 or bC)l=l+1
end
if r then
for j=1,2 do
_[30+j]=i[j]-_[j]_[j]=i[j]end
_[3]=av
_[10]=o
else
al(_,v,a,8)end
bi(_)b=w(_,_[33])if d[13]>0 and au(_,_[33],1)and B(b,230)<ao()then
_[6]=d[13]end
if b<64 and d[12]>0 then
_[6]=d[12]end
elseif X==5 then
for a=1,11 do
e[3]=e[3]+f[19][9][a]n=f[14][23]bK()aM(e,1)end
e[3]=e[3]-20
elseif X>9 and _[20]then
_[3]=J(_,_[33])n=f[14][X]_[10]=o
af=_[33]aM(_,a)end
end
if _[17]and _[17]>0 then
n=f[14][_[17]]if not al(_,v,a)or _[9]<=A[1]then
if ba then
az(ba,d[21]*((ao()&7)+1),_[14])end
_[1]=_[1]-_[11]_[2]=_[2]-_[12]_[3]=0
_[6]=y[_[4]][5]_[10]=o
_[11]=0
_[12],_[17]=0
m[12]=d[16]_[19]=0
end
end
if _[6]==1 then
h[a]=v
else
ak=sub(_,aN)M=R[2+ak[1]//U+ak[2]//U*bm]if M then
M[0][#M[0]+1]=a
end
end
end
end
for a=1,8 do
if ag(a)and x[1][a+4]>0 then
ac=a
end
end
n=f[14][ac]e[3]=e[3]-aq(3)*(F(aC,5,6)*1.5-6)aC=abs(aq(3))*aC+1
S=e
for a=1,2 do
S=ae(S,Y(e[3]-O+90*a,aq(a)*8.33))end
S[9]=e[9]for a=1,8 do
r=al(S,o,1,a)end
if r then
for a=1,2 do
e[30+a]=S[a]-e[a]e[a]=S[a]end
if e[9]>A[1]then
e[19]=e[19]-1
else
e[9]=B(A[1],e[9]+4)e[19]=N(0,e[19])end
else
e[19]=0
e[9]=A[1]end
aF=x[1]c=n[1]if ag(31)and as<=0 and(c==0 or aF[c]>=n[2])then
ab(3,o)as=n[3]if c>0 then
aF[c]=aF[c]-n[2]end
bK()aM(e,1)end
as=as-1
if aq(4)<0 then
_=ae(e,Y(e[3],64))_[9]=e[9]aO,ay=au(e,_,2,1)_=f[2][ay]if aO==v then
m[2]=ay
c,r=_[4]for a=14,16 do
r=r or x[1][a]>0 and c==a
end
if c==1 or r then
bf(_,_[5])elseif c>3000 and c<3005 then
bk=bc(c-3000)end
end
end
end
m[1]=ac
for a=3,14 do
m[a]=e[f[19][4][a]]or m[a]end
x[1][17]=by
m[11]=x[1][aJ%#x[1]+1]a=ai
bD=o
K=1
at=#h+#Z
while K<3 and bD do
c=K*9+6
if a<=#h then
_=h[a]if a~=1 then
if _ then
if _[10]then
m[c],_[10]=a
for j=1,8 do
m[c+j]=_[f[19][1][j]]end
K=K+1
end
else
m[c]=-a
aR(h,a)K=K+1
at=at-1
end
end
else
_=Z[a-#h]if _[10]then
m[c],_[10]=a-#h+2^15
for j=1,6 do
m[c+j]=_[j]end
K=K+1
end
end
a=(a-2)%at+1
ai=B(ai,at)bD=a~=ai
end
ai=a
for a=1,32 do
output.setNumber(a,m[a])end
end
ar=ar+1
async.httpGet(8,"")end
