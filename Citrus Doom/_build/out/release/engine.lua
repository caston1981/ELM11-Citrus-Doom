
aa=128
O=180
G=math
M=G.max
B=G.min
aT=G.floor
pi=G.pi
aB=input.getNumber
ag=input.getBool
ai=output.setBool
n=true
x=false
C=ipairs
abs=G.abs
aW=table.remove
aN=string
function ak(b,h)return{(b[1]+h[1]),(b[2]+h[2])}end
function sub(b,h)return{(b[1]-h[1]),(b[2]-h[2])}end
function bq(b)return G.sin(b/O*pi)end
function am(b)return G.cos(b/O*pi)end
function I(b,h)return G.atan(h[2]-b[2],h[1]-b[1])*O/pi end
function H(b,h,am)return M(B(am,b),h)end
function v(b,h)return G.sqrt(((b[1]-h[1])^2)+((b[2]-h[2])^2))end
function R(b,h)return{am(b)*h,bq(b)*h}end
function exp(b)return b[1],b[2]end
f={}aF=1
az=3
aC=n
aj=2
ax=0
aw=0
aY=0
bg=0
S=0
aV=0
k=1
aZ=0
bk=2
function aO(a,b,_)if a<2^15 then
_=f[7][a]return aO(_[_[3]*(b[2]-_[2])-_[4]*(b[1]-_[1])>0 and 8 or 7],b)else
a=f[5][f[6][a-32768][2]]return U[f[3][f[2][a[4]][a[5]+6]][6]]end
end
function af(t,bm,z,bI,_)T=g[z]d=D[T[4]]av,al=d[18],d[19]J=av
A=aO(#f[7],t)X,ao=exp(A)ae=sub(t,aE)N=P[2+ae[1]//aa+ae[2]//aa*bu]or{}for a,_ in C(N[0]or{})do
c=g[_]if _~=z and c and T[14]~=c then
l=v(c,t)F=D[c[4]]if c[20]then
Y=l-F[18]if Y<J and F[23]&1>0 and(d[23]&1>0 or H(t[9],c[9]-al,c[9]+F[19])==t[9])then
ba=c
if bm==x then
return
end
J=Y
aS=I(t,c)end
end
if z==1 then
if l<50 then
b=F[25]if b>0 then
for p,s in C(w[b])do
if s>0 and w[1][p]<w[2][p]then
c=w
g[_]=x
c[1][p]=aT(B(c[1][p]+s,c[2][p]))if H(p,5,12)==p then
aj=p-4
end
end
end
end
b=F[29]if b>0 then
b=f[11][b]for p=7,8 do
e[p]=H(e[p]+b[p*2-13],e[p],b[p*2-12])end
g[_]=x
end
end
end
end
end
if ao-X<al or X>t[9]+24 then
r=(bI or 1)<8 or aY%4>0 or A[6]<18 or aA(T,10)return
end
for a=1,#N do
_=f[2][N[a]]l,bL=br(t,Q[_[1]],Q[_[2]])if l<J then
if(_[3]&1>0 and d[23]&1>0)or _[3]&4==0 then
if z>1 or aU>0 or _[3]&4>0 then
J=l
aS=bL
end
else
bf,aX=B(_[9],ao),M(_[8],X)if B(t[9],ao-al)+24<aX or M(t[9],X)+al>bf or bf-aX<al then
J=l
aS=bL
else
if bI==1 and(_[3]&512>0 or z==1)and(_[4]==2 or z>1)then
aI(_,_[5])end
ao,X=bf,aX
end
end
end
end
A,ba={X,ao}if bm then
if J~=av then
_=ak(t,R(aS,J-av))t[1]=_[1]t[2]=_[2]end
return n
end
return J==av
end
function br(q,u,ar)L=v(u,q)bv=I(u,ar)+90
bC=bv-I(q,u)bD=-L*bq(bC)aU=L*am(bC)aQ=bv
if aU<0 then
aQ=aQ+O
end
if bD<0 then
return L,I(q,u)elseif bD>v(ar,u)then
return v(ar,q),I(q,ar)else
return abs(aU),aQ
end
end
function au(q,u,aK,z,_)aR=v(q,u)at=aR
bb,r=n
Y,bd=exp(q)bQ,bR=exp(u)aD,be=exp(sub(u,q))as,bn=q[9]+32,u[9]+32
for a,_ in C(f[2])do
bj=Q[_[1]]bB,bA=exp(sub(Q[_[2]],bj))bF,bl=exp(sub(q,bj))bx=bA*aD-bB*be
V=(bB*bl-bA*bF)/bx
bz=(aD*bl-be*bF)/bx
if H(V,0,1)==V and H(bz,0,1)==bz then
bO={Y+(V*aD),bd+(V*be)}l=v(q,bO)E=as+(bn-as)*(l/aR)if H(E,_[8]+1,_[9])~=E then
bb=x
if aK==1 then
return
end
if l<at then
at=l
by,bi=exp(bO)bo=E
bw=a
end
end
end
end
if aK>1 then
if aK==3 then
for a,_ in C(g)do
if _ and a~=z then
d=D[_[4]]if d[23]&1>0 and _[20]then
l=v(q,_)if l<at then
V=br(_,q,u)L=(l/aR)E=as+(bn-as)*L
if H(E,_[9],_[9]+d[19])==E and V<d[18]then
at=l
r,bb=n
by=Y+(bQ-Y)*L
bi=bd+(bR-bd)*L
bo=E
bw=a
end
end
end
end
end
end
return bb,bw,{by,bi,bo}end
return n
end
function httpReply(b,h,am)bJ=aw//2
aw=0
end
function ah()aV=aV%256+1
return f[13][1][aV]end
function aA(_,a,c)d=D[_[4]]if d[23]&2>0 and _[7]>0 then
_[8]=_[8]-(a+1)//2
_[7]=_[7]-a//2+B(_[8],0)_[8]=M(_[8],0)_[41]=d[13]~="lost soul missile state" and c or e
if ah()<d[10]then
_[6]=d[9]_[15]=0
_[10]=n
end
end
end
function bM(b,h,aq)return h[20]and abs(((I(b,h)-b[3]+O)%360)-O)<aq and au(b,h,1)end
function aG(y,z)bt=ab and(ab[9]-y[9])*o[6]/v(ab,y)or 0
for a=1,o[12]do
b={}for a=1,30 do
b[a]=y[a]end
b[4]=o[8]b[10]=n
b[14]=y
bE=(ah()/aa-1)*o[10]bc=R(y[3]+bE,o[6])if o[7]>0 then
g[#g+1]=b
d=D[b[4]]b[6]=d[3]b[9]=y[9]+o[13]b[11]=bc[1]b[12]=bc[2]b[17]=aj
b[19]=bt
else
c=ak(y,bc)c[9]=e[9]+bt
aM,ay,c=au(y,c,3,z)if not aM then
bN=sub(c,R(y[3]+bE,1))g[#g+1]=b
b[1]=bN[1]b[2]=bN[2]b[6]=D[b[4]][3]b[9]=c[3]b[19]=1
if r then
b=g[ay]aA(b,o[9]*((ah()&3)+2),y)end
end
end
end
end
function aI(_,c)if c>-1 then
b=f[9][c]if b[1]>0 or T[31]*_[10][2]-T[32]*_[10][1]<0 then
h=U[b[1]]ad[h and h[30]or#ad+1]={c,1,h or T}_[4]=b[7]b=b[8]>0 and aI(_,b[8])end
else
aC=n
az=-c
m[10]=-c
end
end
function bP()bG,ab=2048
for a,_ in C(g)do
if a>1 and _ and bM(e,_,10)then
l=v(_,e)if l<bG then
if D[_[4]][23]&2>0 then
ab=_
bG=l
end
end
end
end
end
function bh(_)if _[9]~=A[1]and not bK then
_[9]=A[1]_[10]=true
end
end
function onTick()ai(9,ag(32))ai(2,ag(11))ai(3,x)for j=1,3 do
if ag(32)and(not bH)or not f[21]then
aJ=property.getText(aF)a=1
i=""
_=aN.sub(aJ,a,a)while _~=""do
c=aN.byte(_)if c>64 then
i=(i..c-65)+0
if k==1 then
bp=i
f[i]=f[i]or{}elseif k==2 then
E=i
an=0
elseif k==3 then
aL=i
else
if an==0 then
an=E
aL=aL-1
aP={}f[bp][#f[bp]+1]=aP
end
aP[#aP+1]=i
an=an-1
k=M(an,aL)>0 and k-1 or 0
end
k=k+1
i=""
else
i=i.._
end
a=a+1
_=aN.sub(aJ,a,a)end
aF=aF+1
bH=aJ==""
end
end
if bH then
if aC then
ad,aC={}ac=1
for a=1,10 do
f[a]=f[a+10*az]end
g=f[1]Q=f[4]U=f[8]P=f[10]aE,P[1]=P[1]w=f[12]D=f[15]for a=14,16 do
w[1][a]=0
end
az=az+1
for a=#g,1,-1 do
_=g[a]for j=7,40 do
_[j]=0
end
_[7]=D[_[4]][4]_[9],_[10]=aO(#f[7],_)[1]if _[5]&bk<1 then
aW(g,a)elseif _[4]==1 then
if e then
_[7]=e[7]_[8]=e[8]end
e=_
end
end
bu=aE[3]end
for a,_ in C(f[2])do
_[10]=sub(Q[_[2]],Q[_[1]])if _[3]&4>0 then
d,F=U[f[3][_[6]][6]],U[f[3][_[7]][6]]_[8]=M(d[1],F[1])_[9],d[30],F[30]=B(d[2],F[2])else
_[8],_[9]=0,0
end
end
m={}for a=1,32 do
m[a]=0
end
bg=bg+1
S=B(S+1/bJ,2/35)ai(1,S>=0)if S>=0 then
S=S-1/35
aY=aY+1
for a=2,#P do
P[a][0]={}end
for a,s in C(ad)do
_=f[9][s[1]]c=s[3]b=_[2]d=c[b]c[b]=H(_[3],d-_[4],d+_[4])+0
d=c[b]if d==_[3]then
ad[a]=s[2]==_[5]and{_[6],1,c}or{s[1],s[2]+1,c}if _[6]==0 then
aW(ad,a)end
end
c[10]=c[10]or d~=s
c[30]=a
end
for a,_ in C(g)do
if _ then
for j,s in C({1,2,9})do
_[s]=_[s]+_[s+10]end
_[15]=_[15]+1
d=D[_[4]]if _[7]<=0 and _[20]then
_[15]=0
_[6]=d[_[7]<=-d[4]and d[15]>1 and 15 or 14]_[10],_[20]=n
m[12]=d[16]if d[27]>0 then
c={}for j=1,30 do
c[j]=_[j]end
c[4]=d[27]c[6]=d[28]g[#g+1]=c
end
end
aH=f[16][_[6]]_[41]=_[41]and(_[41][20]and _[41]or e)if _[15]>=aH[2]and aH[2]~=-1 then
_[6]=aH[4]_[15]=0
W=f[16][_[6]][3]bK=d[23]&4>0
if W==1 then
for a,k in C(g)do
if k then
i=aa-v(_,k)if i>0 then
aA(k,i)end
end
end
elseif W==2 then
if bM(_,e,90)then
_[41]=e
_[6]=d[5]m[12]=d[6]end
af(_,x,a,8)bh(_)elseif W==3 then
aq,r=aT(I(_,_[41])/45+.5)*45
k=1
while k<5 and not r do
i=ak(_,R(aq+f[19][2][k],8))i[9]=_[9]r=af(i,x,a,k)and(A[1]>=i[9]-24 or bK)k=k+1
end
if r then
for j=1,2 do
_[30+j]=i[j]-_[j]_[j]=i[j]end
_[3]=aq
_[10]=n
else
af(_,x,a,8)end
bh(_)b=v(_,_[41])if d[13]>0 and au(_,_[41],1)and B(b,230)<ah()then
_[6]=d[13]end
if b<64 and d[12]>0 then
_[6]=d[12]end
elseif W==5 then
for a=1,11 do
e[3]=e[3]+f[19][9][a]o=f[14][23]bP()aG(e,1)end
e[3]=e[3]-20
elseif W>9 and _[20]then
_[3]=I(_,_[41])o=f[14][W]_[10]=n
ab=_[41]aG(_,a)end
end
if _[17]and _[17]>0 then
o=f[14][_[17]]if not af(_,x,a)or _[9]<=A[1]then
if ba then
aA(ba,d[21]*((ah()&7)+1),_[14])end
_[1]=_[1]-_[11]_[2]=_[2]-_[12]_[3]=0
_[6]=D[_[4]][5]_[10]=n
_[11]=0
_[12],_[17]=0
m[12]=d[16]_[19]=0
end
end
if _[6]==1 then
g[a]=x
else
ae=sub(_,aE)N=P[2+ae[1]//aa+ae[2]//aa*bu]if N then
N[0][#N[0]+1]=a
end
end
end
end
for a=1,8 do
if ag(a)and w[1][a+4]>0 then
aj=a
end
end
o=f[14][aj]e[3]=e[3]-aB(3)*(H(aZ,5,6)*1.5-6)aZ=abs(aB(3))*aZ+1
Z=e
for a=1,2 do
Z=ak(Z,R(e[3]-O+90*a,aB(a)*8.33))end
Z[9]=e[9]for a=1,8 do
r=af(Z,n,1,a)end
if r then
for a=1,2 do
e[30+a]=Z[a]-e[a]e[a]=Z[a]end
if e[9]>A[1]then
e[19]=e[19]-1
else
e[9]=B(A[1],e[9]+4)e[19]=M(0,e[19])end
else
e[19]=0
e[9]=A[1]end
b_=w[1]c=o[1]if ag(31)and ax<=0 and(c==0 or b_[c]>=o[2])then
ai(3,n)ax=o[3]if c>0 then
b_[c]=b_[c]-o[2]end
bP()aG(e,1)end
ax=ax-1
if aB(4)<0 then
_=ak(e,R(e[3],64))_[9]=e[9]aM,ay=au(e,_,2,1)_=f[2][ay]if aM==x then
m[2]=ay
c,r=_[4]for a=14,16 do
r=r or w[1][a]>0 and c==a
end
if c==1 or r then
aI(_,_[5])elseif c>3000 and c<3005 then
bk=aT(c-3000)end
end
end
end
m[1]=aj
for a=3,14 do
m[a]=e[f[19][4][a]]or m[a]end
w[1][17]=bJ
m[11]=w[1][bg%#w[1]+1]a=ac
bs=n
K=1
ap=#g+#U
while K<3 and bs do
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
aW(g,a)K=K+1
ap=ap-1
end
end
else
_=U[a-#g]if _[10]then
m[c],_[10]=a-#g+2^15
for j=1,6 do
m[c+j]=_[j]end
K=K+1
end
end
a=(a-2)%ap+1
ac=B(ac,ap)bs=a~=ac
end
ac=a
for a=1,32 do
output.setNumber(a,m[a])end
end
aw=aw+1
async.httpGet(8,"")end
