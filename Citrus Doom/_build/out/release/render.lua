cp=""

Q=180
bB=screen
bk=ipairs
bu=table
by=nil
bL=input
bv=string.sub
w=math
E=w.max
q=w.min
x=w.abs
aI=w.floor
ceil=w.ceil
sqrt=w.sqrt
L=bL.getNumber
aB=bL.getBool
pi=w.pi
G=false
O=true
function aU(c,u)return c[1]*u[2]-c[2]*u[1]end
function sub(c,u)return{(c[1]-u[1]),(c[2]-u[2])}end
function b_(c)return((c+Q)%360)-Q end
function cos(c)return w.cos(c/Q*pi)end
function tan(c)return w.tan(c/Q*pi)end
function cm(c)return w.atan(c)*Q/pi end
function aE(c)return w.atan(c[2],c[1])*Q/pi end
function aN(c,u,_)return q(E(u,c),_)end
function al(c)return aI(c+.5)end
function bd(c,u)return sqrt(((c[1]-u[1])^2)+((c[2]-u[2])^2))end
function bi(c)c=c-1
c=c|(c>>1)c=c|(c>>2)c=c|(c>>4)return c+1
end
b={}bf=1
aD=3
aG=G
af=O
i={{0,0},0,0}R=288
J=R//2
bp=128
P=bp//2
aK={}aA=400
bA=100
cn=0
an={}aO=32768
bV=3002
br=0
aP=0
aZ=0
aT=1.2
I=52
S=tan(I)bo=P*aT*R/bp/S
ad=1
bR={}for a=-J,J do bR[a]=aE({1,a/J*S})end
function bq(a)if a<aO then
local r,aY=b[7][a]aY=0<aU({r[3],r[4]},sub(i[1],r))and 8 or 7
bq(r[aY])bq(r[15-aY])else
ap[#ap+1]=a-aO
end
end
function aR(a,c)if a<aO then
r=b[7][a]return aR(r[0<aU({r[3],r[4]},sub(c,r))and 8 or 7],c)else
return a-aO
end
end
function bc(c)r=b[5][b[6][c][2]]return b[3][b[2][r[4]][r[5]+6]][6]end
function onTick()bh=0
for n=1,3 do
if aB(9)and(not aG)or not b[21]then
ba=property.getText(bf..cp)if ba~=cp then
a=1
s=cp
_=bv(ba,a,a)while _~=cpor s~=cpdo
if _==","or _==cpthen
s=s+0
if ad==1 then
bS=s
if b[s]==by then
b[s]={}end
ad=2
elseif ad==2 then
ci=s
ao=0
ad=3
elseif ad==3 then
be=s
ad=4
else
if ao==0 then
ao=ci
be=be-1
ak={}b[bS][#b[bS]+1]=ak
end
ak[#ak+1]=s
ao=ao-1
if E(ao,be)==0 then
ad=1
end
end
s=cp
else
s=s.._
end
a=a+1
_=bv(ba,a,a)end
bf=bf+1
else
aG=O
end
end
end
if aG then
af=af or aB(2)if bA>0 and not af then
ag={}an[#an+1]=ag
as=5
_=L(as)while _~=0 do
W={}ag[#ag+1]=W
for a=0,8 do
W[a+1]=L(as+a)end
as=as+9
_=L(as)end
end
if aB(1)then
bG=0
bm=L(1)bA=L(3)aZ=aZ+1
if af then
for a=1,10 do
b[a]=b[a+10*aD]end
aD=aD+1
end
if L(2)>0 then
_=b[2][L(2)]if _ then
if _[4]>3004 then
aA=E(aA+3*(_[4]-3006),1)elseif _[4]>3000 then
bV=_[4]end
bG=L(2)end
end
if aB(3)and bm~=1 and bm~=3 then
aH=.1
aP=bm==5 and 5 or 3
else
aP=aP-1
if aP<1then
aH=0
end
end
for a=1,#an do
ag=an[a]for n=1,#ag do
W=ag[n]_=W[1]if _>(2^15)then
_=b[8][_-(2^15)]_[1]=W[2]_[2]=W[3]elseif _<0 then
while-_>#b[1]do
b[1][#b[1]+1]=G
end
bu.remove(b[1],-_)else
if not b[1][_]then
b[1][_]={}end
_=b[1][_]for g=1,8 do
_[b[19][1][g]]=W[g+1]end
_[15]=0
_[7]=aR(#b[7],_)_[8]=bc(_[7])end
end
end
an={}for a=1,#b[6]do
aK[a]={}end
for a=1,#b[1]do
_=b[1][a]if _ then
if af then
_[7]=aR(#b[7],_)_[8]=bc(_[7])_[9]=b[8][_[8]][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
if _[4]==1 then
ck=a
end
end
bs=0
for n,d in bk({1,2,9})do
_[d]=_[d]+_[d+10]bs=bs+_[d+10]end
if bs~=0then
_[7]=aR(#b[7],_)_[8]=bc(_[7])end
_[15]=_[15]+1
_[20]=bd(_,i[1])K=b[16][_[6]]if K~=by then
if _[15]>=K[2]and K[2]~=-1 then
_[6]=K[4]_[15]=0
end
end
aK[_[7]][#aK[_[7]]+1]=a
end
end
af=G
_=b[1][ck]i[1]={_[1],_[2]}i[2]=_[9]+41
i[3]=_[3]ap={}bq(#b[7])at={}m={}ai={}ac={}aa={}aL={}bn=R
for a=0,R-1 do
at[a],ac[a],aa[a]=#b[6]+2,P+1,-P
end
a=1
while a<=#ap and bn>0 do
_=b[6][ap[a]]ai[a]={}m[a]={}aL[a]=aK[ap[a]]bu.sort(aL[a],function(c,u)return b[1][c][20]>b[1][u][20]end)for n=_[2],_[1]+_[2]-1 do
Y=b[5][n]D=b[2][Y[4]]bN,bx=b[4][Y[1]],b[4][Y[2]]aF,bC=sub(bN,i[1]),sub(bx,i[1])bK=aE(aF)F,aC=b_(bK-i[3]),b_(aE(bC)-i[3])if x(F)<90 or x(aC)<90 then
aj,ah=aN(F,-I,I),aN(aC,-I,I)if x(F)>=90 or x(aC)>=90 then
bF=aU(aF,bC)if x(F)>=90 then
if bF>0 then aj=-I else aj=I end
else
if bF<0 then ah=-I else ah=I end
end
end
j,l=al(tan(aj)/S*J),al(tan(ah)/S*J)if j~=l then
p,ar=bd(i[1],bN),bd(i[1],bx)aM=Y[3]+90
bM=aM-bK
c_=p*w.sin(bM/Q*pi)ay=(p*cos(bM))if F~=aj then
p=ay/cos(aM-(aj+i[3]))end
if aC~=ah then
ar=ay/cos(aM-(ah+i[3]))end
p,ar=p*cos(aj),ar*cos(ah)g=Y[5]+6
bZ=(j>l)if bZ and D[g]~=0 then
aw=D[3]&4>0
if aw then
V,ab=b[8][b[3][D[6]][6]],b[8][b[3][D[7]][6]]end
ae=b[3][D[g]]cc={ae[3],ae[4],ae[5]}H,bO,bz=b[8][ae[6]]for h,d in bk(cc)do
av=d>0
aq=O
if(av or(h==3 and not(bO and bz)))and(h==3 or aw)then
bD=G
bH=0
if h<3 then
bD=h==1 and E(V[4],ab[4])==0
A,t=V[3-h],ab[3-h]aq=(A<t)~=(h==2)~=(g==6)and A~=t and V~=ab
A,t=q(A,t),E(A,t)if aq then
if h==1then
bO=O
else
bz=O
bH=D[3]&16>0 and E(V[2],ab[2])-t or 0
end
end
else
if aw then
A,t=E(V[1],ab[1]),q(V[2],ab[2])aq=V~=ab
else
A,t=H[1],H[2]end
end
A,t=A-i[2],t-i[2]bP,bJ=A*bo,t*bo
if(aq or av)and not bD then
bl=Y[6]-ae[1]if D[4]==48 then
bl=bl-aZ
end
ch,cl=bP/p,bJ/p
ce,cg=bP/ar,bJ/ar
bW=0
am=G
if av then
_=b[21][d][4]if(Y[4]==bG or bV==D[4])and _>0then
d=_
end
bQ=b[21][d][3]o=1
if(h==3 and D[3]&16>0)or(h==1 and D[3]&8==0)then
o=-1
end
end
for g=j,l,-1 do
cb=bR[g]aQ=(aM-i[3])-cb
f=J-g
bt=G
if f>=0 and f<=R-1 then
if a<at[f]then
aJ=(g-j)/(l-j)C,B=(ch*(1-aJ)+ce*aJ),(cl*(1-aJ)+cg*aJ)if x(B+C)-(B-C)<bp then
if av then
if C~=B then
bt=O
bT=ay*tan(aQ)z=q(((x(bT)+x(ay))//aA)+1,4)bj=q(bi(aI(z/cos(aQ))),16)z=bi(z)aW=aI((E(bT-c_,0)-bl)/(bQ*bj))*bj
bw={f,P-C,P-B,d,aW,t-A,H[5],ae[2]+bH,O,bQ*z,z,o,not am,h==3 and aw}if aW>bW or(not am)or g==l then
bW=aW-1+bj
am=O
m[a][#m[a]+1]=bw
end
cf=bw
end
end
if aq then
if h~=2 then
if B<ac[f]then
ai[a][#ai[a]+1]={f,E(B,aa[f]),ac[f],H,2}end
if h==3then Z=B else Z=C end
if ac[f]>Z then ac[f]=Z end
end
if h~=1 then
if C>aa[f]then
ai[a][#ai[a]+1]={f,aa[f],q(C,ac[f]),H,1}end
if h==3then Z=C else Z=B end
if aa[f]<Z then aa[f]=Z end
end
if(ac[f]<=aa[f])or(h==3 and(not aw)and av)then
at[f]=a
bn=bn-1
end
end
end
end
end
if(not bt)and am then
am=G
m[a][#m[a]+1]=cf
m[a][#m[a]][9]=G
end
end
if#m[a]>0 then
m[a][#m[a]][9]=G
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
function onDraw()az=bB
local bY,aX,ax,co=az.drawTriangleF,az.drawRectF,az.setColor,az.drawText
bh=bh+1
if bh<=1 then
if aG then
e=b[24][b[19][8][aD-3]]M,U=e[1],e[2]v=R/ceil(M*S)bX=v*1
for a=0,ceil(M*S),1 do
j=(M/2-a-1+i[3]/90*M)%M
l=(j%1-1)*v
j=aI(j)*U
for n=0,U-1,1 do
N=e[5+n+j]k=b[20][N]ax(k[1],k[2],k[3])aX(a*v+l,n*v,bX,bX)end
end
for a=#m,1,-1 do
for n=1,#m[a]do
d=m[a][n]if d[9]or d[13]then
if d[9]then
T=m[a][n+1]else
T=d
end
e=b[21][d[4]]o=d[12]X=q(o,0)f=d[1]l=T[1]bU=d[2-X]cj=T[2-X]g=d[3+X]bb=T[3+X]if not T[9]then l=l+1 end
y=q(d[7]+aH,1)^2.2
cd=o*(d[2]-d[3])*d[10]/d[6]ca=o*(T[2]-T[3])*d[10]/T[6]ak=o>0 and q or E
bg=0
while g*o<bU*o and(bg<e[2]or not d[14])do
bE=ak(g+cd,bU)aS=ak(bb+ca,cj)N=e[6+((X*d[11]+d[8]//e[3])%e[2])+e[2]*(d[5]%e[1])]k=b[20][N]if k then
ax(k[1]*y,k[2]*y,k[3]*y)bY(f,g,f,bE,l,aS)bY(f,g,l,bb,l,aS)end
g=bE
bb=aS
X=X+o
bg=bg+d[11]end
end
end
for n,d in bk(ai[a])do
H=d[4]if H[d[5]+2]~=0 then
e=b[22][H[d[5]+2]]f=d[1]y=q(H[5]+aH,1)^2.2
k=b[20][e[4]]ax(k[1]*y,k[2]*y,k[3]*y)bB.drawLine(f,-d[3]+P-1,f,-d[2]+P)end
end
for n=1,#aL[a]do
_=b[1][aL[a][n]]if _[6]~=0 then
aF=sub(_,i[1])p=_[20]if p>1 then
F=b_(aE(aF)-i[3])p=p*cos(F)if x(F)<90 then
j=J-al(tan(F)/S*J)aQ=al((Q+F+i[3]-_[3])/360*8)K=b[16][_[6]][1]if K~=0 and _[6]~=1 then
e=b[17][x(K)][aQ%8+1]if e==0 then
e=b[17][x(K)][1]end
o=e<0 and-1 or 1
e=x(e)if e>0 then
e=b[23][e]M,U=e[1],e[2]z=q(bi(p//aA+1),8)v=J/(S*p)au=v*aT
C=P+(i[2]-_[9])/p*bo
B=C-e[5]*au
l=j-o*e[4]*v
v,au=v*e[3],au*e[3]y=K>0 and q(b[8][_[8]][5]+aH,1)^2.2 or 1
aV=v*z
bI=aV*aT
if _[4]and b[15][_[4]][23]&8>0 then
for g=0,M-1,z do
j=l+g*v*o
if a<=at[aN(al(j),0,R-1)]then
for h=0,U-1,z do
N=e[7+h+g*U]if N~=0 then
br=br%50+1
ax(0,0,0,q(75*b[13][2][br],255))aX(j,B+h*au,aV,bI)end
end
end
end
else
for g=0,M-1,z do
j=l+g*v*o
if a<=at[aN(al(j),0,R-1)]then
for h=0,U-1,z do
N=e[7+h+g*U]if N~=0 then
k=b[20][N]ax(k[1]*y,k[2]*y,k[3]*y)aX(j,B+h*au,aV,bI)end
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
end
