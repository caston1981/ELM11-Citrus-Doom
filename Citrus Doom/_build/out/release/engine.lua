bT=""

V=128
M=180
bo=output
bn=input
D=math
N=D.max
v=D.min
aA=D.floor
pi=D.pi
az=bn.getNumber
ac=bn.getBool
ag=bo.setBool
n=true
i=false
w=ipairs
abs=D.abs
bI=table.remove
bc=string
function ai(b,g)return{(b[1]+g[1]),(b[2]+g[2])}end
function sub(b,g)return{(b[1]-g[1]),(b[2]-g[2])}end
function bx(b)return D.sin(b/M*pi)end
function aa(b)return D.cos(b/M*pi)end
function I(b,g)return D.atan(g[2]-b[2],g[1]-b[1])*M/pi end
function K(b,g,aa)return N(v(aa,b),g)end
function x(b,g)return D.sqrt(((b[1]-g[1])^2)+((b[2]-g[2])^2))end
function X(b,g)return{aa(b)*g,bx(b)*g}end
function exp(b)return b[1],b[2]end
e={}aF=1
aB=3
as=i
aZ=n
ah=2
aq=0
av=0
S=0
ba=0
l=1
aN=0
bs=2
function aG(a,b,_)if a<32768then
_=e[7][a]return aG(_[_[3]*(b[2]-_[2])-_[4]*(b[1]-_[1])>0 and 8 or 7],b)else
a=e[5][e[6][a-32768][2]]return Q[e[3][e[2][a[4]][a[5]+6]][6]]end
end
function ax(r,bi,B,bQ,_,a,k)al=h[B]f=z[al[4]]aC,an=f[18],f[19]J=aC
E=aG(#e[7],r)Z,ab=exp(E)af=sub(r,P[1])L=P[2+af[1]//V+af[2]//V*bH]or{{}}for a,_ in w(L[0])do
c=h[_]if _~=B and c and al[14]~=_ then
m=x(c,r)C=z[c[4]]if c[20]then
U=m-C[18]if U<J and C[23]&1>0 and(f[23]&1>0 or(r[9]+an<c[9]or r[9]>c[9]+C[19])==i)then
aJ=c
if bi==i then
return i
end
J=U
aI=I(r,c)end
end
if B==1 and not c[10]then
if m<50then
b=C[25]if b>0then
for p,t in w(A[b])do
if t>0 and A[1][p]<A[2][p]then
c=A
h[_]=i
c[1][p]=aA(v(c[1][p]+t,c[2][p]))if K(p,5,12)==p then
ah=p-4
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
aJ=i
if ab-Z<an or Z>r[9]+24then
return i
end
for a=1,#L do
_=e[2][L[a]]m,bE=bl(r,Y[_[1]],Y[_[2]])if m<J then
if bQ==1 and(_[3]&512>0 or B==1)and(_[4]==2 or B>1)then
aR(_,_[5])end
if(_[3]&1>0 and f[23]&1>0)or _[3]&4==0 then
J=m
aI=bE
else
aX,aM=v(_[9],ab),N(_[8],Z)if v(r[9],ab-an)+24<aM or N(r[9],Z)+an>aX or aX-aM<an then
J=m
aI=bE
else
ab,Z=aX,aM
end
end
end
end
E={Z,ab}if bi then
if J~=aC then
_=ai(r,X(aI,J-aC))r[1]=_[1]r[2]=_[2]end
return n
end
return J==aC
end
function bl(q,y,ay)O=x(y,q)bz=I(y,ay)+90
bf=bz-I(q,y)bj=-O*bx(bf)br=O*aa(bf)aD=bz
if br<0 then
aD=aD+M
end
if bj<0 then
return O,I(q,y)elseif bj>x(ay,y)then
return x(ay,q),I(q,ay)else
return abs(br),aD
end
end
function au(q,y,aL,B,_)aP=x(q,y)ao=aP
bb=n
U,aY=exp(q)bR,bO=exp(y)aU,aW=exp(sub(y,q))aw,bk=q[9]+32,y[9]+32
u=i
for a,_ in w(e[2])do
bG=Y[_[1]]bD,bL=exp(sub(Y[_[2]],bG))bB,bt=exp(sub(q,bG))bu=bL*aU-bD*aW
T=(bD*bt-bL*bB)/bu
bg=(aU*bt-aW*bB)/bu
if K(T,0,1)==T and K(bg,0,1)==bg then
bJ={U+(T*aU),aY+(T*aW)}m=x(q,bJ)F=aw+(bk-aw)*(m/aP)if K(F,_[8]+1,_[9])~=F then
bb=i
if aL==1 then
return i
end
if m<ao then
ao=m
bv,by=exp(bJ)bC=F
be=a
end
end
end
end
if aL>1 then
if aL==3 then
for a,_ in w(h)do
if _ and a~=B then
f=z[_[4]]if f[23]&1>0 and _[20]then
m=x(q,_)if m<ao then
T=bl(_,q,y)O=(m/aP)F=aw+(bk-aw)*O
if K(F,_[9],_[9]+f[19])==F and T<f[18]then
ao=m
u=n
bb=i
bv=U+(bR-U)*O
by=aY+(bO-aY)*O
bC=F
be=a
end
end
end
end
end
end
return bb,be,{bv,by,bC}end
return n
end
function httpReply(b,g,aa)bF=av//2
av=0
end
function ae()ba=ba%256+1
return e[13][1][ba]end
function aV(_,a)f=z[_[4]]if f[23]&2>0 and _[7]>0 then
_[8]=_[8]-(a+1)//2
_[7]=_[7]-a//2+v(_[8],0)_[8]=N(_[8],0)if ae()<f[10]then
_[6]=f[9]_[15]=0
_[23]=d
_[10]=n
end
end
end
function bA(b,g,at)return g[20]and abs(((I(b,g)-b[3]+M)%360)-M)<at and au(b,g,1)end
function aE(G,B)bh=am and(am[9]-G[9])*o[6]/x(am,G)or 0
for a=1,o[12]do
b={}for a=1,30 do
b[a]=G[a]end
b[4]=o[8]b[10]=n
b[14]=B
bM=(ae()/V-1)*o[10]aS=X(G[3]+bM,o[6])if o[7]>0then
h[#h+1]=b
f=z[b[4]]b[6]=f[3]b[9]=G[9]+o[13]b[11]=aS[1]b[12]=aS[2]b[17]=ah
b[19]=bh
else
c=ai(G,aS)c[9]=d[9]+bh
aO,ar,c=au(G,c,3,B)if not aO then
bm=sub(c,X(G[3]+bM,1))h[#h+1]=b
b[1]=bm[1]b[2]=bm[2]b[6]=z[b[4]][3]b[9]=c[3]b[19]=1
if u then
b=h[ar]aV(b,o[9]*((ae()&3)+2))end
end
end
end
end
function aR(_,c)if c>-1 then
b=e[9][c]if b[1]>0 or al[31]*_[10][2]-al[32]*_[10][1]<0 then
g=Q[b[1]]ad[g and g[30]or#ad+1]={c,1,g or al}_[4]=b[7]b=b[8]>0 and aR(_,b[8])end
else
aZ=n
aB=-c
s[9]=-c
end
end
function bK()bp,am=2048
for a,_ in w(h)do
if a>1 and _ and bA(d,_,10)then
m=x(_,d)if m<bp then
if z[_[4]][23]&2>0then
am=_
bp=m
end
end
end
end
end
function onTick()ag(9,ac(32))ag(2,ac(11))ag(3,i)for k=1,3 do
if ac(32)and(not as)or not e[21]then
b_=property.getText(aF)a=1
j=bT
_=bc.sub(b_,a,a)while _~=bTdo
c=bc.byte(_)if c>64then
j=(j..c-65)+0
if l==1then
bq=j
e[j]=e[j]or{}elseif l==2then
F=j
ak=0
elseif l==3then
bd=j
else
if ak==0then
ak=F
bd=bd-1
aT={}e[bq][#e[bq]+1]=aT
end
aT[#aT+1]=j
ak=ak-1
l=N(ak,bd)>0 and l-1 or 0
end
l=l+1
j=bT
else
j=j.._
end
a=a+1
_=bc.sub(b_,a,a)end
aF=aF+1
as=b_==bT
end
end
if as then
if aZ then
ad,aZ={}aj=1
for a=1,10 do
e[a]=e[a+10*aB]end
h=e[1]Y=e[4]Q=e[8]P=e[10]A=e[12]z=e[15]for a=14,16 do
A[1][a]=0
end
aB=aB+1
for a,_ in w(h)do
for k=7,40 do
_[k]=0
end
bS=_[5]+1
_[7]=z[_[4]][4]_[9],_[10]=aG(#e[7],_)[1]if _[4]==1 then
if d then
_[7]=d[7]_[8]=d[8]end
d=_
elseif _[5]&bs<1then
h[a]=i
end
end
bH=P[1][3]end
for a,_ in w(e[2])do
_[10]=sub(Y[_[2]],Y[_[1]])if _[3]&4>0 then
f,C=Q[e[3][_[6]][6]],Q[e[3][_[7]][6]]_[8]=N(f[1],C[1])_[9],f[30],C[30]=v(f[2],C[2])else
_[8],_[9]=0,0
end
end
s={}for a=1,32 do
s[a]=0
end
S=v(S+1/bF,2/35)ag(1,S>=0)if S>=0 then
S=S-1/35
for a=2,#P do
P[a][0]={}end
for a,t in w(ad)do
_=e[9][t[1]]c=t[3]b=_[2]f=c[b]c[b]=K(_[3],f-_[4],f+_[4])+0
f=c[b]if abs(f-_[3])<.1then
ad[a]=t[2]==_[5]and{_[6],1,c}or{t[1],t[2]+1,c}if _[6]==0 then
bI(ad,a)end
end
c[10]=c[10]or f~=t
c[30]=a
end
for a,_ in w(h)do
if _ then
for k,t in w({1,2,9})do
_[t]=_[t]+_[t+10]end
_[15]=_[15]+1
f=z[_[4]]if _[7]<=0 and _[20]then
_[15]=0
_[6]=f[_[7]<=-f[4]and f[15]>1 and 15or 14]_[10],_[20]=n
if f[27]>0 then
c={}for k=1,30 do
c[k]=_[k]end
c[4]=f[27]c[6]=f[28]h[#h+1]=c
end
end
aH=e[16][_[6]]if _[15]>=aH[2]and aH[2]~=-1then
_[6]=aH[4]_[15]=0
R=e[16][_[6]][3]if R==1 then
for a,l in w(h)do
if l then
j=V-x(_,l)if j>0 then
aV(l,j)end
end
end
elseif R==2then
if bA(_,d,90)then
_[23]=d
_[6]=f[5]end
elseif R==3then
at=aA(I(_,_[23])/45+.5)*45
u=i
l=1
bw=f[23]&4>0
while l<5 and not u do
j=ai(_,X(at+e[19][2][l],8))j[9]=_[9]u=ax(j,i,a,l)and(E[1]>=j[9]-24 or bw)l=l+1
end
if u then
for k=1,2 do
_[30+k]=j[k]-_[k]_[k]=j[k]end
_[3]=at
_[10]=n
else
ax(_,i,a)end
_[9]=bw and _[9]or E[1]b=x(_,_[23])if f[13]>0 and au(_,_[23],1)and v(b,230)<ae()then
_[6]=f[13]end
if b<64 and f[12]>0then
_[6]=f[12]end
elseif R==5then
for a=1,11 do
d[3]=d[3]+e[19][9][a]o=e[14][23]bK()aE(d,1)end
d[3]=d[3]-20
elseif R>9then
_[3]=I(_,_[23])o=e[14][R]_[10]=n
am=_[23]aE(_,a)end
end
if _[17]and _[17]>0then
o=e[14][_[17]]if not ax(_,i,a)or _[9]<=E[1]then
if aJ then
aV(aJ,f[21]*((ae()&7)+1))end
_[1]=_[1]-_[11]_[2]=_[2]-_[12]_[3]=0
_[6]=z[_[4]][5]_[10]=n
_[11]=0
_[12]=0
_[17]=bP
_[19]=0
end
end
if _[6]==1then
h[a]=i
else
af=sub(_,P[1])L=P[2+af[1]//V+af[2]//V*bH]if L~=bP then
L[0][#L[0]+1]=a
end
end
end
end
for a=1,8 do
if ac(a)and A[1][a+4]>0then
ah=a
end
end
o=e[14][ah]d[3]=d[3]-az(3)*(K(aN,5,6)*1.5-6)aN=abs(az(3))*aN+1
W=d
for a=1,2 do
W=ai(W,X(d[3]-M+90*a,az(a)*8.33))end
W[9]=d[9]for a=1,8 do
u=ax(W,n,1,a)end
if u then
for a=1,2 do
d[30+a]=W[a]-d[a]d[a]=W[a]end
if d[9]<=E[1]then
d[9]=v(E[1],d[9]+4)d[19]=N(0,d[19])else
if d[9]>=E[2]-56then
d[9]=E[2]-56
d[19]=v(0,d[19])end
d[19]=d[19]-1
end
else
d[19]=0
end
aK=A[1]c=o[1]if ac(31)and aq<=0 and(c==0 or aK[c]>=o[2])then
ag(3,n)aq=o[3]if c>0then
aK[c]=aK[c]-o[2]end
bK()aE(d,1)end
aq=aq-1
if az(4)<0 then
_=ai(d,X(d[3],64))_[9]=d[9]aO,ar=au(d,_,2,1)_=e[2][ar]if aO==i then
s[2]=ar
c,u=_[4]for a=14,16 do
u=u or A[1][a]>0 and c==a
end
if c==1 or u then
aR(_,_[5])elseif c>3000 and c<3005then
bs=aA(c-3000)end
end
end
end
s[1]=ah
for a=3,8 do
s[a]=d[e[19][4][a]]end
s[5]=1
s[13]=d[3]a=aj
bN=n
H=1
ap=#h+#Q
while H<3 and bN do
c=H*9+5
if a<=#h then
_=h[a]if a~=1 then
if _ then
if _[10]then
_[10]=i
s[c]=a
for k=1,8 do
s[c+k]=_[e[19][1][k]]end
H=H+1
end
else
s[c]=-a
bI(h,a)H=H+1
ap=ap-1
end
end
else
_=Q[a-#h]if _[10]then
_[10]=i
s[c]=a-#h+2^15
for k=1,6 do
s[c+k]=_[k]end
H=H+1
end
end
a=((a-2)%ap)+1
aj=v(aj,ap)bN=a~=aj
end
aj=a
for a=1,32 do
bo.setNumber(a,s[a])end
end
av=av+1
async.httpGet(8,bT)end
function onDraw()aQ=screen.drawText
aQ(26,137,bF)if as then
for a=1,4 do
b=124+a*7
aQ(240,b,aA(A[1][a]))aQ(230,b,A[1][13+a])end
end
end
