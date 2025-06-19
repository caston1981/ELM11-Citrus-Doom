
Q=128
L=180
F=math
M=F.max
B=F.min
aX=F.floor
pi=F.pi
aw=input.getNumber
ag=input.getBool
al=output.setBool
n=true
v=false
C=ipairs
abs=F.abs
be=table.remove
aY=string
function af(b,g)return{(b[1]+g[1]),(b[2]+g[2])}end
function sub(b,g)return{(b[1]-g[1]),(b[2]-g[2])}end
function bD(b)return F.sin(b/L*pi)end
function ad(b)return F.cos(b/L*pi)end
function J(b,g)return F.atan(g[2]-b[2],g[1]-b[1])*L/pi end
function H(b,g,ad)return M(B(ad,b),g)end
function u(b,g)return F.sqrt(((b[1]-g[1])^2)+((b[2]-g[2])^2))end
function U(b,g)return{ad(b)*g,bD(b)*g}end
function exp(b)return b[1],b[2]end
f={}aT=1
aq=3
aI=n
an=2
as=0
aB=0
aU=0
aZ=0
Y=0
aM=0
l=1
aV=0
bM=2
function aH(a,b,_)if a<2^15 then
_=f[7][a]return aH(_[_[3]*(b[2]-_[2])-_[4]*(b[1]-_[1])>0 and 8 or 7],b)else
a=f[5][f[6][a-32768][2]]return P[f[3][f[2][a[4]][a[5]+6]][6]]end
end
function am(t,bv,z,bm,_)W=h[z]d=A[W[4]]ax,ac=d[18],d[19]I=ax
D=aH(#f[7],t)S,ab=exp(D)ae=sub(t,aL)O=X[2+ae[1]//Q+ae[2]//Q*bF]or{}for a,_ in C(O[0]or{})do
c=h[_]if _~=z and c and W[14]~=c then
k=u(c,t)E=A[c[4]]if c[20]then
Z=k-E[18]if Z<I and E[23]&1>0 and(d[23]&1>0 or H(t[9],c[9]-ac,c[9]+E[19])==t[9])then
aP=c
if bv==v then
return
end
I=Z
aW=J(t,c)end
end
if z==1 then
if k<50 then
b=E[25]if b>0 then
for q,s in C(w[b])do
if s>0 and w[1][q]<w[2][q]then
c=w
h[_]=v
c[1][q]=aX(B(c[1][q]+s,c[2][q]))if H(q,5,12)==q then
an=q-4
end
end
end
end
b=E[29]if b>0 then
b=f[11][b]for q=7,8 do
e[q]=H(e[q]+b[q*2-13],e[q],b[q*2-12])end
h[_]=v
end
end
end
end
end
if ab-S<ac or S>t[9]+24 then
r=(bm or 1)<8 or aU%4>0 or D[6]<18 or ap(W,10)return
end
for a=1,#O do
_=f[2][O[a]]k,bh=br(t,T[_[1]],T[_[2]])if k<I then
if(_[3]&1>0 and d[23]&1>0)or _[3]&4==0 then
if z>1 or aK>0 or _[3]&4>0 then
I=k
aW=bh
end
else
ba,aD=B(_[9],ab),M(_[8],S)if B(t[9],ab-ac)+24<aD or M(t[9],S)+ac>ba or ba-aD<ac then
I=k
aW=bh
else
if bm==1 and(_[3]&512>0 or z==1)and(_[4]==2 or z>1)then
aN(_,_[5])end
ab,S=ba,aD
end
end
end
end
D,aP={S,ab}if bv then
if I~=ax then
_=af(t,U(aW,I-ax))t[1]=_[1]t[2]=_[2]end
return n
end
return I==ax
end
function br(p,x,aA)N=u(x,p)bu=J(x,aA)+90
bB=bu-J(p,x)bH=-N*bD(bB)aK=N*ad(bB)aS=bu
if aK<0 then
aS=aS+L
end
if bH<0 then
return N,J(p,x)elseif bH>u(aA,x)then
return u(aA,p),J(p,aA)else
return abs(aK),aS
end
end
function ay(p,x,aG,z,_)aJ=u(p,x)ar=aJ
aQ,r=n
Z,aR=exp(p)bQ,bR=exp(x)bd,bf=exp(sub(x,p))az,bC=p[9]+32,x[9]+32
for a,_ in C(f[2])do
bk=T[_[1]]bp,bE=exp(sub(T[_[2]],bk))bN,bz=exp(sub(p,bk))bL=bE*bd-bp*bf
aa=(bp*bz-bE*bN)/bL
bw=(bd*bz-bf*bN)/bL
if H(aa,0,1)==aa and H(bw,0,1)==bw then
bx={Z+(aa*bd),aR+(aa*bf)}k=u(p,bx)G=az+(bC-az)*(k/aJ)if H(G,_[8]+1,_[9])~=G then
aQ=v
if aG==1 then
return
end
if k<ar then
ar=k
bI,bO=exp(bx)bG=G
bs=a
end
end
end
end
if aG>1 then
if aG==3 then
for a,_ in C(h)do
if _ and a~=z then
d=A[_[4]]if d[23]&1>0 and _[20]then
k=u(p,_)if k<ar then
aa=br(_,p,x)N=(k/aJ)G=az+(bC-az)*N
if H(G,_[9],_[9]+d[19])==G and aa<d[18]then
ar=k
r,aQ=n
bI=Z+(bQ-Z)*N
bO=aR+(bR-aR)*N
bG=G
bs=a
end
end
end
end
end
end
return aQ,bs,{bI,bO,bG}end
return n
end
function httpReply(b,g,ad)bo=aB//2
aB=0
end
function ah()aM=aM%256+1
return f[13][1][aM]end
function ap(_,a,c)d=A[_[4]]if d[23]&2>0 and _[7]>0 then
_[8]=_[8]-(a+1)//2
_[7]=_[7]-a//2+B(_[8],0)_[8]=M(_[8],0)_[33]=d[13]~="lost soul missile state" and c or e
if ah()<d[10]then
_[6]=d[9]_[15]=0
_[10]=n
end
end
end
function bq(b,g,au)return g[20]and abs(((J(b,g)-b[3]+L)%360)-L)<au and ay(b,g,1)end
function aF(y,z)bA=aj and(aj[9]-y[9])*o[6]/u(aj,y)or 0
for a=1,o[12]do
b={}for a=1,33 do
b[a]=y[a]end
b[4]=o[8]b[10]=n
b[14]=y
bn=(ah()/Q-1)*o[10]bb=U(y[3]+bn,o[6])if o[7]>0 then
h[#h+1]=b
d=A[b[4]]b[6]=d[3]b[9]=y[9]+o[13]b[11]=bb[1]b[12]=bb[2]b[17]=an
b[19]=bA
else
c=af(y,bb)c[9]=e[9]+bA
aO,av,c=ay(y,c,3,z)if not aO then
bJ=sub(c,U(y[3]+bn,1))h[#h+1]=b
b[1]=bJ[1]b[2]=bJ[2]b[6]=A[b[4]][3]b[9]=c[3]b[19]=1
if r then
b=h[av]ap(b,o[9]*((ah()&3)+2),y)end
end
end
end
end
function aN(_,c)if c>-1 then
b=f[9][c]if b[1]>0 or W[31]*_[10][2]-W[32]*_[10][1]<0 then
g=P[b[1]]ai[g and g[30]or#ai+1]={c,1,g or W}_[4]=b[7]b=b[8]>0 and aN(_,b[8])end
else
aI=n
aq=-c
m[10]=-c
end
end
function bt()bK,aj=2048
for a,_ in C(h)do
if a>1 and _ and bq(e,_,10)then
k=u(_,e)if k<bK then
if A[_[4]][23]&2>0 then
aj=_
bK=k
end
end
end
end
end
function bP(_)if _[9]~=D[1]and not bi then
_[9]=D[1]_[10]=true
end
end
function onTick()al(9,ag(32))al(2,ag(11))al(3,v)for j=1,3 do
if ag(32)and(not bj)or not f[21]then
bg=property.getText(aT)a=1
i=""
_=aY.sub(bg,a,a)while _~=""do
c=aY.byte(_)if c>64 then
i=(i..c-65)+0
if l==1 then
bl=i
f[i]=f[i]or{}elseif l==2 then
G=i
ak=0
elseif l==3 then
bc=i
else
if ak==0 then
ak=G
bc=bc-1
aE={}f[bl][#f[bl]+1]=aE
end
aE[#aE+1]=i
ak=ak-1
l=M(ak,bc)>0 and l-1 or 0
end
l=l+1
i=""
else
i=i.._
end
a=a+1
_=aY.sub(bg,a,a)end
aT=aT+1
bj=bg==""
end
end
if bj then
if aI then
ai,aI={}ao=1
for a=1,10 do
f[a]=f[a+10*aq]end
h=f[1]T=f[4]P=f[8]X=f[10]aL,X[1]=X[1]w=f[12]A=f[15]for a=14,16 do
w[1][a]=0
end
aq=aq+1
for a=#h,1,-1 do
_=h[a]for j=7,32 do
_[j]=0
end
_[7]=A[_[4]][4]_[9],_[10]=aH(#f[7],_)[1]if _[5]&bM<1 then
be(h,a)elseif _[4]==1 then
if e then
_[7]=e[7]_[8]=e[8]end
e=_
end
end
bF=aL[3]end
for a,_ in C(f[2])do
_[10]=sub(T[_[2]],T[_[1]])if _[3]&4>0 then
d,E=P[f[3][_[6]][6]],P[f[3][_[7]][6]]_[8]=M(d[1],E[1])_[9],d[30],E[30]=B(d[2],E[2])else
_[8],_[9]=0,0
end
end
m={}for a=1,32 do
m[a]=0
end
aZ=aZ+1
Y=B(Y+1/bo,2/35)al(1,Y>=0)if Y>=0 then
Y=Y-1/35
aU=aU+1
for a=2,#X do
X[a][0]={}end
for a,s in C(ai)do
_=f[9][s[1]]c=s[3]b=_[2]d=c[b]c[b]=H(_[3],d-_[4],d+_[4])+0
d=c[b]if d==_[3]then
ai[a]=s[2]==_[5]and{_[6],1,c}or{s[1],s[2]+1,c}if _[6]==0 then
be(ai,a)end
end
c[10]=c[10]or d~=s
c[30]=a
end
for a,_ in C(h)do
if _ then
for j,s in C({1,2,9})do
_[s]=_[s]+_[s+10]end
_[15]=_[15]+1
d=A[_[4]]if _[7]<=0 and _[20]then
_[15]=0
_[6]=d[_[7]<=-d[4]and d[15]>1 and 15 or 14]_[10],_[20]=n
m[12]=d[16]if d[27]>0 then
c={}for j=1,30 do
c[j]=_[j]end
c[4]=d[27]c[6]=d[28]h[#h+1]=c
end
end
aC=f[16][_[6]]_[33]=_[33]and(_[33][20]and _[33]or e)if _[15]>=aC[2]and aC[2]~=-1 then
_[6]=aC[4]_[15]=0
V=f[16][_[6]][3]bi=d[23]&4>0
if V==1 then
for a,l in C(h)do
if l then
i=Q-u(_,l)if i>0 then
ap(l,i)end
end
end
elseif V==2 then
if bq(_,e,90)then
_[33]=e
_[6]=d[5]m[12]=d[6]end
am(_,v,a,8)bP(_)elseif V==3 then
au,r=aX(J(_,_[33])/45+.5)*45
l=1
while l<5 and not r do
i=af(_,U(au+f[19][2][l],8))i[9]=_[9]r=am(i,v,a,l)and(D[1]>=i[9]-24 or bi)l=l+1
end
if r then
for j=1,2 do
_[30+j]=i[j]-_[j]_[j]=i[j]end
_[3]=au
_[10]=n
else
am(_,v,a,8)end
bP(_)b=u(_,_[33])if d[13]>0 and ay(_,_[33],1)and B(b,230)<ah()then
_[6]=d[13]end
if b<64 and d[12]>0 then
_[6]=d[12]end
elseif V==5 then
for a=1,11 do
e[3]=e[3]+f[19][9][a]o=f[14][23]bt()aF(e,1)end
e[3]=e[3]-20
elseif V>9 and _[20]then
_[3]=J(_,_[33])o=f[14][V]_[10]=n
aj=_[33]aF(_,a)end
end
if _[17]and _[17]>0 then
o=f[14][_[17]]if not am(_,v,a)or _[9]<=D[1]then
if aP then
ap(aP,d[21]*((ah()&7)+1),_[14])end
_[1]=_[1]-_[11]_[2]=_[2]-_[12]_[3]=0
_[6]=A[_[4]][5]_[10]=n
_[11]=0
_[12],_[17]=0
m[12]=d[16]_[19]=0
end
end
if _[6]==1 then
h[a]=v
else
ae=sub(_,aL)O=X[2+ae[1]//Q+ae[2]//Q*bF]if O then
O[0][#O[0]+1]=a
end
end
end
end
for a=1,8 do
if ag(a)and w[1][a+4]>0 then
an=a
end
end
o=f[14][an]e[3]=e[3]-aw(3)*(H(aV,5,6)*1.5-6)aV=abs(aw(3))*aV+1
R=e
for a=1,2 do
R=af(R,U(e[3]-L+90*a,aw(a)*8.33))end
R[9]=e[9]for a=1,8 do
r=am(R,n,1,a)end
if r then
for a=1,2 do
e[30+a]=R[a]-e[a]e[a]=R[a]end
if e[9]>D[1]then
e[19]=e[19]-1
else
e[9]=B(D[1],e[9]+4)e[19]=M(0,e[19])end
else
e[19]=0
e[9]=D[1]end
b_=w[1]c=o[1]if ag(31)and as<=0 and(c==0 or b_[c]>=o[2])then
al(3,n)as=o[3]if c>0 then
b_[c]=b_[c]-o[2]end
bt()aF(e,1)end
as=as-1
if aw(4)<0 then
_=af(e,U(e[3],64))_[9]=e[9]aO,av=ay(e,_,2,1)_=f[2][av]if aO==v then
m[2]=av
c,r=_[4]for a=14,16 do
r=r or w[1][a]>0 and c==a
end
if c==1 or r then
aN(_,_[5])elseif c>3000 and c<3005 then
bM=aX(c-3000)end
end
end
end
m[1]=an
for a=3,14 do
m[a]=e[f[19][4][a]]or m[a]end
w[1][17]=bo
m[11]=w[1][aZ%#w[1]+1]a=ao
by=n
K=1
at=#h+#P
while K<3 and by do
c=K*9+6
if a<=#h then
_=h[a]if a~=1 then
if _ then
if _[10]then
m[c],_[10]=a
for j=1,8 do
m[c+j]=_[f[19][1][j]]end
K=K+1
end
else
m[c]=-a
be(h,a)K=K+1
at=at-1
end
end
else
_=P[a-#h]if _[10]then
m[c],_[10]=a-#h+2^15
for j=1,6 do
m[c+j]=_[j]end
K=K+1
end
end
a=(a-2)%at+1
ao=B(ao,at)by=a~=ao
end
ao=a
for a=1,32 do
output.setNumber(a,m[a])end
end
aB=aB+1
async.httpGet(8,"")end
