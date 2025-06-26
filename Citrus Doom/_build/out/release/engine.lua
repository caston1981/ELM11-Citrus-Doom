
X=128
ab=180
H=math
N=H.max
C=H.min
b_=H.floor
pi=H.pi/ab
ar=input.getNumber
ak=input.getBool
ag=output.setBool
n=true
A=false
x=ipairs
abs=H.abs
aI=table.remove
exp=table.unpack
bd=string
function af(b,h)return{(b[1]+h[1]),(b[2]+h[2])}end
function sub(b,h)return{(b[1]-h[1]),(b[2]-h[2])}end
function bQ(b)return H.sin(b*pi)end
function aL(b)return H.cos(b*pi)end
function J(b,h)return H.atan(h[2]-b[2],h[1]-b[1])/pi end
function G(b,h,aL)return N(C(aL,b),h)end
function w(b,h)return H.sqrt(((b[1]-h[1])^2)+((b[2]-h[2])^2))end
function O(b,h)return{aL(b)*h,bQ(b)*h}end
f={}aK=1
ap=3
aP=n
ao=2
ax=0
az=0
aA=0
aY=0
Y=0
aO=0
k=1
aW=0
bk=2
function aV(a,b,_)if a<2^15 then
_=f[7][a]return aV(_[_[3]*(b[2]-_[2])-_[4]*(b[1]-_[1])>0 and 8 or 7],b)else
a=f[5][f[6][a-2^15][2]]return S[f[3][f[2][a[4]][a[5]+6]][6]]end
end
function al(u,bP,z,bs,_)M=g[z]d=D[M[4]]aq,Z=d[18],d[19]I,aX=aq
y=aV(#f[7],u)ai,aa=exp(y)am=sub(u,aC)L=R[2+am[1]//X+am[2]//X*bF]or{}for a,_ in x(L[0]or{})do
c=g[_]if _~=z and c and M[14]~=c then
l=w(c,u)F=D[c[4]]if c[20]then
V=l-F[18]if V<I and F[23]&1>0 and(d[23]&1>0 or G(u[9],c[9]-Z,c[9]+F[19])==u[9])then
aX=c
I=V
aM=J(u,c)end
end
if z<2 and l<50 then
b=F[25]if b>0 then
for q,t in x(r[b])do
if t>0 and r[1][q]<r[2][q]then
c=r
g[_]=A
c[1][q]=b_(C(c[1][q]+t,c[2][q]))if G(q,5,12)==q then
ao=q-4
end
end
end
end
b=F[29]if b>0 then
b=f[11][b]for q=7,8 do
e[q]=G(e[q]+b[q*2-13],e[q],b[q*2-12])end
g[_]=A
end
end
end
end
_=bs<8
if aa-ai<Z then
p=_ or aA%4>0 or y[6]<18 or ad(M,10)return
end
p=_ or aA%32>0 or y[6]~=5 or r[1][18]>0 or ad(M,10)for a=1,#L do
_=f[2][L[a]]l,bL=bM(u,Q[_[1]],Q[_[2]])if l<I then
if _[3]&1>0 and d[23]&1>0 or _[3]&4<1 then
if z>1 or ba>0 or _[3]&4>0 then
I=l
aM=bL
end
else
aG,aQ=C(_[9],aa),N(_[8],ai)if C(u[9],aa-Z)+24<aQ or N(u[9],ai)+Z>aG or aG-aQ<Z then
I=l
aM=bL
else
if bs<2 and(_[3]&512>0 or z<2)and(_[4]==2 or z>1)then
aZ(_,_[5])end
aa,ai=aG,aQ
end
end
end
end
y={ai,aa}if bP then
if I~=aq then
_=af(u,O(aM,I-aq))u[1]=_[1]u[2]=_[2]end
return n
end
return I==aq
end
function bM(s,v,aw)U=w(v,s)bt=J(v,aw)+90
bO=bt-J(s,v)ba,by=exp(O(-bO,U))aF=bt
if ba<0 then
aF=aF+ab
end
if by<0 then
return U,J(s,v)elseif by>w(aw,v)then
return w(aw,s),J(s,aw)else
return abs(ba),aF
end
end
function av(s,v,aH,z)bg=w(s,v)aB=bg
aR,p=n
V,aE=exp(s)bR,bN=exp(v)bf,aU=exp(sub(v,s))au,bl=s[9]+32,v[9]+32
for a,_ in x(f[2])do
bD=Q[_[1]]bw,bo=exp(sub(Q[_[2]],bD))bz,br=exp(sub(s,bD))bi=bo*bf-bw*aU
T=(bw*br-bo*bz)/bi
bp=(bf*br-aU*bz)/bi
if G(T,0,1)==T and G(bp,0,1)==bp then
bm={V+(T*bf),aE+(T*aU)}l=w(s,bm)E=au+(bl-au)*(l/bg)if G(E,_[8]+1,_[9])~=E then
aR=A
if aH==1 then
return
end
if l<aB then
aB=l
bE,bn=exp(bm)bC=E
bq=a
end
end
end
end
if aH>1 then
if aH>2 then
for a,_ in x(g)do
if _ and a~=z then
d=D[_[4]]if d[23]&1>0 and _[20]then
l=w(s,_)if l<aB then
T=bM(_,s,v)U=(l/bg)E=au+(bl-au)*U
if G(E,_[9],_[9]+d[19])==E and T<d[18]then
aB=l
p,aR=n
bE=V+(bR-V)*U
bn=aE+(bN-aE)*U
bC=E
bq=a
end
end
end
end
end
end
return aR,bq,{bE,bn,bC}end
return n
end
function httpReply()bA=az//2
az=0
end
function aj()aO=aO%256+1
return f[13][1][aO]end
function ad(_,a,c)d=D[_[4]]if d[23]&2>0 and _[7]>0 then
_[8]=_[8]-(a+1)//2
_[7]=_[7]-a//2+C(_[8],0)_[8]=N(_[8],0)_[33]=d[13]~="lost soul missile state" and c or e
if aj()<d[10]then
_[6]=d[9]_[15]=0
_[10]=n
end
end
end
function bj(b,h,ay)return h[20]and abs(((J(b,h)-b[3]+ab)%360)-ab)<ay and av(b,h,1)end
function bb(B,z)bx=ae and(ae[9]-B[9])*o[6]/w(ae,B)or 0
for a=1,o[12]do
b={}for a=1,33 do
b[a]=B[a]end
b[4]=o[8]b[10]=n
b[14]=B
bv=(aj()/X-1)*o[10]bc=O(B[3]+bv,o[6])if o[7]>0 then
g[#g+1]=b
d=D[b[4]]b[6]=d[3]b[9]=B[9]+o[13]b[11]=bc[1]b[12]=bc[2]b[17]=ao
b[19]=bx
else
c=af(B,bc)c[9]=e[9]+bx
aT,at,c=av(B,c,3,z)if not aT then
bI=sub(c,O(B[3]+bv,1))g[#g+1]=b
b[1]=bI[1]b[2]=bI[2]b[6]=D[b[4]][3]b[9]=c[3]b[19]=1
if p then
b=g[at]ad(b,o[9]*((aj()&3)+2),B)end
end
end
end
end
function aZ(_,c)if c>-1 then
b=f[9][c]if b[1]>0 or M[31]*_[10][2]-M[32]*_[10][1]<0 then
h=S[b[1]]an[h and h[30]or#an+1]={c,1,h or M}_[4]=b[7]b=b[8]>0 and aZ(_,b[8])end
else
aP=n
ap=-c
m[10]=-c
end
end
function bK()bG,ae=2048
for a,_ in x(g)do
if a>1 and _ and bj(e,_,10)then
l=w(_,e)if l<bG then
if D[_[4]][23]&2>0 then
ae=_
bG=l
end
end
end
end
end
function bh(_)if _[9]~=y[1]and not bB then
_[9]=y[1]_[10]=true
end
end
function onTick()ag(9,ak(32))ag(2,ak(11))ag(3,A)for i=1,3 do
if ak(32)and(not bH)or not f[21]then
be=property.getText(aK)a=1
j=""
_=bd.sub(be,a,a)while _~=""do
c=bd.byte(_)if c>64 then
j=(j..c-65)+0
if k==1 then
bu=j
f[j]=f[j]or{}elseif k==2 then
E=j
ac=0
elseif k==3 then
aN=j
else
if ac==0 then
ac=E
aN=aN-1
aS={}f[bu][#f[bu]+1]=aS
end
aS[#aS+1]=j
ac=ac-1
k=N(ac,aN)>0 and k-1 or 0
end
k=k+1
j=""
else
j=j.._
end
a=a+1
_=bd.sub(be,a,a)end
aK=aK+1
bH=be==""
end
end
if bH then
if aP then
an,aP={}ah=1
for a=1,10 do
f[a]=f[a+10*ap]end
g=f[1]Q=f[4]S=f[8]R=f[10]aC,R[1]=R[1]r=f[12]D=f[15]for a=14,16 do
r[1][a]=0
end
ap=ap+1
for a=#g,1,-1 do
_=g[a]for i=7,32 do
_[i]=0
end
_[7]=D[_[4]][4]_[9],_[10]=aV(#f[7],_)[1]if _[5]&bk<1 then
aI(g,a)elseif _[4]==1 then
if e then
_[7]=e[7]_[8]=e[8]end
e=_
end
end
bF=aC[3]end
for a,_ in x(f[2])do
_[10]=sub(Q[_[2]],Q[_[1]])if _[3]&4>0 then
d,F=S[f[3][_[6]][6]],S[f[3][_[7]][6]]_[8]=N(d[1],F[1])_[9],d[30],F[30]=C(d[2],F[2])else
_[8],_[9]=0,0
end
end
m={}for a=1,32 do
m[a]=0
end
aY=aY+1
Y=C(Y+1/bA,2/35)ag(1,Y>=0)if Y>=0 then
Y=Y-1/35
aA=aA+1
for a=2,#R do
R[a][0]={}end
for a,t in x(an)do
_=f[9][t[1]]c=t[3]b=_[2]d=c[b]c[b]=G(_[3],d-_[4],d+_[4])+0
d=c[b]if d==_[3]then
an[a]=t[2]==_[5]and{_[6],1,c}or{t[1],t[2]+1,c}if _[6]==0 then
aI(an,a)end
end
c[10]=c[10]or d~=t
c[30]=a
end
for a,_ in x(g)do
if _ then
am=sub(_,aC)L=R[2+am[1]//X+am[2]//X*bF]if L then
L[0][#L[0]+1]=a
end
end
end
for a,_ in x(g)do
if _ then
for i,t in x({1,2,9})do
_[t]=_[t]+_[t+10]end
_[15]=_[15]+1
d=D[_[4]]if _[7]<=0 and _[20]then
_[15]=0
_[6]=d[_[7]<=-d[4]and d[15]>1 and 15 or 14]_[10],_[20]=n
m[12]=d[16]if d[27]>0 then
c={}for i=1,30 do
c[i]=_[i]end
c[4]=d[27]c[6]=d[28]g[#g+1]=c
end
end
aJ=f[16][_[6]]_[33]=_[33]and(_[33][20]and _[33]or e)if _[15]>=aJ[2]and aJ[2]~=-1 then
_[6]=aJ[4]_[15]=0
W=f[16][_[6]][3]bB=d[23]&4>0
if W==1 then
for i,k in x(g)do
if k then
j=X-w(_,k)if j>0 then
ad(k,j)end
end
end
elseif W==2 then
if bj(_,e,90)then
_[33]=e
_[6]=d[5]m[12]=d[6]end
al(_,A,a,8)bh(_)elseif W==3 then
ay,p=b_(J(_,_[33])/45+.5)*45
k=1
while k<5 and not p do
j=af(_,O(ay+f[19][2][k],8))j[9]=_[9]p=al(j,A,a,k)and(y[1]>=j[9]-24 or bB)k=k+1
end
if p then
for i=1,2 do
_[30+i]=j[i]-_[i]_[i]=j[i]end
_[3]=ay
_[10]=n
else
al(_,A,a,8)end
bh(_)b=w(_,_[33])if d[13]>0 and av(_,_[33],1)and C(b,230)<aj()then
_[6]=d[13]end
if b<64 and d[12]>0 then
_[6]=d[12]end
elseif W==5 then
for i=1,11 do
e[3]=e[3]+f[19][9][i]o=f[14][23]bK()bb(e,1)end
e[3]=e[3]-20
elseif W>9 and _[20]then
_[3]=J(_,_[33])o=f[14][W]_[10]=n
ae=_[33]bb(_,a)end
end
if _[17]and _[17]>0 then
o=f[14][_[17]]if not al(_,A,a,2)or _[9]<=y[1]then
if aX then
ad(aX,d[21]*((aj()&7)+1),_[14])end
_[1]=_[1]-_[11]_[2]=_[2]-_[12]_[3]=0
_[6]=D[_[4]][5]_[10]=n
_[11]=0
_[12],_[17]=0
m[12]=d[16]_[19]=0
end
end
if _[6]==1 then
g[a]=A
end
end
end
for a=1,8 do
if ak(a)and r[1][a+4]>0 then
ao=a
end
end
o=f[14][ao]r[1][18]=r[1][18]-1
e[3]=e[3]-ar(3)*(G(aW,5,6)*1.5-6)aW=abs(ar(3))*aW+1
P=e
for a=1,2 do
P=af(P,O(e[3]-ab+90*a,ar(a)*8.33))end
P[9]=e[9]for a=1,8 do
p=al(P,n,1,a)end
if p then
for a=1,2 do
e[30+a]=P[a]-e[a]e[a]=P[a]end
if e[9]>y[1]then
e[19]=e[19]-1
else
e[9]=C(y[1],e[9]+4)e[19]=N(0,e[19])end
else
e[19]=0
e[9]=y[1]end
aD=r[1]c=o[1]if ak(31)and ax<=0 and aD[c]>=o[2]then
ag(3,n)ax=o[3]if c>0 then
aD[c]=aD[c]-o[2]end
bK()bb(e,1)end
ax=ax-1
if ar(4)<0 then
_=af(e,O(e[3],64))_[9]=e[9]aT,at=av(e,_,2,1)_=f[2][at]if aT==A then
m[2]=at
c,p=_[4]for a=14,16 do
p=p or r[1][a]>0 and c==a
end
if c==1 or p then
aZ(_,_[5])elseif c>3000 and c<3005 then
bk=b_(c-3000)end
end
end
end
m[1]=ao
for a=3,14 do
m[a]=e[f[19][4][a]]or m[a]end
r[1][17]=bA
m[11]=r[1][aY%#r[1]+1]a=ah
bJ=n
K=1
as=#g+#S
while K<3 and bJ do
c=K*9+6
if a<=#f[1]then
_=g[a]if _ then
if _[10]and a>1 then
m[c],_[10]=a
for i=1,8 do
m[c+i]=_[f[19][1][i]]end
K=K+1
end
else
m[c]=-a
aI(g,a)K=K+1
as=as-1
end
else
_=S[a-#g]if _[10]then
m[c],_[10]=a-#g+2^15
for i=1,6 do
m[c+i]=_[i]end
K=K+1
end
end
a=(a-2)%as+1
ah=C(ah,as)bJ=a~=ah
end
ah=a
for a=1,32 do
output.setNumber(a,m[a])end
end
az=az+1
async.httpGet(8,"")end
