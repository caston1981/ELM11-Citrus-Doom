
U=128
ag=180
E=math
L=E.max
A=E.min
aI=E.floor
pi=E.pi/ag
aq=input.getNumber
ab=input.getBool
am=output.setBool
o=true
B=false
y=ipairs
abs=E.abs
b_=table.remove
exp=table.unpack
bc=string
function af(b,h)return{(b[1]+h[1]),(b[2]+h[2])}end
function sub(b,h)return{(b[1]-h[1]),(b[2]-h[2])}end
function bO(b)return E.sin(b*pi)end
function aJ(b)return E.cos(b*pi)end
function I(b,h)return E.atan(h[2]-b[2],h[1]-b[1])/pi end
function H(b,h,aJ)return L(A(aJ,b),h)end
function u(b,h)return E.sqrt(((b[1]-h[1])^2)+((b[2]-h[2])^2))end
function N(b,h)return{aJ(b)*h,bO(b)*h}end
f={}aD=1
at=3
aM=o
ao=2
az=0
ar=0
ap=0
aY=0
Y=0
be=0
l=1
aZ=0
bs=2
function aG(a,b,_)if a<2^15 then
_=f[7][a]return aG(_[_[3]*(b[2]-_[2])-_[4]*(b[1]-_[1])>0 and 8 or 7],b)else
a=f[5][f[6][a-2^15][2]]return T[f[3][f[2][a[4]][a[5]+6]][6]]end
end
function aj(t,bN,C,bm,_)O=g[C]d=z[O[4]]aA,ak=d[18],d[19]K,aO=aA
x=aG(#f[7],t)ah,ad=exp(x)al=sub(t,aN)M=X[2+al[1]//U+al[2]//U*bo]or{}for a,_ in y(M[0]or{})do
c=g[_]if _~=C and c and O[14]~=c then
k=u(c,t)G=z[c[4]]if c[20]then
V=k-G[18]if V<K and G[23]&1>0 and(d[23]&1>0 or H(t[9],c[9]-ak,c[9]+G[19])==t[9])then
aO=c
K=V
aU=I(t,c)end
end
if C<2 and k<50 then
b=G[25]if b>0 then
for q,s in y(v[b])do
if s>0 and v[1][q]<v[2][q]then
c=v
g[_]=B
c[1][q]=aI(A(c[1][q]+s,c[2][q]))if H(q,5,12)==q then
ao=q-4
end
end
end
end
b=G[29]if b>0 then
b=f[11][b]for q=7,8 do
e[q]=H(e[q]+b[q*2-13],e[q],b[q*2-12])end
g[_]=B
end
end
end
end
_=bm<8
if ad-ah<ak then
p=_ or ap%4>0 or x[6]<18 or an(O,10)return
end
p=_ or ap%32>0 or x[6]~=5 or an(O,10)for a=1,#M do
_=f[2][M[a]]k,bF=bE(t,W[_[1]],W[_[2]])if k<K then
if _[3]&1>0 and d[23]&1>0 or _[3]&4<1 then
if C>1 or aH>0 or _[3]&4>0 then
K=k
aU=bF
end
else
aR,bd=A(_[9],ad),L(_[8],ah)if A(t[9],ad-ak)+24<bd or L(t[9],ah)+ak>aR or aR-bd<ak then
K=k
aU=bF
else
if bm<2 and(_[3]&512>0 or C<2)and(_[4]==2 or C>1)then
aP(_,_[5])end
ad,ah=aR,bd
end
end
end
end
x={ah,ad}if bN then
if K~=aA then
_=af(t,N(aU,K-aA))t[1]=_[1]t[2]=_[2]end
return o
end
return K==aA
end
function bE(r,w,as)R=u(w,r)bM=I(w,as)+90
bR=bM-I(r,w)aH,bA=exp(N(-bR,R))bf=bM
if aH<0 then
bf=bf+ag
end
if bA<0 then
return R,I(r,w)elseif bA>u(as,w)then
return u(as,r),I(r,as)else
return abs(aH),bf
end
end
function ay(r,w,bb,C)aE=u(r,w)au=aE
aT,p=o
V,aL=exp(r)bP,bQ=exp(w)aS,aC=exp(sub(w,r))ax,bz=r[9]+32,w[9]+32
for a,_ in y(f[2])do
bL=W[_[1]]bB,by=exp(sub(W[_[2]],bL))bH,bK=exp(sub(r,bL))bq=by*aS-bB*aC
P=(bB*bK-by*bH)/bq
br=(aS*bK-aC*bH)/bq
if H(P,0,1)==P and H(br,0,1)==br then
bw={V+(P*aS),aL+(P*aC)}k=u(r,bw)F=ax+(bz-ax)*(k/aE)if H(F,_[8]+1,_[9])~=F then
aT=B
if bb==1 then
return
end
if k<au then
au=k
bp,bu=exp(bw)bG=F
bI=a
end
end
end
end
if bb>1 then
if bb>2 then
for a,_ in y(g)do
if _ and a~=C then
d=z[_[4]]if d[23]&1>0 and _[20]then
k=u(r,_)if k<au then
P=bE(_,r,w)R=(k/aE)F=ax+(bz-ax)*R
if H(F,_[9],_[9]+d[19])==F and P<d[18]then
au=k
p,aT=o
bp=V+(bP-V)*R
bu=aL+(bQ-aL)*R
bG=F
bI=a
end
end
end
end
end
end
return aT,bI,{bp,bu,bG}end
return o
end
function httpReply()bx=ar//2
ar=0
end
function ac()be=be%256+1
return f[13][1][be]end
function an(_,a,c)d=z[_[4]]if d[23]&2>0 and _[7]>0 then
_[8]=_[8]-(a+1)//2
_[7]=_[7]-a//2+A(_[8],0)_[8]=L(_[8],0)_[33]=d[13]~="lost soul missile state" and c or e
if ac()<d[10]then
_[6]=d[9]_[15]=0
_[10]=o
end
end
end
function bJ(b,h,aB)return h[20]and abs(((I(b,h)-b[3]+ag)%360)-ag)<aB and ay(b,h,1)end
function aX(D,C)bk=ai and(ai[9]-D[9])*n[6]/u(ai,D)or 0
for a=1,n[12]do
b={}for a=1,33 do
b[a]=D[a]end
b[4]=n[8]b[10]=o
b[14]=D
bn=(ac()/U-1)*n[10]aQ=N(D[3]+bn,n[6])if n[7]>0 then
g[#g+1]=b
d=z[b[4]]b[6]=d[3]b[9]=D[9]+n[13]b[11]=aQ[1]b[12]=aQ[2]b[17]=ao
b[19]=bk
else
c=af(D,aQ)c[9]=e[9]+bk
aW,aw,c=ay(D,c,3,C)if not aW then
bj=sub(c,N(D[3]+bn,1))g[#g+1]=b
b[1]=bj[1]b[2]=bj[2]b[6]=z[b[4]][3]b[9]=c[3]b[19]=1
if p then
b=g[aw]an(b,n[9]*((ac()&3)+2),D)end
end
end
end
end
function aP(_,c)if c>-1 then
b=f[9][c]if b[1]>0 or O[31]*_[10][2]-O[32]*_[10][1]<0 then
h=T[b[1]]ae[h and h[30]or#ae+1]={c,1,h or O}_[4]=b[7]b=b[8]>0 and aP(_,b[8])end
else
aM=o
at=-c
m[10]=-c
end
end
function bl()bi,ai=2048
for a,_ in y(g)do
if a>1 and _ and bJ(e,_,10)then
k=u(_,e)if k<bi then
if z[_[4]][23]&2>0 then
ai=_
bi=k
end
end
end
end
end
function bv(_)if _[9]~=x[1]and not bC then
_[9]=x[1]_[10]=true
end
end
function onTick()am(9,ab(32))am(2,ab(11))am(3,B)for i=1,3 do
if ab(32)and(not bt)or not f[21]then
bg=property.getText(aD)a=1
j=""
_=bc.sub(bg,a,a)while _~=""do
c=bc.byte(_)if c>64 then
j=(j..c-65)+0
if l==1 then
bh=j
f[j]=f[j]or{}elseif l==2 then
F=j
Z=0
elseif l==3 then
aF=j
else
if Z==0 then
Z=F
aF=aF-1
ba={}f[bh][#f[bh]+1]=ba
end
ba[#ba+1]=j
Z=Z-1
l=L(Z,aF)>0 and l-1 or 0
end
l=l+1
j=""
else
j=j.._
end
a=a+1
_=bc.sub(bg,a,a)end
aD=aD+1
bt=bg==""
end
end
if bt then
if aM then
ae,aM={}aa=1
for a=1,10 do
f[a]=f[a+10*at]end
g=f[1]W=f[4]T=f[8]X=f[10]aN,X[1]=X[1]v=f[12]z=f[15]for a=14,16 do
v[1][a]=0
end
at=at+1
for a=#g,1,-1 do
_=g[a]for i=7,32 do
_[i]=0
end
_[7]=z[_[4]][4]_[9],_[10]=aG(#f[7],_)[1]if _[5]&bs<1 then
b_(g,a)elseif _[4]==1 then
if e then
_[7]=e[7]_[8]=e[8]end
e=_
end
end
bo=aN[3]end
for a,_ in y(f[2])do
_[10]=sub(W[_[2]],W[_[1]])if _[3]&4>0 then
d,G=T[f[3][_[6]][6]],T[f[3][_[7]][6]]_[8]=L(d[1],G[1])_[9],d[30],G[30]=A(d[2],G[2])else
_[8],_[9]=0,0
end
end
m={}for a=1,32 do
m[a]=0
end
aY=aY+1
Y=A(Y+1/bx,2/35)am(1,Y>=0)if Y>=0 then
Y=Y-1/35
ap=ap+1
for a=2,#X do
X[a][0]={}end
for a,s in y(ae)do
_=f[9][s[1]]c=s[3]b=_[2]d=c[b]c[b]=H(_[3],d-_[4],d+_[4])+0
d=c[b]if d==_[3]then
ae[a]=s[2]==_[5]and{_[6],1,c}or{s[1],s[2]+1,c}if _[6]==0 then
b_(ae,a)end
end
c[10]=c[10]or d~=s
c[30]=a
end
for a,_ in y(g)do
if _ then
al=sub(_,aN)M=X[2+al[1]//U+al[2]//U*bo]if M then
M[0][#M[0]+1]=a
end
end
end
for a,_ in y(g)do
if _ then
for i,s in y({1,2,9})do
_[s]=_[s]+_[s+10]end
_[15]=_[15]+1
d=z[_[4]]if _[7]<=0 and _[20]then
_[15]=0
_[6]=d[_[7]<=-d[4]and d[15]>1 and 15 or 14]_[10],_[20]=o
m[12]=d[16]if d[27]>0 then
c={}for i=1,30 do
c[i]=_[i]end
c[4]=d[27]c[6]=d[28]g[#g+1]=c
end
end
aV=f[16][_[6]]_[33]=_[33]and(_[33][20]and _[33]or e)if _[15]>=aV[2]and aV[2]~=-1 then
_[6]=aV[4]_[15]=0
Q=f[16][_[6]][3]bC=d[23]&4>0
if Q==1 then
for i,l in y(g)do
if l then
j=U-u(_,l)if j>0 then
an(l,j)end
end
end
elseif Q==2 then
if bJ(_,e,90)then
_[33]=e
_[6]=d[5]m[12]=d[6]end
aj(_,B,a,8)bv(_)elseif Q==3 then
aB,p=aI(I(_,_[33])/45+.5)*45
l=1
while l<5 and not p do
j=af(_,N(aB+f[19][2][l],8))j[9]=_[9]p=aj(j,B,a,l)and(x[1]>=j[9]-24 or bC)l=l+1
end
if p then
for i=1,2 do
_[30+i]=j[i]-_[i]_[i]=j[i]end
_[3]=aB
_[10]=o
else
aj(_,B,a,8)end
bv(_)b=u(_,_[33])if d[13]>0 and ay(_,_[33],1)and A(b,230)<ac()then
_[6]=d[13]end
if b<64 and d[12]>0 then
_[6]=d[12]end
elseif Q==5 then
for i=1,11 do
e[3]=e[3]+f[19][9][i]n=f[14][23]bl()aX(e,1)end
e[3]=e[3]-20
elseif Q>9 and _[20]then
_[3]=I(_,_[33])n=f[14][Q]_[10]=o
ai=_[33]aX(_,a)end
end
if _[17]and _[17]>0 then
n=f[14][_[17]]if not aj(_,B,a,2)or _[9]<=x[1]then
if aO then
an(aO,d[21]*((ac()&7)+1),_[14])end
_[1]=_[1]-_[11]_[2]=_[2]-_[12]_[3]=0
_[6]=z[_[4]][5]_[10]=o
_[11]=0
_[12],_[17]=0
m[12]=d[16]_[19]=0
end
end
if _[6]==1 then
g[a]=B
end
end
end
for a=1,8 do
if ab(a)and v[1][a+4]>0 then
ao=a
end
end
n=f[14][ao]e[3]=e[3]-aq(3)*(H(aZ,5,6)*1.5-6)aZ=abs(aq(3))*aZ+1
S=e
for a=1,2 do
S=af(S,N(e[3]-ag+90*a,aq(a)*8.33))end
S[9]=e[9]for a=1,8 do
p=aj(S,o,1,a)end
if p then
for a=1,2 do
e[30+a]=S[a]-e[a]e[a]=S[a]end
if e[9]>x[1]then
e[19]=e[19]-1
else
e[9]=A(x[1],e[9]+4)e[19]=L(0,e[19])end
else
e[19]=0
e[9]=x[1]end
aK=v[1]c=n[1]if ab(31)and az<=0 and aK[c]>=n[2]then
am(3,o)az=n[3]if c>0 then
aK[c]=aK[c]-n[2]end
bl()aX(e,1)end
az=az-1
if aq(4)<0 then
_=af(e,N(e[3],64))_[9]=e[9]aW,aw=ay(e,_,2,1)_=f[2][aw]if aW==B then
m[2]=aw
c,p=_[4]for a=14,16 do
p=p or v[1][a]>0 and c==a
end
if c==1 or p then
aP(_,_[5])elseif c>3000 and c<3005 then
bs=aI(c-3000)end
end
end
end
m[1]=ao
for a=3,14 do
m[a]=e[f[19][4][a]]or m[a]end
v[1][17]=bx
m[11]=v[1][aY%#v[1]+1]a=aa
bD=o
J=1
av=#g+#T
while J<3 and bD do
c=J*9+6
if a<=#f[1]then
_=g[a]if _ then
if _[10]and a>1 then
m[c],_[10]=a
for i=1,8 do
m[c+i]=_[f[19][1][i]]end
J=J+1
end
else
m[c]=-a
b_(g,a)J=J+1
av=av-1
end
else
_=T[a-#g]if _[10]then
m[c],_[10]=a-#g+2^15
for i=1,6 do
m[c+i]=_[i]end
J=J+1
end
end
a=(a-2)%av+1
aa=A(aa,av)bD=a~=aa
end
aa=a
for a=1,32 do
output.setNumber(a,m[a])end
end
ar=ar+1
async.httpGet(8,"")end
