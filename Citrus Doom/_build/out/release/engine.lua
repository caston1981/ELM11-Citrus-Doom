bJ=""

Q=128
K=180
bl=output
bv=input
bC=string.sub
B=math
L=B.max
r=B.min
an=B.floor
pi=B.pi
aj=bv.getNumber
ai=bv.getBool
T=bl.setBool
j=true
g=false
u=ipairs
abs=B.abs
bB=table.remove
function U(c,i)return{(c[1]+i[1]),(c[2]+i[2])}end
function sub(c,i)return{(c[1]-i[1]),(c[2]-i[2])}end
function bs(c)return B.sin(c/K*pi)end
function ae(c)return B.cos(c/K*pi)end
function G(c,i)return B.atan(i[2]-c[2],i[1]-c[1])*K/pi end
function I(c,i,ae)return L(r(ae,c),i)end
function v(c,i)return B.sqrt(((c[1]-i[1])^2)+((c[2]-i[2])^2))end
function O(c,i)return{ae(c)*i,bs(c)*i}end
function exp(c)return c[1],c[2]end
a={}aF=1
aG=3
ao=g
aQ=j
Y=2
D=0
ah=0
ak=0
S=0
aN=0
l=1
aE=0
ax=2
function aU(b,c,_)if b<32768then
_=a[7][b]return aU(_[_[3]*(c[2]-_[2])-_[4]*(c[1]-_[1])>0 and 8 or 7],c)else
b=a[5][a[6][b-32768][2]]return a[8][a[3][a[2][b[4]][b[5]+6]][6]]end
end
function av(p,bF,A,bI,_,b,x)e=a[15][a[1][A][4]]at,as=e[18],e[19]H=at
z=aU(#a[7],p)N,ac=exp(z)af=sub(p,a[10][1])M=a[10][2+af[1]//Q+af[2]//Q*bD]for b,_ in u(M[0])do
d=a[1][_]if _~=A and d and a[1][A][14]~=_ then
k=v(d,p)y=a[15][d[4]]if d[20]then
R=k-y[18]if R<H and y[23]&1>0 and(e[23]&1>0 or(p[9]+as<d[9]or p[9]>d[9]+y[19])==g)then
az=d
if bF==g then
return g
end
H=R
aB=G(p,d)end
end
if A==D and not d[10]then
if k<50then
c=y[25]if c>0then
for m,s in u(a[12][c])do
if s>0 and a[12][1][m]<a[12][2][m]then
d=a[12]a[1][_]=g
d[1][m]=an(r(d[1][m]+s,d[2][m]))if I(m,5,11)==m then
Y=m-4
end
end
end
end
c=y[29]if c>0 then
c=a[11][c]for m=7,8 do
f[m]=I(f[m]+c[m*2-13],f[m],c[m*2-12])end
a[1][_]=g
end
end
end
end
end
az=g
if ac-N<as or N>p[9]+24then
return g
end
for b=1,#M do
_=a[2][M[b]]k,bz=bk(p,a[4][_[1]],a[4][_[2]])if k<H then
if bI==1 and _[4]==2 then
aO(_,_[5])end
if(_[3]&1>0 and e[23]&1>0)or _[3]&4==0 then
H=k
aB=bz
else
bd,bu=r(_[9],ac),L(_[8],N)if r(p[9],ac-as)+24<bu or L(p[9],N)+as>bd then
H=k
aB=bz
else
ac,N=bd,bu
end
end
end
end
z={N,ac}if bF then
if H~=at then
_=U(p,O(aB,H-at))p[1]=_[1]p[2]=_[2]end
return j
end
return H==at
end
function bk(n,w,ar)J=v(w,n)b_=G(w,ar)+90
bq=b_-G(n,w)bg=-J*bs(bq)bb=J*ae(bq)aC=b_
if bb<0 then
aC=aC+K
end
if bg<0 then
return J,G(n,w)elseif bg>v(ar,w)then
return v(ar,n),G(n,ar)else
return abs(bb),aC
end
end
function am(n,w,aL,A,_)aW=v(n,w)aK=aW
aH=j
R,ay=exp(n)bH,bG=exp(w)aM,aA=exp(sub(w,n))al,br=n[9]+32,w[9]+32
t=g
for b,_ in u(a[2])do
aX=a[4][_[1]]aZ,bj=exp(sub(a[4][_[2]],aX))aY,be=exp(sub(n,aX))bo=bj*aM-aZ*aA
P=(aZ*be-bj*aY)/bo
bh=(aM*be-aA*aY)/bo
if I(P,0,1)==P and I(bh,0,1)==bh then
bE={R+(P*aM),ay+(P*aA)}k=v(n,bE)C=al+(br-al)*(k/aW)if I(C,_[8],_[9])~=C then
aH=g
if aL==1 then
return g
end
if k<aK then
aK=k
bc,bx=exp(bE)bA=C
V=b
end
end
end
end
if aL>1 then
if aL==3 then
for b,_ in u(a[1])do
if _ and b~=A then
e=a[15][_[4]]if e[23]&1>0 and _[20]then
k=v(n,_)if k<aK then
P=bk(_,n,w)J=(k/aW)C=al+(br-al)*J
if I(C,_[9],_[9]+e[19])==C and P<e[18]then
t=j
aH=g
bc=R+(bH-R)*J
bx=ay+(bG-ay)*J
bA=C
V=b
end
end
end
end
end
end
return aH,V,{bc,bx,bA}end
return j
end
function httpReply(c,i,ae)bp=ak//2
ak=0
end
function X()aN=aN%256+1
return a[13][1][aN]end
function aT(_,b)e=a[15][_[4]]if e[23]&2>0 and _[7]>0 then
_[8]=_[8]-(b+1)//2
_[7]=_[7]-b//2+r(_[8],0)_[8]=L(_[8],0)if X()<e[10]then
_[6]=e[9]_[15]=0
_[23]=f
_[10]=j
end
end
end
function bf(c,i,ap)return i[20]and abs(((G(c,i)-c[3]+K)%360)-K)<ap and am(c,i,1)end
function by(E,A)bi=aa and(aa[9]-E[9])*o[6]/v(aa,E)or 0
for b=1,o[12]do
c={}for b=1,30 do
c[b]=E[b]end
c[4]=o[8]c[10]=j
c[14]=A
bt=(X()/Q-1)*o[10]aS=O(E[3]+bt,o[6])if o[7]>0then
a[1][#a[1]+1]=c
e=a[15][c[4]]c[6]=e[3]c[9]=E[9]+32
c[11]=aS[1]c[12]=aS[2]c[17]=Y
c[19]=bi
else
d=U(E,aS)d[9]=f[9]+bi
aD,aq,d=am(E,d,3,A)if not aD then
bm=sub(d,O(E[3]+bt,1))a[1][#a[1]+1]=c
c[1]=bm[1]c[2]=bm[2]c[6]=a[15][c[4]][3]c[9]=d[3]c[19]=1
if t then
c=a[1][aq]aT(c,o[9]*((X()&3)+2))end
end
end
end
end
function aO(_,d)if d>-1 then
c=a[9][d]if c[1]==0 and f[11]*_[10][2]-f[12]*_[10][1]>0
then
return
end
e=a[8][c[1]]ad[e and e[9]or#ad+1]={d,1}_[4]=c[7]c=c[8]>0 and aO(_,c[8])else
aQ=j
T(2,j)end
end
function onTick()T(9,ai(32))T(2,g)T(3,g)for x=1,3 do
if ai(32)and(not ao)or not a[21]then
aP=property.getText(aF..bJ)if aP~=bJ then
b=1
h=bJ
_=bC(aP,b,b)while h.._~=bJdo
if _==","or _==bJthen
h=h+0
if l==1then
V=h
if a[h]==bn then
a[h]={}end
l=2
elseif l==2then
C=h
Z=0
l=3
elseif l==3then
aR=h
l=4
else
if Z==0then
Z=C
aR=aR-1
aJ={}a[V][#a[V]+1]=aJ
end
aJ[#aJ+1]=h
Z=Z-1
if L(Z,aR)==0then
l=1
end
end
h=bJ
else
h=h.._
end
b=b+1
_=bC(aP,b,b)end
aF=aF+1
else
ao=j
end
end
end
if ao then
if aQ then
ad,aQ={}ab=1
for b=1,10 do
a[b]=a[b+10*aG]end
for b=14,16 do
a[12][1][b]=0
end
aG=aG+1
for b,_ in u(a[1])do
for x=7,20 do
_[x]=0
end
_[7]=a[15][_[4]][4]_[9],_[10]=aU(#a[7],_)[1]if _[4]==1 then
if f then
_[7]=f[7]_[8]=f[8]end
D=b
f=_
elseif _[5]&ax<1then
a[1][b]=g
end
end
bD=a[10][1][3]end
for b,_ in u(a[2])do
if _[3]&4>0 then
e,y=a[8][a[3][_[6]][6]],a[8][a[3][_[7]][6]]_[8]=L(e[1],y[1])_[9],e[9],y[9]=r(e[2],y[2])_[10]=sub(a[4][_[2]],a[4][_[1]])else
_[8],_[9]=0,0
end
end
q={}for b=1,32 do
q[b]=0
end
S=r(S+1/bp,2/35)T(1,S>=0)if S>=0 then
S=S-1/35
for b=2,#a[10]do
a[10][b][0]={}end
for b,s in u(ad)do
_=a[9][s[1]]d=a[8][_[1]]or f
e=d[_[2]]if abs(e-_[3])<.1then
ad[b]=s[2]==_[5]and{_[6],1}or{s[1],s[2]+1}if _[6]==0 then
bB(ad,b)end
else
d[8]=d[8]or e~=s
d[_[2]]=I(_[3],e-_[4],e+_[4])end
d[9]=b
end
for b,_ in u(a[1])do
if _ then
for x,s in u({1,2,9})do
_[s]=_[s]+_[s+10]end
_[15]=_[15]+1
e=a[15][_[4]]if _[7]<=0 and _[20]then
_[15]=0
_[6]=e[_[7]<=-e[4]and e[15]>1 and 15or 14]_[10],_[20]=j
if e[27]>0 then
d={}for x=1,30 do
d[x]=_[x]end
d[4]=e[27]d[6]=e[28]a[1][#a[1]+1]=d
end
end
aI=a[16][_[6]]if _[15]>=aI[2]and aI[2]~=-1then
_[6]=aI[4]_[15]=0
ag=a[16][_[6]][3]if ag==1 then
for b,l in u(a[1])do
if l then
h=Q-v(_,l)if h>0 then
aT(l,h)end
end
end
elseif ag==2then
if bf(_,f,90)then
_[23]=f
_[6]=e[5]end
elseif ag==3then
ap=an(G(_,_[23])/45+.5)*45
t=g
l=1
while l<5 and not t do
h=U(_,O(ap+a[19][2][l],8))h[9]=_[9]l=l+1
t=av(h,g,b)and z[1]>=h[9]-24
end
if t then
_[1]=h[1]_[2]=h[2]_[3]=ap
_[10]=j
else
av(_,g,b)end
if e[23]&4<1 then
_[9]=z[1]end
c=v(_,_[23])if e[13]>0 and am(_,_[23],1)and r(c,230)<X()then
_[6]=e[13]end
if c<64 and e[12]>0then
_[6]=e[12]end
elseif ag>9then
_[3]=G(_,_[23])o=a[14][ag]_[10]=j
aa=_[23]by(_,b)end
end
if _[17]and _[17]>0then
o=a[14][_[17]]if not av(_,g,b)or _[9]<=z[1]then
if az then
aT(az,e[21]*((X()&7)+1))end
_[1]=_[1]-_[11]_[2]=_[2]-_[12]_[3]=0
_[6]=a[15][_[4]][9]_[10]=j
_[11]=0
_[12]=0
_[17]=bn
_[19]=0
end
end
if _[6]==1then
a[1][b]=g
else
af=sub(_,a[10][1])M=a[10][2+af[1]//Q+af[2]//Q*bD]if M~=bn then
M[0][#M[0]+1]=b
end
end
end
end
for b=1,8 do
if ai(b)and a[12][1][b+4]>0then
Y=b
end
end
o=a[14][Y]f[3]=f[3]-aj(3)*(I(aE,5,6)*1.5-6)aE=abs(aj(3))*aE+1
W=f
for b=1,2 do
W=U(W,O(f[3]-K+90*b,aj(b)*8.33))end
W[9]=f[9]for b=1,8 do
t=av(W,j,D,b)end
if t then
for b=1,2 do
f[b]=W[b]end
if f[9]<=z[1]then
f[9]=r(z[1],f[9]+4)f[19]=L(0,f[19])else
if f[9]>=z[2]-56then
f[9]=z[2]-56
f[19]=r(0,f[19])end
f[19]=f[19]-1
end
end
aV=a[12][1]d=o[1]if ai(31)and ah<=0 and(d==0 or aV[d]>=o[2])then
T(3,j)ah=o[3]if d>0then
aV[d]=aV[d]-o[2]end
bw,aa=2048
for b,_ in u(a[1])do
if b~=D and _ and bf(f,_,10)then
k=v(_,f)if k<bw then
if a[15][_[4]][23]&2>0then
aa=_
bw=k
end
end
end
end
by(f,D)end
ah=ah-1
if aj(4)<0 then
_=U(f,O(f[3],64))_[9]=f[9]aD,aq=am(f,_,2,D)_=a[2][aq]if aD==g then
q[2]=aq
d,t=_[4]for b=14,16 do
t=t or a[12][1][b]>0 and d==b
end
if d==1 or t then
aO(_,_[5])elseif d>3000 and d<3005then
ax=an(d-3000)end
end
end
end
q[1]=Y
for b=3,8 do
q[b]=f[a[19][4][b]]end
q[5]=D
q[13]=f[3]b=ab
ba=j
F=1
aw=#a[1]+#a[8]while F<3 and ba do
d=F*9+5
if b<=#a[1]then
_=a[1][b]if b~=D then
if _ then
if _[10]then
_[10]=g
q[d]=b
for x=1,8 do
q[d+x]=_[a[19][1][x]]end
F=F+1
end
else
q[d]=-b
bB(a[1],b)F=F+1
aw=aw-1
end
end
else
_=a[8][b-#a[1]]if _[8]then
_[8]=g
q[d]=b-#a[1]+2^15
q[d+1]=_[1]q[d+2]=_[2]F=F+1
end
end
b=((b-2)%aw)+1
ab=r(ab,aw)ba=b~=ab
end
ab=b
for b=1,32 do
bl.setNumber(b,q[b])end
end
ak=ak+1
async.httpGet(8,bJ)end
function onDraw()au=screen.drawText
au(26,137,bp)if ao then
for b=1,4 do
c=124+b*7
au(240,c,an(a[12][1][b]))au(230,c,a[12][1][13+b])end
au(26,143,r(ax,3))end
end
