
Q=128
M=180
H=math
L=H.max
B=H.min
aN=H.floor
pi=H.pi
at=input.getNumber
ag=input.getBool
ab=output.setBool
o=true
i=false
z=ipairs
abs=H.abs
bh=table.remove
bg=string
function am(b,h)return{(b[1]+h[1]),(b[2]+h[2])}end
function sub(b,h)return{(b[1]-h[1]),(b[2]-h[2])}end
function bu(b)return H.sin(b/M*pi)end
function ao(b)return H.cos(b/M*pi)end
function J(b,h)return H.atan(h[2]-b[2],h[1]-b[1])*M/pi end
function F(b,h,ao)return L(B(ao,b),h)end
function y(b,h)return H.sqrt(((b[1]-h[1])^2)+((b[2]-h[2])^2))end
function V(b,h)return{ao(b)*h,bu(b)*h}end
function exp(b)return b[1],b[2]end
e={}aG=1
au=3
be=i
aO=o
ac=2
aB=0
ap=0
aK=0
aH=0
Y=0
bb=0
l=1
aI=0
bA=2
function aS(a,b,_)if a<2^15 then
_=e[7][a]return aS(_[_[3]*(b[2]-_[2])-_[4]*(b[1]-_[1])>0 and 8 or 7],b)else
a=e[5][e[6][a-32768][2]]return X[e[3][e[2][a[4]][a[5]+6]][6]]end
end
function af(r,bk,x,bB,_)R=g[x]f=A[R[4]]av,al=f[18],f[19]K=av
C=aS(#e[7],r)W,ak=exp(C)ai=sub(r,aZ)O=U[2+ai[1]//Q+ai[2]//Q*bD]or{}for a,_ in z(O[0]or{})do
c=g[_]if _~=x and c and R[14]~=_ then
m=y(c,r)E=A[c[4]]if c[20]then
aa=m-E[18]if aa<K and E[23]&1>0 and(f[23]&1>0 or F(r[9],c[9]-al,c[9]+E[19])==r[9])then
aT=c
if bk==i then
return i
end
K=aa
aV=J(r,c)end
end
if x==1 then
if m<50 then
b=E[25]if b>0 then
for p,s in z(v[b])do
if s>0 and v[1][p]<v[2][p]then
c=v
g[_]=i
c[1][p]=aN(B(c[1][p]+s,c[2][p]))if F(p,5,12)==p then
ac=p-4
end
end
end
end
b=E[29]if b>0 then
b=e[11][b]for p=7,8 do
d[p]=F(d[p]+b[p*2-13],d[p],b[p*2-12])end
g[_]=i
end
end
end
end
end
if ak-W<al or W>r[9]+24 then
t=(bB or 1)<8 or aK%4>0 or C[6]<18 or ay(R,10)return i
end
for a=1,#O do
_=e[2][O[a]]m,bm=bG(r,Z[_[1]],Z[_[2]])if m<K then
if(_[3]&1>0 and f[23]&1>0)or _[3]&4==0 then
if x>1 or bc>0 or _[3]&4>0 then
K=m
aV=bm
end
else
bf,aW=B(_[9],ak),L(_[8],W)if B(r[9],ak-al)+24<aW or L(r[9],W)+al>bf or bf-aW<al then
K=m
aV=bm
else
if bB==1 and(_[3]&512>0 or x==1)and(_[4]==2 or x>1)then
aR(_,_[5])end
ak,W=bf,aW
end
end
end
end
C,aT={W,ak}if bk then
if K~=av then
_=am(r,V(aV,K-av))r[1]=_[1]r[2]=_[2]end
return o
end
return K==av
end
function bG(q,w,aq)N=y(w,q)bw=J(w,aq)+90
bl=bw-J(q,w)bN=-N*bu(bl)bc=N*ao(bl)bd=bw
if bc<0 then
bd=bd+M
end
if bN<0 then
return N,J(q,w)elseif bN>y(aq,w)then
return y(aq,q),J(q,aq)else
return abs(bc),bd
end
end
function az(q,w,aU,x,_)aJ=y(q,w)aw=aJ
aC=o
aa,aY=exp(q)bR,bQ=exp(w)aE,aL=exp(sub(w,q))as,bJ=q[9]+32,w[9]+32
t=i
for a,_ in z(e[2])do
bM=Z[_[1]]bL,by=exp(sub(Z[_[2]],bM))bz,br=exp(sub(q,bM))bp=by*aE-bL*aL
P=(bL*br-by*bz)/bp
bs=(aE*br-aL*bz)/bp
if F(P,0,1)==P and F(bs,0,1)==bs then
bq={aa+(P*aE),aY+(P*aL)}m=y(q,bq)D=as+(bJ-as)*(m/aJ)if F(D,_[8]+1,_[9])~=D then
aC=i
if aU==1 then
return i
end
if m<aw then
aw=m
bC,bH=exp(bq)bv=D
bE=a
end
end
end
end
if aU>1 then
if aU==3 then
for a,_ in z(g)do
if _ and a~=x then
f=A[_[4]]if f[23]&1>0 and _[20]then
m=y(q,_)if m<aw then
P=bG(_,q,w)N=(m/aJ)D=as+(bJ-as)*N
if F(D,_[9],_[9]+f[19])==D and P<f[18]then
aw=m
t=o
aC=i
bC=aa+(bR-aa)*N
bH=aY+(bQ-aY)*N
bv=D
bE=a
end
end
end
end
end
end
return aC,bE,{bC,bH,bv}end
return o
end
function httpReply(b,h,ao)bn=ap//2
ap=0
end
function aj()bb=bb%256+1
return e[13][1][bb]end
function ay(_,a,c)f=A[_[4]]if f[23]&2>0 and _[7]>0 then
_[8]=_[8]-(a+1)//2
_[7]=_[7]-a//2+B(_[8],0)_[8]=L(_[8],0)if aj()<f[10]then
_[6]=f[9]_[15]=0
_[23]=c or d
_[10]=o
end
end
end
function bi(b,h,ax)return h[20]and abs(((J(b,h)-b[3]+M)%360)-M)<ax and az(b,h,1)end
function ba(G,x)bx=ae and(ae[9]-G[9])*n[6]/y(ae,G)or 0
for a=1,n[12]do
b={}for a=1,30 do
b[a]=G[a]end
b[4]=n[8]b[10]=o
b[14]=x
bj=(aj()/Q-1)*n[10]aX=V(G[3]+bj,n[6])if n[7]>0 then
g[#g+1]=b
f=A[b[4]]b[6]=f[3]b[9]=G[9]+n[13]b[11]=aX[1]b[12]=aX[2]b[17]=ac
b[19]=bx
else
c=am(G,aX)c[9]=d[9]+bx
aP,aA,c=az(G,c,3,x)if not aP then
bt=sub(c,V(G[3]+bj,1))g[#g+1]=b
b[1]=bt[1]b[2]=bt[2]b[6]=A[b[4]][3]b[9]=c[3]b[19]=1
if t then
b=g[aA]ay(b,n[9]*((aj()&3)+2),G)end
end
end
end
end
function aR(_,c)if c>-1 then
b=e[9][c]if b[1]>0 or R[31]*_[10][2]-R[32]*_[10][1]<0 then
h=X[b[1]]ad[h and h[30]or#ad+1]={c,1,h or R}_[4]=b[7]b=b[8]>0 and aR(_,b[8])end
else
aO=o
au=-c
u[9]=-c
end
end
function bF()bP,ae=2048
for a,_ in z(g)do
if a>1 and _ and bi(d,_,10)then
m=y(_,d)if m<bP then
if A[_[4]][23]&2>0 then
ae=_
bP=m
end
end
end
end
end
function bI(_)if _[9]~=C[1]and not bO then
_[9]=C[1]_[10]=true
end
end
function onTick()ab(9,ag(32))ab(2,ag(11))ab(3,i)for k=1,3 do
if ag(32)and(not be)or not e[21]then
aQ=property.getText(aG)a=1
j=""
_=bg.sub(aQ,a,a)while _~=""do
c=bg.byte(_)if c>64 then
j=(j..c-65)+0
if l==1 then
bo=j
e[j]=e[j]or{}elseif l==2 then
D=j
ah=0
elseif l==3 then
aF=j
else
if ah==0 then
ah=D
aF=aF-1
b_={}e[bo][#e[bo]+1]=b_
end
b_[#b_+1]=j
ah=ah-1
l=L(ah,aF)>0 and l-1 or 0
end
l=l+1
j=""
else
j=j.._
end
a=a+1
_=bg.sub(aQ,a,a)end
aG=aG+1
be=aQ==""
end
end
if be then
if aO then
ad,aO={}an=1
for a=1,10 do
e[a]=e[a+10*au]end
g=e[1]Z=e[4]X=e[8]U=e[10]aZ,U[1]=U[1]v=e[12]A=e[15]for a=14,16 do
v[1][a]=0
end
au=au+1
for a=#g,1,-1 do
_=g[a]for k=7,40 do
_[k]=0
end
_[7]=A[_[4]][4]_[9],_[10]=aS(#e[7],_)[1]if _[5]&bA<1 then
bh(g,a)elseif _[4]==1 then
if d then
_[7]=d[7]_[8]=d[8]end
d=_
end
end
bD=aZ[3]end
for a,_ in z(e[2])do
_[10]=sub(Z[_[2]],Z[_[1]])if _[3]&4>0 then
f,E=X[e[3][_[6]][6]],X[e[3][_[7]][6]]_[8]=L(f[1],E[1])_[9],f[30],E[30]=B(f[2],E[2])else
_[8],_[9]=0,0
end
end
u={}for a=1,32 do
u[a]=0
end
aH=aH+1
Y=B(Y+1/bn,2/35)ab(1,Y>=0)if Y>=0 then
Y=Y-1/35
aK=aK+1
for a=2,#U do
U[a][0]={}end
for a,s in z(ad)do
_=e[9][s[1]]c=s[3]b=_[2]f=c[b]c[b]=F(_[3],f-_[4],f+_[4])+0
f=c[b]if f==_[3]then
ad[a]=s[2]==_[5]and{_[6],1,c}or{s[1],s[2]+1,c}if _[6]==0 then
bh(ad,a)end
end
c[10]=c[10]or f~=s
c[30]=a
end
for a,_ in z(g)do
if _ then
for k,s in z({1,2,9})do
_[s]=_[s]+_[s+10]end
_[15]=_[15]+1
f=A[_[4]]if _[7]<=0 and _[20]then
_[15]=0
_[6]=f[_[7]<=-f[4]and f[15]>1 and 15 or 14]_[10],_[20]=o
if f[27]>0 then
c={}for k=1,30 do
c[k]=_[k]end
c[4]=f[27]c[6]=f[28]g[#g+1]=c
end
end
aM=e[16][_[6]]if _[15]>=aM[2]and aM[2]~=-1 then
_[6]=aM[4]_[15]=0
T=e[16][_[6]][3]bO=f[23]&4>0
if T==1 then
for a,l in z(g)do
if l then
j=Q-y(_,l)if j>0 then
ay(l,j)end
end
end
elseif T==2 then
if bi(_,d,90)then
_[23]=d
_[6]=f[5]end
af(_,i,a,8)bI(_)elseif T==3 then
_[23]=_[23][20]and _[23]or d
ax=aN(J(_,_[23])/45+.5)*45
t=i
l=1
while l<5 and not t do
j=am(_,V(ax+e[19][2][l],8))j[9]=_[9]t=af(j,i,a,l)and(C[1]>=j[9]-24 or bO)l=l+1
end
if t then
for k=1,2 do
_[30+k]=j[k]-_[k]_[k]=j[k]end
_[3]=ax
_[10]=o
else
af(_,i,a,8)end
bI(_)b=y(_,_[23])if f[13]>0 and az(_,_[23],1)and B(b,230)<aj()then
_[6]=f[13]end
if b<64 and f[12]>0 then
_[6]=f[12]end
elseif T==5 then
for a=1,11 do
d[3]=d[3]+e[19][9][a]n=e[14][23]bF()ba(d,1)end
d[3]=d[3]-20
elseif T>9 and _[20]then
_[3]=J(_,_[23])n=e[14][T]_[10]=o
ae=_[23]ba(_,a)end
end
if _[17]and _[17]>0 then
n=e[14][_[17]]if not af(_,i,a)or _[9]<=C[1]then
if aT then
ay(aT,f[21]*((aj()&7)+1),g[_[14]])end
_[1]=_[1]-_[11]_[2]=_[2]-_[12]_[3]=0
_[6]=A[_[4]][5]_[10]=o
_[11]=0
_[12],_[17]=0
_[19]=0
end
end
if _[6]==1 then
g[a]=i
else
ai=sub(_,aZ)O=U[2+ai[1]//Q+ai[2]//Q*bD]if O then
O[0][#O[0]+1]=a
end
end
end
end
for a=1,8 do
if ag(a)and v[1][a+4]>0 then
ac=a
end
end
n=e[14][ac]d[3]=d[3]-at(3)*(F(aI,5,6)*1.5-6)aI=abs(at(3))*aI+1
S=d
for a=1,2 do
S=am(S,V(d[3]-M+90*a,at(a)*8.33))end
S[9]=d[9]for a=1,8 do
t=af(S,o,1,a)end
if t then
for a=1,2 do
d[30+a]=S[a]-d[a]d[a]=S[a]end
if d[9]>C[1]then
d[19]=d[19]-1
else
d[9]=B(C[1],d[9]+4)d[19]=L(0,d[19])end
else
d[19]=0
d[9]=C[1]end
aD=v[1]c=n[1]if ag(31)and aB<=0 and(c==0 or aD[c]>=n[2])then
ab(3,o)aB=n[3]if c>0 then
aD[c]=aD[c]-n[2]end
bF()ba(d,1)end
aB=aB-1
if at(4)<0 then
_=am(d,V(d[3],64))_[9]=d[9]aP,aA=az(d,_,2,1)_=e[2][aA]if aP==i then
u[2]=aA
c,t=_[4]for a=14,16 do
t=t or v[1][a]>0 and c==a
end
if c==1 or t then
aR(_,_[5])elseif c>3000 and c<3005 then
bA=aN(c-3000)end
end
end
end
u[1]=ac
for a=3,13 do
u[a]=d[e[19][4][a]]or u[a]end
v[1][17]=bn
u[10]=v[1][aH%#v[1]+1]a=an
bK=o
I=1
ar=#g+#X
while I<3 and bK do
c=I*9+5
if a<=#g then
_=g[a]if a~=1 then
if _ then
if _[10]then
_[10]=i
u[c]=a
for k=1,8 do
u[c+k]=_[e[19][1][k]]end
I=I+1
end
else
u[c]=-a
bh(g,a)I=I+1
ar=ar-1
end
end
else
_=X[a-#g]if _[10]then
_[10]=i
u[c]=a-#g+2^15
for k=1,6 do
u[c+k]=_[k]end
I=I+1
end
end
a=(a-2)%ar+1
an=B(an,ar)bK=a~=an
end
an=a
for a=1,32 do
output.setNumber(a,u[a])end
end
ap=ap+1
async.httpGet(8,"")end
