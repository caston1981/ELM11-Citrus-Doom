
Z=128
O=180
bO=output
bq=input
E=math
L=E.max
z=E.min
aS=E.floor
pi=E.pi
ay=bq.getNumber
ad=bq.getBool
al=bO.setBool
n=true
j=false
w=ipairs
abs=E.abs
bz=table.remove
aE=string
function ak(b,g)return{(b[1]+g[1]),(b[2]+g[2])}end
function sub(b,g)return{(b[1]-g[1]),(b[2]-g[2])}end
function bm(b)return E.sin(b/O*pi)end
function ag(b)return E.cos(b/O*pi)end
function H(b,g)return E.atan(g[2]-b[2],g[1]-b[1])*O/pi end
function F(b,g,ag)return L(z(ag,b),g)end
function x(b,g)return E.sqrt(((b[1]-g[1])^2)+((b[2]-g[2])^2))end
function Y(b,g)return{ag(b)*g,bm(b)*g}end
function exp(b)return b[1],b[2]end
e={}aG=1
aA=3
aF=j
bf=n
aa=2
ap=0
ax=0
aD=0
ba=0
P=0
aL=0
m=1
bb=0
bh=2
function aO(a,b,_)if a<2^15 then
_=e[7][a]return aO(_[_[3]*(b[2]-_[2])-_[4]*(b[1]-_[1])>0 and 8 or 7],b)else
a=e[5][e[6][a-32768][2]]return U[e[3][e[2][a[4]][a[5]+6]][6]]end
end
function as(u,bB,v,bQ,_)ah=h[v]f=B[ah[4]]av,af=f[18],f[19]K=av
D=aO(#e[7],u)X,aj=exp(D)an=sub(u,aV)M=R[2+an[1]//Z+an[2]//Z*bw]or{}for a,_ in w(M[0]or{})do
c=h[_]if _~=v and c and ah[14]~=_ then
l=x(c,u)C=B[c[4]]if c[20]then
V=l-C[18]if V<K and C[23]&1>0 and(f[23]&1>0 or F(u[9],c[9]-af,c[9]+C[19])==u[9])then
bc=c
if bB==j then
return j
end
K=V
aX=H(u,c)end
end
if v==1 then
if l<50 then
b=C[25]if b>0 then
for q,t in w(A[b])do
if t>0 and A[1][q]<A[2][q]then
c=A
h[_]=j
c[1][q]=aS(z(c[1][q]+t,c[2][q]))if F(q,5,12)==q then
aa=q-4
end
end
end
end
b=C[29]if b>0 then
b=e[11][b]for q=7,8 do
d[q]=F(d[q]+b[q*2-13],d[q],b[q*2-12])end
h[_]=j
end
end
end
end
end
if aj-X<af or X>u[9]+24 then
return j
end
for a=1,#M do
_=e[2][M[a]]l,bH=by(u,S[_[1]],S[_[2]])if l<K then
if(_[3]&1>0 and f[23]&1>0)or _[3]&4==0 then
if v>1 or aC>0 or _[3]&4>0 then
K=l
aX=bH
end
else
aN,aJ=z(_[9],aj),L(_[8],X)if z(u[9],aj-af)+24<aJ or L(u[9],X)+af>aN or aN-aJ<af then
K=l
aX=bH
else
if bQ==1 and(_[3]&512>0 or v==1)and(_[4]==2 or v>1)then
aR(_,_[5])end
aj,X=aN,aJ
end
end
end
end
D,bc={X,aj}if bB then
if K~=av then
_=ak(u,Y(aX,K-av))u[1]=_[1]u[2]=_[2]end
return n
end
return K==av
end
function by(p,y,at)N=x(y,p)bl=H(y,at)+90
bu=bl-H(p,y)bF=-N*bm(bu)aC=N*ag(bu)be=bl
if aC<0 then
be=be+O
end
if bF<0 then
return N,H(p,y)elseif bF>x(at,y)then
return x(at,p),H(p,at)else
return abs(aC),be
end
end
function ar(p,y,aQ,v,_)aW=x(p,y)au=aW
bd=n
V,aK=exp(p)bT,bR=exp(y)bg,aY=exp(sub(y,p))az,bP=p[9]+32,y[9]+32
s=j
for a,_ in w(e[2])do
bo=S[_[1]]bM,bx=exp(sub(S[_[2]],bo))bv,bI=exp(sub(p,bo))br=bx*bg-bM*aY
Q=(bM*bI-bx*bv)/br
bs=(bg*bI-aY*bv)/br
if F(Q,0,1)==Q and F(bs,0,1)==bs then
bC={V+(Q*bg),aK+(Q*aY)}l=x(p,bC)G=az+(bP-az)*(l/aW)if F(G,_[8]+1,_[9])~=G then
bd=j
if aQ==1 then
return j
end
if l<au then
au=l
bn,bi=exp(bC)bj=G
bk=a
end
end
end
end
if aQ>1 then
if aQ==3 then
for a,_ in w(h)do
if _ and a~=v then
f=B[_[4]]if f[23]&1>0 and _[20]then
l=x(p,_)if l<au then
Q=by(_,p,y)N=(l/aW)G=az+(bP-az)*N
if F(G,_[9],_[9]+f[19])==G and Q<f[18]then
au=l
s=n
bd=j
bn=V+(bT-V)*N
bi=aK+(bR-aK)*N
bj=G
bk=a
end
end
end
end
end
end
return bd,bk,{bn,bi,bj}end
return n
end
function httpReply(b,g,ag)bL=ax//2
ax=0
end
function ae()aL=aL%256+1
return e[13][1][aL]end
function aw(_,a)f=B[_[4]]if f[23]&2>0 and _[7]>0 then
_[8]=_[8]-(a+1)//2
_[7]=_[7]-a//2+z(_[8],0)_[8]=L(_[8],0)if ae()<f[10]then
_[6]=f[9]_[15]=0
_[23]=d
_[10]=n
end
end
end
function bA(b,g,aB)return g[20]and abs(((H(b,g)-b[3]+O)%360)-O)<aB and ar(b,g,1)end
function aP(J,v)bG=ac and(ac[9]-J[9])*o[6]/x(ac,J)or 0
for a=1,o[12]do
b={}for a=1,30 do
b[a]=J[a]end
b[4]=o[8]b[10]=n
b[14]=v
bK=(ae()/Z-1)*o[10]aH=Y(J[3]+bK,o[6])if o[7]>0 then
h[#h+1]=b
f=B[b[4]]b[6]=f[3]b[9]=J[9]+o[13]b[11]=aH[1]b[12]=aH[2]b[17]=aa
b[19]=bG
else
c=ak(J,aH)c[9]=d[9]+bG
aZ,aq,c=ar(J,c,3,v)if not aZ then
bJ=sub(c,Y(J[3]+bK,1))h[#h+1]=b
b[1]=bJ[1]b[2]=bJ[2]b[6]=B[b[4]][3]b[9]=c[3]b[19]=1
if s then
b=h[aq]aw(b,o[9]*((ae()&3)+2))end
end
end
end
end
function aR(_,c)if c>-1 then
b=e[9][c]if b[1]>0 or ah[31]*_[10][2]-ah[32]*_[10][1]<0 then
g=U[b[1]]ai[g and g[30]or#ai+1]={c,1,g or ah}_[4]=b[7]b=b[8]>0 and aR(_,b[8])end
else
bf=n
aA=-c
r[9]=-c
end
end
function bN()bp,ac=2048
for a,_ in w(h)do
if a>1 and _ and bA(d,_,10)then
l=x(_,d)if l<bp then
if B[_[4]][23]&2>0 then
ac=_
bp=l
end
end
end
end
end
function onTick()al(9,ad(32))al(2,ad(11))al(3,j)for k=1,3 do
if ad(32)and(not aF)or not e[21]then
aM=property.getText(aG)a=1
i=""
_=aE.sub(aM,a,a)while _~=""do
c=aE.byte(_)if c>64 then
i=(i..c-65)+0
if m==1 then
bt=i
e[i]=e[i]or{}elseif m==2 then
G=i
ab=0
elseif m==3 then
aI=i
else
if ab==0 then
ab=G
aI=aI-1
b_={}e[bt][#e[bt]+1]=b_
end
b_[#b_+1]=i
ab=ab-1
m=L(ab,aI)>0 and m-1 or 0
end
m=m+1
i=""
else
i=i.._
end
a=a+1
_=aE.sub(aM,a,a)end
aG=aG+1
aF=aM==""
end
end
if aF then
if bf then
ai,bf={}am=1
for a=1,10 do
e[a]=e[a+10*aA]end
h=e[1]S=e[4]U=e[8]R=e[10]aV,R[1]=R[1]A=e[12]B=e[15]for a=14,16 do
A[1][a]=0
end
aA=aA+1
for a,_ in w(h)do
for k=7,40 do
_[k]=0
end
bU=_[5]+1
_[7]=B[_[4]][4]_[9],_[10]=aO(#e[7],_)[1]if _[4]==1 then
if d then
_[7]=d[7]_[8]=d[8]end
d=_
elseif _[5]&bh<1 then
h[a]=j
end
end
bw=aV[3]end
for a,_ in w(e[2])do
_[10]=sub(S[_[2]],S[_[1]])if _[3]&4>0 then
f,C=U[e[3][_[6]][6]],U[e[3][_[7]][6]]_[8]=L(f[1],C[1])_[9],f[30],C[30]=z(f[2],C[2])else
_[8],_[9]=0,0
end
end
r={}for a=1,32 do
r[a]=0
end
ba=ba+1
P=z(P+1/bL,2/35)al(1,P>=0)if P>=0 then
P=P-1/35
aD=aD+1
for a=2,#R do
R[a][0]={}end
for a,t in w(ai)do
_=e[9][t[1]]c=t[3]b=_[2]f=c[b]c[b]=F(_[3],f-_[4],f+_[4])+0
f=c[b]if f==_[3]then
ai[a]=t[2]==_[5]and{_[6],1,c}or{t[1],t[2]+1,c}if _[6]==0 then
bz(ai,a)end
end
c[10]=c[10]or f~=t
c[30]=a
end
for a,_ in w(h)do
if _ then
for k,t in w({1,2,9})do
_[t]=_[t]+_[t+10]end
_[15]=_[15]+1
f=B[_[4]]if _[7]<=0 and _[20]then
_[15]=0
_[6]=f[_[7]<=-f[4]and f[15]>1 and 15 or 14]_[10],_[20]=n
if f[27]>0 then
c={}for k=1,30 do
c[k]=_[k]end
c[4]=f[27]c[6]=f[28]h[#h+1]=c
end
end
aT=e[16][_[6]]if _[15]>=aT[2]and aT[2]~=-1 then
_[6]=aT[4]_[15]=0
T=e[16][_[6]][3]if T==1 then
for a,m in w(h)do
if m then
i=Z-x(_,m)if i>0 then
aw(m,i)end
end
end
elseif T==2 then
if bA(_,d,90)then
_[23]=d
_[6]=f[5]end
elseif T==3 then
aB=aS(H(_,_[23])/45+.5)*45
s=j
m=1
bE=f[23]&4>0
while m<5 and not s do
i=ak(_,Y(aB+e[19][2][m],8))i[9]=_[9]s=as(i,j,a,m)and(D[1]>=i[9]-24 or bE)m=m+1
end
if s then
for k=1,2 do
_[30+k]=i[k]-_[k]_[k]=i[k]end
_[3]=aB
_[10]=n
else
as(_,j,a)end
_[9]=bE and _[9]or D[1]b=x(_,_[23])if f[13]>0 and ar(_,_[23],1)and z(b,230)<ae()then
_[6]=f[13]end
if b<64 and f[12]>0 then
_[6]=f[12]end
elseif T==5 then
for a=1,11 do
d[3]=d[3]+e[19][9][a]o=e[14][23]bN()aP(d,1)end
d[3]=d[3]-20
elseif T>9 and _[20]then
_[3]=H(_,_[23])o=e[14][T]_[10]=n
ac=_[23]aP(_,a)end
end
if _[17]and _[17]>0 then
o=e[14][_[17]]if not as(_,j,a)or _[9]<=D[1]then
if bc then
aw(bc,f[21]*((ae()&7)+1))end
_[1]=_[1]-_[11]_[2]=_[2]-_[12]_[3]=0
_[6]=B[_[4]][5]_[10]=n
_[11]=0
_[12],_[17]=0
_[19]=0
end
end
if _[6]==1 then
h[a]=j
else
an=sub(_,aV)M=R[2+an[1]//Z+an[2]//Z*bw]if M then
M[0][#M[0]+1]=a
end
end
end
end
for a=1,8 do
if ad(a)and A[1][a+4]>0 then
aa=a
end
end
o=e[14][aa]d[3]=d[3]-ay(3)*(F(bb,5,6)*1.5-6)bb=abs(ay(3))*bb+1
W=d
for a=1,2 do
W=ak(W,Y(d[3]-O+90*a,ay(a)*8.33))end
W[9]=d[9]for a=1,8 do
s=as(W,n,1,a)end
if s then
for a=1,2 do
d[30+a]=W[a]-d[a]d[a]=W[a]end
if d[9]>D[1]then
d[19]=d[19]-1
else
d[9]=z(D[1],d[9]+4)d[19]=L(0,d[19])end
else
d[19]=0
d[9]=D[1]s=aD%4>0 or D[6]<18 or aw(d,10)end
aU=A[1]c=o[1]if ad(31)and ap<=0 and(c==0 or aU[c]>=o[2])then
al(3,n)ap=o[3]if c>0 then
aU[c]=aU[c]-o[2]end
bN()aP(d,1)end
ap=ap-1
if ay(4)<0 then
_=ak(d,Y(d[3],64))_[9]=d[9]aZ,aq=ar(d,_,2,1)_=e[2][aq]if aZ==j then
r[2]=aq
c,s=_[4]for a=14,16 do
s=s or A[1][a]>0 and c==a
end
if c==1 or s then
aR(_,_[5])elseif c>3000 and c<3005 then
bh=aS(c-3000)end
end
end
end
r[1]=aa
for a=3,13 do
r[a]=d[e[19][4][a]]or r[a]end
r[10]=A[1][ba%#A[1]+1]a=am
bD=n
I=1
ao=#h+#U
while I<3 and bD do
c=I*9+5
if a<=#h then
_=h[a]if a~=1 then
if _ then
if _[10]then
_[10]=j
r[c]=a
for k=1,8 do
r[c+k]=_[e[19][1][k]]end
I=I+1
end
else
r[c]=-a
bz(h,a)I=I+1
ao=ao-1
end
end
else
_=U[a-#h]if _[10]then
_[10]=j
r[c]=a-#h+2^15
for k=1,6 do
r[c+k]=_[k]end
I=I+1
end
end
a=(a-2)%ao+1
am=z(am,ao)bD=a~=am
end
am=a
for a=1,32 do
bO.setNumber(a,r[a])end
end
ax=ax+1
async.httpGet(8,"")end
function onDraw()bS=screen.drawText
bS(26,137,bL)end
