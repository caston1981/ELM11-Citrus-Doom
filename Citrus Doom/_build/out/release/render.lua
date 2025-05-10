cP=""

Q=180
bZ=screen
aL=ipairs
bP=table
bG=input
v=math
y=v.max
q=v.min
C=v.abs
ad=v.floor
ceil=v.ceil
sqrt=v.sqrt
I=bG.getNumber
bs=bG.getBool
pi=v.pi
K=false
J=true
be=string
function bj(c,k)return c[1]*k[2]-c[2]*k[1]end
function sub(c,k)return{(c[1]-k[1]),(c[2]-k[2])}end
function br(c)return((c+Q)%360)-Q end
function sin(c)return v.sin(c/Q*pi)end
function cos(c)return v.cos(c/Q*pi)end
function tan(c)return v.tan(c/Q*pi)end
function cM(c)return v.atan(c)*Q/pi end
function aE(c)return v.atan(c[2],c[1])*Q/pi end
function bh(c,k,_)return q(y(k,c),_)end
function aB(c)return ad(c+.5)end
function bv(c,k)return sqrt(((c[1]-k[1])^2)+((c[2]-k[2])^2))end
function bf(c)c=c-1
c=c|(c>>1)c=c|(c>>2)c=c|(c>>4)return c+1
end
b={}bq=1
az=3
aW=K
as=J
g={{0,0},0,0}M=288
x=M//2
aj=128
s=aj//2
aH={}aR=400
bH=100
cL=0
at={}aX=32768
bE=3002
bB=0
aG=0
aQ=0
bl=1.2
L=52
N=tan(L)aJ=s*bl*M/aj/N
ac=1
bF={}for a=-x,x do bF[a]=aE({1,a/x*N})end
function bd(a)if a<aX then
local t,bo=b[7][a]bo=0<bj({t[3],t[4]},sub(g[1],t))and 8 or 7
bd(t[bo])bd(t[15-bo])else
am[#am+1]=a-aX
end
end
function aU(a,c)if a<aX then
t=b[7][a]return aU(t[0<bj({t[3],t[4]},sub(c,t))and 8 or 7],c)else
return a-aX
end
end
function bg(c)t=b[5][b[6][c][2]]return b[3][b[2][t[4]][t[5]+6]][6]end
function onTick()bc=0
for m=1,3 do
if bs(9)and(not aW)or not b[21]then
bA=property.getText(bq..cP)if bA~=cP then
a=1
z=cP
_=be.sub(bA,a,a)while _~=cPdo
k=be.byte(_)if k>64 or _==cPthen
z=(z..(k-65))+0
if ac==1then
bN=z
if b[z]==cN then
b[z]={}end
ac=2
elseif ac==2then
cJ=z
au=0
ac=3
elseif ac==3then
bx=z
ac=4
else
if au==0then
au=cJ
bx=bx-1
al={}b[bN][#b[bN]+1]=al
end
al[#al+1]=z
au=au-1
if y(au,bx)==0then
ac=1
end
end
z=cP
else
z=z.._
end
a=a+1
_=be.sub(bA,a,a)end
bq=bq+1
else
aW=J
end
end
end
if aW then
if I(9)>0 then
as=J
az=I(9)end
if bH>0 and not as then
ah={}at[#at+1]=ah
an=5
_=I(an)while _~=0 do
Z={}ah[#ah+1]=Z
for a=0,8 do
Z[a+1]=I(an+a)end
an=an+9
_=I(an)end
end
if bs(1)then
c_=0
bb=I(1)bH=I(3)aQ=aQ+1
bS=aQ//10
if as then
for a=1,10 do
b[a]=b[a+10*az]end
for a=1,#b[8]do
b[8][a][5]=b[8][a][5]/255
end
az=az+1
end
if I(2)>0 then
_=b[2][I(2)]if _ then
c=_[4]if c==3008 then
bM=_[5]==1
elseif c>3004 then
aR=y(aR+3*(_[4]-3006),1)elseif c>3000 then
bE=_[4]end
c_=I(2)end
end
if bs(3)and bb~=1 and bb~=3 then
aD=.1
aG=bb==5 and 5 or 3
else
aG=aG-1
if aG<1then
aD=0
end
end
for a=1,#at do
ah=at[a]for m=1,#ah do
Z=ah[m]_=Z[1]if _>(2^15)then
_=b[8][_-(2^15)]_[1]=Z[2]_[2]=Z[3]elseif _<0 then
while-_>#b[1]do
b[1][#b[1]+1]=K
end
bP.remove(b[1],-_)else
if not b[1][_]then
b[1][_]={}end
_=b[1][_]for i=1,8 do
_[b[19][1][i]]=Z[i+1]end
_[15]=0
_[7]=aU(#b[7],_)_[8]=bg(_[7])end
end
end
at={}for a=1,#b[6]do
aH[a]={}end
for a=1,#b[1]do
_=b[1][a]if _ then
if as then
_[7]=aU(#b[7],_)_[8]=bg(_[7])_[9]=b[8][_[8]][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
if _[4]==1 then
cq=a
end
end
bu=0
for m,d in aL({1,2,9})do
_[d]=_[d]+_[d+10]bu=bu+_[d+10]end
if bu~=0then
_[7]=aU(#b[7],_)_[8]=bg(_[7])end
_[15]=_[15]+1
_[20]=bv(_,g[1])R=b[16][_[6]]if R~=nil then
if _[15]>=R[2]and R[2]~=-1 then
_[6]=R[4]_[15]=0
end
end
aH[_[7]][#aH[_[7]]+1]=a
end
end
as=K
_=b[1][cq]g[1]={_[1],_[2]}g[2]=_[9]+41
g[3]=_[3]am={}bd(#b[7])aK={}r={}aI={}aT={}aa={}ab={}aV={}bi=M
for a=0,M-1 do
aK[a],aa[a],ab[a]=#b[6]+2,s+1,-s
end
a=1
while a<=#am and bi>0 do
_=b[6][am[a]]aI[a]={}aT[a]={}r[a]={}aV[a]=aH[am[a]]bP.sort(aV[a],function(c,k)return b[1][c][20]>b[1][k][20]end)for m=_[2],_[1]+_[2]-1 do
W=b[5][m]D=b[2][W[4]]bR,cb=b[4][W[1]],b[4][W[2]]b_,bO=sub(bR,g[1]),sub(cb,g[1])bD=aE(b_)H,aZ=br(bD-g[3]),br(aE(bO)-g[3])if C(H)<90 or C(aZ)<90 then
ae,ag=bh(H,-L,L),bh(aZ,-L,L)if C(H)>=90 or C(aZ)>=90 then
bI=bj(b_,bO)if C(H)>=90 then
if bI>0 then ae=-L else ae=L end
else
if bI<0 then ag=-L else ag=L end
end
end
n,l=aB(tan(ae)/N*x),aB(tan(ag)/N*x)if n~=l then
p,ay=bv(g[1],bR),bv(g[1],cb)aY=W[3]+90
bX=aY-bD
cI=p*sin(bX)aF=(p*cos(bX))if H~=ae then
p=aF/cos(aY-(ae+g[3]))end
if aZ~=ag then
ay=aF/cos(aY-(ag+g[3]))end
p,ay=p*cos(ae),ay*cos(ag)i=W[5]+6
cp=(n>l)if cp and D[i]~=0 then
ao=D[3]&4>0
if ao then
V,Y=b[8][b[3][D[6]][6]],b[8][b[3][D[7]][6]]end
ai=b[3][D[i]]cA={ai[3],ai[4],ai[5]}G,ca,cc=b[8][ai[6]]for j,d in aL(cA)do
ax=d>0
aC=J
if(ax or(j==3 and not(ca and cc)))and(j==3 or ao)then
cg=K
bY=0
if j<3 then
cg=j==1 and y(V[4],Y[4])==0
A,w=V[3-j],Y[3-j]aC=(A<w)~=(j==2)~=(i==6)and A~=w and V~=Y
A,w=q(A,w),y(A,w)if aC then
if j==1then
ca=J
else
cc=J
bY=D[3]&16>0 and y(V[2],Y[2])-w or 0
end
end
else
if ao then
A,w=y(V[1],Y[1]),q(V[2],Y[2])aC=V~=Y
else
A,w=G[1],G[2]end
end
A,w=A-g[2],w-g[2]cj,ch=A*aJ,w*aJ
if(aC or ax)and not cg then
bz=W[6]-ai[1]if D[4]==48 then
bz=bz-aQ
end
cr,cE=cj/p,ch/p
cG,cu=cj/ay,ch/ay
bT=0
aA=K
if ax then
_=b[21][d][4]if(W[4]==c_ or bE==D[4])and _>0then
d=_
end
av=b[21][d][3]u=1
if(j==3 and D[3]&16>0)or(j==1 and D[3]&8==0)then
u=-1
end
end
for i=n,l,-1 do
ct=bF[i]aO=(aY-g[3])-ct
f=x-i
bK=K
if f>=0 and f<=M-1 then
if a<aK[f]then
aS=(i-n)/(l-n)E,F=(cr*(1-aS)+cG*aS),(cE*(1-aS)+cu*aS)if C(F+E)-(F-E)<aj then
if ax then
if E~=F then
bK=J
cm=aF*tan(aO)O=q(((C(cm)+C(aF))//aR)+1,4)bw=q(bf(ad(O/cos(aO))),16)O=bf(O)bm=ad((y(cm-cI,0)-bz)/(av*bw))*bw
cf={f,s-E,s-F,d,bm,w-A,G[5],ai[2]+bY,J,av*O,O,u,not aA,j==3 and ao}if bm>bT or(not aA)or i==l then
bT=bm-1+bw
aA=J
r[a][#r[a]+1]=cf
end
cy=cf
end
end
if aC then
if j~=2 then
if F<aa[f]then
aT[a][#aT[a]+1]={f,y(F,ab[f]),aa[f],G}end
if j==3then T=F else T=E end
if aa[f]>T then aa[f]=T end
end
if j~=1 then
if E>ab[f]then
aI[a][#aI[a]+1]={f,ab[f],q(E,aa[f]),G}end
if j==3then T=E else T=F end
if ab[f]<T then ab[f]=T end
end
if(aa[f]<=ab[f])or(j==3 and(not ao)and ax)then
aK[f]=a
bi=bi-1
end
end
end
end
end
if(not bK)and aA then
aA=K
r[a][#r[a]+1]=cy
r[a][#r[a]][9]=K
end
end
if#r[a]>0 then
r[a][#r[a]][9]=K
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
function onDraw()aN=bZ
local ck,bk,af,cO=aN.drawTriangleF,aN.drawRectF,aN.setColor,aN.drawText
bc=bc+1
cz={aI,aT}if bc<=1 then
if aW then
e=b[24][b[19][8][az-3]]X,ap=e[1],e[2]B=M/ceil(X*N)bL=B*1
for a=0,ceil(X*N),1 do
n=(X/2-a-1+g[3]/90*X)%X
l=(n%1-1)*B
n=ad(n)*ap
for m=0,ap-1,1 do
S=e[5+m+n]h=b[20][S]af(h[1],h[2],h[3])bk(a*B+l,m*B,bL,bL)end
end
for a=#r,1,-1 do
for m=1,#r[a]do
d=r[a][m]if d[9]or d[13]then
if d[9]then
P=r[a][m+1]else
P=d
end
e=b[21][d[4]]e=b[21][d[4]+(bS%e[5])]u=d[12]U=q(u,0)f=d[1]l=P[1]bU=d[2-U]cH=P[2-U]i=d[3+U]bC=P[3+U]if not P[9]then l=l+1 end
o=q(d[7]+aD,1)^2.2
cx=u*(d[2]-d[3])*d[10]/d[6]cK=u*(P[2]-P[3])*d[10]/P[6]al=u>0 and q or y
by=0
while i*u<bU*u and(by<e[2]or not d[14])do
bJ=al(i+cx,bU)bp=al(bC+cK,cH)S=e[7+((U*d[11]+d[8]//e[3])%e[2])+e[2]*(d[5]%e[1])]h=b[20][S]if h then
af(h[1]*o,h[2]*o,h[3]*o)ck(f,i,f,bJ,l,bp)ck(f,i,l,bC,l,bp)end
i=bJ
bC=bp
U=U+u
by=by+d[11]end
end
end
for c=1,2 do
_=cz[c]bV={}aw,ar,bt=aj,-aj
for m,d in aL(_[a])do
aw=q(aw,d[2])ar=y(ar,d[3])bt=d
e=b[22][d[4][c+2]]if e and not bM then
h=b[20][e[5]]af(h[1]*o,h[2]*o,h[3]*o)bZ.drawLine(f,-d[2]+s,f,-d[3]+s)end
end
if bt and bM then
G=bt[4]cv=(G[c]-g[2])bn=cos(g[3])ba=sin(g[3])for aq=ad(aw+s),ceil(ar+s)do
ak=aJ*cv/(s-aq)cl=bn*ak-g[1][1]ce=ba*ak-g[1][2]bQ=-ba*ak+cl
cd=bn*ak+ce
cs=ba*ak+cl
cB=-bn*ak+ce
cF=(cs-bQ)/M
cn=(cB-cd)/M
bV[aq]={cF,cn,bQ,cd}end
for m,d in aL(_[a])do
if G[c+2]~=0 then
o=q(G[5]+aD,1)^2.2
k=G[c+2]e=b[22][k]e=b[22][k+(bS%e[4])]f=d[1]ci=x-(x-f)*N
aw,ar=ad(d[2]+s),ceil(d[3]+s)av=e[3]for aq=aw,ar do
aP=bV[aq]cw=(aP[3]+aP[1]*ci)//av
co=(aP[4]+aP[2]*ci)//av
S=6+(co%e[1])+e[1]*(cw%e[2])h=b[20][e[S]]if h then
af(h[1]*o,h[2]*o,h[3]*o)bk(f,-aq+aj,1,1)end
end
end
end
end
end
for m=1,#aV[a]do
_=b[1][aV[a][m]]if _[6]~=0 then
b_=sub(_,g[1])p=_[20]if p>1 then
H=br(aE(b_)-g[3])p=p*cos(H)if C(H)<90 then
n=x-aB(tan(H)/N*x)aO=aB((Q+H+g[3]-_[3])/360*8)R=b[16][_[6]][1]if R~=0 and _[6]~=1 then
e=b[17][C(R)][aO%8+1]u=e<0 and-1 or 1
e=C(e)if e>0 then
e=b[23][e]X,ap=e[1],e[2]O=q(bf(p//aR+1),8)B=x/(N*p)aM=B*bl
E=s+(g[2]-_[9])/p*aJ
F=E-e[5]*aM
l=n-u*e[4]*B
B,aM=B*e[3],aM*e[3]o=R>0 and q(b[8][_[8]][5]+aD,1)^2.2 or 1
bW=B*O
cC=bW*bl
cD=_[4]and b[15][_[4]][23]&8>0
for i=0,X-1,O do
n=l+i*B*u
if a<=aK[bh(aB(n),0,M-1)]then
for j=0,ap-1,O do
S=e[7+j+i*ap]if S~=0 then
if cD then
bB=bB%50+1
af(0,0,0,q(75*b[13][2][bB],255))else
h=b[20][S]af(h[1]*o,h[2]*o,h[3]*o)end
bk(n,F+j*aM,bW,cC)end
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
