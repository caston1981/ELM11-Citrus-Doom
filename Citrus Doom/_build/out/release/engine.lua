
P=128
O=180
F=math
N=F.max
z=F.min
aR=F.floor
pi=F.pi
ap=input.getNumber
af=input.getBool
an=output.setBool
o=true
w=false
A=ipairs
abs=F.abs
aX=table.remove
aV=string
function ak(b,g)return{(b[1]+g[1]),(b[2]+g[2])}end
function sub(b,g)return{(b[1]-g[1]),(b[2]-g[2])}end
function bJ(b)return F.sin(b/O*pi)end
function ad(b)return F.cos(b/O*pi)end
function K(b,g)return F.atan(g[2]-b[2],g[1]-b[1])*O/pi end
function E(b,g,ad)return N(z(ad,b),g)end
function u(b,g)return F.sqrt(((b[1]-g[1])^2)+((b[2]-g[2])^2))end
function X(b,g)return{ad(b)*g,bJ(b)*g}end
function exp(b)return b[1],b[2]end
f={}aN=1
av=3
ba=o
ao=2
aB=0
aq=0
aH=0
aK=0
S=0
aZ=0
k=1
aS=0
bv=2
function bb(a,b,_)if a<2^15 then
_=f[7][a]return bb(_[_[3]*(b[2]-_[2])-_[4]*(b[1]-_[1])>0 and 8 or 7],b)else
a=f[5][f[6][a-32768][2]]return W[f[3][f[2][a[4]][a[5]+6]][6]]end
end
function ai(r,bI,C,bH,_)V=h[C]d=D[V[4]]au,ab=d[18],d[19]J=au
y=bb(#f[7],r)U,aj=exp(y)al=sub(r,bd)L=Z[2+al[1]//P+al[2]//P*bo]or{}for a,_ in A(L[0]or{})do
c=h[_]if _~=C and c and V[14]~=c then
l=u(c,r)G=D[c[4]]if c[20]then
Y=l-G[18]if Y<J and G[23]&1>0 and(d[23]&1>0 or E(r[9],c[9]-ab,c[9]+G[19])==r[9])then
aU=c
if bI==w then
return
end
J=Y
aL=K(r,c)end
end
if C==1 then
if l<50 then
b=G[25]if b>0 then
for p,t in A(v[b])do
if t>0 and v[1][p]<v[2][p]then
c=v
h[_]=w
c[1][p]=aR(z(c[1][p]+t,c[2][p]))if E(p,5,12)==p then
ao=p-4
end
end
end
end
b=G[29]if b>0 then
b=f[11][b]for p=7,8 do
e[p]=E(e[p]+b[p*2-13],e[p],b[p*2-12])end
h[_]=w
end
end
end
end
end
if aj-U<ab or U>r[9]+24 then
s=(bH or 1)<8 or aH%4>0 or y[6]<18 or aA(V,10)return
end
for a=1,#L do
_=f[2][L[a]]l,bp=bK(r,T[_[1]],T[_[2]])if l<J then
if(_[3]&1>0 and d[23]&1>0)or _[3]&4==0 then
if C>1 or aI>0 or _[3]&4>0 then
J=l
aL=bp
end
else
be,aM=z(_[9],aj),N(_[8],U)if z(r[9],aj-ab)+24<aM or N(r[9],U)+ab>be or be-aM<ab then
J=l
aL=bp
else
if bH==1 and(_[3]&512>0 or C==1)and(_[4]==2 or C>1)then
bg(_,_[5])end
aj,U=be,aM
end
end
end
end
y,aU={U,aj}if bI then
if J~=au then
_=ak(r,X(aL,J-au))r[1]=_[1]r[2]=_[2]end
return o
end
return J==au
end
function bK(q,x,as)M=u(x,q)bF=K(x,as)+90
bN=bF-K(q,x)bM=-M*bJ(bN)aI=M*ad(bN)aE=bF
if aI<0 then
aE=aE+O
end
if bM<0 then
return M,K(q,x)elseif bM>u(as,x)then
return u(as,q),K(q,as)else
return abs(aI),aE
end
end
function az(q,x,b_,C,_)aQ=u(q,x)ax=aQ
aW,s=o
Y,aG=exp(q)bR,bQ=exp(x)aJ,aT=exp(sub(x,q))at,bG=q[9]+32,x[9]+32
for a,_ in A(f[2])do
bE=T[_[1]]bh,bL=exp(sub(T[_[2]],bE))bl,br=exp(sub(q,bE))bO=bL*aJ-bh*aT
aa=(bh*br-bL*bl)/bO
bn=(aJ*br-aT*bl)/bO
if E(aa,0,1)==aa and E(bn,0,1)==bn then
bC={Y+(aa*aJ),aG+(aa*aT)}l=u(q,bC)H=at+(bG-at)*(l/aQ)if E(H,_[8]+1,_[9])~=H then
aW=w
if b_==1 then
return
end
if l<ax then
ax=l
bD,bk=exp(bC)bP=H
by=a
end
end
end
end
if b_>1 then
if b_==3 then
for a,_ in A(h)do
if _ and a~=C then
d=D[_[4]]if d[23]&1>0 and _[20]then
l=u(q,_)if l<ax then
aa=bK(_,q,x)M=(l/aQ)H=at+(bG-at)*M
if E(H,_[9],_[9]+d[19])==H and aa<d[18]then
ax=l
s,aW=o
bD=Y+(bR-Y)*M
bk=aG+(bQ-aG)*M
bP=H
by=a
end
end
end
end
end
end
return aW,by,{bD,bk,bP}end
return o
end
function httpReply(b,g,ad)bt=aq//2
aq=0
end
function ah()aZ=aZ%256+1
return f[13][1][aZ]end
function aA(_,a,c)d=D[_[4]]if d[23]&2>0 and _[7]>0 then
_[8]=_[8]-(a+1)//2
_[7]=_[7]-a//2+z(_[8],0)_[8]=N(_[8],0)if ah()<d[10]then
_[6]=d[9]_[15]=0
_[41]=d[13]~="lost soul missile state" and c or e
_[10]=o
end
end
end
function bu(b,g,ar)return g[20]and abs(((K(b,g)-b[3]+O)%360)-O)<ar and az(b,g,1)end
function aY(B,C)bz=ac and(ac[9]-B[9])*n[6]/u(ac,B)or 0
for a=1,n[12]do
b={}for a=1,30 do
b[a]=B[a]end
b[4]=n[8]b[10]=o
b[14]=B
bi=(ah()/P-1)*n[10]aF=X(B[3]+bi,n[6])if n[7]>0 then
h[#h+1]=b
d=D[b[4]]b[6]=d[3]b[9]=B[9]+n[13]b[11]=aF[1]b[12]=aF[2]b[17]=ao
b[19]=bz
else
c=ak(B,aF)c[9]=e[9]+bz
aD,ay,c=az(B,c,3,C)if not aD then
bm=sub(c,X(B[3]+bi,1))h[#h+1]=b
b[1]=bm[1]b[2]=bm[2]b[6]=D[b[4]][3]b[9]=c[3]b[19]=1
if s then
b=h[ay]aA(b,n[9]*((ah()&3)+2),B)end
end
end
end
end
function bg(_,c)if c>-1 then
b=f[9][c]if b[1]>0 or V[31]*_[10][2]-V[32]*_[10][1]<0 then
g=W[b[1]]ae[g and g[30]or#ae+1]={c,1,g or V}_[4]=b[7]b=b[8]>0 and bg(_,b[8])end
else
ba=o
av=-c
m[10]=-c
end
end
function bA()bq,ac=2048
for a,_ in A(h)do
if a>1 and _ and bu(e,_,10)then
l=u(_,e)if l<bq then
if D[_[4]][23]&2>0 then
ac=_
bq=l
end
end
end
end
end
function bx(_)if _[9]~=y[1]and not bB then
_[9]=y[1]_[10]=true
end
end
function onTick()an(9,af(32))an(2,af(11))an(3,w)for j=1,3 do
if af(32)and(not bj)or not f[21]then
aP=property.getText(aN)a=1
i=""
_=aV.sub(aP,a,a)while _~=""do
c=aV.byte(_)if c>64 then
i=(i..c-65)+0
if k==1 then
bw=i
f[i]=f[i]or{}elseif k==2 then
H=i
ag=0
elseif k==3 then
bf=i
else
if ag==0 then
ag=H
bf=bf-1
aO={}f[bw][#f[bw]+1]=aO
end
aO[#aO+1]=i
ag=ag-1
k=N(ag,bf)>0 and k-1 or 0
end
k=k+1
i=""
else
i=i.._
end
a=a+1
_=aV.sub(aP,a,a)end
aN=aN+1
bj=aP==""
end
end
if bj then
if ba then
ae,ba={}am=1
for a=1,10 do
f[a]=f[a+10*av]end
h=f[1]T=f[4]W=f[8]Z=f[10]bd,Z[1]=Z[1]v=f[12]D=f[15]for a=14,16 do
v[1][a]=0
end
av=av+1
for a=#h,1,-1 do
_=h[a]for j=7,40 do
_[j]=0
end
_[7]=D[_[4]][4]_[9],_[10]=bb(#f[7],_)[1]if _[5]&bv<1 then
aX(h,a)elseif _[4]==1 then
if e then
_[7]=e[7]_[8]=e[8]end
e=_
end
end
bo=bd[3]end
for a,_ in A(f[2])do
_[10]=sub(T[_[2]],T[_[1]])if _[3]&4>0 then
d,G=W[f[3][_[6]][6]],W[f[3][_[7]][6]]_[8]=N(d[1],G[1])_[9],d[30],G[30]=z(d[2],G[2])else
_[8],_[9]=0,0
end
end
m={}for a=1,32 do
m[a]=0
end
aK=aK+1
S=z(S+1/bt,2/35)an(1,S>=0)if S>=0 then
S=S-1/35
aH=aH+1
for a=2,#Z do
Z[a][0]={}end
for a,t in A(ae)do
_=f[9][t[1]]c=t[3]b=_[2]d=c[b]c[b]=E(_[3],d-_[4],d+_[4])+0
d=c[b]if d==_[3]then
ae[a]=t[2]==_[5]and{_[6],1,c}or{t[1],t[2]+1,c}if _[6]==0 then
aX(ae,a)end
end
c[10]=c[10]or d~=t
c[30]=a
end
for a,_ in A(h)do
if _ then
for j,t in A({1,2,9})do
_[t]=_[t]+_[t+10]end
_[15]=_[15]+1
d=D[_[4]]if _[7]<=0 and _[20]then
_[15]=0
_[6]=d[_[7]<=-d[4]and d[15]>1 and 15 or 14]_[10],_[20]=o
m[12]=d[16]if d[27]>0 then
c={}for j=1,30 do
c[j]=_[j]end
c[4]=d[27]c[6]=d[28]h[#h+1]=c
end
end
bc=f[16][_[6]]_[41]=_[41]and(_[41][20]and _[41]or e)if _[15]>=bc[2]and bc[2]~=-1 then
_[6]=bc[4]_[15]=0
R=f[16][_[6]][3]bB=d[23]&4>0
if R==1 then
for a,k in A(h)do
if k then
i=P-u(_,k)if i>0 then
aA(k,i)end
end
end
elseif R==2 then
if bu(_,e,90)then
_[41]=e
_[6]=d[5]m[12]=d[6]end
ai(_,w,a,8)bx(_)elseif R==3 then
ar,s=aR(K(_,_[41])/45+.5)*45
k=1
while k<5 and not s do
i=ak(_,X(ar+f[19][2][k],8))i[9]=_[9]s=ai(i,w,a,k)and(y[1]>=i[9]-24 or bB)k=k+1
end
if s then
for j=1,2 do
_[30+j]=i[j]-_[j]_[j]=i[j]end
_[3]=ar
_[10]=o
else
ai(_,w,a,8)end
bx(_)b=u(_,_[41])if d[13]>0 and az(_,_[41],1)and z(b,230)<ah()then
_[6]=d[13]end
if b<64 and d[12]>0 then
_[6]=d[12]end
elseif R==5 then
for a=1,11 do
e[3]=e[3]+f[19][9][a]n=f[14][23]bA()aY(e,1)end
e[3]=e[3]-20
elseif R>9 and _[20]then
_[3]=K(_,_[41])n=f[14][R]_[10]=o
ac=_[41]aY(_,a)end
end
if _[17]and _[17]>0 then
n=f[14][_[17]]if not ai(_,w,a)or _[9]<=y[1]then
if aU then
aA(aU,d[21]*((ah()&7)+1),_[14])end
_[1]=_[1]-_[11]_[2]=_[2]-_[12]_[3]=0
_[6]=D[_[4]][5]_[10]=o
_[11]=0
_[12],_[17]=0
m[12]=d[16]_[19]=0
end
end
if _[6]==1 then
h[a]=w
else
al=sub(_,bd)L=Z[2+al[1]//P+al[2]//P*bo]if L then
L[0][#L[0]+1]=a
end
end
end
end
for a=1,8 do
if af(a)and v[1][a+4]>0 then
ao=a
end
end
n=f[14][ao]e[3]=e[3]-ap(3)*(E(aS,5,6)*1.5-6)aS=abs(ap(3))*aS+1
Q=e
for a=1,2 do
Q=ak(Q,X(e[3]-O+90*a,ap(a)*8.33))end
Q[9]=e[9]for a=1,8 do
s=ai(Q,o,1,a)end
if s then
for a=1,2 do
e[30+a]=Q[a]-e[a]e[a]=Q[a]end
if e[9]>y[1]then
e[19]=e[19]-1
else
e[9]=z(y[1],e[9]+4)e[19]=N(0,e[19])end
else
e[19]=0
e[9]=y[1]end
aC=v[1]c=n[1]if af(31)and aB<=0 and(c==0 or aC[c]>=n[2])then
an(3,o)aB=n[3]if c>0 then
aC[c]=aC[c]-n[2]end
bA()aY(e,1)end
aB=aB-1
if ap(4)<0 then
_=ak(e,X(e[3],64))_[9]=e[9]aD,ay=az(e,_,2,1)_=f[2][ay]if aD==w then
m[2]=ay
c,s=_[4]for a=14,16 do
s=s or v[1][a]>0 and c==a
end
if c==1 or s then
bg(_,_[5])elseif c>3000 and c<3005 then
bv=aR(c-3000)end
end
end
end
m[1]=ao
for a=3,14 do
m[a]=e[f[19][4][a]]or m[a]end
v[1][17]=bt
m[11]=v[1][aK%#v[1]+1]a=am
bs=o
I=1
aw=#h+#W
while I<3 and bs do
c=I*9+6
if a<=#h then
_=h[a]if a~=1 then
if _ then
if _[10]then
m[c],_[10]=a
for j=1,8 do
m[c+j]=_[f[19][1][j]]end
I=I+1
end
else
m[c]=-a
aX(h,a)I=I+1
aw=aw-1
end
end
else
_=W[a-#h]if _[10]then
m[c],_[10]=a-#h+2^15
for j=1,6 do
m[c+j]=_[j]end
I=I+1
end
end
a=(a-2)%aw+1
am=z(am,aw)bs=a~=am
end
am=a
for a=1,32 do
output.setNumber(a,m[a])end
end
aq=aq+1
async.httpGet(8,"")end
