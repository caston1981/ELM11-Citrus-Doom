
y=math
v=y.max
q=y.min
B=y.abs
ag=y.floor
ceil=y.ceil
sqrt=y.sqrt
H=input.getNumber
bi=input.getBool
pi=y.pi/180
bm=false
O=true
am=ipairs
cc=table.remove
bz=string
function bu(b,n)return b[1]*n[2]-b[2]*n[1]end
function sub(b,n)return{(b[1]-n[1]),(b[2]-n[2])}end
function bg(b)return((b+180)%360)-180 end
function sin(b)return y.sin(b*pi)end
function cos(b)return y.cos(b*pi)end
function tan(b)return y.tan(b*pi)end
function cS(b)return y.atan(b)/pi end
function aI(b)return y.atan(b[2],b[1])/pi end
function be(b,n,_)return q(v(n,b),_)end
function ap(b)return ag(b+.5)end
function aU(b,n)return sqrt(((b[1]-n[1])^2)+((b[2]-n[2])^2))end
function bJ(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
function aL(b)t=q(b/255+bP,1)^2.2 end
c={}bj=1
aw=3
aq=O
l={{0,0},0}E=0
P=288
D=144
aj=128
x=64
aP={}aR=400
bF=200
bY=1
cR=0
aQ=2^15
bx=3002
bn=0
aJ=0
ax=0
br=1.2
N=52
L=tan(N)aZ=x*br*P/aj/L
T=1
cl={}for a=-D,D do cl[a]=aI({1,a/D*L})end
function bf(a)if a<aQ then
local u,bs=c[7][a]bs=0<bu({u[3],u[4]},sub(l[1],u))and 8 or 7
bf(u[bs])bf(u[15-bs])else
aB[#aB+1]=a-aQ
end
end
function aG(a,b)if a<aQ then
u=c[7][a]return aG(u[0<bu({u[3],u[4]},sub(b,u))and 8 or 7],b)else
return a-aQ
end
end
function b_(b)u=c[5][c[6][b][2]]return aM[c[3][c[2][u[4]][u[5]+6]][6]]end
function onTick()bk=0
for p=1,3 do
if bi(9)and(not bw)or not c[21]then
ba=property.getText(bj)a=1
F=""
_=bz.sub(ba,a,a)while _~=""do
cj=bz.byte(_)if cj>64 then
F=(F..cj-65)+0
if T==1 then
bT=F
c[F]=c[F]or{}elseif T==2 then
cF=F
av=0
elseif T==3 then
bv=F
else
if av==0 then
av=cF
bv=bv-1
bq={}c[bT][#c[bT]+1]=bq
end
bq[#bq+1]=F
av=av-1
T=v(av,bv)>0 and T-1 or 0
end
T=T+1
F=""
else
F=F.._
end
a=a+1
_=bz.sub(ba,a,a)end
bj=bj+1
bw=ba==""
end
end
if bw then
if H(9)>0 then
aq=O
aw=H(9)end
if bY>0 and not aq then
al={}aA[#aA+1]=al
ay=5
_=H(ay)while _~=0 do
ae={}al[#al+1]=ae
for a=0,8 do
ae[a+1]=H(ay+a)end
ay=ay+9
_=H(ay)end
end
if bi(1)then
bE=0
bL=H(1)bY=H(3)ax=ax+1
bO=ax//10
if aq then
for a=1,10 do
c[a]=c[a+10*aw]end
k=c[1]cP={k[1][1],k[1][2]}for a=#k,1,-1 do
_=k[a]_=_[5]&(bx-3000)>0 or cc(k,a)end
aM=c[8]aA={}aw=aw+1
end
if H(2)>0 then
_=c[2][H(2)]if _ then
b=_[4]if b>0 then
if b==3008 then
aE=_[5]>0 and _[5]elseif b>3004 then
aR=v(aR+3*(_[4]-3006),1)bF=aR/2
elseif b>3000 then
bx=_[4]end
bE=H(2)if b<3000 and c[9][_[5]][7]==0 then
_[8]=1
end
end
end
end
if bi(3)and bL~=1 and bL~=3 then
bP=.1
aJ=5
else
aJ=aJ-1
if aJ<1 then
bP=0
end
end
for a=1,#aA do
al=aA[a]for p=1,#al do
ae=al[p]_=ae[1]if _>(2^15)then
_=aM[_-(2^15)]for g=1,6 do
_[g]=ae[g+1]end
elseif _<0 then
while-_>#k do
k[#k+1]=bm
end
cc(k,-_)else
if not k[_]then
k[_]={}end
_=k[_]for g=1,8 do
_[c[19][1][g]]=ae[g+1]end
_[15]=0
_[7]=aG(#c[7],_)_[8]=b_(_[7])end
end
end
aA={}for a=1,#c[6]do
aP[a]={}end
for a,_ in am(k)do
if aq then
_[7]=aG(#c[7],_)_[8]=b_(_[7])_[9]=_[8][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
end
if _ and a>1 then
bo=0
for p,d in am({1,2,9})do
_[d]=_[d]+_[d+10]bo=bo+_[d+10]end
if bo~=0 then
_[7]=aG(#c[7],_)_[8]=b_(_[7])end
_[15]=_[15]+1
_[20]=aU(_,l[1])M=c[16][_[6]]if M~=nil then
if M[5]>0 then
_[9]=_[8][1]end
if _[15]>=M[2]and M[2]~=-1 then
_[6]=M[4]_[15]=0
end
end
aP[_[7]][#aP[_[7]]+1]=a
end
end
_,aq=k[1]cE=q(aU(_,l[1])^2/4,16)l[1]={_[1],_[2]}E=_[3]cQ=_[9]+1
l[2]=_[9]+41+cE*sin(ax*20)/4
aB={}bf(#c[7])aV={}s={}aX={}aT={}U={}Y={}aH={}bd=P
for a=0,P-1 do
aV[a],U[a],Y[a]=#c[6]+2,x+1,-x
end
a=1
while a<=#aB and bd>0 do
_=c[6][aB[a]]aX[a]={}aT[a]={}s[a]={}aH[a]=aP[aB[a]]table.sort(aH[a],function(b,n)return k[b][20]>k[n][20]end)for p=_[2],_[1]+_[2]-1 do
V=c[5][p]K=c[2][V[4]]cg,bN=c[4][V[1]],c[4][V[2]]aS,cf=sub(cg,l[1]),sub(bN,l[1])bK=aI(aS)J,aK=bg(bK-E),bg(aI(cf)-E)if B(J)<90 or B(aK)<90 then
aa,ak=be(J,-N,N),be(aK,-N,N)if B(J)>=90 or B(aK)>=90 then
bU=bu(aS,cf)if B(J)>=90 then
if bU>0 then aa=-N else aa=N end
else
if bU<0 then ak=-N else ak=N end
end
end
o,m=ap(tan(aa)/L*D),ap(tan(ak)/L*D)if o~=m then
r,az=aU(l[1],cg),aU(l[1],bN)aW=V[3]+90
ce=aW-bK
cx=r*sin(ce)aY=(r*cos(ce))if J~=aa then
r=aY/cos(aW-(aa+E))end
if aK~=ak then
az=aY/cos(aW-(ak+E))end
r,az=r*cos(aa),az*cos(ak)g=V[5]+6
cz=(o>m)if cz and K[g]~=0 then
ao=K[3]&4>0
if ao then
Z=aM[c[3][K[13-g]][6]]end
ac=c[3][K[g]]cv={ac[3],ac[4],ac[5]}j,bB,c_=aM[ac[6]]for i,d in am(cv)do
ai=d>0
ah=O
if(ai or(i==3 and not(bB and c_)))and(i==3 or ao)then
bR,bX=0
if i<3 then
bX=i==1 and v(j[4],Z[4])==0
C,z=j[3-i],(i==1 and v or q)(Z[3-i],j[i])ah=(C<z)==(i==2)and C~=z and j~=Z
ai=ah
C,z=q(C,z),v(C,z)if ah then
if i==1 then
bB=O
else
c_=O
bR=K[3]&16>0 and v(j[2],Z[2])-z or 0
end
end
else
if ao then
C,z=q(v(j[1],Z[1]),j[2]),v(q(j[2],Z[2]),j[1])ah=j~=Z
else
C,z=j[1],j[2]end
end
C,z=C-l[2],z-l[2]cm,bZ=C*aZ,z*aZ
if(ah or ai)and not bX then
bc=V[6]-ac[1]if K[4]==48 then
bc=bc-ax
end
cH,cJ=cm/r,bZ/r
cr,cL=cm/az,bZ/az
ck,ar=0
if ai then
_=c[21][d][4]if(V[4]==bE or bx==K[4]or K[8])and _>0 then
d=_
end
at=c[21][d][3]w=1
if(i==3 and K[3]&16>0)or(i==1 and K[3]&8==0)then
w=-1
end
end
for g=o,m,-1 do
cK=cl[g]bp=(aW-E)-cK
f,cp=D-g
if f>=0 and f<=P-1 then
if a<aV[f]then
aN=(g-o)/(m-o)I,G=(cH*(1-aN)+cr*aN),(cJ*(1-aN)+cL*aN)if B(G+I)-(G-I)<aj then
if ai then
if I~=G then
cp=O
bH=aY*tan(bp)an=bJ(q(((B(bH)+B(aY))//bF)+1,16))bQ=ag((v(bH-cx,0)-bc)/(at*an))co=bQ*an
bD={f,x-I,x-G,d,bQ,z-C,j[5],ac[2]+bR,O,at*an,an,w,not ar,i==3 and ao}if co>ck or(not ar)or g==m then
ck=co-1+an
ar=O
s[a][#s[a]+1]=bD
end
cy=bD
end
end
if ah then
if i~=2 then
if G<U[f]then
aT[a][#aT[a]+1]={f,v(G,Y[f]),U[f],j}end
if i==3 then W=G else W=I end
if U[f]>W then U[f]=W end
end
if i~=1 then
if I>Y[f]then
aX[a][#aX[a]+1]={f,Y[f],q(I,U[f]),j}end
if i==3 then W=I else W=G end
if Y[f]<W then Y[f]=W end
end
if(U[f]<=Y[f])or(i==3 and(not ao)and ai)then
aV[f]=a
bd=bd-1
end
end
end
end
end
if(not cp)and ar then
s[a][#s[a]+1],ar=cy
s[a][#s[a]][9]=bm
end
end
if#s[a]>0 then
s[a][#s[a]][9]=bm
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
function onDraw()aD=screen
local ci,bG,ad,bI=aD.drawTriangleF,aD.drawRectF,aD.setColor,aD.drawLine
cD={aX,aT}if bw then
e=c[24][c[19][8][aw-3]]X,as=e[1],e[2]A=P/ceil(X*L)bC=A*1
for a=0,ceil(X*L),1 do
o=(X/2-a-1+E/90*X)%X
m=(o%1-1)*A
o=ag(o)*as
for p=0,as-1,1 do
Q=e[5+p+o]h=c[20][Q]ad(h[1],h[2],h[3])bG(a*A+m,p*A,bC,bC)end
end
for a=#s,1,-1 do
for p=1,#s[a]do
d=s[a][p]if d[9]or d[13]then
if d[9]then
R=s[a][p+1]else
R=d
end
e=c[21][d[4]]e=c[21][d[4]+(bO%e[5])*c[19][3][2]+c[19][12][d[11]]]w=d[12]S=q(w,0)f=d[1]m=R[1]cb=d[2-S]cI=R[2-S]g=d[3+S]bA=R[3+S]if not R[9]then m=m+1 end
aL(d[7])cG=w*(d[2]-d[3])*e[3]/d[6]cu=w*(R[2]-R[3])*e[3]/R[6]cq=w>0 and q or v
bh=0
while g*w<cb*w and(bh<e[2]or not d[14])do
bM=cq(g+cG,cb)bb=cq(bA+cu,cI)Q=e[7+((S+d[8]//e[3])%e[2])+e[2]*((d[5])%e[1])]h=c[20][Q]if h then
ad(h[1]*t,h[2]*t,h[3]*t)ci(f,g,f,bM,m,bb)ci(f,g,m,bA,m,bb)end
g=bM
bA=bb
S=S+w
bh=bh+1
end
end
end
for b=1,2 do
_=cD[b]cn={}aC,au,bl=aj,-aj
for p,d in am(_[a])do
aC=q(aC,d[2])au=v(au,d[3])bl=d
e=c[22][d[4][b+2]]if e and not aE then
aL(d[4][5])h=c[20][e[5]]ad(h[1]*t,h[2]*t,h[3]*t)bI(d[1],x-d[2],d[1],ag(x-d[3]-1))end
end
if bl and aE then
j=bl[4]cC=(j[b]-l[2])bt=cos(E)by=sin(E)for ab=ag(aC+x),ceil(au+x)do
af=aZ*cC/(x-ab)bW=bt*af-l[1][1]bV=by*af-l[1][2]cd=-by*af+bW
bS=bt*af+bV
cN=by*af+bW
cM=-bt*af+bV
cA=(cN-cd)/P
cs=(cM-bS)/P
cn[ab]={cA,cs,cd,bS}end
for p,d in am(_[a])do
if j[b+2]~=0 then
f=d[1]if f%aE==0 then
aL(j[5])n=j[b+2]e=c[22][n]e=c[22][n+(bO%e[4])]ch=D-(D-f)*L
aC,au=ag(d[2]+x),ceil(d[3]+x)at=e[3]for ab=aC,au do
aF=cn[ab]ct=(aF[3]+aF[1]*ch)//at
cB=(aF[4]+aF[2]*ch)//at
Q=6+(cB%e[1])+e[1]*(ct%e[2])h=c[20][e[Q]]if h then
ad(h[1]*t,h[2]*t,h[3]*t)bI(f,aj-ab,f+aE+1,aj-ab)end
end
end
end
end
end
end
for p=1,#aH[a]do
_=k[aH[a][p]]if _[6]~=0 then
aS=sub(_,l[1])r=_[20]if r>1 then
J=bg(aI(aS)-E)r=r*cos(J)if B(J)<90 then
o=D-ap(tan(J)/L*D)bp=ap((180+J+E-_[3]+bk*4)/360*8)M=c[16][_[6]][1]if M~=0 and _[6]~=1 then
e=c[17][B(M)][bp%8+1]w=e<0 and-1 or 1
e=B(e)if e>0 then
e=c[23][e+c[19][12][q(bJ(r//aR+1),8)]]X,as=e[1],e[2]A=D/(L*r)aO=A*br
I=x+(l[2]-_[9])/r*aZ
G=I-e[5]*aO
m=o-w*e[4]*A
A,aO=A*e[3],aO*e[3]aL(_[8][5])t=M>0 and t or 1
ca=A
cO=ca*br
cw=_[4]and c[15][_[4]][23]&8>0
for g=0,X-1 do
o=m+g*A*w
if a<=aV[be(ap(o),0,P-1)]then
for i=0,as-1 do
Q=e[7+i+g*as]if Q~=0 then
if cw then
bn=bn%50+1
ad(0,0,0,q(75*c[13][2][bn],255))else
h=c[20][Q]ad(h[1]*t,h[2]*t,h[3]*t)end
bG(o,G+i*aO,ca,cO)end
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
bk=bk+1
end
