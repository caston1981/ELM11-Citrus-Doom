
U=128
O=180
D=math
M=D.max
B=D.min
bg=D.floor
pi=D.pi
at=input.getNumber
af=input.getBool
al=output.setBool
o=true
i=false
A=ipairs
abs=D.abs
aG=table.remove
aI=string
function aj(b,h)return{(b[1]+h[1]),(b[2]+h[2])}end
function sub(b,h)return{(b[1]-h[1]),(b[2]-h[2])}end
function bN(b)return D.sin(b/O*pi)end
function ao(b)return D.cos(b/O*pi)end
function I(b,h)return D.atan(h[2]-b[2],h[1]-b[1])*O/pi end
function E(b,h,ao)return M(B(ao,b),h)end
function x(b,h)return D.sqrt(((b[1]-h[1])^2)+((b[2]-h[2])^2))end
function P(b,h)return{ao(b)*h,bN(b)*h}end
function exp(b)return b[1],b[2]end
e={}aC=1
aA=3
bd=i
aP=o
ae=2
ar=0
ax=0
aS=0
aW=0
T=0
aT=0
m=1
aX=0
bw=2
function aF(a,b,_)if a<2^15 then
_=e[7][a]return aF(_[_[3]*(b[2]-_[2])-_[4]*(b[1]-_[1])>0 and 8 or 7],b)else
a=e[5][e[6][a-32768][2]]return Q[e[3][e[2][a[4]][a[5]+6]][6]]end
end
function ah(u,br,v,bm,_)S=g[v]f=C[S[4]]au,ab=f[18],f[19]K=au
z=aF(#e[7],u)Y,am=exp(z)ad=sub(u,b_)L=Z[2+ad[1]//U+ad[2]//U*bC]or{}for a,_ in A(L[0]or{})do
c=g[_]if _~=v and c and S[14]~=_ then
l=x(c,u)G=C[c[4]]if c[20]then
X=l-G[18]if X<K and G[23]&1>0 and(f[23]&1>0 or E(u[9],c[9]-ab,c[9]+G[19])==u[9])then
aM=c
if br==i then
return i
end
K=X
aK=I(u,c)end
end
if v==1 then
if l<50 then
b=G[25]if b>0 then
for p,s in A(w[b])do
if s>0 and w[1][p]<w[2][p]then
c=w
g[_]=i
c[1][p]=bg(B(c[1][p]+s,c[2][p]))if E(p,5,12)==p then
ae=p-4
end
end
end
end
b=G[29]if b>0 then
b=e[11][b]for p=7,8 do
d[p]=E(d[p]+b[p*2-13],d[p],b[p*2-12])end
g[_]=i
end
end
end
end
end
if am-Y<ab or Y>u[9]+24 then
r=(bm or 1)<8 or aS%4>0 or z[6]<18 or ap(S,10)return i
end
for a=1,#L do
_=e[2][L[a]]l,bG=bq(u,V[_[1]],V[_[2]])if l<K then
if(_[3]&1>0 and f[23]&1>0)or _[3]&4==0 then
if v>1 or aJ>0 or _[3]&4>0 then
K=l
aK=bG
end
else
aL,aY=B(_[9],am),M(_[8],Y)if B(u[9],am-ab)+24<aY or M(u[9],Y)+ab>aL or aL-aY<ab then
K=l
aK=bG
else
if bm==1 and(_[3]&512>0 or v==1)and(_[4]==2 or v>1)then
aZ(_,_[5])end
am,Y=aL,aY
end
end
end
end
z,aM={Y,am}if br then
if K~=au then
_=aj(u,P(aK,K-au))u[1]=_[1]u[2]=_[2]end
return o
end
return K==au
end
function bq(q,y,aq)N=x(y,q)bt=I(y,aq)+90
bx=bt-I(q,y)bL=-N*bN(bx)aJ=N*ao(bx)aU=bt
if aJ<0 then
aU=aU+O
end
if bL<0 then
return N,I(q,y)elseif bL>x(aq,y)then
return x(aq,q),I(q,aq)else
return abs(aJ),aU
end
end
function az(q,y,bc,v,_)be=x(q,y)as=be
aE=o
X,aQ=exp(q)bR,bQ=exp(y)bf,aR=exp(sub(y,q))ay,bH=q[9]+32,y[9]+32
r=i
for a,_ in A(e[2])do
bI=V[_[1]]bk,bE=exp(sub(V[_[2]],bI))bA,bs=exp(sub(q,bI))bn=bE*bf-bk*aR
R=(bk*bs-bE*bA)/bn
bi=(bf*bs-aR*bA)/bn
if E(R,0,1)==R and E(bi,0,1)==bi then
bP={X+(R*bf),aQ+(R*aR)}l=x(q,bP)F=ay+(bH-ay)*(l/be)if E(F,_[8]+1,_[9])~=F then
aE=i
if bc==1 then
return i
end
if l<as then
as=l
bo,bl=exp(bP)bD=F
bz=a
end
end
end
end
if bc>1 then
if bc==3 then
for a,_ in A(g)do
if _ and a~=v then
f=C[_[4]]if f[23]&1>0 and _[20]then
l=x(q,_)if l<as then
R=bq(_,q,y)N=(l/be)F=ay+(bH-ay)*N
if E(F,_[9],_[9]+f[19])==F and R<f[18]then
as=l
r=o
aE=i
bo=X+(bR-X)*N
bl=aQ+(bQ-aQ)*N
bD=F
bz=a
end
end
end
end
end
end
return aE,bz,{bo,bl,bD}end
return o
end
function httpReply(b,h,ao)by=ax//2
ax=0
end
function ai()aT=aT%256+1
return e[13][1][aT]end
function ap(_,a,c)f=C[_[4]]if f[23]&2>0 and _[7]>0 then
_[8]=_[8]-(a+1)//2
_[7]=_[7]-a//2+B(_[8],0)_[8]=M(_[8],0)if ai()<f[10]then
_[6]=f[9]_[15]=0
_[23]=c or d
_[10]=o
end
end
end
function bF(b,h,aw)return h[20]and abs(((I(b,h)-b[3]+O)%360)-O)<aw and az(b,h,1)end
function aH(H,v)bj=ac and(ac[9]-H[9])*n[6]/x(ac,H)or 0
for a=1,n[12]do
b={}for a=1,30 do
b[a]=H[a]end
b[4]=n[8]b[10]=o
b[14]=v
bu=(ai()/U-1)*n[10]bh=P(H[3]+bu,n[6])if n[7]>0 then
g[#g+1]=b
f=C[b[4]]b[6]=f[3]b[9]=H[9]+n[13]b[11]=bh[1]b[12]=bh[2]b[17]=ae
b[19]=bj
else
c=aj(H,bh)c[9]=d[9]+bj
aV,aB,c=az(H,c,3,v)if not aV then
bB=sub(c,P(H[3]+bu,1))g[#g+1]=b
b[1]=bB[1]b[2]=bB[2]b[6]=C[b[4]][3]b[9]=c[3]b[19]=1
if r then
b=g[aB]ap(b,n[9]*((ai()&3)+2),H)end
end
end
end
end
function aZ(_,c)if c>-1 then
b=e[9][c]if b[1]>0 or S[31]*_[10][2]-S[32]*_[10][1]<0 then
h=Q[b[1]]ak[h and h[30]or#ak+1]={c,1,h or S}_[4]=b[7]b=b[8]>0 and aZ(_,b[8])end
else
aP=o
aA=-c
t[9]=-c
end
end
function bO()bp,ac=2048
for a,_ in A(g)do
if a>1 and _ and bF(d,_,10)then
l=x(_,d)if l<bp then
if C[_[4]][23]&2>0 then
ac=_
bp=l
end
end
end
end
end
function bv(_)if _[9]~=z[1]and not bM then
_[9]=z[1]_[10]=true
end
end
function onTick()al(9,af(32))al(2,af(11))al(3,i)for k=1,3 do
if af(32)and(not bd)or not e[21]then
aN=property.getText(aC)a=1
j=""
_=aI.sub(aN,a,a)while _~=""do
c=aI.byte(_)if c>64 then
j=(j..c-65)+0
if m==1 then
bK=j
e[j]=e[j]or{}elseif m==2 then
F=j
ag=0
elseif m==3 then
aD=j
else
if ag==0 then
ag=F
aD=aD-1
ba={}e[bK][#e[bK]+1]=ba
end
ba[#ba+1]=j
ag=ag-1
m=M(ag,aD)>0 and m-1 or 0
end
m=m+1
j=""
else
j=j.._
end
a=a+1
_=aI.sub(aN,a,a)end
aC=aC+1
bd=aN==""
end
end
if bd then
if aP then
ak,aP={}an=1
for a=1,10 do
e[a]=e[a+10*aA]end
g=e[1]V=e[4]Q=e[8]Z=e[10]b_,Z[1]=Z[1]w=e[12]C=e[15]for a=14,16 do
w[1][a]=0
end
aA=aA+1
for a=#g,1,-1 do
_=g[a]for k=7,40 do
_[k]=0
end
_[7]=C[_[4]][4]_[9],_[10]=aF(#e[7],_)[1]if _[5]&bw<1 then
aG(g,a)elseif _[4]==1 then
if d then
_[7]=d[7]_[8]=d[8]end
d=_
end
end
bC=b_[3]end
for a,_ in A(e[2])do
_[10]=sub(V[_[2]],V[_[1]])if _[3]&4>0 then
f,G=Q[e[3][_[6]][6]],Q[e[3][_[7]][6]]_[8]=M(f[1],G[1])_[9],f[30],G[30]=B(f[2],G[2])else
_[8],_[9]=0,0
end
end
t={}for a=1,32 do
t[a]=0
end
aW=aW+1
T=B(T+1/by,2/35)al(1,T>=0)if T>=0 then
T=T-1/35
aS=aS+1
for a=2,#Z do
Z[a][0]={}end
for a,s in A(ak)do
_=e[9][s[1]]c=s[3]b=_[2]f=c[b]c[b]=E(_[3],f-_[4],f+_[4])+0
f=c[b]if f==_[3]then
ak[a]=s[2]==_[5]and{_[6],1,c}or{s[1],s[2]+1,c}if _[6]==0 then
aG(ak,a)end
end
c[10]=c[10]or f~=s
c[30]=a
end
for a,_ in A(g)do
if _ then
for k,s in A({1,2,9})do
_[s]=_[s]+_[s+10]end
_[15]=_[15]+1
f=C[_[4]]if _[7]<=0 and _[20]then
_[15]=0
_[6]=f[_[7]<=-f[4]and f[15]>1 and 15 or 14]_[10],_[20]=o
if f[27]>0 then
c={}for k=1,30 do
c[k]=_[k]end
c[4]=f[27]c[6]=f[28]g[#g+1]=c
end
end
bb=e[16][_[6]]if _[15]>=bb[2]and bb[2]~=-1 then
_[6]=bb[4]_[15]=0
aa=e[16][_[6]][3]bM=f[23]&4>0
if aa==1 then
for a,m in A(g)do
if m then
j=U-x(_,m)if j>0 then
ap(m,j)end
end
end
elseif aa==2 then
if bF(_,d,90)then
_[23]=d
_[6]=f[5]end
ah(_,i,a,8)bv(_)elseif aa==3 then
_[23]=_[23][20]and _[23]or d
aw=bg(I(_,_[23])/45+.5)*45
r=i
m=1
while m<5 and not r do
j=aj(_,P(aw+e[19][2][m],8))j[9]=_[9]r=ah(j,i,a,m)and(z[1]>=j[9]-24 or bM)m=m+1
end
if r then
for k=1,2 do
_[30+k]=j[k]-_[k]_[k]=j[k]end
_[3]=aw
_[10]=o
else
ah(_,i,a,8)end
bv(_)b=x(_,_[23])if f[13]>0 and az(_,_[23],1)and B(b,230)<ai()then
_[6]=f[13]end
if b<64 and f[12]>0 then
_[6]=f[12]end
elseif aa==5 then
for a=1,11 do
d[3]=d[3]+e[19][9][a]n=e[14][23]bO()aH(d,1)end
d[3]=d[3]-20
elseif aa>9 and _[20]then
_[3]=I(_,_[23])n=e[14][aa]_[10]=o
ac=_[23]aH(_,a)end
end
if _[17]and _[17]>0 then
n=e[14][_[17]]if not ah(_,i,a)or _[9]<=z[1]then
if aM then
ap(aM,f[21]*((ai()&7)+1),g[_[14]])end
_[1]=_[1]-_[11]_[2]=_[2]-_[12]_[3]=0
_[6]=C[_[4]][5]_[10]=o
_[11]=0
_[12],_[17]=0
_[19]=0
end
end
if _[6]==1 then
g[a]=i
else
ad=sub(_,b_)L=Z[2+ad[1]//U+ad[2]//U*bC]if L then
L[0][#L[0]+1]=a
end
end
end
end
for a=1,8 do
if af(a)and w[1][a+4]>0 then
ae=a
end
end
n=e[14][ae]d[3]=d[3]-at(3)*(E(aX,5,6)*1.5-6)aX=abs(at(3))*aX+1
W=d
for a=1,2 do
W=aj(W,P(d[3]-O+90*a,at(a)*8.33))end
W[9]=d[9]for a=1,8 do
r=ah(W,o,1,a)end
if r then
for a=1,2 do
d[30+a]=W[a]-d[a]d[a]=W[a]end
if d[9]>z[1]then
d[19]=d[19]-1
else
d[9]=B(z[1],d[9]+4)d[19]=M(0,d[19])end
else
d[19]=0
d[9]=z[1]end
aO=w[1]c=n[1]if af(31)and ar<=0 and(c==0 or aO[c]>=n[2])then
al(3,o)ar=n[3]if c>0 then
aO[c]=aO[c]-n[2]end
bO()aH(d,1)end
ar=ar-1
if at(4)<0 then
_=aj(d,P(d[3],64))_[9]=d[9]aV,aB=az(d,_,2,1)_=e[2][aB]if aV==i then
t[2]=aB
c,r=_[4]for a=14,16 do
r=r or w[1][a]>0 and c==a
end
if c==1 or r then
aZ(_,_[5])elseif c>3000 and c<3005 then
bw=bg(c-3000)end
end
end
end
t[1]=ae
for a=3,13 do
t[a]=d[e[19][4][a]]or t[a]end
w[1][17]=by
t[10]=w[1][aW%#w[1]+1]a=an
bJ=o
J=1
av=#g+#Q
while J<3 and bJ do
c=J*9+5
if a<=#g then
_=g[a]if a~=1 then
if _ then
if _[10]then
_[10]=i
t[c]=a
for k=1,8 do
t[c+k]=_[e[19][1][k]]end
J=J+1
end
else
t[c]=-a
aG(g,a)J=J+1
av=av-1
end
end
else
_=Q[a-#g]if _[10]then
_[10]=i
t[c]=a-#g+2^15
for k=1,6 do
t[c+k]=_[k]end
J=J+1
end
end
a=(a-2)%av+1
an=B(an,av)bJ=a~=an
end
an=a
for a=1,32 do
output.setNumber(a,t[a])end
end
ax=ax+1
async.httpGet(8,"")end
