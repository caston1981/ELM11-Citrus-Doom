cR=""

Q=180
bI=screen
b_=ipairs
cm=table
bV=input
x=math
y=x.max
w=x.min
C=x.abs
V=x.floor
ceil=x.ceil
sqrt=x.sqrt
F=bV.getNumber
bD=bV.getBool
pi=x.pi
N=false
P=true
bp=string
function bj(b,k)return b[1]*k[2]-b[2]*k[1]end
function sub(b,k)return{(b[1]-k[1]),(b[2]-k[2])}end
function by(b)return((b+Q)%360)-Q end
function sin(b)return x.sin(b/Q*pi)end
function cos(b)return x.cos(b/Q*pi)end
function tan(b)return x.tan(b/Q*pi)end
function cP(b)return x.atan(b)*Q/pi end
function aQ(b)return x.atan(b[2],b[1])*Q/pi end
function bs(b,k,_)return w(y(k,b),_)end
function aE(b)return V(b+.5)end
function bo(b,k)return sqrt(((b[1]-k[1])^2)+((b[2]-k[2])^2))end
function bt(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
function aM(b)o=w(b/255+cd,1)^2.2 end
c={}bh=1
aA=3
aT=N
ay=P
g={{0,0},0,0}M=288
z=M//2
ak=128
u=ak//2
aI={}aG=400
bS=100
cQ=0
aq={}aN=32768
ca=3002
bz=0
aH=0
aZ=0
bu=1.2
O=52
K=tan(O)aK=u*bu*M/ak/K
ad=1
co={}for a=-z,z do co[a]=aQ({1,a/z*K})end
function bq(a)if a<aN then
local s,bx=c[7][a]bx=0<bj({s[3],s[4]},sub(g[1],s))and 8 or 7
bq(s[bx])bq(s[15-bx])else
aC[#aC+1]=a-aN
end
end
function aR(a,b)if a<aN then
s=c[7][a]return aR(s[0<bj({s[3],s[4]},sub(b,s))and 8 or 7],b)else
return a-aN
end
end
function bB(b)s=c[5][c[6][b][2]]return c[3][c[2][s[4]][s[5]+6]][6]end
function onTick()bi=0
for l=1,3 do
if bD(9)and(not aT)or not c[21]then
br=property.getText(bh..cR)if br~=cR then
a=1
D=cR
_=bp.sub(br,a,a)while _~=cRdo
k=bp.byte(_)if k>64 or _==cRthen
D=(D..(k-65))+0
if ad==1then
cp=D
if c[D]==cN then
c[D]={}end
ad=2
elseif ad==2then
cr=D
av=0
ad=3
elseif ad==3then
bl=D
ad=4
else
if av==0then
av=cr
bl=bl-1
ai={}c[cp][#c[cp]+1]=ai
end
ai[#ai+1]=D
av=av-1
if y(av,bl)==0then
ad=1
end
end
D=cR
else
D=D.._
end
a=a+1
_=bp.sub(br,a,a)end
bh=bh+1
else
aT=P
end
end
end
if aT then
if F(9)>0 then
ay=P
aA=F(9)end
if bS>0 and not ay then
al={}aq[#aq+1]=al
aw=5
_=F(aw)while _~=0 do
ae={}al[#al+1]=ae
for a=0,8 do
ae[a+1]=F(aw+a)end
aw=aw+9
_=F(aw)end
end
if bD(1)then
c_=0
bv=F(1)bS=F(3)aZ=aZ+1
bF=aZ//10
if ay then
for a=1,10 do
c[a]=c[a+10*aA]end
r=c[1]aj=c[8]aA=aA+1
end
if F(2)>0 then
_=c[2][F(2)]if _ then
b=_[4]if b==3008 then
bT=_[5]==1
elseif b>3004 then
aG=y(aG+3*(_[4]-3006),1)elseif b>3000 then
ca=_[4]end
c_=F(2)end
end
if bD(3)and bv~=1 and bv~=3 then
cd=.1
aH=bv==5 and 5 or 3
else
aH=aH-1
if aH<1then
cd=0
end
end
for a=1,#aq do
al=aq[a]for l=1,#al do
ae=al[l]_=ae[1]if _>(2^15)then
_=aj[_-(2^15)]for h=1,6 do
_[h]=ae[h+1]end
elseif _<0 then
while-_>#r do
r[#r+1]=N
end
cm.remove(r,-_)else
if not r[_]then
r[_]={}end
_=r[_]for h=1,8 do
_[c[19][1][h]]=ae[h+1]end
_[15]=0
_[7]=aR(#c[7],_)_[8]=bB(_[7])end
end
end
aq={}for a=1,#c[6]do
aI[a]={}end
for a=1,#r do
_=r[a]if _ then
if ay then
_[7]=aR(#c[7],_)_[8]=bB(_[7])_[9]=aj[_[8]][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
end
bn=0
for l,d in b_({1,2,9})do
_[d]=_[d]+_[d+10]bn=bn+_[d+10]end
if bn~=0then
_[7]=aR(#c[7],_)_[8]=bB(_[7])end
_[15]=_[15]+1
_[20]=bo(_,g[1])S=c[16][_[6]]if S~=nil then
if _[15]>=S[2]and S[2]~=-1 then
_[6]=S[4]_[15]=0
end
end
aI[_[7]][#aI[_[7]]+1]=a
end
end
ay=N
_=r[1]g[1]={_[1],_[2]}g[2]=_[9]+41
g[3]=_[3]aC={}bq(#c[7])aW={}q={}bb={}aL={}aa={}Z={}ba={}bC=M
for a=0,M-1 do
aW[a],aa[a],Z[a]=#c[6]+2,u+1,-u
end
a=1
while a<=#aC and bC>0 do
_=c[6][aC[a]]bb[a]={}aL[a]={}q[a]={}ba[a]=aI[aC[a]]cm.sort(ba[a],function(b,k)return r[b][20]>r[k][20]end)for l=_[2],_[1]+_[2]-1 do
X=c[5][l]G=c[2][X[4]]bL,cl=c[4][X[1]],c[4][X[2]]aP,cf=sub(bL,g[1]),sub(cl,g[1])bU=aQ(aP)I,aX=by(bU-g[3]),by(aQ(cf)-g[3])if C(I)<90 or C(aX)<90 then
ag,ah=bs(I,-O,O),bs(aX,-O,O)if C(I)>=90 or C(aX)>=90 then
ch=bj(aP,cf)if C(I)>=90 then
if ch>0 then ag=-O else ag=O end
else
if ch<0 then ah=-O else ah=O end
end
end
n,m=aE(tan(ag)/K*z),aE(tan(ah)/K*z)if n~=m then
p,aB=bo(g[1],bL),bo(g[1],cl)aF=X[3]+90
bK=aF-bU
cq=p*sin(bK)aS=(p*cos(bK))if I~=ag then
p=aS/cos(aF-(ag+g[3]))end
if aX~=ah then
aB=aS/cos(aF-(ah+g[3]))end
p,aB=p*cos(ag),aB*cos(ah)h=X[5]+6
cx=(n>m)if cx and G[h]~=0 then
ax=G[3]&4>0
if ax then
ab,ac=aj[c[3][G[6]][6]],aj[c[3][G[7]][6]]end
am=c[3][G[h]]cv={am[3],am[4],am[5]}J,bQ,bG=aj[am[6]]for j,d in b_(cv)do
au=d>0
az=P
if(au or(j==3 and not(bQ and bG)))and(j==3 or ax)then
ci=N
bJ=0
if j<3 then
ci=j==1 and y(ab[4],ac[4])==0
B,v=ab[3-j],ac[3-j]az=(B<v)~=(j==2)~=(h==6)and B~=v and ab~=ac
B,v=w(B,v),y(B,v)if az then
if j==1then
bQ=P
else
bG=P
bJ=G[3]&16>0 and y(ab[2],ac[2])-v or 0
end
end
else
if ax then
B,v=y(ab[1],ac[1]),w(ab[2],ac[2])az=ab~=ac
else
B,v=J[1],J[2]end
end
B,v=B-g[2],v-g[2]cc,bX=B*aK,v*aK
if(az or au)and not ci then
bc=X[6]-am[1]if G[4]==48 then
bc=bc-aZ
end
cz,cD=cc/p,bX/p
cF,cH=cc/aB,bX/aB
bY=0
at=N
if au then
_=c[21][d][4]if(X[4]==c_ or ca==G[4])and _>0then
d=_
end
ar=c[21][d][3]t=1
if(j==3 and G[3]&16>0)or(j==1 and G[3]&8==0)then
t=-1
end
end
for h=n,m,-1 do
cI=co[h]aU=(aF-g[3])-cI
f=z-h
bH=N
if f>=0 and f<=M-1 then
if a<aW[f]then
aV=(h-n)/(m-n)E,H=(cz*(1-aV)+cF*aV),(cD*(1-aV)+cH*aV)if C(H+E)-(H-E)<ak then
if au then
if E~=H then
bH=P
cb=aS*tan(aU)L=w(((C(cb)+C(aS))//aG)+1,4)bd=w(bt(V(L/cos(aU))),16)L=bt(L)bf=V((y(cb-cq,0)-bc)/(ar*bd))*bd
cg={f,u-E,u-H,d,bf,v-B,J[5],am[2]+bJ,P,ar*L,L,t,not at,j==3 and ax}if bf>bY or(not at)or h==m then
bY=bf-1+bd
at=P
q[a][#q[a]+1]=cg
end
cL=cg
end
end
if az then
if j~=2 then
if H<aa[f]then
aL[a][#aL[a]+1]={f,y(H,Z[f]),aa[f],J}end
if j==3then W=H else W=E end
if aa[f]>W then aa[f]=W end
end
if j~=1 then
if E>Z[f]then
bb[a][#bb[a]+1]={f,Z[f],w(E,aa[f]),J}end
if j==3then W=E else W=H end
if Z[f]<W then Z[f]=W end
end
if(aa[f]<=Z[f])or(j==3 and(not ax)and au)then
aW[f]=a
bC=bC-1
end
end
end
end
end
if(not bH)and at then
at=N
q[a][#q[a]+1]=cL
q[a][#q[a]][9]=N
end
end
if#q[a]>0 then
q[a][#q[a]][9]=N
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
function onDraw()aJ=bI
local ce,bg,af,cO=aJ.drawTriangleF,aJ.drawRectF,aJ.setColor,aJ.drawText
bi=bi+1
cK={bb,aL}if bi<=1 then
if aT then
e=c[24][c[19][8][aA-3]]U,ao=e[1],e[2]A=M/ceil(U*K)bW=A*1
for a=0,ceil(U*K),1 do
n=(U/2-a-1+g[3]/90*U)%U
m=(n%1-1)*A
n=V(n)*ao
for l=0,ao-1,1 do
T=e[5+l+n]i=c[20][T]af(i[1],i[2],i[3])bg(a*A+m,l*A,bW,bW)end
end
for a=#q,1,-1 do
for l=1,#q[a]do
d=q[a][l]if d[9]or d[13]then
if d[9]then
R=q[a][l+1]else
R=d
end
e=c[21][d[4]]e=c[21][d[4]+(bF%e[5])]t=d[12]Y=w(t,0)f=d[1]m=R[1]ck=d[2-Y]cu=R[2-Y]h=d[3+Y]bE=R[3+Y]if not R[9]then m=m+1 end
aM(d[7])cy=t*(d[2]-d[3])*d[10]/d[6]cE=t*(R[2]-R[3])*d[10]/R[6]ai=t>0 and w or y
bk=0
while h*t<ck*t and(bk<e[2]or not d[14])do
cj=ai(h+cy,ck)bm=ai(bE+cE,cu)T=e[7+((Y*d[11]+d[8]//e[3])%e[2])+e[2]*(d[5]%e[1])]i=c[20][T]if i then
af(i[1]*o,i[2]*o,i[3]*o)ce(f,h,f,cj,m,bm)ce(f,h,m,bE,m,bm)end
h=cj
bE=bm
Y=Y+t
bk=bk+d[11]end
end
end
for b=1,2 do
_=cK[b]bZ={}ap,aD,bw=ak,-ak
for l,d in b_(_[a])do
ap=w(ap,d[2])aD=y(aD,d[3])bw=d
e=c[22][d[4][b+2]]if e and not bT then
aM(d[4][5])i=c[20][e[5]]af(i[1]*o,i[2]*o,i[3]*o)bI.drawLine(d[1],u-d[2],d[1],V(u-d[3]-1))end
end
if bw and bT then
J=bw[4]cw=(J[b]-g[2])be=cos(g[3])bA=sin(g[3])for as=V(ap+u),ceil(aD+u)do
an=aK*cw/(u-as)bM=be*an-g[1][1]bR=bA*an-g[1][2]bO=-bA*an+bM
bN=be*an+bR
cM=bA*an+bM
cB=-be*an+bR
cs=(cM-bO)/M
cA=(cB-bN)/M
bZ[as]={cs,cA,bO,bN}end
for l,d in b_(_[a])do
if J[b+2]~=0 then
aM(J[5])k=J[b+2]e=c[22][k]e=c[22][k+(bF%e[4])]f=d[1]bP=z-(z-f)*K
ap,aD=V(d[2]+u),ceil(d[3]+u)ar=e[3]for as=ap,aD do
aY=bZ[as]cJ=(aY[3]+aY[1]*bP)//ar
ct=(aY[4]+aY[2]*bP)//ar
T=6+(ct%e[1])+e[1]*(cJ%e[2])i=c[20][e[T]]if i then
af(i[1]*o,i[2]*o,i[3]*o)bg(f,-as+ak,1,1)end
end
end
end
end
end
for l=1,#ba[a]do
_=r[ba[a][l]]if _[6]~=0 then
aP=sub(_,g[1])p=_[20]if p>1 then
I=by(aQ(aP)-g[3])p=p*cos(I)if C(I)<90 then
n=z-aE(tan(I)/K*z)aU=aE((Q+I+g[3]-_[3])/360*8)S=c[16][_[6]][1]if S~=0 and _[6]~=1 then
e=c[17][C(S)][aU%8+1]t=e<0 and-1 or 1
e=C(e)if e>0 then
e=c[23][e]U,ao=e[1],e[2]L=w(bt(p//aG+1),8)A=z/(K*p)aO=A*bu
E=u+(g[2]-_[9])/p*aK
H=E-e[5]*aO
m=n-t*e[4]*A
A,aO=A*e[3],aO*e[3]aM(aj[_[8]][5])o=S>0 and o or 1
cn=A*L
cC=cn*bu
cG=_[4]and c[15][_[4]][23]&8>0
for h=0,U-1,L do
n=m+h*A*t
if a<=aW[bs(aE(n),0,M-1)]then
for j=0,ao-1,L do
T=e[7+j+h*ao]if T~=0 then
if cG then
bz=bz%50+1
af(0,0,0,w(75*c[13][2][bz],255))else
i=c[20][T]af(i[1]*o,i[2]*o,i[3]*o)end
bg(n,H+j*aO,cn,cC)end
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
