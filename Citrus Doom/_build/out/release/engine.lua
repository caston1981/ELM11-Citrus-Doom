bU=""

S=128
L=180
bA=output
bB=input
D=math
N=D.max
z=D.min
aD=D.floor
pi=D.pi
ap=bB.getNumber
aa=bB.getBool
ad=bA.setBool
o=true
i=false
w=ipairs
abs=D.abs
bo=table.remove
be=string
function ai(b,g)return{(b[1]+g[1]),(b[2]+g[2])}end
function sub(b,g)return{(b[1]-g[1]),(b[2]-g[2])}end
function bL(b)return D.sin(b/L*pi)end
function al(b)return D.cos(b/L*pi)end
function H(b,g)return D.atan(g[2]-b[2],g[1]-b[1])*L/pi end
function G(b,g,al)return N(z(al,b),g)end
function x(b,g)return D.sqrt(((b[1]-g[1])^2)+((b[2]-g[2])^2))end
function R(b,g)return{al(b)*g,bL(b)*g}end
function exp(b)return b[1],b[2]end
e={}aO=1
ay=3
aw=i
ba=o
af=2
ar=0
aB=0
bc=0
P=0
b_=0
l=1
bg=0
bq=2
function aY(a,b,_)if a<32768then
_=e[7][a]return aY(_[_[3]*(b[2]-_[2])-_[4]*(b[1]-_[1])>0 and 8 or 7],b)else
a=e[5][e[6][a-32768][2]]return Q[e[3][e[2][a[4]][a[5]+6]][6]]end
end
function ao(u,bN,v,bQ,_,a,k)ag=h[v]f=A[ag[4]]av,ab=f[18],f[19]K=av
C=aY(#e[7],u)V,an=exp(C)ae=sub(u,aL)M=X[2+ae[1]//S+ae[2]//S*bh]or{}for a,_ in w(M[0]or{})do
c=h[_]if _~=v and c and ag[14]~=_ then
m=x(c,u)E=A[c[4]]if c[20]then
Y=m-E[18]if Y<K and E[23]&1>0 and(f[23]&1>0 or(u[9]+ab<c[9]or u[9]>c[9]+E[19])==i)then
aS=c
if bN==i then
return i
end
K=Y
bb=H(u,c)end
end
if v==1 and not c[10]then
if m<50then
b=E[25]if b>0then
for p,t in w(B[b])do
if t>0 and B[1][p]<B[2][p]then
c=B
h[_]=i
c[1][p]=aD(z(c[1][p]+t,c[2][p]))if G(p,5,12)==p then
af=p-4
end
end
end
end
b=E[29]if b>0 then
b=e[11][b]for p=7,8 do
d[p]=G(d[p]+b[p*2-13],d[p],b[p*2-12])end
h[_]=i
end
end
end
end
end
aS=i
if an-V<ab or V>u[9]+24then
return i
end
for a=1,#M do
_=e[2][M[a]]m,bl=bk(u,T[_[1]],T[_[2]])if m<K then
if(_[3]&1>0 and f[23]&1>0)or _[3]&4==0 then
if v>1 or aV>0 or _[3]&4>0 then
K=m
bb=bl
end
else
aT,bd=z(_[9],an),N(_[8],V)if z(u[9],an-ab)+24<bd or N(u[9],V)+ab>aT or aT-bd<ab then
K=m
bb=bl
else
if bQ==1 and(_[3]&512>0 or v==1)and(_[4]==2 or v>1)then
aK(_,_[5])end
an,V=aT,bd
end
end
end
end
C={V,an}if bN then
if K~=av then
_=ai(u,R(bb,K-av))u[1]=_[1]u[2]=_[2]end
return o
end
return K==av
end
function bk(q,y,aA)O=x(y,q)br=H(y,aA)+90
bw=br-H(q,y)bt=-O*bL(bw)aV=O*al(bw)aG=br
if aV<0 then
aG=aG+L
end
if bt<0 then
return O,H(q,y)elseif bt>x(aA,y)then
return x(aA,q),H(q,aA)else
return abs(aV),aG
end
end
function ax(q,y,aR,v,_)aH=x(q,y)az=aH
aU=o
Y,aE=exp(q)bR,bS=exp(y)aQ,aJ=exp(sub(y,q))aq,bD=q[9]+32,y[9]+32
r=i
for a,_ in w(e[2])do
bn=T[_[1]]bm,bv=exp(sub(T[_[2]],bn))bx,bj=exp(sub(q,bn))bO=bv*aQ-bm*aJ
U=(bm*bj-bv*bx)/bO
bF=(aQ*bj-aJ*bx)/bO
if G(U,0,1)==U and G(bF,0,1)==bF then
bs={Y+(U*aQ),aE+(U*aJ)}m=x(q,bs)F=aq+(bD-aq)*(m/aH)if G(F,_[8]+1,_[9])~=F then
aU=i
if aR==1 then
return i
end
if m<az then
az=m
bE,bJ=exp(bs)bH=F
bI=a
end
end
end
end
if aR>1 then
if aR==3 then
for a,_ in w(h)do
if _ and a~=v then
f=A[_[4]]if f[23]&1>0 and _[20]then
m=x(q,_)if m<az then
U=bk(_,q,y)O=(m/aH)F=aq+(bD-aq)*O
if G(F,_[9],_[9]+f[19])==F and U<f[18]then
az=m
r=o
aU=i
bE=Y+(bR-Y)*O
bJ=aE+(bS-aE)*O
bH=F
bI=a
end
end
end
end
end
end
return aU,bI,{bE,bJ,bH}end
return o
end
function httpReply(b,g,al)bz=aB//2
aB=0
end
function ac()b_=b_%256+1
return e[13][1][b_]end
function au(_,a)f=A[_[4]]if f[23]&2>0 and _[7]>0 then
_[8]=_[8]-(a+1)//2
_[7]=_[7]-a//2+z(_[8],0)_[8]=N(_[8],0)if ac()<f[10]then
_[6]=f[9]_[15]=0
_[23]=d
_[10]=o
end
end
end
function bu(b,g,at)return g[20]and abs(((H(b,g)-b[3]+L)%360)-L)<at and ax(b,g,1)end
function aZ(I,v)bM=aj and(aj[9]-I[9])*n[6]/x(aj,I)or 0
for a=1,n[12]do
b={}for a=1,30 do
b[a]=I[a]end
b[4]=n[8]b[10]=o
b[14]=v
bK=(ac()/S-1)*n[10]aP=R(I[3]+bK,n[6])if n[7]>0then
h[#h+1]=b
f=A[b[4]]b[6]=f[3]b[9]=I[9]+n[13]b[11]=aP[1]b[12]=aP[2]b[17]=af
b[19]=bM
else
c=ai(I,aP)c[9]=d[9]+bM
aX,as,c=ax(I,c,3,v)if not aX then
bp=sub(c,R(I[3]+bK,1))h[#h+1]=b
b[1]=bp[1]b[2]=bp[2]b[6]=A[b[4]][3]b[9]=c[3]b[19]=1
if r then
b=h[as]au(b,n[9]*((ac()&3)+2))end
end
end
end
end
function aK(_,c)if c>-1 then
b=e[9][c]if b[1]>0 or ag[31]*_[10][2]-ag[32]*_[10][1]<0 then
g=Q[b[1]]ak[g and g[30]or#ak+1]={c,1,g or ag}_[4]=b[7]b=b[8]>0 and aK(_,b[8])end
else
ba=o
ay=-c
s[9]=-c
end
end
function bP()bi,aj=2048
for a,_ in w(h)do
if a>1 and _ and bu(d,_,10)then
m=x(_,d)if m<bi then
if A[_[4]][23]&2>0then
aj=_
bi=m
end
end
end
end
end
function onTick()ad(9,aa(32))ad(2,aa(11))ad(3,i)for k=1,3 do
if aa(32)and(not aw)or not e[21]then
aM=property.getText(aO)a=1
j=bU
_=be.sub(aM,a,a)while _~=bUdo
c=be.byte(_)if c>64then
j=(j..c-65)+0
if l==1then
bC=j
e[j]=e[j]or{}elseif l==2then
F=j
ah=0
elseif l==3then
bf=j
else
if ah==0then
ah=F
bf=bf-1
aF={}e[bC][#e[bC]+1]=aF
end
aF[#aF+1]=j
ah=ah-1
l=N(ah,bf)>0 and l-1 or 0
end
l=l+1
j=bU
else
j=j.._
end
a=a+1
_=be.sub(aM,a,a)end
aO=aO+1
aw=aM==bU
end
end
if aw then
if ba then
ak,ba={}am=1
for a=1,10 do
e[a]=e[a+10*ay]end
h=e[1]T=e[4]Q=e[8]X=e[10]aL,X[1]=X[1]B=e[12]A=e[15]for a=14,16 do
B[1][a]=0
end
ay=ay+1
for a,_ in w(h)do
for k=7,40 do
_[k]=0
end
bT=_[5]+1
_[7]=A[_[4]][4]_[9],_[10]=aY(#e[7],_)[1]if _[4]==1 then
if d then
_[7]=d[7]_[8]=d[8]end
d=_
elseif _[5]&bq<1then
h[a]=i
end
end
bh=aL[3]end
for a,_ in w(e[2])do
_[10]=sub(T[_[2]],T[_[1]])if _[3]&4>0 then
f,E=Q[e[3][_[6]][6]],Q[e[3][_[7]][6]]_[8]=N(f[1],E[1])_[9],f[30],E[30]=z(f[2],E[2])else
_[8],_[9]=0,0
end
end
s={}for a=1,32 do
s[a]=0
end
P=z(P+1/bz,2/35)ad(1,P>=0)if P>=0 then
P=P-1/35
bc=bc+1
for a=2,#X do
X[a][0]={}end
for a,t in w(ak)do
_=e[9][t[1]]c=t[3]b=_[2]f=c[b]c[b]=G(_[3],f-_[4],f+_[4])+0
f=c[b]if f==_[3]then
ak[a]=t[2]==_[5]and{_[6],1,c}or{t[1],t[2]+1,c}if _[6]==0 then
bo(ak,a)end
end
c[10]=c[10]or f~=t
c[30]=a
end
for a,_ in w(h)do
if _ then
for k,t in w({1,2,9})do
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
aI=e[16][_[6]]if _[15]>=aI[2]and aI[2]~=-1then
_[6]=aI[4]_[15]=0
Z=e[16][_[6]][3]if Z==1 then
for a,l in w(h)do
if l then
j=S-x(_,l)if j>0 then
au(l,j)end
end
end
elseif Z==2then
if bu(_,d,90)then
_[23]=d
_[6]=f[5]end
elseif Z==3then
at=aD(H(_,_[23])/45+.5)*45
r=i
l=1
bG=f[23]&4>0
while l<5 and not r do
j=ai(_,R(at+e[19][2][l],8))j[9]=_[9]r=ao(j,i,a,l)and(C[1]>=j[9]-24 or bG)l=l+1
end
if r then
for k=1,2 do
_[30+k]=j[k]-_[k]_[k]=j[k]end
_[3]=at
_[10]=o
else
ao(_,i,a)end
_[9]=bG and _[9]or C[1]b=x(_,_[23])if f[13]>0 and ax(_,_[23],1)and z(b,230)<ac()then
_[6]=f[13]end
if b<64 and f[12]>0then
_[6]=f[12]end
elseif Z==5then
for a=1,11 do
d[3]=d[3]+e[19][9][a]n=e[14][23]bP()aZ(d,1)end
d[3]=d[3]-20
elseif Z>9 and _[20]then
_[3]=H(_,_[23])n=e[14][Z]_[10]=o
aj=_[23]aZ(_,a)end
end
if _[17]and _[17]>0then
n=e[14][_[17]]if not ao(_,i,a)or _[9]<=C[1]then
if aS then
au(aS,f[21]*((ac()&7)+1))end
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
ae=sub(_,aL)M=X[2+ae[1]//S+ae[2]//S*bh]if M then
M[0][#M[0]+1]=a
end
end
end
end
for a=1,8 do
if aa(a)and B[1][a+4]>0then
af=a
end
end
n=e[14][af]d[3]=d[3]-ap(3)*(G(bg,5,6)*1.5-6)bg=abs(ap(3))*bg+1
W=d
for a=1,2 do
W=ai(W,R(d[3]-L+90*a,ap(a)*8.33))end
W[9]=d[9]for a=1,8 do
r=ao(W,o,1,a)end
if r then
for a=1,2 do
d[30+a]=W[a]-d[a]d[a]=W[a]end
if d[9]>C[1]then
d[19]=d[19]-1
else
d[9]=z(C[1],d[9]+4)d[19]=N(0,d[19])end
else
d[19]=0
d[9]=C[1]r=bc%4>0 or C[6]<18 or au(d,10)end
aN=B[1]c=n[1]if aa(31)and ar<=0 and(c==0 or aN[c]>=n[2])then
ad(3,o)ar=n[3]if c>0then
aN[c]=aN[c]-n[2]end
bP()aZ(d,1)end
ar=ar-1
if ap(4)<0 then
_=ai(d,R(d[3],64))_[9]=d[9]aX,as=ax(d,_,2,1)_=e[2][as]if aX==i then
s[2]=as
c,r=_[4]for a=14,16 do
r=r or B[1][a]>0 and c==a
end
if c==1 or r then
aK(_,_[5])elseif c>3000 and c<3005then
bq=aD(c-3000)end
end
end
end
s[1]=af
for a=3,8 do
s[a]=d[e[19][4][a]]end
s[5]=1
s[13]=d[3]a=am
by=o
J=1
aC=#h+#Q
while J<3 and by do
c=J*9+5
if a<=#h then
_=h[a]if a~=1 then
if _ then
if _[10]then
_[10]=i
s[c]=a
for k=1,8 do
s[c+k]=_[e[19][1][k]]end
J=J+1
end
else
s[c]=-a
bo(h,a)J=J+1
aC=aC-1
end
end
else
_=Q[a-#h]if _[10]then
_[10]=i
s[c]=a-#h+2^15
for k=1,6 do
s[c+k]=_[k]end
J=J+1
end
end
a=((a-2)%aC)+1
am=z(am,aC)by=a~=am
end
am=a
for a=1,32 do
bA.setNumber(a,s[a])end
end
aB=aB+1
async.httpGet(8,bU)end
function onDraw()aW=screen.drawText
aW(26,137,bz)if aw then
for a=1,4 do
b=124+a*7
aW(240,b,aD(B[1][a]))aW(200,b,B[1][13+a])end
end
end
