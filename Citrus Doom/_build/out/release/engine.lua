bK=""

T=128
L=180
bp=output
b_=input
z=math
M=z.max
r=z.min
am=z.floor
pi=z.pi
ak=b_.getNumber
aw=b_.getBool
Y=bp.setBool
k=true
h=false
u=ipairs
abs=z.abs
bs=table.remove
aT=string
function ac(c,g)return{(c[1]+g[1]),(c[2]+g[2])}end
function sub(c,g)return{(c[1]-g[1]),(c[2]-g[2])}end
function bf(c)return z.sin(c/L*pi)end
function X(c)return z.cos(c/L*pi)end
function E(c,g)return z.atan(g[2]-c[2],g[1]-c[1])*L/pi end
function D(c,g,X)return M(r(X,c),g)end
function v(c,g)return z.sqrt(((c[1]-g[1])^2)+((c[2]-g[2])^2))end
function Q(c,g)return{X(c)*g,bf(c)*g}end
function exp(c)return c[1],c[2]end
a={}aH=1
ah=3
aj=h
aE=k
ae=2
I=0
al=0
an=0
O=0
aN=0
l=1
aC=0
aS=2
function aL(b,c,_)if b<32768then
_=a[7][b]return aL(_[_[3]*(c[2]-_[2])-_[4]*(c[1]-_[1])>0 and 8 or 7],c)else
b=a[5][a[6][b-32768][2]]return a[8][a[3][a[2][b[4]][b[5]+6]][6]]end
end
function ar(q,bx,B,bI,_,b,x)f=a[15][a[1][B][4]]at,as=f[18],f[19]H=at
C=aL(#a[7],q)N,af=exp(C)aa=sub(q,a[10][1])J=a[10][2+aa[1]//T+aa[2]//T*bq]for b,_ in u(J[0])do
d=a[1][_]if _~=B and d and a[1][B][14]~=_ then
j=v(d,q)y=a[15][d[4]]if d[20]then
R=j-y[18]if R<H and y[23]&1>0 and(f[23]&1>0 or(q[9]+as<d[9]or q[9]>d[9]+y[19])==h)then
aO=d
if bx==h then
return h
end
H=R
aG=E(q,d)end
end
if B==I and not d[10]then
if j<50then
c=y[25]if c>0then
for n,s in u(a[12][c])do
if s>0 and a[12][1][n]<a[12][2][n]then
d=a[12]a[1][_]=h
d[1][n]=am(r(d[1][n]+s,d[2][n]))if D(n,5,11)==n then
ae=n-4
end
end
end
end
c=y[29]if c>0 then
c=a[11][c]for n=7,8 do
e[n]=D(e[n]+c[n*2-13],e[n],c[n*2-12])end
a[1][_]=h
end
end
end
end
end
aO=h
if af-N<as or N>q[9]+24then
return h
end
for b=1,#J do
_=a[2][J[b]]j,bz=bl(q,a[4][_[1]],a[4][_[2]])if j<H then
if bI==1 and _[4]==2 then
aK(_,_[5])end
if(_[3]&1>0 and f[23]&1>0)or _[3]&4==0 then
H=j
aG=bz
else
bi,by=r(_[9],af),M(_[8],N)if r(q[9],af-as)+24<by or M(q[9],N)+as>bi then
H=j
aG=bz
else
af,N=bi,by
end
end
end
end
C={N,af}if bx then
if H~=at then
_=ac(q,Q(aG,H-at))q[1]=_[1]q[2]=_[2]end
return k
end
return H==at
end
function bl(m,w,ai)K=v(w,m)bv=E(w,ai)+90
bb=bv-E(m,w)bw=-K*bf(bb)bg=K*X(bb)aJ=bv
if bg<0 then
aJ=aJ+L
end
if bw<0 then
return K,E(m,w)elseif bw>v(ai,w)then
return v(ai,m),E(m,ai)else
return abs(bg),aJ
end
end
function au(m,w,az,B,_)aR=v(m,w)ay=aR
aX=k
R,aV=exp(m)bH,bG=exp(w)aM,aW=exp(sub(w,m))ao,br=m[9]+32,w[9]+32
t=h
for b,_ in u(a[2])do
be=a[4][_[1]]bF,bu=exp(sub(a[4][_[2]],be))bB,bk=exp(sub(m,be))bd=bu*aM-bF*aW
S=(bF*bk-bu*bB)/bd
bD=(aM*bk-aW*bB)/bd
if D(S,0,1)==S and D(bD,0,1)==bD then
bo={R+(S*aM),aV+(S*aW)}j=v(m,bo)A=ao+(br-ao)*(j/aR)if D(A,_[8],_[9])~=A then
aX=h
if az==1 then
return h
end
if j<ay then
ay=j
aY,aZ=exp(bo)bh=A
ab=b
end
end
end
end
if az>1 then
if az==3 then
for b,_ in u(a[1])do
if _ and b~=B then
f=a[15][_[4]]if f[23]&1>0 and _[20]then
j=v(m,_)if j<ay then
S=bl(_,m,w)K=(j/aR)A=ao+(br-ao)*K
if D(A,_[9],_[9]+f[19])==A and S<f[18]then
t=k
aX=h
aY=R+(bH-R)*K
aZ=aV+(bG-aV)*K
bh=A
ab=b
end
end
end
end
end
end
return aX,ab,{aY,aZ,bh}end
return k
end
function httpReply(c,g,X)bE=an//2
an=0
end
function Z()aN=aN%256+1
return a[13][1][aN]end
function aQ(_,b)f=a[15][_[4]]if f[23]&2>0 and _[7]>0 then
_[8]=_[8]-(b+1)//2
_[7]=_[7]-b//2+r(_[8],0)_[8]=M(_[8],0)if Z()<f[10]then
_[6]=f[9]_[15]=0
_[23]=e
_[10]=k
end
end
end
function bC(c,g,ap)return g[20]and abs(((E(c,g)-c[3]+L)%360)-L)<ap and au(c,g,1)end
function ba(G,B)bc=U and(U[9]-G[9])*p[6]/v(U,G)or 0
for b=1,p[12]do
c={}for b=1,30 do
c[b]=G[b]end
c[4]=p[8]c[10]=k
c[14]=B
bt=(Z()/T-1)*p[10]aD=Q(G[3]+bt,p[6])if p[7]>0then
a[1][#a[1]+1]=c
f=a[15][c[4]]c[6]=f[3]c[9]=G[9]+32
c[11]=aD[1]c[12]=aD[2]c[17]=ae
c[19]=bc
else
d=ac(G,aD)d[9]=e[9]+bc
aU,ax,d=au(G,d,3,B)if not aU then
bA=sub(d,Q(G[3]+bt,1))a[1][#a[1]+1]=c
c[1]=bA[1]c[2]=bA[2]c[6]=a[15][c[4]][3]c[9]=d[3]c[19]=1
if t then
c=a[1][ax]aQ(c,p[9]*((Z()&3)+2))end
end
end
end
end
function aK(_,d)if d>-1 then
c=a[9][d]if c[1]>0 or e[31]*_[10][2]-e[32]*_[10][1]<0 then
g=a[8][c[1]]ad[g and g[30]or#ad+1]={d,1}_[4]=c[7]c=c[8]>0 and aK(_,c[8])end
else
aE=k
ah=-d
o[9]=-d
end
end
function onTick()Y(9,aw(32))Y(2,h)Y(3,h)for x=1,3 do
if aw(32)and(not aj)or not a[21]then
aA=property.getText(aH..bK)if aA~=bK then
b=1
i=bK
_=aT.sub(aA,b,b)while _~=bKdo
d=aT.byte(_)if d>64 or _==bKthen
i=(i..(d-65))+0
if l==1then
ab=i
if a[i]==bn then
a[i]={}end
l=2
elseif l==2then
A=i
W=0
l=3
elseif l==3then
aI=i
l=4
else
if W==0then
W=A
aI=aI-1
aP={}a[ab][#a[ab]+1]=aP
end
aP[#aP+1]=i
W=W-1
if M(W,aI)==0then
l=1
end
end
i=bK
else
i=i.._
end
b=b+1
_=aT.sub(aA,b,b)end
aH=aH+1
else
aj=k
end
end
end
if aj then
if aE then
ad,aE={}ag=1
for b=1,10 do
a[b]=a[b+10*ah]end
for b=14,16 do
a[12][1][b]=0
end
ah=ah+1
for b,_ in u(a[1])do
for x=7,20 do
_[x]=0
end
bJ=_[5]+1
_[7]=a[15][_[4]][4]_[9],_[10]=aL(#a[7],_)[1]if _[4]==1 then
if e then
_[7]=e[7]_[8]=e[8]end
I=b
e=_
elseif _[5]&aS<1then
a[1][b]=h
end
end
bq=a[10][1][3]end
for b,_ in u(a[2])do
_[10]=sub(a[4][_[2]],a[4][_[1]])if _[3]&4>0 then
f,y=a[8][a[3][_[6]][6]],a[8][a[3][_[7]][6]]_[8]=M(f[1],y[1])_[9],f[30],y[30]=r(f[2],y[2])else
_[8],_[9]=0,0
end
end
o={}for b=1,32 do
o[b]=0
end
O=r(O+1/bE,2/35)Y(1,O>=0)if O>=0 then
O=O-1/35
for b=2,#a[10]do
a[10][b][0]={}end
for b,s in u(ad)do
_=a[9][s[1]]d=a[8][_[1]]or e
c=_[2]f=d[c]d[c]=D(_[3],f-_[4],f+_[4])f=d[c]if abs(f-_[3])<.1then
ad[b]=s[2]==_[5]and{_[6],1}or{s[1],s[2]+1}if _[6]==0 then
bs(ad,b)end
else
d[8]=d[8]or f~=s
end
d[30]=b
end
for b,_ in u(a[1])do
if _ then
for x,s in u({1,2,9})do
_[s]=_[s]+_[s+10]end
_[15]=_[15]+1
f=a[15][_[4]]if _[7]<=0 and _[20]then
_[15]=0
_[6]=f[_[7]<=-f[4]and f[15]>1 and 15or 14]_[10],_[20]=k
if f[27]>0 then
d={}for x=1,30 do
d[x]=_[x]end
d[4]=f[27]d[6]=f[28]a[1][#a[1]+1]=d
end
end
aB=a[16][_[6]]if _[15]>=aB[2]and aB[2]~=-1then
_[6]=aB[4]_[15]=0
V=a[16][_[6]][3]if V==1 then
for b,l in u(a[1])do
if l then
i=T-v(_,l)if i>0 then
aQ(l,i)end
end
end
elseif V==2then
if bC(_,e,90)then
_[23]=e
_[6]=f[5]end
elseif V==3then
ap=am(E(_,_[23])/45+.5)*45
t=h
l=1
while l<5 and not t do
i=ac(_,Q(ap+a[19][2][l],8))i[9]=_[9]l=l+1
t=ar(i,h,b)and C[1]>=i[9]-24
end
if t then
_[1]=i[1]_[2]=i[2]_[3]=ap
_[10]=k
else
ar(_,h,b)end
if f[23]&4<1 then
_[9]=C[1]end
c=v(_,_[23])if f[13]>0 and au(_,_[23],1)and r(c,230)<Z()then
_[6]=f[13]end
if c<64 and f[12]>0then
_[6]=f[12]end
elseif V>9then
_[3]=E(_,_[23])p=a[14][V]_[10]=k
U=_[23]ba(_,b)end
end
if _[17]and _[17]>0then
p=a[14][_[17]]if not ar(_,h,b)or _[9]<=C[1]then
if aO then
aQ(aO,f[21]*((Z()&7)+1))end
_[1]=_[1]-_[11]_[2]=_[2]-_[12]_[3]=0
_[6]=a[15][_[4]][9]_[10]=k
_[11]=0
_[12]=0
_[17]=bn
_[19]=0
end
end
if _[6]==1then
a[1][b]=h
else
aa=sub(_,a[10][1])J=a[10][2+aa[1]//T+aa[2]//T*bq]if J~=bn then
J[0][#J[0]+1]=b
end
end
end
end
for b=1,8 do
if aw(b)and a[12][1][b+4]>0then
ae=b
end
end
p=a[14][ae]e[3]=e[3]-ak(3)*(D(aC,5,6)*1.5-6)aC=abs(ak(3))*aC+1
P=e
for b=1,2 do
P=ac(P,Q(e[3]-L+90*b,ak(b)*8.33))end
P[9]=e[9]for b=1,8 do
t=ar(P,k,I,b)end
if t then
for b=1,2 do
e[30+b]=P[b]-e[b]e[b]=P[b]end
if e[9]<=C[1]then
e[9]=r(C[1],e[9]+4)e[19]=M(0,e[19])else
if e[9]>=C[2]-56then
e[9]=C[2]-56
e[19]=r(0,e[19])end
e[19]=e[19]-1
end
end
aF=a[12][1]d=p[1]if aw(31)and al<=0 and(d==0 or aF[d]>=p[2])then
Y(3,k)al=p[3]if d>0then
aF[d]=aF[d]-p[2]end
bm,U=2048
for b,_ in u(a[1])do
if b~=I and _ and bC(e,_,10)then
j=v(_,e)if j<bm then
if a[15][_[4]][23]&2>0then
U=_
bm=j
end
end
end
end
ba(e,I)end
al=al-1
if ak(4)<0 then
_=ac(e,Q(e[3],64))_[9]=e[9]aU,ax=au(e,_,2,I)_=a[2][ax]if aU==h then
o[2]=ax
d,t=_[4]for b=14,16 do
t=t or a[12][1][b]>0 and d==b
end
if d==1 or t then
aK(_,_[5])elseif d>3000 and d<3005then
aS=am(d-3000)end
end
end
end
o[1]=ae
for b=3,8 do
o[b]=e[a[19][4][b]]end
o[5]=I
o[13]=e[3]b=ag
bj=k
F=1
av=#a[1]+#a[8]while F<3 and bj do
d=F*9+5
if b<=#a[1]then
_=a[1][b]if b~=I then
if _ then
if _[10]then
_[10]=h
o[d]=b
for x=1,8 do
o[d+x]=_[a[19][1][x]]end
F=F+1
end
else
o[d]=-b
bs(a[1],b)F=F+1
av=av-1
end
end
else
_=a[8][b-#a[1]]if _[8]then
_[8]=h
o[d]=b-#a[1]+2^15
o[d+1]=_[1]o[d+2]=_[2]F=F+1
end
end
b=((b-2)%av)+1
ag=r(ag,av)bj=b~=ag
end
ag=b
for b=1,32 do
bp.setNumber(b,o[b])end
end
an=an+1
async.httpGet(8,bK)end
function onDraw()aq=screen.drawText
aq(26,137,bE)if aj then
for b=1,4 do
c=124+b*7
aq(240,c,am(a[12][1][b]))aq(230,c,a[12][1][13+b])end
aq(26,143,r(aS,3))end
end
