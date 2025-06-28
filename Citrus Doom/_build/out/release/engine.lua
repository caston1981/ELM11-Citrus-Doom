
V=128
aa=180
E=math
L=E.max
A=E.min
bf=E.floor
pi=E.pi/aa
at=input.getNumber
ak=input.getBool
aj=output.setBool
n=true
z=false
v=ipairs
abs=E.abs
be=table.remove
exp=table.unpack
aC=string
function am(b,h)return{(b[1]+h[1]),(b[2]+h[2])}end
function sub(b,h)return{(b[1]-h[1]),(b[2]-h[2])}end
function bN(b)return E.sin(b*pi)end
function aV(b)return E.cos(b*pi)end
function I(b,h)return E.atan(h[2]-b[2],h[1]-b[1])/pi end
function F(b,h,aV)return L(A(aV,b),h)end
function w(b,h)return E.sqrt(((b[1]-h[1])^2)+((b[2]-h[2])^2))end
function N(b,h)return{aV(b)*h,bN(b)*h}end
e={}aP=1
aw=3
aM=n
ag=2
aq=0
ar=0
ap=0
b_=0
S=0
aE=0
l=1
aD=0
bp=2
function aJ(a,b,_)if a<2^15 then
_=e[7][a]return aJ(_[_[3]*(b[2]-_[2])-_[4]*(b[1]-_[1])>0 and 8 or 7],b)else
a=e[5][e[6][a-2^15][2]]return R[e[3][e[2][a[4]][a[5]+6]][6]]end
end
function af(u,bP,B,br,_)M=g[B]d=C[M[4]]au,an=d[18],d[19]J,aQ=au
y=aJ(#e[7],u)ac,ao=exp(y)ai=sub(u,bd)O=T[2+ai[1]//V+ai[2]//V*bn]or{}for a,_ in v(O[0]or{})do
c=g[_]if _~=B and c and M[14]~=c then
k=w(c,u)H=C[c[4]]if c[20]then
W=k-H[18]if W<J and H[23]&1>0 and(d[23]&1>0 or F(u[9],c[9]-an,c[9]+H[19])==u[9])then
aQ=c
J=W
aT=I(u,c)end
end
if B<2 and k<50 then
b=H[25]if b>0 then
for q,t in v(s[b])do
if t>0 and s[1][q]<s[2][q]then
c=s
g[_]=z
c[1][q]=bf(A(c[1][q]+t,c[2][q]))if F(q,5,12)==q then
ag=q-4
end
end
end
end
b=H[29]if b>0 then
b=e[11][b]for q=7,8 do
f[q]=F(f[q]+b[q*2-13],f[q],b[q*2-12])end
g[_]=z
end
end
end
end
_=br<8
if ao-ac<an then
p=_ or ap%4>0 or y[6]<18 or Z(M,10)return
end
p=_ or ap%32>0 or y[6]~=5 or s[1][18]>0 or Z(M,5)for a=1,#O do
_=e[2][O[a]]k,bq=bi(u,Y[_[1]],Y[_[2]])if k<J then
if _[3]&1>0 and d[23]&1>0 or _[3]&4<1 then
if B>1 or aZ>0 or _[3]&4>0 then
J=k
aT=bq
end
else
aO,aK=A(_[9],ao),L(_[8],ac)if A(u[9],ao-an)+24<aK or L(u[9],ac)+an>aO or aO-aK<an then
J=k
aT=bq
else
if br<2 and(_[3]&512>0 or B<2)and(_[4]==2 or B>1)then
aR(_,_[5])end
ao,ac=aO,aK
end
end
end
end
y={ac,ao}if bP then
if J~=au then
_=am(u,N(aT,J-au))u[1]=_[1]u[2]=_[2]end
return n
end
return J==au
end
function bi(r,x,as)U=w(x,r)bh=I(x,as)+90
bR=bh-I(r,x)aZ,by=exp(N(-bR,U))aF=bh
if aZ<0 then
aF=aF+aa
end
if by<0 then
return U,I(r,x)elseif by>w(as,x)then
return w(as,r),I(r,as)else
return abs(aZ),aF
end
end
function ay(r,x,aX,B)aH=w(r,x)aB=aH
ba,p=n
W,aL=exp(r)bO,bQ=exp(x)aG,aN=exp(sub(x,r))az,bk=r[9]+32,x[9]+32
for a,_ in v(e[2])do
bv=Y[_[1]]bw,bz=exp(sub(Y[_[2]],bv))bL,bG=exp(sub(r,bv))bD=bz*aG-bw*aN
X=(bw*bG-bz*bL)/bD
bu=(aG*bG-aN*bL)/bD
if F(X,0,1)==X and F(bu,0,1)==bu then
bl={W+(X*aG),aL+(X*aN)}k=w(r,bl)G=az+(bk-az)*(k/aH)if F(G,_[8]+1,_[9])~=G then
if k<aB then
ba=z
if aX==1 then
return
end
aB=k
bJ,bt=exp(bl)bE=G
bK=a
end
end
end
end
if aX>1 then
if aX>2 then
for a,_ in v(g)do
if _ and a~=B then
d=C[_[4]]if d[23]&1>0 and _[20]then
k=w(r,_)if k<aB then
X=bi(_,r,x)U=(k/aH)G=az+(bk-az)*U
if F(G,_[9],_[9]+d[19])==G and X<d[18]then
aB=k
p,ba=n
bJ=W+(bO-W)*U
bt=aL+(bQ-aL)*U
bE=G
bK=a
end
end
end
end
end
end
return ba,bK,{bJ,bt,bE}end
return n
end
function httpReply()bB=ar//2
ar=0
end
function ad()aE=aE%256+1
return e[13][1][aE]end
function Z(_,a,c)d=C[_[4]]if d[23]&2>0 and _[7]>0 then
_[8]=_[8]-(a+1)//2
_[7]=_[7]-a//2+A(_[8],0)_[8]=L(_[8],0)_[33]=d[13]~="lost soul missile state" and c or f
if ad()<d[10]then
_[6]=d[9]_[15]=0
_[10]=n
end
end
end
function bj(b,h,av)return h[20]and abs(((I(b,h)-b[3]+aa)%360)-aa)<av and ay(b,h,1)end
function bc(D,B)bC=ab and(ab[9]-D[9])*o[6]/w(ab,D)or 0
for a=1,o[12]do
b={}for a=1,33 do
b[a]=D[a]end
b[4]=o[8]b[10]=n
b[14]=D
bA=(ad()/V-1)*o[10]bg=N(D[3]+bA,o[6])if o[7]>0 then
g[#g+1]=b
d=C[b[4]]b[6]=d[3]b[9]=D[9]+o[13]b[11]=bg[1]b[12]=bg[2]b[17]=ag
b[19]=bC
else
c=am(D,bg)c[9]=f[9]+bC
aS,aA,c=ay(D,c,3,B)if not aS then
bm=sub(c,N(D[3]+bA,1))g[#g+1]=b
b[1]=bm[1]b[2]=bm[2]b[6]=C[b[4]][3]b[9]=c[3]b[19]=1
if p then
b=g[aA]Z(b,o[9]*((ad()&3)+2),D)end
end
end
end
end
function aR(_,c)if c>-1 then
b=e[9][c]if b[1]>0 or M[31]*_[10][2]-M[32]*_[10][1]<0 then
h=R[b[1]]ae[h and h[30]or#ae+1]={c,1,h or M}_[4]=b[7]b=b[8]>0 and aR(_,b[8])end
else
aM=n
aw=-c
m[10]=-c
end
end
function bI()bF,ab=2048
for a,_ in v(g)do
if a>1 and _ and bj(f,_,10)then
k=w(_,f)if k<bF then
if C[_[4]][23]&2>0 then
ab=_
bF=k
end
end
end
end
end
function bx(_)if _[9]~=y[1]and not bo then
_[9]=y[1]_[10]=true
end
end
function onTick()aj(9,ak(32))aj(2,ak(11))aj(3,z)for i=1,3 do
if ak(32)and(not bs)or not e[21]then
aW=property.getText(aP)a=1
j=""
_=aC.sub(aW,a,a)while _~=""do
c=aC.byte(_)if c>64 then
j=(j..c-65)+0
if l==1 then
bH=j
e[j]=e[j]or{}elseif l==2 then
G=j
al=0
elseif l==3 then
aY=j
else
if al==0 then
al=G
aY=aY-1
aU={}e[bH][#e[bH]+1]=aU
end
aU[#aU+1]=j
al=al-1
l=L(al,aY)>0 and l-1 or 0
end
l=l+1
j=""
else
j=j.._
end
a=a+1
_=aC.sub(aW,a,a)end
aP=aP+1
bs=aW==""
end
end
if bs then
if aM then
ae,aM={}ah=1
for a=1,10 do
e[a]=e[a+10*aw]end
g=e[1]Y=e[4]R=e[8]T=e[10]bd,T[1]=T[1]s=e[12]C=e[15]for a=14,16 do
s[1][a]=0
end
aw=aw+1
for a=#g,1,-1 do
_=g[a]for i=7,32 do
_[i]=0
end
_[7]=C[_[4]][4]_[9],_[10]=aJ(#e[7],_)[1]if _[5]&bp<1 then
be(g,a)elseif _[4]==1 then
if f then
_[7]=f[7]_[8]=f[8]end
f=_
end
end
bn=bd[3]end
for a,_ in v(e[2])do
_[10]=sub(Y[_[2]],Y[_[1]])if _[3]&4>0 then
d,H=R[e[3][_[6]][6]],R[e[3][_[7]][6]]_[8]=L(d[1],H[1])_[9],d[30],H[30]=A(d[2],H[2])else
_[8],_[9]=0,0
end
end
m={}for a=1,32 do
m[a]=0
end
b_=b_+1
S=A(S+1/bB,2/35)aj(1,S>=0)if S>=0 then
S=S-1/35
ap=ap+1
for a=2,#T do
T[a][0]={}end
for a,t in v(ae)do
_=e[9][t[1]]c=t[3]b=_[2]d=c[b]c[b]=F(_[3],d-_[4],d+_[4])+0
d=c[b]if d==_[3]then
ae[a]=t[2]==_[5]and{_[6],1,c}or{t[1],t[2]+1,c}if _[6]==0 then
be(ae,a)end
end
c[10]=c[10]or d~=t
c[30]=a
end
for a,_ in v(g)do
if _ then
ai=sub(_,bd)O=T[2+ai[1]//V+ai[2]//V*bn]if O then
O[0][#O[0]+1]=a
end
end
end
for a,_ in v(g)do
if _ then
for i,t in v({1,2,9})do
_[t]=_[t]+_[t+10]end
_[15]=_[15]+1
d=C[_[4]]if _[7]<=0 and _[20]then
_[15]=0
_[6]=d[_[7]<=-d[4]and d[15]>1 and 15 or 14]_[10],_[20]=n
m[12]=d[16]if d[27]>0 then
c={}for i=1,30 do
c[i]=_[i]end
c[4]=d[27]c[6]=d[28]g[#g+1]=c
end
end
bb=e[16][_[6]]_[33]=_[33]and(_[33][20]and _[33]or f)if _[15]>=bb[2]and bb[2]~=-1 then
_[6]=bb[4]_[15]=0
Q=e[16][_[6]][3]bo=d[23]&4>0
if Q==1 then
for i,l in v(g)do
if l then
j=V-w(_,l)if j>0 then
Z(l,j)end
end
end
elseif Q==2 then
if bj(_,f,90)then
_[33]=f
_[6]=d[5]m[12]=d[6]end
af(_,z,a,8)bx(_)elseif Q==3 then
av,p=bf(I(_,_[33])/45+.5)*45
l=1
while l<5 and not p do
j=am(_,N(av+e[19][2][l],8))j[9]=_[9]p=af(j,z,a,l)and(y[1]>=j[9]-24 or bo)l=l+1
end
if p then
for i=1,2 do
_[30+i]=j[i]-_[i]_[i]=j[i]end
_[3]=av
_[10]=n
else
af(_,z,a,8)end
bx(_)b=w(_,_[33])if d[13]>0 and ay(_,_[33],1)and A(b,230)<ad()then
_[6]=d[13]end
if b<64 and d[12]>0 then
_[6]=d[12]end
elseif Q==5 then
for i=1,11 do
f[3]=f[3]+e[19][9][i]o=e[14][23]bI()bc(f,1)end
f[3]=f[3]-20
elseif Q>9 and _[20]then
_[3]=I(_,_[33])o=e[14][Q]_[10]=n
ab=_[33]bc(_,a)end
end
if _[17]and _[17]>0 then
o=e[14][_[17]]if not af(_,z,a,2)or _[9]<=y[1]then
if aQ then
Z(aQ,d[21]*((ad()&7)+1),_[14])end
_[1]=_[1]-_[11]_[2]=_[2]-_[12]_[3]=0
_[6]=C[_[4]][5]_[10]=n
_[11]=0
_[12],_[17]=0
m[12]=d[16]_[19]=0
end
end
if _[6]==1 then
g[a]=z
end
end
end
for a=1,8 do
if ak(a)and s[1][a+4]>0 then
ag=a
end
end
o=e[14][ag]s[1][18]=s[1][18]-1
f[3]=f[3]-at(3)*(F(aD,5,6)*1.5-6)aD=abs(at(3))*aD+1
P=f
for a=1,2 do
P=am(P,N(f[3]-aa+90*a,at(a)*8.33))end
P[9]=f[9]for a=1,8 do
p=af(P,n,1,a)end
if p then
for a=1,2 do
f[30+a]=P[a]-f[a]f[a]=P[a]end
if f[9]>y[1]then
f[19]=f[19]-1
else
f[9]=A(y[1],f[9]+4)f[19]=L(0,f[19])end
else
f[19]=0
f[9]=y[1]end
aI=s[1]c=o[1]if ak(31)and aq<=0 and aI[c]>=o[2]then
aj(3,n)aq=o[3]if c>0 then
aI[c]=aI[c]-o[2]end
bI()bc(f,1)end
aq=aq-1
if at(4)<0 then
_=am(f,N(f[3],64))_[9]=f[9]aS,aA=ay(f,_,2,1)_=e[2][aA]if aS==z then
m[2]=aA
c,p=_[4]for a=14,16 do
p=p or s[1][a]>0 and c==a
end
if c==1 or p then
aR(_,_[5])elseif c>3000 and c<3005 then
bp=bf(c-3000)end
end
end
end
m[1]=ag
for a=3,14 do
m[a]=f[e[19][4][a]]or m[a]end
s[1][17]=bB
m[11]=s[1][b_%#s[1]+1]a=ah
bM=n
K=1
ax=#g+#R
while K<3 and bM do
c=K*9+6
if a<=#e[1]then
_=g[a]if _ then
if _[10]and a>1 then
m[c],_[10]=a
for i=1,8 do
m[c+i]=_[e[19][1][i]]end
K=K+1
end
else
m[c]=-a
be(g,a)K=K+1
ax=ax-1
end
else
_=R[a-#g]if _[10]then
m[c],_[10]=a-#g+2^15
for i=1,6 do
m[c+i]=_[i]end
K=K+1
end
end
a=(a-2)%ax+1
ah=A(ah,ax)bM=a~=ah
end
ah=a
for a=1,32 do
output.setNumber(a,m[a])end
end
ar=ar+1
async.httpGet(8,"")end
