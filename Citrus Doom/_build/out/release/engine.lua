
Y=128
O=180
F=math
M=F.max
z=F.min
aW=F.floor
pi=F.pi
at=input.getNumber
am=input.getBool
ao=output.setBool
o=true
i=false
C=ipairs
abs=F.abs
aP=table.remove
bh=string
function aj(b,h)return{(b[1]+h[1]),(b[2]+h[2])}end
function sub(b,h)return{(b[1]-h[1]),(b[2]-h[2])}end
function bE(b)return F.sin(b/O*pi)end
function ak(b)return F.cos(b/O*pi)end
function J(b,h)return F.atan(h[2]-b[2],h[1]-b[1])*O/pi end
function H(b,h,ak)return M(z(ak,b),h)end
function v(b,h)return F.sqrt(((b[1]-h[1])^2)+((b[2]-h[2])^2))end
function P(b,h)return{ak(b)*h,bE(b)*h}end
function exp(b)return b[1],b[2]end
e={}aF=1
as=3
aT=i
aN=o
af=2
ar=0
ax=0
ba=0
bd=0
U=0
aM=0
l=1
bb=0
bA=2
function aE(a,b,_)if a<2^15 then
_=e[7][a]return aE(_[_[3]*(b[2]-_[2])-_[4]*(b[1]-_[1])>0 and 8 or 7],b)else
a=e[5][e[6][a-32768][2]]return W[e[3][e[2][a[4]][a[5]+6]][6]]end
end
function ab(t,bu,x,bG,_)V=g[x]f=A[V[4]]aB,an=f[18],f[19]K=aB
B=aE(#e[7],t)Q,ad=exp(B)ac=sub(t,bf)N=T[2+ac[1]//Y+ac[2]//Y*bP]or{}for a,_ in C(N[0]or{})do
c=g[_]if _~=x and c and V[14]~=_ then
m=v(c,t)E=A[c[4]]if c[20]then
X=m-E[18]if X<K and E[23]&1>0 and(f[23]&1>0 or H(t[9],c[9]-an,c[9]+E[19])==t[9])then
aL=c
if bu==i then
return i
end
K=X
aU=J(t,c)end
end
if x==1 then
if m<50 then
b=E[25]if b>0 then
for q,u in C(y[b])do
if u>0 and y[1][q]<y[2][q]then
c=y
g[_]=i
c[1][q]=aW(z(c[1][q]+u,c[2][q]))if H(q,5,12)==q then
af=q-4
end
end
end
end
b=E[29]if b>0 then
b=e[11][b]for q=7,8 do
d[q]=H(d[q]+b[q*2-13],d[q],b[q*2-12])end
g[_]=i
end
end
end
end
end
if ad-Q<an or Q>t[9]+24 then
s=(bG or 1)<8 or ba%4>0 or B[6]<18 or av(V,10)return i
end
for a=1,#N do
_=e[2][N[a]]m,bp=bl(t,R[_[1]],R[_[2]])if m<K then
if(_[3]&1>0 and f[23]&1>0)or _[3]&4==0 then
if x>1 or aY>0 or _[3]&4>0 then
K=m
aU=bp
end
else
aJ,aC=z(_[9],ad),M(_[8],Q)if z(t[9],ad-an)+24<aC or M(t[9],Q)+an>aJ or aJ-aC<an then
K=m
aU=bp
else
if bG==1 and(_[3]&512>0 or x==1)and(_[4]==2 or x>1)then
aR(_,_[5])end
ad,Q=aJ,aC
end
end
end
end
B,aL={Q,ad}if bu then
if K~=aB then
_=aj(t,P(aU,K-aB))t[1]=_[1]t[2]=_[2]end
return o
end
return K==aB
end
function bl(p,w,aA)L=v(w,p)bB=J(w,aA)+90
bD=bB-J(p,w)bi=-L*bE(bD)aY=L*ak(bD)aQ=bB
if aY<0 then
aQ=aQ+O
end
if bi<0 then
return L,J(p,w)elseif bi>v(aA,w)then
return v(aA,p),J(p,aA)else
return abs(aY),aQ
end
end
function aw(p,w,bc,x,_)aH=v(p,w)au=aH
be=o
X,aS=exp(p)bR,bQ=exp(w)aV,aD=exp(sub(w,p))ap,bw=p[9]+32,w[9]+32
s=i
for a,_ in C(e[2])do
bm=R[_[1]]bj,bv=exp(sub(R[_[2]],bm))bL,bq=exp(sub(p,bm))bM=bv*aV-bj*aD
S=(bj*bq-bv*bL)/bM
by=(aV*bq-aD*bL)/bM
if H(S,0,1)==S and H(by,0,1)==by then
bz={X+(S*aV),aS+(S*aD)}m=v(p,bz)G=ap+(bw-ap)*(m/aH)if H(G,_[8]+1,_[9])~=G then
be=i
if bc==1 then
return i
end
if m<au then
au=m
br,bF=exp(bz)bx=G
bO=a
end
end
end
end
if bc>1 then
if bc==3 then
for a,_ in C(g)do
if _ and a~=x then
f=A[_[4]]if f[23]&1>0 and _[20]then
m=v(p,_)if m<au then
S=bl(_,p,w)L=(m/aH)G=ap+(bw-ap)*L
if H(G,_[9],_[9]+f[19])==G and S<f[18]then
au=m
s=o
be=i
br=X+(bR-X)*L
bF=aS+(bQ-aS)*L
bx=G
bO=a
end
end
end
end
end
end
return be,bO,{br,bF,bx}end
return o
end
function httpReply(b,h,ak)bt=ax//2
ax=0
end
function ai()aM=aM%256+1
return e[13][1][aM]end
function av(_,a,c)f=A[_[4]]if f[23]&2>0 and _[7]>0 then
_[8]=_[8]-(a+1)//2
_[7]=_[7]-a//2+z(_[8],0)_[8]=M(_[8],0)if ai()<f[10]then
_[6]=f[9]_[15]=0
_[23]=c or d
_[10]=o
end
end
end
function bn(b,h,az)return h[20]and abs(((J(b,h)-b[3]+O)%360)-O)<az and aw(b,h,1)end
function bg(D,x)bC=al and(al[9]-D[9])*n[6]/v(al,D)or 0
for a=1,n[12]do
b={}for a=1,30 do
b[a]=D[a]end
b[4]=n[8]b[10]=o
b[14]=x
bN=(ai()/Y-1)*n[10]b_=P(D[3]+bN,n[6])if n[7]>0 then
g[#g+1]=b
f=A[b[4]]b[6]=f[3]b[9]=D[9]+n[13]b[11]=b_[1]b[12]=b_[2]b[17]=af
b[19]=bC
else
c=aj(D,b_)c[9]=d[9]+bC
aK,aq,c=aw(D,c,3,x)if not aK then
bJ=sub(c,P(D[3]+bN,1))g[#g+1]=b
b[1]=bJ[1]b[2]=bJ[2]b[6]=A[b[4]][3]b[9]=c[3]b[19]=1
if s then
b=g[aq]av(b,n[9]*((ai()&3)+2),D)end
end
end
end
end
function aR(_,c)if c>-1 then
b=e[9][c]if b[1]>0 or V[31]*_[10][2]-V[32]*_[10][1]<0 then
h=W[b[1]]ah[h and h[30]or#ah+1]={c,1,h or V}_[4]=b[7]b=b[8]>0 and aR(_,b[8])end
else
aN=o
as=-c
r[9]=-c
end
end
function bk()bI,al=2048
for a,_ in C(g)do
if a>1 and _ and bn(d,_,10)then
m=v(_,d)if m<bI then
if A[_[4]][23]&2>0 then
al=_
bI=m
end
end
end
end
end
function bK(_)if _[9]~=B[1]and not bo then
_[9]=B[1]_[10]=true
end
end
function onTick()ao(9,am(32))ao(2,am(11))ao(3,i)for k=1,3 do
if am(32)and(not aT)or not e[21]then
aX=property.getText(aF)a=1
j=""
_=bh.sub(aX,a,a)while _~=""do
c=bh.byte(_)if c>64 then
j=(j..c-65)+0
if l==1 then
bs=j
e[j]=e[j]or{}elseif l==2 then
G=j
ae=0
elseif l==3 then
aZ=j
else
if ae==0 then
ae=G
aZ=aZ-1
aG={}e[bs][#e[bs]+1]=aG
end
aG[#aG+1]=j
ae=ae-1
l=M(ae,aZ)>0 and l-1 or 0
end
l=l+1
j=""
else
j=j.._
end
a=a+1
_=bh.sub(aX,a,a)end
aF=aF+1
aT=aX==""
end
end
if aT then
if aN then
ah,aN={}ag=1
for a=1,10 do
e[a]=e[a+10*as]end
g=e[1]R=e[4]W=e[8]T=e[10]bf,T[1]=T[1]y=e[12]A=e[15]for a=14,16 do
y[1][a]=0
end
as=as+1
for a=#g,1,-1 do
_=g[a]for k=7,40 do
_[k]=0
end
_[7]=A[_[4]][4]_[9],_[10]=aE(#e[7],_)[1]if _[5]&bA<1 then
aP(g,a)elseif _[4]==1 then
if d then
_[7]=d[7]_[8]=d[8]end
d=_
end
end
bP=bf[3]end
for a,_ in C(e[2])do
_[10]=sub(R[_[2]],R[_[1]])if _[3]&4>0 then
f,E=W[e[3][_[6]][6]],W[e[3][_[7]][6]]_[8]=M(f[1],E[1])_[9],f[30],E[30]=z(f[2],E[2])else
_[8],_[9]=0,0
end
end
r={}for a=1,32 do
r[a]=0
end
bd=bd+1
U=z(U+1/bt,2/35)ao(1,U>=0)if U>=0 then
U=U-1/35
ba=ba+1
for a=2,#T do
T[a][0]={}end
for a,u in C(ah)do
_=e[9][u[1]]c=u[3]b=_[2]f=c[b]c[b]=H(_[3],f-_[4],f+_[4])+0
f=c[b]if f==_[3]then
ah[a]=u[2]==_[5]and{_[6],1,c}or{u[1],u[2]+1,c}if _[6]==0 then
aP(ah,a)end
end
c[10]=c[10]or f~=u
c[30]=a
end
for a,_ in C(g)do
if _ then
for k,u in C({1,2,9})do
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
aI=e[16][_[6]]if _[15]>=aI[2]and aI[2]~=-1 then
_[6]=aI[4]_[15]=0
aa=e[16][_[6]][3]bo=f[23]&4>0
if aa==1 then
for a,l in C(g)do
if l then
j=Y-v(_,l)if j>0 then
av(l,j)end
end
end
elseif aa==2 then
if bn(_,d,90)then
_[23]=d
_[6]=f[5]end
ab(_,i,a,8)bK(_)elseif aa==3 then
_[23]=_[23][20]and _[23]or d
az=aW(J(_,_[23])/45+.5)*45
s=i
l=1
while l<5 and not s do
j=aj(_,P(az+e[19][2][l],8))j[9]=_[9]s=ab(j,i,a,l)and(B[1]>=j[9]-24 or bo)l=l+1
end
if s then
for k=1,2 do
_[30+k]=j[k]-_[k]_[k]=j[k]end
_[3]=az
_[10]=o
else
ab(_,i,a,8)end
bK(_)b=v(_,_[23])if f[13]>0 and aw(_,_[23],1)and z(b,230)<ai()then
_[6]=f[13]end
if b<64 and f[12]>0 then
_[6]=f[12]end
elseif aa==5 then
for a=1,11 do
d[3]=d[3]+e[19][9][a]n=e[14][23]bk()bg(d,1)end
d[3]=d[3]-20
elseif aa>9 and _[20]then
_[3]=J(_,_[23])n=e[14][aa]_[10]=o
al=_[23]bg(_,a)end
end
if _[17]and _[17]>0 then
n=e[14][_[17]]if not ab(_,i,a)or _[9]<=B[1]then
if aL then
av(aL,f[21]*((ai()&7)+1),g[_[14]])end
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
ac=sub(_,bf)N=T[2+ac[1]//Y+ac[2]//Y*bP]if N then
N[0][#N[0]+1]=a
end
end
end
end
for a=1,8 do
if am(a)and y[1][a+4]>0 then
af=a
end
end
n=e[14][af]d[3]=d[3]-at(3)*(H(bb,5,6)*1.5-6)bb=abs(at(3))*bb+1
Z=d
for a=1,2 do
Z=aj(Z,P(d[3]-O+90*a,at(a)*8.33))end
Z[9]=d[9]for a=1,8 do
s=ab(Z,o,1,a)end
if s then
for a=1,2 do
d[30+a]=Z[a]-d[a]d[a]=Z[a]end
if d[9]>B[1]then
d[19]=d[19]-1
else
d[9]=z(B[1],d[9]+4)d[19]=M(0,d[19])end
else
d[19]=0
d[9]=B[1]end
aO=y[1]c=n[1]if am(31)and ar<=0 and(c==0 or aO[c]>=n[2])then
ao(3,o)ar=n[3]if c>0 then
aO[c]=aO[c]-n[2]end
bk()bg(d,1)end
ar=ar-1
if at(4)<0 then
_=aj(d,P(d[3],64))_[9]=d[9]aK,aq=aw(d,_,2,1)_=e[2][aq]if aK==i then
r[2]=aq
c,s=_[4]for a=14,16 do
s=s or y[1][a]>0 and c==a
end
if c==1 or s then
aR(_,_[5])elseif c>3000 and c<3005 then
bA=aW(c-3000)end
end
end
end
r[1]=af
for a=3,13 do
r[a]=d[e[19][4][a]]or r[a]end
y[1][17]=bt
r[10]=y[1][bd%#y[1]+1]a=ag
bH=o
I=1
ay=#g+#W
while I<3 and bH do
c=I*9+5
if a<=#g then
_=g[a]if a~=1 then
if _ then
if _[10]then
_[10]=i
r[c]=a
for k=1,8 do
r[c+k]=_[e[19][1][k]]end
I=I+1
end
else
r[c]=-a
aP(g,a)I=I+1
ay=ay-1
end
end
else
_=W[a-#g]if _[10]then
_[10]=i
r[c]=a-#g+2^15
for k=1,6 do
r[c+k]=_[k]end
I=I+1
end
end
a=(a-2)%ay+1
ag=z(ag,ay)bH=a~=ag
end
ag=a
for a=1,32 do
output.setNumber(a,r[a])end
end
ax=ax+1
async.httpGet(8,"")end
