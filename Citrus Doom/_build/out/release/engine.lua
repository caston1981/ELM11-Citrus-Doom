bR=""

Y=128
P=180
bk=output
bx=input
D=math
N=D.max
y=D.min
aC=D.floor
pi=D.pi
at=bx.getNumber
ai=bx.getBool
ag=bk.setBool
m=true
i=false
v=ipairs
abs=D.abs
bi=table.remove
bb=string
function ad(b,g)return{(b[1]+g[1]),(b[2]+g[2])}end
function sub(b,g)return{(b[1]-g[1]),(b[2]-g[2])}end
function bt(b)return D.sin(b/P*pi)end
function ab(b)return D.cos(b/P*pi)end
function H(b,g)return D.atan(g[2]-b[2],g[1]-b[1])*P/pi end
function J(b,g,ab)return N(y(ab,b),g)end
function x(b,g)return D.sqrt(((b[1]-g[1])^2)+((b[2]-g[2])^2))end
function U(b,g)return{ab(b)*g,bt(b)*g}end
function exp(b)return b[1],b[2]end
e={}aH=1
ap=3
ax=i
aR=m
aj=2
aw=0
as=0
X=0
aJ=0
l=1
aF=0
bu=2
function aO(a,b,_)if a<32768then
_=e[7][a]return aO(_[_[3]*(b[2]-_[2])-_[4]*(b[1]-_[1])>0 and 8 or 7],b)else
a=e[5][e[6][a-32768][2]]return V[e[3][e[2][a[4]][a[5]+6]][6]]end
end
function ay(r,bv,B,bN,_,a,k)al=h[B]f=A[al[4]]aA,az=f[18],f[19]I=aA
F=aO(#e[7],r)S,ah=exp(F)aa=sub(r,L[1])M=L[2+aa[1]//Y+aa[2]//Y*bg]or{{}}for a,_ in v(M[0])do
c=h[_]if _~=B and c and al[14]~=_ then
n=x(c,r)C=A[c[4]]if c[20]then
T=n-C[18]if T<I and C[23]&1>0 and(f[23]&1>0 or(r[9]+az<c[9]or r[9]>c[9]+C[19])==i)then
aX=c
if bv==i then
return i
end
I=T
aZ=H(r,c)end
end
if B==1 and not c[10]then
if n<50then
b=C[25]if b>0then
for p,t in v(z[b])do
if t>0 and z[1][p]<z[2][p]then
c=z
h[_]=i
c[1][p]=aC(y(c[1][p]+t,c[2][p]))if J(p,5,12)==p then
aj=p-4
end
end
end
end
b=C[29]if b>0 then
b=e[11][b]for p=7,8 do
d[p]=J(d[p]+b[p*2-13],d[p],b[p*2-12])end
h[_]=i
end
end
end
end
end
aX=i
if ah-S<az or S>r[9]+24then
return i
end
for a=1,#M do
_=e[2][M[a]]n,bI=bM(r,R[_[1]],R[_[2]])if n<I then
if bN==1 and(_[3]&512>0 or B==1)and(_[4]==2 or B>1)then
aP(_,_[5])end
if(_[3]&1>0 and f[23]&1>0)or _[3]&4==0 then
I=n
aZ=bI
else
bK,bA=y(_[9],ah),N(_[8],S)if y(r[9],ah-az)+24<bA or N(r[9],S)+az>bK then
I=n
aZ=bI
else
ah,S=bK,bA
end
end
end
end
F={S,ah}if bv then
if I~=aA then
_=ad(r,U(aZ,I-aA))r[1]=_[1]r[2]=_[2]end
return m
end
return I==aA
end
function bM(o,w,aq)O=x(w,o)bd=H(w,aq)+90
br=bd-H(o,w)bw=-O*bt(br)be=O*ab(br)aM=bd
if be<0 then
aM=aM+P
end
if bw<0 then
return O,H(o,w)elseif bw>x(aq,w)then
return x(aq,o),H(o,aq)else
return abs(be),aM
end
end
function ao(o,w,aK,B,_)aI=x(o,w)aL=aI
b_=m
T,aT=exp(o)bO,bP=exp(w)aN,aU=exp(sub(w,o))ar,bq=o[9]+32,w[9]+32
u=i
for a,_ in v(e[2])do
bj=R[_[1]]bB,bl=exp(sub(R[_[2]],bj))bm,bn=exp(sub(o,bj))bf=bl*aN-bB*aU
W=(bB*bn-bl*bm)/bf
bD=(aN*bn-aU*bm)/bf
if J(W,0,1)==W and J(bD,0,1)==bD then
bL={T+(W*aN),aT+(W*aU)}n=x(o,bL)E=ar+(bq-ar)*(n/aI)if J(E,_[8]+1,_[9])~=E then
b_=i
if aK==1 then
return i
end
if n<aL then
aL=n
bE,bh=exp(bL)bH=E
am=a
end
end
end
end
if aK>1 then
if aK==3 then
for a,_ in v(h)do
if _ and a~=B then
f=A[_[4]]if f[23]&1>0 and _[20]then
n=x(o,_)if n<aL then
W=bM(_,o,w)O=(n/aI)E=ar+(bq-ar)*O
if J(E,_[9],_[9]+f[19])==E and W<f[18]then
u=m
b_=i
bE=T+(bO-T)*O
bh=aT+(bP-aT)*O
bH=E
am=a
end
end
end
end
end
end
return b_,am,{bE,bh,bH}end
return m
end
function httpReply(b,g,ab)bo=as//2
as=0
end
function af()aJ=aJ%256+1
return e[13][1][aJ]end
function aG(_,a)f=A[_[4]]if f[23]&2>0 and _[7]>0 then
_[8]=_[8]-(a+1)//2
_[7]=_[7]-a//2+y(_[8],0)_[8]=N(_[8],0)if af()<f[10]then
_[6]=f[9]_[15]=0
_[23]=d
_[10]=m
end
end
end
function bJ(b,g,av)return g[20]and abs(((H(b,g)-b[3]+P)%360)-P)<av and ao(b,g,1)end
function aS(K,B)bF=ak and(ak[9]-K[9])*q[6]/x(ak,K)or 0
for a=1,q[12]do
b={}for a=1,30 do
b[a]=K[a]end
b[4]=q[8]b[10]=m
b[14]=B
bC=(af()/Y-1)*q[10]aW=U(K[3]+bC,q[6])if q[7]>0then
h[#h+1]=b
f=A[b[4]]b[6]=f[3]b[9]=K[9]+32
b[11]=aW[1]b[12]=aW[2]b[17]=aj
b[19]=bF
else
c=ad(K,aW)c[9]=d[9]+bF
ba,aB,c=ao(K,c,3,B)if not ba then
bz=sub(c,U(K[3]+bC,1))h[#h+1]=b
b[1]=bz[1]b[2]=bz[2]b[6]=A[b[4]][3]b[9]=c[3]b[19]=1
if u then
b=h[aB]aG(b,q[9]*((af()&3)+2))end
end
end
end
end
function aP(_,c)if c>-1 then
b=e[9][c]if b[1]>0 or al[31]*_[10][2]-al[32]*_[10][1]<0 then
g=V[b[1]]ac[g and g[30]or#ac+1]={c,1,g or al}_[4]=b[7]b=b[8]>0 and aP(_,b[8])end
else
aR=m
ap=-c
s[9]=-c
end
end
function bs()bG,ak=2048
for a,_ in v(h)do
if a>1 and _ and bJ(d,_,10)then
n=x(_,d)if n<bG then
if A[_[4]][23]&2>0then
ak=_
bG=n
end
end
end
end
end
function onTick()ag(9,ai(32))ag(2,ai(11))ag(3,i)for k=1,3 do
if ai(32)and(not ax)or not e[21]then
aD=property.getText(aH..bR)if aD~=bR then
a=1
j=bR
_=bb.sub(aD,a,a)while _~=bRdo
c=bb.byte(_)if c>64 or _==bRthen
j=(j..(c-65))+0
if l==1then
am=j
if e[j]==by then
e[j]={}end
l=2
elseif l==2then
E=j
an=0
l=3
elseif l==3then
bc=j
l=4
else
if an==0then
an=E
bc=bc-1
aY={}e[am][#e[am]+1]=aY
end
aY[#aY+1]=j
an=an-1
if N(an,bc)==0then
l=1
end
end
j=bR
else
j=j.._
end
a=a+1
_=bb.sub(aD,a,a)end
aH=aH+1
else
ax=m
end
end
end
if ax then
if aR then
ac,aR={}ae=1
for a=1,10 do
e[a]=e[a+10*ap]end
h=e[1]R=e[4]V=e[8]L=e[10]z=e[12]A=e[15]for a=14,16 do
z[1][a]=0
end
ap=ap+1
for a,_ in v(h)do
for k=7,40 do
_[k]=0
end
bQ=_[5]+1
_[7]=A[_[4]][4]_[9],_[10]=aO(#e[7],_)[1]if _[4]==1 then
if d then
_[7]=d[7]_[8]=d[8]end
d=_
elseif _[5]&bu<1then
h[a]=i
end
end
bg=L[1][3]end
for a,_ in v(e[2])do
_[10]=sub(R[_[2]],R[_[1]])if _[3]&4>0 then
f,C=V[e[3][_[6]][6]],V[e[3][_[7]][6]]_[8]=N(f[1],C[1])_[9],f[30],C[30]=y(f[2],C[2])else
_[8],_[9]=0,0
end
end
s={}for a=1,32 do
s[a]=0
end
X=y(X+1/bo,2/35)ag(1,X>=0)if X>=0 then
X=X-1/35
for a=2,#L do
L[a][0]={}end
for a,t in v(ac)do
_=e[9][t[1]]c=t[3]b=_[2]f=c[b]c[b]=J(_[3],f-_[4],f+_[4])+0
f=c[b]if abs(f-_[3])<.1then
ac[a]=t[2]==_[5]and{_[6],1,c}or{t[1],t[2]+1,c}if _[6]==0 then
bi(ac,a)end
end
c[10]=c[10]or f~=t
c[30]=a
end
for a,_ in v(h)do
if _ then
for k,t in v({1,2,9})do
_[t]=_[t]+_[t+10]end
_[15]=_[15]+1
f=A[_[4]]if _[7]<=0 and _[20]then
_[15]=0
_[6]=f[_[7]<=-f[4]and f[15]>1 and 15or 14]_[10],_[20]=m
if f[27]>0 then
c={}for k=1,30 do
c[k]=_[k]end
c[4]=f[27]c[6]=f[28]h[#h+1]=c
end
end
aQ=e[16][_[6]]if _[15]>=aQ[2]and aQ[2]~=-1then
_[6]=aQ[4]_[15]=0
Q=e[16][_[6]][3]if Q==1 then
for a,l in v(h)do
if l then
j=Y-x(_,l)if j>0 then
aG(l,j)end
end
end
elseif Q==2then
if bJ(_,d,90)then
_[23]=d
_[6]=f[5]end
elseif Q==3then
av=aC(H(_,_[23])/45+.5)*45
u=i
l=1
while l<5 and not u do
j=ad(_,U(av+e[19][2][l],8))j[9]=_[9]u=ay(j,i,a,l)and F[1]>=j[9]-24
l=l+1
end
if u then
for k=1,2 do
_[30+k]=j[k]-_[k]_[k]=j[k]end
_[3]=av
_[10]=m
else
ay(_,i,a)end
if f[23]&4<1 then
_[9]=F[1]end
b=x(_,_[23])if f[13]>0 and ao(_,_[23],1)and y(b,230)<af()then
_[6]=f[13]end
if b<64 and f[12]>0then
_[6]=f[12]end
elseif Q==5then
for a=1,11 do
d[3]=d[3]+e[19][9][a]q=e[14][23]bs()aS(d,1)end
d[3]=d[3]-20
elseif Q>9then
_[3]=H(_,_[23])q=e[14][Q]_[10]=m
ak=_[23]aS(_,a)end
end
if _[17]and _[17]>0then
q=e[14][_[17]]if not ay(_,i,a)or _[9]<=F[1]then
if aX then
aG(aX,f[21]*((af()&7)+1))end
_[1]=_[1]-_[11]_[2]=_[2]-_[12]_[3]=0
_[6]=A[_[4]][9]_[10]=m
_[11]=0
_[12]=0
_[17]=by
_[19]=0
end
end
if _[6]==1then
h[a]=i
else
aa=sub(_,L[1])M=L[2+aa[1]//Y+aa[2]//Y*bg]if M~=by then
M[0][#M[0]+1]=a
end
end
end
end
for a=1,8 do
if ai(a)and z[1][a+4]>0then
aj=a
end
end
q=e[14][aj]d[3]=d[3]-at(3)*(J(aF,5,6)*1.5-6)aF=abs(at(3))*aF+1
Z=d
for a=1,2 do
Z=ad(Z,U(d[3]-P+90*a,at(a)*8.33))end
Z[9]=d[9]for a=1,8 do
u=ay(Z,m,1,a)end
if u then
for a=1,2 do
d[30+a]=Z[a]-d[a]d[a]=Z[a]end
if d[9]<=F[1]then
d[9]=y(F[1],d[9]+4)d[19]=N(0,d[19])else
if d[9]>=F[2]-56then
d[9]=F[2]-56
d[19]=y(0,d[19])end
d[19]=d[19]-1
end
else
d[19]=0
end
aV=z[1]c=q[1]if ai(31)and aw<=0 and(c==0 or aV[c]>=q[2])then
ag(3,m)aw=q[3]if c>0then
aV[c]=aV[c]-q[2]end
bs()aS(d,1)end
aw=aw-1
if at(4)<0 then
_=ad(d,U(d[3],64))_[9]=d[9]ba,aB=ao(d,_,2,1)_=e[2][aB]if ba==i then
s[2]=aB
c,u=_[4]for a=14,16 do
u=u or z[1][a]>0 and c==a
end
if c==1 or u then
aP(_,_[5])elseif c>3000 and c<3005then
bu=aC(c-3000)end
end
end
end
s[1]=aj
for a=3,8 do
s[a]=d[e[19][4][a]]end
s[5]=1
s[13]=d[3]a=ae
bp=m
G=1
au=#h+#V
while G<3 and bp do
c=G*9+5
if a<=#h then
_=h[a]if a~=1 then
if _ then
if _[10]then
_[10]=i
s[c]=a
for k=1,8 do
s[c+k]=_[e[19][1][k]]end
G=G+1
end
else
s[c]=-a
bi(h,a)G=G+1
au=au-1
end
end
else
_=V[a-#h]if _[10]then
_[10]=i
s[c]=a-#h+2^15
for k=1,6 do
s[c+k]=_[k]end
G=G+1
end
end
a=((a-2)%au)+1
ae=y(ae,au)bp=a~=ae
end
ae=a
for a=1,32 do
bk.setNumber(a,s[a])end
end
as=as+1
async.httpGet(8,bR)end
function onDraw()aE=screen.drawText
aE(26,137,bo)if ax then
for a=1,4 do
b=124+a*7
aE(240,b,aC(z[1][a]))aE(230,b,z[1][13+a])end
end
end
