bU=""

X=128
M=180
bN=output
bv=input
F=math
O=F.max
z=F.min
ay=F.floor
pi=F.pi
ao=bv.getNumber
ah=bv.getBool
af=bN.setBool
o=true
i=false
x=ipairs
abs=F.abs
bM=table.remove
aG=string
function ae(b,g)return{(b[1]+g[1]),(b[2]+g[2])}end
function sub(b,g)return{(b[1]-g[1]),(b[2]-g[2])}end
function bL(b)return F.sin(b/M*pi)end
function ag(b)return F.cos(b/M*pi)end
function J(b,g)return F.atan(g[2]-b[2],g[1]-b[1])*M/pi end
function H(b,g,ag)return O(z(ag,b),g)end
function y(b,g)return F.sqrt(((b[1]-g[1])^2)+((b[2]-g[2])^2))end
function T(b,g)return{ag(b)*g,bL(b)*g}end
function exp(b)return b[1],b[2]end
e={}aL=1
az=3
aA=i
aJ=o
ac=2
aD=0
as=0
ba=0
Y=0
aX=0
m=1
aU=0
bJ=2
function aK(a,b,_)if a<32768then
_=e[7][a]return aK(_[_[3]*(b[2]-_[2])-_[4]*(b[1]-_[1])>0 and 8 or 7],b)else
a=e[5][e[6][a-32768][2]]return Q[e[3][e[2][a[4]][a[5]+6]][6]]end
end
function av(r,bp,v,bR,_,a,k)ab=h[v]f=A[ab[4]]aw,ad=f[18],f[19]K=aw
C=aK(#e[7],r)V,ai=exp(C)an=sub(r,aO)N=P[2+an[1]//X+an[2]//X*bu]or{}for a,_ in x(N[0]or{})do
c=h[_]if _~=v and c and ab[14]~=_ then
l=y(c,r)D=A[c[4]]if c[20]then
U=l-D[18]if U<K and D[23]&1>0 and(f[23]&1>0 or(r[9]+ad<c[9]or r[9]>c[9]+D[19])==i)then
aV=c
if bp==i then
return i
end
K=U
bb=J(r,c)end
end
if v==1 and not c[10]then
if l<50then
b=D[25]if b>0then
for q,u in x(B[b])do
if u>0 and B[1][q]<B[2][q]then
c=B
h[_]=i
c[1][q]=ay(z(c[1][q]+u,c[2][q]))if H(q,5,12)==q then
ac=q-4
end
end
end
end
b=D[29]if b>0 then
b=e[11][b]for q=7,8 do
d[q]=H(d[q]+b[q*2-13],d[q],b[q*2-12])end
h[_]=i
end
end
end
end
end
aV=i
if ai-V<ad or V>r[9]+24then
return i
end
for a=1,#N do
_=e[2][N[a]]l,bF=bt(r,S[_[1]],S[_[2]])if l<K then
if(_[3]&1>0 and f[23]&1>0)or _[3]&4==0 then
if v>1 or aY>0 or _[3]&4>0 then
K=l
bb=bF
end
else
bg,aW=z(_[9],ai),O(_[8],V)if z(r[9],ai-ad)+24<aW or O(r[9],V)+ad>bg or bg-aW<ad then
K=l
bb=bF
else
if bR==1 and(_[3]&512>0 or v==1)and(_[4]==2 or v>1)then
aT(_,_[5])end
ai,V=bg,aW
end
end
end
end
C={V,ai}if bp then
if K~=aw then
_=ae(r,T(bb,K-aw))r[1]=_[1]r[2]=_[2]end
return o
end
return K==aw
end
function bt(p,w,aq)L=y(w,p)bP=J(w,aq)+90
bD=bP-J(p,w)bw=-L*bL(bD)aY=L*ag(bD)b_=bP
if aY<0 then
b_=b_+M
end
if bw<0 then
return L,J(p,w)elseif bw>y(aq,w)then
return y(aq,p),J(p,aq)else
return abs(aY),b_
end
end
function aB(p,w,aI,v,_)bf=y(p,w)at=bf
aM=o
U,aQ=exp(p)bS,bQ=exp(w)aN,aZ=exp(sub(w,p))au,bH=p[9]+32,w[9]+32
s=i
for a,_ in x(e[2])do
bj=S[_[1]]bK,bO=exp(sub(S[_[2]],bj))bl,bk=exp(sub(p,bj))bE=bO*aN-bK*aZ
R=(bK*bk-bO*bl)/bE
bi=(aN*bk-aZ*bl)/bE
if H(R,0,1)==R and H(bi,0,1)==bi then
bz={U+(R*aN),aQ+(R*aZ)}l=y(p,bz)E=au+(bH-au)*(l/bf)if H(E,_[8]+1,_[9])~=E then
aM=i
if aI==1 then
return i
end
if l<at then
at=l
bh,bA=exp(bz)bm=E
by=a
end
end
end
end
if aI>1 then
if aI==3 then
for a,_ in x(h)do
if _ and a~=v then
f=A[_[4]]if f[23]&1>0 and _[20]then
l=y(p,_)if l<at then
R=bt(_,p,w)L=(l/bf)E=au+(bH-au)*L
if H(E,_[9],_[9]+f[19])==E and R<f[18]then
at=l
s=o
aM=i
bh=U+(bS-U)*L
bA=aQ+(bQ-aQ)*L
bm=E
by=a
end
end
end
end
end
end
return aM,by,{bh,bA,bm}end
return o
end
function httpReply(b,g,ag)bB=as//2
as=0
end
function aa()aX=aX%256+1
return e[13][1][aX]end
function aC(_,a)f=A[_[4]]if f[23]&2>0 and _[7]>0 then
_[8]=_[8]-(a+1)//2
_[7]=_[7]-a//2+z(_[8],0)_[8]=O(_[8],0)if aa()<f[10]then
_[6]=f[9]_[15]=0
_[23]=d
_[10]=o
end
end
end
function bs(b,g,ap)return g[20]and abs(((J(b,g)-b[3]+M)%360)-M)<ap and aB(b,g,1)end
function aS(I,v)bo=al and(al[9]-I[9])*n[6]/y(al,I)or 0
for a=1,n[12]do
b={}for a=1,30 do
b[a]=I[a]end
b[4]=n[8]b[10]=o
b[14]=v
bx=(aa()/X-1)*n[10]aF=T(I[3]+bx,n[6])if n[7]>0then
h[#h+1]=b
f=A[b[4]]b[6]=f[3]b[9]=I[9]+n[13]b[11]=aF[1]b[12]=aF[2]b[17]=ac
b[19]=bo
else
c=ae(I,aF)c[9]=d[9]+bo
aH,ax,c=aB(I,c,3,v)if not aH then
bI=sub(c,T(I[3]+bx,1))h[#h+1]=b
b[1]=bI[1]b[2]=bI[2]b[6]=A[b[4]][3]b[9]=c[3]b[19]=1
if s then
b=h[ax]aC(b,n[9]*((aa()&3)+2))end
end
end
end
end
function aT(_,c)if c>-1 then
b=e[9][c]if b[1]>0 or ab[31]*_[10][2]-ab[32]*_[10][1]<0 then
g=Q[b[1]]ak[g and g[30]or#ak+1]={c,1,g or ab}_[4]=b[7]b=b[8]>0 and aT(_,b[8])end
else
aJ=o
az=-c
t[9]=-c
end
end
function bq()bG,al=2048
for a,_ in x(h)do
if a>1 and _ and bs(d,_,10)then
l=y(_,d)if l<bG then
if A[_[4]][23]&2>0then
al=_
bG=l
end
end
end
end
end
function onTick()af(9,ah(32))af(2,ah(11))af(3,i)for k=1,3 do
if ah(32)and(not aA)or not e[21]then
aR=property.getText(aL)a=1
j=bU
_=aG.sub(aR,a,a)while _~=bUdo
c=aG.byte(_)if c>64then
j=(j..c-65)+0
if m==1then
bn=j
e[j]=e[j]or{}elseif m==2then
E=j
am=0
elseif m==3then
aP=j
else
if am==0then
am=E
aP=aP-1
aE={}e[bn][#e[bn]+1]=aE
end
aE[#aE+1]=j
am=am-1
m=O(am,aP)>0 and m-1 or 0
end
m=m+1
j=bU
else
j=j.._
end
a=a+1
_=aG.sub(aR,a,a)end
aL=aL+1
aA=aR==bU
end
end
if aA then
if aJ then
ak,aJ={}aj=1
for a=1,10 do
e[a]=e[a+10*az]end
h=e[1]S=e[4]Q=e[8]P=e[10]aO,P[1]=P[1]B=e[12]A=e[15]for a=14,16 do
B[1][a]=0
end
az=az+1
for a,_ in x(h)do
for k=7,40 do
_[k]=0
end
bT=_[5]+1
_[7]=A[_[4]][4]_[9],_[10]=aK(#e[7],_)[1]if _[4]==1 then
if d then
_[7]=d[7]_[8]=d[8]end
d=_
elseif _[5]&bJ<1then
h[a]=i
end
end
bu=aO[3]end
for a,_ in x(e[2])do
_[10]=sub(S[_[2]],S[_[1]])if _[3]&4>0 then
f,D=Q[e[3][_[6]][6]],Q[e[3][_[7]][6]]_[8]=O(f[1],D[1])_[9],f[30],D[30]=z(f[2],D[2])else
_[8],_[9]=0,0
end
end
t={}for a=1,32 do
t[a]=0
end
Y=z(Y+1/bB,2/35)af(1,Y>=0)if Y>=0 then
Y=Y-1/35
ba=ba+1
for a=2,#P do
P[a][0]={}end
for a,u in x(ak)do
_=e[9][u[1]]c=u[3]b=_[2]f=c[b]c[b]=H(_[3],f-_[4],f+_[4])+0
f=c[b]if f==_[3]then
ak[a]=u[2]==_[5]and{_[6],1,c}or{u[1],u[2]+1,c}if _[6]==0 then
bM(ak,a)end
end
c[10]=c[10]or f~=u
c[30]=a
end
for a,_ in x(h)do
if _ then
for k,u in x({1,2,9})do
_[u]=_[u]+_[u+10]end
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
bd=e[16][_[6]]if _[15]>=bd[2]and bd[2]~=-1then
_[6]=bd[4]_[15]=0
Z=e[16][_[6]][3]if Z==1 then
for a,m in x(h)do
if m then
j=X-y(_,m)if j>0 then
aC(m,j)end
end
end
elseif Z==2then
if bs(_,d,90)then
_[23]=d
_[6]=f[5]end
elseif Z==3then
ap=ay(J(_,_[23])/45+.5)*45
s=i
m=1
bC=f[23]&4>0
while m<5 and not s do
j=ae(_,T(ap+e[19][2][m],8))j[9]=_[9]s=av(j,i,a,m)and(C[1]>=j[9]-24 or bC)m=m+1
end
if s then
for k=1,2 do
_[30+k]=j[k]-_[k]_[k]=j[k]end
_[3]=ap
_[10]=o
else
av(_,i,a)end
_[9]=bC and _[9]or C[1]b=y(_,_[23])if f[13]>0 and aB(_,_[23],1)and z(b,230)<aa()then
_[6]=f[13]end
if b<64 and f[12]>0then
_[6]=f[12]end
elseif Z==5then
for a=1,11 do
d[3]=d[3]+e[19][9][a]n=e[14][23]bq()aS(d,1)end
d[3]=d[3]-20
elseif Z>9 and _[20]then
_[3]=J(_,_[23])n=e[14][Z]_[10]=o
al=_[23]aS(_,a)end
end
if _[17]and _[17]>0then
n=e[14][_[17]]if not av(_,i,a)or _[9]<=C[1]then
if aV then
aC(aV,f[21]*((aa()&7)+1))end
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
an=sub(_,aO)N=P[2+an[1]//X+an[2]//X*bu]if N then
N[0][#N[0]+1]=a
end
end
end
end
for a=1,8 do
if ah(a)and B[1][a+4]>0then
ac=a
end
end
n=e[14][ac]d[3]=d[3]-ao(3)*(H(aU,5,6)*1.5-6)aU=abs(ao(3))*aU+1
W=d
for a=1,2 do
W=ae(W,T(d[3]-M+90*a,ao(a)*8.33))end
W[9]=d[9]for a=1,8 do
s=av(W,o,1,a)end
if s then
for a=1,2 do
d[30+a]=W[a]-d[a]d[a]=W[a]end
if d[9]>C[1]then
d[19]=d[19]-1
else
d[9]=z(C[1],d[9]+4)d[19]=O(0,d[19])end
else
d[19]=0
d[9]=C[1]s=ba%4>0 or C[6]<18 or aC(d,10)end
bc=B[1]c=n[1]if ah(31)and aD<=0 and(c==0 or bc[c]>=n[2])then
af(3,o)aD=n[3]if c>0then
bc[c]=bc[c]-n[2]end
bq()aS(d,1)end
aD=aD-1
if ao(4)<0 then
_=ae(d,T(d[3],64))_[9]=d[9]aH,ax=aB(d,_,2,1)_=e[2][ax]if aH==i then
t[2]=ax
c,s=_[4]for a=14,16 do
s=s or B[1][a]>0 and c==a
end
if c==1 or s then
aT(_,_[5])elseif c>3000 and c<3005then
bJ=ay(c-3000)end
end
end
end
t[1]=ac
for a=3,8 do
t[a]=d[e[19][4][a]]end
t[5]=1
t[13]=d[3]a=aj
br=o
G=1
ar=#h+#Q
while G<3 and br do
c=G*9+5
if a<=#h then
_=h[a]if a~=1 then
if _ then
if _[10]then
_[10]=i
t[c]=a
for k=1,8 do
t[c+k]=_[e[19][1][k]]end
G=G+1
end
else
t[c]=-a
bM(h,a)G=G+1
ar=ar-1
end
end
else
_=Q[a-#h]if _[10]then
_[10]=i
t[c]=a-#h+2^15
for k=1,6 do
t[c+k]=_[k]end
G=G+1
end
end
a=((a-2)%ar)+1
aj=z(aj,ar)br=a~=aj
end
aj=a
for a=1,32 do
bN.setNumber(a,t[a])end
end
as=as+1
async.httpGet(8,bU)end
function onDraw()be=screen.drawText
be(26,137,bB)if aA then
for a=1,4 do
b=124+a*7
be(240,b,ay(B[1][a]))be(230,b,B[1][13+a])end
end
end
