
T=128
O=180
G=math
L=G.max
C=G.min
aI=G.floor
pi=G.pi
as=input.getNumber
al=input.getBool
ae=output.setBool
o=true
i=false
B=ipairs
abs=G.abs
bh=table.remove
bc=string
function ac(b,h)return{(b[1]+h[1]),(b[2]+h[2])}end
function sub(b,h)return{(b[1]-h[1]),(b[2]-h[2])}end
function bM(b)return G.sin(b/O*pi)end
function ak(b)return G.cos(b/O*pi)end
function K(b,h)return G.atan(h[2]-b[2],h[1]-b[1])*O/pi end
function E(b,h,ak)return L(C(ak,b),h)end
function v(b,h)return G.sqrt(((b[1]-h[1])^2)+((b[2]-h[2])^2))end
function X(b,h)return{ak(b)*h,bM(b)*h}end
function exp(b)return b[1],b[2]end
e={}aJ=1
av=3
aG=i
aR=o
ah=2
aw=0
az=0
bf=0
aH=0
Y=0
aV=0
l=1
aY=0
by=2
function aQ(a,b,_)if a<2^15 then
_=e[7][a]return aQ(_[_[3]*(b[2]-_[2])-_[4]*(b[1]-_[1])>0 and 8 or 7],b)else
a=e[5][e[6][a-32768][2]]return V[e[3][e[2][a[4]][a[5]+6]][6]]end
end
function aj(t,bp,x,bE,_)U=g[x]f=A[U[4]]aB,af=f[18],f[19]I=aB
z=aQ(#e[7],t)W,an=exp(z)ad=sub(t,aP)N=P[2+ad[1]//T+ad[2]//T*bA]or{}for a,_ in B(N[0]or{})do
c=g[_]if _~=x and c and U[14]~=_ then
m=v(c,t)F=A[c[4]]if c[20]then
S=m-F[18]if S<I and F[23]&1>0 and(f[23]&1>0 or E(t[9],c[9]-af,c[9]+F[19])==t[9])then
bb=c
if bp==i then
return i
end
I=S
aZ=K(t,c)end
end
if x==1 then
if m<50 then
b=F[25]if b>0 then
for p,u in B(w[b])do
if u>0 and w[1][p]<w[2][p]then
c=w
g[_]=i
c[1][p]=aI(C(c[1][p]+u,c[2][p]))if E(p,5,12)==p then
ah=p-4
end
end
end
end
b=F[29]if b>0 then
b=e[11][b]for p=7,8 do
d[p]=E(d[p]+b[p*2-13],d[p],b[p*2-12])end
g[_]=i
end
end
end
end
end
if an-W<af or W>t[9]+24 then
s=(bE or 1)<8 or bf%4>0 or z[6]<18 or ax(U,10)return i
end
for a=1,#N do
_=e[2][N[a]]m,bH=bt(t,R[_[1]],R[_[2]])if m<I then
if(_[3]&1>0 and f[23]&1>0)or _[3]&4==0 then
if x>1 or bd>0 or _[3]&4>0 then
I=m
aZ=bH
end
else
b_,ba=C(_[9],an),L(_[8],W)if C(t[9],an-af)+24<ba or L(t[9],W)+af>b_ or b_-ba<af then
I=m
aZ=bH
else
if bE==1 and(_[3]&512>0 or x==1)and(_[4]==2 or x>1)then
aS(_,_[5])end
an,W=b_,ba
end
end
end
end
z,bb={W,an}if bp then
if I~=aB then
_=ac(t,X(aZ,I-aB))t[1]=_[1]t[2]=_[2]end
return o
end
return I==aB
end
function bt(q,y,aA)M=v(y,q)bB=K(y,aA)+90
bC=bB-K(q,y)bn=-M*bM(bC)bd=M*ak(bC)aM=bB
if bd<0 then
aM=aM+O
end
if bn<0 then
return M,K(q,y)elseif bn>v(aA,y)then
return v(aA,q),K(q,aA)else
return abs(bd),aM
end
end
function au(q,y,aW,x,_)aT=v(q,y)ar=aT
aC=o
S,aU=exp(q)bQ,bR=exp(y)aO,aN=exp(sub(y,q))ay,bi=q[9]+32,y[9]+32
s=i
for a,_ in B(e[2])do
bu=R[_[1]]bj,bk=exp(sub(R[_[2]],bu))bN,bl=exp(sub(q,bu))bq=bk*aO-bj*aN
aa=(bj*bl-bk*bN)/bq
br=(aO*bl-aN*bN)/bq
if E(aa,0,1)==aa and E(br,0,1)==br then
bO={S+(aa*aO),aU+(aa*aN)}m=v(q,bO)D=ay+(bi-ay)*(m/aT)if E(D,_[8]+1,_[9])~=D then
aC=i
if aW==1 then
return i
end
if m<ar then
ar=m
bG,bx=exp(bO)bw=D
bo=a
end
end
end
end
if aW>1 then
if aW==3 then
for a,_ in B(g)do
if _ and a~=x then
f=A[_[4]]if f[23]&1>0 and _[20]then
m=v(q,_)if m<ar then
aa=bt(_,q,y)M=(m/aT)D=ay+(bi-ay)*M
if E(D,_[9],_[9]+f[19])==D and aa<f[18]then
ar=m
s=o
aC=i
bG=S+(bQ-S)*M
bx=aU+(bR-aU)*M
bw=D
bo=a
end
end
end
end
end
end
return aC,bo,{bG,bx,bw}end
return o
end
function httpReply(b,h,ak)bv=az//2
az=0
end
function ai()aV=aV%256+1
return e[13][1][aV]end
function ax(_,a,c)f=A[_[4]]if f[23]&2>0 and _[7]>0 then
_[8]=_[8]-(a+1)//2
_[7]=_[7]-a//2+C(_[8],0)_[8]=L(_[8],0)if ai()<f[10]then
_[6]=f[9]_[15]=0
_[23]=c or d
_[10]=o
end
end
end
function bm(b,h,at)return h[20]and abs(((K(b,h)-b[3]+O)%360)-O)<at and au(b,h,1)end
function aL(H,x)bL=ao and(ao[9]-H[9])*n[6]/v(ao,H)or 0
for a=1,n[12]do
b={}for a=1,30 do
b[a]=H[a]end
b[4]=n[8]b[10]=o
b[14]=x
bs=(ai()/T-1)*n[10]aD=X(H[3]+bs,n[6])if n[7]>0 then
g[#g+1]=b
f=A[b[4]]b[6]=f[3]b[9]=H[9]+n[13]b[11]=aD[1]b[12]=aD[2]b[17]=ah
b[19]=bL
else
c=ac(H,aD)c[9]=d[9]+bL
aE,aq,c=au(H,c,3,x)if not aE then
bD=sub(c,X(H[3]+bs,1))g[#g+1]=b
b[1]=bD[1]b[2]=bD[2]b[6]=A[b[4]][3]b[9]=c[3]b[19]=1
if s then
b=g[aq]ax(b,n[9]*((ai()&3)+2),H)end
end
end
end
end
function aS(_,c)if c>-1 then
b=e[9][c]if b[1]>0 or U[31]*_[10][2]-U[32]*_[10][1]<0 then
h=V[b[1]]ab[h and h[30]or#ab+1]={c,1,h or U}_[4]=b[7]b=b[8]>0 and aS(_,b[8])end
else
aR=o
av=-c
r[9]=-c
end
end
function bP()bJ,ao=2048
for a,_ in B(g)do
if a>1 and _ and bm(d,_,10)then
m=v(_,d)if m<bJ then
if A[_[4]][23]&2>0 then
ao=_
bJ=m
end
end
end
end
end
function bK(_)if _[9]~=z[1]and not bF then
_[9]=z[1]_[10]=true
end
end
function onTick()ae(9,al(32))ae(2,al(11))ae(3,i)for k=1,3 do
if al(32)and(not aG)or not e[21]then
be=property.getText(aJ)a=1
j=""
_=bc.sub(be,a,a)while _~=""do
c=bc.byte(_)if c>64 then
j=(j..c-65)+0
if l==1 then
bI=j
e[j]=e[j]or{}elseif l==2 then
D=j
am=0
elseif l==3 then
aK=j
else
if am==0 then
am=D
aK=aK-1
bg={}e[bI][#e[bI]+1]=bg
end
bg[#bg+1]=j
am=am-1
l=L(am,aK)>0 and l-1 or 0
end
l=l+1
j=""
else
j=j.._
end
a=a+1
_=bc.sub(be,a,a)end
aJ=aJ+1
aG=be==""
end
end
if aG then
if aR then
ab,aR={}ag=1
for a=1,10 do
e[a]=e[a+10*av]end
g=e[1]R=e[4]V=e[8]P=e[10]aP,P[1]=P[1]w=e[12]A=e[15]for a=14,16 do
w[1][a]=0
end
av=av+1
for a=#g,1,-1 do
_=g[a]for k=7,40 do
_[k]=0
end
_[7]=A[_[4]][4]_[9],_[10]=aQ(#e[7],_)[1]if _[5]&by<1 then
bh(g,a)elseif _[4]==1 then
if d then
_[7]=d[7]_[8]=d[8]end
d=_
end
end
bA=aP[3]end
for a,_ in B(e[2])do
_[10]=sub(R[_[2]],R[_[1]])if _[3]&4>0 then
f,F=V[e[3][_[6]][6]],V[e[3][_[7]][6]]_[8]=L(f[1],F[1])_[9],f[30],F[30]=C(f[2],F[2])else
_[8],_[9]=0,0
end
end
r={}for a=1,32 do
r[a]=0
end
aH=aH+1
Y=C(Y+1/bv,2/35)ae(1,Y>=0)if Y>=0 then
Y=Y-1/35
bf=bf+1
for a=2,#P do
P[a][0]={}end
for a,u in B(ab)do
_=e[9][u[1]]c=u[3]b=_[2]f=c[b]c[b]=E(_[3],f-_[4],f+_[4])+0
f=c[b]if f==_[3]then
ab[a]=u[2]==_[5]and{_[6],1,c}or{u[1],u[2]+1,c}if _[6]==0 then
bh(ab,a)end
end
c[10]=c[10]or f~=u
c[30]=a
end
for a,_ in B(g)do
if _ then
for k,u in B({1,2,9})do
_[u]=_[u]+_[u+10]end
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
aX=e[16][_[6]]if _[15]>=aX[2]and aX[2]~=-1 then
_[6]=aX[4]_[15]=0
Q=e[16][_[6]][3]bF=f[23]&4>0
if Q==1 then
for a,l in B(g)do
if l then
j=T-v(_,l)if j>0 then
ax(l,j)end
end
end
elseif Q==2 then
if bm(_,d,90)then
_[23]=d
_[6]=f[5]end
aj(_,i,a,8)bK(_)elseif Q==3 then
_[23]=_[23][20]and _[23]or d
at=aI(K(_,_[23])/45+.5)*45
s=i
l=1
while l<5 and not s do
j=ac(_,X(at+e[19][2][l],8))j[9]=_[9]s=aj(j,i,a,l)and(z[1]>=j[9]-24 or bF)l=l+1
end
if s then
for k=1,2 do
_[30+k]=j[k]-_[k]_[k]=j[k]end
_[3]=at
_[10]=o
else
aj(_,i,a,8)end
bK(_)b=v(_,_[23])if f[13]>0 and au(_,_[23],1)and C(b,230)<ai()then
_[6]=f[13]end
if b<64 and f[12]>0 then
_[6]=f[12]end
elseif Q==5 then
for a=1,11 do
d[3]=d[3]+e[19][9][a]n=e[14][23]bP()aL(d,1)end
d[3]=d[3]-20
elseif Q>9 and _[20]then
_[3]=K(_,_[23])n=e[14][Q]_[10]=o
ao=_[23]aL(_,a)end
end
if _[17]and _[17]>0 then
n=e[14][_[17]]if not aj(_,i,a)or _[9]<=z[1]then
if bb then
ax(bb,f[21]*((ai()&7)+1),g[_[14]])end
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
ad=sub(_,aP)N=P[2+ad[1]//T+ad[2]//T*bA]if N then
N[0][#N[0]+1]=a
end
end
end
end
for a=1,8 do
if al(a)and w[1][a+4]>0 then
ah=a
end
end
n=e[14][ah]d[3]=d[3]-as(3)*(E(aY,5,6)*1.5-6)aY=abs(as(3))*aY+1
Z=d
for a=1,2 do
Z=ac(Z,X(d[3]-O+90*a,as(a)*8.33))end
Z[9]=d[9]for a=1,8 do
s=aj(Z,o,1,a)end
if s then
for a=1,2 do
d[30+a]=Z[a]-d[a]d[a]=Z[a]end
if d[9]>z[1]then
d[19]=d[19]-1
else
d[9]=C(z[1],d[9]+4)d[19]=L(0,d[19])end
else
d[19]=0
d[9]=z[1]end
aF=w[1]c=n[1]if al(31)and aw<=0 and(c==0 or aF[c]>=n[2])then
ae(3,o)aw=n[3]if c>0 then
aF[c]=aF[c]-n[2]end
bP()aL(d,1)end
aw=aw-1
if as(4)<0 then
_=ac(d,X(d[3],64))_[9]=d[9]aE,aq=au(d,_,2,1)_=e[2][aq]if aE==i then
r[2]=aq
c,s=_[4]for a=14,16 do
s=s or w[1][a]>0 and c==a
end
if c==1 or s then
aS(_,_[5])elseif c>3000 and c<3005 then
by=aI(c-3000)end
end
end
end
r[1]=ah
for a=3,13 do
r[a]=d[e[19][4][a]]or r[a]end
w[1][17]=bv
r[10]=w[1][aH%#w[1]+1]a=ag
bz=o
J=1
ap=#g+#V
while J<3 and bz do
c=J*9+5
if a<=#g then
_=g[a]if a~=1 then
if _ then
if _[10]then
_[10]=i
r[c]=a
for k=1,8 do
r[c+k]=_[e[19][1][k]]end
J=J+1
end
else
r[c]=-a
bh(g,a)J=J+1
ap=ap-1
end
end
else
_=V[a-#g]if _[10]then
_[10]=i
r[c]=a-#g+2^15
for k=1,6 do
r[c+k]=_[k]end
J=J+1
end
end
a=(a-2)%ap+1
ag=C(ag,ap)bz=a~=ag
end
ag=a
for a=1,32 do
output.setNumber(a,r[a])end
end
az=az+1
async.httpGet(8,"")end
