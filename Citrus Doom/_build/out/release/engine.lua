
Q=128
L=180
E=math
N=E.max
A=E.min
bd=E.floor
pi=E.pi
ar=input.getNumber
aj=input.getBool
ag=output.setBool
n=true
i=false
z=ipairs
abs=E.abs
bb=table.remove
aZ=string
function ac(b,h)return{(b[1]+h[1]),(b[2]+h[2])}end
function sub(b,h)return{(b[1]-h[1]),(b[2]-h[2])}end
function bD(b)return E.sin(b/L*pi)end
function ad(b)return E.cos(b/L*pi)end
function K(b,h)return E.atan(h[2]-b[2],h[1]-b[1])*L/pi end
function H(b,h,ad)return N(A(ad,b),h)end
function x(b,h)return E.sqrt(((b[1]-h[1])^2)+((b[2]-h[2])^2))end
function P(b,h)return{ad(b)*h,bD(b)*h}end
function exp(b)return b[1],b[2]end
e={}bf=1
ax=3
aM=i
aP=n
an=2
ap=0
aB=0
aW=0
aK=0
Z=0
aO=0
m=1
b_=0
bt=2
function aG(a,b,_)if a<2^15 then
_=e[7][a]return aG(_[_[3]*(b[2]-_[2])-_[4]*(b[1]-_[1])>0 and 8 or 7],b)else
a=e[5][e[6][a-32768][2]]return R[e[3][e[2][a[4]][a[5]+6]][6]]end
end
function ak(r,bH,v,bP,_)X=g[v]f=C[X[4]]az,al=f[18],f[19]J=az
B=aG(#e[7],r)T,ao=exp(B)af=sub(r,aV)M=aa[2+af[1]//Q+af[2]//Q*bk]or{}for a,_ in z(M[0]or{})do
c=g[_]if _~=v and c and X[14]~=_ then
l=x(c,r)F=C[c[4]]if c[20]then
Y=l-F[18]if Y<J and F[23]&1>0 and(f[23]&1>0 or H(r[9],c[9]-al,c[9]+F[19])==r[9])then
aX=c
if bH==i then
return i
end
J=Y
aH=K(r,c)end
end
if v==1 then
if l<50 then
b=F[25]if b>0 then
for q,t in z(w[b])do
if t>0 and w[1][q]<w[2][q]then
c=w
g[_]=i
c[1][q]=bd(A(c[1][q]+t,c[2][q]))if H(q,5,12)==q then
an=q-4
end
end
end
end
b=F[29]if b>0 then
b=e[11][b]for q=7,8 do
d[q]=H(d[q]+b[q*2-13],d[q],b[q*2-12])end
g[_]=i
end
end
end
end
end
if ao-T<al or T>r[9]+24 then
u=(bP or 1)<8 or aW%4>0 or B[6]<18 or aA(X,10)return i
end
for a=1,#M do
_=e[2][M[a]]l,bu=bo(r,W[_[1]],W[_[2]])if l<J then
if(_[3]&1>0 and f[23]&1>0)or _[3]&4==0 then
if v>1 or aI>0 or _[3]&4>0 then
J=l
aH=bu
end
else
aN,aU=A(_[9],ao),N(_[8],T)if A(r[9],ao-al)+24<aU or N(r[9],T)+al>aN or aN-aU<al then
J=l
aH=bu
else
if bP==1 and(_[3]&512>0 or v==1)and(_[4]==2 or v>1)then
aY(_,_[5])end
ao,T=aN,aU
end
end
end
end
B,aX={T,ao}if bH then
if J~=az then
_=ac(r,P(aH,J-az))r[1]=_[1]r[2]=_[2]end
return n
end
return J==az
end
function bo(p,y,as)O=x(y,p)br=K(y,as)+90
bE=br-K(p,y)bA=-O*bD(bE)aI=O*ad(bE)aE=br
if aI<0 then
aE=aE+L
end
if bA<0 then
return O,K(p,y)elseif bA>x(as,y)then
return x(as,p),K(p,as)else
return abs(aI),aE
end
end
function av(p,y,aD,v,_)be=x(p,y)at=be
aS=n
Y,aF=exp(p)bR,bQ=exp(y)bh,aT=exp(sub(y,p))au,bx=p[9]+32,y[9]+32
u=i
for a,_ in z(e[2])do
bq=W[_[1]]bC,bs=exp(sub(W[_[2]],bq))bv,bM=exp(sub(p,bq))bj=bs*bh-bC*aT
V=(bC*bM-bs*bv)/bj
bm=(bh*bM-aT*bv)/bj
if H(V,0,1)==V and H(bm,0,1)==bm then
bp={Y+(V*bh),aF+(V*aT)}l=x(p,bp)D=au+(bx-au)*(l/be)if H(D,_[8]+1,_[9])~=D then
aS=i
if aD==1 then
return i
end
if l<at then
at=l
bG,bN=exp(bp)bz=D
bl=a
end
end
end
end
if aD>1 then
if aD==3 then
for a,_ in z(g)do
if _ and a~=v then
f=C[_[4]]if f[23]&1>0 and _[20]then
l=x(p,_)if l<at then
V=bo(_,p,y)O=(l/be)D=au+(bx-au)*O
if H(D,_[9],_[9]+f[19])==D and V<f[18]then
at=l
u=n
aS=i
bG=Y+(bR-Y)*O
bN=aF+(bQ-aF)*O
bz=D
bl=a
end
end
end
end
end
end
return aS,bl,{bG,bN,bz}end
return n
end
function httpReply(b,h,ad)bO=aB//2
aB=0
end
function ab()aO=aO%256+1
return e[13][1][aO]end
function aA(_,a,c)f=C[_[4]]if f[23]&2>0 and _[7]>0 then
_[8]=_[8]-(a+1)//2
_[7]=_[7]-a//2+A(_[8],0)_[8]=N(_[8],0)if ab()<f[10]then
_[6]=f[9]_[15]=0
_[23]=c or d
_[10]=n
end
end
end
function by(b,h,aq)return h[20]and abs(((K(b,h)-b[3]+L)%360)-L)<aq and av(b,h,1)end
function aL(G,v)bi=am and(am[9]-G[9])*o[6]/x(am,G)or 0
for a=1,o[12]do
b={}for a=1,30 do
b[a]=G[a]end
b[4]=o[8]b[10]=n
b[14]=v
bB=(ab()/Q-1)*o[10]bg=P(G[3]+bB,o[6])if o[7]>0 then
g[#g+1]=b
f=C[b[4]]b[6]=f[3]b[9]=G[9]+o[13]b[11]=bg[1]b[12]=bg[2]b[17]=an
b[19]=bi
else
c=ac(G,bg)c[9]=d[9]+bi
aC,ay,c=av(G,c,3,v)if not aC then
bF=sub(c,P(G[3]+bB,1))g[#g+1]=b
b[1]=bF[1]b[2]=bF[2]b[6]=C[b[4]][3]b[9]=c[3]b[19]=1
if u then
b=g[ay]aA(b,o[9]*((ab()&3)+2),G)end
end
end
end
end
function aY(_,c)if c>-1 then
b=e[9][c]if b[1]>0 or X[31]*_[10][2]-X[32]*_[10][1]<0 then
h=R[b[1]]ae[h and h[30]or#ae+1]={c,1,h or X}_[4]=b[7]b=b[8]>0 and aY(_,b[8])end
else
aP=n
ax=-c
s[9]=-c
end
end
function bK()bI,am=2048
for a,_ in z(g)do
if a>1 and _ and by(d,_,10)then
l=x(_,d)if l<bI then
if C[_[4]][23]&2>0 then
am=_
bI=l
end
end
end
end
end
function bw(_)if _[9]~=B[1]and not bL then
_[9]=B[1]_[10]=true
end
end
function onTick()ag(9,aj(32))ag(2,aj(11))ag(3,i)for k=1,3 do
if aj(32)and(not aM)or not e[21]then
aJ=property.getText(bf)a=1
j=""
_=aZ.sub(aJ,a,a)while _~=""do
c=aZ.byte(_)if c>64 then
j=(j..c-65)+0
if m==1 then
bJ=j
e[j]=e[j]or{}elseif m==2 then
D=j
ah=0
elseif m==3 then
aQ=j
else
if ah==0 then
ah=D
aQ=aQ-1
ba={}e[bJ][#e[bJ]+1]=ba
end
ba[#ba+1]=j
ah=ah-1
m=N(ah,aQ)>0 and m-1 or 0
end
m=m+1
j=""
else
j=j.._
end
a=a+1
_=aZ.sub(aJ,a,a)end
bf=bf+1
aM=aJ==""
end
end
if aM then
if aP then
ae,aP={}ai=1
for a=1,10 do
e[a]=e[a+10*ax]end
g=e[1]W=e[4]R=e[8]aa=e[10]aV,aa[1]=aa[1]w=e[12]C=e[15]for a=14,16 do
w[1][a]=0
end
ax=ax+1
for a=#g,1,-1 do
_=g[a]for k=7,40 do
_[k]=0
end
_[7]=C[_[4]][4]_[9],_[10]=aG(#e[7],_)[1]if _[5]&bt<1 then
bb(g,a)elseif _[4]==1 then
if d then
_[7]=d[7]_[8]=d[8]end
d=_
end
end
bk=aV[3]end
for a,_ in z(e[2])do
_[10]=sub(W[_[2]],W[_[1]])if _[3]&4>0 then
f,F=R[e[3][_[6]][6]],R[e[3][_[7]][6]]_[8]=N(f[1],F[1])_[9],f[30],F[30]=A(f[2],F[2])else
_[8],_[9]=0,0
end
end
s={}for a=1,32 do
s[a]=0
end
aK=aK+1
Z=A(Z+1/bO,2/35)ag(1,Z>=0)if Z>=0 then
Z=Z-1/35
aW=aW+1
for a=2,#aa do
aa[a][0]={}end
for a,t in z(ae)do
_=e[9][t[1]]c=t[3]b=_[2]f=c[b]c[b]=H(_[3],f-_[4],f+_[4])+0
f=c[b]if f==_[3]then
ae[a]=t[2]==_[5]and{_[6],1,c}or{t[1],t[2]+1,c}if _[6]==0 then
bb(ae,a)end
end
c[10]=c[10]or f~=t
c[30]=a
end
for a,_ in z(g)do
if _ then
for k,t in z({1,2,9})do
_[t]=_[t]+_[t+10]end
_[15]=_[15]+1
f=C[_[4]]if _[7]<=0 and _[20]then
_[15]=0
_[6]=f[_[7]<=-f[4]and f[15]>1 and 15 or 14]_[10],_[20]=n
if f[27]>0 then
c={}for k=1,30 do
c[k]=_[k]end
c[4]=f[27]c[6]=f[28]g[#g+1]=c
end
end
aR=e[16][_[6]]if _[15]>=aR[2]and aR[2]~=-1 then
_[6]=aR[4]_[15]=0
S=e[16][_[6]][3]bL=f[23]&4>0
if S==1 then
for a,m in z(g)do
if m then
j=Q-x(_,m)if j>0 then
aA(m,j)end
end
end
elseif S==2 then
if by(_,d,90)then
_[23]=d
_[6]=f[5]end
ak(_,i,a,8)bw(_)elseif S==3 then
_[23]=_[23][20]and _[23]or d
aq=bd(K(_,_[23])/45+.5)*45
u=i
m=1
while m<5 and not u do
j=ac(_,P(aq+e[19][2][m],8))j[9]=_[9]u=ak(j,i,a,m)and(B[1]>=j[9]-24 or bL)m=m+1
end
if u then
for k=1,2 do
_[30+k]=j[k]-_[k]_[k]=j[k]end
_[3]=aq
_[10]=n
else
ak(_,i,a,8)end
bw(_)b=x(_,_[23])if f[13]>0 and av(_,_[23],1)and A(b,230)<ab()then
_[6]=f[13]end
if b<64 and f[12]>0 then
_[6]=f[12]end
elseif S==5 then
for a=1,11 do
d[3]=d[3]+e[19][9][a]o=e[14][23]bK()aL(d,1)end
d[3]=d[3]-20
elseif S>9 and _[20]then
_[3]=K(_,_[23])o=e[14][S]_[10]=n
am=_[23]aL(_,a)end
end
if _[17]and _[17]>0 then
o=e[14][_[17]]if not ak(_,i,a)or _[9]<=B[1]then
if aX then
aA(aX,f[21]*((ab()&7)+1),g[_[14]])end
_[1]=_[1]-_[11]_[2]=_[2]-_[12]_[3]=0
_[6]=C[_[4]][5]_[10]=n
_[11]=0
_[12],_[17]=0
_[19]=0
end
end
if _[6]==1 then
g[a]=i
else
af=sub(_,aV)M=aa[2+af[1]//Q+af[2]//Q*bk]if M then
M[0][#M[0]+1]=a
end
end
end
end
for a=1,8 do
if aj(a)and w[1][a+4]>0 then
an=a
end
end
o=e[14][an]d[3]=d[3]-ar(3)*(H(b_,5,6)*1.5-6)b_=abs(ar(3))*b_+1
U=d
for a=1,2 do
U=ac(U,P(d[3]-L+90*a,ar(a)*8.33))end
U[9]=d[9]for a=1,8 do
u=ak(U,n,1,a)end
if u then
for a=1,2 do
d[30+a]=U[a]-d[a]d[a]=U[a]end
if d[9]>B[1]then
d[19]=d[19]-1
else
d[9]=A(B[1],d[9]+4)d[19]=N(0,d[19])end
else
d[19]=0
d[9]=B[1]end
bc=w[1]c=o[1]if aj(31)and ap<=0 and(c==0 or bc[c]>=o[2])then
ag(3,n)ap=o[3]if c>0 then
bc[c]=bc[c]-o[2]end
bK()aL(d,1)end
ap=ap-1
if ar(4)<0 then
_=ac(d,P(d[3],64))_[9]=d[9]aC,ay=av(d,_,2,1)_=e[2][ay]if aC==i then
s[2]=ay
c,u=_[4]for a=14,16 do
u=u or w[1][a]>0 and c==a
end
if c==1 or u then
aY(_,_[5])elseif c>3000 and c<3005 then
bt=bd(c-3000)end
end
end
end
s[1]=an
for a=3,13 do
s[a]=d[e[19][4][a]]or s[a]end
w[1][17]=bO
s[10]=w[1][aK%#w[1]+1]a=ai
bn=n
I=1
aw=#g+#R
while I<3 and bn do
c=I*9+5
if a<=#g then
_=g[a]if a~=1 then
if _ then
if _[10]then
_[10]=i
s[c]=a
for k=1,8 do
s[c+k]=_[e[19][1][k]]end
I=I+1
end
else
s[c]=-a
bb(g,a)I=I+1
aw=aw-1
end
end
else
_=R[a-#g]if _[10]then
_[10]=i
s[c]=a-#g+2^15
for k=1,6 do
s[c+k]=_[k]end
I=I+1
end
end
a=(a-2)%aw+1
ai=A(ai,aw)bn=a~=ai
end
ai=a
for a=1,32 do
output.setNumber(a,s[a])end
end
aB=aB+1
async.httpGet(8,"")end
