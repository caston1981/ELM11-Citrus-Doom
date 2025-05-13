bS=""

T=128
M=180
bs=output
bu=input
G=math
N=G.max
x=G.min
ar=G.floor
pi=G.pi
ao=bu.getNumber
ap=bu.getBool
an=bs.setBool
m=true
i=false
w=ipairs
abs=G.abs
bM=table.remove
aQ=string
function af(b,g)return{(b[1]+g[1]),(b[2]+g[2])}end
function sub(b,g)return{(b[1]-g[1]),(b[2]-g[2])}end
function bC(b)return G.sin(b/M*pi)end
function ab(b)return G.cos(b/M*pi)end
function H(b,g)return G.atan(g[2]-b[2],g[1]-b[1])*M/pi end
function I(b,g,ab)return N(x(ab,b),g)end
function z(b,g)return G.sqrt(((b[1]-g[1])^2)+((b[2]-g[2])^2))end
function Y(b,g)return{ab(b)*g,bC(b)*g}end
function exp(b)return b[1],b[2]end
e={}aK=1
aB=3
ax=i
aG=m
aj=2
v=0
as=0
ay=0
V=0
b_=0
l=1
bb=0
bm=2
function ba(a,b,_)if a<32768then
_=e[7][a]return ba(_[_[3]*(b[2]-_[2])-_[4]*(b[1]-_[1])>0 and 8 or 7],b)else
a=e[5][e[6][a-32768][2]]return U[e[3][e[2][a[4]][a[5]+6]][6]]end
end
function az(r,bp,A,bP,_,a,k)ac=h[A]f=B[ac[4]]aw,aq=f[18],f[19]J=aw
D=ba(#e[7],r)Z,ah=exp(D)al=sub(r,Q[1])P=Q[2+al[1]//T+al[2]//T*bJ]for a,_ in w(P[0])do
c=h[_]if _~=A and c and ac[14]~=_ then
n=z(c,r)E=B[c[4]]if c[20]then
R=n-E[18]if R<J and E[23]&1>0 and(f[23]&1>0 or(r[9]+aq<c[9]or r[9]>c[9]+E[19])==i)then
bd=c
if bp==i then
return i
end
J=R
aY=H(r,c)end
end
if A==v and not c[10]then
if n<50then
b=E[25]if b>0then
for o,s in w(C[b])do
if s>0 and C[1][o]<C[2][o]then
c=C
h[_]=i
c[1][o]=ar(x(c[1][o]+s,c[2][o]))if I(o,5,12)==o then
aj=o-4
end
end
end
end
b=E[29]if b>0 then
b=e[11][b]for o=7,8 do
d[o]=I(d[o]+b[o*2-13],d[o],b[o*2-12])end
h[_]=i
end
end
end
end
end
bd=i
if ah-Z<aq or Z>r[9]+24then
return i
end
for a=1,#P do
_=e[2][P[a]]n,bi=bE(r,W[_[1]],W[_[2]])if n<J then
if bP==1 and(_[3]&512>0 or A==v)and(_[4]==2 or A~=v)then
aU(_,_[5])end
if(_[3]&1>0 and f[23]&1>0)or _[3]&4==0 then
J=n
aY=bi
else
bt,bI=x(_[9],ah),N(_[8],Z)if x(r[9],ah-aq)+24<bI or N(r[9],Z)+aq>bt then
J=n
aY=bi
else
ah,Z=bt,bI
end
end
end
end
D={Z,ah}if bp then
if J~=aw then
_=af(r,Y(aY,J-aw))r[1]=_[1]r[2]=_[2]end
return m
end
return J==aw
end
function bE(q,y,aD)O=z(y,q)bo=H(y,aD)+90
bK=bo-H(q,y)bg=-O*bC(bK)be=O*ab(bK)aL=bo
if be<0 then
aL=aL+M
end
if bg<0 then
return O,H(q,y)elseif bg>z(aD,y)then
return z(aD,q),H(q,aD)else
return abs(be),aL
end
end
function aA(q,y,aO,A,_)aJ=z(q,y)aV=aJ
aI=m
R,aN=exp(q)bO,bQ=exp(y)aZ,aF=exp(sub(y,q))av,bn=q[9]+32,y[9]+32
u=i
for a,_ in w(e[2])do
bN=W[_[1]]bF,bL=exp(sub(W[_[2]],bN))bv,bk=exp(sub(q,bN))bx=bL*aZ-bF*aF
X=(bF*bk-bL*bv)/bx
bB=(aZ*bk-aF*bv)/bx
if I(X,0,1)==X and I(bB,0,1)==bB then
br={R+(X*aZ),aN+(X*aF)}n=z(q,br)F=av+(bn-av)*(n/aJ)if I(F,_[8],_[9])~=F then
aI=i
if aO==1 then
return i
end
if n<aV then
aV=n
bD,bz=exp(br)bf=F
ag=a
end
end
end
end
if aO>1 then
if aO==3 then
for a,_ in w(h)do
if _ and a~=A then
f=B[_[4]]if f[23]&1>0 and _[20]then
n=z(q,_)if n<aV then
X=bE(_,q,y)O=(n/aJ)F=av+(bn-av)*O
if I(F,_[9],_[9]+f[19])==F and X<f[18]then
u=m
aI=i
bD=R+(bO-R)*O
bz=aN+(bQ-aN)*O
bf=F
ag=a
end
end
end
end
end
end
return aI,ag,{bD,bz,bf}end
return m
end
function httpReply(b,g,ab)bH=ay//2
ay=0
end
function ak()b_=b_%256+1
return e[13][1][b_]end
function aE(_,a)f=B[_[4]]if f[23]&2>0 and _[7]>0 then
_[8]=_[8]-(a+1)//2
_[7]=_[7]-a//2+x(_[8],0)_[8]=N(_[8],0)if ak()<f[10]then
_[6]=f[9]_[15]=0
_[23]=d
_[10]=m
end
end
end
function bq(b,g,aC)return g[20]and abs(((H(b,g)-b[3]+M)%360)-M)<aC and aA(b,g,1)end
function aR(L,A)bj=ad and(ad[9]-L[9])*p[6]/z(ad,L)or 0
for a=1,p[12]do
b={}for a=1,30 do
b[a]=L[a]end
b[4]=p[8]b[10]=m
b[14]=A
bw=(ak()/T-1)*p[10]aM=Y(L[3]+bw,p[6])if p[7]>0then
h[#h+1]=b
f=B[b[4]]b[6]=f[3]b[9]=L[9]+32
b[11]=aM[1]b[12]=aM[2]b[17]=aj
b[19]=bj
else
c=af(L,aM)c[9]=d[9]+bj
aW,au,c=aA(L,c,3,A)if not aW then
bl=sub(c,Y(L[3]+bw,1))h[#h+1]=b
b[1]=bl[1]b[2]=bl[2]b[6]=B[b[4]][3]b[9]=c[3]b[19]=1
if u then
b=h[au]aE(b,p[9]*((ak()&3)+2))end
end
end
end
end
function aU(_,c)if c>-1 then
b=e[9][c]if b[1]>0 or ac[31]*_[10][2]-ac[32]*_[10][1]<0 then
g=U[b[1]]ae[g and g[30]or#ae+1]={c,1,g or ac}_[4]=b[7]b=b[8]>0 and aU(_,b[8])end
else
aG=m
aB=-c
t[9]=-c
end
end
function bA()bG,ad=2048
for a,_ in w(h)do
if a~=v and _ and bq(d,_,10)then
n=z(_,d)if n<bG then
if B[_[4]][23]&2>0then
ad=_
bG=n
end
end
end
end
end
function onTick()an(9,ap(32))an(2,i)an(3,i)for k=1,3 do
if ap(32)and(not ax)or not e[21]then
aP=property.getText(aK..bS)if aP~=bS then
a=1
j=bS
_=aQ.sub(aP,a,a)while _~=bSdo
c=aQ.byte(_)if c>64 or _==bSthen
j=(j..(c-65))+0
if l==1then
ag=j
if e[j]==by then
e[j]={}end
l=2
elseif l==2then
F=j
ai=0
l=3
elseif l==3then
aT=j
l=4
else
if ai==0then
ai=F
aT=aT-1
aH={}e[ag][#e[ag]+1]=aH
end
aH[#aH+1]=j
ai=ai-1
if N(ai,aT)==0then
l=1
end
end
j=bS
else
j=j.._
end
a=a+1
_=aQ.sub(aP,a,a)end
aK=aK+1
else
ax=m
end
end
end
if ax then
if aG then
ae,aG={}am=1
for a=1,10 do
e[a]=e[a+10*aB]end
h=e[1]W=e[4]U=e[8]Q=e[10]C=e[12]B=e[15]for a=14,16 do
C[1][a]=0
end
aB=aB+1
for a,_ in w(h)do
for k=7,40 do
_[k]=0
end
bR=_[5]+1
_[7]=B[_[4]][4]_[9],_[10]=ba(#e[7],_)[1]if _[4]==1 then
if d then
_[7]=d[7]_[8]=d[8]end
v=a
d=_
elseif _[5]&bm<1then
h[a]=i
end
end
bJ=Q[1][3]end
for a,_ in w(e[2])do
_[10]=sub(W[_[2]],W[_[1]])if _[3]&4>0 then
f,E=U[e[3][_[6]][6]],U[e[3][_[7]][6]]_[8]=N(f[1],E[1])_[9],f[30],E[30]=x(f[2],E[2])else
_[8],_[9]=0,0
end
end
t={}for a=1,32 do
t[a]=0
end
V=x(V+1/bH,2/35)an(1,V>=0)if V>=0 then
V=V-1/35
for a=2,#Q do
Q[a][0]={}end
for a,s in w(ae)do
_=e[9][s[1]]c=s[3]b=_[2]f=c[b]c[b]=I(_[3],f-_[4],f+_[4])+0
f=c[b]if abs(f-_[3])<.1then
ae[a]=s[2]==_[5]and{_[6],1,c}or{s[1],s[2]+1,c}if _[6]==0 then
bM(ae,a)end
end
c[10]=c[10]or f~=s
c[30]=a
end
for a,_ in w(h)do
if _ then
for k,s in w({1,2,9})do
_[s]=_[s]+_[s+10]end
_[15]=_[15]+1
f=B[_[4]]if _[7]<=0 and _[20]then
_[15]=0
_[6]=f[_[7]<=-f[4]and f[15]>1 and 15or 14]_[10],_[20]=m
if f[27]>0 then
c={}for k=1,30 do
c[k]=_[k]end
c[4]=f[27]c[6]=f[28]h[#h+1]=c
end
end
aS=e[16][_[6]]if _[15]>=aS[2]and aS[2]~=-1then
_[6]=aS[4]_[15]=0
aa=e[16][_[6]][3]if aa==1 then
for a,l in w(h)do
if l then
j=T-z(_,l)if j>0 then
aE(l,j)end
end
end
elseif aa==2then
if bq(_,d,90)then
_[23]=d
_[6]=f[5]end
elseif aa==3then
aC=ar(H(_,_[23])/45+.5)*45
u=i
l=1
while l<5 and not u do
j=af(_,Y(aC+e[19][2][l],8))j[9]=_[9]u=az(j,i,a,l)and D[1]>=j[9]-24
l=l+1
end
if u then
for k=1,2 do
_[30+k]=j[k]-_[k]_[k]=j[k]end
_[3]=aC
_[10]=m
else
az(_,i,a)end
if f[23]&4<1 then
_[9]=D[1]end
b=z(_,_[23])if f[13]>0 and aA(_,_[23],1)and x(b,230)<ak()then
_[6]=f[13]end
if b<64 and f[12]>0then
_[6]=f[12]end
elseif aa==5then
for a=1,11 do
d[3]=d[3]+e[19][9][a]p=e[14][23]bA()aR(d,v)end
d[3]=d[3]-20
elseif aa>9then
_[3]=H(_,_[23])p=e[14][aa]_[10]=m
ad=_[23]aR(_,a)end
end
if _[17]and _[17]>0then
p=e[14][_[17]]if not az(_,i,a)or _[9]<=D[1]then
if bd then
aE(bd,f[21]*((ak()&7)+1))end
_[1]=_[1]-_[11]_[2]=_[2]-_[12]_[3]=0
_[6]=B[_[4]][9]_[10]=m
_[11]=0
_[12]=0
_[17]=by
_[19]=0
end
end
if _[6]==1then
h[a]=i
else
al=sub(_,Q[1])P=Q[2+al[1]//T+al[2]//T*bJ]if P~=by then
P[0][#P[0]+1]=a
end
end
end
end
for a=1,8 do
if ap(a)and C[1][a+4]>0then
aj=a
end
end
p=e[14][aj]d[3]=d[3]-ao(3)*(I(bb,5,6)*1.5-6)bb=abs(ao(3))*bb+1
S=d
for a=1,2 do
S=af(S,Y(d[3]-M+90*a,ao(a)*8.33))end
S[9]=d[9]for a=1,8 do
u=az(S,m,v,a)end
if u then
for a=1,2 do
d[30+a]=S[a]-d[a]d[a]=S[a]end
if d[9]<=D[1]then
d[9]=x(D[1],d[9]+4)d[19]=N(0,d[19])else
if d[9]>=D[2]-56then
d[9]=D[2]-56
d[19]=x(0,d[19])end
d[19]=d[19]-1
end
end
bc=C[1]c=p[1]if ap(31)and as<=0 and(c==0 or bc[c]>=p[2])then
an(3,m)as=p[3]if c>0then
bc[c]=bc[c]-p[2]end
bA()aR(d,v)end
as=as-1
if ao(4)<0 then
_=af(d,Y(d[3],64))_[9]=d[9]aW,au=aA(d,_,2,v)_=e[2][au]if aW==i then
t[2]=au
c,u=_[4]for a=14,16 do
u=u or C[1][a]>0 and c==a
end
if c==1 or u then
aU(_,_[5])elseif c>3000 and c<3005then
bm=ar(c-3000)end
end
end
end
t[1]=aj
for a=3,8 do
t[a]=d[e[19][4][a]]end
t[5]=v
t[13]=d[3]a=am
bh=m
K=1
at=#h+#U
while K<3 and bh do
c=K*9+5
if a<=#h then
_=h[a]if a~=v then
if _ then
if _[10]then
_[10]=i
t[c]=a
for k=1,8 do
t[c+k]=_[e[19][1][k]]end
K=K+1
end
else
t[c]=-a
bM(h,a)K=K+1
at=at-1
end
end
else
_=U[a-#h]if _[10]then
_[10]=i
t[c]=a-#h+2^15
for k=1,6 do
t[c+k]=_[k]end
K=K+1
end
end
a=((a-2)%at)+1
am=x(am,at)bh=a~=am
end
am=a
for a=1,32 do
bs.setNumber(a,t[a])end
end
ay=ay+1
async.httpGet(8,bS)end
function onDraw()aX=screen.drawText
aX(26,137,bH)if ax then
for a=1,4 do
b=124+a*7
aX(240,b,ar(C[1][a]))aX(230,b,C[1][13+a])end
end
end
