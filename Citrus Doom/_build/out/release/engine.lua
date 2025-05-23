bU=""

W=128
M=180
bv=output
bt=input
C=math
K=C.max
B=C.min
aA=C.floor
pi=C.pi
as=bt.getNumber
aa=bt.getBool
ac=bv.setBool
o=true
i=false
w=ipairs
abs=C.abs
bl=table.remove
aE=string
function ab(b,g)return{(b[1]+g[1]),(b[2]+g[2])}end
function sub(b,g)return{(b[1]-g[1]),(b[2]-g[2])}end
function bJ(b)return C.sin(b/M*pi)end
function an(b)return C.cos(b/M*pi)end
function I(b,g)return C.atan(g[2]-b[2],g[1]-b[1])*M/pi end
function L(b,g,an)return K(B(an,b),g)end
function x(b,g)return C.sqrt(((b[1]-g[1])^2)+((b[2]-g[2])^2))end
function Y(b,g)return{an(b)*g,bJ(b)*g}end
function exp(b)return b[1],b[2]end
e={}aL=1
av=3
ax=i
b_=o
ag=2
aw=0
au=0
aI=0
X=0
aF=0
m=1
aH=0
bz=2
function bc(a,b,_)if a<32768then
_=e[7][a]return bc(_[_[3]*(b[2]-_[2])-_[4]*(b[1]-_[1])>0 and 8 or 7],b)else
a=e[5][e[6][a-32768][2]]return U[e[3][e[2][a[4]][a[5]+6]][6]]end
end
function az(u,bu,v,bR,_,a,k)ah=h[v]f=A[ah[4]]aC,ae=f[18],f[19]G=aC
E=bc(#e[7],u)Z,aj=exp(E)af=sub(u,be)N=S[2+af[1]//W+af[2]//W*bO]or{}for a,_ in w(N[0]or{})do
c=h[_]if _~=v and c and ah[14]~=_ then
l=x(c,u)D=A[c[4]]if c[20]then
P=l-D[18]if P<G and D[23]&1>0 and(f[23]&1>0 or(u[9]+ae<c[9]or u[9]>c[9]+D[19])==i)then
aZ=c
if bu==i then
return i
end
G=P
bg=I(u,c)end
end
if v==1 and not c[10]then
if l<50then
b=D[25]if b>0then
for q,t in w(z[b])do
if t>0 and z[1][q]<z[2][q]then
c=z
h[_]=i
c[1][q]=aA(B(c[1][q]+t,c[2][q]))if L(q,5,12)==q then
ag=q-4
end
end
end
end
b=D[29]if b>0 then
b=e[11][b]for q=7,8 do
d[q]=L(d[q]+b[q*2-13],d[q],b[q*2-12])end
h[_]=i
end
end
end
end
end
aZ=i
if aj-Z<ae or Z>u[9]+24then
return i
end
for a=1,#N do
_=e[2][N[a]]l,bK=bF(u,T[_[1]],T[_[2]])if l<G then
if bR==1 and(_[3]&512>0 or v==1)and(_[4]==2 or v>1)then
aO(_,_[5])end
if(_[3]&1>0 and f[23]&1>0)or _[3]&4==0 then
if v>1 or aS>0then
G=l
bg=bK
end
else
bf,aQ=B(_[9],aj),K(_[8],Z)if B(u[9],aj-ae)+24<aQ or K(u[9],Z)+ae>bf or bf-aQ<ae then
G=l
bg=bK
else
aj,Z=bf,aQ
end
end
end
end
E={Z,aj}if bu then
if G~=aC then
_=ab(u,Y(bg,G-aC))u[1]=_[1]u[2]=_[2]end
return o
end
return G==aC
end
function bF(p,y,aq)O=x(y,p)by=I(y,aq)+90
bM=by-I(p,y)bP=-O*bJ(bM)aS=O*an(bM)aT=by
if aS<0 then
aT=aT+M
end
if bP<0 then
return O,I(p,y)elseif bP>x(aq,y)then
return x(aq,p),I(p,aq)else
return abs(aS),aT
end
end
function ay(p,y,bd,v,_)aY=x(p,y)ar=aY
aV=o
P,ba=exp(p)bS,bQ=exp(y)aN,aR=exp(sub(y,p))ap,bD=p[9]+32,y[9]+32
s=i
for a,_ in w(e[2])do
bE=T[_[1]]bo,bi=exp(sub(T[_[2]],bE))bh,bG=exp(sub(p,bE))bk=bi*aN-bo*aR
R=(bo*bG-bi*bh)/bk
bm=(aN*bG-aR*bh)/bk
if L(R,0,1)==R and L(bm,0,1)==bm then
bA={P+(R*aN),ba+(R*aR)}l=x(p,bA)F=ap+(bD-ap)*(l/aY)if L(F,_[8]+1,_[9])~=F then
aV=i
if bd==1 then
return i
end
if l<ar then
ar=l
bL,bq=exp(bA)bn=F
bp=a
end
end
end
end
if bd>1 then
if bd==3 then
for a,_ in w(h)do
if _ and a~=v then
f=A[_[4]]if f[23]&1>0 and _[20]then
l=x(p,_)if l<ar then
R=bF(_,p,y)O=(l/aY)F=ap+(bD-ap)*O
if L(F,_[9],_[9]+f[19])==F and R<f[18]then
ar=l
s=o
aV=i
bL=P+(bS-P)*O
bq=ba+(bQ-ba)*O
bn=F
bp=a
end
end
end
end
end
end
return aV,bp,{bL,bq,bn}end
return o
end
function httpReply(b,g,an)bw=au//2
au=0
end
function am()aF=aF%256+1
return e[13][1][aF]end
function aD(_,a)f=A[_[4]]if f[23]&2>0 and _[7]>0 then
_[8]=_[8]-(a+1)//2
_[7]=_[7]-a//2+B(_[8],0)_[8]=K(_[8],0)if am()<f[10]then
_[6]=f[9]_[15]=0
_[23]=d
_[10]=o
end
end
end
function bs(b,g,ao)return g[20]and abs(((I(b,g)-b[3]+M)%360)-M)<ao and ay(b,g,1)end
function bb(J,v)bN=al and(al[9]-J[9])*n[6]/x(al,J)or 0
for a=1,n[12]do
b={}for a=1,30 do
b[a]=J[a]end
b[4]=n[8]b[10]=o
b[14]=v
bx=(am()/W-1)*n[10]aM=Y(J[3]+bx,n[6])if n[7]>0then
h[#h+1]=b
f=A[b[4]]b[6]=f[3]b[9]=J[9]+n[13]b[11]=aM[1]b[12]=aM[2]b[17]=ag
b[19]=bN
else
c=ab(J,aM)c[9]=d[9]+bN
aJ,aB,c=ay(J,c,3,v)if not aJ then
bI=sub(c,Y(J[3]+bx,1))h[#h+1]=b
b[1]=bI[1]b[2]=bI[2]b[6]=A[b[4]][3]b[9]=c[3]b[19]=1
if s then
b=h[aB]aD(b,n[9]*((am()&3)+2))end
end
end
end
end
function aO(_,c)if c>-1 then
b=e[9][c]if b[1]>0 or ah[31]*_[10][2]-ah[32]*_[10][1]<0 then
g=U[b[1]]ai[g and g[30]or#ai+1]={c,1,g or ah}_[4]=b[7]b=b[8]>0 and aO(_,b[8])end
else
b_=o
av=-c
r[9]=-c
end
end
function bH()bB,al=2048
for a,_ in w(h)do
if a>1 and _ and bs(d,_,10)then
l=x(_,d)if l<bB then
if A[_[4]][23]&2>0then
al=_
bB=l
end
end
end
end
end
function onTick()ac(9,aa(32))ac(2,aa(11))ac(3,i)for k=1,3 do
if aa(32)and(not ax)or not e[21]then
aX=property.getText(aL)a=1
j=bU
_=aE.sub(aX,a,a)while _~=bUdo
c=aE.byte(_)if c>64then
j=(j..c-65)+0
if m==1then
br=j
e[j]=e[j]or{}elseif m==2then
F=j
ak=0
elseif m==3then
aU=j
else
if ak==0then
ak=F
aU=aU-1
aW={}e[br][#e[br]+1]=aW
end
aW[#aW+1]=j
ak=ak-1
m=K(ak,aU)>0 and m-1 or 0
end
m=m+1
j=bU
else
j=j.._
end
a=a+1
_=aE.sub(aX,a,a)end
aL=aL+1
ax=aX==bU
end
end
if ax then
if b_ then
ai,b_={}ad=1
for a=1,10 do
e[a]=e[a+10*av]end
h=e[1]T=e[4]U=e[8]S=e[10]be,S[1]=S[1]z=e[12]A=e[15]for a=14,16 do
z[1][a]=0
end
av=av+1
for a,_ in w(h)do
for k=7,40 do
_[k]=0
end
bT=_[5]+1
_[7]=A[_[4]][4]_[9],_[10]=bc(#e[7],_)[1]if _[4]==1 then
if d then
_[7]=d[7]_[8]=d[8]end
d=_
elseif _[5]&bz<1then
h[a]=i
end
end
bO=be[3]end
for a,_ in w(e[2])do
_[10]=sub(T[_[2]],T[_[1]])if _[3]&4>0 then
f,D=U[e[3][_[6]][6]],U[e[3][_[7]][6]]_[8]=K(f[1],D[1])_[9],f[30],D[30]=B(f[2],D[2])else
_[8],_[9]=0,0
end
end
r={}for a=1,32 do
r[a]=0
end
X=B(X+1/bw,2/35)ac(1,X>=0)if X>=0 then
X=X-1/35
aI=aI+1
for a=2,#S do
S[a][0]={}end
for a,t in w(ai)do
_=e[9][t[1]]c=t[3]b=_[2]f=c[b]c[b]=L(_[3],f-_[4],f+_[4])+0
f=c[b]if f==_[3]then
ai[a]=t[2]==_[5]and{_[6],1,c}or{t[1],t[2]+1,c}if _[6]==0 then
bl(ai,a)end
end
c[10]=c[10]or f~=t
c[30]=a
end
d[7]=K(5,d[7])for a,_ in w(h)do
if _ then
for k,t in w({1,2,9})do
_[t]=_[t]+_[t+10]end
_[15]=_[15]+1
f=A[_[4]]if _[7]<=0 and _[20]then
_[15]=0
_[6]=f[_[7]<=-f[4]and f[15]>1 and 15or 14]_[10],_[20]=o
if f[27]>0 then
c={}for k=1,30 do
c[k]=_[k]end
c[4]=f[27]c[6]=f[28]h[#h+1]=c
end
end
aG=e[16][_[6]]if _[15]>=aG[2]and aG[2]~=-1then
_[6]=aG[4]_[15]=0
Q=e[16][_[6]][3]if Q==1 then
for a,m in w(h)do
if m then
j=W-x(_,m)if j>0 then
aD(m,j)end
end
end
elseif Q==2then
if bs(_,d,90)then
_[23]=d
_[6]=f[5]end
elseif Q==3then
ao=aA(I(_,_[23])/45+.5)*45
s=i
m=1
bC=f[23]&4>0
while m<5 and not s do
j=ab(_,Y(ao+e[19][2][m],8))j[9]=_[9]s=az(j,i,a,m)and(E[1]>=j[9]-24 or bC)m=m+1
end
if s then
for k=1,2 do
_[30+k]=j[k]-_[k]_[k]=j[k]end
_[3]=ao
_[10]=o
else
az(_,i,a)end
_[9]=bC and _[9]or E[1]b=x(_,_[23])if f[13]>0 and ay(_,_[23],1)and B(b,230)<am()then
_[6]=f[13]end
if b<64 and f[12]>0then
_[6]=f[12]end
elseif Q==5then
for a=1,11 do
d[3]=d[3]+e[19][9][a]n=e[14][23]bH()bb(d,1)end
d[3]=d[3]-20
elseif Q>9 and _[20]then
_[3]=I(_,_[23])n=e[14][Q]_[10]=o
al=_[23]bb(_,a)end
end
if _[17]and _[17]>0then
n=e[14][_[17]]if not az(_,i,a)or _[9]<=E[1]then
if aZ then
aD(aZ,f[21]*((am()&7)+1))end
_[1]=_[1]-_[11]_[2]=_[2]-_[12]_[3]=0
_[6]=A[_[4]][5]_[10]=o
_[11]=0
_[12],_[17]=0
_[19]=0
end
end
if _[6]==1then
h[a]=i
else
af=sub(_,be)N=S[2+af[1]//W+af[2]//W*bO]if N then
N[0][#N[0]+1]=a
end
end
end
end
for a=1,8 do
if aa(a)and z[1][a+4]>0then
ag=a
end
end
n=e[14][ag]d[3]=d[3]-as(3)*(L(aH,5,6)*1.5-6)aH=abs(as(3))*aH+1
V=d
for a=1,2 do
V=ab(V,Y(d[3]-M+90*a,as(a)*8.33))end
V[9]=d[9]for a=1,8 do
s=az(V,o,1,a)end
if s then
for a=1,2 do
d[30+a]=V[a]-d[a]d[a]=V[a]end
if d[9]>E[1]then
d[19]=d[19]-1
else
d[9]=B(E[1],d[9]+4)d[19]=K(0,d[19])end
else
d[19]=0
d[9]=E[1]s=aI%4>0 or E[6]<18 or aD(d,10)end
aK=z[1]c=n[1]if aa(31)and aw<=0 and(c==0 or aK[c]>=n[2])then
ac(3,o)aw=n[3]if c>0then
aK[c]=aK[c]-n[2]end
bH()bb(d,1)end
aw=aw-1
if as(4)<0 then
_=ab(d,Y(d[3],64))_[9]=d[9]aJ,aB=ay(d,_,2,1)_=e[2][aB]if aJ==i then
r[2]=aB
c,s=_[4]for a=14,16 do
s=s or z[1][a]>0 and c==a
end
if c==1 or s then
aO(_,_[5])elseif c>3000 and c<3005then
bz=aA(c-3000)end
end
end
end
r[1]=ag
for a=3,8 do
r[a]=d[e[19][4][a]]end
r[5]=1
r[13]=d[3]a=ad
bj=o
H=1
at=#h+#U
while H<3 and bj do
c=H*9+5
if a<=#h then
_=h[a]if a~=1 then
if _ then
if _[10]then
_[10]=i
r[c]=a
for k=1,8 do
r[c+k]=_[e[19][1][k]]end
H=H+1
end
else
r[c]=-a
bl(h,a)H=H+1
at=at-1
end
end
else
_=U[a-#h]if _[10]then
_[10]=i
r[c]=a-#h+2^15
for k=1,6 do
r[c+k]=_[k]end
H=H+1
end
end
a=((a-2)%at)+1
ad=B(ad,at)bj=a~=ad
end
ad=a
for a=1,32 do
bv.setNumber(a,r[a])end
end
au=au+1
async.httpGet(8,bU)end
function onDraw()aP=screen.drawText
aP(26,137,bw)if ax then
for a=1,4 do
b=124+a*7
aP(240,b,aA(z[1][a]))aP(230,b,z[1][13+a])end
end
end
