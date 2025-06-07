
co=screen
bX=table
bO=input
x=math
C=x.max
w=x.min
B=x.abs
aj=x.floor
ceil=x.ceil
sqrt=x.sqrt
G=bO.getNumber
bd=bO.getBool
pi=x.pi/180
bg=false
P=true
ap=ipairs
cb=bX.remove
bk=string
function bA(b,n)return b[1]*n[2]-b[2]*n[1]end
function sub(b,n)return{(b[1]-n[1]),(b[2]-n[2])}end
function ba(b)return((b+180)%360)-180 end
function sin(b)return x.sin(b*pi)end
function cos(b)return x.cos(b*pi)end
function tan(b)return x.tan(b*pi)end
function cS(b)return x.atan(b)/pi end
function aZ(b)return x.atan(b[2],b[1])/pi end
function bi(b,n,_)return w(C(n,b),_)end
function ay(b)return aj(b+.5)end
function aO(b,n)return sqrt(((b[1]-n[1])^2)+((b[2]-n[2])^2))end
function bN(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
function aX(b)p=w(b/255+bR,1)^2.2 end
c={}bc=1
ar=3
at=P
k={{0,0},0}E=0
M=288
y=M//2
ad=128
u=ad//2
aY={}aM=400
bH=200
ct=1
cV=0
aD={}aP=2^15
br=3002
bC=0
aG=0
av=0
bp=1.2
N=52
O=tan(N)aH=u*bp*M/ad/O
U=1
cs={}for a=-y,y do cs[a]=aZ({1,a/y*O})end
function bm(a)if a<aP then
local s,bq=c[7][a]bq=0<bA({s[3],s[4]},sub(k[1],s))and 8 or 7
bm(s[bq])bm(s[15-bq])else
an[#an+1]=a-aP
end
end
function aF(a,b)if a<aP then
s=c[7][a]return aF(s[0<bA({s[3],s[4]},sub(b,s))and 8 or 7],b)else
return a-aP
end
end
function bu(b)s=c[5][c[6][b][2]]return aB[c[3][c[2][s[4]][s[5]+6]][6]]end
function onTick()bt=0
for o=1,3 do
if bd(9)and(not bs)or not c[21]then
bj=property.getText(bc)a=1
z=""
_=bk.sub(bj,a,a)while _~=""do
bY=bk.byte(_)if bY>64 then
z=(z..bY-65)+0
if U==1 then
bE=z
c[z]=c[z]or{}elseif U==2 then
cz=z
ak=0
elseif U==3 then
bf=z
else
if ak==0 then
ak=cz
bf=bf-1
bn={}c[bE][#c[bE]+1]=bn
end
bn[#bn+1]=z
ak=ak-1
U=C(ak,bf)>0 and U-1 or 0
end
U=U+1
z=""
else
z=z.._
end
a=a+1
_=bk.sub(bj,a,a)end
bc=bc+1
bs=bj==""
end
end
if bs then
if G(9)>0 then
at=P
ar=G(9)end
if ct>0 and not at then
ai={}aD[#aD+1]=ai
ax=5
_=G(ax)while _~=0 do
ag={}ai[#ai+1]=ag
for a=0,8 do
ag[a+1]=G(ax+a)end
ax=ax+9
_=G(ax)end
end
if bd(1)then
cl=0
ce=G(1)ct=G(3)av=av+1
bL=av//10
if at then
for a=1,10 do
c[a]=c[a+10*ar]end
j=c[1]cT={j[1][1],j[1][2]}for a=#j,1,-1 do
_=j[a]_=_[5]&(br-3000)>0 or cb(j,a)end
aB=c[8]ar=ar+1
end
if G(2)>0 then
_=c[2][G(2)]if _ then
b=_[4]if b>0 then
if b==3008 then
aI=_[5]>0 and _[5]elseif b>3004 then
aM=C(aM+3*(_[4]-3006),1)bH=aM/2
elseif b>3000 then
br=_[4]end
cl=G(2)if b<3000 and c[9][_[5]][7]==0 then
_[8]=1
end
end
end
end
if bd(3)and ce~=1 and ce~=3 then
bR=.1
aG=5
else
aG=aG-1
if aG<1 then
bR=0
end
end
for a=1,#aD do
ai=aD[a]for o=1,#ai do
ag=ai[o]_=ag[1]if _>(2^15)then
_=aB[_-(2^15)]for g=1,6 do
_[g]=ag[g+1]end
elseif _<0 then
while-_>#j do
j[#j+1]=bg
end
cb(j,-_)else
if not j[_]then
j[_]={}end
_=j[_]for g=1,8 do
_[c[19][1][g]]=ag[g+1]end
_[15]=0
_[7]=aF(#c[7],_)_[8]=bu(_[7])end
end
end
aD={}for a=1,#c[6]do
aY[a]={}end
for a,_ in ap(j)do
if at then
_[7]=aF(#c[7],_)_[8]=bu(_[7])_[9]=_[8][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
end
if _ and a>1 then
bz=0
for o,d in ap({1,2,9})do
_[d]=_[d]+_[d+10]bz=bz+_[d+10]end
if bz~=0 then
_[7]=aF(#c[7],_)_[8]=bu(_[7])end
_[15]=_[15]+1
_[20]=aO(_,k[1])L=c[16][_[6]]if L~=nil then
if L[5]>0 then
_[9]=_[8][1]end
if _[15]>=L[2]and L[2]~=-1 then
_[6]=L[4]_[15]=0
end
end
aY[_[7]][#aY[_[7]]+1]=a
end
end
_,at=j[1]cx=w(aO(_,k[1])^2/4,16)k[1]={_[1],_[2]}E=_[3]cU=_[9]+1
k[2]=_[9]+41+cx*sin(av*20)/4
an={}bm(#c[7])aS={}r={}aJ={}aR={}W={}S={}aK={}bl=M
for a=0,M-1 do
aS[a],W[a],S[a]=#c[6]+2,u+1,-u
end
a=1
while a<=#an and bl>0 do
_=c[6][an[a]]aJ[a]={}aR[a]={}r[a]={}aK[a]=aY[an[a]]bX.sort(aK[a],function(b,n)return j[b][20]>j[n][20]end)for o=_[2],_[1]+_[2]-1 do
T=c[5][o]F=c[2][T[4]]bG,bQ=c[4][T[1]],c[4][T[2]]aQ,cf=sub(bG,k[1]),sub(bQ,k[1])ck=aZ(aQ)K,aT=ba(ck-E),ba(aZ(cf)-E)if B(K)<90 or B(aT)<90 then
ae,ah=bi(K,-N,N),bi(aT,-N,N)if B(K)>=90 or B(aT)>=90 then
bT=bA(aQ,cf)if B(K)>=90 then
if bT>0 then ae=-N else ae=N end
else
if bT<0 then ah=-N else ah=N end
end
end
l,m=ay(tan(ae)/O*y),ay(tan(ah)/O*y)if l~=m then
q,as=aO(k[1],bG),aO(k[1],bQ)aN=T[3]+90
cd=aN-ck
cw=q*sin(cd)aL=(q*cos(cd))if K~=ae then
q=aL/cos(aN-(ae+E))end
if aT~=ah then
as=aL/cos(aN-(ah+E))end
q,as=q*cos(ae),as*cos(ah)g=T[5]+6
cv=(l>m)if cv and F[g]~=0 then
am=F[3]&4>0
if am then
aa,V=aB[c[3][F[6]][6]],aB[c[3][F[7]][6]]end
ab=c[3][F[g]]cQ={ab[3],ab[4],ab[5]}I,bV,bM=aB[ab[6]]for i,d in ap(cQ)do
ao=d>0
aA=P
if(ao or(i==3 and not(bV and bM)))and(i==3 or am)then
bI,bZ=0
if i<3 then
bZ=i==1 and C(aa[4],V[4])==0
A,v=aa[3-i],V[3-i]aA=(A<v)~=(i==2)~=(g==6)and A~=v and aa~=V
A,v=w(A,v),C(A,v)if aA then
if i==1 then
bV=P
else
bM=P
bI=F[3]&16>0 and C(aa[2],V[2])-v or 0
end
end
else
if am then
A,v=C(aa[1],V[1]),w(aa[2],V[2])aA=aa~=V
else
A,v=I[1],I[2]end
end
A,v=A-k[2],v-k[2]bK,bJ=A*aH,v*aH
if(aA or ao)and not bZ then
bo=T[6]-ab[1]if F[4]==48 then
bo=bo-av
end
cR,cO=bK/q,bJ/q
cL,cP=bK/as,bJ/as
cn,aw=0
if ao then
_=c[21][d][4]if(T[4]==cl or br==F[4]or F[8])and _>0 then
d=_
end
aC=c[21][d][3]t=1
if(i==3 and F[3]&16>0)or(i==1 and F[3]&8==0)then
t=-1
end
end
for g=l,m,-1 do
cy=cs[g]bh=(aN-E)-cy
f,bW=y-g
if f>=0 and f<=M-1 then
if a<aS[f]then
aV=(g-l)/(m-l)H,J=(cR*(1-aV)+cL*aV),(cO*(1-aV)+cP*aV)if B(J+H)-(J-H)<ad then
if ao then
if H~=J then
bW=P
cj=aL*tan(bh)az=bN(w(((B(cj)+B(aL))//bH)+1,16))ca=aj((C(cj-cw,0)-bo)/(aC*az))bS=ca*az
bU={f,u-H,u-J,d,ca,v-A,I[5],ab[2]+bI,P,aC*az,az,t,not aw,i==3 and am}if bS>cn or(not aw)or g==m then
cn=bS-1+az
aw=P
r[a][#r[a]+1]=bU
end
cI=bU
end
end
if aA then
if i~=2 then
if J<W[f]then
aR[a][#aR[a]+1]={f,C(J,S[f]),W[f],I}end
if i==3 then X=J else X=H end
if W[f]>X then W[f]=X end
end
if i~=1 then
if H>S[f]then
aJ[a][#aJ[a]+1]={f,S[f],w(H,W[f]),I}end
if i==3 then X=H else X=J end
if S[f]<X then S[f]=X end
end
if(W[f]<=S[f])or(i==3 and(not am)and ao)then
aS[f]=a
bl=bl-1
end
end
end
end
end
if(not bW)and aw then
r[a][#r[a]+1],aw=cI
r[a][#r[a]][9]=bg
end
end
if#r[a]>0 then
r[a][#r[a]][9]=bg
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
function onDraw()b_=co
local bF,be,af=b_.drawTriangleF,b_.drawRectF,b_.setColor
cK={aJ,aR}if bs then
e=c[24][c[19][8][ar-3]]Z,aq=e[1],e[2]D=M/ceil(Z*O)cg=D*1
for a=0,ceil(Z*O),1 do
l=(Z/2-a-1+E/90*Z)%Z
m=(l%1-1)*D
l=aj(l)*aq
for o=0,aq-1,1 do
R=e[5+o+l]h=c[20][R]af(h[1],h[2],h[3])be(a*D+m,o*D,cg,cg)end
end
for a=#r,1,-1 do
for o=1,#r[a]do
d=r[a][o]if d[9]or d[13]then
if d[9]then
Q=r[a][o+1]else
Q=d
end
e=c[21][d[4]]e=c[21][d[4]+(bL%e[5])*c[19][3][2]+c[19][12][d[11]]]t=d[12]Y=w(t,0)f=d[1]m=Q[1]cc=d[2-Y]cC=Q[2-Y]g=d[3+Y]by=Q[3+Y]if not Q[9]then m=m+1 end
aX(d[7])cB=t*(d[2]-d[3])*e[3]/d[6]cM=t*(Q[2]-Q[3])*e[3]/Q[6]cq=t>0 and w or C
bx=0
while g*t<cc*t and(bx<e[2]or not d[14])do
bD=cq(g+cB,cc)bB=cq(by+cM,cC)R=e[7+((Y+d[8]//e[3])%e[2])+e[2]*((d[5])%e[1])]h=c[20][R]if h then
af(h[1]*p,h[2]*p,h[3]*p)bF(f,g,f,bD,m,bB)bF(f,g,m,by,m,bB)end
g=bD
by=bB
Y=Y+t
bx=bx+1
end
end
end
for b=1,2 do
_=cK[b]bP={}al,au,bv=ad,-ad
for o,d in ap(_[a])do
al=w(al,d[2])au=C(au,d[3])bv=d
e=c[22][d[4][b+2]]if e and not aI then
aX(d[4][5])h=c[20][e[5]]af(h[1]*p,h[2]*p,h[3]*p)co.drawLine(d[1],u-d[2],d[1],aj(u-d[3]-1))end
end
if bv and aI then
I=bv[4]cH=(I[b]-k[2])bb=cos(E)bw=sin(E)for aE=aj(al+u),ceil(au+u)do
ac=aH*cH/(u-aE)c_=bb*ac-k[1][1]cm=bw*ac-k[1][2]cp=-bw*ac+c_
cr=bb*ac+cm
cF=bw*ac+c_
cu=-bb*ac+cm
cG=(cF-cp)/M
cE=(cu-cr)/M
bP[aE]={cG,cE,cp,cr}end
for o,d in ap(_[a])do
if I[b+2]~=0 then
f=d[1]if f%aI==0 then
aX(I[5])n=I[b+2]e=c[22][n]e=c[22][n+(bL%e[4])]ci=y-(y-f)*O
al,au=aj(d[2]+u),ceil(d[3]+u)aC=e[3]for aE=al,au do
aU=bP[aE]cA=(aU[3]+aU[1]*ci)//aC
cN=(aU[4]+aU[2]*ci)//aC
R=6+(cN%e[1])+e[1]*(cA%e[2])h=c[20][e[R]]if h then
af(h[1]*p,h[2]*p,h[3]*p)be(f,-aE+ad,aI,1)end
end
end
end
end
end
end
for o=1,#aK[a]do
_=j[aK[a][o]]if _[6]~=0 then
aQ=sub(_,k[1])q=_[20]if q>1 then
K=ba(aZ(aQ)-E)q=q*cos(K)if B(K)<90 then
l=y-ay(tan(K)/O*y)bh=ay((180+K+E-_[3]+bt*4)/360*8)L=c[16][_[6]][1]if L~=0 and _[6]~=1 then
e=c[17][B(L)][bh%8+1]t=e<0 and-1 or 1
e=B(e)if e>0 then
e=c[23][e+c[19][12][w(bN(q//aM+1),8)]]Z,aq=e[1],e[2]D=y/(O*q)aW=D*bp
H=u+(k[2]-_[9])/q*aH
J=H-e[5]*aW
m=l-t*e[4]*D
D,aW=D*e[3],aW*e[3]aX(_[8][5])p=L>0 and p or 1
ch=D
cD=ch*bp
cJ=_[4]and c[15][_[4]][23]&8>0
for g=0,Z-1 do
l=m+g*D*t
if a<=aS[bi(ay(l),0,M-1)]then
for i=0,aq-1 do
R=e[7+i+g*aq]if R~=0 then
if cJ then
bC=bC%50+1
af(0,0,0,w(75*c[13][2][bC],255))else
h=c[20][R]af(h[1]*p,h[2]*p,h[3]*p)end
be(l,J+i*aW,ch,cD)end
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
bt=bt+1
end
