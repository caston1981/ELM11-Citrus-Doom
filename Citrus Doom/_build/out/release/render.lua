cP=""

S=180
bU=screen
aQ=ipairs
cl=table
bL=input
v=math
C=v.max
n=v.min
w=v.abs
af=v.floor
ceil=v.ceil
sqrt=v.sqrt
H=bL.getNumber
bg=bL.getBool
pi=v.pi
O=false
I=true
ba=string
function bA(c,u)return c[1]*u[2]-c[2]*u[1]end
function sub(c,u)return{(c[1]-u[1]),(c[2]-u[2])}end
function bf(c)return((c+S)%360)-S end
function sin(c)return v.sin(c/S*pi)end
function cos(c)return v.cos(c/S*pi)end
function tan(c)return v.tan(c/S*pi)end
function cN(c)return v.atan(c)*S/pi end
function aP(c)return v.atan(c[2],c[1])*S/pi end
function bu(c,u,_)return n(C(u,c),_)end
function aw(c)return af(c+.5)end
function bB(c,u)return sqrt(((c[1]-u[1])^2)+((c[2]-u[2])^2))end
function bi(c)c=c-1
c=c|(c>>1)c=c|(c>>2)c=c|(c>>4)return c+1
end
b={}bs=1
am=3
aX=O
an=I
g={{0,0},0,0}P=288
y=P//2
ag=128
t=ag//2
aR={}aS=400
bW=100
cM=0
aB={}aT=32768
bD=3002
bj=0
aJ=0
ca=I
bb=0
bk=1.2
K=52
L=tan(K)aY=t*bk*P/ag/L
W=1
cc={}for a=-y,y do cc[a]=aP({1,a/y*L})end
function bt(a)if a<aT then
local r,bo=b[7][a]bo=0<bA({r[3],r[4]},sub(g[1],r))and 8 or 7
bt(r[bo])bt(r[15-bo])else
ao[#ao+1]=a-aT
end
end
function aF(a,c)if a<aT then
r=b[7][a]return aF(r[0<bA({r[3],r[4]},sub(c,r))and 8 or 7],c)else
return a-aT
end
end
function bq(c)r=b[5][b[6][c][2]]return b[3][b[2][r[4]][r[5]+6]][6]end
function onTick()b_=0
for l=1,3 do
if bg(9)and(not aX)or not b[21]then
bp=property.getText(bs..cP)if bp~=cP then
a=1
B=cP
_=ba.sub(bp,a,a)while _~=cPdo
bT=ba.byte(_)if bT>64 or _==cPthen
B=(B..(bT-65))+0
if W==1then
bV=B
if b[B]==cL then
b[B]={}end
W=2
elseif W==2then
cA=B
az=0
W=3
elseif W==3then
be=B
W=4
else
if az==0then
az=cA
be=be-1
ad={}b[bV][#b[bV]+1]=ad
end
ad[#ad+1]=B
az=az-1
if C(az,be)==0then
W=1
end
end
B=cP
else
B=B.._
end
a=a+1
_=ba.sub(bp,a,a)end
bs=bs+1
else
aX=I
end
end
end
if aX then
if H(9)>0 then
an=I
am=H(9)end
if bW>0 and not an then
ai={}aB[#aB+1]=ai
aq=5
_=H(aq)while _~=0 do
T={}ai[#ai+1]=T
for a=0,8 do
T[a+1]=H(aq+a)end
aq=aq+9
_=H(aq)end
end
if bg(1)then
bS=0
bn=H(1)bW=H(3)bb=bb+1
if an then
for a=1,10 do
b[a]=b[a+10*am]end
for a=1,#b[8]do
b[8][a][5]=b[8][a][5]/255
end
am=am+1
end
if H(2)>0 then
_=b[2][H(2)]if _ then
if _[4]>3004 then
aS=C(aS+3*(_[4]-3006),1)elseif _[4]>3000 then
bD=_[4]end
bS=H(2)end
end
if bg(3)and bn~=1 and bn~=3 then
aU=.1
aJ=bn==5 and 5 or 3
else
aJ=aJ-1
if aJ<1then
aU=0
end
end
for a=1,#aB do
ai=aB[a]for l=1,#ai do
T=ai[l]_=T[1]if _>(2^15)then
_=b[8][_-(2^15)]_[1]=T[2]_[2]=T[3]elseif _<0 then
while-_>#b[1]do
b[1][#b[1]+1]=O
end
cl.remove(b[1],-_)else
if not b[1][_]then
b[1][_]={}end
_=b[1][_]for i=1,8 do
_[b[19][1][i]]=T[i+1]end
_[15]=0
_[7]=aF(#b[7],_)_[8]=bq(_[7])end
end
end
aB={}for a=1,#b[6]do
aR[a]={}end
for a=1,#b[1]do
_=b[1][a]if _ then
if an then
_[7]=aF(#b[7],_)_[8]=bq(_[7])_[9]=b[8][_[8]][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
if _[4]==1 then
cq=a
end
end
bc=0
for l,d in aQ({1,2,9})do
_[d]=_[d]+_[d+10]bc=bc+_[d+10]end
if bc~=0then
_[7]=aF(#b[7],_)_[8]=bq(_[7])end
_[15]=_[15]+1
_[20]=bB(_,g[1])M=b[16][_[6]]if M~=nil then
if _[15]>=M[2]and M[2]~=-1 then
_[6]=M[4]_[15]=0
end
end
aR[_[7]][#aR[_[7]]+1]=a
end
end
an=O
_=b[1][cq]g[1]={_[1],_[2]}g[2]=_[9]+41
g[3]=_[3]ao={}bt(#b[7])aN={}q={}aD={}aO={}V={}ac={}aL={}bm=P
for a=0,P-1 do
aN[a],V[a],ac[a]=#b[6]+2,t+1,-t
end
a=1
while a<=#ao and bm>0 do
_=b[6][ao[a]]aD[a]={}aO[a]={}q[a]={}aL[a]=aR[ao[a]]cl.sort(aL[a],function(c,u)return b[1][c][20]>b[1][u][20]end)for l=_[2],_[1]+_[2]-1 do
Y=b[5][l]J=b[2][Y[4]]bN,bM=b[4][Y[1]],b[4][Y[2]]aK,bE=sub(bN,g[1]),sub(bM,g[1])bR=aP(aK)D,aE=bf(bR-g[3]),bf(aP(bE)-g[3])if w(D)<90 or w(aE)<90 then
ae,al=bu(D,-K,K),bu(aE,-K,K)if w(D)>=90 or w(aE)>=90 then
bQ=bA(aK,bE)if w(D)>=90 then
if bQ>0 then ae=-K else ae=K end
else
if bQ<0 then al=-K else al=K end
end
end
m,k=aw(tan(ae)/L*y),aw(tan(al)/L*y)if m~=k then
p,aC=bB(g[1],bN),bB(g[1],bM)aZ=Y[3]+90
ch=aZ-bR
cH=p*sin(ch)aM=(p*cos(ch))if D~=ae then
p=aM/cos(aZ-(ae+g[3]))end
if aE~=al then
aC=aM/cos(aZ-(al+g[3]))end
p,aC=p*cos(ae),aC*cos(al)i=Y[5]+6
cI=(m>k)if cI and J[i]~=0 then
ap=J[3]&4>0
if ap then
Z,ab=b[8][b[3][J[6]][6]],b[8][b[3][J[7]][6]]end
aj=b[3][J[i]]cE={aj[3],aj[4],aj[5]}E,bX,bH=b[8][aj[6]]for j,d in aQ(cE)do
at=d>0
ay=I
if(at or(j==3 and not(bX and bH)))and(j==3 or ap)then
bF=O
bY=0
if j<3 then
bF=j==1 and C(Z[4],ab[4])==0
z,x=Z[3-j],ab[3-j]ay=(z<x)~=(j==2)~=(i==6)and z~=x and Z~=ab
z,x=n(z,x),C(z,x)if ay then
if j==1then
bX=I
else
bH=I
bY=J[3]&16>0 and C(Z[2],ab[2])-x or 0
end
end
else
if ap then
z,x=C(Z[1],ab[1]),n(Z[2],ab[2])ay=Z~=ab
else
z,x=E[1],E[2]end
end
z,x=z-g[2],x-g[2]cm,bO=z*aY,x*aY
if(ay or at)and not bF then
bd=Y[6]-aj[1]if J[4]==48 then
bd=bd-bb
end
cv,cz=cm/p,bO/p
cF,cy=cm/aC,bO/aC
bJ=0
aA=O
if at then
_=b[21][d][4]if(Y[4]==bS or bD==J[4])and _>0then
d=_
end
as=b[21][d][3]s=1
if(j==3 and J[3]&16>0)or(j==1 and J[3]&8==0)then
s=-1
end
end
for i=m,k,-1 do
co=cc[i]aW=(aZ-g[3])-co
f=y-i
c_=O
if f>=0 and f<=P-1 then
if a<aN[f]then
aG=(i-m)/(k-m)F,G=(cv*(1-aG)+cF*aG),(cz*(1-aG)+cy*aG)if w(G+F)-(G-F)<ag then
if at then
if F~=G then
c_=I
ci=aM*tan(aW)N=n(((w(ci)+w(aM))//aS)+1,4)bv=n(bi(af(N/cos(aW))),16)N=bi(N)bh=af((C(ci-cH,0)-bd)/(as*bv))*bv
cf={f,t-F,t-G,d,bh,x-z,E[5],aj[2]+bY,I,as*N,N,s,not aA,j==3 and ap}if bh>bJ or(not aA)or i==k then
bJ=bh-1+bv
aA=I
q[a][#q[a]+1]=cf
end
cu=cf
end
end
if ay then
if j~=2 then
if G<V[f]then
aO[a][#aO[a]+1]={f,C(G,ac[f]),V[f],E}end
if j==3then X=G else X=F end
if V[f]>X then V[f]=X end
end
if j~=1 then
if F>ac[f]then
aD[a][#aD[a]+1]={f,ac[f],n(F,V[f]),E}end
if j==3then X=F else X=G end
if ac[f]<X then ac[f]=X end
end
if(V[f]<=ac[f])or(j==3 and(not ap)and at)then
aN[f]=a
bm=bm-1
end
end
end
end
end
if(not c_)and aA then
aA=O
q[a][#q[a]+1]=cu
q[a][#q[a]][9]=O
end
end
if#q[a]>0 then
q[a][#q[a]][9]=O
end
end
end
end
end
end
end
end
a=a+1
end
end
end
end
function onDraw()aI=bU
local bK,bw,ah,cO=aI.drawTriangleF,aI.drawRectF,aI.setColor,aI.drawText
b_=b_+1
cp={aD,aO}if b_<=1 then
if aX then
e=b[24][b[19][8][am-3]]aa,ax=e[1],e[2]A=P/ceil(aa*L)cb=A*1
for a=0,ceil(aa*L),1 do
m=(aa/2-a-1+g[3]/90*aa)%aa
k=(m%1-1)*A
m=af(m)*ax
for l=0,ax-1,1 do
Q=e[5+l+m]h=b[20][Q]ah(h[1],h[2],h[3])bw(a*A+k,l*A,cb,cb)end
end
for a=#q,1,-1 do
for l=1,#q[a]do
d=q[a][l]if d[9]or d[13]then
if d[9]then
R=q[a][l+1]else
R=d
end
e=b[21][d[4]]s=d[12]U=n(s,0)f=d[1]k=R[1]cd=d[2-U]cr=R[2-U]i=d[3+U]bl=R[3+U]if not R[9]then k=k+1 end
o=n(d[7]+aU,1)^2.2
cw=s*(d[2]-d[3])*d[10]/d[6]cx=s*(R[2]-R[3])*d[10]/R[6]ad=s>0 and n or C
br=0
while i*s<cd*s and(br<e[2]or not d[14])do
cg=ad(i+cw,cd)bz=ad(bl+cx,cr)Q=e[6+((U*d[11]+d[8]//e[3])%e[2])+e[2]*(d[5]%e[1])]h=b[20][Q]if h then
ah(h[1]*o,h[2]*o,h[3]*o)bK(f,i,f,cg,k,bz)bK(f,i,k,bl,k,bz)end
i=cg
bl=bz
U=U+s
br=br+d[11]end
end
end
for c=1,2 do
_=cp[c]ce={}av,ar,by=ag,-ag
for l,d in aQ(_[a])do
av=n(av,d[2])ar=C(ar,d[3])by=d
e=b[22][d[4][c+2]]if e and not ca then
h=b[20][e[4]]ah(h[1]*o,h[2]*o,h[3]*o)bU.drawLine(f,-d[2]+t,f,-d[3]+t)end
end
if by and ca then
E=by[4]cK=(E[c]-g[2])bC=cos(g[3])bx=sin(g[3])for au=af(av+t),ceil(ar+t)do
ak=aY*cK/(t-au)bP=bC*ak-g[1][1]bG=bx*ak-g[1][2]bZ=-bx*ak+bP
cj=bC*ak+bG
cJ=bx*ak+bP
cG=-bC*ak+bG
cn=(cJ-bZ)/P
ct=(cG-cj)/P
ce[au]={cn,ct,bZ,cj}end
for l,d in aQ(_[a])do
if E[c+2]~=0 then
o=n(E[5]+aU,1)^2.2
e=b[22][E[c+2]]f=d[1]ck=y-(y-f)*L
av,ar=af(d[2]+t),ceil(d[3]+t)as=e[3]for au=av,ar do
aH=ce[au]cD=(aH[3]+aH[1]*ck)//as
cC=(aH[4]+aH[2]*ck)//as
Q=5+(cC%e[1])+e[1]*(cD%e[2])h=b[20][e[Q]]if h then
ah(h[1]*o,h[2]*o,h[3]*o)bw(f,-au+ag,1,1)end
end
end
end
end
end
for l=1,#aL[a]do
_=b[1][aL[a][l]]if _[6]~=0 then
aK=sub(_,g[1])p=_[20]if p>1 then
D=bf(aP(aK)-g[3])p=p*cos(D)if w(D)<90 then
m=y-aw(tan(D)/L*y)aW=aw((S+D+g[3]-_[3])/360*8)M=b[16][_[6]][1]if M~=0 and _[6]~=1 then
e=b[17][w(M)][aW%8+1]if e==0 then
e=b[17][w(M)][1]end
s=e<0 and-1 or 1
e=w(e)if e>0 then
e=b[23][e]aa,ax=e[1],e[2]N=n(bi(p//aS+1),8)A=y/(L*p)aV=A*bk
F=t+(g[2]-_[9])/p*aY
G=F-e[5]*aV
k=m-s*e[4]*A
A,aV=A*e[3],aV*e[3]o=M>0 and n(b[8][_[8]][5]+aU,1)^2.2 or 1
bI=A*N
cB=bI*bk
cs=_[4]and b[15][_[4]][23]&8>0
for i=0,aa-1,N do
m=k+i*A*s
if a<=aN[bu(aw(m),0,P-1)]then
for j=0,ax-1,N do
Q=e[7+j+i*ax]if Q~=0 then
if cs then
bj=bj%50+1
ah(0,0,0,n(75*b[13][2][bj],255))else
h=b[20][Q]ah(h[1]*o,h[2]*o,h[3]*o)end
bw(m,G+j*aV,bI,cB)end
end
end
end
end
end
end
end
end
end
end
end
end
end
