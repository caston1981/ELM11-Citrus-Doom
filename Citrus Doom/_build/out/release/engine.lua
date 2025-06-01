bU=""

Z=128
L=180
bu=output
bO=input
C=math
M=C.max
z=C.min
aw=C.floor
pi=C.pi
aq=bO.getNumber
ai=bO.getBool
ac=bu.setBool
o=true
j=false
y=ipairs
abs=C.abs
bh=table.remove
be=string
function ag(b,g)return{(b[1]+g[1]),(b[2]+g[2])}end
function sub(b,g)return{(b[1]-g[1]),(b[2]-g[2])}end
function bC(b)return C.sin(b/L*pi)end
function am(b)return C.cos(b/L*pi)end
function K(b,g)return C.atan(g[2]-b[2],g[1]-b[1])*L/pi end
function G(b,g,am)return M(z(am,b),g)end
function v(b,g)return C.sqrt(((b[1]-g[1])^2)+((b[2]-g[2])^2))end
function P(b,g)return{am(b)*g,bC(b)*g}end
function exp(b)return b[1],b[2]end
e={}aV=1
ax=3
at=j
aT=o
aj=2
aB=0
aD=0
bc=0
T=0
aU=0
m=1
aL=0
bp=2
function aW(a,b,_)if a<2^15then
_=e[7][a]return aW(_[_[3]*(b[2]-_[2])-_[4]*(b[1]-_[1])>0 and 8 or 7],b)else
a=e[5][e[6][a-32768][2]]return U[e[3][e[2][a[4]][a[5]+6]][6]]end
end
function ap(s,bs,w,bR,_)ak=h[w]f=A[ak[4]]as,af=f[18],f[19]I=as
F=aW(#e[7],s)X,ah=exp(F)ab=sub(s,aF)N=R[2+ab[1]//Z+ab[2]//Z*bn]or{}for a,_ in y(N[0]or{})do
c=h[_]if _~=w and c and ak[14]~=_ then
l=v(c,s)D=A[c[4]]if c[20]then
V=l-D[18]if V<I and D[23]&1>0 and(f[23]&1>0 or G(s[9],c[9]-af,c[9]+D[19])==s[9])then
bb=c
if bs==j then
return j
end
I=V
aS=K(s,c)end
end
if w==1 then
if l<50then
b=D[25]if b>0then
for p,t in y(B[b])do
if t>0 and B[1][p]<B[2][p]then
c=B
h[_]=j
c[1][p]=aw(z(c[1][p]+t,c[2][p]))if G(p,5,12)==p then
aj=p-4
end
end
end
end
b=D[29]if b>0 then
b=e[11][b]for p=7,8 do
d[p]=G(d[p]+b[p*2-13],d[p],b[p*2-12])end
h[_]=j
end
end
end
end
end
if ah-X<af or X>s[9]+24then
return j
end
for a=1,#N do
_=e[2][N[a]]l,bm=bo(s,Y[_[1]],Y[_[2]])if l<I then
if(_[3]&1>0 and f[23]&1>0)or _[3]&4==0 then
if w>1 or bf>0 or _[3]&4>0 then
I=l
aS=bm
end
else
bg,aO=z(_[9],ah),M(_[8],X)if z(s[9],ah-af)+24<aO or M(s[9],X)+af>bg or bg-aO<af then
I=l
aS=bm
else
if bR==1 and(_[3]&512>0 or w==1)and(_[4]==2 or w>1)then
aN(_,_[5])end
ah,X=bg,aO
end
end
end
end
F,bb={X,ah}if bs then
if I~=as then
_=ag(s,P(aS,I-as))s[1]=_[1]s[2]=_[2]end
return o
end
return I==as
end
function bo(q,x,aC)O=v(x,q)bP=K(x,aC)+90
bv=bP-K(q,x)bH=-O*bC(bv)bf=O*am(bv)aI=bP
if bf<0 then
aI=aI+L
end
if bH<0 then
return O,K(q,x)elseif bH>v(aC,x)then
return v(aC,q),K(q,aC)else
return abs(bf),aI
end
end
function au(q,x,aE,w,_)aR=v(q,x)ay=aR
aM=o
V,aQ=exp(q)bS,bQ=exp(x)aP,aX=exp(sub(x,q))aA,bL=q[9]+32,x[9]+32
u=j
for a,_ in y(e[2])do
br=Y[_[1]]bE,bw=exp(sub(Y[_[2]],br))bN,bI=exp(sub(q,br))bB=bw*aP-bE*aX
W=(bE*bI-bw*bN)/bB
by=(aP*bI-aX*bN)/bB
if G(W,0,1)==W and G(by,0,1)==by then
bD={V+(W*aP),aQ+(W*aX)}l=v(q,bD)E=aA+(bL-aA)*(l/aR)if G(E,_[8]+1,_[9])~=E then
aM=j
if aE==1 then
return j
end
if l<ay then
ay=l
bi,bj=exp(bD)bK=E
bk=a
end
end
end
end
if aE>1 then
if aE==3 then
for a,_ in y(h)do
if _ and a~=w then
f=A[_[4]]if f[23]&1>0 and _[20]then
l=v(q,_)if l<ay then
W=bo(_,q,x)O=(l/aR)E=aA+(bL-aA)*O
if G(E,_[9],_[9]+f[19])==E and W<f[18]then
ay=l
u=o
aM=j
bi=V+(bS-V)*O
bj=aQ+(bQ-aQ)*O
bK=E
bk=a
end
end
end
end
end
end
return aM,bk,{bi,bj,bK}end
return o
end
function httpReply(b,g,am)bA=aD//2
aD=0
end
function ad()aU=aU%256+1
return e[13][1][aU]end
function ar(_,a)f=A[_[4]]if f[23]&2>0 and _[7]>0 then
_[8]=_[8]-(a+1)//2
_[7]=_[7]-a//2+z(_[8],0)_[8]=M(_[8],0)if ad()<f[10]then
_[6]=f[9]_[15]=0
_[23]=d
_[10]=o
end
end
end
function bl(b,g,az)return g[20]and abs(((K(b,g)-b[3]+L)%360)-L)<az and au(b,g,1)end
function bd(H,w)bG=ae and(ae[9]-H[9])*n[6]/v(ae,H)or 0
for a=1,n[12]do
b={}for a=1,30 do
b[a]=H[a]end
b[4]=n[8]b[10]=o
b[14]=w
bx=(ad()/Z-1)*n[10]ba=P(H[3]+bx,n[6])if n[7]>0then
h[#h+1]=b
f=A[b[4]]b[6]=f[3]b[9]=H[9]+n[13]b[11]=ba[1]b[12]=ba[2]b[17]=aj
b[19]=bG
else
c=ag(H,ba)c[9]=d[9]+bG
b_,av,c=au(H,c,3,w)if not b_ then
bt=sub(c,P(H[3]+bx,1))h[#h+1]=b
b[1]=bt[1]b[2]=bt[2]b[6]=A[b[4]][3]b[9]=c[3]b[19]=1
if u then
b=h[av]ar(b,n[9]*((ad()&3)+2))end
end
end
end
end
function aN(_,c)if c>-1 then
b=e[9][c]if b[1]>0 or ak[31]*_[10][2]-ak[32]*_[10][1]<0 then
g=U[b[1]]an[g and g[30]or#an+1]={c,1,g or ak}_[4]=b[7]b=b[8]>0 and aN(_,b[8])end
else
aT=o
ax=-c
r[9]=-c
end
end
function bq()bJ,ae=2048
for a,_ in y(h)do
if a>1 and _ and bl(d,_,10)then
l=v(_,d)if l<bJ then
if A[_[4]][23]&2>0then
ae=_
bJ=l
end
end
end
end
end
function onTick()ac(9,ai(32))ac(2,ai(11))ac(3,j)for k=1,3 do
if ai(32)and(not at)or not e[21]then
aY=property.getText(aV)a=1
i=bU
_=be.sub(aY,a,a)while _~=bUdo
c=be.byte(_)if c>64then
i=(i..c-65)+0
if m==1then
bz=i
e[i]=e[i]or{}elseif m==2then
E=i
aa=0
elseif m==3then
aG=i
else
if aa==0then
aa=E
aG=aG-1
aZ={}e[bz][#e[bz]+1]=aZ
end
aZ[#aZ+1]=i
aa=aa-1
m=M(aa,aG)>0 and m-1 or 0
end
m=m+1
i=bU
else
i=i.._
end
a=a+1
_=be.sub(aY,a,a)end
aV=aV+1
at=aY==bU
end
end
if at then
if aT then
an,aT={}al=1
for a=1,10 do
e[a]=e[a+10*ax]end
h=e[1]Y=e[4]U=e[8]R=e[10]aF,R[1]=R[1]B=e[12]A=e[15]for a=14,16 do
B[1][a]=0
end
ax=ax+1
for a,_ in y(h)do
for k=7,40 do
_[k]=0
end
bT=_[5]+1
_[7]=A[_[4]][4]_[9],_[10]=aW(#e[7],_)[1]if _[4]==1 then
if d then
_[7]=d[7]_[8]=d[8]end
d=_
elseif _[5]&bp<1then
h[a]=j
end
end
bn=aF[3]end
for a,_ in y(e[2])do
_[10]=sub(Y[_[2]],Y[_[1]])if _[3]&4>0 then
f,D=U[e[3][_[6]][6]],U[e[3][_[7]][6]]_[8]=M(f[1],D[1])_[9],f[30],D[30]=z(f[2],D[2])else
_[8],_[9]=0,0
end
end
r={}for a=1,32 do
r[a]=0
end
T=z(T+1/bA,2/35)ac(1,T>=0)if T>=0 then
T=T-1/35
bc=bc+1
for a=2,#R do
R[a][0]={}end
for a,t in y(an)do
_=e[9][t[1]]c=t[3]b=_[2]f=c[b]c[b]=G(_[3],f-_[4],f+_[4])+0
f=c[b]if f==_[3]then
an[a]=t[2]==_[5]and{_[6],1,c}or{t[1],t[2]+1,c}if _[6]==0 then
bh(an,a)end
end
c[10]=c[10]or f~=t
c[30]=a
end
for a,_ in y(h)do
if _ then
for k,t in y({1,2,9})do
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
aH=e[16][_[6]]if _[15]>=aH[2]and aH[2]~=-1then
_[6]=aH[4]_[15]=0
S=e[16][_[6]][3]if S==1 then
for a,m in y(h)do
if m then
i=Z-v(_,m)if i>0 then
ar(m,i)end
end
end
elseif S==2then
if bl(_,d,90)then
_[23]=d
_[6]=f[5]end
elseif S==3then
az=aw(K(_,_[23])/45+.5)*45
u=j
m=1
bF=f[23]&4>0
while m<5 and not u do
i=ag(_,P(az+e[19][2][m],8))i[9]=_[9]u=ap(i,j,a,m)and(F[1]>=i[9]-24 or bF)m=m+1
end
if u then
for k=1,2 do
_[30+k]=i[k]-_[k]_[k]=i[k]end
_[3]=az
_[10]=o
else
ap(_,j,a)end
_[9]=bF and _[9]or F[1]b=v(_,_[23])if f[13]>0 and au(_,_[23],1)and z(b,230)<ad()then
_[6]=f[13]end
if b<64 and f[12]>0then
_[6]=f[12]end
elseif S==5then
for a=1,11 do
d[3]=d[3]+e[19][9][a]n=e[14][23]bq()bd(d,1)end
d[3]=d[3]-20
elseif S>9 and _[20]then
_[3]=K(_,_[23])n=e[14][S]_[10]=o
ae=_[23]bd(_,a)end
end
if _[17]and _[17]>0then
n=e[14][_[17]]if not ap(_,j,a)or _[9]<=F[1]then
if bb then
ar(bb,f[21]*((ad()&7)+1))end
_[1]=_[1]-_[11]_[2]=_[2]-_[12]_[3]=0
_[6]=A[_[4]][5]_[10]=o
_[11]=0
_[12],_[17]=0
_[19]=0
end
end
if _[6]==1then
h[a]=j
else
ab=sub(_,aF)N=R[2+ab[1]//Z+ab[2]//Z*bn]if N then
N[0][#N[0]+1]=a
end
end
end
end
for a=1,8 do
if ai(a)and B[1][a+4]>0then
aj=a
end
end
n=e[14][aj]d[3]=d[3]-aq(3)*(G(aL,5,6)*1.5-6)aL=abs(aq(3))*aL+1
Q=d
for a=1,2 do
Q=ag(Q,P(d[3]-L+90*a,aq(a)*8.33))end
Q[9]=d[9]for a=1,8 do
u=ap(Q,o,1,a)end
if u then
for a=1,2 do
d[30+a]=Q[a]-d[a]d[a]=Q[a]end
if d[9]>F[1]then
d[19]=d[19]-1
else
d[9]=z(F[1],d[9]+4)d[19]=M(0,d[19])end
else
d[19]=0
d[9]=F[1]u=bc%4>0 or F[6]<18 or ar(d,10)end
aK=B[1]c=n[1]if ai(31)and aB<=0 and(c==0 or aK[c]>=n[2])then
ac(3,o)aB=n[3]if c>0then
aK[c]=aK[c]-n[2]end
bq()bd(d,1)end
aB=aB-1
if aq(4)<0 then
_=ag(d,P(d[3],64))_[9]=d[9]b_,av=au(d,_,2,1)_=e[2][av]if b_==j then
r[2]=av
c,u=_[4]for a=14,16 do
u=u or B[1][a]>0 and c==a
end
if c==1 or u then
aN(_,_[5])elseif c>3000 and c<3005then
bp=aw(c-3000)end
end
end
end
r[1]=aj
for a=3,8 do
r[a]=d[e[19][4][a]]end
r[5]=1
r[13]=d[3]a=al
bM=o
J=1
ao=#h+#U
while J<3 and bM do
c=J*9+5
if a<=#h then
_=h[a]if a~=1 then
if _ then
if _[10]then
_[10]=j
r[c]=a
for k=1,8 do
r[c+k]=_[e[19][1][k]]end
J=J+1
end
else
r[c]=-a
bh(h,a)J=J+1
ao=ao-1
end
end
else
_=U[a-#h]if _[10]then
_[10]=j
r[c]=a-#h+2^15
for k=1,6 do
r[c+k]=_[k]end
J=J+1
end
end
a=(a-2)%ao+1
al=z(al,ao)bM=a~=al
end
al=a
for a=1,32 do
bu.setNumber(a,r[a])end
end
aD=aD+1
async.httpGet(8,bU)end
function onDraw()aJ=screen.drawText
aJ(26,137,bA)if at then
for a=1,4 do
b=124+a*7
aJ(240,b,aw(B[1][a]))aJ(200,b,B[1][13+a])end
end
end
