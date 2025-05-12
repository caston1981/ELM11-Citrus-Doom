bR=""

S=128
P=180
bj=output
bG=input
D=math
N=D.max
x=D.min
ay=D.floor
pi=D.pi
aC=bG.getNumber
aD=bG.getBool
ag=bj.setBool
m=true
i=false
w=ipairs
abs=D.abs
bC=table.remove
aQ=string
function ab(b,g)return{(b[1]+g[1]),(b[2]+g[2])}end
function sub(b,g)return{(b[1]-g[1]),(b[2]-g[2])}end
function bg(b)return D.sin(b/P*pi)end
function ah(b)return D.cos(b/P*pi)end
function I(b,g)return D.atan(g[2]-b[2],g[1]-b[1])*P/pi end
function L(b,g,ah)return N(x(ah,b),g)end
function v(b,g)return D.sqrt(((b[1]-g[1])^2)+((b[2]-g[2])^2))end
function U(b,g)return{ah(b)*g,bg(b)*g}end
function exp(b)return b[1],b[2]end
f={}aU=1
az=3
as=i
aK=m
ai=2
z=0
ax=0
at=0
R=0
aR=0
k=1
aP=0
bz=2
function ba(a,b,_)if a<32768then
_=f[7][a]return ba(_[_[3]*(b[2]-_[2])-_[4]*(b[1]-_[1])>0 and 8 or 7],b)else
a=f[5][f[6][a-32768][2]]return T[f[3][f[2][a[4]][a[5]+6]][6]]end
end
function av(s,bF,A,bN,_,a,n)ae=h[A]e=C[ae[4]]au,ar=e[18],e[19]J=au
E=ba(#f[7],s)V,ac=exp(E)aj=sub(s,Q[1])M=Q[2+aj[1]//S+aj[2]//S*bM]for a,_ in w(M[0])do
c=h[_]if _~=A and c and ae[14]~=_ then
l=v(c,s)G=C[c[4]]if c[20]then
W=l-G[18]if W<J and G[23]&1>0 and(e[23]&1>0 or(s[9]+ar<c[9]or s[9]>c[9]+G[19])==i)then
aN=c
if bF==i then
return i
end
J=W
bc=I(s,c)end
end
if A==z and not c[10]then
if l<50then
b=G[25]if b>0then
for p,t in w(B[b])do
if t>0 and B[1][p]<B[2][p]then
c=B
h[_]=i
c[1][p]=ay(x(c[1][p]+t,c[2][p]))if L(p,5,12)==p then
ai=p-4
end
end
end
end
b=G[29]if b>0 then
b=f[11][b]for p=7,8 do
d[p]=L(d[p]+b[p*2-13],d[p],b[p*2-12])end
h[_]=i
end
end
end
end
end
aN=i
if ac-V<ar or V>s[9]+24then
return i
end
for a=1,#M do
_=f[2][M[a]]l,bI=bv(s,X[_[1]],X[_[2]])if l<J then
if bN==1 and(_[3]&512>0 or A==z)and(_[4]==2 or A~=z)then
bb(_,_[5])end
if(_[3]&1>0 and e[23]&1>0)or _[3]&4==0 then
J=l
bc=bI
else
bk,bq=x(_[9],ac),N(_[8],V)if x(s[9],ac-ar)+24<bq or N(s[9],V)+ar>bk then
J=l
bc=bI
else
ac,V=bk,bq
end
end
end
end
E={V,ac}if bF then
if J~=au then
_=ab(s,U(bc,J-au))s[1]=_[1]s[2]=_[2]end
return m
end
return J==au
end
function bv(q,y,aB)O=v(y,q)bl=I(y,aB)+90
bn=bl-I(q,y)bs=-O*bg(bn)bf=O*ah(bn)aG=bl
if bf<0 then
aG=aG+P
end
if bs<0 then
return O,I(q,y)elseif bs>v(aB,y)then
return v(aB,q),I(q,aB)else
return abs(bf),aG
end
end
function aw(q,y,aL,A,_)aV=v(q,y)aE=aV
aJ=m
W,aO=exp(q)bP,bO=exp(y)aX,aY=exp(sub(y,q))ap,bJ=q[9]+32,y[9]+32
u=i
for a,_ in w(f[2])do
by=X[_[1]]bE,bo=exp(sub(X[_[2]],by))bp,bi=exp(sub(q,by))bD=bo*aX-bE*aY
Y=(bE*bi-bo*bp)/bD
bw=(aX*bi-aY*bp)/bD
if L(Y,0,1)==Y and L(bw,0,1)==bw then
bh={W+(Y*aX),aO+(Y*aY)}l=v(q,bh)F=ap+(bJ-ap)*(l/aV)if L(F,_[8],_[9])~=F then
aJ=i
if aL==1 then
return i
end
if l<aE then
aE=l
bt,bB=exp(bh)bm=F
ak=a
end
end
end
end
if aL>1 then
if aL==3 then
for a,_ in w(h)do
if _ and a~=A then
e=C[_[4]]if e[23]&1>0 and _[20]then
l=v(q,_)if l<aE then
Y=bv(_,q,y)O=(l/aV)F=ap+(bJ-ap)*O
if L(F,_[9],_[9]+e[19])==F and Y<e[18]then
u=m
aJ=i
bt=W+(bP-W)*O
bB=aO+(bO-aO)*O
bm=F
ak=a
end
end
end
end
end
end
return aJ,ak,{bt,bB,bm}end
return m
end
function httpReply(b,g,ah)bL=at//2
at=0
end
function al()aR=aR%256+1
return f[13][1][aR]end
function aS(_,a)e=C[_[4]]if e[23]&2>0 and _[7]>0 then
_[8]=_[8]-(a+1)//2
_[7]=_[7]-a//2+x(_[8],0)_[8]=N(_[8],0)if al()<e[10]then
_[6]=e[9]_[15]=0
_[23]=d
_[10]=m
end
end
end
function br(b,g,ao)return g[20]and abs(((I(b,g)-b[3]+P)%360)-P)<ao and aw(b,g,1)end
function bx(K,A)be=ad and(ad[9]-K[9])*r[6]/v(ad,K)or 0
for a=1,r[12]do
b={}for a=1,30 do
b[a]=K[a]end
b[4]=r[8]b[10]=m
b[14]=A
bd=(al()/S-1)*r[10]aF=U(K[3]+bd,r[6])if r[7]>0then
h[#h+1]=b
e=C[b[4]]b[6]=e[3]b[9]=K[9]+32
b[11]=aF[1]b[12]=aF[2]b[17]=ai
b[19]=be
else
c=ab(K,aF)c[9]=d[9]+be
b_,aA,c=aw(K,c,3,A)if not b_ then
bu=sub(c,U(K[3]+bd,1))h[#h+1]=b
b[1]=bu[1]b[2]=bu[2]b[6]=C[b[4]][3]b[9]=c[3]b[19]=1
if u then
b=h[aA]aS(b,r[9]*((al()&3)+2))end
end
end
end
end
function bb(_,c)if c>-1 then
b=f[9][c]if b[1]>0 or ae[31]*_[10][2]-ae[32]*_[10][1]<0 then
g=T[b[1]]an[g and g[30]or#an+1]={c,1,g or ae}_[4]=b[7]b=b[8]>0 and bb(_,b[8])end
else
aK=m
az=-c
o[9]=-c
end
end
function onTick()ag(9,aD(32))ag(2,i)ag(3,i)for n=1,3 do
if aD(32)and(not as)or not f[21]then
aI=property.getText(aU..bR)if aI~=bR then
a=1
j=bR
_=aQ.sub(aI,a,a)while _~=bRdo
c=aQ.byte(_)if c>64 or _==bRthen
j=(j..(c-65))+0
if k==1then
ak=j
if f[j]==bH then
f[j]={}end
k=2
elseif k==2then
F=j
aa=0
k=3
elseif k==3then
aM=j
k=4
else
if aa==0then
aa=F
aM=aM-1
aT={}f[ak][#f[ak]+1]=aT
end
aT[#aT+1]=j
aa=aa-1
if N(aa,aM)==0then
k=1
end
end
j=bR
else
j=j.._
end
a=a+1
_=aQ.sub(aI,a,a)end
aU=aU+1
else
as=m
end
end
end
if as then
if aK then
an,aK={}am=1
for a=1,10 do
f[a]=f[a+10*az]end
h=f[1]X=f[4]T=f[8]Q=f[10]B=f[12]C=f[15]for a=14,16 do
B[1][a]=0
end
az=az+1
for a,_ in w(h)do
for n=7,40 do
_[n]=0
end
bQ=_[5]+1
_[7]=C[_[4]][4]_[9],_[10]=ba(#f[7],_)[1]if _[4]==1 then
if d then
_[7]=d[7]_[8]=d[8]end
z=a
d=_
elseif _[5]&bz<1then
h[a]=i
end
end
bM=Q[1][3]end
for a,_ in w(f[2])do
_[10]=sub(X[_[2]],X[_[1]])if _[3]&4>0 then
e,G=T[f[3][_[6]][6]],T[f[3][_[7]][6]]_[8]=N(e[1],G[1])_[9],e[30],G[30]=x(e[2],G[2])else
_[8],_[9]=0,0
end
end
o={}for a=1,32 do
o[a]=0
end
R=x(R+1/bL,2/35)ag(1,R>=0)if R>=0 then
R=R-1/35
for a=2,#Q do
Q[a][0]={}end
for a,t in w(an)do
_=f[9][t[1]]c=t[3]b=_[2]e=c[b]c[b]=L(_[3],e-_[4],e+_[4])+0
e=c[b]if abs(e-_[3])<.1then
an[a]=t[2]==_[5]and{_[6],1,c}or{t[1],t[2]+1,c}if _[6]==0 then
bC(an,a)end
else
c[8]=c[8]or e~=t
end
c[30]=a
end
for a,_ in w(h)do
if _ then
for n,t in w({1,2,9})do
_[t]=_[t]+_[t+10]end
_[15]=_[15]+1
e=C[_[4]]if _[7]<=0 and _[20]then
_[15]=0
_[6]=e[_[7]<=-e[4]and e[15]>1 and 15or 14]_[10],_[20]=m
if e[27]>0 then
c={}for n=1,30 do
c[n]=_[n]end
c[4]=e[27]c[6]=e[28]h[#h+1]=c
end
end
aH=f[16][_[6]]if _[15]>=aH[2]and aH[2]~=-1then
_[6]=aH[4]_[15]=0
af=f[16][_[6]][3]if af==1 then
for a,k in w(h)do
if k then
j=S-v(_,k)if j>0 then
aS(k,j)end
end
end
elseif af==2then
if br(_,d,90)then
_[23]=d
_[6]=e[5]end
elseif af==3then
ao=ay(I(_,_[23])/45+.5)*45
u=i
k=1
while k<5 and not u do
j=ab(_,U(ao+f[19][2][k],8))j[9]=_[9]u=av(j,i,a,k)and E[1]>=j[9]-24
k=k+1
end
if u then
for n=1,2 do
_[30+n]=j[n]-_[n]_[n]=j[n]end
_[3]=ao
_[10]=m
else
av(_,i,a)end
if e[23]&4<1 then
_[9]=E[1]end
b=v(_,_[23])if e[13]>0 and aw(_,_[23],1)and x(b,230)<al()then
_[6]=e[13]end
if b<64 and e[12]>0then
_[6]=e[12]end
elseif af>9then
_[3]=I(_,_[23])r=f[14][af]_[10]=m
ad=_[23]bx(_,a)end
end
if _[17]and _[17]>0then
r=f[14][_[17]]if not av(_,i,a)or _[9]<=E[1]then
if aN then
aS(aN,e[21]*((al()&7)+1))end
_[1]=_[1]-_[11]_[2]=_[2]-_[12]_[3]=0
_[6]=C[_[4]][9]_[10]=m
_[11]=0
_[12]=0
_[17]=bH
_[19]=0
end
end
if _[6]==1then
h[a]=i
else
aj=sub(_,Q[1])M=Q[2+aj[1]//S+aj[2]//S*bM]if M~=bH then
M[0][#M[0]+1]=a
end
end
end
end
for a=1,8 do
if aD(a)and B[1][a+4]>0then
ai=a
end
end
r=f[14][ai]d[3]=d[3]-aC(3)*(L(aP,5,6)*1.5-6)aP=abs(aC(3))*aP+1
Z=d
for a=1,2 do
Z=ab(Z,U(d[3]-P+90*a,aC(a)*8.33))end
Z[9]=d[9]for a=1,8 do
u=av(Z,m,z,a)end
if u then
for a=1,2 do
d[30+a]=Z[a]-d[a]d[a]=Z[a]end
if d[9]<=E[1]then
d[9]=x(E[1],d[9]+4)d[19]=N(0,d[19])else
if d[9]>=E[2]-56then
d[9]=E[2]-56
d[19]=x(0,d[19])end
d[19]=d[19]-1
end
end
aZ=B[1]c=r[1]if aD(31)and ax<=0 and(c==0 or aZ[c]>=r[2])then
ag(3,m)ax=r[3]if c>0then
aZ[c]=aZ[c]-r[2]end
bK,ad=2048
for a,_ in w(h)do
if a~=z and _ and br(d,_,10)then
l=v(_,d)if l<bK then
if C[_[4]][23]&2>0then
ad=_
bK=l
end
end
end
end
bx(d,z)end
ax=ax-1
if aC(4)<0 then
_=ab(d,U(d[3],64))_[9]=d[9]b_,aA=aw(d,_,2,z)_=f[2][aA]if b_==i then
o[2]=aA
c,u=_[4]for a=14,16 do
u=u or B[1][a]>0 and c==a
end
if c==1 or u then
bb(_,_[5])elseif c>3000 and c<3005then
bz=ay(c-3000)end
end
end
end
o[1]=ai
for a=3,8 do
o[a]=d[f[19][4][a]]end
o[5]=z
o[13]=d[3]a=am
bA=m
H=1
aq=#h+#T
while H<3 and bA do
c=H*9+5
if a<=#h then
_=h[a]if a~=z then
if _ then
if _[10]then
_[10]=i
o[c]=a
for n=1,8 do
o[c+n]=_[f[19][1][n]]end
H=H+1
end
else
o[c]=-a
bC(h,a)H=H+1
aq=aq-1
end
end
else
_=T[a-#h]if _[8]then
_[8]=i
o[c]=a-#h+2^15
o[c+1]=_[1]o[c+2]=_[2]H=H+1
end
end
a=((a-2)%aq)+1
am=x(am,aq)bA=a~=am
end
am=a
for a=1,32 do
bj.setNumber(a,o[a])end
end
at=at+1
async.httpGet(8,bR)end
function onDraw()aW=screen.drawText
aW(26,137,bL)if as then
for a=1,4 do
b=124+a*7
aW(240,b,ay(B[1][a]))aW(230,b,B[1][13+a])end
end
end
