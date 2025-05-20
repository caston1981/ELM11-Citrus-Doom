cS=""

T=180
cd=screen
aN=ipairs
ce=table
cb=input
x=math
E=x.max
w=x.min
A=x.abs
Y=x.floor
ceil=x.ceil
sqrt=x.sqrt
H=cb.getNumber
bl=cb.getBool
pi=x.pi
O=false
S=true
bf=string
function bo(b,k)return b[1]*k[2]-b[2]*k[1]end
function sub(b,k)return{(b[1]-k[1]),(b[2]-k[2])}end
function bq(b)return((b+T)%360)-T end
function sin(b)return x.sin(b/T*pi)end
function cos(b)return x.cos(b/T*pi)end
function tan(b)return x.tan(b/T*pi)end
function cQ(b)return x.atan(b)*T/pi end
function aH(b)return x.atan(b[2],b[1])*T/pi end
function bb(b,k,_)return w(E(k,b),_)end
function az(b)return Y(b+.5)end
function bk(b,k)return sqrt(((b[1]-k[1])^2)+((b[2]-k[2])^2))end
function be(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
function aE(b)p=w(b/255+c_,1)^2.2 end
c={}bE=1
an=3
aX=O
ap=S
g={{0,0},0,0}L=288
B=L//2
af=128
r=af//2
aI={}aP=400
bK=100
cP=0
av={}aT=32768
cg=3002
bs=0
aV=0
aS=0
bC=1.2
N=52
M=tan(N)aK=r*bC*L/af/M
V=1
bS={}for a=-B,B do bS[a]=aH({1,a/B*M})end
function bx(a)if a<aT then
local t,bd=c[7][a]bd=0<bo({t[3],t[4]},sub(g[1],t))and 8 or 7
bx(t[bd])bx(t[15-bd])else
at[#at+1]=a-aT
end
end
function aQ(a,b)if a<aT then
t=c[7][a]return aQ(t[0<bo({t[3],t[4]},sub(b,t))and 8 or 7],b)else
return a-aT
end
end
function bu(b)t=c[5][c[6][b][2]]return c[3][c[2][t[4]][t[5]+6]][6]end
function onTick()bD=0
for n=1,3 do
if bl(9)and(not aX)or not c[21]then
bj=property.getText(bE)a=1
D=cS
_=bf.sub(bj,a,a)while _~=cSdo
co=bf.byte(_)if co>64then
D=(D..co-65)+0
if V==1then
bQ=D
c[D]=c[D]or{}elseif V==2then
cL=D
ax=0
elseif V==3then
bm=D
else
if ax==0then
ax=cL
bm=bm-1
br={}c[bQ][#c[bQ]+1]=br
end
br[#br+1]=D
ax=ax-1
V=E(ax,bm)>0 and V-1 or 0
end
V=V+1
D=cS
else
D=D.._
end
a=a+1
_=bf.sub(bj,a,a)end
bE=bE+1
aX=bj==cS
end
end
if aX then
if H(9)>0 then
ap=S
an=H(9)end
if bK>0 and not ap then
al={}av[#av+1]=al
aA=5
_=H(aA)while _~=0 do
ae={}al[#al+1]=ae
for a=0,8 do
ae[a+1]=H(aA+a)end
aA=aA+9
_=H(aA)end
end
if bl(1)then
bU=0
bw=H(1)bK=H(3)aS=aS+1
bX=aS//10
if ap then
for a=1,10 do
c[a]=c[a+10*an]end
u=c[1]ak=c[8]an=an+1
end
if H(2)>0 then
_=c[2][H(2)]if _ then
b=_[4]if b>0 then
if b==3008 then
bW=_[5]==1
elseif b>3004 then
aP=E(aP+3*(_[4]-3006),1)elseif b>3000 then
cg=_[4]end
bU=H(2)if b<3000 and c[9][_[5]][7]==0then
_[8]=1
end
end
end
end
if bl(3)and bw~=1 and bw~=3 then
c_=.1
aV=bw==5 and 5 or 3
else
aV=aV-1
if aV<1then
c_=0
end
end
for a=1,#av do
al=av[a]for n=1,#al do
ae=al[n]_=ae[1]if _>(2^15)then
_=ak[_-(2^15)]for h=1,6 do
_[h]=ae[h+1]end
elseif _<0 then
while-_>#u do
u[#u+1]=O
end
ce.remove(u,-_)else
if not u[_]then
u[_]={}end
_=u[_]for h=1,8 do
_[c[19][1][h]]=ae[h+1]end
_[15]=0
_[7]=aQ(#c[7],_)_[8]=bu(_[7])end
end
end
av={}for a=1,#c[6]do
aI[a]={}end
for a=1,#u do
_=u[a]if _ then
if ap then
_[7]=aQ(#c[7],_)_[8]=bu(_[7])_[9]=ak[_[8]][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
end
bn=0
for n,d in aN({1,2,9})do
_[d]=_[d]+_[d+10]bn=bn+_[d+10]end
if bn~=0then
_[7]=aQ(#c[7],_)_[8]=bu(_[7])end
_[15]=_[15]+1
_[20]=bk(_,g[1])Q=c[16][_[6]]if Q~=nil then
if _[15]>=Q[2]and Q[2]~=-1 then
_[6]=Q[4]_[15]=0
end
end
aI[_[7]][#aI[_[7]]+1]=a
end
end
ap=O
_=u[1]g[1]={_[1],_[2]}g[2]=_[9]+41
g[3]=_[3]at={}bx(#c[7])aF={}q={}aG={}aJ={}U={}W={}ba={}bg=L
for a=0,L-1 do
aF[a],U[a],W[a]=#c[6]+2,r+1,-r
end
a=1
while a<=#at and bg>0 do
_=c[6][at[a]]aG[a]={}aJ[a]={}q[a]={}ba[a]=aI[at[a]]ce.sort(ba[a],function(b,k)return u[b][20]>u[k][20]end)for n=_[2],_[1]+_[2]-1 do
ab=c[5][n]C=c[2][ab[4]]bN,cf=c[4][ab[1]],c[4][ab[2]]aL,ck=sub(bN,g[1]),sub(cf,g[1])bR=aH(aL)J,aM=bq(bR-g[3]),bq(aH(ck)-g[3])if A(J)<90 or A(aM)<90 then
am,ag=bb(J,-N,N),bb(aM,-N,N)if A(J)>=90 or A(aM)>=90 then
bP=bo(aL,ck)if A(J)>=90 then
if bP>0 then am=-N else am=N end
else
if bP<0 then ag=-N else ag=N end
end
end
m,l=az(tan(am)/M*B),az(tan(ag)/M*B)if m~=l then
o,ar=bk(g[1],bN),bk(g[1],cf)aO=ab[3]+90
bJ=aO-bR
cK=o*sin(bJ)aY=(o*cos(bJ))if J~=am then
o=aY/cos(aO-(am+g[3]))end
if aM~=ag then
ar=aY/cos(aO-(ag+g[3]))end
o,ar=o*cos(am),ar*cos(ag)h=ab[5]+6
cG=(m>l)if cG and C[h]~=0 then
aB=C[3]&4>0
if aB then
ac,X=ak[c[3][C[6]][6]],ak[c[3][C[7]][6]]end
aj=c[3][C[h]]cA={aj[3],aj[4],aj[5]}I,ca,bT=ak[aj[6]]for j,d in aN(cA)do
aC=d>0
aq=S
if(aC or(j==3 and not(ca and bT)))and(j==3 or aB)then
bZ=O
ci=0
if j<3 then
bZ=j==1 and E(ac[4],X[4])==0
y,v=ac[3-j],X[3-j]aq=(y<v)~=(j==2)~=(h==6)and y~=v and ac~=X
y,v=w(y,v),E(y,v)if aq then
if j==1then
ca=S
else
bT=S
ci=C[3]&16>0 and E(ac[2],X[2])-v or 0
end
end
else
if aB then
y,v=E(ac[1],X[1]),w(ac[2],X[2])aq=ac~=X
else
y,v=I[1],I[2]end
end
y,v=y-g[2],v-g[2]cj,bV=y*aK,v*aK
if(aq or aC)and not bZ then
bi=ab[6]-aj[1]if C[4]==48 then
bi=bi-aS
end
cM,cy=cj/o,bV/o
cu,cO=cj/ar,bV/ar
cr=0
ao=O
if aC then
_=c[21][d][4]if(ab[4]==bU or cg==C[4]or C[8])and _>0then
d=_
end
aD=c[21][d][3]s=1
if(j==3 and C[3]&16>0)or(j==1 and C[3]&8==0)then
s=-1
end
end
for h=m,l,-1 do
cz=bS[h]aZ=(aO-g[3])-cz
f=B-h
cp=O
if f>=0 and f<=L-1 then
if a<aF[f]then
b_=(h-m)/(l-m)F,G=(cM*(1-b_)+cu*b_),(cy*(1-b_)+cO*b_)if A(G+F)-(G-F)<af then
if aC then
if F~=G then
cp=S
bM=aY*tan(aZ)K=w(((A(bM)+A(aY))//aP)+1,4)bp=w(be(Y(K/cos(aZ))),16)K=be(K)bv=Y((E(bM-cK,0)-bi)/(aD*bp))*bp
cl={f,r-F,r-G,d,bv,v-y,I[5],aj[2]+ci,S,aD*K,K,s,not ao,j==3 and aB}if bv>cr or(not ao)or h==l then
cr=bv-1+bp
ao=S
q[a][#q[a]+1]=cl
end
cC=cl
end
end
if aq then
if j~=2 then
if G<U[f]then
aJ[a][#aJ[a]+1]={f,E(G,W[f]),U[f],I}end
if j==3then ad=G else ad=F end
if U[f]>ad then U[f]=ad end
end
if j~=1 then
if F>W[f]then
aG[a][#aG[a]+1]={f,W[f],w(F,U[f]),I}end
if j==3then ad=F else ad=G end
if W[f]<ad then W[f]=ad end
end
if(U[f]<=W[f])or(j==3 and(not aB)and aC)then
aF[f]=a
bg=bg-1
end
end
end
end
end
if(not cp)and ao then
ao=O
q[a][#q[a]+1]=cC
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
function onDraw()aU=cd
local ch,bc,ah,cR=aU.drawTriangleF,aU.drawRectF,aU.setColor,aU.drawText
bD=bD+1
cB={aG,aJ}if bD<=1 then
if aX then
e=c[24][c[19][8][an-3]]Z,as=e[1],e[2]z=L/ceil(Z*M)bH=z*1
for a=0,ceil(Z*M),1 do
m=(Z/2-a-1+g[3]/90*Z)%Z
l=(m%1-1)*z
m=Y(m)*as
for n=0,as-1,1 do
R=e[5+n+m]i=c[20][R]ah(i[1],i[2],i[3])bc(a*z+l,n*z,bH,bH)end
end
for a=#q,1,-1 do
for n=1,#q[a]do
d=q[a][n]if d[9]or d[13]then
if d[9]then
P=q[a][n+1]else
P=d
end
e=c[21][d[4]]e=c[21][d[4]+(bX%e[5])]s=d[12]aa=w(s,0)f=d[1]l=P[1]bI=d[2-aa]cv=P[2-aa]h=d[3+aa]bh=P[3+aa]if not P[9]then l=l+1 end
aE(d[7])cx=s*(d[2]-d[3])*d[10]/d[6]cw=s*(P[2]-P[3])*d[10]/P[6]bG=s>0 and w or E
bA=0
while h*s<bI*s and(bA<e[2]or not d[14])do
bY=bG(h+cx,bI)bz=bG(bh+cw,cv)R=e[7+((aa*d[11]+d[8]//e[3])%e[2])+e[2]*(d[5]%e[1])]i=c[20][R]if i then
ah(i[1]*p,i[2]*p,i[3]*p)ch(f,h,f,bY,l,bz)ch(f,h,l,bh,l,bz)end
h=bY
bh=bz
aa=aa+s
bA=bA+d[11]end
end
end
for b=1,2 do
_=cB[b]bF={}aw,ay,bt=af,-af
for n,d in aN(_[a])do
aw=w(aw,d[2])ay=E(ay,d[3])bt=d
e=c[22][d[4][b+2]]if e and not bW then
aE(d[4][5])i=c[20][e[5]]ah(i[1]*p,i[2]*p,i[3]*p)cd.drawLine(d[1],r-d[2],d[1],Y(r-d[3]-1))end
end
if bt and bW then
I=bt[4]cJ=(I[b]-g[2])bB=cos(g[3])by=sin(g[3])for au=Y(aw+r),ceil(ay+r)do
ai=aK*cJ/(r-au)cn=bB*ai-g[1][1]bL=by*ai-g[1][2]cc=-by*ai+cn
cq=bB*ai+bL
cH=by*ai+cn
cD=-bB*ai+bL
cF=(cH-cc)/L
cE=(cD-cq)/L
bF[au]={cF,cE,cc,cq}end
for n,d in aN(_[a])do
if I[b+2]~=0 then
aE(I[5])k=I[b+2]e=c[22][k]e=c[22][k+(bX%e[4])]f=d[1]bO=B-(B-f)*M
aw,ay=Y(d[2]+r),ceil(d[3]+r)aD=e[3]for au=aw,ay do
aW=bF[au]ct=(aW[3]+aW[1]*bO)//aD
cI=(aW[4]+aW[2]*bO)//aD
R=6+(cI%e[1])+e[1]*(ct%e[2])i=c[20][e[R]]if i then
ah(i[1]*p,i[2]*p,i[3]*p)bc(f,-au+af,1,1)end
end
end
end
end
end
for n=1,#ba[a]do
_=u[ba[a][n]]if _[6]~=0 then
aL=sub(_,g[1])o=_[20]if o>1 then
J=bq(aH(aL)-g[3])o=o*cos(J)if A(J)<90 then
m=B-az(tan(J)/M*B)aZ=az((T+J+g[3]-_[3])/360*8)Q=c[16][_[6]][1]if Q~=0 and _[6]~=1 then
e=c[17][A(Q)][aZ%8+1]s=e<0 and-1 or 1
e=A(e)if e>0 then
e=c[23][e]Z,as=e[1],e[2]K=w(be(o//aP+1),8)z=B/(M*o)aR=z*bC
F=r+(g[2]-_[9])/o*aK
G=F-e[5]*aR
l=m-s*e[4]*z
z,aR=z*e[3],aR*e[3]aE(ak[_[8]][5])p=Q>0 and p or 1
cm=z*K
cs=cm*bC
cN=_[4]and c[15][_[4]][23]&8>0
for h=0,Z-1,K do
m=l+h*z*s
if a<=aF[bb(az(m),0,L-1)]then
for j=0,as-1,K do
R=e[7+j+h*as]if R~=0 then
if cN then
bs=bs%50+1
ah(0,0,0,w(75*c[13][2][bs],255))else
i=c[20][R]ah(i[1]*p,i[2]*p,i[3]*p)end
bc(m,G+j*aR,cm,cs)end
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
