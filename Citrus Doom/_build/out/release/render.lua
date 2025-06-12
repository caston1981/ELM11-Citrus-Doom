
y=math
u=y.max
t=y.min
A=y.abs
aj=y.floor
ceil=y.ceil
sqrt=y.sqrt
J=input.getNumber
bz=input.getBool
pi=y.pi/180
bp=false
P=true
ap=ipairs
cb=table.remove
br=string
function bo(b,p)return b[1]*p[2]-b[2]*p[1]end
function sub(b,p)return{(b[1]-p[1]),(b[2]-p[2])}end
function bf(b)return((b+180)%360)-180 end
function sin(b)return y.sin(b*pi)end
function cos(b)return y.cos(b*pi)end
function tan(b)return y.tan(b*pi)end
function cQ(b)return y.atan(b)/pi end
function aG(b)return y.atan(b[2],b[1])/pi end
function bu(b,p,_)return t(u(p,b),_)end
function aw(b)return aj(b+.5)end
function aW(b,p)return sqrt(((b[1]-p[1])^2)+((b[2]-p[2])^2))end
function bE(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
function aO(b)q=t(b/255+bT,1)^2.2 end
c={}bs=1
aA=3
am=P
l={{0,0},0}D=0
O=288
E=144
ae=128
x=64
aQ={}aP=400
ch=200
cj=1
cP=0
aJ=2^15
by=3002
bA=0
aM=0
aC=0
bw=1.2
N=52
M=tan(N)aH=x*bw*O/ae/M
Z=1
bM={}for a=-E,E do bM[a]=aG({1,a/E*M})end
function bg(a)if a<aJ then
local w,bj=c[7][a]bj=0<bo({w[3],w[4]},sub(l[1],w))and 8 or 7
bg(w[bj])bg(w[15-bj])else
as[#as+1]=a-aJ
end
end
function aV(a,b)if a<aJ then
w=c[7][a]return aV(w[0<bo({w[3],w[4]},sub(b,w))and 8 or 7],b)else
return a-aJ
end
end
function bt(b)w=c[5][c[6][b][2]]return aU[c[3][c[2][w[4]][w[5]+6]][6]]end
function onTick()be=0
for n=1,3 do
if bz(9)and(not bk)or not c[21]then
bq=property.getText(bs)a=1
F=""
_=br.sub(bq,a,a)while _~=""do
bO=br.byte(_)if bO>64 then
F=(F..bO-65)+0
if Z==1 then
cm=F
c[F]=c[F]or{}elseif Z==2 then
cy=F
ax=0
elseif Z==3 then
bh=F
else
if ax==0 then
ax=cy
bh=bh-1
bi={}c[cm][#c[cm]+1]=bi
end
bi[#bi+1]=F
ax=ax-1
Z=u(ax,bh)>0 and Z-1 or 0
end
Z=Z+1
F=""
else
F=F.._
end
a=a+1
_=br.sub(bq,a,a)end
bs=bs+1
bk=bq==""
end
end
if bk then
if J(9)>0 then
am=P
aA=J(9)end
if cj>0 and not am then
ai={}ao[#ao+1]=ai
az=5
_=J(az)while _~=0 do
aa={}ai[#ai+1]=aa
for a=0,8 do
aa[a+1]=J(az+a)end
az=az+9
_=J(az)end
end
if bz(1)then
bH=0
co=J(1)cj=J(3)aC=aC+1
bV=aC//10
if am then
for a=1,10 do
c[a]=c[a+10*aA]end
k=c[1]cS={k[1][1],k[1][2]}for a=#k,1,-1 do
_=k[a]_=_[5]&(by-3000)>0 or cb(k,a)end
aU=c[8]ao={}aA=aA+1
end
if J(2)>0 then
_=c[2][J(2)]if _ then
b=_[4]if b>0 then
if b==3008 then
aL=_[5]>0 and _[5]elseif b>3004 then
aP=u(aP+3*(_[4]-3006),1)ch=aP/2
elseif b>3000 then
by=_[4]end
bH=J(2)if b<3000 and c[9][_[5]][7]==0 then
_[8]=1
end
end
end
end
if bz(3)and co~=1 and co~=3 then
bT=.1
aM=5
else
aM=aM-1
if aM<1 then
bT=0
end
end
for a=1,#ao do
ai=ao[a]for n=1,#ai do
aa=ai[n]_=aa[1]if _>(2^15)then
_=aU[_-(2^15)]for g=1,6 do
_[g]=aa[g+1]end
elseif _<0 then
while-_>#k do
k[#k+1]=bp
end
cb(k,-_)else
if not k[_]then
k[_]={}end
_=k[_]for g=1,8 do
_[c[19][1][g]]=aa[g+1]end
_[15]=0
_[7]=aV(#c[7],_)_[8]=bt(_[7])end
end
end
ao={}for a=1,#c[6]do
aQ[a]={}end
for a,_ in ap(k)do
if am then
_[7]=aV(#c[7],_)_[8]=bt(_[7])_[9]=_[8][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
end
if _ and a>1 then
bx=0
for n,d in ap({1,2,9})do
_[d]=_[d]+_[d+10]bx=bx+_[d+10]end
if bx~=0 then
_[7]=aV(#c[7],_)_[8]=bt(_[7])end
_[15]=_[15]+1
_[20]=aW(_,l[1])L=c[16][_[6]]if L~=nil then
if L[5]>0 then
_[9]=_[8][1]end
if _[15]>=L[2]and L[2]~=-1 then
_[6]=L[4]_[15]=0
end
end
aQ[_[7]][#aQ[_[7]]+1]=a
end
end
_,am=k[1]cN=t(aW(_,l[1])^2/4,16)l[1]={_[1],_[2]}D=_[3]cR=_[9]+1
l[2]=_[9]+41+cN*sin(aC*20)/4
as={}bg(#c[7])aX={}r={}aR={}aZ={}S={}U={}aE={}bc=O
for a=0,O-1 do
aX[a],S[a],U[a]=#c[6]+2,x+1,-x
end
a=1
while a<=#as and bc>0 do
_=c[6][as[a]]aR[a]={}aZ[a]={}r[a]={}aE[a]=aQ[as[a]]table.sort(aE[a],function(b,p)return k[b][20]>k[p][20]end)for n=_[2],_[1]+_[2]-1 do
W=c[5][n]H=c[2][W[4]]cc,bL=c[4][W[1]],c[4][W[2]]aT,bN=sub(cc,l[1]),sub(bL,l[1])bY=aG(aT)G,aF=bf(bY-D),bf(aG(bN)-D)if A(G)<90 or A(aF)<90 then
ak,af=bu(G,-N,N),bu(aF,-N,N)if A(G)>=90 or A(aF)>=90 then
bS=bo(aT,bN)if A(G)>=90 then
if bS>0 then ak=-N else ak=N end
else
if bS<0 then af=-N else af=N end
end
end
m,o=aw(tan(ak)/M*E),aw(tan(af)/M*E)if m~=o then
s,ar=aW(l[1],cc),aW(l[1],bL)aS=W[3]+90
bR=aS-bY
cG=s*sin(bR)aD=(s*cos(bR))if G~=ak then
s=aD/cos(aS-(ak+D))end
if aF~=af then
ar=aD/cos(aS-(af+D))end
s,ar=s*cos(ak),ar*cos(af)g=W[5]+6
cJ=(m>o)if cJ and H[g]~=0 then
aB=H[3]&4>0
if aB then
T=aU[c[3][H[13-g]][6]]end
ad=c[3][H[g]]cL={ad[3],ad[4],ad[5]}j,bP,bQ=aU[ad[6]]for i,d in ap(cL)do
ag=d>0
ah=P
if(ag or(i==3 and not(bP and bQ)))and(i==3 or aB)then
bI,bF=0
if i<3 then
bF=i==1 and u(j[4],T[4])==0
C,z=j[3-i],(i==1 and u or t)(T[3-i],j[i])ah=(C<z)==(i==2)and C~=z and j~=T
ag=ah
C,z=t(C,z),u(C,z)if ah then
if i==1 then
bP=P
else
bQ=P
bI=H[3]&16>0 and u(j[2],T[2])-z or 0
end
end
else
if aB then
C,z=t(u(j[1],T[1]),j[2]),u(t(j[2],T[2]),j[1])ah=j~=T
else
C,z=j[1],j[2]end
end
C,z=C-l[2],z-l[2]ce,bJ=C*aH,z*aH
if(ah or ag)and not bF then
bb=W[6]-ad[1]if H[4]==48 then
bb=bb-aC
end
cz,cI=ce/s,bJ/s
cC,cB=ce/ar,bJ/ar
cd,an=0
if ag then
_=c[21][d][4]if(W[4]==bH or by==H[4]or H[8])and _>0 then
d=_
end
aq=c[21][d][3]v=1
if(i==3 and H[3]&16>0)or(i==1 and H[3]&8==0)then
v=-1
end
end
for g=m,o,-1 do
cv=bM[g]bl=(aS-D)-cv
f,cl=E-g
if f>=0 and f<=O-1 then
if a<aX[f]then
aY=(g-m)/(o-m)I,K=(cz*(1-aY)+cC*aY),(cI*(1-aY)+cB*aY)if A(K+I)-(K-I)<ae then
if ag then
if I~=K then
cl=P
cn=aD*tan(bl)av=bE(t(((A(cn)+A(aD))//ch)+1,16))bZ=aj((u(cn-cG,0)-bb)/(aq*av))cg=bZ*av
bB={f,x-I,x-K,d,bZ,z-C,j[5],ad[2]+bI,P,aq*av,av,v,not an,i==3 and aB}if cg>cd or(not an)or g==o then
cd=cg-1+av
an=P
r[a][#r[a]+1]=bB
end
cO=bB
end
end
if ah then
if i~=2 then
if K<S[f]then
aZ[a][#aZ[a]+1]={f,u(K,U[f]),S[f],j}end
if i==3 then X=K else X=I end
if S[f]>X then S[f]=X end
end
if i~=1 then
if I>U[f]then
aR[a][#aR[a]+1]={f,U[f],t(I,S[f]),j}end
if i==3 then X=I else X=K end
if U[f]<X then U[f]=X end
end
if(S[f]<=U[f])or(i==3 and(not aB)and ag)then
aX[f]=a
bc=bc-1
end
end
end
end
end
if(not cl)and an then
r[a][#r[a]+1],an=cO
r[a][#r[a]][9]=bp
end
end
if#r[a]>0 then
r[a][#r[a]][9]=bp
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
function onDraw()aI=screen
local bU,ca,ac,c_=aI.drawTriangleF,aI.drawRectF,aI.setColor,aI.drawLine
cD={aR,aZ}if bk then
e=c[24][c[19][8][aA-3]]Y,au=e[1],e[2]B=O/ceil(Y*M)cq=B*1
for a=0,ceil(Y*M),1 do
m=(Y/2-a-1+D/90*Y)%Y
o=(m%1-1)*B
m=aj(m)*au
for n=0,au-1,1 do
R=e[5+n+m]h=c[20][R]ac(h[1],h[2],h[3])ca(a*B+o,n*B,cq,cq)end
end
for a=#r,1,-1 do
for n=1,#r[a]do
d=r[a][n]if d[9]or d[13]then
if d[9]then
Q=r[a][n+1]else
Q=d
end
e=c[21][d[4]]e=c[21][d[4]+(bV%e[5])*c[19][3][2]+c[19][12][d[11]]]v=d[12]V=t(v,0)f=d[1]o=Q[1]bD=d[2-V]cr=Q[2-V]g=d[3+V]bv=Q[3+V]if not Q[9]then o=o+1 end
aO(d[7])cu=v*(d[2]-d[3])*e[3]/d[6]cs=v*(Q[2]-Q[3])*e[3]/Q[6]bW=v>0 and t or u
bm=0
while g*v<bD*v and(bm<e[2]or not d[14])do
cf=bW(g+cu,bD)b_=bW(bv+cs,cr)R=e[7+((V+d[8]//e[3])%e[2])+e[2]*((d[5])%e[1])]h=c[20][R]if h then
ac(h[1]*q,h[2]*q,h[3]*q)bU(f,g,f,cf,o,b_)bU(f,g,o,bv,o,b_)end
g=cf
bv=b_
V=V+v
bm=bm+1
end
end
end
for b=1,2 do
_=cD[b]cp={}at,ay,bn=ae,-ae
for n,d in ap(_[a])do
at=t(at,d[2])ay=u(ay,d[3])bn=d
e=c[22][d[4][b+2]]if e and not aL then
aO(d[4][5])h=c[20][e[5]]ac(h[1]*q,h[2]*q,h[3]*q)c_(d[1],x-d[2],d[1],aj(x-d[3]-1))end
end
if bn and aL then
j=bn[4]cK=(j[b]-l[2])ba=cos(D)bd=sin(D)for ab=aj(at+x),ceil(ay+x)do
al=aH*cK/(x-ab)ci=ba*al-l[1][1]bK=bd*al-l[1][2]bG=-bd*al+ci
bC=ba*al+bK
cH=bd*al+ci
cM=-ba*al+bK
cF=(cH-bG)/O
cE=(cM-bC)/O
cp[ab]={cF,cE,bG,bC}end
for n,d in ap(_[a])do
if j[b+2]~=0 then
f=d[1]if f%aL==0 then
aO(j[5])p=j[b+2]e=c[22][p]e=c[22][p+(bV%e[4])]ck=E-(E-f)*M
at,ay=aj(d[2]+x),ceil(d[3]+x)aq=e[3]for ab=at,ay do
aK=cp[ab]ct=(aK[3]+aK[1]*ck)//aq
cA=(aK[4]+aK[2]*ck)//aq
R=6+(cA%e[1])+e[1]*(ct%e[2])h=c[20][e[R]]if h then
ac(h[1]*q,h[2]*q,h[3]*q)c_(f,ae-ab,f+aL+1,ae-ab)end
end
end
end
end
end
end
for n=1,#aE[a]do
_=k[aE[a][n]]if _[6]~=0 then
aT=sub(_,l[1])s=_[20]if s>1 then
G=bf(aG(aT)-D)s=s*cos(G)if A(G)<90 then
m=E-aw(tan(G)/M*E)bl=aw((180+G+D-_[3]+be*4)/360*8)L=c[16][_[6]][1]if L~=0 and _[6]~=1 then
e=c[17][A(L)][bl%8+1]v=e<0 and-1 or 1
e=A(e)if e>0 then
e=c[23][e+c[19][12][t(bE(s//aP+1),8)]]Y,au=e[1],e[2]B=E/(M*s)aN=B*bw
I=x+(l[2]-_[9])/s*aH
K=I-e[5]*aN
o=m-v*e[4]*B
B,aN=B*e[3],aN*e[3]aO(_[8][5])q=L>0 and q or 1
bX=B
cw=bX*bw
cx=_[4]and c[15][_[4]][23]&8>0
for g=0,Y-1 do
m=o+g*B*v
if a<=aX[bu(aw(m),0,O-1)]then
for i=0,au-1 do
R=e[7+i+g*au]if R~=0 then
if cx then
bA=bA%50+1
ac(0,0,0,t(75*c[13][2][bA],255))else
h=c[20][R]ac(h[1]*q,h[2]*q,h[3]*q)end
ca(m,K+i*aN,bX,cw)end
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
be=be+1
end
