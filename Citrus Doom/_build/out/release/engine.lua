
aa=128
O=180
E=math
M=E.max
B=E.min
b_=E.floor
pi=E.pi
aw=input.getNumber
af=input.getBool
al=output.setBool
o=true
v=false
y=ipairs
abs=E.abs
bd=table.remove
aS=string
function ah(b,h)return{(b[1]+h[1]),(b[2]+h[2])}end
function sub(b,h)return{(b[1]-h[1]),(b[2]-h[2])}end
function by(b)return E.sin(b/O*pi)end
function ab(b)return E.cos(b/O*pi)end
function J(b,h)return E.atan(h[2]-b[2],h[1]-b[1])*O/pi end
function F(b,h,ab)return M(B(ab,b),h)end
function u(b,h)return E.sqrt(((b[1]-h[1])^2)+((b[2]-h[2])^2))end
function T(b,h)return{ab(b)*h,by(b)*h}end
function exp(b)return b[1],b[2]end
f={}aT=1
au=3
aM=o
ad=2
ax=0
at=0
aF=0
aE=0
W=0
aG=0
l=1
aO=0
bP=2
function aN(a,b,_)if a<2^15 then
_=f[7][a]return aN(_[_[3]*(b[2]-_[2])-_[4]*(b[1]-_[1])>0 and 8 or 7],b)else
a=f[5][f[6][a-32768][2]]return V[f[3][f[2][a[4]][a[5]+6]][6]]end
end
function ao(s,bz,D,bu,_)Q=g[D]d=A[Q[4]]az,aj=d[18],d[19]I=az
C=aN(#f[7],s)P,ac=exp(C)am=sub(s,aW)L=Z[2+am[1]//aa+am[2]//aa*bw]or{}for a,_ in y(L[0]or{})do
c=g[_]if _~=D and c and Q[14]~=c then
k=u(c,s)H=A[c[4]]if c[20]then
Y=k-H[18]if Y<I and H[23]&1>0 and(d[23]&1>0 or F(s[9],c[9]-aj,c[9]+H[19])==s[9])then
bf=c
if bz==v then
return
end
I=Y
aY=J(s,c)end
end
if D==1 then
if k<50 then
b=H[25]if b>0 then
for q,r in y(w[b])do
if r>0 and w[1][q]<w[2][q]then
c=w
g[_]=v
c[1][q]=b_(B(c[1][q]+r,c[2][q]))if F(q,5,12)==q then
ad=q-4
end
end
end
end
b=H[29]if b>0 then
b=f[11][b]for q=7,8 do
e[q]=F(e[q]+b[q*2-13],e[q],b[q*2-12])end
g[_]=v
end
end
end
end
end
if ac-P<aj or P>s[9]+24 then
t=(bu or 1)<8 or aF%4>0 or C[6]<18 or aB(Q,10)return
end
for a=1,#L do
_=f[2][L[a]]k,bJ=bL(s,R[_[1]],R[_[2]])if k<I then
if(_[3]&1>0 and d[23]&1>0)or _[3]&4==0 then
if D>1 or aR>0 or _[3]&4>0 then
I=k
aY=bJ
end
else
aP,ba=B(_[9],ac),M(_[8],P)if B(s[9],ac-aj)+24<ba or M(s[9],P)+aj>aP or aP-ba<aj then
I=k
aY=bJ
else
if bu==1 and(_[3]&512>0 or D==1)and(_[4]==2 or D>1)then
aI(_,_[5])end
ac,P=aP,ba
end
end
end
end
C,bf={P,ac}if bz then
if I~=az then
_=ah(s,T(aY,I-az))s[1]=_[1]s[2]=_[2]end
return o
end
return I==az
end
function bL(p,x,ap)N=u(x,p)bi=J(x,ap)+90
bt=bi-J(p,x)bC=-N*by(bt)aR=N*ab(bt)bc=bi
if aR<0 then
bc=bc+O
end
if bC<0 then
return N,J(p,x)elseif bC>u(ap,x)then
return u(ap,p),J(p,ap)else
return abs(aR),bc
end
end
function as(p,x,aX,D,_)be=u(p,x)ar=be
aC,t=o
Y,aJ=exp(p)bR,bQ=exp(x)aU,aZ=exp(sub(x,p))aA,bv=p[9]+32,x[9]+32
for a,_ in y(f[2])do
bm=R[_[1]]bj,bh=exp(sub(R[_[2]],bm))bG,bD=exp(sub(p,bm))bo=bh*aU-bj*aZ
U=(bj*bD-bh*bG)/bo
bA=(aU*bD-aZ*bG)/bo
if F(U,0,1)==U and F(bA,0,1)==bA then
bI={Y+(U*aU),aJ+(U*aZ)}k=u(p,bI)G=aA+(bv-aA)*(k/be)if F(G,_[8]+1,_[9])~=G then
aC=v
if aX==1 then
return
end
if k<ar then
ar=k
bE,bn=exp(bI)bq=G
bs=a
end
end
end
end
if aX>1 then
if aX==3 then
for a,_ in y(g)do
if _ and a~=D then
d=A[_[4]]if d[23]&1>0 and _[20]then
k=u(p,_)if k<ar then
U=bL(_,p,x)N=(k/be)G=aA+(bv-aA)*N
if F(G,_[9],_[9]+d[19])==G and U<d[18]then
ar=k
t,aC=o
bE=Y+(bR-Y)*N
bn=aJ+(bQ-aJ)*N
bq=G
bs=a
end
end
end
end
end
end
return aC,bs,{bE,bn,bq}end
return o
end
function httpReply(b,h,ab)bp=at//2
at=0
end
function ag()aG=aG%256+1
return f[13][1][aG]end
function aB(_,a,c)d=A[_[4]]if d[23]&2>0 and _[7]>0 then
_[8]=_[8]-(a+1)//2
_[7]=_[7]-a//2+B(_[8],0)_[8]=M(_[8],0)_[33]=d[13]~="lost soul missile state" and c or e
if ag()<d[10]then
_[6]=d[9]_[15]=0
_[10]=o
end
end
end
function bx(b,h,aq)return h[20]and abs(((J(b,h)-b[3]+O)%360)-O)<aq and as(b,h,1)end
function aV(z,D)bk=an and(an[9]-z[9])*n[6]/u(an,z)or 0
for a=1,n[12]do
b={}for a=1,33 do
b[a]=z[a]end
b[4]=n[8]b[10]=o
b[14]=z
bK=(ag()/aa-1)*n[10]aL=T(z[3]+bK,n[6])if n[7]>0 then
g[#g+1]=b
d=A[b[4]]b[6]=d[3]b[9]=z[9]+n[13]b[11]=aL[1]b[12]=aL[2]b[17]=ad
b[19]=bk
else
c=ah(z,aL)c[9]=e[9]+bk
bg,av,c=as(z,c,3,D)if not bg then
bB=sub(c,T(z[3]+bK,1))g[#g+1]=b
b[1]=bB[1]b[2]=bB[2]b[6]=A[b[4]][3]b[9]=c[3]b[19]=1
if t then
b=g[av]aB(b,n[9]*((ag()&3)+2),z)end
end
end
end
end
function aI(_,c)if c>-1 then
b=f[9][c]if b[1]>0 or Q[31]*_[10][2]-Q[32]*_[10][1]<0 then
h=V[b[1]]ak[h and h[30]or#ak+1]={c,1,h or Q}_[4]=b[7]b=b[8]>0 and aI(_,b[8])end
else
aM=o
au=-c
m[10]=-c
end
end
function bF()bN,an=2048
for a,_ in y(g)do
if a>1 and _ and bx(e,_,10)then
k=u(_,e)if k<bN then
if A[_[4]][23]&2>0 then
an=_
bN=k
end
end
end
end
end
function bM(_)if _[9]~=C[1]and not bl then
_[9]=C[1]_[10]=true
end
end
function onTick()al(9,af(32))al(2,af(11))al(3,v)for j=1,3 do
if af(32)and(not bO)or not f[21]then
bb=property.getText(aT)a=1
i=""
_=aS.sub(bb,a,a)while _~=""do
c=aS.byte(_)if c>64 then
i=(i..c-65)+0
if l==1 then
br=i
f[i]=f[i]or{}elseif l==2 then
G=i
ai=0
elseif l==3 then
aH=i
else
if ai==0 then
ai=G
aH=aH-1
aD={}f[br][#f[br]+1]=aD
end
aD[#aD+1]=i
ai=ai-1
l=M(ai,aH)>0 and l-1 or 0
end
l=l+1
i=""
else
i=i.._
end
a=a+1
_=aS.sub(bb,a,a)end
aT=aT+1
bO=bb==""
end
end
if bO then
if aM then
ak,aM={}ae=1
for a=1,10 do
f[a]=f[a+10*au]end
g=f[1]R=f[4]V=f[8]Z=f[10]aW,Z[1]=Z[1]w=f[12]A=f[15]for a=14,16 do
w[1][a]=0
end
au=au+1
for a=#g,1,-1 do
_=g[a]for j=7,32 do
_[j]=0
end
_[7]=A[_[4]][4]_[9],_[10]=aN(#f[7],_)[1]if _[5]&bP<1 then
bd(g,a)elseif _[4]==1 then
if e then
_[7]=e[7]_[8]=e[8]end
e=_
end
end
bw=aW[3]end
for a,_ in y(f[2])do
_[10]=sub(R[_[2]],R[_[1]])if _[3]&4>0 then
d,H=V[f[3][_[6]][6]],V[f[3][_[7]][6]]_[8]=M(d[1],H[1])_[9],d[30],H[30]=B(d[2],H[2])else
_[8],_[9]=0,0
end
end
m={}for a=1,32 do
m[a]=0
end
aE=aE+1
W=B(W+1/bp,2/35)al(1,W>=0)if W>=0 then
W=W-1/35
aF=aF+1
for a=2,#Z do
Z[a][0]={}end
for a,r in y(ak)do
_=f[9][r[1]]c=r[3]b=_[2]d=c[b]c[b]=F(_[3],d-_[4],d+_[4])+0
d=c[b]if d==_[3]then
ak[a]=r[2]==_[5]and{_[6],1,c}or{r[1],r[2]+1,c}if _[6]==0 then
bd(ak,a)end
end
c[10]=c[10]or d~=r
c[30]=a
end
for a,_ in y(g)do
if _ then
for j,r in y({1,2,9})do
_[r]=_[r]+_[r+10]end
_[15]=_[15]+1
d=A[_[4]]if _[7]<=0 and _[20]then
_[15]=0
_[6]=d[_[7]<=-d[4]and d[15]>1 and 15 or 14]_[10],_[20]=o
m[12]=d[16]if d[27]>0 then
c={}for j=1,30 do
c[j]=_[j]end
c[4]=d[27]c[6]=d[28]g[#g+1]=c
end
end
aQ=f[16][_[6]]_[33]=_[33]and(_[33][20]and _[33]or e)if _[15]>=aQ[2]and aQ[2]~=-1 then
_[6]=aQ[4]_[15]=0
X=f[16][_[6]][3]bl=d[23]&4>0
if X==1 then
for a,l in y(g)do
if l then
i=aa-u(_,l)if i>0 then
aB(l,i)end
end
end
elseif X==2 then
if bx(_,e,90)then
_[33]=e
_[6]=d[5]m[12]=d[6]end
ao(_,v,a,8)bM(_)elseif X==3 then
aq,t=b_(J(_,_[33])/45+.5)*45
l=1
while l<5 and not t do
i=ah(_,T(aq+f[19][2][l],8))i[9]=_[9]t=ao(i,v,a,l)and(C[1]>=i[9]-24 or bl)l=l+1
end
if t then
for j=1,2 do
_[30+j]=i[j]-_[j]_[j]=i[j]end
_[3]=aq
_[10]=o
else
ao(_,v,a,8)end
bM(_)b=u(_,_[33])if d[13]>0 and as(_,_[33],1)and B(b,230)<ag()then
_[6]=d[13]end
if b<64 and d[12]>0 then
_[6]=d[12]end
elseif X==5 then
for a=1,11 do
e[3]=e[3]+f[19][9][a]n=f[14][23]bF()aV(e,1)end
e[3]=e[3]-20
elseif X>9 and _[20]then
_[3]=J(_,_[33])n=f[14][X]_[10]=o
an=_[33]aV(_,a)end
end
if _[17]and _[17]>0 then
n=f[14][_[17]]if not ao(_,v,a)or _[9]<=C[1]then
if bf then
aB(bf,d[21]*((ag()&7)+1),_[14])end
_[1]=_[1]-_[11]_[2]=_[2]-_[12]_[3]=0
_[6]=A[_[4]][5]_[10]=o
_[11]=0
_[12],_[17]=0
m[12]=d[16]_[19]=0
end
end
if _[6]==1 then
g[a]=v
else
am=sub(_,aW)L=Z[2+am[1]//aa+am[2]//aa*bw]if L then
L[0][#L[0]+1]=a
end
end
end
end
for a=1,8 do
if af(a)and w[1][a+4]>0 then
ad=a
end
end
n=f[14][ad]e[3]=e[3]-aw(3)*(F(aO,5,6)*1.5-6)aO=abs(aw(3))*aO+1
S=e
for a=1,2 do
S=ah(S,T(e[3]-O+90*a,aw(a)*8.33))end
S[9]=e[9]for a=1,8 do
t=ao(S,o,1,a)end
if t then
for a=1,2 do
e[30+a]=S[a]-e[a]e[a]=S[a]end
if e[9]>C[1]then
e[19]=e[19]-1
else
e[9]=B(C[1],e[9]+4)e[19]=M(0,e[19])end
else
e[19]=0
e[9]=C[1]end
aK=w[1]c=n[1]if af(31)and ax<=0 and(c==0 or aK[c]>=n[2])then
al(3,o)ax=n[3]if c>0 then
aK[c]=aK[c]-n[2]end
bF()aV(e,1)end
ax=ax-1
if aw(4)<0 then
_=ah(e,T(e[3],64))_[9]=e[9]bg,av=as(e,_,2,1)_=f[2][av]if bg==v then
m[2]=av
c,t=_[4]for a=14,16 do
t=t or w[1][a]>0 and c==a
end
if c==1 or t then
aI(_,_[5])elseif c>3000 and c<3005 then
bP=b_(c-3000)end
end
end
end
m[1]=ad
for a=3,14 do
m[a]=e[f[19][4][a]]or m[a]end
w[1][17]=bp
m[11]=w[1][aE%#w[1]+1]a=ae
bH=o
K=1
ay=#g+#V
while K<3 and bH do
c=K*9+6
if a<=#g then
_=g[a]if a~=1 then
if _ then
if _[10]then
m[c],_[10]=a
for j=1,8 do
m[c+j]=_[f[19][1][j]]end
K=K+1
end
else
m[c]=-a
bd(g,a)K=K+1
ay=ay-1
end
end
else
_=V[a-#g]if _[10]then
m[c],_[10]=a-#g+2^15
for j=1,6 do
m[c+j]=_[j]end
K=K+1
end
end
a=(a-2)%ay+1
ae=B(ae,ay)bH=a~=ae
end
ae=a
for a=1,32 do
output.setNumber(a,m[a])end
end
at=at+1
async.httpGet(8,"")end
