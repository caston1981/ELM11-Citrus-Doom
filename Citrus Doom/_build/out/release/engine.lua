bU=""

Y=128
M=180
bG=output
bL=input
E=math
N=E.max
B=E.min
aq=E.floor
pi=E.pi
ay=bL.getNumber
aj=bL.getBool
ad=bG.setBool
n=true
j=false
y=ipairs
abs=E.abs
bC=table.remove
aK=string
function al(b,g)return{(b[1]+g[1]),(b[2]+g[2])}end
function sub(b,g)return{(b[1]-g[1]),(b[2]-g[2])}end
function bm(b)return E.sin(b/M*pi)end
function ah(b)return E.cos(b/M*pi)end
function J(b,g)return E.atan(g[2]-b[2],g[1]-b[1])*M/pi end
function C(b,g,ah)return N(B(ah,b),g)end
function x(b,g)return E.sqrt(((b[1]-g[1])^2)+((b[2]-g[2])^2))end
function X(b,g)return{ah(b)*g,bm(b)*g}end
function exp(b)return b[1],b[2]end
e={}aX=1
ao=3
av=j
aU=n
ae=2
aA=0
aB=0
bd=0
Q=0
aF=0
l=1
be=0
bP=2
function aL(a,b,_)if a<2^15 then
_=e[7][a]return aL(_[_[3]*(b[2]-_[2])-_[4]*(b[1]-_[1])>0 and 8 or 7],b)else
a=e[5][e[6][a-32768][2]]return U[e[3][e[2][a[4]][a[5]+6]][6]]end
end
function aD(r,bv,v,bS,_)af=h[v]f=A[af[4]]ap,ag=f[18],f[19]H=ap
G=aL(#e[7],r)P,ak=exp(G)aa=sub(r,aI)L=S[2+aa[1]//Y+aa[2]//Y*bA]or{}for a,_ in y(L[0]or{})do
c=h[_]if _~=v and c and af[14]~=_ then
m=x(c,r)D=A[c[4]]if c[20]then
T=m-D[18]if T<H and D[23]&1>0 and(f[23]&1>0 or C(r[9],c[9]-ag,c[9]+D[19])==r[9])then
aZ=c
if bv==j then
return j
end
H=T
aV=J(r,c)end
end
if v==1 then
if m<50 then
b=D[25]if b>0 then
for q,s in y(z[b])do
if s>0 and z[1][q]<z[2][q]then
c=z
h[_]=j
c[1][q]=aq(B(c[1][q]+s,c[2][q]))if C(q,5,12)==q then
ae=q-4
end
end
end
end
b=D[29]if b>0 then
b=e[11][b]for q=7,8 do
d[q]=C(d[q]+b[q*2-13],d[q],b[q*2-12])end
h[_]=j
end
end
end
end
end
if ak-P<ag or P>r[9]+24 then
return j
end
for a=1,#L do
_=e[2][L[a]]m,bi=bO(r,Z[_[1]],Z[_[2]])if m<H then
if(_[3]&1>0 and f[23]&1>0)or _[3]&4==0 then
if v>1 or bc>0 or _[3]&4>0 then
H=m
aV=bi
end
else
aW,aN=B(_[9],ak),N(_[8],P)if B(r[9],ak-ag)+24<aN or N(r[9],P)+ag>aW or aW-aN<ag then
H=m
aV=bi
else
if bS==1 and(_[3]&512>0 or v==1)and(_[4]==2 or v>1)then
bg(_,_[5])end
ak,P=aW,aN
end
end
end
end
G,aZ={P,ak}if bv then
if H~=ap then
_=al(r,X(aV,H-ap))r[1]=_[1]r[2]=_[2]end
return n
end
return H==ap
end
function bO(p,w,az)O=x(w,p)bJ=J(w,az)+90
bw=bJ-J(p,w)bx=-O*bm(bw)bc=O*ah(bw)aR=bJ
if bc<0 then
aR=aR+M
end
if bx<0 then
return O,J(p,w)elseif bx>x(az,w)then
return x(az,p),J(p,az)else
return abs(bc),aR
end
end
function aC(p,w,b_,v,_)aJ=x(p,w)au=aJ
bf=n
T,aY=exp(p)bR,bQ=exp(w)aQ,ba=exp(sub(w,p))ax,bE=p[9]+32,w[9]+32
u=j
for a,_ in y(e[2])do
bt=Z[_[1]]bK,bl=exp(sub(Z[_[2]],bt))bj,bN=exp(sub(p,bt))bq=bl*aQ-bK*ba
V=(bK*bN-bl*bj)/bq
bH=(aQ*bN-ba*bj)/bq
if C(V,0,1)==V and C(bH,0,1)==bH then
bk={T+(V*aQ),aY+(V*ba)}m=x(p,bk)F=ax+(bE-ax)*(m/aJ)if C(F,_[8]+1,_[9])~=F then
bf=j
if b_==1 then
return j
end
if m<au then
au=m
bz,bn=exp(bk)bD=F
bp=a
end
end
end
end
if b_>1 then
if b_==3 then
for a,_ in y(h)do
if _ and a~=v then
f=A[_[4]]if f[23]&1>0 and _[20]then
m=x(p,_)if m<au then
V=bO(_,p,w)O=(m/aJ)F=ax+(bE-ax)*O
if C(F,_[9],_[9]+f[19])==F and V<f[18]then
au=m
u=n
bf=j
bz=T+(bR-T)*O
bn=aY+(bQ-aY)*O
bD=F
bp=a
end
end
end
end
end
end
return bf,bp,{bz,bn,bD}end
return n
end
function httpReply(b,g,ah)bF=aB//2
aB=0
end
function ac()aF=aF%256+1
return e[13][1][aF]end
function at(_,a)f=A[_[4]]if f[23]&2>0 and _[7]>0 then
_[8]=_[8]-(a+1)//2
_[7]=_[7]-a//2+B(_[8],0)_[8]=N(_[8],0)if ac()<f[10]then
_[6]=f[9]_[15]=0
_[23]=d
_[10]=n
end
end
end
function bs(b,g,aw)return g[20]and abs(((J(b,g)-b[3]+M)%360)-M)<aw and aC(b,g,1)end
function aH(K,v)bB=ai and(ai[9]-K[9])*o[6]/x(ai,K)or 0
for a=1,o[12]do
b={}for a=1,30 do
b[a]=K[a]end
b[4]=o[8]b[10]=n
b[14]=v
bh=(ac()/Y-1)*o[10]aO=X(K[3]+bh,o[6])if o[7]>0 then
h[#h+1]=b
f=A[b[4]]b[6]=f[3]b[9]=K[9]+o[13]b[11]=aO[1]b[12]=aO[2]b[17]=ae
b[19]=bB
else
c=al(K,aO)c[9]=d[9]+bB
aT,as,c=aC(K,c,3,v)if not aT then
br=sub(c,X(K[3]+bh,1))h[#h+1]=b
b[1]=br[1]b[2]=br[2]b[6]=A[b[4]][3]b[9]=c[3]b[19]=1
if u then
b=h[as]at(b,o[9]*((ac()&3)+2))end
end
end
end
end
function bg(_,c)if c>-1 then
b=e[9][c]if b[1]>0 or af[31]*_[10][2]-af[32]*_[10][1]<0 then
g=U[b[1]]ab[g and g[30]or#ab+1]={c,1,g or af}_[4]=b[7]b=b[8]>0 and bg(_,b[8])end
else
aU=n
ao=-c
t[9]=-c
end
end
function bo()by,ai=2048
for a,_ in y(h)do
if a>1 and _ and bs(d,_,10)then
m=x(_,d)if m<by then
if A[_[4]][23]&2>0 then
ai=_
by=m
end
end
end
end
end
function onTick()ad(9,aj(32))ad(2,aj(11))ad(3,j)for k=1,3 do
if aj(32)and(not av)or not e[21]then
bb=property.getText(aX)a=1
i=bU
_=aK.sub(bb,a,a)while _~=bUdo
c=aK.byte(_)if c>64 then
i=(i..c-65)+0
if l==1 then
bu=i
e[i]=e[i]or{}elseif l==2 then
F=i
am=0
elseif l==3 then
aS=i
else
if am==0 then
am=F
aS=aS-1
aM={}e[bu][#e[bu]+1]=aM
end
aM[#aM+1]=i
am=am-1
l=N(am,aS)>0 and l-1 or 0
end
l=l+1
i=bU
else
i=i.._
end
a=a+1
_=aK.sub(bb,a,a)end
aX=aX+1
av=bb==bU
end
end
if av then
if aU then
ab,aU={}an=1
for a=1,10 do
e[a]=e[a+10*ao]end
h=e[1]Z=e[4]U=e[8]S=e[10]aI,S[1]=S[1]z=e[12]A=e[15]for a=14,16 do
z[1][a]=0
end
ao=ao+1
for a,_ in y(h)do
for k=7,40 do
_[k]=0
end
bT=_[5]+1
_[7]=A[_[4]][4]_[9],_[10]=aL(#e[7],_)[1]if _[4]==1 then
if d then
_[7]=d[7]_[8]=d[8]end
d=_
elseif _[5]&bP<1 then
h[a]=j
end
end
bA=aI[3]end
for a,_ in y(e[2])do
_[10]=sub(Z[_[2]],Z[_[1]])if _[3]&4>0 then
f,D=U[e[3][_[6]][6]],U[e[3][_[7]][6]]_[8]=N(f[1],D[1])_[9],f[30],D[30]=B(f[2],D[2])else
_[8],_[9]=0,0
end
end
t={}for a=1,32 do
t[a]=0
end
Q=B(Q+1/bF,2/35)ad(1,Q>=0)if Q>=0 then
Q=Q-1/35
bd=bd+1
for a=2,#S do
S[a][0]={}end
for a,s in y(ab)do
_=e[9][s[1]]c=s[3]b=_[2]f=c[b]c[b]=C(_[3],f-_[4],f+_[4])+0
f=c[b]if f==_[3]then
ab[a]=s[2]==_[5]and{_[6],1,c}or{s[1],s[2]+1,c}if _[6]==0 then
bC(ab,a)end
end
c[10]=c[10]or f~=s
c[30]=a
end
for a,_ in y(h)do
if _ then
for k,s in y({1,2,9})do
_[s]=_[s]+_[s+10]end
_[15]=_[15]+1
f=A[_[4]]if _[7]<=0 and _[20]then
_[15]=0
_[6]=f[_[7]<=-f[4]and f[15]>1 and 15 or 14]_[10],_[20]=n
if f[27]>0 then
c={}for k=1,30 do
c[k]=_[k]end
c[4]=f[27]c[6]=f[28]h[#h+1]=c
end
end
aP=e[16][_[6]]if _[15]>=aP[2]and aP[2]~=-1 then
_[6]=aP[4]_[15]=0
R=e[16][_[6]][3]if R==1 then
for a,l in y(h)do
if l then
i=Y-x(_,l)if i>0 then
at(l,i)end
end
end
elseif R==2 then
if bs(_,d,90)then
_[23]=d
_[6]=f[5]end
elseif R==3 then
aw=aq(J(_,_[23])/45+.5)*45
u=j
l=1
bI=f[23]&4>0
while l<5 and not u do
i=al(_,X(aw+e[19][2][l],8))i[9]=_[9]u=aD(i,j,a,l)and(G[1]>=i[9]-24 or bI)l=l+1
end
if u then
for k=1,2 do
_[30+k]=i[k]-_[k]_[k]=i[k]end
_[3]=aw
_[10]=n
else
aD(_,j,a)end
_[9]=bI and _[9]or G[1]b=x(_,_[23])if f[13]>0 and aC(_,_[23],1)and B(b,230)<ac()then
_[6]=f[13]end
if b<64 and f[12]>0 then
_[6]=f[12]end
elseif R==5 then
for a=1,11 do
d[3]=d[3]+e[19][9][a]o=e[14][23]bo()aH(d,1)end
d[3]=d[3]-20
elseif R>9 and _[20]then
_[3]=J(_,_[23])o=e[14][R]_[10]=n
ai=_[23]aH(_,a)end
end
if _[17]and _[17]>0 then
o=e[14][_[17]]if not aD(_,j,a)or _[9]<=G[1]then
if aZ then
at(aZ,f[21]*((ac()&7)+1))end
_[1]=_[1]-_[11]_[2]=_[2]-_[12]_[3]=0
_[6]=A[_[4]][5]_[10]=n
_[11]=0
_[12],_[17]=0
_[19]=0
end
end
if _[6]==1 then
h[a]=j
else
aa=sub(_,aI)L=S[2+aa[1]//Y+aa[2]//Y*bA]if L then
L[0][#L[0]+1]=a
end
end
end
end
for a=1,8 do
if aj(a)and z[1][a+4]>0 then
ae=a
end
end
o=e[14][ae]d[3]=d[3]-ay(3)*(C(be,5,6)*1.5-6)be=abs(ay(3))*be+1
W=d
for a=1,2 do
W=al(W,X(d[3]-M+90*a,ay(a)*8.33))end
W[9]=d[9]for a=1,8 do
u=aD(W,n,1,a)end
if u then
for a=1,2 do
d[30+a]=W[a]-d[a]d[a]=W[a]end
if d[9]>G[1]then
d[19]=d[19]-1
else
d[9]=B(G[1],d[9]+4)d[19]=N(0,d[19])end
else
d[19]=0
d[9]=G[1]u=bd%4>0 or G[6]<18 or at(d,10)end
aG=z[1]c=o[1]if aj(31)and aA<=0 and(c==0 or aG[c]>=o[2])then
ad(3,n)aA=o[3]if c>0 then
aG[c]=aG[c]-o[2]end
bo()aH(d,1)end
aA=aA-1
if ay(4)<0 then
_=al(d,X(d[3],64))_[9]=d[9]aT,as=aC(d,_,2,1)_=e[2][as]if aT==j then
t[2]=as
c,u=_[4]for a=14,16 do
u=u or z[1][a]>0 and c==a
end
if c==1 or u then
bg(_,_[5])elseif c>3000 and c<3005 then
bP=aq(c-3000)end
end
end
end
t[1]=ae
for a=3,8 do
t[a]=d[e[19][4][a]]end
t[5]=1
t[13]=d[3]a=an
bM=n
I=1
ar=#h+#U
while I<3 and bM do
c=I*9+5
if a<=#h then
_=h[a]if a~=1 then
if _ then
if _[10]then
_[10]=j
t[c]=a
for k=1,8 do
t[c+k]=_[e[19][1][k]]end
I=I+1
end
else
t[c]=-a
bC(h,a)I=I+1
ar=ar-1
end
end
else
_=U[a-#h]if _[10]then
_[10]=j
t[c]=a-#h+2^15
for k=1,6 do
t[c+k]=_[k]end
I=I+1
end
end
a=(a-2)%ar+1
an=B(an,ar)bM=a~=an
end
an=a
for a=1,32 do
bG.setNumber(a,t[a])end
end
aB=aB+1
async.httpGet(8,bU)end
function onDraw()aE=screen.drawText
aE(26,137,bF)if av then
for a=1,4 do
b=124+a*7
aE(240,b,aq(z[1][a]))aE(200,b,z[1][13+a])end
end
end
