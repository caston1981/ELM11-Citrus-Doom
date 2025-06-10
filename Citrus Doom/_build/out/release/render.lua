
v=math
B=v.max
x=v.min
D=v.abs
aj=v.floor
ceil=v.ceil
sqrt=v.sqrt
J=input.getNumber
bn=input.getBool
pi=v.pi/180
bv=false
P=true
aC=ipairs
c_=table.remove
bi=string
function bw(b,n)return b[1]*n[2]-b[2]*n[1]end
function sub(b,n)return{(b[1]-n[1]),(b[2]-n[2])}end
function bA(b)return((b+180)%360)-180 end
function sin(b)return v.sin(b*pi)end
function cos(b)return v.cos(b*pi)end
function tan(b)return v.tan(b*pi)end
function cQ(b)return v.atan(b)/pi end
function aK(b)return v.atan(b[2],b[1])/pi end
function be(b,n,_)return x(B(n,b),_)end
function aq(b)return aj(b+.5)end
function aY(b,n)return sqrt(((b[1]-n[1])^2)+((b[2]-n[2])^2))end
function bW(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
function aG(b)p=x(b/255+cm,1)^2.2 end
c={}bB=1
av=3
aB=P
k={{0,0},0}A=0
O=288
E=144
Y=128
u=Y//2
aS={}aH=400
cr=200
bJ=1
cS=0
an={}aV=2^15
bz=3002
bs=0
aX=0
aD=0
bp=1.2
M=52
L=tan(M)aL=u*bp*O/Y/L
T=1
bE={}for a=-E,E do bE[a]=aK({1,a/E*L})end
function bo(a)if a<aV then
local t,bu=c[7][a]bu=0<bw({t[3],t[4]},sub(k[1],t))and 8 or 7
bo(t[bu])bo(t[15-bu])else
at[#at+1]=a-aV
end
end
function aJ(a,b)if a<aV then
t=c[7][a]return aJ(t[0<bw({t[3],t[4]},sub(b,t))and 8 or 7],b)else
return a-aV
end
end
function bm(b)t=c[5][c[6][b][2]]return ap[c[3][c[2][t[4]][t[5]+6]][6]]end
function onTick()bj=0
for l=1,3 do
if bn(9)and(not by)or not c[21]then
bt=property.getText(bB)a=1
C=""
_=bi.sub(bt,a,a)while _~=""do
ce=bi.byte(_)if ce>64 then
C=(C..ce-65)+0
if T==1 then
bU=C
c[C]=c[C]or{}elseif T==2 then
cN=C
aA=0
elseif T==3 then
ba=C
else
if aA==0 then
aA=cN
ba=ba-1
bl={}c[bU][#c[bU]+1]=bl
end
bl[#bl+1]=C
aA=aA-1
T=B(aA,ba)>0 and T-1 or 0
end
T=T+1
C=""
else
C=C.._
end
a=a+1
_=bi.sub(bt,a,a)end
bB=bB+1
by=bt==""
end
end
if by then
if J(9)>0 then
aB=P
av=J(9)end
if bJ>0 and not aB then
ag={}an[#an+1]=ag
ar=5
_=J(ar)while _~=0 do
af={}ag[#ag+1]=af
for a=0,8 do
af[a+1]=J(ar+a)end
ar=ar+9
_=J(ar)end
end
if bn(1)then
cl=0
bT=J(1)bJ=J(3)aD=aD+1
bK=aD//10
if aB then
for a=1,10 do
c[a]=c[a+10*av]end
j=c[1]cT={j[1][1],j[1][2]}for a=#j,1,-1 do
_=j[a]_=_[5]&(bz-3000)>0 or c_(j,a)end
ap=c[8]av=av+1
end
if J(2)>0 then
_=c[2][J(2)]if _ then
b=_[4]if b>0 then
if b==3008 then
aO=_[5]>0 and _[5]elseif b>3004 then
aH=B(aH+3*(_[4]-3006),1)cr=aH/2
elseif b>3000 then
bz=_[4]end
cl=J(2)if b<3000 and c[9][_[5]][7]==0 then
_[8]=1
end
end
end
end
if bn(3)and bT~=1 and bT~=3 then
cm=.1
aX=5
else
aX=aX-1
if aX<1 then
cm=0
end
end
for a=1,#an do
ag=an[a]for l=1,#ag do
af=ag[l]_=af[1]if _>(2^15)then
_=ap[_-(2^15)]for g=1,6 do
_[g]=af[g+1]end
elseif _<0 then
while-_>#j do
j[#j+1]=bv
end
c_(j,-_)else
if not j[_]then
j[_]={}end
_=j[_]for g=1,8 do
_[c[19][1][g]]=af[g+1]end
_[15]=0
_[7]=aJ(#c[7],_)_[8]=bm(_[7])end
end
end
an={}for a=1,#c[6]do
aS[a]={}end
for a,_ in aC(j)do
if aB then
_[7]=aJ(#c[7],_)_[8]=bm(_[7])_[9]=_[8][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
end
if _ and a>1 then
bg=0
for l,d in aC({1,2,9})do
_[d]=_[d]+_[d+10]bg=bg+_[d+10]end
if bg~=0 then
_[7]=aJ(#c[7],_)_[8]=bm(_[7])end
_[15]=_[15]+1
_[20]=aY(_,k[1])N=c[16][_[6]]if N~=nil then
if N[5]>0 then
_[9]=_[8][1]end
if _[15]>=N[2]and N[2]~=-1 then
_[6]=N[4]_[15]=0
end
end
aS[_[7]][#aS[_[7]]+1]=a
end
end
_,aB=j[1]ct=x(aY(_,k[1])^2/4,16)k[1]={_[1],_[2]}A=_[3]cR=_[9]+1
k[2]=_[9]+41+ct*sin(aD*20)/4
at={}bo(#c[7])aW={}r={}aN={}aZ={}ab={}V={}aM={}bq=O
for a=0,O-1 do
aW[a],ab[a],V[a]=#c[6]+2,u+1,-u
end
a=1
while a<=#at and bq>0 do
_=c[6][at[a]]aN[a]={}aZ[a]={}r[a]={}aM[a]=aS[at[a]]table.sort(aM[a],function(b,n)return j[b][20]>j[n][20]end)for l=_[2],_[1]+_[2]-1 do
W=c[5][l]y=c[2][W[4]]bX,bF=c[4][W[1]],c[4][W[2]]aU,bP=sub(bX,k[1]),sub(bF,k[1])bR=aK(aU)H,aF=bA(bR-A),bA(aK(bP)-A)if D(H)<90 or D(aF)<90 then
ae,ac=be(H,-M,M),be(aF,-M,M)if D(H)>=90 or D(aF)>=90 then
cq=bw(aU,bP)if D(H)>=90 then
if cq>0 then ae=-M else ae=M end
else
if cq<0 then ac=-M else ac=M end
end
end
o,m=aq(tan(ae)/L*E),aq(tan(ac)/L*E)if o~=m then
q,az=aY(k[1],bX),aY(k[1],bF)aQ=W[3]+90
bQ=aQ-bR
cy=q*sin(bQ)aT=(q*cos(bQ))if H~=ae then
q=aT/cos(aQ-(ae+A))end
if aF~=ac then
az=aT/cos(aQ-(ac+A))end
q,az=q*cos(ae),az*cos(ac)g=W[5]+6
cC=(o>m)if cC and y[g]~=0 then
am=y[3]&4>0
if am then
X,Z=ap[c[3][y[6]][6]],ap[c[3][y[7]][6]]end
ai=c[3][y[g]]cM={ai[3],ai[4],ai[5]}I,ci,ca=ap[ai[6]]for i,d in aC(cM)do
al=d>0
au=P
if(al or(i==3 and not(ci and ca)))and(i==3 or am)then
bO,ch=0
if i<3 then
ch=i==1 and B(X[4],Z[4])==0
F,w=X[3-i],Z[3-i]au=(F<w)~=(i==2)~=(g==6)and F~=w and X~=Z
F,w=x(F,w),B(F,w)if au then
if i==1 then
ci=P
else
ca=P
bO=y[3]&16>0 and B(X[2],Z[2])-w or 0
end
end
else
if am then
F,w=B(X[1],Z[1]),x(X[2],Z[2])au=X~=Z
else
F,w=I[1],I[2]end
end
F,w=F-k[2],w-k[2]bH,cb=F*aL,w*aL
if(au or al)and not ch then
bd=W[6]-ai[1]if y[4]==48 then
bd=bd-aD
end
cB,cF=bH/q,cb/q
cJ,cE=bH/az,cb/az
ck,ao=0
if al then
_=c[21][d][4]if(W[4]==cl or bz==y[4]or y[8])and _>0 then
d=_
end
ay=c[21][d][3]s=1
if(i==3 and y[3]&16>0)or(i==1 and y[3]&8==0)then
s=-1
end
end
for g=o,m,-1 do
cK=bE[g]bx=(aQ-A)-cK
f,bC=E-g
if f>=0 and f<=O-1 then
if a<aW[f]then
aP=(g-o)/(m-o)G,K=(cB*(1-aP)+cJ*aP),(cF*(1-aP)+cE*aP)if D(K+G)-(K-G)<Y then
if al then
if G~=K then
bC=P
bI=aT*tan(bx)aE=bW(x(((D(bI)+D(aT))//cr)+1,16))cd=aj((B(bI-cy,0)-bd)/(ay*aE))bN=cd*aE
bL={f,u-G,u-K,d,cd,w-F,I[5],ai[2]+bO,P,ay*aE,aE,s,not ao,i==3 and am}if bN>ck or(not ao)or g==m then
ck=bN-1+aE
ao=P
r[a][#r[a]+1]=bL
end
cw=bL
end
end
if au then
if i~=2 then
if K<ab[f]then
aZ[a][#aZ[a]+1]={f,B(K,V[f]),ab[f],I}end
if i==3 then U=K else U=G end
if ab[f]>U then ab[f]=U end
end
if i~=1 then
if G>V[f]then
aN[a][#aN[a]+1]={f,V[f],x(G,ab[f]),I}end
if i==3 then U=G else U=K end
if V[f]<U then V[f]=U end
end
if(ab[f]<=V[f])or(i==3 and(not am)and al)then
aW[f]=a
bq=bq-1
end
end
end
end
end
if(not bC)and ao then
r[a][#r[a]+1],ao=cw
r[a][#r[a]][9]=bv
end
end
if#r[a]>0 then
r[a][#r[a]][9]=bv
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
function onDraw()b_=screen
local bD,cj,ad,cn=b_.drawTriangleF,b_.drawRectF,b_.setColor,b_.drawLine
cO={aN,aZ}if by then
e=c[24][c[19][8][av-3]]aa,ax=e[1],e[2]z=O/ceil(aa*L)bM=z*1
for a=0,ceil(aa*L),1 do
o=(aa/2-a-1+A/90*aa)%aa
m=(o%1-1)*z
o=aj(o)*ax
for l=0,ax-1,1 do
R=e[5+l+o]h=c[20][R]ad(h[1],h[2],h[3])cj(a*z+m,l*z,bM,bM)end
end
for a=#r,1,-1 do
for l=1,#r[a]do
d=r[a][l]if d[9]or d[13]then
if d[9]then
Q=r[a][l+1]else
Q=d
end
e=c[21][d[4]]e=c[21][d[4]+(bK%e[5])*c[19][3][2]+c[19][12][d[11]]]s=d[12]S=x(s,0)f=d[1]m=Q[1]cc=d[2-S]cD=Q[2-S]g=d[3+S]bh=Q[3+S]if not Q[9]then m=m+1 end
aG(d[7])cs=s*(d[2]-d[3])*e[3]/d[6]cu=s*(Q[2]-Q[3])*e[3]/Q[6]bG=s>0 and x or B
bb=0
while g*s<cc*s and(bb<e[2]or not d[14])do
bZ=bG(g+cs,cc)bc=bG(bh+cu,cD)R=e[7+((S+d[8]//e[3])%e[2])+e[2]*((d[5])%e[1])]h=c[20][R]if h then
ad(h[1]*p,h[2]*p,h[3]*p)bD(f,g,f,bZ,m,bc)bD(f,g,m,bh,m,bc)end
g=bZ
bh=bc
S=S+s
bb=bb+1
end
end
end
for b=1,2 do
_=cO[b]cg={}aw,as,br=Y,-Y
for l,d in aC(_[a])do
aw=x(aw,d[2])as=B(as,d[3])br=d
e=c[22][d[4][b+2]]if e and not aO then
aG(d[4][5])h=c[20][e[5]]ad(h[1]*p,h[2]*p,h[3]*p)cn(d[1],u-d[2],d[1],aj(u-d[3]-1))end
end
if br and aO then
I=br[4]cG=(I[b]-k[2])bf=cos(A)bk=sin(A)for ah=aj(aw+u),ceil(as+u)do
ak=aL*cG/(u-ah)cp=bf*ak-k[1][1]cf=bk*ak-k[1][2]bS=-bk*ak+cp
bY=bf*ak+cf
cI=bk*ak+cp
cL=-bf*ak+cf
cA=(cI-bS)/O
cH=(cL-bY)/O
cg[ah]={cA,cH,bS,bY}end
for l,d in aC(_[a])do
if I[b+2]~=0 then
f=d[1]if f%aO==0 then
aG(I[5])n=I[b+2]e=c[22][n]e=c[22][n+(bK%e[4])]bV=E-(E-f)*L
aw,as=aj(d[2]+u),ceil(d[3]+u)ay=e[3]for ah=aw,as do
aR=cg[ah]cv=(aR[3]+aR[1]*bV)//ay
cP=(aR[4]+aR[2]*bV)//ay
R=6+(cP%e[1])+e[1]*(cv%e[2])h=c[20][e[R]]if h then
ad(h[1]*p,h[2]*p,h[3]*p)cn(f,Y-ah,f+aO+1,Y-ah)end
end
end
end
end
end
end
for l=1,#aM[a]do
_=j[aM[a][l]]if _[6]~=0 then
aU=sub(_,k[1])q=_[20]if q>1 then
H=bA(aK(aU)-A)q=q*cos(H)if D(H)<90 then
o=E-aq(tan(H)/L*E)bx=aq((180+H+A-_[3]+bj*4)/360*8)N=c[16][_[6]][1]if N~=0 and _[6]~=1 then
e=c[17][D(N)][bx%8+1]s=e<0 and-1 or 1
e=D(e)if e>0 then
e=c[23][e+c[19][12][x(bW(q//aH+1),8)]]aa,ax=e[1],e[2]z=E/(L*q)aI=z*bp
G=u+(k[2]-_[9])/q*aL
K=G-e[5]*aI
m=o-s*e[4]*z
z,aI=z*e[3],aI*e[3]aG(_[8][5])p=N>0 and p or 1
co=z
cx=co*bp
cz=_[4]and c[15][_[4]][23]&8>0
for g=0,aa-1 do
o=m+g*z*s
if a<=aW[be(aq(o),0,O-1)]then
for i=0,ax-1 do
R=e[7+i+g*ax]if R~=0 then
if cz then
bs=bs%50+1
ad(0,0,0,x(75*c[13][2][bs],255))else
h=c[20][R]ad(h[1]*p,h[2]*p,h[3]*p)end
cj(o,K+i*aI,co,cx)end
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
bj=bj+1
end
