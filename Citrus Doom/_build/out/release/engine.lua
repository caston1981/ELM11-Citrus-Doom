bU=""

P=128
O=180
bL=output
bg=input
D=math
L=D.max
A=D.min
ao=D.floor
pi=D.pi
aB=bg.getNumber
am=bg.getBool
ag=bL.setBool
o=true
i=false
x=ipairs
abs=D.abs
by=table.remove
aR=string
function ab(b,g)return{(b[1]+g[1]),(b[2]+g[2])}end
function sub(b,g)return{(b[1]-g[1]),(b[2]-g[2])}end
function br(b)return D.sin(b/O*pi)end
function aa(b)return D.cos(b/O*pi)end
function I(b,g)return D.atan(g[2]-b[2],g[1]-b[1])*O/pi end
function G(b,g,aa)return L(A(aa,b),g)end
function y(b,g)return D.sqrt(((b[1]-g[1])^2)+((b[2]-g[2])^2))end
function Z(b,g)return{aa(b)*g,br(b)*g}end
function exp(b)return b[1],b[2]end
e={}aG=1
as=3
aq=i
aM=o
an=2
az=0
ay=0
Q=0
bd=0
m=1
ba=0
bn=2
function bc(a,b,_)if a<32768then
_=e[7][a]return bc(_[_[3]*(b[2]-_[2])-_[4]*(b[1]-_[1])>0 and 8 or 7],b)else
a=e[5][e[6][a-32768][2]]return R[e[3][e[2][a[4]][a[5]+6]][6]]end
end
function ax(t,bz,w,bQ,_,a,k)ac=h[w]f=B[ac[4]]ap,ad=f[18],f[19]K=ap
F=bc(#e[7],t)W,ae=exp(F)ai=sub(t,bb)M=U[2+ai[1]//P+ai[2]//P*bl]or{}for a,_ in x(M[0]or{})do
c=h[_]if _~=w and c and ac[14]~=_ then
l=y(c,t)E=B[c[4]]if c[20]then
X=l-E[18]if X<K and E[23]&1>0 and(f[23]&1>0 or(t[9]+ad<c[9]or t[9]>c[9]+E[19])==i)then
aZ=c
if bz==i then
return i
end
K=X
aY=I(t,c)end
end
if w==1 and not c[10]then
if l<50then
b=E[25]if b>0then
for q,r in x(z[b])do
if r>0 and z[1][q]<z[2][q]then
c=z
h[_]=i
c[1][q]=ao(A(c[1][q]+r,c[2][q]))if G(q,5,12)==q then
an=q-4
end
end
end
end
b=E[29]if b>0 then
b=e[11][b]for q=7,8 do
d[q]=G(d[q]+b[q*2-13],d[q],b[q*2-12])end
h[_]=i
end
end
end
end
end
aZ=i
if ae-W<ad or W>t[9]+24then
return i
end
for a=1,#M do
_=e[2][M[a]]l,bt=bI(t,Y[_[1]],Y[_[2]])if l<K then
if bQ==1 and(_[3]&512>0 or w==1)and(_[4]==2 or w>1)then
aD(_,_[5])end
if(_[3]&1>0 and f[23]&1>0)or _[3]&4==0 then
if w>1 or be>0then
K=l
aY=bt
end
else
aT,aN=A(_[9],ae),L(_[8],W)if A(t[9],ae-ad)+24<aN or L(t[9],W)+ad>aT or aT-aN<ad then
K=l
aY=bt
else
ae,W=aT,aN
end
end
end
end
F={W,ae}if bz then
if K~=ap then
_=ab(t,Z(aY,K-ap))t[1]=_[1]t[2]=_[2]end
return o
end
return K==ap
end
function bI(p,v,ar)N=y(v,p)bo=I(v,ar)+90
bq=bo-I(p,v)bA=-N*br(bq)be=N*aa(bq)aF=bo
if be<0 then
aF=aF+O
end
if bA<0 then
return N,I(p,v)elseif bA>y(ar,v)then
return y(ar,p),I(p,ar)else
return abs(be),aF
end
end
function aC(p,v,aU,w,_)aQ=y(p,v)aw=aQ
b_=o
X,aX=exp(p)bR,bP=exp(v)aL,aJ=exp(sub(v,p))au,bx=p[9]+32,v[9]+32
u=i
for a,_ in x(e[2])do
bu=Y[_[1]]bp,bj=exp(sub(Y[_[2]],bu))bw,bG=exp(sub(p,bu))bB=bj*aL-bp*aJ
T=(bp*bG-bj*bw)/bB
bv=(aL*bG-aJ*bw)/bB
if G(T,0,1)==T and G(bv,0,1)==bv then
bE={X+(T*aL),aX+(T*aJ)}l=y(p,bE)C=au+(bx-au)*(l/aQ)if G(C,_[8]+1,_[9])~=C then
b_=i
if aU==1 then
return i
end
if l<aw then
aw=l
bh,bJ=exp(bE)bM=C
bD=a
end
end
end
end
if aU>1 then
if aU==3 then
for a,_ in x(h)do
if _ and a~=w then
f=B[_[4]]if f[23]&1>0 and _[20]then
l=y(p,_)if l<aw then
T=bI(_,p,v)N=(l/aQ)C=au+(bx-au)*N
if G(C,_[9],_[9]+f[19])==C and T<f[18]then
aw=l
u=o
b_=i
bh=X+(bR-X)*N
bJ=aX+(bP-aX)*N
bM=C
bD=a
end
end
end
end
end
end
return b_,bD,{bh,bJ,bM}end
return o
end
function httpReply(b,g,aa)bi=ay//2
ay=0
end
function ah()bd=bd%256+1
return e[13][1][bd]end
function aK(_,a)f=B[_[4]]if f[23]&2>0 and _[7]>0 then
_[8]=_[8]-(a+1)//2
_[7]=_[7]-a//2+A(_[8],0)_[8]=L(_[8],0)if ah()<f[10]then
_[6]=f[9]_[15]=0
_[23]=d
_[10]=o
end
end
end
function bs(b,g,av)return g[20]and abs(((I(b,g)-b[3]+O)%360)-O)<av and aC(b,g,1)end
function aH(H,w)bk=af and(af[9]-H[9])*n[6]/y(af,H)or 0
for a=1,n[12]do
b={}for a=1,30 do
b[a]=H[a]end
b[4]=n[8]b[10]=o
b[14]=w
bH=(ah()/P-1)*n[10]aI=Z(H[3]+bH,n[6])if n[7]>0then
h[#h+1]=b
f=B[b[4]]b[6]=f[3]b[9]=H[9]+n[13]b[11]=aI[1]b[12]=aI[2]b[17]=an
b[19]=bk
else
c=ab(H,aI)c[9]=d[9]+bk
aO,at,c=aC(H,c,3,w)if not aO then
bK=sub(c,Z(H[3]+bH,1))h[#h+1]=b
b[1]=bK[1]b[2]=bK[2]b[6]=B[b[4]][3]b[9]=c[3]b[19]=1
if u then
b=h[at]aK(b,n[9]*((ah()&3)+2))end
end
end
end
end
function aD(_,c)if c>-1 then
b=e[9][c]if b[1]>0 or ac[31]*_[10][2]-ac[32]*_[10][1]<0 then
g=R[b[1]]al[g and g[30]or#al+1]={c,1,g or ac}_[4]=b[7]b=b[8]>0 and aD(_,b[8])end
else
aM=o
as=-c
s[9]=-c
end
end
function bN()bF,af=2048
for a,_ in x(h)do
if a>1 and _ and bs(d,_,10)then
l=y(_,d)if l<bF then
if B[_[4]][23]&2>0then
af=_
bF=l
end
end
end
end
end
function onTick()ag(9,am(32))ag(2,am(11))ag(3,i)for k=1,3 do
if am(32)and(not aq)or not e[21]then
aP=property.getText(aG)a=1
j=bU
_=aR.sub(aP,a,a)while _~=bUdo
c=aR.byte(_)if c>64then
j=(j..c-65)+0
if m==1then
bO=j
e[j]=e[j]or{}elseif m==2then
C=j
ak=0
elseif m==3then
aV=j
else
if ak==0then
ak=C
aV=aV-1
bf={}e[bO][#e[bO]+1]=bf
end
bf[#bf+1]=j
ak=ak-1
m=L(ak,aV)>0 and m-1 or 0
end
m=m+1
j=bU
else
j=j.._
end
a=a+1
_=aR.sub(aP,a,a)end
aG=aG+1
aq=aP==bU
end
end
if aq then
if aM then
al,aM={}aj=1
for a=1,10 do
e[a]=e[a+10*as]end
h=e[1]Y=e[4]R=e[8]U=e[10]bb,U[1]=U[1]z=e[12]B=e[15]for a=14,16 do
z[1][a]=0
end
as=as+1
for a,_ in x(h)do
for k=7,40 do
_[k]=0
end
bT=_[5]+1
_[7]=B[_[4]][4]_[9],_[10]=bc(#e[7],_)[1]if _[4]==1 then
if d then
_[7]=d[7]_[8]=d[8]end
d=_
elseif _[5]&bn<1then
h[a]=i
end
end
bl=bb[3]end
for a,_ in x(e[2])do
_[10]=sub(Y[_[2]],Y[_[1]])if _[3]&4>0 then
f,E=R[e[3][_[6]][6]],R[e[3][_[7]][6]]_[8]=L(f[1],E[1])_[9],f[30],E[30]=A(f[2],E[2])else
_[8],_[9]=0,0
end
end
s={}for a=1,32 do
s[a]=0
end
Q=A(Q+1/bi,2/35)ag(1,Q>=0)if Q>=0 then
Q=Q-1/35
for a=2,#U do
U[a][0]={}end
for a,r in x(al)do
_=e[9][r[1]]c=r[3]b=_[2]f=c[b]c[b]=G(_[3],f-_[4],f+_[4])+0
f=c[b]if f==_[3]then
al[a]=r[2]==_[5]and{_[6],1,c}or{r[1],r[2]+1,c}if _[6]==0 then
by(al,a)end
end
c[10]=c[10]or f~=r
c[30]=a
end
d[7]=L(5,d[7])for a,_ in x(h)do
if _ then
for k,r in x({1,2,9})do
_[r]=_[r]+_[r+10]end
_[15]=_[15]+1
f=B[_[4]]if _[7]<=0 and _[20]then
_[15]=0
_[6]=f[_[7]<=-f[4]and f[15]>1 and 15or 14]_[10],_[20]=o
if f[27]>0 then
c={}for k=1,30 do
c[k]=_[k]end
c[4]=f[27]c[6]=f[28]h[#h+1]=c
end
end
aW=e[16][_[6]]if _[15]>=aW[2]and aW[2]~=-1then
_[6]=aW[4]_[15]=0
V=e[16][_[6]][3]if V==1 then
for a,m in x(h)do
if m then
j=P-y(_,m)if j>0 then
aK(m,j)end
end
end
elseif V==2then
if bs(_,d,90)then
_[23]=d
_[6]=f[5]end
elseif V==3then
av=ao(I(_,_[23])/45+.5)*45
u=i
m=1
bm=f[23]&4>0
while m<5 and not u do
j=ab(_,Z(av+e[19][2][m],8))j[9]=_[9]u=ax(j,i,a,m)and(F[1]>=j[9]-24 or bm)m=m+1
end
if u then
for k=1,2 do
_[30+k]=j[k]-_[k]_[k]=j[k]end
_[3]=av
_[10]=o
else
ax(_,i,a)end
_[9]=bm and _[9]or F[1]b=y(_,_[23])if f[13]>0 and aC(_,_[23],1)and A(b,230)<ah()then
_[6]=f[13]end
if b<64 and f[12]>0then
_[6]=f[12]end
elseif V==5then
for a=1,11 do
d[3]=d[3]+e[19][9][a]n=e[14][23]bN()aH(d,1)end
d[3]=d[3]-20
elseif V>9 and _[20]then
_[3]=I(_,_[23])n=e[14][V]_[10]=o
af=_[23]aH(_,a)end
end
if _[17]and _[17]>0then
n=e[14][_[17]]if not ax(_,i,a)or _[9]<=F[1]then
if aZ then
aK(aZ,f[21]*((ah()&7)+1))end
_[1]=_[1]-_[11]_[2]=_[2]-_[12]_[3]=0
_[6]=B[_[4]][5]_[10]=o
_[11]=0
_[12]=0
_[17]=bS
_[19]=0
end
end
if _[6]==1then
h[a]=i
else
ai=sub(_,bb)M=U[2+ai[1]//P+ai[2]//P*bl]if M then
M[0][#M[0]+1]=a
end
end
end
end
for a=1,8 do
if am(a)and z[1][a+4]>0then
an=a
end
end
n=e[14][an]d[3]=d[3]-aB(3)*(G(ba,5,6)*1.5-6)ba=abs(aB(3))*ba+1
S=d
for a=1,2 do
S=ab(S,Z(d[3]-O+90*a,aB(a)*8.33))end
S[9]=d[9]for a=1,8 do
u=ax(S,o,1,a)end
if u then
for a=1,2 do
d[30+a]=S[a]-d[a]d[a]=S[a]end
if d[9]>F[1]then
d[19]=d[19]-1
else
d[9]=A(F[1],d[9]+4)d[19]=L(0,d[19])end
else
d[19]=0
d[9]=F[1]end
aS=z[1]c=n[1]if am(31)and az<=0 and(c==0 or aS[c]>=n[2])then
ag(3,o)az=n[3]if c>0then
aS[c]=aS[c]-n[2]end
bN()aH(d,1)end
az=az-1
if aB(4)<0 then
_=ab(d,Z(d[3],64))_[9]=d[9]aO,at=aC(d,_,2,1)_=e[2][at]if aO==i then
s[2]=at
c,u=_[4]for a=14,16 do
u=u or z[1][a]>0 and c==a
end
if c==1 or u then
aD(_,_[5])elseif c>3000 and c<3005then
bn=ao(c-3000)end
end
end
end
s[1]=an
for a=3,8 do
s[a]=d[e[19][4][a]]end
s[5]=1
s[13]=d[3]a=aj
bC=o
J=1
aA=#h+#R
while J<3 and bC do
c=J*9+5
if a<=#h then
_=h[a]if a~=1 then
if _ then
if _[10]then
_[10]=i
s[c]=a
for k=1,8 do
s[c+k]=_[e[19][1][k]]end
J=J+1
end
else
s[c]=-a
by(h,a)J=J+1
aA=aA-1
end
end
else
_=R[a-#h]if _[10]then
_[10]=i
s[c]=a-#h+2^15
for k=1,6 do
s[c+k]=_[k]end
J=J+1
end
end
a=((a-2)%aA)+1
aj=A(aj,aA)bC=a~=aj
end
aj=a
for a=1,32 do
bL.setNumber(a,s[a])end
end
ay=ay+1
async.httpGet(8,bU)end
function onDraw()aE=screen.drawText
aE(26,137,bi)if aq then
for a=1,4 do
b=124+a*7
aE(240,b,ao(z[1][a]))aE(230,b,z[1][13+a])end
end
end
