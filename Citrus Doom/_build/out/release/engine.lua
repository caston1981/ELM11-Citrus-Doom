bT=""

V=128
P=180
bn=output
bF=input
D=math
M=D.max
v=D.min
ay=D.floor
pi=D.pi
as=bF.getNumber
ae=bF.getBool
ad=bn.setBool
n=true
i=false
y=ipairs
abs=D.abs
bg=table.remove
aY=string
function aa(b,g)return{(b[1]+g[1]),(b[2]+g[2])}end
function sub(b,g)return{(b[1]-g[1]),(b[2]-g[2])}end
function bw(b)return D.sin(b/P*pi)end
function ab(b)return D.cos(b/P*pi)end
function G(b,g)return D.atan(g[2]-b[2],g[1]-b[1])*P/pi end
function H(b,g,ab)return M(v(ab,b),g)end
function w(b,g)return D.sqrt(((b[1]-g[1])^2)+((b[2]-g[2])^2))end
function Q(b,g)return{ab(b)*g,bw(b)*g}end
function exp(b)return b[1],b[2]end
e={}aX=1
aC=3
aB=i
aN=n
ag=2
au=0
az=0
U=0
aQ=0
l=1
bb=0
by=2
function aR(a,b,_)if a<32768then
_=e[7][a]return aR(_[_[3]*(b[2]-_[2])-_[4]*(b[1]-_[1])>0 and 8 or 7],b)else
a=e[5][e[6][a-32768][2]]return W[e[3][e[2][a[4]][a[5]+6]][6]]end
end
function ar(s,bx,B,bQ,_,a,k)ak=h[B]f=A[ak[4]]ax,am=f[18],f[19]K=ax
E=aR(#e[7],s)Y,al=exp(E)ai=sub(s,L[1])N=L[2+ai[1]//V+ai[2]//V*bm]or{{}}for a,_ in y(N[0])do
c=h[_]if _~=B and c and ak[14]~=_ then
m=w(c,s)F=A[c[4]]if c[20]then
S=m-F[18]if S<K and F[23]&1>0 and(f[23]&1>0 or(s[9]+am<c[9]or s[9]>c[9]+F[19])==i)then
b_=c
if bx==i then
return i
end
K=S
aS=G(s,c)end
end
if B==1 and not c[10]then
if m<50then
b=F[25]if b>0then
for q,r in y(z[b])do
if r>0 and z[1][q]<z[2][q]then
c=z
h[_]=i
c[1][q]=ay(v(c[1][q]+r,c[2][q]))if H(q,5,12)==q then
ag=q-4
end
end
end
end
b=F[29]if b>0 then
b=e[11][b]for q=7,8 do
d[q]=H(d[q]+b[q*2-13],d[q],b[q*2-12])end
h[_]=i
end
end
end
end
end
b_=i
if al-Y<am or Y>s[9]+24then
return i
end
for a=1,#N do
_=e[2][N[a]]m,bE=bk(s,T[_[1]],T[_[2]])if m<K then
if bQ==1 and(_[3]&512>0 or B==1)and(_[4]==2 or B>1)then
aJ(_,_[5])end
if(_[3]&1>0 and f[23]&1>0)or _[3]&4==0 then
K=m
aS=bE
else
aL,ba=v(_[9],al),M(_[8],Y)if v(s[9],al-am)+24<ba or M(s[9],Y)+am>aL or aL-ba<am then
K=m
aS=bE
else
al,Y=aL,ba
end
end
end
end
E={Y,al}if bx then
if K~=ax then
_=aa(s,Q(aS,K-ax))s[1]=_[1]s[2]=_[2]end
return n
end
return K==ax
end
function bk(o,x,at)O=w(x,o)bN=G(x,at)+90
br=bN-G(o,x)bl=-O*bw(br)bs=O*ab(br)bc=bN
if bs<0 then
bc=bc+P
end
if bl<0 then
return O,G(o,x)elseif bl>w(at,x)then
return w(at,o),G(o,at)else
return abs(bs),bc
end
end
function aw(o,x,aV,B,_)aF=w(o,x)aq=aF
aT=n
S,aO=exp(o)bP,bR=exp(x)aM,aP=exp(sub(x,o))ap,bo=o[9]+32,x[9]+32
u=i
for a,_ in y(e[2])do
bL=T[_[1]]bh,bv=exp(sub(T[_[2]],bL))bA,bu=exp(sub(o,bL))bJ=bv*aM-bh*aP
X=(bh*bu-bv*bA)/bJ
bq=(aM*bu-aP*bA)/bJ
if H(X,0,1)==X and H(bq,0,1)==bq then
bK={S+(X*aM),aO+(X*aP)}m=w(o,bK)C=ap+(bo-ap)*(m/aF)if H(C,_[8]+1,_[9])~=C then
aT=i
if aV==1 then
return i
end
if m<aq then
aq=m
bG,bH=exp(bK)bD=C
bM=a
end
end
end
end
if aV>1 then
if aV==3 then
for a,_ in y(h)do
if _ and a~=B then
f=A[_[4]]if f[23]&1>0 and _[20]then
m=w(o,_)if m<aq then
X=bk(_,o,x)O=(m/aF)C=ap+(bo-ap)*O
if H(C,_[9],_[9]+f[19])==C and X<f[18]then
aq=m
u=n
aT=i
bG=S+(bP-S)*O
bH=aO+(bR-aO)*O
bD=C
bM=a
end
end
end
end
end
end
return aT,bM,{bG,bH,bD}end
return n
end
function httpReply(b,g,ab)bf=az//2
az=0
end
function an()aQ=aQ%256+1
return e[13][1][aQ]end
function aG(_,a)f=A[_[4]]if f[23]&2>0 and _[7]>0 then
_[8]=_[8]-(a+1)//2
_[7]=_[7]-a//2+v(_[8],0)_[8]=M(_[8],0)if an()<f[10]then
_[6]=f[9]_[15]=0
_[23]=d
_[10]=n
end
end
end
function be(b,g,av)return g[20]and abs(((G(b,g)-b[3]+P)%360)-P)<av and aw(b,g,1)end
function bd(I,B)bi=ac and(ac[9]-I[9])*p[6]/w(ac,I)or 0
for a=1,p[12]do
b={}for a=1,30 do
b[a]=I[a]end
b[4]=p[8]b[10]=n
b[14]=B
bI=(an()/V-1)*p[10]aU=Q(I[3]+bI,p[6])if p[7]>0then
h[#h+1]=b
f=A[b[4]]b[6]=f[3]b[9]=I[9]+32
b[11]=aU[1]b[12]=aU[2]b[17]=ag
b[19]=bi
else
c=aa(I,aU)c[9]=d[9]+bi
aE,ao,c=aw(I,c,3,B)if not aE then
bB=sub(c,Q(I[3]+bI,1))h[#h+1]=b
b[1]=bB[1]b[2]=bB[2]b[6]=A[b[4]][3]b[9]=c[3]b[19]=1
if u then
b=h[ao]aG(b,p[9]*((an()&3)+2))end
end
end
end
end
function aJ(_,c)if c>-1 then
b=e[9][c]if b[1]>0 or ak[31]*_[10][2]-ak[32]*_[10][1]<0 then
g=W[b[1]]ah[g and g[30]or#ah+1]={c,1,g or ak}_[4]=b[7]b=b[8]>0 and aJ(_,b[8])end
else
aN=n
aC=-c
t[9]=-c
end
end
function bt()bj,ac=2048
for a,_ in y(h)do
if a>1 and _ and be(d,_,10)then
m=w(_,d)if m<bj then
if A[_[4]][23]&2>0then
ac=_
bj=m
end
end
end
end
end
function onTick()ad(9,ae(32))ad(2,ae(11))ad(3,i)for k=1,3 do
if ae(32)and(not aB)or not e[21]then
aZ=property.getText(aX)a=1
j=bT
_=aY.sub(aZ,a,a)while _~=bTdo
c=aY.byte(_)if c>64then
j=(j..c-65)+0
if l==1then
bp=j
e[j]=e[j]or{}elseif l==2then
C=j
aj=0
elseif l==3then
aI=j
else
if aj==0then
aj=C
aI=aI-1
aW={}e[bp][#e[bp]+1]=aW
end
aW[#aW+1]=j
aj=aj-1
l=M(aj,aI)>0 and l-1 or 0
end
l=l+1
j=bT
else
j=j.._
end
a=a+1
_=aY.sub(aZ,a,a)end
aX=aX+1
aB=aZ==bT
end
end
if aB then
if aN then
ah,aN={}af=1
for a=1,10 do
e[a]=e[a+10*aC]end
h=e[1]T=e[4]W=e[8]L=e[10]z=e[12]A=e[15]for a=14,16 do
z[1][a]=0
end
aC=aC+1
for a,_ in y(h)do
for k=7,40 do
_[k]=0
end
bS=_[5]+1
_[7]=A[_[4]][4]_[9],_[10]=aR(#e[7],_)[1]if _[4]==1 then
if d then
_[7]=d[7]_[8]=d[8]end
d=_
elseif _[5]&by<1then
h[a]=i
end
end
bm=L[1][3]end
for a,_ in y(e[2])do
_[10]=sub(T[_[2]],T[_[1]])if _[3]&4>0 then
f,F=W[e[3][_[6]][6]],W[e[3][_[7]][6]]_[8]=M(f[1],F[1])_[9],f[30],F[30]=v(f[2],F[2])else
_[8],_[9]=0,0
end
end
t={}for a=1,32 do
t[a]=0
end
U=v(U+1/bf,2/35)ad(1,U>=0)if U>=0 then
U=U-1/35
for a=2,#L do
L[a][0]={}end
for a,r in y(ah)do
_=e[9][r[1]]c=r[3]b=_[2]f=c[b]c[b]=H(_[3],f-_[4],f+_[4])+0
f=c[b]if abs(f-_[3])<.1then
ah[a]=r[2]==_[5]and{_[6],1,c}or{r[1],r[2]+1,c}if _[6]==0 then
bg(ah,a)end
end
c[10]=c[10]or f~=r
c[30]=a
end
for a,_ in y(h)do
if _ then
for k,r in y({1,2,9})do
_[r]=_[r]+_[r+10]end
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
Z=e[16][_[6]][3]if Z==1 then
for a,l in y(h)do
if l then
j=V-w(_,l)if j>0 then
aG(l,j)end
end
end
elseif Z==2then
if be(_,d,90)then
_[23]=d
_[6]=f[5]end
elseif Z==3then
av=ay(G(_,_[23])/45+.5)*45
u=i
l=1
bC=f[23]&4>0
while l<5 and not u do
j=aa(_,Q(av+e[19][2][l],8))j[9]=_[9]u=ar(j,i,a,l)and(E[1]>=j[9]-24 or bC)l=l+1
end
if u then
for k=1,2 do
_[30+k]=j[k]-_[k]_[k]=j[k]end
_[3]=av
_[10]=n
else
ar(_,i,a)end
_[9]=bC and _[9]or E[1]b=w(_,_[23])if f[13]>0 and aw(_,_[23],1)and v(b,230)<an()then
_[6]=f[13]end
if b<64 and f[12]>0then
_[6]=f[12]end
elseif Z==5then
for a=1,11 do
d[3]=d[3]+e[19][9][a]p=e[14][23]bt()bd(d,1)end
d[3]=d[3]-20
elseif Z>9then
_[3]=G(_,_[23])p=e[14][Z]_[10]=n
ac=_[23]bd(_,a)end
end
if _[17]and _[17]>0then
p=e[14][_[17]]if not ar(_,i,a)or _[9]<=E[1]then
if b_ then
aG(b_,f[21]*((an()&7)+1))end
_[1]=_[1]-_[11]_[2]=_[2]-_[12]_[3]=0
_[6]=A[_[4]][9]_[10]=n
_[11]=0
_[12]=0
_[17]=bO
_[19]=0
end
end
if _[6]==1then
h[a]=i
else
ai=sub(_,L[1])N=L[2+ai[1]//V+ai[2]//V*bm]if N~=bO then
N[0][#N[0]+1]=a
end
end
end
end
for a=1,8 do
if ae(a)and z[1][a+4]>0then
ag=a
end
end
p=e[14][ag]d[3]=d[3]-as(3)*(H(bb,5,6)*1.5-6)bb=abs(as(3))*bb+1
R=d
for a=1,2 do
R=aa(R,Q(d[3]-P+90*a,as(a)*8.33))end
R[9]=d[9]for a=1,8 do
u=ar(R,n,1,a)end
if u then
for a=1,2 do
d[30+a]=R[a]-d[a]d[a]=R[a]end
if d[9]<=E[1]then
d[9]=v(E[1],d[9]+4)d[19]=M(0,d[19])else
if d[9]>=E[2]-56then
d[9]=E[2]-56
d[19]=v(0,d[19])end
d[19]=d[19]-1
end
else
d[19]=0
end
aK=z[1]c=p[1]if ae(31)and au<=0 and(c==0 or aK[c]>=p[2])then
ad(3,n)au=p[3]if c>0then
aK[c]=aK[c]-p[2]end
bt()bd(d,1)end
au=au-1
if as(4)<0 then
_=aa(d,Q(d[3],64))_[9]=d[9]aE,ao=aw(d,_,2,1)_=e[2][ao]if aE==i then
t[2]=ao
c,u=_[4]for a=14,16 do
u=u or z[1][a]>0 and c==a
end
if c==1 or u then
aJ(_,_[5])elseif c>3000 and c<3005then
by=ay(c-3000)end
end
end
end
t[1]=ag
for a=3,8 do
t[a]=d[e[19][4][a]]end
t[5]=1
t[13]=d[3]a=af
bz=n
J=1
aA=#h+#W
while J<3 and bz do
c=J*9+5
if a<=#h then
_=h[a]if a~=1 then
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
bg(h,a)J=J+1
aA=aA-1
end
end
else
_=W[a-#h]if _[10]then
_[10]=i
t[c]=a-#h+2^15
for k=1,6 do
t[c+k]=_[k]end
J=J+1
end
end
a=((a-2)%aA)+1
af=v(af,aA)bz=a~=af
end
af=a
for a=1,32 do
bn.setNumber(a,t[a])end
end
az=az+1
async.httpGet(8,bT)end
function onDraw()aD=screen.drawText
aD(26,137,bf)if aB then
for a=1,4 do
b=124+a*7
aD(240,b,ay(z[1][a]))aD(230,b,z[1][13+a])end
end
end
