
T=128
an=180
E=math
L=E.max
B=E.min
aW=E.floor
pi=E.pi/an
ax=input.getNumber
ac=input.getBool
ah=output.setBool
o=true
x=false
A=ipairs
abs=E.abs
aM=table.remove
aD=string
function ag(b,g)return{(b[1]+g[1]),(b[2]+g[2])}end
function sub(b,g)return{(b[1]-g[1]),(b[2]-g[2])}end
function bp(b)return E.sin(b*pi)end
function aj(b)return E.cos(b*pi)end
function I(b,g)return E.atan(g[2]-b[2],g[1]-b[1])/pi end
function H(b,g,aj)return L(B(aj,b),g)end
function v(b,g)return E.sqrt(((b[1]-g[1])^2)+((b[2]-g[2])^2))end
function P(b,g)return{aj(b)*g,bp(b)*g}end
function exp(b)return b[1],b[2]end
f={}b_=1
az=3
bf=o
ab=2
as=0
av=0
aS=0
aJ=0
W=0
bc=0
k=1
aK=0
br=2
function bd(a,b,_)if a<2^15 then
_=f[7][a]return bd(_[_[3]*(b[2]-_[2])-_[4]*(b[1]-_[1])>0 and 8 or 7],b)else
a=f[5][f[6][a-32768][2]]return R[f[3][f[2][a[4]][a[5]+6]][6]]end
end
function af(t,bB,z,bm,_)Y=h[z]d=y[Y[4]]aw,ao=d[18],d[19]J=aw
C=bd(#f[7],t)al,ae=exp(C)Z=sub(t,aQ)N=S[2+Z[1]//T+Z[2]//T*bs]or{}for a,_ in A(N[0]or{})do
c=h[_]if _~=z and c and Y[14]~=c then
l=v(c,t)G=y[c[4]]if c[20]then
V=l-G[18]if V<J and G[23]&1>0 and(d[23]&1>0 or H(t[9],c[9]-ao,c[9]+G[19])==t[9])then
aN=c
if bB==x then
return
end
J=V
aO=I(t,c)end
end
if z==1 and l<50 then
b=G[25]if b>0 then
for q,s in A(w[b])do
if s>0 and w[1][q]<w[2][q]then
c=w
h[_]=x
c[1][q]=aW(B(c[1][q]+s,c[2][q]))if H(q,5,12)==q then
ab=q-4
end
end
end
end
b=G[29]if b>0 then
b=f[11][b]for q=7,8 do
e[q]=H(e[q]+b[q*2-13],e[q],b[q*2-12])end
h[_]=x
end
end
end
end
if ae-al<ao then
r=(bm or 1)<8 or aS%4>0 or C[6]<18 or aq(Y,10)return
end
for a=1,#N do
_=f[2][N[a]]l,bj=bq(t,Q[_[1]],Q[_[2]])if l<J then
if _[3]&1>0 and d[23]&1>0 or _[3]&4==0 then
if z>1 or aX>0 or _[3]&4>0 then
J=l
aO=bj
end
else
aT,aY=B(_[9],ae),L(_[8],al)if B(t[9],ae-ao)+24<aY or L(t[9],al)+ao>aT or aT-aY<ao then
J=l
aO=bj
else
if bm==1 and(_[3]&512>0 or z==1)and(_[4]==2 or z>1)then
aL(_,_[5])end
ae,al=aT,aY
end
end
end
end
C,aN={al,ae}if bB then
if J~=aw then
_=ag(t,P(aO,J-aw))t[1]=_[1]t[2]=_[2]end
return o
end
return J==aw
end
function bq(p,u,au)M=v(u,p)by=I(u,au)+90
bE=by-I(p,u)bM=-M*bp(bE)aX=M*aj(bE)aV=by
if aX<0 then
aV=aV+an
end
if bM<0 then
return M,I(p,u)elseif bM>v(au,u)then
return v(au,p),I(p,au)else
return abs(aX),aV
end
end
function at(p,u,aZ,z,_)bb=v(p,u)aB=bb
bg,r=o
V,ba=exp(p)bQ,bR=exp(u)aC,aU=exp(sub(u,p))ap,bu=p[9]+32,u[9]+32
for a,_ in A(f[2])do
bl=Q[_[1]]bo,bF=exp(sub(Q[_[2]],bl))bI,bP=exp(sub(p,bl))bv=bF*aC-bo*aU
O=(bo*bP-bF*bI)/bv
bw=(aC*bP-aU*bI)/bv
if H(O,0,1)==O and H(bw,0,1)==bw then
bn={V+(O*aC),ba+(O*aU)}l=v(p,bn)F=ap+(bu-ap)*(l/bb)if H(F,_[8]+1,_[9])~=F then
bg=x
if aZ==1 then
return
end
if l<aB then
aB=l
bD,bt=exp(bn)bx=F
bH=a
end
end
end
end
if aZ>1 then
if aZ==3 then
for a,_ in A(h)do
if _ and a~=z then
d=y[_[4]]if d[23]&1>0 and _[20]then
l=v(p,_)if l<aB then
O=bq(_,p,u)M=(l/bb)F=ap+(bu-ap)*M
if H(F,_[9],_[9]+d[19])==F and O<d[18]then
aB=l
r,bg=o
bD=V+(bQ-V)*M
bt=ba+(bR-ba)*M
bx=F
bH=a
end
end
end
end
end
end
return bg,bH,{bD,bt,bx}end
return o
end
function httpReply(b,g,aj)bC=av//2
av=0
end
function ak()bc=bc%256+1
return f[13][1][bc]end
function aq(_,a,c)d=y[_[4]]if d[23]&2>0 and _[7]>0 then
_[8]=_[8]-(a+1)//2
_[7]=_[7]-a//2+B(_[8],0)_[8]=L(_[8],0)_[33]=d[13]~="lost soul missile state" and c or e
if ak()<d[10]then
_[6]=d[9]_[15]=0
_[10]=o
end
end
end
function bJ(b,g,aA)return g[20]and abs(((I(b,g)-b[3]+an)%360)-an)<aA and at(b,g,1)end
function aG(D,z)bk=ad and(ad[9]-D[9])*n[6]/v(ad,D)or 0
for a=1,n[12]do
b={}for a=1,33 do
b[a]=D[a]end
b[4]=n[8]b[10]=o
b[14]=D
bG=(ak()/T-1)*n[10]aE=P(D[3]+bG,n[6])if n[7]>0 then
h[#h+1]=b
d=y[b[4]]b[6]=d[3]b[9]=D[9]+n[13]b[11]=aE[1]b[12]=aE[2]b[17]=ab
b[19]=bk
else
c=ag(D,aE)c[9]=e[9]+bk
aR,ay,c=at(D,c,3,z)if not aR then
bh=sub(c,P(D[3]+bG,1))h[#h+1]=b
b[1]=bh[1]b[2]=bh[2]b[6]=y[b[4]][3]b[9]=c[3]b[19]=1
if r then
b=h[ay]aq(b,n[9]*((ak()&3)+2),D)end
end
end
end
end
function aL(_,c)if c>-1 then
b=f[9][c]if b[1]>0 or Y[31]*_[10][2]-Y[32]*_[10][1]<0 then
g=R[b[1]]ai[g and g[30]or#ai+1]={c,1,g or Y}_[4]=b[7]b=b[8]>0 and aL(_,b[8])end
else
bf=o
az=-c
m[10]=-c
end
end
function bi()bL,ad=2048
for a,_ in A(h)do
if a>1 and _ and bJ(e,_,10)then
l=v(_,e)if l<bL then
if y[_[4]][23]&2>0 then
ad=_
bL=l
end
end
end
end
end
function bK(_)if _[9]~=C[1]and not bO then
_[9]=C[1]_[10]=true
end
end
function onTick()ah(9,ac(32))ah(2,ac(11))ah(3,x)for j=1,3 do
if ac(32)and(not bN)or not f[21]then
aI=property.getText(b_)a=1
i=""
_=aD.sub(aI,a,a)while _~=""do
c=aD.byte(_)if c>64 then
i=(i..c-65)+0
if k==1 then
bz=i
f[i]=f[i]or{}elseif k==2 then
F=i
aa=0
elseif k==3 then
aP=i
else
if aa==0 then
aa=F
aP=aP-1
aH={}f[bz][#f[bz]+1]=aH
end
aH[#aH+1]=i
aa=aa-1
k=L(aa,aP)>0 and k-1 or 0
end
k=k+1
i=""
else
i=i.._
end
a=a+1
_=aD.sub(aI,a,a)end
b_=b_+1
bN=aI==""
end
end
if bN then
if bf then
ai,bf={}am=1
for a=1,10 do
f[a]=f[a+10*az]end
h=f[1]Q=f[4]R=f[8]S=f[10]aQ,S[1]=S[1]w=f[12]y=f[15]for a=14,16 do
w[1][a]=0
end
az=az+1
for a=#h,1,-1 do
_=h[a]for j=7,32 do
_[j]=0
end
_[7]=y[_[4]][4]_[9],_[10]=bd(#f[7],_)[1]if _[5]&br<1 then
aM(h,a)elseif _[4]==1 then
if e then
_[7]=e[7]_[8]=e[8]end
e=_
end
end
bs=aQ[3]end
for a,_ in A(f[2])do
_[10]=sub(Q[_[2]],Q[_[1]])if _[3]&4>0 then
d,G=R[f[3][_[6]][6]],R[f[3][_[7]][6]]_[8]=L(d[1],G[1])_[9],d[30],G[30]=B(d[2],G[2])else
_[8],_[9]=0,0
end
end
m={}for a=1,32 do
m[a]=0
end
aJ=aJ+1
W=B(W+1/bC,2/35)ah(1,W>=0)if W>=0 then
W=W-1/35
aS=aS+1
for a=2,#S do
S[a][0]={}end
for a,s in A(ai)do
_=f[9][s[1]]c=s[3]b=_[2]d=c[b]c[b]=H(_[3],d-_[4],d+_[4])+0
d=c[b]if d==_[3]then
ai[a]=s[2]==_[5]and{_[6],1,c}or{s[1],s[2]+1,c}if _[6]==0 then
aM(ai,a)end
end
c[10]=c[10]or d~=s
c[30]=a
end
for a,_ in A(h)do
if _ then
for j,s in A({1,2,9})do
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
be=f[16][_[6]]_[33]=_[33]and(_[33][20]and _[33]or e)if _[15]>=be[2]and be[2]~=-1 then
_[6]=be[4]_[15]=0
U=f[16][_[6]][3]bO=d[23]&4>0
if U==1 then
for a,k in A(h)do
if k then
i=T-v(_,k)if i>0 then
aq(k,i)end
end
end
elseif U==2 then
if bJ(_,e,90)then
_[33]=e
_[6]=d[5]m[12]=d[6]end
af(_,x,a,8)bK(_)elseif U==3 then
aA,r=aW(I(_,_[33])/45+.5)*45
k=1
while k<5 and not r do
i=ag(_,P(aA+f[19][2][k],8))i[9]=_[9]r=af(i,x,a,k)and(C[1]>=i[9]-24 or bO)k=k+1
end
if r then
for j=1,2 do
_[30+j]=i[j]-_[j]_[j]=i[j]end
_[3]=aA
_[10]=o
else
af(_,x,a,8)end
bK(_)b=v(_,_[33])if d[13]>0 and at(_,_[33],1)and B(b,230)<ak()then
_[6]=d[13]end
if b<64 and d[12]>0 then
_[6]=d[12]end
elseif U==5 then
for a=1,11 do
e[3]=e[3]+f[19][9][a]n=f[14][23]bi()aG(e,1)end
e[3]=e[3]-20
elseif U>9 and _[20]then
_[3]=I(_,_[33])n=f[14][U]_[10]=o
ad=_[33]aG(_,a)end
end
if _[17]and _[17]>0 then
n=f[14][_[17]]if not af(_,x,a)or _[9]<=C[1]then
if aN then
aq(aN,d[21]*((ak()&7)+1),_[14])end
_[1]=_[1]-_[11]_[2]=_[2]-_[12]_[3]=0
_[6]=y[_[4]][5]_[10]=o
_[11]=0
_[12],_[17]=0
m[12]=d[16]_[19]=0
end
end
if _[6]==1 then
h[a]=x
else
Z=sub(_,aQ)N=S[2+Z[1]//T+Z[2]//T*bs]if N then
N[0][#N[0]+1]=a
end
end
end
end
for a=1,8 do
if ac(a)and w[1][a+4]>0 then
ab=a
end
end
n=f[14][ab]e[3]=e[3]-ax(3)*(H(aK,5,6)*1.5-6)aK=abs(ax(3))*aK+1
X=e
for a=1,2 do
X=ag(X,P(e[3]-an+90*a,ax(a)*8.33))end
X[9]=e[9]for a=1,8 do
r=af(X,o,1,a)end
if r then
for a=1,2 do
e[30+a]=X[a]-e[a]e[a]=X[a]end
if e[9]>C[1]then
e[19]=e[19]-1
else
e[9]=B(C[1],e[9]+4)e[19]=L(0,e[19])end
else
e[19]=0
e[9]=C[1]end
aF=w[1]c=n[1]if ac(31)and as<=0 and(c==0 or aF[c]>=n[2])then
ah(3,o)as=n[3]if c>0 then
aF[c]=aF[c]-n[2]end
bi()aG(e,1)end
as=as-1
if ax(4)<0 then
_=ag(e,P(e[3],64))_[9]=e[9]aR,ay=at(e,_,2,1)_=f[2][ay]if aR==x then
m[2]=ay
c,r=_[4]for a=14,16 do
r=r or w[1][a]>0 and c==a
end
if c==1 or r then
aL(_,_[5])elseif c>3000 and c<3005 then
br=aW(c-3000)end
end
end
end
m[1]=ab
for a=3,14 do
m[a]=e[f[19][4][a]]or m[a]end
w[1][17]=bC
m[11]=w[1][aJ%#w[1]+1]a=am
bA=o
K=1
ar=#h+#R
while K<3 and bA do
c=K*9+6
if a<=#f[1]then
_=h[a]if _ then
if _[10]and a>1 then
m[c],_[10]=a
for j=1,8 do
m[c+j]=_[f[19][1][j]]end
K=K+1
end
else
m[c]=-a
aM(h,a)K=K+1
ar=ar-1
end
else
_=R[a-#h]if _[10]then
m[c],_[10]=a-#h+2^15
for j=1,6 do
m[c+j]=_[j]end
K=K+1
end
end
a=(a-2)%ar+1
am=B(am,ar)bA=a~=am
end
am=a
for a=1,32 do
output.setNumber(a,m[a])end
end
av=av+1
async.httpGet(8,"")end
