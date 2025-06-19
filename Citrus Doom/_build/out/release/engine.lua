
Y=128
N=180
E=math
M=E.max
B=E.min
aK=E.floor
pi=E.pi
aA=input.getNumber
ao=input.getBool
ab=output.setBool
o=true
x=false
z=ipairs
abs=E.abs
aI=table.remove
be=string
function aj(b,h)return{(b[1]+h[1]),(b[2]+h[2])}end
function sub(b,h)return{(b[1]-h[1]),(b[2]-h[2])}end
function bh(b)return E.sin(b/N*pi)end
function ad(b)return E.cos(b/N*pi)end
function K(b,h)return E.atan(h[2]-b[2],h[1]-b[1])*N/pi end
function H(b,h,ad)return M(B(ad,b),h)end
function w(b,h)return E.sqrt(((b[1]-h[1])^2)+((b[2]-h[2])^2))end
function aa(b,h)return{ad(b)*h,bh(b)*h}end
function exp(b)return b[1],b[2]end
f={}aX=1
ar=3
aF=o
ag=2
aw=0
ax=0
bg=0
aE=0
T=0
aS=0
l=1
aL=0
br=2
function aW(a,b,_)if a<2^15 then
_=f[7][a]return aW(_[_[3]*(b[2]-_[2])-_[4]*(b[1]-_[1])>0 and 8 or 7],b)else
a=f[5][f[6][a-32768][2]]return Z[f[3][f[2][a[4]][a[5]+6]][6]]end
end
function am(s,bK,A,bl,_)X=g[A]d=y[X[4]]as,ah=d[18],d[19]J=as
D=aW(#f[7],s)U,an=exp(D)af=sub(s,aN)L=R[2+af[1]//Y+af[2]//Y*bs]or{}for a,_ in z(L[0]or{})do
c=g[_]if _~=A and c and X[14]~=c then
k=w(c,s)G=y[c[4]]if c[20]then
P=k-G[18]if P<J and G[23]&1>0 and(d[23]&1>0 or H(s[9],c[9]-ah,c[9]+G[19])==s[9])then
aU=c
if bK==x then
return
end
J=P
aP=K(s,c)end
end
if A==1 then
if k<50 then
b=G[25]if b>0 then
for p,r in z(v[b])do
if r>0 and v[1][p]<v[2][p]then
c=v
g[_]=x
c[1][p]=aK(B(c[1][p]+r,c[2][p]))if H(p,5,12)==p then
ag=p-4
end
end
end
end
b=G[29]if b>0 then
b=f[11][b]for p=7,8 do
e[p]=H(e[p]+b[p*2-13],e[p],b[p*2-12])end
g[_]=x
end
end
end
end
end
if an-U<ah or U>s[9]+24 then
t=(bl or 1)<8 or bg%4>0 or D[6]<18 or at(X,10)return
end
for a=1,#L do
_=f[2][L[a]]k,bI=bt(s,S[_[1]],S[_[2]])if k<J then
if(_[3]&1>0 and d[23]&1>0)or _[3]&4==0 then
if A>1 or aM>0 or _[3]&4>0 then
J=k
aP=bI
end
else
aG,aO=B(_[9],an),M(_[8],U)if B(s[9],an-ah)+24<aO or M(s[9],U)+ah>aG or aG-aO<ah then
J=k
aP=bI
else
if bl==1 and(_[3]&512>0 or A==1)and(_[4]==2 or A>1)then
aC(_,_[5])end
an,U=aG,aO
end
end
end
end
D,aU={U,an}if bK then
if J~=as then
_=aj(s,aa(aP,J-as))s[1]=_[1]s[2]=_[2]end
return o
end
return J==as
end
function bt(q,u,ay)O=w(u,q)bo=K(u,ay)+90
bM=bo-K(q,u)bJ=-O*bh(bM)aM=O*ad(bM)bd=bo
if aM<0 then
bd=bd+N
end
if bJ<0 then
return O,K(q,u)elseif bJ>w(ay,u)then
return w(ay,q),K(q,ay)else
return abs(aM),bd
end
end
function az(q,u,ba,A,_)bb=w(q,u)aB=bb
aD,t=o
P,aH=exp(q)bR,bQ=exp(u)aQ,bc=exp(sub(u,q))ap,bL=q[9]+32,u[9]+32
for a,_ in z(f[2])do
bA=S[_[1]]bF,bC=exp(sub(S[_[2]],bA))bn,bz=exp(sub(q,bA))by=bC*aQ-bF*bc
W=(bF*bz-bC*bn)/by
bG=(aQ*bz-bc*bn)/by
if H(W,0,1)==W and H(bG,0,1)==bG then
bE={P+(W*aQ),aH+(W*bc)}k=w(q,bE)F=ap+(bL-ap)*(k/bb)if H(F,_[8]+1,_[9])~=F then
aD=x
if ba==1 then
return
end
if k<aB then
aB=k
bx,bi=exp(bE)bP=F
bO=a
end
end
end
end
if ba>1 then
if ba==3 then
for a,_ in z(g)do
if _ and a~=A then
d=y[_[4]]if d[23]&1>0 and _[20]then
k=w(q,_)if k<aB then
W=bt(_,q,u)O=(k/bb)F=ap+(bL-ap)*O
if H(F,_[9],_[9]+d[19])==F and W<d[18]then
aB=k
t,aD=o
bx=P+(bR-P)*O
bi=aH+(bQ-aH)*O
bP=F
bO=a
end
end
end
end
end
end
return aD,bO,{bx,bi,bP}end
return o
end
function httpReply(b,h,ad)bD=ax//2
ax=0
end
function ac()aS=aS%256+1
return f[13][1][aS]end
function at(_,a,c)d=y[_[4]]if d[23]&2>0 and _[7]>0 then
_[8]=_[8]-(a+1)//2
_[7]=_[7]-a//2+B(_[8],0)_[8]=M(_[8],0)_[33]=d[13]~="lost soul missile state" and c or e
if ac()<d[10]then
_[6]=d[9]_[15]=0
_[10]=o
end
end
end
function bj(b,h,au)return h[20]and abs(((K(b,h)-b[3]+N)%360)-N)<au and az(b,h,1)end
function aR(C,A)bw=ai and(ai[9]-C[9])*n[6]/w(ai,C)or 0
for a=1,n[12]do
b={}for a=1,33 do
b[a]=C[a]end
b[4]=n[8]b[10]=o
b[14]=C
bu=(ac()/Y-1)*n[10]aZ=aa(C[3]+bu,n[6])if n[7]>0 then
g[#g+1]=b
d=y[b[4]]b[6]=d[3]b[9]=C[9]+n[13]b[11]=aZ[1]b[12]=aZ[2]b[17]=ag
b[19]=bw
else
c=aj(C,aZ)c[9]=e[9]+bw
aT,av,c=az(C,c,3,A)if not aT then
bm=sub(c,aa(C[3]+bu,1))g[#g+1]=b
b[1]=bm[1]b[2]=bm[2]b[6]=y[b[4]][3]b[9]=c[3]b[19]=1
if t then
b=g[av]at(b,n[9]*((ac()&3)+2),C)end
end
end
end
end
function aC(_,c)if c>-1 then
b=f[9][c]if b[1]>0 or X[31]*_[10][2]-X[32]*_[10][1]<0 then
h=Z[b[1]]ae[h and h[30]or#ae+1]={c,1,h or X}_[4]=b[7]b=b[8]>0 and aC(_,b[8])end
else
aF=o
ar=-c
m[10]=-c
end
end
function bq()bN,ai=2048
for a,_ in z(g)do
if a>1 and _ and bj(e,_,10)then
k=w(_,e)if k<bN then
if y[_[4]][23]&2>0 then
ai=_
bN=k
end
end
end
end
end
function bB(_)if _[9]~=D[1]and not bk then
_[9]=D[1]_[10]=true
end
end
function onTick()ab(9,ao(32))ab(2,ao(11))ab(3,x)for j=1,3 do
if ao(32)and(not bH)or not f[21]then
bf=property.getText(aX)a=1
i=""
_=be.sub(bf,a,a)while _~=""do
c=be.byte(_)if c>64 then
i=(i..c-65)+0
if l==1 then
bv=i
f[i]=f[i]or{}elseif l==2 then
F=i
al=0
elseif l==3 then
aY=i
else
if al==0 then
al=F
aY=aY-1
aJ={}f[bv][#f[bv]+1]=aJ
end
aJ[#aJ+1]=i
al=al-1
l=M(al,aY)>0 and l-1 or 0
end
l=l+1
i=""
else
i=i.._
end
a=a+1
_=be.sub(bf,a,a)end
aX=aX+1
bH=bf==""
end
end
if bH then
if aF then
ae,aF={}ak=1
for a=1,10 do
f[a]=f[a+10*ar]end
g=f[1]S=f[4]Z=f[8]R=f[10]aN,R[1]=R[1]v=f[12]y=f[15]for a=14,16 do
v[1][a]=0
end
ar=ar+1
for a=#g,1,-1 do
_=g[a]for j=7,32 do
_[j]=0
end
_[7]=y[_[4]][4]_[9],_[10]=aW(#f[7],_)[1]if _[5]&br<1 then
aI(g,a)elseif _[4]==1 then
if e then
_[7]=e[7]_[8]=e[8]end
e=_
end
end
bs=aN[3]end
for a,_ in z(f[2])do
_[10]=sub(S[_[2]],S[_[1]])if _[3]&4>0 then
d,G=Z[f[3][_[6]][6]],Z[f[3][_[7]][6]]_[8]=M(d[1],G[1])_[9],d[30],G[30]=B(d[2],G[2])else
_[8],_[9]=0,0
end
end
m={}for a=1,32 do
m[a]=0
end
aE=aE+1
T=B(T+1/bD,2/35)ab(1,T>=0)if T>=0 then
T=T-1/35
bg=bg+1
for a=2,#R do
R[a][0]={}end
for a,r in z(ae)do
_=f[9][r[1]]c=r[3]b=_[2]d=c[b]c[b]=H(_[3],d-_[4],d+_[4])+0
d=c[b]if d==_[3]then
ae[a]=r[2]==_[5]and{_[6],1,c}or{r[1],r[2]+1,c}if _[6]==0 then
aI(ae,a)end
end
c[10]=c[10]or d~=r
c[30]=a
end
for a,_ in z(g)do
if _ then
for j,r in z({1,2,9})do
_[r]=_[r]+_[r+10]end
_[15]=_[15]+1
d=y[_[4]]if _[7]<=0 and _[20]then
_[15]=0
_[6]=d[_[7]<=-d[4]and d[15]>1 and 15 or 14]_[10],_[20]=o
m[12]=d[16]if d[27]>0 then
c={}for j=1,30 do
c[j]=_[j]end
c[4]=d[27]c[6]=d[28]g[#g+1]=c
end
end
b_=f[16][_[6]]_[33]=_[33]and(_[33][20]and _[33]or e)if _[15]>=b_[2]and b_[2]~=-1 then
_[6]=b_[4]_[15]=0
V=f[16][_[6]][3]bk=d[23]&4>0
if V==1 then
for a,l in z(g)do
if l then
i=Y-w(_,l)if i>0 then
at(l,i)end
end
end
elseif V==2 then
if bj(_,e,90)then
_[33]=e
_[6]=d[5]m[12]=d[6]end
am(_,x,a,8)bB(_)elseif V==3 then
au,t=aK(K(_,_[33])/45+.5)*45
l=1
while l<5 and not t do
i=aj(_,aa(au+f[19][2][l],8))i[9]=_[9]t=am(i,x,a,l)and(D[1]>=i[9]-24 or bk)l=l+1
end
if t then
for j=1,2 do
_[30+j]=i[j]-_[j]_[j]=i[j]end
_[3]=au
_[10]=o
else
am(_,x,a,8)end
bB(_)b=w(_,_[33])if d[13]>0 and az(_,_[33],1)and B(b,230)<ac()then
_[6]=d[13]end
if b<64 and d[12]>0 then
_[6]=d[12]end
elseif V==5 then
for a=1,11 do
e[3]=e[3]+f[19][9][a]n=f[14][23]bq()aR(e,1)end
e[3]=e[3]-20
elseif V>9 and _[20]then
_[3]=K(_,_[33])n=f[14][V]_[10]=o
ai=_[33]aR(_,a)end
end
if _[17]and _[17]>0 then
n=f[14][_[17]]if not am(_,x,a)or _[9]<=D[1]then
if aU then
at(aU,d[21]*((ac()&7)+1),_[14])end
_[1]=_[1]-_[11]_[2]=_[2]-_[12]_[3]=0
_[6]=y[_[4]][5]_[10]=o
_[11]=0
_[12],_[17]=0
m[12]=d[16]_[19]=0
end
end
if _[6]==1 then
g[a]=x
else
af=sub(_,aN)L=R[2+af[1]//Y+af[2]//Y*bs]if L then
L[0][#L[0]+1]=a
end
end
end
end
for a=1,8 do
if ao(a)and v[1][a+4]>0 then
ag=a
end
end
n=f[14][ag]e[3]=e[3]-aA(3)*(H(aL,5,6)*1.5-6)aL=abs(aA(3))*aL+1
Q=e
for a=1,2 do
Q=aj(Q,aa(e[3]-N+90*a,aA(a)*8.33))end
Q[9]=e[9]for a=1,8 do
t=am(Q,o,1,a)end
if t then
for a=1,2 do
e[30+a]=Q[a]-e[a]e[a]=Q[a]end
if e[9]>D[1]then
e[19]=e[19]-1
else
e[9]=B(D[1],e[9]+4)e[19]=M(0,e[19])end
else
e[19]=0
e[9]=D[1]end
aV=v[1]c=n[1]if ao(31)and aw<=0 and(c==0 or aV[c]>=n[2])then
ab(3,o)aw=n[3]if c>0 then
aV[c]=aV[c]-n[2]end
bq()aR(e,1)end
aw=aw-1
if aA(4)<0 then
_=aj(e,aa(e[3],64))_[9]=e[9]aT,av=az(e,_,2,1)_=f[2][av]if aT==x then
m[2]=av
c,t=_[4]for a=14,16 do
t=t or v[1][a]>0 and c==a
end
if c==1 or t then
aC(_,_[5])elseif c>3000 and c<3005 then
br=aK(c-3000)end
end
end
end
m[1]=ag
for a=3,14 do
m[a]=e[f[19][4][a]]or m[a]end
v[1][17]=bD
m[11]=v[1][aE%#v[1]+1]a=ak
bp=o
I=1
aq=#g+#Z
while I<3 and bp do
c=I*9+6
if a<=#g then
_=g[a]if a~=1 then
if _ then
if _[10]then
m[c],_[10]=a
for j=1,8 do
m[c+j]=_[f[19][1][j]]end
I=I+1
end
else
m[c]=-a
aI(g,a)I=I+1
aq=aq-1
end
end
else
_=Z[a-#g]if _[10]then
m[c],_[10]=a-#g+2^15
for j=1,6 do
m[c+j]=_[j]end
I=I+1
end
end
a=(a-2)%aq+1
ak=B(ak,aq)bp=a~=ak
end
ak=a
for a=1,32 do
output.setNumber(a,m[a])end
end
ax=ax+1
async.httpGet(8,"")end
