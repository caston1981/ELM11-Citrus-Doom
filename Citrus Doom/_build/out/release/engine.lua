bU=""

S=128
N=180
bs=output
bt=input
C=math
G=C.max
B=C.min
ar=C.floor
pi=C.pi
aC=bt.getNumber
ak=bt.getBool
ac=bs.setBool
o=true
i=false
x=ipairs
abs=C.abs
bv=table.remove
aI=string
function al(b,g)return{(b[1]+g[1]),(b[2]+g[2])}end
function sub(b,g)return{(b[1]-g[1]),(b[2]-g[2])}end
function bP(b)return C.sin(b/N*pi)end
function aa(b)return C.cos(b/N*pi)end
function K(b,g)return C.atan(g[2]-b[2],g[1]-b[1])*N/pi end
function J(b,g,aa)return G(B(aa,b),g)end
function v(b,g)return C.sqrt(((b[1]-g[1])^2)+((b[2]-g[2])^2))end
function V(b,g)return{aa(b)*g,bP(b)*g}end
function exp(b)return b[1],b[2]end
e={}bb=1
aA=3
aw=i
aW=o
af=2
aB=0
at=0
bg=0
W=0
aH=0
m=1
aM=0
bO=2
function ba(a,b,_)if a<32768then
_=e[7][a]return ba(_[_[3]*(b[2]-_[2])-_[4]*(b[1]-_[1])>0 and 8 or 7],b)else
a=e[5][e[6][a-32768][2]]return Z[e[3][e[2][a[4]][a[5]+6]][6]]end
end
function au(s,bi,w,bS,_,a,k)aj=h[w]f=A[aj[4]]av,ah=f[18],f[19]L=av
H=ba(#e[7],s)X,ab=exp(H)ag=sub(s,aO)O=Q[2+ag[1]//S+ag[2]//S*bI]or{}for a,_ in x(O[0]or{})do
c=h[_]if _~=w and c and aj[14]~=_ then
l=v(c,s)E=A[c[4]]if c[20]then
R=l-E[18]if R<L and E[23]&1>0 and(f[23]&1>0 or(s[9]+ah<c[9]or s[9]>c[9]+E[19])==i)then
aE=c
if bi==i then
return i
end
L=R
aR=K(s,c)end
end
if w==1 and not c[10]then
if l<50then
b=E[25]if b>0then
for p,t in x(z[b])do
if t>0 and z[1][p]<z[2][p]then
c=z
h[_]=i
c[1][p]=ar(B(c[1][p]+t,c[2][p]))if J(p,5,12)==p then
af=p-4
end
end
end
end
b=E[29]if b>0 then
b=e[11][b]for p=7,8 do
d[p]=J(d[p]+b[p*2-13],d[p],b[p*2-12])end
h[_]=i
end
end
end
end
end
aE=i
if ab-X<ah or X>s[9]+24then
return i
end
for a=1,#O do
_=e[2][O[a]]l,bG=bJ(s,T[_[1]],T[_[2]])if l<L then
if bS==1 and(_[3]&512>0 or w==1)and(_[4]==2 or w>1)then
aS(_,_[5])end
if(_[3]&1>0 and f[23]&1>0)or _[3]&4==0 then
if w>1 or aN>0then
L=l
aR=bG
end
else
bf,aF=B(_[9],ab),G(_[8],X)if B(s[9],ab-ah)+24<aF or G(s[9],X)+ah>bf or bf-aF<ah then
L=l
aR=bG
else
ab,X=bf,aF
end
end
end
end
H={X,ab}if bi then
if L~=av then
_=al(s,V(aR,L-av))s[1]=_[1]s[2]=_[2]end
return o
end
return L==av
end
function bJ(q,y,ao)M=v(y,q)bH=K(y,ao)+90
bm=bH-K(q,y)bK=-M*bP(bm)aN=M*aa(bm)aP=bH
if aN<0 then
aP=aP+N
end
if bK<0 then
return M,K(q,y)elseif bK>v(ao,y)then
return v(ao,q),K(q,ao)else
return abs(aN),aP
end
end
function aq(q,y,aT,w,_)aX=v(q,y)az=aX
aG=o
R,aY=exp(q)bQ,bR=exp(y)aV,aJ=exp(sub(y,q))aD,bu=q[9]+32,y[9]+32
u=i
for a,_ in x(e[2])do
bj=T[_[1]]bh,bz=exp(sub(T[_[2]],bj))bl,bA=exp(sub(q,bj))bq=bz*aV-bh*aJ
P=(bh*bA-bz*bl)/bq
by=(aV*bA-aJ*bl)/bq
if J(P,0,1)==P and J(by,0,1)==by then
bw={R+(P*aV),aY+(P*aJ)}l=v(q,bw)D=aD+(bu-aD)*(l/aX)if J(D,_[8]+1,_[9])~=D then
aG=i
if aT==1 then
return i
end
if l<az then
az=l
bo,bF=exp(bw)bM=D
bD=a
end
end
end
end
if aT>1 then
if aT==3 then
for a,_ in x(h)do
if _ and a~=w then
f=A[_[4]]if f[23]&1>0 and _[20]then
l=v(q,_)if l<az then
P=bJ(_,q,y)M=(l/aX)D=aD+(bu-aD)*M
if J(D,_[9],_[9]+f[19])==D and P<f[18]then
az=l
u=o
aG=i
bo=R+(bQ-R)*M
bF=aY+(bR-aY)*M
bM=D
bD=a
end
end
end
end
end
end
return aG,bD,{bo,bF,bM}end
return o
end
function httpReply(b,g,aa)bk=at//2
at=0
end
function ai()aH=aH%256+1
return e[13][1][aH]end
function ay(_,a)f=A[_[4]]if f[23]&2>0 and _[7]>0 then
_[8]=_[8]-(a+1)//2
_[7]=_[7]-a//2+B(_[8],0)_[8]=G(_[8],0)if ai()<f[10]then
_[6]=f[9]_[15]=0
_[23]=d
_[10]=o
end
end
end
function bL(b,g,as)return g[20]and abs(((K(b,g)-b[3]+N)%360)-N)<as and aq(b,g,1)end
function bd(F,w)br=am and(am[9]-F[9])*n[6]/v(am,F)or 0
for a=1,n[12]do
b={}for a=1,30 do
b[a]=F[a]end
b[4]=n[8]b[10]=o
b[14]=w
bE=(ai()/S-1)*n[10]bc=V(F[3]+bE,n[6])if n[7]>0then
h[#h+1]=b
f=A[b[4]]b[6]=f[3]b[9]=F[9]+n[13]b[11]=bc[1]b[12]=bc[2]b[17]=af
b[19]=br
else
c=al(F,bc)c[9]=d[9]+br
aU,ap,c=aq(F,c,3,w)if not aU then
bC=sub(c,V(F[3]+bE,1))h[#h+1]=b
b[1]=bC[1]b[2]=bC[2]b[6]=A[b[4]][3]b[9]=c[3]b[19]=1
if u then
b=h[ap]ay(b,n[9]*((ai()&3)+2))end
end
end
end
end
function aS(_,c)if c>-1 then
b=e[9][c]if b[1]>0 or aj[31]*_[10][2]-aj[32]*_[10][1]<0 then
g=Z[b[1]]ad[g and g[30]or#ad+1]={c,1,g or aj}_[4]=b[7]b=b[8]>0 and aS(_,b[8])end
else
aW=o
aA=-c
r[9]=-c
end
end
function bB()bN,am=2048
for a,_ in x(h)do
if a>1 and _ and bL(d,_,10)then
l=v(_,d)if l<bN then
if A[_[4]][23]&2>0then
am=_
bN=l
end
end
end
end
end
function onTick()ac(9,ak(32))ac(2,ak(11))ac(3,i)for k=1,3 do
if ak(32)and(not aw)or not e[21]then
aL=property.getText(bb)a=1
j=bU
_=aI.sub(aL,a,a)while _~=bUdo
c=aI.byte(_)if c>64then
j=(j..c-65)+0
if m==1then
bx=j
e[j]=e[j]or{}elseif m==2then
D=j
ae=0
elseif m==3then
aZ=j
else
if ae==0then
ae=D
aZ=aZ-1
aQ={}e[bx][#e[bx]+1]=aQ
end
aQ[#aQ+1]=j
ae=ae-1
m=G(ae,aZ)>0 and m-1 or 0
end
m=m+1
j=bU
else
j=j.._
end
a=a+1
_=aI.sub(aL,a,a)end
bb=bb+1
aw=aL==bU
end
end
if aw then
if aW then
ad,aW={}an=1
for a=1,10 do
e[a]=e[a+10*aA]end
h=e[1]T=e[4]Z=e[8]Q=e[10]aO,Q[1]=Q[1]z=e[12]A=e[15]for a=14,16 do
z[1][a]=0
end
aA=aA+1
for a,_ in x(h)do
for k=7,40 do
_[k]=0
end
bT=_[5]+1
_[7]=A[_[4]][4]_[9],_[10]=ba(#e[7],_)[1]if _[4]==1 then
if d then
_[7]=d[7]_[8]=d[8]end
d=_
elseif _[5]&bO<1then
h[a]=i
end
end
bI=aO[3]end
for a,_ in x(e[2])do
_[10]=sub(T[_[2]],T[_[1]])if _[3]&4>0 then
f,E=Z[e[3][_[6]][6]],Z[e[3][_[7]][6]]_[8]=G(f[1],E[1])_[9],f[30],E[30]=B(f[2],E[2])else
_[8],_[9]=0,0
end
end
r={}for a=1,32 do
r[a]=0
end
W=B(W+1/bk,2/35)ac(1,W>=0)if W>=0 then
W=W-1/35
bg=bg+1
for a=2,#Q do
Q[a][0]={}end
for a,t in x(ad)do
_=e[9][t[1]]c=t[3]b=_[2]f=c[b]c[b]=J(_[3],f-_[4],f+_[4])+0
f=c[b]if f==_[3]then
ad[a]=t[2]==_[5]and{_[6],1,c}or{t[1],t[2]+1,c}if _[6]==0 then
bv(ad,a)end
end
c[10]=c[10]or f~=t
c[30]=a
end
d[7]=G(5,d[7])for a,_ in x(h)do
if _ then
for k,t in x({1,2,9})do
_[t]=_[t]+_[t+10]end
_[15]=_[15]+1
f=A[_[4]]if _[7]<=0 and _[20]then
_[15]=0
_[6]=f[_[7]<=-f[4]and f[15]>1 and 15or 14]_[10],_[20]=o
if f[27]>0 then
c={}for k=1,30 do
c[k]=_[k]end
c[4]=f[27]c[6]=f[28]h[#h+1]=c
end
end
be=e[16][_[6]]if _[15]>=be[2]and be[2]~=-1then
_[6]=be[4]_[15]=0
Y=e[16][_[6]][3]if Y==1 then
for a,m in x(h)do
if m then
j=S-v(_,m)if j>0 then
ay(m,j)end
end
end
elseif Y==2then
if bL(_,d,90)then
_[23]=d
_[6]=f[5]end
elseif Y==3then
as=ar(K(_,_[23])/45+.5)*45
u=i
m=1
bn=f[23]&4>0
while m<5 and not u do
j=al(_,V(as+e[19][2][m],8))j[9]=_[9]u=au(j,i,a,m)and(H[1]>=j[9]-24 or bn)m=m+1
end
if u then
for k=1,2 do
_[30+k]=j[k]-_[k]_[k]=j[k]end
_[3]=as
_[10]=o
else
au(_,i,a)end
_[9]=bn and _[9]or H[1]b=v(_,_[23])if f[13]>0 and aq(_,_[23],1)and B(b,230)<ai()then
_[6]=f[13]end
if b<64 and f[12]>0then
_[6]=f[12]end
elseif Y==5then
for a=1,11 do
d[3]=d[3]+e[19][9][a]n=e[14][23]bB()bd(d,1)end
d[3]=d[3]-20
elseif Y>9 and _[20]then
_[3]=K(_,_[23])n=e[14][Y]_[10]=o
am=_[23]bd(_,a)end
end
if _[17]and _[17]>0then
n=e[14][_[17]]if not au(_,i,a)or _[9]<=H[1]then
if aE then
ay(aE,f[21]*((ai()&7)+1))end
_[1]=_[1]-_[11]_[2]=_[2]-_[12]_[3]=0
_[6]=A[_[4]][5]_[10]=o
_[11]=0
_[12],_[17]=0
_[19]=0
end
end
if _[6]==1then
h[a]=i
else
ag=sub(_,aO)O=Q[2+ag[1]//S+ag[2]//S*bI]if O then
O[0][#O[0]+1]=a
end
end
end
end
for a=1,8 do
if ak(a)and z[1][a+4]>0then
af=a
end
end
n=e[14][af]d[3]=d[3]-aC(3)*(J(aM,5,6)*1.5-6)aM=abs(aC(3))*aM+1
U=d
for a=1,2 do
U=al(U,V(d[3]-N+90*a,aC(a)*8.33))end
U[9]=d[9]for a=1,8 do
u=au(U,o,1,a)end
if u then
for a=1,2 do
d[30+a]=U[a]-d[a]d[a]=U[a]end
if d[9]>H[1]then
d[19]=d[19]-1
else
d[9]=B(H[1],d[9]+4)d[19]=G(0,d[19])end
else
d[19]=0
d[9]=H[1]u=bg%4>0 or ay(d,10)end
b_=z[1]c=n[1]if ak(31)and aB<=0 and(c==0 or b_[c]>=n[2])then
ac(3,o)aB=n[3]if c>0then
b_[c]=b_[c]-n[2]end
bB()bd(d,1)end
aB=aB-1
if aC(4)<0 then
_=al(d,V(d[3],64))_[9]=d[9]aU,ap=aq(d,_,2,1)_=e[2][ap]if aU==i then
r[2]=ap
c,u=_[4]for a=14,16 do
u=u or z[1][a]>0 and c==a
end
if c==1 or u then
aS(_,_[5])elseif c>3000 and c<3005then
bO=ar(c-3000)end
end
end
end
r[1]=af
for a=3,8 do
r[a]=d[e[19][4][a]]end
r[5]=1
r[13]=d[3]a=an
bp=o
I=1
ax=#h+#Z
while I<3 and bp do
c=I*9+5
if a<=#h then
_=h[a]if a~=1 then
if _ then
if _[10]then
_[10]=i
r[c]=a
for k=1,8 do
r[c+k]=_[e[19][1][k]]end
I=I+1
end
else
r[c]=-a
bv(h,a)I=I+1
ax=ax-1
end
end
else
_=Z[a-#h]if _[10]then
_[10]=i
r[c]=a-#h+2^15
for k=1,6 do
r[c+k]=_[k]end
I=I+1
end
end
a=((a-2)%ax)+1
an=B(an,ax)bp=a~=an
end
an=a
for a=1,32 do
bs.setNumber(a,r[a])end
end
at=at+1
async.httpGet(8,bU)end
function onDraw()aK=screen.drawText
aK(26,137,bk)if aw then
for a=1,4 do
b=124+a*7
aK(240,b,ar(z[1][a]))aK(230,b,z[1][13+a])end
end
end
