bU=""

T=128
M=180
bF=output
bA=input
E=math
O=E.max
z=E.min
at=E.floor
pi=E.pi
ao=bA.getNumber
al=bA.getBool
am=bF.setBool
n=true
i=false
x=ipairs
abs=E.abs
bn=table.remove
aP=string
function ag(b,g)return{(b[1]+g[1]),(b[2]+g[2])}end
function sub(b,g)return{(b[1]-g[1]),(b[2]-g[2])}end
function bJ(b)return E.sin(b/M*pi)end
function ah(b)return E.cos(b/M*pi)end
function H(b,g)return E.atan(g[2]-b[2],g[1]-b[1])*M/pi end
function K(b,g,ah)return O(z(ah,b),g)end
function v(b,g)return E.sqrt(((b[1]-g[1])^2)+((b[2]-g[2])^2))end
function V(b,g)return{ah(b)*g,bJ(b)*g}end
function exp(b)return b[1],b[2]end
e={}aL=1
ax=3
ar=i
be=n
an=2
aq=0
as=0
ba=0
Z=0
bg=0
m=1
bd=0
bt=2
function aW(a,b,_)if a<32768then
_=e[7][a]return aW(_[_[3]*(b[2]-_[2])-_[4]*(b[1]-_[1])>0 and 8 or 7],b)else
a=e[5][e[6][a-32768][2]]return U[e[3][e[2][a[4]][a[5]+6]][6]]end
end
function ap(r,bH,w,bS,_,a,k)aj=h[w]f=B[aj[4]]aw,ac=f[18],f[19]J=aw
F=aW(#e[7],r)X,ab=exp(F)aa=sub(r,aJ)L=W[2+aa[1]//T+aa[2]//T*bN]or{}for a,_ in x(L[0]or{})do
c=h[_]if _~=w and c and aj[14]~=_ then
l=v(c,r)C=B[c[4]]if c[20]then
R=l-C[18]if R<J and C[23]&1>0 and(f[23]&1>0 or(r[9]+ac<c[9]or r[9]>c[9]+C[19])==i)then
b_=c
if bH==i then
return i
end
J=R
bf=H(r,c)end
end
if w==1 and not c[10]then
if l<50then
b=C[25]if b>0then
for p,s in x(A[b])do
if s>0 and A[1][p]<A[2][p]then
c=A
h[_]=i
c[1][p]=at(z(c[1][p]+s,c[2][p]))if K(p,5,12)==p then
an=p-4
end
end
end
end
b=C[29]if b>0 then
b=e[11][b]for p=7,8 do
d[p]=K(d[p]+b[p*2-13],d[p],b[p*2-12])end
h[_]=i
end
end
end
end
end
b_=i
if ab-X<ac or X>r[9]+24then
return i
end
for a=1,#L do
_=e[2][L[a]]l,bs=bE(r,S[_[1]],S[_[2]])if l<J then
if(_[3]&1>0 and f[23]&1>0)or _[3]&4==0 then
if w>1 or aH>0 or _[3]&4>0 then
J=l
bf=bs
end
else
aG,bc=z(_[9],ab),O(_[8],X)if z(r[9],ab-ac)+24<bc or O(r[9],X)+ac>aG or aG-bc<ac then
J=l
bf=bs
else
if bS==1 and(_[3]&512>0 or w==1)and(_[4]==2 or w>1)then
aQ(_,_[5])end
ab,X=aG,bc
end
end
end
end
F={X,ab}if bH then
if J~=aw then
_=ag(r,V(bf,J-aw))r[1]=_[1]r[2]=_[2]end
return n
end
return J==aw
end
function bE(q,y,au)N=v(y,q)bl=H(y,au)+90
bx=bl-H(q,y)bK=-N*bJ(bx)aH=N*ah(bx)aS=bl
if aH<0 then
aS=aS+M
end
if bK<0 then
return N,H(q,y)elseif bK>v(au,y)then
return v(au,q),H(q,au)else
return abs(aH),aS
end
end
function aD(q,y,aR,w,_)aZ=v(q,y)aA=aZ
aE=n
R,aT=exp(q)bQ,bR=exp(y)aO,aM=exp(sub(y,q))av,bq=q[9]+32,y[9]+32
u=i
for a,_ in x(e[2])do
br=S[_[1]]bv,bu=exp(sub(S[_[2]],br))bp,bB=exp(sub(q,br))bC=bu*aO-bv*aM
Q=(bv*bB-bu*bp)/bC
bh=(aO*bB-aM*bp)/bC
if K(Q,0,1)==Q and K(bh,0,1)==bh then
bi={R+(Q*aO),aT+(Q*aM)}l=v(q,bi)D=av+(bq-av)*(l/aZ)if K(D,_[8]+1,_[9])~=D then
aE=i
if aR==1 then
return i
end
if l<aA then
aA=l
bm,bj=exp(bi)bO=D
bw=a
end
end
end
end
if aR>1 then
if aR==3 then
for a,_ in x(h)do
if _ and a~=w then
f=B[_[4]]if f[23]&1>0 and _[20]then
l=v(q,_)if l<aA then
Q=bE(_,q,y)N=(l/aZ)D=av+(bq-av)*N
if K(D,_[9],_[9]+f[19])==D and Q<f[18]then
aA=l
u=n
aE=i
bm=R+(bQ-R)*N
bj=aT+(bR-aT)*N
bO=D
bw=a
end
end
end
end
end
end
return aE,bw,{bm,bj,bO}end
return n
end
function httpReply(b,g,ah)bo=as//2
as=0
end
function af()bg=bg%256+1
return e[13][1][bg]end
function ay(_,a)f=B[_[4]]if f[23]&2>0 and _[7]>0 then
_[8]=_[8]-(a+1)//2
_[7]=_[7]-a//2+z(_[8],0)_[8]=O(_[8],0)if af()<f[10]then
_[6]=f[9]_[15]=0
_[23]=d
_[10]=n
end
end
end
function bP(b,g,az)return g[20]and abs(((H(b,g)-b[3]+M)%360)-M)<az and aD(b,g,1)end
function aU(I,w)bL=ae and(ae[9]-I[9])*o[6]/v(ae,I)or 0
for a=1,o[12]do
b={}for a=1,30 do
b[a]=I[a]end
b[4]=o[8]b[10]=n
b[14]=w
bM=(af()/T-1)*o[10]aF=V(I[3]+bM,o[6])if o[7]>0then
h[#h+1]=b
f=B[b[4]]b[6]=f[3]b[9]=I[9]+o[13]b[11]=aF[1]b[12]=aF[2]b[17]=an
b[19]=bL
else
c=ag(I,aF)c[9]=d[9]+bL
aI,aC,c=aD(I,c,3,w)if not aI then
by=sub(c,V(I[3]+bM,1))h[#h+1]=b
b[1]=by[1]b[2]=by[2]b[6]=B[b[4]][3]b[9]=c[3]b[19]=1
if u then
b=h[aC]ay(b,o[9]*((af()&3)+2))end
end
end
end
end
function aQ(_,c)if c>-1 then
b=e[9][c]if b[1]>0 or aj[31]*_[10][2]-aj[32]*_[10][1]<0 then
g=U[b[1]]ak[g and g[30]or#ak+1]={c,1,g or aj}_[4]=b[7]b=b[8]>0 and aQ(_,b[8])end
else
be=n
ax=-c
t[9]=-c
end
end
function bk()bz,ae=2048
for a,_ in x(h)do
if a>1 and _ and bP(d,_,10)then
l=v(_,d)if l<bz then
if B[_[4]][23]&2>0then
ae=_
bz=l
end
end
end
end
end
function onTick()am(9,al(32))am(2,al(11))am(3,i)for k=1,3 do
if al(32)and(not ar)or not e[21]then
aN=property.getText(aL)a=1
j=bU
_=aP.sub(aN,a,a)while _~=bUdo
c=aP.byte(_)if c>64then
j=(j..c-65)+0
if m==1then
bD=j
e[j]=e[j]or{}elseif m==2then
D=j
ad=0
elseif m==3then
aV=j
else
if ad==0then
ad=D
aV=aV-1
aY={}e[bD][#e[bD]+1]=aY
end
aY[#aY+1]=j
ad=ad-1
m=O(ad,aV)>0 and m-1 or 0
end
m=m+1
j=bU
else
j=j.._
end
a=a+1
_=aP.sub(aN,a,a)end
aL=aL+1
ar=aN==bU
end
end
if ar then
if be then
ak,be={}ai=1
for a=1,10 do
e[a]=e[a+10*ax]end
h=e[1]S=e[4]U=e[8]W=e[10]aJ,W[1]=W[1]A=e[12]B=e[15]for a=14,16 do
A[1][a]=0
end
ax=ax+1
for a,_ in x(h)do
for k=7,40 do
_[k]=0
end
bT=_[5]+1
_[7]=B[_[4]][4]_[9],_[10]=aW(#e[7],_)[1]if _[4]==1 then
if d then
_[7]=d[7]_[8]=d[8]end
d=_
elseif _[5]&bt<1then
h[a]=i
end
end
bN=aJ[3]end
for a,_ in x(e[2])do
_[10]=sub(S[_[2]],S[_[1]])if _[3]&4>0 then
f,C=U[e[3][_[6]][6]],U[e[3][_[7]][6]]_[8]=O(f[1],C[1])_[9],f[30],C[30]=z(f[2],C[2])else
_[8],_[9]=0,0
end
end
t={}for a=1,32 do
t[a]=0
end
Z=z(Z+1/bo,2/35)am(1,Z>=0)if Z>=0 then
Z=Z-1/35
ba=ba+1
for a=2,#W do
W[a][0]={}end
for a,s in x(ak)do
_=e[9][s[1]]c=s[3]b=_[2]f=c[b]c[b]=K(_[3],f-_[4],f+_[4])+0
f=c[b]if f==_[3]then
ak[a]=s[2]==_[5]and{_[6],1,c}or{s[1],s[2]+1,c}if _[6]==0 then
bn(ak,a)end
end
c[10]=c[10]or f~=s
c[30]=a
end
for a,_ in x(h)do
if _ then
for k,s in x({1,2,9})do
_[s]=_[s]+_[s+10]end
_[15]=_[15]+1
f=B[_[4]]if _[7]<=0 and _[20]then
_[15]=0
_[6]=f[_[7]<=-f[4]and f[15]>1 and 15or 14]_[10],_[20]=n
if f[27]>0 then
c={}for k=1,30 do
c[k]=_[k]end
c[4]=f[27]c[6]=f[28]h[#h+1]=c
end
end
aX=e[16][_[6]]if _[15]>=aX[2]and aX[2]~=-1then
_[6]=aX[4]_[15]=0
Y=e[16][_[6]][3]if Y==1 then
for a,m in x(h)do
if m then
j=T-v(_,m)if j>0 then
ay(m,j)end
end
end
elseif Y==2then
if bP(_,d,90)then
_[23]=d
_[6]=f[5]end
elseif Y==3then
az=at(H(_,_[23])/45+.5)*45
u=i
m=1
bI=f[23]&4>0
while m<5 and not u do
j=ag(_,V(az+e[19][2][m],8))j[9]=_[9]u=ap(j,i,a,m)and(F[1]>=j[9]-24 or bI)m=m+1
end
if u then
for k=1,2 do
_[30+k]=j[k]-_[k]_[k]=j[k]end
_[3]=az
_[10]=n
else
ap(_,i,a)end
_[9]=bI and _[9]or F[1]b=v(_,_[23])if f[13]>0 and aD(_,_[23],1)and z(b,230)<af()then
_[6]=f[13]end
if b<64 and f[12]>0then
_[6]=f[12]end
elseif Y==5then
for a=1,11 do
d[3]=d[3]+e[19][9][a]o=e[14][23]bk()aU(d,1)end
d[3]=d[3]-20
elseif Y>9 and _[20]then
_[3]=H(_,_[23])o=e[14][Y]_[10]=n
ae=_[23]aU(_,a)end
end
if _[17]and _[17]>0then
o=e[14][_[17]]if not ap(_,i,a)or _[9]<=F[1]then
if b_ then
ay(b_,f[21]*((af()&7)+1))end
_[1]=_[1]-_[11]_[2]=_[2]-_[12]_[3]=0
_[6]=B[_[4]][5]_[10]=n
_[11]=0
_[12],_[17]=0
_[19]=0
end
end
if _[6]==1then
h[a]=i
else
aa=sub(_,aJ)L=W[2+aa[1]//T+aa[2]//T*bN]if L then
L[0][#L[0]+1]=a
end
end
end
end
for a=1,8 do
if al(a)and A[1][a+4]>0then
an=a
end
end
o=e[14][an]d[3]=d[3]-ao(3)*(K(bd,5,6)*1.5-6)bd=abs(ao(3))*bd+1
P=d
for a=1,2 do
P=ag(P,V(d[3]-M+90*a,ao(a)*8.33))end
P[9]=d[9]for a=1,8 do
u=ap(P,n,1,a)end
if u then
for a=1,2 do
d[30+a]=P[a]-d[a]d[a]=P[a]end
if d[9]>F[1]then
d[19]=d[19]-1
else
d[9]=z(F[1],d[9]+4)d[19]=O(0,d[19])end
else
d[19]=0
d[9]=F[1]u=ba%4>0 or F[6]<18 or ay(d,10)end
aK=A[1]c=o[1]if al(31)and aq<=0 and(c==0 or aK[c]>=o[2])then
am(3,n)aq=o[3]if c>0then
aK[c]=aK[c]-o[2]end
bk()aU(d,1)end
aq=aq-1
if ao(4)<0 then
_=ag(d,V(d[3],64))_[9]=d[9]aI,aC=aD(d,_,2,1)_=e[2][aC]if aI==i then
t[2]=aC
c,u=_[4]for a=14,16 do
u=u or A[1][a]>0 and c==a
end
if c==1 or u then
aQ(_,_[5])elseif c>3000 and c<3005then
bt=at(c-3000)end
end
end
end
t[1]=an
for a=3,8 do
t[a]=d[e[19][4][a]]end
t[5]=1
t[13]=d[3]a=ai
bG=n
G=1
aB=#h+#U
while G<3 and bG do
c=G*9+5
if a<=#h then
_=h[a]if a~=1 then
if _ then
if _[10]then
_[10]=i
t[c]=a
for k=1,8 do
t[c+k]=_[e[19][1][k]]end
G=G+1
end
else
t[c]=-a
bn(h,a)G=G+1
aB=aB-1
end
end
else
_=U[a-#h]if _[10]then
_[10]=i
t[c]=a-#h+2^15
for k=1,6 do
t[c+k]=_[k]end
G=G+1
end
end
a=((a-2)%aB)+1
ai=z(ai,aB)bG=a~=ai
end
ai=a
for a=1,32 do
bF.setNumber(a,t[a])end
end
as=as+1
async.httpGet(8,bU)end
function onDraw()bb=screen.drawText
bb(26,137,bo)if ar then
for a=1,4 do
b=124+a*7
bb(240,b,at(A[1][a]))bb(200,b,A[1][13+a])end
end
end
