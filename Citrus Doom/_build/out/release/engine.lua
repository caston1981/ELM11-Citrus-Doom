bR=""

Y=128
L=180
by=output
bC=input
C=math
M=C.max
v=C.min
at=C.floor
pi=C.pi
az=bC.getNumber
ao=bC.getBool
ad=by.setBool
n=true
i=false
y=ipairs
abs=C.abs
bD=table.remove
aT=string
function aa(b,g)return{(b[1]+g[1]),(b[2]+g[2])}end
function sub(b,g)return{(b[1]-g[1]),(b[2]-g[2])}end
function bm(b)return C.sin(b/L*pi)end
function ac(b)return C.cos(b/L*pi)end
function J(b,g)return C.atan(g[2]-b[2],g[1]-b[1])*L/pi end
function H(b,g,ac)return M(v(ac,b),g)end
function x(b,g)return C.sqrt(((b[1]-g[1])^2)+((b[2]-g[2])^2))end
function Q(b,g)return{ac(b)*g,bm(b)*g}end
function exp(b)return b[1],b[2]end
e={}aR=1
as=3
aB=i
aE=n
ai=2
aC=0
aw=0
S=0
aI=0
l=1
aY=0
bh=2
function aG(a,b,_)if a<32768then
_=e[7][a]return aG(_[_[3]*(b[2]-_[2])-_[4]*(b[1]-_[1])>0 and 8 or 7],b)else
a=e[5][e[6][a-32768][2]]return Z[e[3][e[2][a[4]][a[5]+6]][6]]end
end
function aA(r,bp,B,bN,_,a,k)ah=h[B]f=A[ah[4]]ap,ax=f[18],f[19]K=ap
D=aG(#e[7],r)R,ag=exp(D)aj=sub(r,O[1])P=O[2+aj[1]//Y+aj[2]//Y*bi]or{{}}for a,_ in y(P[0])do
c=h[_]if _~=B and c and ah[14]~=_ then
m=x(c,r)F=A[c[4]]if c[20]then
V=m-F[18]if V<K and F[23]&1>0 and(f[23]&1>0 or(r[9]+ax<c[9]or r[9]>c[9]+F[19])==i)then
aK=c
if bp==i then
return i
end
K=V
b_=J(r,c)end
end
if B==1 and not c[10]then
if m<50then
b=F[25]if b>0then
for p,s in y(z[b])do
if s>0 and z[1][p]<z[2][p]then
c=z
h[_]=i
c[1][p]=at(v(c[1][p]+s,c[2][p]))if H(p,5,12)==p then
ai=p-4
end
end
end
end
b=F[29]if b>0 then
b=e[11][b]for p=7,8 do
d[p]=H(d[p]+b[p*2-13],d[p],b[p*2-12])end
h[_]=i
end
end
end
end
end
aK=i
if ag-R<ax or R>r[9]+24then
return i
end
for a=1,#P do
_=e[2][P[a]]m,bd=bs(r,T[_[1]],T[_[2]])if m<K then
if bN==1 and(_[3]&512>0 or B==1)and(_[4]==2 or B>1)then
aV(_,_[5])end
if(_[3]&1>0 and f[23]&1>0)or _[3]&4==0 then
K=m
b_=bd
else
bu,bE=v(_[9],ag),M(_[8],R)if v(r[9],ag-ax)+24<bE or M(r[9],R)+ax>bu then
K=m
b_=bd
else
ag,R=bu,bE
end
end
end
end
D={R,ag}if bp then
if K~=ap then
_=aa(r,Q(b_,K-ap))r[1]=_[1]r[2]=_[2]end
return n
end
return K==ap
end
function bs(o,w,av)N=x(w,o)bt=J(w,av)+90
bl=bt-J(o,w)bf=-N*bm(bl)bI=N*ac(bl)aS=bt
if bI<0 then
aS=aS+L
end
if bf<0 then
return N,J(o,w)elseif bf>x(av,w)then
return x(av,o),J(o,av)else
return abs(bI),aS
end
end
function au(o,w,aM,B,_)aN=x(o,w)ba=aN
aJ=n
V,bc=exp(o)bP,bO=exp(w)aU,aQ=exp(sub(w,o))ar,bo=o[9]+32,w[9]+32
u=i
for a,_ in y(e[2])do
bw=T[_[1]]bA,bg=exp(sub(T[_[2]],bw))bk,bj=exp(sub(o,bw))bv=bg*aU-bA*aQ
U=(bA*bj-bg*bk)/bv
bM=(aU*bj-aQ*bk)/bv
if H(U,0,1)==U and H(bM,0,1)==bM then
bH={V+(U*aU),bc+(U*aQ)}m=x(o,bH)E=ar+(bo-ar)*(m/aN)if H(E,_[8]+1,_[9])~=E then
aJ=i
if aM==1 then
return i
end
if m<ba then
ba=m
bn,bL=exp(bH)bq=E
ak=a
end
end
end
end
if aM>1 then
if aM==3 then
for a,_ in y(h)do
if _ and a~=B then
f=A[_[4]]if f[23]&1>0 and _[20]then
m=x(o,_)if m<ba then
U=bs(_,o,w)N=(m/aN)E=ar+(bo-ar)*N
if H(E,_[9],_[9]+f[19])==E and U<f[18]then
u=n
aJ=i
bn=V+(bP-V)*N
bL=bc+(bO-bc)*N
bq=E
ak=a
end
end
end
end
end
end
return aJ,ak,{bn,bL,bq}end
return n
end
function httpReply(b,g,ac)br=aw//2
aw=0
end
function af()aI=aI%256+1
return e[13][1][aI]end
function bb(_,a)f=A[_[4]]if f[23]&2>0 and _[7]>0 then
_[8]=_[8]-(a+1)//2
_[7]=_[7]-a//2+v(_[8],0)_[8]=M(_[8],0)if af()<f[10]then
_[6]=f[9]_[15]=0
_[23]=d
_[10]=n
end
end
end
function bF(b,g,an)return g[20]and abs(((J(b,g)-b[3]+L)%360)-L)<an and au(b,g,1)end
function aD(G,B)be=ae and(ae[9]-G[9])*q[6]/x(ae,G)or 0
for a=1,q[12]do
b={}for a=1,30 do
b[a]=G[a]end
b[4]=q[8]b[10]=n
b[14]=B
bJ=(af()/Y-1)*q[10]aW=Q(G[3]+bJ,q[6])if q[7]>0then
h[#h+1]=b
f=A[b[4]]b[6]=f[3]b[9]=G[9]+32
b[11]=aW[1]b[12]=aW[2]b[17]=ai
b[19]=be
else
c=aa(G,aW)c[9]=d[9]+be
aX,ay,c=au(G,c,3,B)if not aX then
bG=sub(c,Q(G[3]+bJ,1))h[#h+1]=b
b[1]=bG[1]b[2]=bG[2]b[6]=A[b[4]][3]b[9]=c[3]b[19]=1
if u then
b=h[ay]bb(b,q[9]*((af()&3)+2))end
end
end
end
end
function aV(_,c)if c>-1 then
b=e[9][c]if b[1]>0 or ah[31]*_[10][2]-ah[32]*_[10][1]<0 then
g=Z[b[1]]al[g and g[30]or#al+1]={c,1,g or ah}_[4]=b[7]b=b[8]>0 and aV(_,b[8])end
else
aE=n
as=-c
t[9]=-c
end
end
function bB()bK,ae=2048
for a,_ in y(h)do
if a>1 and _ and bF(d,_,10)then
m=x(_,d)if m<bK then
if A[_[4]][23]&2>0then
ae=_
bK=m
end
end
end
end
end
function onTick()ad(9,ao(32))ad(2,i)ad(3,i)for k=1,3 do
if ao(32)and(not aB)or not e[21]then
aO=property.getText(aR..bR)if aO~=bR then
a=1
j=bR
_=aT.sub(aO,a,a)while _~=bRdo
c=aT.byte(_)if c>64 or _==bRthen
j=(j..(c-65))+0
if l==1then
ak=j
if e[j]==bx then
e[j]={}end
l=2
elseif l==2then
E=j
ab=0
l=3
elseif l==3then
aF=j
l=4
else
if ab==0then
ab=E
aF=aF-1
aP={}e[ak][#e[ak]+1]=aP
end
aP[#aP+1]=j
ab=ab-1
if M(ab,aF)==0then
l=1
end
end
j=bR
else
j=j.._
end
a=a+1
_=aT.sub(aO,a,a)end
aR=aR+1
else
aB=n
end
end
end
if aB then
if aE then
al,aE={}am=1
for a=1,10 do
e[a]=e[a+10*as]end
h=e[1]T=e[4]Z=e[8]O=e[10]z=e[12]A=e[15]for a=14,16 do
z[1][a]=0
end
as=as+1
for a,_ in y(h)do
for k=7,40 do
_[k]=0
end
bQ=_[5]+1
_[7]=A[_[4]][4]_[9],_[10]=aG(#e[7],_)[1]if _[4]==1 then
if d then
_[7]=d[7]_[8]=d[8]end
d=_
elseif _[5]&bh<1then
h[a]=i
end
end
bi=O[1][3]end
for a,_ in y(e[2])do
_[10]=sub(T[_[2]],T[_[1]])if _[3]&4>0 then
f,F=Z[e[3][_[6]][6]],Z[e[3][_[7]][6]]_[8]=M(f[1],F[1])_[9],f[30],F[30]=v(f[2],F[2])else
_[8],_[9]=0,0
end
end
t={}for a=1,32 do
t[a]=0
end
S=v(S+1/br,2/35)ad(1,S>=0)if S>=0 then
S=S-1/35
for a=2,#O do
O[a][0]={}end
for a,s in y(al)do
_=e[9][s[1]]c=s[3]b=_[2]f=c[b]c[b]=H(_[3],f-_[4],f+_[4])+0
f=c[b]if abs(f-_[3])<.1then
al[a]=s[2]==_[5]and{_[6],1,c}or{s[1],s[2]+1,c}if _[6]==0 then
bD(al,a)end
end
c[10]=c[10]or f~=s
c[30]=a
end
for a,_ in y(h)do
if _ then
for k,s in y({1,2,9})do
_[s]=_[s]+_[s+10]end
_[15]=_[15]+1
f=A[_[4]]if _[7]<=0 and _[20]then
_[15]=0
_[6]=f[_[7]<=-f[4]and f[15]>1 and 15or 14]_[10],_[20]=n
if f[27]>0 then
c={}for k=1,30 do
c[k]=_[k]end
c[4]=f[27]c[6]=f[28]h[#h+1]=c
end
end
aH=e[16][_[6]]if _[15]>=aH[2]and aH[2]~=-1then
_[6]=aH[4]_[15]=0
X=e[16][_[6]][3]if X==1 then
for a,l in y(h)do
if l then
j=Y-x(_,l)if j>0 then
bb(l,j)end
end
end
elseif X==2then
if bF(_,d,90)then
_[23]=d
_[6]=f[5]end
elseif X==3then
an=at(J(_,_[23])/45+.5)*45
u=i
l=1
while l<5 and not u do
j=aa(_,Q(an+e[19][2][l],8))j[9]=_[9]u=aA(j,i,a,l)and D[1]>=j[9]-24
l=l+1
end
if u then
for k=1,2 do
_[30+k]=j[k]-_[k]_[k]=j[k]end
_[3]=an
_[10]=n
else
aA(_,i,a)end
if f[23]&4<1 then
_[9]=D[1]end
b=x(_,_[23])if f[13]>0 and au(_,_[23],1)and v(b,230)<af()then
_[6]=f[13]end
if b<64 and f[12]>0then
_[6]=f[12]end
elseif X==5then
for a=1,11 do
d[3]=d[3]+e[19][9][a]q=e[14][23]bB()aD(d,1)end
d[3]=d[3]-20
elseif X>9then
_[3]=J(_,_[23])q=e[14][X]_[10]=n
ae=_[23]aD(_,a)end
end
if _[17]and _[17]>0then
q=e[14][_[17]]if not aA(_,i,a)or _[9]<=D[1]then
if aK then
bb(aK,f[21]*((af()&7)+1))end
_[1]=_[1]-_[11]_[2]=_[2]-_[12]_[3]=0
_[6]=A[_[4]][9]_[10]=n
_[11]=0
_[12]=0
_[17]=bx
_[19]=0
end
end
if _[6]==1then
h[a]=i
else
aj=sub(_,O[1])P=O[2+aj[1]//Y+aj[2]//Y*bi]if P~=bx then
P[0][#P[0]+1]=a
end
end
end
end
for a=1,8 do
if ao(a)and z[1][a+4]>0then
ai=a
end
end
q=e[14][ai]d[3]=d[3]-az(3)*(H(aY,5,6)*1.5-6)aY=abs(az(3))*aY+1
W=d
for a=1,2 do
W=aa(W,Q(d[3]-L+90*a,az(a)*8.33))end
W[9]=d[9]for a=1,8 do
u=aA(W,n,1,a)end
if u then
for a=1,2 do
d[30+a]=W[a]-d[a]d[a]=W[a]end
if d[9]<=D[1]then
d[9]=v(D[1],d[9]+4)d[19]=M(0,d[19])else
if d[9]>=D[2]-56then
d[9]=D[2]-56
d[19]=v(0,d[19])end
d[19]=d[19]-1
end
else
d[19]=0
end
aL=z[1]c=q[1]if ao(31)and aC<=0 and(c==0 or aL[c]>=q[2])then
ad(3,n)aC=q[3]if c>0then
aL[c]=aL[c]-q[2]end
bB()aD(d,1)end
aC=aC-1
if az(4)<0 then
_=aa(d,Q(d[3],64))_[9]=d[9]aX,ay=au(d,_,2,1)_=e[2][ay]if aX==i then
t[2]=ay
c,u=_[4]for a=14,16 do
u=u or z[1][a]>0 and c==a
end
if c==1 or u then
aV(_,_[5])elseif c>3000 and c<3005then
bh=at(c-3000)end
end
end
end
t[1]=ai
for a=3,8 do
t[a]=d[e[19][4][a]]end
t[5]=1
t[13]=d[3]a=am
bz=n
I=1
aq=#h+#Z
while I<3 and bz do
c=I*9+5
if a<=#h then
_=h[a]if a~=1 then
if _ then
if _[10]then
_[10]=i
t[c]=a
for k=1,8 do
t[c+k]=_[e[19][1][k]]end
I=I+1
end
else
t[c]=-a
bD(h,a)I=I+1
aq=aq-1
end
end
else
_=Z[a-#h]if _[10]then
_[10]=i
t[c]=a-#h+2^15
for k=1,6 do
t[c+k]=_[k]end
I=I+1
end
end
a=((a-2)%aq)+1
am=v(am,aq)bz=a~=am
end
am=a
for a=1,32 do
by.setNumber(a,t[a])end
end
aw=aw+1
async.httpGet(8,bR)end
function onDraw()aZ=screen.drawText
aZ(26,137,br)if aB then
for a=1,4 do
b=124+a*7
aZ(240,b,at(z[1][a]))aZ(230,b,z[1][13+a])end
end
end
