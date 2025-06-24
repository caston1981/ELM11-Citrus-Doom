
P=128
am=180
H=math
L=H.max
B=H.min
aF=H.floor
pi=H.pi/am
au=input.getNumber
aa=input.getBool
ad=output.setBool
o=true
u=false
D=ipairs
abs=H.abs
aY=table.remove
aI=string
function an(b,h)return{(b[1]+h[1]),(b[2]+h[2])}end
function sub(b,h)return{(b[1]-h[1]),(b[2]-h[2])}end
function bR(b)return H.sin(b*pi)end
function aC(b)return H.cos(b*pi)end
function K(b,h)return H.atan(h[2]-b[2],h[1]-b[1])/pi end
function E(b,h,aC)return L(B(aC,b),h)end
function w(b,h)return H.sqrt(((b[1]-h[1])^2)+((b[2]-h[2])^2))end
function M(b,h)return{aC(b)*h,bR(b)*h}end
function exp(b)return b[1],b[2]end
f={}aT=1
aA=3
aX=o
ac=2
ap=0
ay=0
av=0
bc=0
S=0
bd=0
l=1
aR=0
bx=2
function aL(a,b,_)if a<2^15 then
_=f[7][a]return aL(_[_[3]*(b[2]-_[2])-_[4]*(b[1]-_[1])>0 and 8 or 7],b)else
a=f[5][f[6][a-2^15][2]]return V[f[3][f[2][a[4]][a[5]+6]][6]]end
end
function ae(t,bw,A,bo,_)N=g[A]d=z[N[4]]ar,Z=d[18],d[19]J=ar
y=aL(#f[7],t)ak,al=exp(y)ab=sub(t,aM)O=X[2+ab[1]//P+ab[2]//P*bp]or{}for a,_ in D(O[0]or{})do
c=g[_]if _~=A and c and N[14]~=c then
k=w(c,t)F=z[c[4]]if c[20]then
Y=k-F[18]if Y<J and F[23]&1>0 and(d[23]&1>0 or E(t[9],c[9]-Z,c[9]+F[19])==t[9])then
aK=c
if bw==u then
return
end
J=Y
aJ=K(t,c)end
end
if A==1 and k<50 then
b=F[25]if b>0 then
for q,s in D(v[b])do
if s>0 and v[1][q]<v[2][q]then
c=v
g[_]=u
c[1][q]=aF(B(c[1][q]+s,c[2][q]))if E(q,5,12)==q then
ac=q-4
end
end
end
end
b=F[29]if b>0 then
b=f[11][b]for q=7,8 do
e[q]=E(e[q]+b[q*2-13],e[q],b[q*2-12])end
g[_]=u
end
end
end
end
_=(bo or 1)<8
if al-ak<Z then
p=_ or av%4>0 or y[6]<18 or ag(N,10)return
end
p=_ or av%32>0 or y[6]~=5 or ag(N,10)for a=1,#O do
_=f[2][O[a]]k,bn=bA(t,U[_[1]],U[_[2]])if k<J then
if _[3]&1>0 and d[23]&1>0 or _[3]&4==0 then
if A>1 or aS>0 or _[3]&4>0 then
J=k
aJ=bn
end
else
be,aP=B(_[9],al),L(_[8],ak)if B(t[9],al-Z)+24<aP or L(t[9],ak)+Z>be or be-aP<Z then
J=k
aJ=bn
else
if bo==1 and(_[3]&512>0 or A==1)and(_[4]==2 or A>1)then
b_(_,_[5])end
al,ak=be,aP
end
end
end
end
y,aK={ak,al}if bw then
if J~=ar then
_=an(t,M(aJ,J-ar))t[1]=_[1]t[2]=_[2]end
return o
end
return J==ar
end
function bA(r,x,aB)T=w(x,r)bj=K(x,aB)+90
bP=bj-K(r,x)aS,bz=exp(M(-bP,T))bf=bj
if aS<0 then
bf=bf+am
end
if bz<0 then
return T,K(r,x)elseif bz>w(aB,x)then
return w(aB,r),K(r,aB)else
return abs(aS),bf
end
end
function at(r,x,aN,A)aD=w(r,x)aq=aD
aZ,p=o
Y,bg=exp(r)bQ,bO=exp(x)ba,bb=exp(sub(x,r))as,bv=r[9]+32,x[9]+32
for a,_ in D(f[2])do
br=U[_[1]]bD,bs=exp(sub(U[_[2]],br))bi,bB=exp(sub(r,br))by=bs*ba-bD*bb
W=(bD*bB-bs*bi)/by
bJ=(ba*bB-bb*bi)/by
if E(W,0,1)==W and E(bJ,0,1)==bJ then
bM={Y+(W*ba),bg+(W*bb)}k=w(r,bM)G=as+(bv-as)*(k/aD)if E(G,_[8]+1,_[9])~=G then
aZ=u
if aN==1 then
return
end
if k<aq then
aq=k
bl,bL=exp(bM)bq=G
bk=a
end
end
end
end
if aN>1 then
if aN==3 then
for a,_ in D(g)do
if _ and a~=A then
d=z[_[4]]if d[23]&1>0 and _[20]then
k=w(r,_)if k<aq then
W=bA(_,r,x)T=(k/aD)G=as+(bv-as)*T
if E(G,_[9],_[9]+d[19])==G and W<d[18]then
aq=k
p,aZ=o
bl=Y+(bQ-Y)*T
bL=bg+(bO-bg)*T
bq=G
bk=a
end
end
end
end
end
end
return aZ,bk,{bl,bL,bq}end
return o
end
function httpReply()bh=ay//2
ay=0
end
function ah()bd=bd%256+1
return f[13][1][bd]end
function ag(_,a,c)d=z[_[4]]if d[23]&2>0 and _[7]>0 then
_[8]=_[8]-(a+1)//2
_[7]=_[7]-a//2+B(_[8],0)_[8]=L(_[8],0)_[33]=d[13]~="lost soul missile state" and c or e
if ah()<d[10]then
_[6]=d[9]_[15]=0
_[10]=o
end
end
end
function bE(b,h,aw)return h[20]and abs(((K(b,h)-b[3]+am)%360)-am)<aw and at(b,h,1)end
function aV(C,A)bC=ai and(ai[9]-C[9])*n[6]/w(ai,C)or 0
for a=1,n[12]do
b={}for a=1,33 do
b[a]=C[a]end
b[4]=n[8]b[10]=o
b[14]=C
bm=(ah()/P-1)*n[10]aO=M(C[3]+bm,n[6])if n[7]>0 then
g[#g+1]=b
d=z[b[4]]b[6]=d[3]b[9]=C[9]+n[13]b[11]=aO[1]b[12]=aO[2]b[17]=ac
b[19]=bC
else
c=an(C,aO)c[9]=e[9]+bC
aU,ax,c=at(C,c,3,A)if not aU then
bt=sub(c,M(C[3]+bm,1))g[#g+1]=b
b[1]=bt[1]b[2]=bt[2]b[6]=z[b[4]][3]b[9]=c[3]b[19]=1
if p then
b=g[ax]ag(b,n[9]*((ah()&3)+2),C)end
end
end
end
end
function b_(_,c)if c>-1 then
b=f[9][c]if b[1]>0 or N[31]*_[10][2]-N[32]*_[10][1]<0 then
h=V[b[1]]aj[h and h[30]or#aj+1]={c,1,h or N}_[4]=b[7]b=b[8]>0 and b_(_,b[8])end
else
aX=o
aA=-c
m[10]=-c
end
end
function bu()bI,ai=2048
for a,_ in D(g)do
if a>1 and _ and bE(e,_,10)then
k=w(_,e)if k<bI then
if z[_[4]][23]&2>0 then
ai=_
bI=k
end
end
end
end
end
function bH(_)if _[9]~=y[1]and not bF then
_[9]=y[1]_[10]=true
end
end
function onTick()ad(9,aa(32))ad(2,aa(11))ad(3,u)for j=1,3 do
if aa(32)and(not bN)or not f[21]then
aW=property.getText(aT)a=1
i=""
_=aI.sub(aW,a,a)while _~=""do
c=aI.byte(_)if c>64 then
i=(i..c-65)+0
if l==1 then
bG=i
f[i]=f[i]or{}elseif l==2 then
G=i
ao=0
elseif l==3 then
aQ=i
else
if ao==0 then
ao=G
aQ=aQ-1
aE={}f[bG][#f[bG]+1]=aE
end
aE[#aE+1]=i
ao=ao-1
l=L(ao,aQ)>0 and l-1 or 0
end
l=l+1
i=""
else
i=i.._
end
a=a+1
_=aI.sub(aW,a,a)end
aT=aT+1
bN=aW==""
end
end
if bN then
if aX then
aj,aX={}af=1
for a=1,10 do
f[a]=f[a+10*aA]end
g=f[1]U=f[4]V=f[8]X=f[10]aM,X[1]=X[1]v=f[12]z=f[15]for a=14,16 do
v[1][a]=0
end
aA=aA+1
for a=#g,1,-1 do
_=g[a]for j=7,32 do
_[j]=0
end
_[7]=z[_[4]][4]_[9],_[10]=aL(#f[7],_)[1]if _[5]&bx<1 then
aY(g,a)elseif _[4]==1 then
if e then
_[7]=e[7]_[8]=e[8]end
e=_
end
end
bp=aM[3]end
for a,_ in D(f[2])do
_[10]=sub(U[_[2]],U[_[1]])if _[3]&4>0 then
d,F=V[f[3][_[6]][6]],V[f[3][_[7]][6]]_[8]=L(d[1],F[1])_[9],d[30],F[30]=B(d[2],F[2])else
_[8],_[9]=0,0
end
end
m={}for a=1,32 do
m[a]=0
end
bc=bc+1
S=B(S+1/bh,2/35)ad(1,S>=0)if S>=0 then
S=S-1/35
av=av+1
for a=2,#X do
X[a][0]={}end
for a,s in D(aj)do
_=f[9][s[1]]c=s[3]b=_[2]d=c[b]c[b]=E(_[3],d-_[4],d+_[4])+0
d=c[b]if d==_[3]then
aj[a]=s[2]==_[5]and{_[6],1,c}or{s[1],s[2]+1,c}if _[6]==0 then
aY(aj,a)end
end
c[10]=c[10]or d~=s
c[30]=a
end
for a,_ in D(g)do
if _ then
for j,s in D({1,2,9})do
_[s]=_[s]+_[s+10]end
_[15]=_[15]+1
d=z[_[4]]if _[7]<=0 and _[20]then
_[15]=0
_[6]=d[_[7]<=-d[4]and d[15]>1 and 15 or 14]_[10],_[20]=o
m[12]=d[16]if d[27]>0 then
c={}for j=1,30 do
c[j]=_[j]end
c[4]=d[27]c[6]=d[28]g[#g+1]=c
end
end
aG=f[16][_[6]]_[33]=_[33]and(_[33][20]and _[33]or e)if _[15]>=aG[2]and aG[2]~=-1 then
_[6]=aG[4]_[15]=0
Q=f[16][_[6]][3]bF=d[23]&4>0
if Q==1 then
for a,l in D(g)do
if l then
i=P-w(_,l)if i>0 then
ag(l,i)end
end
end
elseif Q==2 then
if bE(_,e,90)then
_[33]=e
_[6]=d[5]m[12]=d[6]end
ae(_,u,a,8)bH(_)elseif Q==3 then
aw,p=aF(K(_,_[33])/45+.5)*45
l=1
while l<5 and not p do
i=an(_,M(aw+f[19][2][l],8))i[9]=_[9]p=ae(i,u,a,l)and(y[1]>=i[9]-24 or bF)l=l+1
end
if p then
for j=1,2 do
_[30+j]=i[j]-_[j]_[j]=i[j]end
_[3]=aw
_[10]=o
else
ae(_,u,a,8)end
bH(_)b=w(_,_[33])if d[13]>0 and at(_,_[33],1)and B(b,230)<ah()then
_[6]=d[13]end
if b<64 and d[12]>0 then
_[6]=d[12]end
elseif Q==5 then
for a=1,11 do
e[3]=e[3]+f[19][9][a]n=f[14][23]bu()aV(e,1)end
e[3]=e[3]-20
elseif Q>9 and _[20]then
_[3]=K(_,_[33])n=f[14][Q]_[10]=o
ai=_[33]aV(_,a)end
end
if _[17]and _[17]>0 then
n=f[14][_[17]]if not ae(_,u,a)or _[9]<=y[1]then
if aK then
ag(aK,d[21]*((ah()&7)+1),_[14])end
_[1]=_[1]-_[11]_[2]=_[2]-_[12]_[3]=0
_[6]=z[_[4]][5]_[10]=o
_[11]=0
_[12],_[17]=0
m[12]=d[16]_[19]=0
end
end
if _[6]==1 then
g[a]=u
else
ab=sub(_,aM)O=X[2+ab[1]//P+ab[2]//P*bp]if O then
O[0][#O[0]+1]=a
end
end
end
end
for a=1,8 do
if aa(a)and v[1][a+4]>0 then
ac=a
end
end
n=f[14][ac]e[3]=e[3]-au(3)*(E(aR,5,6)*1.5-6)aR=abs(au(3))*aR+1
R=e
for a=1,2 do
R=an(R,M(e[3]-am+90*a,au(a)*8.33))end
R[9]=e[9]for a=1,8 do
p=ae(R,o,1,a)end
if p then
for a=1,2 do
e[30+a]=R[a]-e[a]e[a]=R[a]end
if e[9]>y[1]then
e[19]=e[19]-1
else
e[9]=B(y[1],e[9]+4)e[19]=L(0,e[19])end
else
e[19]=0
e[9]=y[1]end
aH=v[1]c=n[1]if aa(31)and ap<=0 and(c==0 or aH[c]>=n[2])then
ad(3,o)ap=n[3]if c>0 then
aH[c]=aH[c]-n[2]end
bu()aV(e,1)end
ap=ap-1
if au(4)<0 then
_=an(e,M(e[3],64))_[9]=e[9]aU,ax=at(e,_,2,1)_=f[2][ax]if aU==u then
m[2]=ax
c,p=_[4]for a=14,16 do
p=p or v[1][a]>0 and c==a
end
if c==1 or p then
b_(_,_[5])elseif c>3000 and c<3005 then
bx=aF(c-3000)end
end
end
end
m[1]=ac
for a=3,14 do
m[a]=e[f[19][4][a]]or m[a]end
v[1][17]=bh
m[11]=v[1][bc%#v[1]+1]a=af
bK=o
I=1
az=#g+#V
while I<3 and bK do
c=I*9+6
if a<=#f[1]then
_=g[a]if _ then
if _[10]and a>1 then
m[c],_[10]=a
for j=1,8 do
m[c+j]=_[f[19][1][j]]end
I=I+1
end
else
m[c]=-a
aY(g,a)I=I+1
az=az-1
end
else
_=V[a-#g]if _[10]then
m[c],_[10]=a-#g+2^15
for j=1,6 do
m[c+j]=_[j]end
I=I+1
end
end
a=(a-2)%az+1
af=B(af,az)bK=a~=af
end
af=a
for a=1,32 do
output.setNumber(a,m[a])end
end
ay=ay+1
async.httpGet(8,"")end
