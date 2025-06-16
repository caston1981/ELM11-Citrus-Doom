
y=math
x=y.max
s=y.min
B=y.abs
ah=y.floor
ceil=y.ceil
sqrt=y.sqrt
I=input.getNumber
ba=input.getBool
pi=y.pi/180
bf=false
R=true
ay=ipairs
ca=table.remove
bv=string
function bs(b,m)return b[1]*m[2]-b[2]*m[1]end
function sub(b,m)return{(b[1]-m[1]),(b[2]-m[2])}end
function bj(b)return((b+180)%360)-180 end
function sin(b)return y.sin(b*pi)end
function cos(b)return y.cos(b*pi)end
function tan(b)return y.tan(b*pi)end
function cQ(b)return y.atan(b)/pi end
function aI(b)return y.atan(b[2],b[1])/pi end
function bo(b,m,_)return s(x(m,b),_)end
function as(b)return ah(b+.5)end
function aT(b,m)return sqrt(((b[1]-m[1])^2)+((b[2]-m[2])^2))end
function ck(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
function aQ(b)t=s(b/255+bD,1)^2.2 end
c={}bm=1
aA=3
av=R
l={{0,0},0}C=0
O=288
F=144
ak=128
u=64
aJ={}aO=400
ch=200
ci=1
cP=0
aF=2^15
bd=3002
bl=0
aP=0
an=0
bg=1.2
M=52
N=tan(M)aK=u*bg*O/ak/N
V=1
bH={}for a=-F,F do bH[a]=aI({1,a/F*N})end
function bb(a)if a<aF then
local w,bt=c[7][a]bt=0<bs({w[3],w[4]},sub(l[1],w))and 8 or 7
bb(w[bt])bb(w[15-bt])else
au[#au+1]=a-aF
end
end
function aZ(a,b)if a<aF then
w=c[7][a]return aZ(w[0<bs({w[3],w[4]},sub(b,w))and 8 or 7],b)else
return a-aF
end
end
function bz(b)w=c[5][c[6][b][2]]return aU[c[3][c[2][w[4]][w[5]+6]][6]]end
function onTick()bp=0
for n=1,3 do
if ba(9)and(not be)or not c[21]then
bk=property.getText(bm)a=1
A=""
_=bv.sub(bk,a,a)while _~=""do
cg=bv.byte(_)if cg>64 then
A=(A..cg-65)+0
if V==1 then
bL=A
c[A]=c[A]or{}elseif V==2 then
cA=A
am=0
elseif V==3 then
bi=A
else
if am==0 then
am=cA
bi=bi-1
bx={}c[bL][#c[bL]+1]=bx
end
bx[#bx+1]=A
am=am-1
V=x(am,bi)>0 and V-1 or 0
end
V=V+1
A=""
else
A=A.._
end
a=a+1
_=bv.sub(bk,a,a)end
bm=bm+1
be=bk==""
end
end
if be then
if I(10)>0 then
av=R
aA=I(10)end
if ci>0 and not av then
aj={}aq[#aq+1]=aj
aB=6
_=I(aB)while _~=0 do
ae={}aj[#aj+1]=ae
for a=0,8 do
ae[a+1]=I(aB+a)end
aB=aB+9
_=I(aB)end
end
if ba(1)then
bK=0
cf=I(1)ci=I(3)an=an+1
cn=an//10
if av then
for a=1,10 do
c[a]=c[a+10*aA]end
k=c[1]cS={k[1][1],k[1][2]}for a=#k,1,-1 do
_=k[a]_=_[5]&(bd-3000)>0 or ca(k,a)end
aU=c[8]aq={}aA=aA+1
end
if I(2)>0 then
_=c[2][I(2)]if _ then
b=_[4]if b>0 then
if b==3008 then
aE=_[5]>0 and _[5]elseif b>3004 then
aO=x(aO+3*(_[4]-3006),1)ch=aO/2
elseif b>3000 then
bd=_[4]end
bK=I(2)if b<3000 and c[9][_[5]][7]==0 then
_[8]=1
end
end
end
end
if ba(3)and cf~=1 and cf~=3 then
bD=.1
aP=5
else
aP=aP-1
if aP<1 then
bD=0
end
end
for a=1,#aq do
aj=aq[a]for n=1,#aj do
ae=aj[n]_=ae[1]if _>(2^15)then
_=aU[_-(2^15)]for g=1,6 do
_[g]=ae[g+1]end
elseif _<0 then
while-_>#k do
k[#k+1]=bf
end
ca(k,-_)else
if not k[_]then
k[_]={}end
_=k[_]for g=1,8 do
_[c[19][1][g]]=ae[g+1]end
_[15]=0
_[7]=aZ(#c[7],_)_[8]=bz(_[7])end
end
end
aq={}for a=1,#c[6]do
aJ[a]={}end
for a,_ in ay(k)do
if av then
_[7]=aZ(#c[7],_)_[8]=bz(_[7])_[9]=_[8][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
end
if _ and a>1 then
bh=0
for n,d in ay({1,2,9})do
_[d]=_[d]+_[d+10]bh=bh+_[d+10]end
if bh~=0 then
_[7]=aZ(#c[7],_)_[8]=bz(_[7])end
_[15]=_[15]+1
_[20]=aT(_,l[1])L=c[16][_[6]]if L~=nil then
if L[5]>0 then
_[9]=_[8][1]end
if _[15]>=L[2]and L[2]~=-1 then
_[6]=L[4]_[15]=0
end
end
aJ[_[7]][#aJ[_[7]]+1]=a
end
end
_,av=k[1]cs=s(aT(_,l[1])^2/4,16)l[1]={_[1],_[2]}C=_[3]cR=_[9]+1
l[2]=_[9]+41+cs*sin(an*20)/4
au={}bb(#c[7])aH={}q={}aV={}aR={}T={}Z={}aN={}bn=O
for a=0,O-1 do
aH[a],T[a],Z[a]=#c[6]+2,u+1,-u
end
a=1
while a<=#au and bn>0 do
_=c[6][au[a]]aV[a]={}aR[a]={}q[a]={}aN[a]=aJ[au[a]]table.sort(aN[a],function(b,m)return k[b][20]>k[m][20]end)for n=_[2],_[1]+_[2]-1 do
W=c[5][n]H=c[2][W[4]]bR,cl=c[4][W[1]],c[4][W[2]]aM,cp=sub(bR,l[1]),sub(cl,l[1])cd=aI(aM)J,aS=bj(cd-C),bj(aI(cp)-C)if B(J)<90 or B(aS)<90 then
aa,ad=bo(J,-M,M),bo(aS,-M,M)if B(J)>=90 or B(aS)>=90 then
bW=bs(aM,cp)if B(J)>=90 then
if bW>0 then aa=-M else aa=M end
else
if bW<0 then ad=-M else ad=M end
end
end
p,o=as(tan(aa)/N*F),as(tan(ad)/N*F)if p~=o then
r,at=aT(l[1],bR),aT(l[1],cl)aX=W[3]+90
cm=aX-cd
cN=r*sin(cm)aL=(r*cos(cm))if J~=aa then
r=aL/cos(aX-(aa+C))end
if aS~=ad then
at=aL/cos(aX-(ad+C))end
r,at=r*cos(aa),at*cos(ad)g=W[5]+6
cB=(p>o)if cB and H[g]~=0 then
ar=H[3]&4>0
if ar then
U=aU[c[3][H[13-g]][6]]end
ai=c[3][H[g]]cL={ai[3],ai[4],ai[5]}j,bS,cc=aU[ai[6]]for i,d in ay(cL)do
al=d>0
af=R
if(al or(i==3 and not(bS and cc)))and(i==3 or ar)then
bO,cj=0
if i<3 then
cj=i==1 and x(j[4],U[4])==0
E,z=j[3-i],(i==1 and x or s)(U[3-i],j[i])af=(E<z)==(i==2)and E~=z and j~=U
al=af
E,z=s(E,z),x(E,z)if af then
if i==1 then
bS=R
else
cc=R
bO=H[3]&16>0 and x(j[2],U[2])-z or 0
end
end
else
if ar then
E,z=s(x(j[1],U[1]),j[2]),x(s(j[2],U[2]),j[1])af=j~=U
else
E,z=j[1],j[2]end
end
E,z=E-l[2],z-l[2]bE,co=E*aK,z*aK
if(af or al)and not cj then
bc=W[6]-ai[1]if H[4]==48 then
bc=bc-an
end
cD,cH=bE/r,co/r
cK,ct=bE/at,co/at
c_,ax=0
if al then
_=c[21][d][4]if(W[4]==bK or bd==H[4]or H[8])and _>0 then
d=_
end
aw=c[21][d][3]v=1
if(i==3 and H[3]&16>0)or(i==1 and H[3]&8==0)then
v=-1
end
end
for g=p,o,-1 do
cJ=bH[g]b_=(aX-C)-cJ
f,bM=F-g
if f>=0 and f<=O-1 then
if a<aH[f]then
aD=(g-p)/(o-p)K,G=(cD*(1-aD)+cK*aD),(cH*(1-aD)+ct*aD)if B(G+K)-(G-K)<ak then
if al then
if K~=G then
bM=R
bN=aL*tan(b_)az=ck(s(((B(bN)+B(aL))//ch)+1,16))bI=ah((x(bN-cN,0)-bc)/(aw*az))bC=bI*az
ce={f,u-K,u-G,d,bI,z-E,j[5],ai[2]+bO,R,aw*az,az,v,not ax,i==3 and ar}if bC>c_ or(not ax)or g==o then
c_=bC-1+az
ax=R
q[a][#q[a]+1]=ce
end
cM=ce
end
end
if af then
if i~=2 then
if G<T[f]then
aR[a][#aR[a]+1]={f,x(G,Z[f]),T[f],j}end
if i==3 then X=G else X=K end
if T[f]>X then T[f]=X end
end
if i~=1 then
if K>Z[f]then
aV[a][#aV[a]+1]={f,Z[f],s(K,T[f]),j}end
if i==3 then X=K else X=G end
if Z[f]<X then Z[f]=X end
end
if(T[f]<=Z[f])or(i==3 and(not ar)and al)then
aH[f]=a
bn=bn-1
end
end
end
end
end
if(not bM)and ax then
q[a][#q[a]+1],ax=cM
q[a][#q[a]][9]=bf
end
end
if#q[a]>0 then
q[a][#q[a]][9]=bf
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
function onDraw()aG=screen
local bU,cb,ag,bG=aG.drawTriangleF,aG.drawRectF,aG.setColor,aG.drawLine
cu={aV,aR}if be then
e=c[24][c[19][8][aA-3]]S,aC=e[1],e[2]D=O/ceil(S*N)bZ=D*1
for a=0,ceil(S*N),1 do
p=(S/2-a-1+C/90*S)%S
o=(p%1-1)*D
p=ah(p)*aC
for n=0,aC-1,1 do
Q=e[5+n+p]h=c[20][Q]ag(h[1],h[2],h[3])cb(a*D+o,n*D,bZ,bZ)end
end
for a=#q,1,-1 do
for n=1,#q[a]do
d=q[a][n]if d[9]or d[13]then
if d[9]then
P=q[a][n+1]else
P=d
end
e=c[21][d[4]]e=c[21][d[4]+(cn%e[5])*"number of wall mipmap levels"+c[19][12][d[11]]]v=d[12]Y=s(v,0)f=d[1]o=P[1]bT=d[2-Y]cF=P[2-Y]g=d[3+Y]bA=P[3+Y]if not P[9]then o=o+1 end
aQ(d[7])cx=v*(d[2]-d[3])*e[3]/d[6]cr=v*(P[2]-P[3])*e[3]/P[6]bY=v>0 and s or x
bw=0
while g*v<bT*v and(bw<e[2]or not d[14])do
bB=bY(g+cx,bT)bu=bY(bA+cr,cF)Q=e[7+((Y+d[8]//e[3])%e[2])+e[2]*((d[5])%e[1])]h=c[20][Q]if h then
ag(h[1]*t,h[2]*t,h[3]*t)bU(f,g,f,bB,o,bu)bU(f,g,o,bA,o,bu)end
g=bB
bA=bu
Y=Y+v
bw=bw+1
end
end
end
for b=1,2 do
_=cu[b]bP={}ao,ap,bq=ak,-ak
for n,d in ay(_[a])do
ao=s(ao,d[2])ap=x(ap,d[3])bq=d
e=c[22][d[4][b+2]]if e and not aE then
aQ(d[4][5])h=c[20][e[5]]ag(h[1]*t,h[2]*t,h[3]*t)bG(d[1],u-d[2],d[1],ah(u-d[3]-1))end
end
if bq and aE then
j=bq[4]cy=(j[b]-l[2])br=cos(C)by=sin(C)for ab=ah(ao+u),ceil(ap+u)do
ac=aK*cy/(u-ab)bV=br*ac-l[1][1]cq=by*ac-l[1][2]bF=-by*ac+bV
bX=br*ac+cq
cG=by*ac+bV
cI=-br*ac+cq
cC=(cG-bF)/O
cO=(cI-bX)/O
bP[ab]={cC,cO,bF,bX}end
for n,d in ay(_[a])do
if j[b+2]~=0 then
f=d[1]if f%aE==0 then
aQ(j[5])m=j[b+2]e=c[22][m]e=c[22][m+(cn%e[4])]bJ=F-(F-f)*N
ao,ap=ah(d[2]+u),ceil(d[3]+u)aw=e[3]for ab=ao,ap do
aY=bP[ab]cE=(aY[3]+aY[1]*bJ)//aw
cz=(aY[4]+aY[2]*bJ)//aw
Q=6+(cz%e[1])+e[1]*(cE%e[2])h=c[20][e[Q]]if h then
ag(h[1]*t,h[2]*t,h[3]*t)bG(f,ak-ab,f+aE+1,ak-ab)end
end
end
end
end
end
end
for n=1,#aN[a]do
_=k[aN[a][n]]if _[6]~=0 then
aM=sub(_,l[1])r=_[20]if r>1 then
J=bj(aI(aM)-C)r=r*cos(J)if B(J)<90 then
p=F-as(tan(J)/N*F)b_=as((180+J+C-_[3]+bp*4)/360*8)L=c[16][_[6]][1]if L~=0 and _[6]~=1 then
e=c[17][B(L)][b_%8+1]v=e<0 and-1 or 1
e=B(e)if e>0 then
e=c[23][e+c[19][12][s(ck(r//aO+1),8)]]S,aC=e[1],e[2]D=F/(N*r)aW=D*bg
K=u+(l[2]-_[9])/r*aK
G=K-e[5]*aW
o=p-v*e[4]*D
D,aW=D*e[3],aW*e[3]aQ(_[8][5])t=L>0 and t or 1
bQ=D
cw=bQ*bg
cv=_[4]and c[15][_[4]][23]&8>0
for g=0,S-1 do
p=o+g*D*v
if a<=aH[bo(as(p),0,O-1)]then
for i=0,aC-1 do
Q=e[7+i+g*aC]if Q~=0 then
if cv then
bl=bl%50+1
ag(0,0,0,s(75*c[13][2][bl],255))else
h=c[20][Q]ag(h[1]*t,h[2]*t,h[3]*t)end
cb(p,G+i*aW,bQ,cw)end
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
bp=bp+1
end
