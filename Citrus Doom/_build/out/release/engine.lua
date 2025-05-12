bL=""

O=128
M=180
bg=output
be=input
B=math
J=B.max
x=B.min
at=B.floor
pi=B.pi
as=be.getNumber
au=be.getBool
Y=bg.setBool
m=true
h=false
u=ipairs
abs=B.abs
bl=table.remove
aG=string
function ac(c,g)return{(c[1]+g[1]),(c[2]+g[2])}end
function sub(c,g)return{(c[1]-g[1]),(c[2]-g[2])}end
function bC(c)return B.sin(c/M*pi)end
function ab(c)return B.cos(c/M*pi)end
function G(c,g)return B.atan(g[2]-c[2],g[1]-c[1])*M/pi end
function H(c,g,ab)return J(x(ab,c),g)end
function w(c,g)return B.sqrt(((c[1]-g[1])^2)+((c[2]-g[2])^2))end
function S(c,g)return{ab(c)*g,bC(c)*g}end
function exp(c)return c[1],c[2]end
b={}aF=1
aq=3
aw=h
aE=m
V=2
z=0
ai=0
av=0
Q=0
aC=0
j=1
aH=0
bj=2
function az(a,c,_)if a<32768then
_=b[7][a]return az(_[_[3]*(c[2]-_[2])-_[4]*(c[1]-_[1])>0 and 8 or 7],c)else
a=b[5][b[6][a-32768][2]]return b[8][b[3][b[2][a[4]][a[5]+6]][6]]end
end
function an(s,bd,y,bJ,_,a,k)Z=b[1][y]e=b[15][Z[4]]al,ap=e[18],e[19]E=al
D=az(#b[7],s)R,ah=exp(D)ad=sub(s,b[10][1])K=b[10][2+ad[1]//O+ad[2]//O*bE]for a,_ in u(K[0])do
d=b[1][_]if _~=y and d and Z[14]~=_ then
l=w(d,s)C=b[15][d[4]]if d[20]then
P=l-C[18]if P<E and C[23]&1>0 and(e[23]&1>0 or(s[9]+ap<d[9]or s[9]>d[9]+C[19])==h)then
aO=d
if bd==h then
return h
end
E=P
aQ=G(s,d)end
end
if y==z and not d[10]then
if l<50then
c=C[25]if c>0then
for n,q in u(b[12][c])do
if q>0 and b[12][1][n]<b[12][2][n]then
d=b[12]b[1][_]=h
d[1][n]=at(x(d[1][n]+q,d[2][n]))if H(n,5,11)==n then
V=n-4
end
end
end
end
c=C[29]if c>0 then
c=b[11][c]for n=7,8 do
f[n]=H(f[n]+c[n*2-13],f[n],c[n*2-12])end
b[1][_]=h
end
end
end
end
end
aO=h
if ah-R<ap or R>s[9]+24then
return h
end
for a=1,#K do
_=b[2][K[a]]l,bh=bv(s,b[4][_[1]],b[4][_[2]])if l<E then
if bJ==1 and(_[3]&512>0 or y==z)and(_[4]==2 or y~=z)then
aN(_,_[5])end
if(_[3]&1>0 and e[23]&1>0)or _[3]&4==0 then
E=l
aQ=bh
else
bu,bG=x(_[9],ah),J(_[8],R)if x(s[9],ah-ap)+24<bG or J(s[9],R)+ap>bu then
E=l
aQ=bh
else
ah,R=bu,bG
end
end
end
end
D={R,ah}if bd then
if E~=al then
_=ac(s,S(aQ,E-al))s[1]=_[1]s[2]=_[2]end
return m
end
return E==al
end
function bv(o,v,ao)L=w(v,o)b_=G(v,ao)+90
aZ=b_-G(o,v)bk=-L*bC(aZ)bF=L*ab(aZ)aR=b_
if bF<0 then
aR=aR+M
end
if bk<0 then
return L,G(o,v)elseif bk>w(ao,v)then
return w(ao,o),G(o,ao)else
return abs(bF),aR
end
end
function ax(o,v,aT,y,_)aJ=w(o,v)aS=aJ
aX=m
P,aM=exp(o)bH,bI=exp(v)ay,aB=exp(sub(v,o))ar,bx=o[9]+32,v[9]+32
t=h
for a,_ in u(b[2])do
bf=b[4][_[1]]ba,bt=exp(sub(b[4][_[2]],bf))bm,bA=exp(sub(o,bf))bw=bt*ay-ba*aB
T=(ba*bA-bt*bm)/bw
bo=(ay*bA-aB*bm)/bw
if H(T,0,1)==T and H(bo,0,1)==bo then
bz={P+(T*ay),aM+(T*aB)}l=w(o,bz)A=ar+(bx-ar)*(l/aJ)if H(A,_[8],_[9])~=A then
aX=h
if aT==1 then
return h
end
if l<aS then
aS=l
bs,bp=exp(bz)bc=A
X=a
end
end
end
end
if aT>1 then
if aT==3 then
for a,_ in u(b[1])do
if _ and a~=y then
e=b[15][_[4]]if e[23]&1>0 and _[20]then
l=w(o,_)if l<aS then
T=bv(_,o,v)L=(l/aJ)A=ar+(bx-ar)*L
if H(A,_[9],_[9]+e[19])==A and T<e[18]then
t=m
aX=h
bs=P+(bH-P)*L
bp=aM+(bI-aM)*L
bc=A
X=a
end
end
end
end
end
end
return aX,X,{bs,bp,bc}end
return m
end
function httpReply(c,g,ab)aY=av//2
av=0
end
function aa()aC=aC%256+1
return b[13][1][aC]end
function aD(_,a)e=b[15][_[4]]if e[23]&2>0 and _[7]>0 then
_[8]=_[8]-(a+1)//2
_[7]=_[7]-a//2+x(_[8],0)_[8]=J(_[8],0)if aa()<e[10]then
_[6]=e[9]_[15]=0
_[23]=f
_[10]=m
end
end
end
function bB(c,g,am)return g[20]and abs(((G(c,g)-c[3]+M)%360)-M)<am and ax(c,g,1)end
function bb(I,y)bi=af and(af[9]-I[9])*r[6]/w(af,I)or 0
for a=1,r[12]do
c={}for a=1,30 do
c[a]=I[a]end
c[4]=r[8]c[10]=m
c[14]=y
bn=(aa()/O-1)*r[10]aL=S(I[3]+bn,r[6])if r[7]>0then
b[1][#b[1]+1]=c
e=b[15][c[4]]c[6]=e[3]c[9]=I[9]+32
c[11]=aL[1]c[12]=aL[2]c[17]=V
c[19]=bi
else
d=ac(I,aL)d[9]=f[9]+bi
aW,aj,d=ax(I,d,3,y)if not aW then
bq=sub(d,S(I[3]+bn,1))b[1][#b[1]+1]=c
c[1]=bq[1]c[2]=bq[2]c[6]=b[15][c[4]][3]c[9]=d[3]c[19]=1
if t then
c=b[1][aj]aD(c,r[9]*((aa()&3)+2))end
end
end
end
end
function aN(_,d)if d>-1 then
c=b[9][d]if c[1]>0 or Z[31]*_[10][2]-Z[32]*_[10][1]<0 then
g=b[8][c[1]]ae[g and g[30]or#ae+1]={d,1,g or Z}_[4]=c[7]c=c[8]>0 and aN(_,c[8])end
else
aE=m
aq=-d
p[9]=-d
end
end
function onTick()Y(9,au(32))Y(2,h)Y(3,h)for k=1,3 do
if au(32)and(not aw)or not b[21]then
aK=property.getText(aF..bL)if aK~=bL then
a=1
i=bL
_=aG.sub(aK,a,a)while _~=bLdo
d=aG.byte(_)if d>64 or _==bLthen
i=(i..(d-65))+0
if j==1then
X=i
if b[i]==by then
b[i]={}end
j=2
elseif j==2then
A=i
W=0
j=3
elseif j==3then
aP=i
j=4
else
if W==0then
W=A
aP=aP-1
aA={}b[X][#b[X]+1]=aA
end
aA[#aA+1]=i
W=W-1
if J(W,aP)==0then
j=1
end
end
i=bL
else
i=i.._
end
a=a+1
_=aG.sub(aK,a,a)end
aF=aF+1
else
aw=m
end
end
end
if aw then
if aE then
ae,aE={}U=1
for a=1,10 do
b[a]=b[a+10*aq]end
for a=14,16 do
b[12][1][a]=0
end
aq=aq+1
for a,_ in u(b[1])do
for k=7,40 do
_[k]=0
end
bK=_[5]+1
_[7]=b[15][_[4]][4]_[9],_[10]=az(#b[7],_)[1]if _[4]==1 then
if f then
_[7]=f[7]_[8]=f[8]end
z=a
f=_
elseif _[5]&bj<1then
b[1][a]=h
end
end
bE=b[10][1][3]end
for a,_ in u(b[2])do
_[10]=sub(b[4][_[2]],b[4][_[1]])if _[3]&4>0 then
e,C=b[8][b[3][_[6]][6]],b[8][b[3][_[7]][6]]_[8]=J(e[1],C[1])_[9],e[30],C[30]=x(e[2],C[2])else
_[8],_[9]=0,0
end
end
p={}for a=1,32 do
p[a]=0
end
Q=x(Q+1/aY,2/35)Y(1,Q>=0)if Q>=0 then
Q=Q-1/35
for a=2,#b[10]do
b[10][a][0]={}end
for a,q in u(ae)do
_=b[9][q[1]]d=q[3]c=_[2]e=d[c]d[c]=H(_[3],e-_[4],e+_[4])+0
e=d[c]if abs(e-_[3])<.1then
ae[a]=q[2]==_[5]and{_[6],1,d}or{q[1],q[2]+1,d}if _[6]==0 then
bl(ae,a)end
else
d[8]=d[8]or e~=q
end
d[30]=a
end
for a,_ in u(b[1])do
if _ then
for k,q in u({1,2,9})do
_[q]=_[q]+_[q+10]end
_[15]=_[15]+1
e=b[15][_[4]]if _[7]<=0 and _[20]then
_[15]=0
_[6]=e[_[7]<=-e[4]and e[15]>1 and 15or 14]_[10],_[20]=m
if e[27]>0 then
d={}for k=1,30 do
d[k]=_[k]end
d[4]=e[27]d[6]=e[28]b[1][#b[1]+1]=d
end
end
aI=b[16][_[6]]if _[15]>=aI[2]and aI[2]~=-1then
_[6]=aI[4]_[15]=0
ag=b[16][_[6]][3]if ag==1 then
for a,j in u(b[1])do
if j then
i=O-w(_,j)if i>0 then
aD(j,i)end
end
end
elseif ag==2then
if bB(_,f,90)then
_[23]=f
_[6]=e[5]end
elseif ag==3then
am=at(G(_,_[23])/45+.5)*45
t=h
j=1
while j<5 and not t do
i=ac(_,S(am+b[19][2][j],8))i[9]=_[9]t=an(i,h,a,j)and D[1]>=i[9]-24
j=j+1
end
if t then
for k=1,2 do
_[30+k]=i[k]-_[k]_[k]=i[k]end
_[3]=am
_[10]=m
else
an(_,h,a)end
if e[23]&4<1 then
_[9]=D[1]end
c=w(_,_[23])if e[13]>0 and ax(_,_[23],1)and x(c,230)<aa()then
_[6]=e[13]end
if c<64 and e[12]>0then
_[6]=e[12]end
elseif ag>9then
_[3]=G(_,_[23])r=b[14][ag]_[10]=m
af=_[23]bb(_,a)end
end
if _[17]and _[17]>0then
r=b[14][_[17]]if not an(_,h,a)or _[9]<=D[1]then
if aO then
aD(aO,e[21]*((aa()&7)+1))end
_[1]=_[1]-_[11]_[2]=_[2]-_[12]_[3]=0
_[6]=b[15][_[4]][9]_[10]=m
_[11]=0
_[12]=0
_[17]=by
_[19]=0
end
end
if _[6]==1then
b[1][a]=h
else
ad=sub(_,b[10][1])K=b[10][2+ad[1]//O+ad[2]//O*bE]if K~=by then
K[0][#K[0]+1]=a
end
end
end
end
for a=1,8 do
if au(a)and b[12][1][a+4]>0then
V=a
end
end
r=b[14][V]f[3]=f[3]-as(3)*(H(aH,5,6)*1.5-6)aH=abs(as(3))*aH+1
N=f
for a=1,2 do
N=ac(N,S(f[3]-M+90*a,as(a)*8.33))end
N[9]=f[9]for a=1,8 do
t=an(N,m,z,a)end
if t then
for a=1,2 do
f[30+a]=N[a]-f[a]f[a]=N[a]end
if f[9]<=D[1]then
f[9]=x(D[1],f[9]+4)f[19]=J(0,f[19])else
if f[9]>=D[2]-56then
f[9]=D[2]-56
f[19]=x(0,f[19])end
f[19]=f[19]-1
end
end
aU=b[12][1]d=r[1]if au(31)and ai<=0 and(d==0 or aU[d]>=r[2])then
Y(3,m)ai=r[3]if d>0then
aU[d]=aU[d]-r[2]end
br,af=2048
for a,_ in u(b[1])do
if a~=z and _ and bB(f,_,10)then
l=w(_,f)if l<br then
if b[15][_[4]][23]&2>0then
af=_
br=l
end
end
end
end
bb(f,z)end
ai=ai-1
if as(4)<0 then
_=ac(f,S(f[3],64))_[9]=f[9]aW,aj=ax(f,_,2,z)_=b[2][aj]if aW==h then
p[2]=aj
d,t=_[4]for a=14,16 do
t=t or b[12][1][a]>0 and d==a
end
if d==1 or t then
aN(_,_[5])elseif d>3000 and d<3005then
bj=at(d-3000)end
end
end
end
p[1]=V
for a=3,8 do
p[a]=f[b[19][4][a]]end
p[5]=z
p[13]=f[3]a=U
bD=m
F=1
ak=#b[1]+#b[8]while F<3 and bD do
d=F*9+5
if a<=#b[1]then
_=b[1][a]if a~=z then
if _ then
if _[10]then
_[10]=h
p[d]=a
for k=1,8 do
p[d+k]=_[b[19][1][k]]end
F=F+1
end
else
p[d]=-a
bl(b[1],a)F=F+1
ak=ak-1
end
end
else
_=b[8][a-#b[1]]if _[8]then
_[8]=h
p[d]=a-#b[1]+2^15
p[d+1]=_[1]p[d+2]=_[2]F=F+1
end
end
a=((a-2)%ak)+1
U=x(U,ak)bD=a~=U
end
U=a
for a=1,32 do
bg.setNumber(a,p[a])end
end
av=av+1
async.httpGet(8,bL)end
function onDraw()aV=screen.drawText
aV(26,137,aY)if aw then
for a=1,4 do
c=124+a*7
aV(240,c,at(b[12][1][a]))aV(230,c,b[12][1][13+a])end
end
end
