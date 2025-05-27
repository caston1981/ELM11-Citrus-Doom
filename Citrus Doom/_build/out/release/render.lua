cS=""

S=180
bS=screen
aS=ipairs
co=table
ce=input
x=math
D=x.max
v=x.min
A=x.abs
W=x.floor
ceil=x.ceil
sqrt=x.sqrt
I=ce.getNumber
bj=ce.getBool
pi=x.pi
L=false
T=true
bu=string
function bk(b,n)return b[1]*n[2]-b[2]*n[1]end
function sub(b,n)return{(b[1]-n[1]),(b[2]-n[2])}end
function bE(b)return((b+S)%360)-S end
function sin(b)return x.sin(b/S*pi)end
function cos(b)return x.cos(b/S*pi)end
function tan(b)return x.tan(b/S*pi)end
function cQ(b)return x.atan(b)*S/pi end
function aF(b)return x.atan(b[2],b[1])*S/pi end
function bD(b,n,_)return v(D(n,b),_)end
function aA(b)return W(b+.5)end
function bA(b,n)return sqrt(((b[1]-n[1])^2)+((b[2]-n[2])^2))end
function bf(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
function aP(b)q=v(b/255+ca,1)^2.2 end
c={}bd=1
ax=3
aR=L
aB=T
g={{0,0},0,0}K=288
E=K//2
al=128
r=al//2
aN={}aX=400
bY=100
cP=0
as={}aW=32768
cf=3002
bo=0
aK=0
aE=0
be=1.2
N=52
O=tan(N)aY=r*be*K/al/O
V=1
cb={}for a=-E,E do cb[a]=aF({1,a/E*O})end
function bb(a)if a<aW then
local u,bc=c[7][a]bc=0<bk({u[3],u[4]},sub(g[1],u))and 8 or 7
bb(u[bc])bb(u[15-bc])else
aC[#aC+1]=a-aW
end
end
function aI(a,b)if a<aW then
u=c[7][a]return aI(u[0<bk({u[3],u[4]},sub(b,u))and 8 or 7],b)else
return a-aW
end
end
function bi(b)u=c[5][c[6][b][2]]return c[3][c[2][u[4]][u[5]+6]][6]end
function onTick()bB=0
for k=1,3 do
if bj(9)and(not aR)or not c[21]then
by=property.getText(bd)a=1
B=cS
_=bu.sub(by,a,a)while _~=cSdo
cj=bu.byte(_)if cj>64then
B=(B..cj-65)+0
if V==1then
bT=B
c[B]=c[B]or{}elseif V==2then
cM=B
ay=0
elseif V==3then
bq=B
else
if ay==0then
ay=cM
bq=bq-1
bz={}c[bT][#c[bT]+1]=bz
end
bz[#bz+1]=B
ay=ay-1
V=D(ay,bq)>0 and V-1 or 0
end
V=V+1
B=cS
else
B=B.._
end
a=a+1
_=bu.sub(by,a,a)end
bd=bd+1
aR=by==cS
end
end
if aR then
if I(9)>0 then
aB=T
ax=I(9)end
if bY>0 and not aB then
am={}as[#as+1]=am
az=5
_=I(az)while _~=0 do
ai={}am[#am+1]=ai
for a=0,8 do
ai[a+1]=I(az+a)end
az=az+9
_=I(az)end
end
if bj(1)then
cg=0
bn=I(1)bY=I(3)aE=aE+1
bV=aE//10
if aB then
for a=1,10 do
c[a]=c[a+10*ax]end
t=c[1]ae=c[8]ax=ax+1
end
if I(2)>0 then
_=c[2][I(2)]if _ then
b=_[4]if b>0 then
if b==3008 then
cp=_[5]==1
elseif b>3004 then
aX=D(aX+3*(_[4]-3006),1)elseif b>3000 then
cf=_[4]end
cg=I(2)if b<3000 and c[9][_[5]][7]==0then
_[8]=1
end
end
end
end
if bj(3)and bn~=1 and bn~=3 then
ca=.1
aK=bn==5 and 5 or 3
else
aK=aK-1
if aK<1then
ca=0
end
end
for a=1,#as do
am=as[a]for k=1,#am do
ai=am[k]_=ai[1]if _>(2^15)then
_=ae[_-(2^15)]for h=1,6 do
_[h]=ai[h+1]end
elseif _<0 then
while-_>#t do
t[#t+1]=L
end
co.remove(t,-_)else
if not t[_]then
t[_]={}end
_=t[_]for h=1,8 do
_[c[19][1][h]]=ai[h+1]end
_[15]=0
_[7]=aI(#c[7],_)_[8]=bi(_[7])end
end
end
as={}for a=1,#c[6]do
aN[a]={}end
for a=1,#t do
_=t[a]if _ then
if aB then
_[7]=aI(#c[7],_)_[8]=bi(_[7])_[9]=ae[_[8]][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
end
bg=0
for k,d in aS({1,2,9})do
_[d]=_[d]+_[d+10]bg=bg+_[d+10]end
if bg~=0then
_[7]=aI(#c[7],_)_[8]=bi(_[7])end
_[15]=_[15]+1
_[20]=bA(_,g[1])R=c[16][_[6]]if R~=nil then
if _[15]>=R[2]and R[2]~=-1 then
_[6]=R[4]_[15]=0
end
end
aN[_[7]][#aN[_[7]]+1]=a
end
end
aB=L
_=t[1]g[1]={_[1],_[2]}g[2]=_[9]+41
g[3]=_[3]aC={}bb(#c[7])aU={}o={}aT={}aM={}ac={}Z={}aO={}bw=K
for a=0,K-1 do
aU[a],ac[a],Z[a]=#c[6]+2,r+1,-r
end
a=1
while a<=#aC and bw>0 do
_=c[6][aC[a]]aT[a]={}aM[a]={}o[a]={}aO[a]=aN[aC[a]]co.sort(aO[a],function(b,n)return t[b][20]>t[n][20]end)for k=_[2],_[1]+_[2]-1 do
aa=c[5][k]y=c[2][aa[4]]bJ,bM=c[4][aa[1]],c[4][aa[2]]ba,bR=sub(bJ,g[1]),sub(bM,g[1])bQ=aF(ba)F,b_=bE(bQ-g[3]),bE(aF(bR)-g[3])if A(F)<90 or A(b_)<90 then
ah,ag=bD(F,-N,N),bD(b_,-N,N)if A(F)>=90 or A(b_)>=90 then
bX=bk(ba,bR)if A(F)>=90 then
if bX>0 then ah=-N else ah=N end
else
if bX<0 then ag=-N else ag=N end
end
end
l,m=aA(tan(ah)/O*E),aA(tan(ag)/O*E)if l~=m then
p,ap=bA(g[1],bJ),bA(g[1],bM)aL=aa[3]+90
cc=aL-bQ
cx=p*sin(cc)aJ=(p*cos(cc))if F~=ah then
p=aJ/cos(aL-(ah+g[3]))end
if b_~=ag then
ap=aJ/cos(aL-(ag+g[3]))end
p,ap=p*cos(ah),ap*cos(ag)h=aa[5]+6
cJ=(l>m)if cJ and y[h]~=0 then
aq=y[3]&4>0
if aq then
ad,U=ae[c[3][y[6]][6]],ae[c[3][y[7]][6]]end
af=c[3][y[h]]cL={af[3],af[4],af[5]}J,ck,bG=ae[af[6]]for j,d in aS(cL)do
ao=d>0
ar=T
if(ao or(j==3 and not(ck and bG)))and(j==3 or aq)then
bK=L
cm=0
if j<3 then
bK=j==1 and D(ad[4],U[4])==0
z,w=ad[3-j],U[3-j]ar=(z<w)~=(j==2)~=(h==6)and z~=w and ad~=U
z,w=v(z,w),D(z,w)if ar then
if j==1then
ck=T
else
bG=T
cm=y[3]&16>0 and D(ad[2],U[2])-w or 0
end
end
else
if aq then
z,w=D(ad[1],U[1]),v(ad[2],U[2])ar=ad~=U
else
z,w=J[1],J[2]end
end
z,w=z-g[2],w-g[2]bL,bN=z*aY,w*aY
if(ar or ao)and not bK then
bm=aa[6]-af[1]if y[4]==48 then
bm=bm-aE
end
cD,cB=bL/p,bN/p
cK,cC=bL/ap,bN/ap
bW=0
aD=L
if ao then
_=c[21][d][4]if(aa[4]==cg or cf==y[4]or y[8])and _>0then
d=_
end
an=c[21][d][3]s=1
if(j==3 and y[3]&16>0)or(j==1 and y[3]&8==0)then
s=-1
end
end
for h=l,m,-1 do
cG=cb[h]aG=(aL-g[3])-cG
f=E-h
c_=L
if f>=0 and f<=K-1 then
if a<aU[f]then
aZ=(h-l)/(m-l)H,G=(cD*(1-aZ)+cK*aZ),(cB*(1-aZ)+cC*aZ)if A(G+H)-(G-H)<al then
if ao then
if H~=G then
c_=T
cl=aJ*tan(aG)M=v(((A(cl)+A(aJ))//aX)+1,4)bt=v(bf(W(M/cos(aG))),16)M=bf(M)bs=W((D(cl-cx,0)-bm)/(an*bt))*bt
ci={f,r-H,r-G,d,bs,w-z,J[5],af[2]+cm,T,an*M,M,s,not aD,j==3 and aq}if bs>bW or(not aD)or h==m then
bW=bs-1+bt
aD=T
o[a][#o[a]+1]=ci
end
cy=ci
end
end
if ar then
if j~=2 then
if G<ac[f]then
aM[a][#aM[a]+1]={f,D(G,Z[f]),ac[f],J}end
if j==3then X=G else X=H end
if ac[f]>X then ac[f]=X end
end
if j~=1 then
if H>Z[f]then
aT[a][#aT[a]+1]={f,Z[f],v(H,ac[f]),J}end
if j==3then X=H else X=G end
if Z[f]<X then Z[f]=X end
end
if(ac[f]<=Z[f])or(j==3 and(not aq)and ao)then
aU[f]=a
bw=bw-1
end
end
end
end
end
if(not c_)and aD then
aD=L
o[a][#o[a]+1]=cy
o[a][#o[a]][9]=L
end
end
if#o[a]>0 then
o[a][#o[a]][9]=L
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
function onDraw()aV=bS
local bU,bp,ak,cR=aV.drawTriangleF,aV.drawRectF,aV.setColor,aV.drawText
bB=bB+1
cE={aT,aM}if bB<=1 then
if aR then
e=c[24][c[19][8][ax-3]]Y,av=e[1],e[2]C=K/ceil(Y*O)cr=C*1
for a=0,ceil(Y*O),1 do
l=(Y/2-a-1+g[3]/90*Y)%Y
m=(l%1-1)*C
l=W(l)*av
for k=0,av-1,1 do
P=e[5+k+l]i=c[20][P]ak(i[1],i[2],i[3])bp(a*C+m,k*C,cr,cr)end
end
for a=#o,1,-1 do
for k=1,#o[a]do
d=o[a][k]if d[9]or d[13]then
if d[9]then
Q=o[a][k+1]else
Q=d
end
e=c[21][d[4]]e=c[21][d[4]+(bV%e[5])]s=d[12]ab=v(s,0)f=d[1]m=Q[1]bH=d[2-ab]cz=Q[2-ab]h=d[3+ab]bh=Q[3+ab]if not Q[9]then m=m+1 end
aP(d[7])cu=s*(d[2]-d[3])*d[10]/d[6]ct=s*(Q[2]-Q[3])*d[10]/Q[6]cq=s>0 and v or D
bC=0
while h*s<bH*s and(bC<e[2]or not d[14])do
bO=cq(h+cu,bH)bx=cq(bh+ct,cz)P=e[7+((ab*d[11]+d[8]//e[3])%e[2])+e[2]*(d[5]%e[1])]i=c[20][P]if i then
ak(i[1]*q,i[2]*q,i[3]*q)bU(f,h,f,bO,m,bx)bU(f,h,m,bh,m,bx)end
h=bO
bh=bx
ab=ab+s
bC=bC+d[11]end
end
end
for b=1,2 do
_=cE[b]bZ={}at,au,br=al,-al
for k,d in aS(_[a])do
at=v(at,d[2])au=D(au,d[3])br=d
e=c[22][d[4][b+2]]if e and not cp then
aP(d[4][5])i=c[20][e[5]]ak(i[1]*q,i[2]*q,i[3]*q)bS.drawLine(d[1],r-d[2],d[1],W(r-d[3]-1))end
end
if br and cp then
J=br[4]cw=(J[b]-g[2])bv=cos(g[3])bl=sin(g[3])for aw=W(at+r),ceil(au+r)do
aj=aY*cw/(r-aw)ch=bv*aj-g[1][1]bF=bl*aj-g[1][2]cd=-bl*aj+ch
bI=bv*aj+bF
cI=bl*aj+ch
cO=-bv*aj+bF
cA=(cI-cd)/K
cF=(cO-bI)/K
bZ[aw]={cA,cF,cd,bI}end
for k,d in aS(_[a])do
if J[b+2]~=0 then
aP(J[5])n=J[b+2]e=c[22][n]e=c[22][n+(bV%e[4])]f=d[1]bP=E-(E-f)*O
at,au=W(d[2]+r),ceil(d[3]+r)an=e[3]for aw=at,au do
aH=bZ[aw]cs=(aH[3]+aH[1]*bP)//an
cN=(aH[4]+aH[2]*bP)//an
P=6+(cN%e[1])+e[1]*(cs%e[2])i=c[20][e[P]]if i then
ak(i[1]*q,i[2]*q,i[3]*q)bp(f,-aw+al,1,1)end
end
end
end
end
end
for k=1,#aO[a]do
_=t[aO[a][k]]if _[6]~=0 then
ba=sub(_,g[1])p=_[20]if p>1 then
F=bE(aF(ba)-g[3])p=p*cos(F)if A(F)<90 then
l=E-aA(tan(F)/O*E)aG=aA((S+F+g[3]-_[3])/360*8)R=c[16][_[6]][1]if R~=0 and _[6]~=1 then
e=c[17][A(R)][aG%8+1]s=e<0 and-1 or 1
e=A(e)if e>0 then
e=c[23][e]Y,av=e[1],e[2]M=v(bf(p//aX+1),8)C=E/(O*p)aQ=C*be
H=r+(g[2]-_[9])/p*aY
G=H-e[5]*aQ
m=l-s*e[4]*C
C,aQ=C*e[3],aQ*e[3]aP(ae[_[8]][5])q=R>0 and q or 1
cn=C*M
cv=cn*be
cH=_[4]and c[15][_[4]][23]&8>0
for h=0,Y-1,M do
l=m+h*C*s
if a<=aU[bD(aA(l),0,K-1)]then
for j=0,av-1,M do
P=e[7+j+h*av]if P~=0 then
if cH then
bo=bo%50+1
ak(0,0,0,v(75*c[13][2][bo],255))else
i=c[20][P]ak(i[1]*q,i[2]*q,i[3]*q)end
bp(l,G+j*aQ,cn,cv)end
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
