bJ=""

S=128
L=180
bp=output
bz=input
bC=string.sub
B=math
K=B.max
r=B.min
al=B.floor
pi=B.pi
ak=bz.getNumber
an=bz.getBool
N=bp.setBool
j=true
h=false
v=ipairs
abs=B.abs
bi=table.remove
function aa(c,g)return{(c[1]+g[1]),(c[2]+g[2])}end
function sub(c,g)return{(c[1]-g[1]),(c[2]-g[2])}end
function bd(c)return B.sin(c/L*pi)end
function ab(c)return B.cos(c/L*pi)end
function I(c,g)return B.atan(g[2]-c[2],g[1]-c[1])*L/pi end
function D(c,g,ab)return K(r(ab,c),g)end
function u(c,g)return B.sqrt(((c[1]-g[1])^2)+((c[2]-g[2])^2))end
function R(c,g)return{ab(c)*g,bd(c)*g}end
function exp(c)return c[1],c[2]end
a={}aO=1
aC=3
au=h
aT=j
ad=2
G=0
aq=0
ai=0
T=0
aU=0
l=1
aR=0
aD=2
function aB(b,c,_)if b<32768then
_=a[7][b]return aB(_[_[3]*(c[2]-_[2])-_[4]*(c[1]-_[1])>0 and 8 or 7],c)else
b=a[5][a[6][b-32768][2]]return a[8][a[3][a[2][b[4]][b[5]+6]][6]]end
end
function ap(q,bl,z,bH,_,b,x)f=a[15][a[1][z][4]]ao,aj=f[18],f[19]E=ao
A=aB(#a[7],q)U,af=exp(A)V=sub(q,a[10][1])M=a[10][2+V[1]//S+V[2]//S*aY]for b,_ in v(M[0])do
d=a[1][_]if _~=z and d and a[1][z][14]~=_ then
k=u(d,q)C=a[15][d[4]]if d[20]then
O=k-C[18]if O<E and C[23]&1>0 and(f[23]&1>0 or(q[9]+aj<d[9]or q[9]>d[9]+C[19])==h)then
aH=d
if bl==h then
return h
end
E=O
aI=I(q,d)end
end
if z==G and not d[10]then
if k<50then
c=C[25]if c>0then
for n,t in v(a[12][c])do
if t>0 and a[12][1][n]<a[12][2][n]then
d=a[12]a[1][_]=h
d[1][n]=al(r(d[1][n]+t,d[2][n]))if D(n,5,11)==n then
ad=n-4
end
end
end
end
c=C[29]if c>0 then
c=a[11][c]for n=7,8 do
e[n]=D(e[n]+c[n*2-13],e[n],c[n*2-12])end
a[1][_]=h
end
end
end
end
end
aH=h
if af-U<aj or U>q[9]+24then
return h
end
for b=1,#M do
_=a[2][M[b]]k,bs=bo(q,a[4][_[1]],a[4][_[2]])if k<E then
if bH==1 and _[4]==2 then
aW(_,_[5])end
if(_[3]&1>0 and f[23]&1>0)or _[3]&4==0 then
E=k
aI=bs
else
bE,bv=r(_[9],af),K(_[8],U)if r(q[9],af-aj)+24<bv or K(q[9],U)+aj>bE then
E=k
aI=bs
else
af,U=bE,bv
end
end
end
end
A={U,af}if bl then
if E~=ao then
_=aa(q,R(aI,E-ao))q[1]=_[1]q[2]=_[2]end
return j
end
return E==ao
end
function bo(m,w,as)J=u(w,m)bf=I(w,as)+90
bB=bf-I(m,w)bx=-J*bd(bB)bg=J*ab(bB)aG=bf
if bg<0 then
aG=aG+L
end
if bx<0 then
return J,I(m,w)elseif bx>u(as,w)then
return u(as,m),I(m,as)else
return abs(bg),aG
end
end
function aw(m,w,aF,z,_)aS=u(m,w)az=aS
aP=j
O,aA=exp(m)bI,bG=exp(w)ax,aQ=exp(sub(w,m))ar,by=m[9]+32,w[9]+32
s=h
for b,_ in v(a[2])do
bk=a[4][_[1]]bA,bm=exp(sub(a[4][_[2]],bk))bu,bF=exp(sub(m,bk))bj=bm*ax-bA*aQ
Q=(bA*bF-bm*bu)/bj
bb=(ax*bF-aQ*bu)/bj
if D(Q,0,1)==Q and D(bb,0,1)==bb then
bw={O+(Q*ax),aA+(Q*aQ)}k=u(m,bw)y=ar+(by-ar)*(k/aS)if D(y,_[8],_[9])~=y then
aP=h
if aF==1 then
return h
end
if k<az then
az=k
b_,aZ=exp(bw)bD=y
Y=b
end
end
end
end
if aF>1 then
if aF==3 then
for b,_ in v(a[1])do
if _ and b~=z then
f=a[15][_[4]]if f[23]&1>0 and _[20]then
k=u(m,_)if k<az then
Q=bo(_,m,w)J=(k/aS)y=ar+(by-ar)*J
if D(y,_[9],_[9]+f[19])==y and Q<f[18]then
s=j
aP=h
b_=O+(bI-O)*J
aZ=aA+(bG-aA)*J
bD=y
Y=b
end
end
end
end
end
end
return aP,Y,{b_,aZ,bD}end
return j
end
function httpReply(c,g,ab)be=ai//2
ai=0
end
function Z()aU=aU%256+1
return a[13][1][aU]end
function aV(_,b)f=a[15][_[4]]if f[23]&2>0 and _[7]>0 then
_[8]=_[8]-(b+1)//2
_[7]=_[7]-b//2+r(_[8],0)_[8]=K(_[8],0)if Z()<f[10]then
_[6]=f[9]_[15]=0
_[23]=e
_[10]=j
end
end
end
function aX(c,g,am)return g[20]and abs(((I(c,g)-c[3]+L)%360)-L)<am and aw(c,g,1)end
function bt(H,z)bq=W and(W[9]-H[9])*o[6]/u(W,H)or 0
for b=1,o[12]do
c={}for b=1,30 do
c[b]=H[b]end
c[4]=o[8]c[10]=j
c[14]=z
bn=(Z()/S-1)*o[10]aL=R(H[3]+bn,o[6])if o[7]>0then
a[1][#a[1]+1]=c
f=a[15][c[4]]c[6]=f[3]c[9]=H[9]+32
c[11]=aL[1]c[12]=aL[2]c[17]=ad
c[19]=bq
else
d=aa(H,aL)d[9]=e[9]+bq
aE,at,d=aw(H,d,3,z)if not aE then
bc=sub(d,R(H[3]+bn,1))a[1][#a[1]+1]=c
c[1]=bc[1]c[2]=bc[2]c[6]=a[15][c[4]][3]c[9]=d[3]c[19]=1
if s then
c=a[1][at]aV(c,o[9]*((Z()&3)+2))end
end
end
end
end
function aW(_,d)if d>-1 then
c=a[9][d]if c[1]>0 or e[31]*_[10][2]-e[32]*_[10][1]<0 then
g=a[8][c[1]]ac[g and g[30]or#ac+1]={d,1}_[4]=c[7]c=c[8]>0 and aW(_,c[8])end
else
aT=j
N(2,j)end
end
function onTick()N(9,an(32))N(2,h)N(3,h)for x=1,3 do
if an(32)and(not au)or not a[21]then
aK=property.getText(aO..bJ)if aK~=bJ then
b=1
i=bJ
_=bC(aK,b,b)while i.._~=bJdo
if _==","or _==bJthen
i=i+0
if l==1then
Y=i
if a[i]==br then
a[i]={}end
l=2
elseif l==2then
y=i
ae=0
l=3
elseif l==3then
aM=i
l=4
else
if ae==0then
ae=y
aM=aM-1
aN={}a[Y][#a[Y]+1]=aN
end
aN[#aN+1]=i
ae=ae-1
if K(ae,aM)==0then
l=1
end
end
i=bJ
else
i=i.._
end
b=b+1
_=bC(aK,b,b)end
aO=aO+1
else
au=j
end
end
end
if au then
if aT then
ac,aT={}X=1
for b=1,10 do
a[b]=a[b+10*aC]end
for b=14,16 do
a[12][1][b]=0
end
aC=aC+1
for b,_ in v(a[1])do
for x=7,20 do
_[x]=0
end
_[7]=a[15][_[4]][4]_[9],_[10]=aB(#a[7],_)[1]if _[4]==1 then
if e then
_[7]=e[7]_[8]=e[8]end
G=b
e=_
elseif _[5]&aD<1then
a[1][b]=h
end
end
aY=a[10][1][3]end
for b,_ in v(a[2])do
_[10]=sub(a[4][_[2]],a[4][_[1]])if _[3]&4>0 then
f,C=a[8][a[3][_[6]][6]],a[8][a[3][_[7]][6]]_[8]=K(f[1],C[1])_[9],f[30],C[30]=r(f[2],C[2])else
_[8],_[9]=0,0
end
end
p={}for b=1,32 do
p[b]=0
end
T=r(T+1/be,2/35)N(1,T>=0)if T>=0 then
T=T-1/35
for b=2,#a[10]do
a[10][b][0]={}end
for b,t in v(ac)do
_=a[9][t[1]]d=a[8][_[1]]or e
c=_[2]f=d[c]d[c]=D(_[3],f-_[4],f+_[4])f=d[c]if abs(f-_[3])<.1then
ac[b]=t[2]==_[5]and{_[6],1}or{t[1],t[2]+1}if _[6]==0 then
bi(ac,b)end
else
d[8]=d[8]or f~=t
end
d[30]=b
end
for b,_ in v(a[1])do
if _ then
for x,t in v({1,2,9})do
_[t]=_[t]+_[t+10]end
_[15]=_[15]+1
f=a[15][_[4]]if _[7]<=0 and _[20]then
_[15]=0
_[6]=f[_[7]<=-f[4]and f[15]>1 and 15or 14]_[10],_[20]=j
if f[27]>0 then
d={}for x=1,30 do
d[x]=_[x]end
d[4]=f[27]d[6]=f[28]a[1][#a[1]+1]=d
end
end
ay=a[16][_[6]]if _[15]>=ay[2]and ay[2]~=-1then
_[6]=ay[4]_[15]=0
ag=a[16][_[6]][3]if ag==1 then
for b,l in v(a[1])do
if l then
i=S-u(_,l)if i>0 then
aV(l,i)end
end
end
elseif ag==2then
if aX(_,e,90)then
_[23]=e
_[6]=f[5]end
elseif ag==3then
am=al(I(_,_[23])/45+.5)*45
s=h
l=1
while l<5 and not s do
i=aa(_,R(am+a[19][2][l],8))i[9]=_[9]l=l+1
s=ap(i,h,b)and A[1]>=i[9]-24
end
if s then
_[1]=i[1]_[2]=i[2]_[3]=am
_[10]=j
else
ap(_,h,b)end
if f[23]&4<1 then
_[9]=A[1]end
c=u(_,_[23])if f[13]>0 and aw(_,_[23],1)and r(c,230)<Z()then
_[6]=f[13]end
if c<64 and f[12]>0then
_[6]=f[12]end
elseif ag>9then
_[3]=I(_,_[23])o=a[14][ag]_[10]=j
W=_[23]bt(_,b)end
end
if _[17]and _[17]>0then
o=a[14][_[17]]if not ap(_,h,b)or _[9]<=A[1]then
if aH then
aV(aH,f[21]*((Z()&7)+1))end
_[1]=_[1]-_[11]_[2]=_[2]-_[12]_[3]=0
_[6]=a[15][_[4]][9]_[10]=j
_[11]=0
_[12]=0
_[17]=br
_[19]=0
end
end
if _[6]==1then
a[1][b]=h
else
V=sub(_,a[10][1])M=a[10][2+V[1]//S+V[2]//S*aY]if M~=br then
M[0][#M[0]+1]=b
end
end
end
end
for b=1,8 do
if an(b)and a[12][1][b+4]>0then
ad=b
end
end
o=a[14][ad]e[3]=e[3]-ak(3)*(D(aR,5,6)*1.5-6)aR=abs(ak(3))*aR+1
P=e
for b=1,2 do
P=aa(P,R(e[3]-L+90*b,ak(b)*8.33))end
P[9]=e[9]for b=1,8 do
s=ap(P,j,G,b)end
if s then
for b=1,2 do
e[30+b]=P[b]-e[b]e[b]=P[b]end
if e[9]<=A[1]then
e[9]=r(A[1],e[9]+4)e[19]=K(0,e[19])else
if e[9]>=A[2]-56then
e[9]=A[2]-56
e[19]=r(0,e[19])end
e[19]=e[19]-1
end
end
aJ=a[12][1]d=o[1]if an(31)and aq<=0 and(d==0 or aJ[d]>=o[2])then
N(3,j)aq=o[3]if d>0then
aJ[d]=aJ[d]-o[2]end
ba,W=2048
for b,_ in v(a[1])do
if b~=G and _ and aX(e,_,10)then
k=u(_,e)if k<ba then
if a[15][_[4]][23]&2>0then
W=_
ba=k
end
end
end
end
bt(e,G)end
aq=aq-1
if ak(4)<0 then
_=aa(e,R(e[3],64))_[9]=e[9]aE,at=aw(e,_,2,G)_=a[2][at]if aE==h then
p[2]=at
d,s=_[4]for b=14,16 do
s=s or a[12][1][b]>0 and d==b
end
if d==1 or s then
aW(_,_[5])elseif d>3000 and d<3005then
aD=al(d-3000)end
end
end
end
p[1]=ad
for b=3,8 do
p[b]=e[a[19][4][b]]end
p[5]=G
p[13]=e[3]b=X
bh=j
F=1
av=#a[1]+#a[8]while F<3 and bh do
d=F*9+5
if b<=#a[1]then
_=a[1][b]if b~=G then
if _ then
if _[10]then
_[10]=h
p[d]=b
for x=1,8 do
p[d+x]=_[a[19][1][x]]end
F=F+1
end
else
p[d]=-b
bi(a[1],b)F=F+1
av=av-1
end
end
else
_=a[8][b-#a[1]]if _[8]then
_[8]=h
p[d]=b-#a[1]+2^15
p[d+1]=_[1]p[d+2]=_[2]F=F+1
end
end
b=((b-2)%av)+1
X=r(X,av)bh=b~=X
end
X=b
for b=1,32 do
bp.setNumber(b,p[b])end
end
ai=ai+1
async.httpGet(8,bJ)end
function onDraw()ah=screen.drawText
ah(26,137,be)if au then
for b=1,4 do
c=124+b*7
ah(240,c,al(a[12][1][b]))ah(230,c,a[12][1][13+b])end
ah(26,143,r(aD,3))end
end
