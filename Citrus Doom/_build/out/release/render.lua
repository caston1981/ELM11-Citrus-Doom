cT=""

Q=180
cd=screen
aZ=ipairs
bS=table
cq=input
w=math
x=w.max
z=w.min
y=w.abs
ac=w.floor
ceil=w.ceil
sqrt=w.sqrt
F=cq.getNumber
bl=cq.getBool
pi=w.pi
L=false
R=true
bn=string
function bk(b,l)return b[1]*l[2]-b[2]*l[1]end
function sub(b,l)return{(b[1]-l[1]),(b[2]-l[2])}end
function bv(b)return((b+Q)%360)-Q end
function sin(b)return w.sin(b/Q*pi)end
function cos(b)return w.cos(b/Q*pi)end
function tan(b)return w.tan(b/Q*pi)end
function cR(b)return w.atan(b)*Q/pi end
function aQ(b)return w.atan(b[2],b[1])*Q/pi end
function bp(b,l,_)return z(x(l,b),_)end
function at(b)return ac(b+.5)end
function bd(b,l)return sqrt(((b[1]-l[1])^2)+((b[2]-l[2])^2))end
function bG(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
function aU(b)o=z(b/255+bO,1)^2.2 end
c={}bq=1
an=3
aX=L
aD=R
g={{0,0},0,0}K=288
B=K//2
ai=128
r=ai//2
aN={}aS=400
bE=200
bQ=100
cS=0
au={}aG=32768
ca=3002
bo=0
aH=0
aJ=0
bj=1.2
M=52
N=tan(M)aP=r*bj*K/ai/N
W=1
cp={}for a=-B,B do cp[a]=aQ({1,a/B*N})end
function bs(a)if a<aG then
local s,bu=c[7][a]bu=0<bk({s[3],s[4]},sub(g[1],s))and 8 or 7
bs(s[bu])bs(s[15-bu])else
ax[#ax+1]=a-aG
end
end
function aI(a,b)if a<aG then
s=c[7][a]return aI(s[0<bk({s[3],s[4]},sub(b,s))and 8 or 7],b)else
return a-aG
end
end
function bg(b)s=c[5][c[6][b][2]]return c[3][c[2][s[4]][s[5]+6]][6]end
function onTick()bA=0
for m=1,3 do
if bl(9)and(not aX)or not c[21]then
bm=property.getText(bq)a=1
C=cT
_=bn.sub(bm,a,a)while _~=cTdo
bP=bn.byte(_)if bP>64then
C=(C..bP-65)+0
if W==1then
bI=C
c[C]=c[C]or{}elseif W==2then
ct=C
aw=0
elseif W==3then
bz=C
else
if aw==0then
aw=ct
bz=bz-1
br={}c[bI][#c[bI]+1]=br
end
br[#br+1]=C
aw=aw-1
W=x(aw,bz)>0 and W-1 or 0
end
W=W+1
C=cT
else
C=C.._
end
a=a+1
_=bn.sub(bm,a,a)end
bq=bq+1
aX=bm==cT
end
end
if aX then
if F(9)>0 then
aD=R
an=F(9)end
if bQ>0 and not aD then
ae={}au[#au+1]=ae
aC=5
_=F(aC)while _~=0 do
ad={}ae[#ae+1]=ad
for a=0,8 do
ad[a+1]=F(aC+a)end
aC=aC+9
_=F(aC)end
end
if bl(1)then
ci=0
bb=F(1)bQ=F(3)aJ=aJ+1
bJ=aJ//10
if aD then
for a=1,10 do
c[a]=c[a+10*an]end
t=c[1]al=c[8]an=an+1
end
if F(2)>0 then
_=c[2][F(2)]if _ then
b=_[4]if b>0 then
if b==3008 then
bN=_[5]==1
elseif b>3004 then
aS=x(aS+3*(_[4]-3006),1)bE=aS/2
elseif b>3000 then
ca=_[4]end
ci=F(2)if b<3000 and c[9][_[5]][7]==0then
_[8]=1
end
end
end
end
if bl(3)and bb~=1 and bb~=3 then
bO=.1
aH=bb==5 and 5 or 3
else
aH=aH-1
if aH<1then
bO=0
end
end
for a=1,#au do
ae=au[a]for m=1,#ae do
ad=ae[m]_=ad[1]if _>(2^15)then
_=al[_-(2^15)]for h=1,6 do
_[h]=ad[h+1]end
elseif _<0 then
while-_>#t do
t[#t+1]=L
end
bS.remove(t,-_)else
if not t[_]then
t[_]={}end
_=t[_]for h=1,8 do
_[c[19][1][h]]=ad[h+1]end
_[15]=0
_[7]=aI(#c[7],_)_[8]=bg(_[7])end
end
end
au={}for a=1,#c[6]do
aN[a]={}end
for a=1,#t do
_=t[a]if _ then
if aD then
_[7]=aI(#c[7],_)_[8]=bg(_[7])_[9]=al[_[8]][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
end
bx=0
for m,d in aZ({1,2,9})do
_[d]=_[d]+_[d+10]bx=bx+_[d+10]end
if bx~=0then
_[7]=aI(#c[7],_)_[8]=bg(_[7])end
_[15]=_[15]+1
_[20]=bd(_,g[1])S=c[16][_[6]]if S~=nil then
if _[15]>=S[2]and S[2]~=-1 then
_[6]=S[4]_[15]=0
end
end
aN[_[7]][#aN[_[7]]+1]=a
end
end
aD=L
_=t[1]g[1]={_[1],_[2]}g[2]=_[9]+41
g[3]=_[3]ax={}bs(#c[7])aE={}q={}aK={}b_={}aa={}ab={}aO={}bc=K
for a=0,K-1 do
aE[a],aa[a],ab[a]=#c[6]+2,r+1,-r
end
a=1
while a<=#ax and bc>0 do
_=c[6][ax[a]]aK[a]={}b_[a]={}q[a]={}aO[a]=aN[ax[a]]bS.sort(aO[a],function(b,l)return t[b][20]>t[l][20]end)for m=_[2],_[1]+_[2]-1 do
V=c[5][m]A=c[2][V[4]]bT,bL=c[4][V[1]],c[4][V[2]]aV,ck=sub(bT,g[1]),sub(bL,g[1])cc=aQ(aV)H,aW=bv(cc-g[3]),bv(aQ(ck)-g[3])if y(H)<90 or y(aW)<90 then
aj,ag=bp(H,-M,M),bp(aW,-M,M)if y(H)>=90 or y(aW)>=90 then
bD=bk(aV,ck)if y(H)>=90 then
if bD>0 then aj=-M else aj=M end
else
if bD<0 then ag=-M else ag=M end
end
end
n,k=at(tan(aj)/N*B),at(tan(ag)/N*B)if n~=k then
p,aq=bd(g[1],bT),bd(g[1],bL)aT=V[3]+90
bY=aT-cc
cw=p*sin(bY)aY=(p*cos(bY))if H~=aj then
p=aY/cos(aT-(aj+g[3]))end
if aW~=ag then
aq=aY/cos(aT-(ag+g[3]))end
p,aq=p*cos(aj),aq*cos(ag)h=V[5]+6
cE=(n>k)if cE and A[h]~=0 then
ay=A[3]&4>0
if ay then
X,U=al[c[3][A[6]][6]],al[c[3][A[7]][6]]end
ak=c[3][A[h]]cu={ak[3],ak[4],ak[5]}I,cb,cg=al[ak[6]]for j,d in aZ(cu)do
ar=d>0
aB=R
if(ar or(j==3 and not(cb and cg)))and(j==3 or ay)then
cl=L
bR=0
if j<3 then
cl=j==1 and x(X[4],U[4])==0
E,v=X[3-j],U[3-j]aB=(E<v)~=(j==2)~=(h==6)and E~=v and X~=U
E,v=z(E,v),x(E,v)if aB then
if j==1then
cb=R
else
cg=R
bR=A[3]&16>0 and x(X[2],U[2])-v or 0
end
end
else
if ay then
E,v=x(X[1],U[1]),z(X[2],U[2])aB=X~=U
else
E,v=I[1],I[2]end
end
E,v=E-g[2],v-g[2]co,bM=E*aP,v*aP
if(aB or ar)and not cl then
be=V[6]-ak[1]if A[4]==48 then
be=be-aJ
end
cP,cI=co/p,bM/p
cA,cD=co/aq,bM/aq
bU=0
as=L
if ar then
_=c[21][d][4]if(V[4]==ci or ca==A[4]or A[8])and _>0then
d=_
end
av=c[21][d][3]u=1
if(j==3 and A[3]&16>0)or(j==1 and A[3]&8==0)then
u=-1
end
end
for h=n,k,-1 do
cH=cp[h]bt=(aT-g[3])-cH
f=B-h
cm=L
if f>=0 and f<=K-1 then
if a<aE[f]then
aF=(h-n)/(k-n)J,G=(cP*(1-aF)+cA*aF),(cI*(1-aF)+cD*aF)if y(G+J)-(G-J)<ai then
if ar then
if J~=G then
cm=R
bF=aY*tan(bt)aA=bG(z(((y(bF)+y(aY))//bE)+1,16))bX=ac((x(bF-cw,0)-be)/(av*aA))cn=bX*aA
bC={f,r-J,r-G,d,bX,v-E,I[5],ak[2]+bR,R,av*aA,aA,u,not as,j==3 and ay}if cn>bU or(not as)or h==k then
bU=cn-1+aA
as=R
q[a][#q[a]+1]=bC
end
cO=bC
end
end
if aB then
if j~=2 then
if G<aa[f]then
b_[a][#b_[a]+1]={f,x(G,ab[f]),aa[f],I}end
if j==3then T=G else T=J end
if aa[f]>T then aa[f]=T end
end
if j~=1 then
if J>ab[f]then
aK[a][#aK[a]+1]={f,ab[f],z(J,aa[f]),I}end
if j==3then T=J else T=G end
if ab[f]<T then ab[f]=T end
end
if(aa[f]<=ab[f])or(j==3 and(not ay)and ar)then
aE[f]=a
bc=bc-1
end
end
end
end
end
if(not cm)and as then
as=L
q[a][#q[a]+1]=cO
q[a][#q[a]][9]=L
end
end
if#q[a]>0 then
q[a][#q[a]][9]=L
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
function onDraw()aM=cd
local cs,bf,af,cQ=aM.drawTriangleF,aM.drawRectF,aM.setColor,aM.drawText
cv={aK,b_}if aX then
e=c[24][c[19][8][an-3]]Z,az=e[1],e[2]D=K/ceil(Z*N)ce=D*1
for a=0,ceil(Z*N),1 do
n=(Z/2-a-1+g[3]/90*Z)%Z
k=(n%1-1)*D
n=ac(n)*az
for m=0,az-1,1 do
O=e[5+m+n]i=c[20][O]af(i[1],i[2],i[3])bf(a*D+k,m*D,ce,ce)end
end
for a=#q,1,-1 do
for m=1,#q[a]do
d=q[a][m]if d[9]or d[13]then
if d[9]then
P=q[a][m+1]else
P=d
end
e=c[21][d[4]]e=c[21][d[4]+(bJ%e[5])*c[19][3][2]+c[19][12][d[11]]]u=d[12]Y=z(u,0)f=d[1]k=P[1]bZ=d[2-Y]cL=P[2-Y]h=d[3+Y]bw=P[3+Y]if not P[9]then k=k+1 end
aU(d[7])cB=u*(d[2]-d[3])*e[3]/d[6]cK=u*(P[2]-P[3])*e[3]/P[6]bK=u>0 and z or x
by=0
while h*u<bZ*u and(by<e[2]or not d[14])do
bV=bK(h+cB,bZ)ba=bK(bw+cK,cL)O=e[7+((Y+d[8]//e[3])%e[2])+e[2]*((d[5])%e[1])]i=c[20][O]if i then
af(i[1]*o,i[2]*o,i[3]*o)cs(f,h,f,bV,k,ba)cs(f,h,k,bw,k,ba)end
h=bV
bw=ba
Y=Y+u
by=by+1
end
end
end
for b=1,2 do
_=cv[b]c_={}am,ap,bB=ai,-ai
for m,d in aZ(_[a])do
am=z(am,d[2])ap=x(ap,d[3])bB=d
e=c[22][d[4][b+2]]if e and not bN then
aU(d[4][5])i=c[20][e[5]]af(i[1]*o,i[2]*o,i[3]*o)cd.drawLine(d[1],r-d[2],d[1],ac(r-d[3]-1))end
end
if bB and bN then
I=bB[4]cF=(I[b]-g[2])bi=cos(g[3])bh=sin(g[3])for ao=ac(am+r),ceil(ap+r)do
ah=aP*cF/(r-ao)cr=bi*ah-g[1][1]cf=bh*ah-g[1][2]ch=-bh*ah+cr
cj=bi*ah+cf
cM=bh*ah+cr
cC=-bi*ah+cf
cG=(cM-ch)/K
cz=(cC-cj)/K
c_[ao]={cG,cz,ch,cj}end
for m,d in aZ(_[a])do
if I[b+2]~=0 then
aU(I[5])l=I[b+2]e=c[22][l]e=c[22][l+(bJ%e[4])]f=d[1]bW=B-(B-f)*N
am,ap=ac(d[2]+r),ceil(d[3]+r)av=e[3]for ao=am,ap do
aR=c_[ao]cJ=(aR[3]+aR[1]*bW)//av
cN=(aR[4]+aR[2]*bW)//av
O=6+(cN%e[1])+e[1]*(cJ%e[2])i=c[20][e[O]]if i then
af(i[1]*o,i[2]*o,i[3]*o)bf(f,-ao+ai,1,1)end
end
end
end
end
end
for m=1,#aO[a]do
_=t[aO[a][m]]if _[6]~=0 then
aV=sub(_,g[1])p=_[20]if p>1 then
H=bv(aQ(aV)-g[3])p=p*cos(H)if y(H)<90 then
n=B-at(tan(H)/N*B)bt=at((Q+H+g[3]-_[3]+bA*4)/360*8)S=c[16][_[6]][1]if S~=0 and _[6]~=1 then
e=c[17][y(S)][bt%8+1]u=e<0 and-1 or 1
e=y(e)if e>0 then
e=c[23][e+c[19][12][z(bG(p//aS+1),8)]]Z,az=e[1],e[2]D=B/(N*p)aL=D*bj
J=r+(g[2]-_[9])/p*aP
G=J-e[5]*aL
k=n-u*e[4]*D
D,aL=D*e[3],aL*e[3]aU(al[_[8]][5])o=S>0 and o or 1
bH=D
cy=bH*bj
cx=_[4]and c[15][_[4]][23]&8>0
for h=0,Z-1 do
n=k+h*D*u
if a<=aE[bp(at(n),0,K-1)]then
for j=0,az-1 do
O=e[7+j+h*az]if O~=0 then
if cx then
bo=bo%50+1
af(0,0,0,z(75*c[13][2][bo],255))else
i=c[20][O]af(i[1]*o,i[2]*o,i[3]*o)end
bf(n,G+j*aL,bH,cy)end
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
bA=bA+1
end
