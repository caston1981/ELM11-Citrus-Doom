cS=""

T=180
cc=screen
aF=ipairs
co=table
bN=input
w=math
A=w.max
x=w.min
C=w.abs
Z=w.floor
ceil=w.ceil
sqrt=w.sqrt
J=bN.getNumber
bD=bN.getBool
pi=w.pi
N=false
R=true
bo=string
function bt(b,k)return b[1]*k[2]-b[2]*k[1]end
function sub(b,k)return{(b[1]-k[1]),(b[2]-k[2])}end
function bw(b)return((b+T)%360)-T end
function sin(b)return w.sin(b/T*pi)end
function cos(b)return w.cos(b/T*pi)end
function tan(b)return w.tan(b/T*pi)end
function cR(b)return w.atan(b)*T/pi end
function aS(b)return w.atan(b[2],b[1])*T/pi end
function bk(b,k,_)return x(A(k,b),_)end
function ar(b)return Z(b+.5)end
function bg(b,k)return sqrt(((b[1]-k[1])^2)+((b[2]-k[2])^2))end
function bj(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
function aP(b)q=x(b/255+cf,1)^2.2 end
c={}br=1
ay=3
aI=N
at=R
g={{0,0},0,0}O=288
D=O//2
ae=128
t=ae//2
aN={}aM=400
bG=100
cQ=0
aw={}aE=32768
bI=3002
by=0
aJ=0
aG=0
bq=1.2
K=52
M=tan(K)aW=t*bq*O/ae/M
aa=1
bU={}for a=-D,D do bU[a]=aS({1,a/D*M})end
function bp(a)if a<aE then
local s,bm=c[7][a]bm=0<bt({s[3],s[4]},sub(g[1],s))and 8 or 7
bp(s[bm])bp(s[15-bm])else
aD[#aD+1]=a-aE
end
end
function aQ(a,b)if a<aE then
s=c[7][a]return aQ(s[0<bt({s[3],s[4]},sub(b,s))and 8 or 7],b)else
return a-aE
end
end
function bc(b)s=c[5][c[6][b][2]]return c[3][c[2][s[4]][s[5]+6]][6]end
function onTick()bB=0
for l=1,3 do
if bD(9)and(not aI)or not c[21]then
bz=property.getText(br)a=1
y=cS
_=bo.sub(bz,a,a)while _~=cSdo
ch=bo.byte(_)if ch>64then
y=(y..ch-65)+0
if aa==1then
ca=y
c[y]=c[y]or{}elseif aa==2then
cy=y
as=0
elseif aa==3then
bv=y
else
if as==0then
as=cy
bv=bv-1
bd={}c[ca][#c[ca]+1]=bd
end
bd[#bd+1]=y
as=as-1
aa=A(as,bv)>0 and aa-1 or 0
end
aa=aa+1
y=cS
else
y=y.._
end
a=a+1
_=bo.sub(bz,a,a)end
br=br+1
aI=bz==cS
end
end
if aI then
if J(9)>0 then
at=R
ay=J(9)end
if bG>0 and not at then
ah={}aw[#aw+1]=ah
ax=5
_=J(ax)while _~=0 do
ak={}ah[#ah+1]=ak
for a=0,8 do
ak[a+1]=J(ax+a)end
ax=ax+9
_=J(ax)end
end
if bD(1)then
bT=0
bs=J(1)bG=J(3)aG=aG+1
cp=aG//10
if at then
for a=1,10 do
c[a]=c[a+10*ay]end
u=c[1]ai=c[8]ay=ay+1
end
if J(2)>0 then
_=c[2][J(2)]if _ then
b=_[4]if b>0 then
if b==3008 then
bK=_[5]==1
elseif b>3004 then
aM=A(aM+3*(_[4]-3006),1)elseif b>3000 then
bI=_[4]end
bT=J(2)if b<3000 and c[9][_[5]][7]==0then
_[8]=1
end
end
end
end
if bD(3)and bs~=1 and bs~=3 then
cf=.1
aJ=bs==5 and 5 or 3
else
aJ=aJ-1
if aJ<1then
cf=0
end
end
for a=1,#aw do
ah=aw[a]for l=1,#ah do
ak=ah[l]_=ak[1]if _>(2^15)then
_=ai[_-(2^15)]for h=1,6 do
_[h]=ak[h+1]end
elseif _<0 then
while-_>#u do
u[#u+1]=N
end
co.remove(u,-_)else
if not u[_]then
u[_]={}end
_=u[_]for h=1,8 do
_[c[19][1][h]]=ak[h+1]end
_[15]=0
_[7]=aQ(#c[7],_)_[8]=bc(_[7])end
end
end
aw={}for a=1,#c[6]do
aN[a]={}end
for a=1,#u do
_=u[a]if _ then
if at then
_[7]=aQ(#c[7],_)_[8]=bc(_[7])_[9]=ai[_[8]][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
end
bf=0
for l,d in aF({1,2,9})do
_[d]=_[d]+_[d+10]bf=bf+_[d+10]end
if bf~=0then
_[7]=aQ(#c[7],_)_[8]=bc(_[7])end
_[15]=_[15]+1
_[20]=bg(_,g[1])Q=c[16][_[6]]if Q~=nil then
if _[15]>=Q[2]and Q[2]~=-1 then
_[6]=Q[4]_[15]=0
end
end
aN[_[7]][#aN[_[7]]+1]=a
end
end
at=N
_=u[1]g[1]={_[1],_[2]}g[2]=_[9]+41
g[3]=_[3]aD={}bp(#c[7])aK={}p={}aX={}aT={}U={}X={}aH={}bC=O
for a=0,O-1 do
aK[a],U[a],X[a]=#c[6]+2,t+1,-t
end
a=1
while a<=#aD and bC>0 do
_=c[6][aD[a]]aX[a]={}aT[a]={}p[a]={}aH[a]=aN[aD[a]]co.sort(aH[a],function(b,k)return u[b][20]>u[k][20]end)for l=_[2],_[1]+_[2]-1 do
V=c[5][l]z=c[2][V[4]]cq,bX=c[4][V[1]],c[4][V[2]]aZ,bP=sub(cq,g[1]),sub(bX,g[1])bV=aS(aZ)F,ba=bw(bV-g[3]),bw(aS(bP)-g[3])if C(F)<90 or C(ba)<90 then
am,aj=bk(F,-K,K),bk(ba,-K,K)if C(F)>=90 or C(ba)>=90 then
bH=bt(aZ,bP)if C(F)>=90 then
if bH>0 then am=-K else am=K end
else
if bH<0 then aj=-K else aj=K end
end
end
m,n=ar(tan(am)/M*D),ar(tan(aj)/M*D)if m~=n then
o,aC=bg(g[1],cq),bg(g[1],bX)aV=V[3]+90
bJ=aV-bV
cC=o*sin(bJ)aR=(o*cos(bJ))if F~=am then
o=aR/cos(aV-(am+g[3]))end
if ba~=aj then
aC=aR/cos(aV-(aj+g[3]))end
o,aC=o*cos(am),aC*cos(aj)h=V[5]+6
cI=(m>n)if cI and z[h]~=0 then
an=z[3]&4>0
if an then
ad,Y=ai[c[3][z[6]][6]],ai[c[3][z[7]][6]]end
ag=c[3][z[h]]ct={ag[3],ag[4],ag[5]}H,bW,cg=ai[ag[6]]for j,d in aF(ct)do
aq=d>0
au=R
if(aq or(j==3 and not(bW and cg)))and(j==3 or an)then
cj=N
bR=0
if j<3 then
cj=j==1 and A(ad[4],Y[4])==0
B,v=ad[3-j],Y[3-j]au=(B<v)~=(j==2)~=(h==6)and B~=v and ad~=Y
B,v=x(B,v),A(B,v)if au then
if j==1then
bW=R
else
cg=R
bR=z[3]&16>0 and A(ad[2],Y[2])-v or 0
end
end
else
if an then
B,v=A(ad[1],Y[1]),x(ad[2],Y[2])au=ad~=Y
else
B,v=H[1],H[2]end
end
B,v=B-g[2],v-g[2]bO,cl=B*aW,v*aW
if(au or aq)and not cj then
be=V[6]-ag[1]if z[4]==48 then
be=be-aG
end
cz,cK=bO/o,cl/o
cG,cJ=bO/aC,cl/aC
bQ=0
aA=N
if aq then
_=c[21][d][4]if(V[4]==bT or bI==z[4]or z[8])and _>0then
d=_
end
ap=c[21][d][3]r=1
if(j==3 and z[3]&16>0)or(j==1 and z[3]&8==0)then
r=-1
end
end
for h=m,n,-1 do
cL=bU[h]aU=(aV-g[3])-cL
f=D-h
bL=N
if f>=0 and f<=O-1 then
if a<aK[f]then
aL=(h-m)/(n-m)G,I=(cz*(1-aL)+cG*aL),(cK*(1-aL)+cJ*aL)if C(I+G)-(I-G)<ae then
if aq then
if G~=I then
bL=R
ck=aR*tan(aU)L=x(((C(ck)+C(aR))//aM)+1,4)bu=x(bj(Z(L/cos(aU))),16)L=bj(L)bl=Z((A(ck-cC,0)-be)/(ap*bu))*bu
cn={f,t-G,t-I,d,bl,v-B,H[5],ag[2]+bR,R,ap*L,L,r,not aA,j==3 and an}if bl>bQ or(not aA)or h==n then
bQ=bl-1+bu
aA=R
p[a][#p[a]+1]=cn
end
cD=cn
end
end
if au then
if j~=2 then
if I<U[f]then
aT[a][#aT[a]+1]={f,A(I,X[f]),U[f],H}end
if j==3then ab=I else ab=G end
if U[f]>ab then U[f]=ab end
end
if j~=1 then
if G>X[f]then
aX[a][#aX[a]+1]={f,X[f],x(G,U[f]),H}end
if j==3then ab=G else ab=I end
if X[f]<ab then X[f]=ab end
end
if(U[f]<=X[f])or(j==3 and(not an)and aq)then
aK[f]=a
bC=bC-1
end
end
end
end
end
if(not bL)and aA then
aA=N
p[a][#p[a]+1]=cD
p[a][#p[a]][9]=N
end
end
if#p[a]>0 then
p[a][#p[a]][9]=N
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
function onDraw()aO=cc
local cm,bb,af,cP=aO.drawTriangleF,aO.drawRectF,aO.setColor,aO.drawText
bB=bB+1
cH={aX,aT}if bB<=1 then
if aI then
e=c[24][c[19][8][ay-3]]W,az=e[1],e[2]E=O/ceil(W*M)bS=E*1
for a=0,ceil(W*M),1 do
m=(W/2-a-1+g[3]/90*W)%W
n=(m%1-1)*E
m=Z(m)*az
for l=0,az-1,1 do
P=e[5+l+m]i=c[20][P]af(i[1],i[2],i[3])bb(a*E+n,l*E,bS,bS)end
end
for a=#p,1,-1 do
for l=1,#p[a]do
d=p[a][l]if d[9]or d[13]then
if d[9]then
S=p[a][l+1]else
S=d
end
e=c[21][d[4]]e=c[21][d[4]+(cp%e[5])]r=d[12]ac=x(r,0)f=d[1]n=S[1]bF=d[2-ac]cM=S[2-ac]h=d[3+ac]bE=S[3+ac]if not S[9]then n=n+1 end
aP(d[7])cv=r*(d[2]-d[3])*d[10]/d[6]cu=r*(S[2]-S[3])*d[10]/S[6]c_=r>0 and x or A
bx=0
while h*r<bF*r and(bx<e[2]or not d[14])do
bM=c_(h+cv,bF)bA=c_(bE+cu,cM)P=e[7+((ac*d[11]+d[8]//e[3])%e[2])+e[2]*(d[5]%e[1])]i=c[20][P]if i then
af(i[1]*q,i[2]*q,i[3]*q)cm(f,h,f,bM,n,bA)cm(f,h,n,bE,n,bA)end
h=bM
bE=bA
ac=ac+r
bx=bx+d[11]end
end
end
for b=1,2 do
_=cH[b]bY={}ao,aB,bi=ae,-ae
for l,d in aF(_[a])do
ao=x(ao,d[2])aB=A(aB,d[3])bi=d
e=c[22][d[4][b+2]]if e and not bK then
aP(d[4][5])i=c[20][e[5]]af(i[1]*q,i[2]*q,i[3]*q)cc.drawLine(d[1],t-d[2],d[1],Z(t-d[3]-1))end
end
if bi and bK then
H=bi[4]cB=(H[b]-g[2])bh=cos(g[3])bn=sin(g[3])for av=Z(ao+t),ceil(aB+t)do
al=aW*cB/(t-av)cr=bh*al-g[1][1]cd=bn*al-g[1][2]cb=-bn*al+cr
bZ=bh*al+cd
cO=bn*al+cr
cN=-bh*al+cd
cs=(cO-cb)/O
cA=(cN-bZ)/O
bY[av]={cs,cA,cb,bZ}end
for l,d in aF(_[a])do
if H[b+2]~=0 then
aP(H[5])k=H[b+2]e=c[22][k]e=c[22][k+(cp%e[4])]f=d[1]ce=D-(D-f)*M
ao,aB=Z(d[2]+t),ceil(d[3]+t)ap=e[3]for av=ao,aB do
b_=bY[av]cE=(b_[3]+b_[1]*ce)//ap
cF=(b_[4]+b_[2]*ce)//ap
P=6+(cF%e[1])+e[1]*(cE%e[2])i=c[20][e[P]]if i then
af(i[1]*q,i[2]*q,i[3]*q)bb(f,-av+ae,1,1)end
end
end
end
end
end
for l=1,#aH[a]do
_=u[aH[a][l]]if _[6]~=0 then
aZ=sub(_,g[1])o=_[20]if o>1 then
F=bw(aS(aZ)-g[3])o=o*cos(F)if C(F)<90 then
m=D-ar(tan(F)/M*D)aU=ar((T+F+g[3]-_[3])/360*8)Q=c[16][_[6]][1]if Q~=0 and _[6]~=1 then
e=c[17][C(Q)][aU%8+1]r=e<0 and-1 or 1
e=C(e)if e>0 then
e=c[23][e]W,az=e[1],e[2]L=x(bj(o//aM+1),8)E=D/(M*o)aY=E*bq
G=t+(g[2]-_[9])/o*aW
I=G-e[5]*aY
n=m-r*e[4]*E
E,aY=E*e[3],aY*e[3]aP(ai[_[8]][5])q=Q>0 and q or 1
ci=E*L
cx=ci*bq
cw=_[4]and c[15][_[4]][23]&8>0
for h=0,W-1,L do
m=n+h*E*r
if a<=aK[bk(ar(m),0,O-1)]then
for j=0,az-1,L do
P=e[7+j+h*az]if P~=0 then
if cw then
by=by%50+1
af(0,0,0,x(75*c[13][2][by],255))else
i=c[20][P]af(i[1]*q,i[2]*q,i[3]*q)end
bb(m,I+j*aY,ci,cx)end
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
