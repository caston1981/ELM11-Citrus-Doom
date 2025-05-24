bU=""

Z=128
N=180
bE=output
bo=input
D=math
J=D.max
B=D.min
aq=D.floor
pi=D.pi
ax=bo.getNumber
an=bo.getBool
ac=bE.setBool
o=true
i=false
x=ipairs
abs=D.abs
bv=table.remove
ba=string
function ae(b,g)return{(b[1]+g[1]),(b[2]+g[2])}end
function sub(b,g)return{(b[1]-g[1]),(b[2]-g[2])}end
function bL(b)return D.sin(b/N*pi)end
function al(b)return D.cos(b/N*pi)end
function H(b,g)return D.atan(g[2]-b[2],g[1]-b[1])*N/pi end
function G(b,g,al)return J(B(al,b),g)end
function w(b,g)return D.sqrt(((b[1]-g[1])^2)+((b[2]-g[2])^2))end
function R(b,g)return{al(b)*g,bL(b)*g}end
function exp(b)return b[1],b[2]end
e={}bc=1
aB=3
aD=i
be=o
af=2
at=0
ap=0
aE=0
W=0
b_=0
m=1
aN=0
bl=2
function aR(a,b,_)if a<32768then
_=e[7][a]return aR(_[_[3]*(b[2]-_[2])-_[4]*(b[1]-_[1])>0 and 8 or 7],b)else
a=e[5][e[6][a-32768][2]]return X[e[3][e[2][a[4]][a[5]+6]][6]]end
end
function au(r,bu,v,bR,_,a,k)ak=h[v]f=z[ak[4]]aC,am=f[18],f[19]L=aC
C=aR(#e[7],r)V,ah=exp(C)aj=sub(r,bb)M=T[2+aj[1]//Z+aj[2]//Z*bD]or{}for a,_ in x(M[0]or{})do
c=h[_]if _~=v and c and ak[14]~=_ then
l=w(c,r)F=z[c[4]]if c[20]then
S=l-F[18]if S<L and F[23]&1>0 and(f[23]&1>0 or(r[9]+am<c[9]or r[9]>c[9]+F[19])==i)then
aJ=c
if bu==i then
return i
end
L=S
aY=H(r,c)end
end
if v==1 and not c[10]then
if l<50then
b=F[25]if b>0then
for p,s in x(A[b])do
if s>0 and A[1][p]<A[2][p]then
c=A
h[_]=i
c[1][p]=aq(B(c[1][p]+s,c[2][p]))if G(p,5,12)==p then
af=p-4
end
end
end
end
b=F[29]if b>0 then
b=e[11][b]for p=7,8 do
d[p]=G(d[p]+b[p*2-13],d[p],b[p*2-12])end
h[_]=i
end
end
end
end
end
aJ=i
if ah-V<am or V>r[9]+24then
return i
end
for a=1,#M do
_=e[2][M[a]]l,bj=bB(r,U[_[1]],U[_[2]])if l<L then
if(_[3]&1>0 and f[23]&1>0)or _[3]&4==0 then
if v>1 or bf>0then
L=l
aY=bj
end
else
bd,aQ=B(_[9],ah),J(_[8],V)if B(r[9],ah-am)+24<aQ or J(r[9],V)+am>bd or bd-aQ<am then
L=l
aY=bj
else
if bR==1 and(_[3]&512>0 or v==1)and(_[4]==2 or v>1)then
aZ(_,_[5])end
ah,V=bd,aQ
end
end
end
end
C={V,ah}if bu then
if L~=aC then
_=ae(r,R(aY,L-aC))r[1]=_[1]r[2]=_[2]end
return o
end
return L==aC
end
function bB(q,y,as)O=w(y,q)bp=H(y,as)+90
bq=bp-H(q,y)br=-O*bL(bq)bf=O*al(bq)bg=bp
if bf<0 then
bg=bg+N
end
if br<0 then
return O,H(q,y)elseif br>w(as,y)then
return w(as,q),H(q,as)else
return abs(bf),bg
end
end
function ao(q,y,aS,v,_)aK=w(q,y)az=aK
aO=o
S,aP=exp(q)bQ,bS=exp(y)aG,aV=exp(sub(y,q))aw,bJ=q[9]+32,y[9]+32
t=i
for a,_ in x(e[2])do
bN=U[_[1]]by,bG=exp(sub(U[_[2]],bN))bi,bt=exp(sub(q,bN))bP=bG*aG-by*aV
Q=(by*bt-bG*bi)/bP
bO=(aG*bt-aV*bi)/bP
if G(Q,0,1)==Q and G(bO,0,1)==bO then
bn={S+(Q*aG),aP+(Q*aV)}l=w(q,bn)E=aw+(bJ-aw)*(l/aK)if G(E,_[8]+1,_[9])~=E then
aO=i
if aS==1 then
return i
end
if l<az then
az=l
bx,bk=exp(bn)bM=E
bC=a
end
end
end
end
if aS>1 then
if aS==3 then
for a,_ in x(h)do
if _ and a~=v then
f=z[_[4]]if f[23]&1>0 and _[20]then
l=w(q,_)if l<az then
Q=bB(_,q,y)O=(l/aK)E=aw+(bJ-aw)*O
if G(E,_[9],_[9]+f[19])==E and Q<f[18]then
az=l
t=o
aO=i
bx=S+(bQ-S)*O
bk=aP+(bS-aP)*O
bM=E
bC=a
end
end
end
end
end
end
return aO,bC,{bx,bk,bM}end
return o
end
function httpReply(b,g,al)bF=ap//2
ap=0
end
function ad()b_=b_%256+1
return e[13][1][b_]end
function ay(_,a)f=z[_[4]]if f[23]&2>0 and _[7]>0 then
_[8]=_[8]-(a+1)//2
_[7]=_[7]-a//2+B(_[8],0)_[8]=J(_[8],0)if ad()<f[10]then
_[6]=f[9]_[15]=0
_[23]=d
_[10]=o
end
end
end
function bA(b,g,av)return g[20]and abs(((H(b,g)-b[3]+N)%360)-N)<av and ao(b,g,1)end
function aU(I,v)bI=ag and(ag[9]-I[9])*n[6]/w(ag,I)or 0
for a=1,n[12]do
b={}for a=1,30 do
b[a]=I[a]end
b[4]=n[8]b[10]=o
b[14]=v
bH=(ad()/Z-1)*n[10]aX=R(I[3]+bH,n[6])if n[7]>0then
h[#h+1]=b
f=z[b[4]]b[6]=f[3]b[9]=I[9]+n[13]b[11]=aX[1]b[12]=aX[2]b[17]=af
b[19]=bI
else
c=ae(I,aX)c[9]=d[9]+bI
aM,aA,c=ao(I,c,3,v)if not aM then
bs=sub(c,R(I[3]+bH,1))h[#h+1]=b
b[1]=bs[1]b[2]=bs[2]b[6]=z[b[4]][3]b[9]=c[3]b[19]=1
if t then
b=h[aA]ay(b,n[9]*((ad()&3)+2))end
end
end
end
end
function aZ(_,c)if c>-1 then
b=e[9][c]if b[1]>0 or ak[31]*_[10][2]-ak[32]*_[10][1]<0 then
g=X[b[1]]aa[g and g[30]or#aa+1]={c,1,g or ak}_[4]=b[7]b=b[8]>0 and aZ(_,b[8])end
else
be=o
aB=-c
u[9]=-c
end
end
function bm()bz,ag=2048
for a,_ in x(h)do
if a>1 and _ and bA(d,_,10)then
l=w(_,d)if l<bz then
if z[_[4]][23]&2>0then
ag=_
bz=l
end
end
end
end
end
function onTick()ac(9,an(32))ac(2,an(11))ac(3,i)for k=1,3 do
if an(32)and(not aD)or not e[21]then
aI=property.getText(bc)a=1
j=bU
_=ba.sub(aI,a,a)while _~=bUdo
c=ba.byte(_)if c>64then
j=(j..c-65)+0
if m==1then
bh=j
e[j]=e[j]or{}elseif m==2then
E=j
ai=0
elseif m==3then
aH=j
else
if ai==0then
ai=E
aH=aH-1
aL={}e[bh][#e[bh]+1]=aL
end
aL[#aL+1]=j
ai=ai-1
m=J(ai,aH)>0 and m-1 or 0
end
m=m+1
j=bU
else
j=j.._
end
a=a+1
_=ba.sub(aI,a,a)end
bc=bc+1
aD=aI==bU
end
end
if aD then
if be then
aa,be={}ab=1
for a=1,10 do
e[a]=e[a+10*aB]end
h=e[1]U=e[4]X=e[8]T=e[10]bb,T[1]=T[1]A=e[12]z=e[15]for a=14,16 do
A[1][a]=0
end
aB=aB+1
for a,_ in x(h)do
for k=7,40 do
_[k]=0
end
bT=_[5]+1
_[7]=z[_[4]][4]_[9],_[10]=aR(#e[7],_)[1]if _[4]==1 then
if d then
_[7]=d[7]_[8]=d[8]end
d=_
elseif _[5]&bl<1then
h[a]=i
end
end
bD=bb[3]end
for a,_ in x(e[2])do
_[10]=sub(U[_[2]],U[_[1]])if _[3]&4>0 then
f,F=X[e[3][_[6]][6]],X[e[3][_[7]][6]]_[8]=J(f[1],F[1])_[9],f[30],F[30]=B(f[2],F[2])else
_[8],_[9]=0,0
end
end
u={}for a=1,32 do
u[a]=0
end
W=B(W+1/bF,2/35)ac(1,W>=0)if W>=0 then
W=W-1/35
aE=aE+1
for a=2,#T do
T[a][0]={}end
for a,s in x(aa)do
_=e[9][s[1]]c=s[3]b=_[2]f=c[b]c[b]=G(_[3],f-_[4],f+_[4])+0
f=c[b]if f==_[3]then
aa[a]=s[2]==_[5]and{_[6],1,c}or{s[1],s[2]+1,c}if _[6]==0 then
bv(aa,a)end
end
c[10]=c[10]or f~=s
c[30]=a
end
d[7]=J(5,d[7])for a,_ in x(h)do
if _ then
for k,s in x({1,2,9})do
_[s]=_[s]+_[s+10]end
_[15]=_[15]+1
f=z[_[4]]if _[7]<=0 and _[20]then
_[15]=0
_[6]=f[_[7]<=-f[4]and f[15]>1 and 15or 14]_[10],_[20]=o
if f[27]>0 then
c={}for k=1,30 do
c[k]=_[k]end
c[4]=f[27]c[6]=f[28]h[#h+1]=c
end
end
aT=e[16][_[6]]if _[15]>=aT[2]and aT[2]~=-1then
_[6]=aT[4]_[15]=0
P=e[16][_[6]][3]if P==1 then
for a,m in x(h)do
if m then
j=Z-w(_,m)if j>0 then
ay(m,j)end
end
end
elseif P==2then
if bA(_,d,90)then
_[23]=d
_[6]=f[5]end
elseif P==3then
av=aq(H(_,_[23])/45+.5)*45
t=i
m=1
bK=f[23]&4>0
while m<5 and not t do
j=ae(_,R(av+e[19][2][m],8))j[9]=_[9]t=au(j,i,a,m)and(C[1]>=j[9]-24 or bK)m=m+1
end
if t then
for k=1,2 do
_[30+k]=j[k]-_[k]_[k]=j[k]end
_[3]=av
_[10]=o
else
au(_,i,a)end
_[9]=bK and _[9]or C[1]b=w(_,_[23])if f[13]>0 and ao(_,_[23],1)and B(b,230)<ad()then
_[6]=f[13]end
if b<64 and f[12]>0then
_[6]=f[12]end
elseif P==5then
for a=1,11 do
d[3]=d[3]+e[19][9][a]n=e[14][23]bm()aU(d,1)end
d[3]=d[3]-20
elseif P>9 and _[20]then
_[3]=H(_,_[23])n=e[14][P]_[10]=o
ag=_[23]aU(_,a)end
end
if _[17]and _[17]>0then
n=e[14][_[17]]if not au(_,i,a)or _[9]<=C[1]then
if aJ then
ay(aJ,f[21]*((ad()&7)+1))end
_[1]=_[1]-_[11]_[2]=_[2]-_[12]_[3]=0
_[6]=z[_[4]][5]_[10]=o
_[11]=0
_[12],_[17]=0
_[19]=0
end
end
if _[6]==1then
h[a]=i
else
aj=sub(_,bb)M=T[2+aj[1]//Z+aj[2]//Z*bD]if M then
M[0][#M[0]+1]=a
end
end
end
end
for a=1,8 do
if an(a)and A[1][a+4]>0then
af=a
end
end
n=e[14][af]d[3]=d[3]-ax(3)*(G(aN,5,6)*1.5-6)aN=abs(ax(3))*aN+1
Y=d
for a=1,2 do
Y=ae(Y,R(d[3]-N+90*a,ax(a)*8.33))end
Y[9]=d[9]for a=1,8 do
t=au(Y,o,1,a)end
if t then
for a=1,2 do
d[30+a]=Y[a]-d[a]d[a]=Y[a]end
if d[9]>C[1]then
d[19]=d[19]-1
else
d[9]=B(C[1],d[9]+4)d[19]=J(0,d[19])end
else
d[19]=0
d[9]=C[1]t=aE%4>0 or C[6]<18 or ay(d,10)end
aW=A[1]c=n[1]if an(31)and at<=0 and(c==0 or aW[c]>=n[2])then
ac(3,o)at=n[3]if c>0then
aW[c]=aW[c]-n[2]end
bm()aU(d,1)end
at=at-1
if ax(4)<0 then
_=ae(d,R(d[3],64))_[9]=d[9]aM,aA=ao(d,_,2,1)_=e[2][aA]if aM==i then
u[2]=aA
c,t=_[4]for a=14,16 do
t=t or A[1][a]>0 and c==a
end
if c==1 or t then
aZ(_,_[5])elseif c>3000 and c<3005then
bl=aq(c-3000)end
end
end
end
u[1]=af
for a=3,8 do
u[a]=d[e[19][4][a]]end
u[5]=1
u[13]=d[3]a=ab
bw=o
K=1
ar=#h+#X
while K<3 and bw do
c=K*9+5
if a<=#h then
_=h[a]if a~=1 then
if _ then
if _[10]then
_[10]=i
u[c]=a
for k=1,8 do
u[c+k]=_[e[19][1][k]]end
K=K+1
end
else
u[c]=-a
bv(h,a)K=K+1
ar=ar-1
end
end
else
_=X[a-#h]if _[10]then
_[10]=i
u[c]=a-#h+2^15
for k=1,6 do
u[c+k]=_[k]end
K=K+1
end
end
a=((a-2)%ar)+1
ab=B(ab,ar)bw=a~=ab
end
ab=a
for a=1,32 do
bE.setNumber(a,u[a])end
end
ap=ap+1
async.httpGet(8,bU)end
function onDraw()aF=screen.drawText
aF(26,137,bF)if aD then
for a=1,4 do
b=124+a*7
aF(240,b,aq(A[1][a]))aF(230,b,A[1][13+a])end
end
end
