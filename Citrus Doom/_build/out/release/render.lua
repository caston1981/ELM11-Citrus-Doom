cS=""

R=180
bQ=screen
aK=ipairs
cg=table
bR=input
w=math
C=w.max
x=w.min
z=w.abs
V=w.floor
ceil=w.ceil
sqrt=w.sqrt
J=bR.getNumber
bB=bR.getBool
pi=w.pi
P=false
O=true
bn=string
function bh(b,k)return b[1]*k[2]-b[2]*k[1]end
function sub(b,k)return{(b[1]-k[1]),(b[2]-k[2])}end
function bE(b)return((b+R)%360)-R end
function sin(b)return w.sin(b/R*pi)end
function cos(b)return w.cos(b/R*pi)end
function tan(b)return w.tan(b/R*pi)end
function cP(b)return w.atan(b)*R/pi end
function aM(b)return w.atan(b[2],b[1])*R/pi end
function bk(b,k,_)return x(C(k,b),_)end
function av(b)return V(b+.5)end
function bm(b,k)return sqrt(((b[1]-k[1])^2)+((b[2]-k[2])^2))end
function bt(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
function aR(b)p=x(b/255+bZ,1)^2.2 end
c={}bC=1
aE=3
aP=P
aw=O
g={{0,0},0,0}N=288
y=N//2
ak=128
s=ak//2
aN={}aO=400
bH=100
cQ=0
ar={}aG=32768
bY=3002
bv=0
aI=0
aU=0
bo=1.2
K=52
L=tan(K)aL=s*bo*N/ak/L
Z=1
bT={}for a=-y,y do bT[a]=aM({1,a/y*L})end
function bq(a)if a<aG then
local u,by=c[7][a]by=0<bh({u[3],u[4]},sub(g[1],u))and 8 or 7
bq(u[by])bq(u[15-by])else
as[#as+1]=a-aG
end
end
function aS(a,b)if a<aG then
u=c[7][a]return aS(u[0<bh({u[3],u[4]},sub(b,u))and 8 or 7],b)else
return a-aG
end
end
function bx(b)u=c[5][c[6][b][2]]return c[3][c[2][u[4]][u[5]+6]][6]end
function onTick()bz=0
for m=1,3 do
if bB(9)and(not aP)or not c[21]then
bg=property.getText(bC..cS)if bg~=cS then
a=1
B=cS
_=bn.sub(bg,a,a)while _~=cSdo
k=bn.byte(_)if k>64 or _==cSthen
B=(B..(k-65))+0
if Z==1then
cc=B
if c[B]==cO then
c[B]={}end
Z=2
elseif Z==2then
cq=B
aq=0
Z=3
elseif Z==3then
bD=B
Z=4
else
if aq==0then
aq=cq
bD=bD-1
ai={}c[cc][#c[cc]+1]=ai
end
ai[#ai+1]=B
aq=aq-1
if C(aq,bD)==0then
Z=1
end
end
B=cS
else
B=B.._
end
a=a+1
_=bn.sub(bg,a,a)end
bC=bC+1
else
aP=O
end
end
end
if aP then
if J(9)>0 then
aw=O
aE=J(9)end
if bH>0 and not aw then
al={}ar[#ar+1]=al
ap=5
_=J(ap)while _~=0 do
ah={}al[#al+1]=ah
for a=0,8 do
ah[a+1]=J(ap+a)end
ap=ap+9
_=J(ap)end
end
if bB(1)then
bN=0
bi=J(1)bH=J(3)aU=aU+1
co=aU//10
if aw then
for a=1,10 do
c[a]=c[a+10*aE]end
r=c[1]an=c[8]aE=aE+1
end
if J(2)>0 then
_=c[2][J(2)]if _ then
b=_[4]if b==3008 then
bX=_[5]==1
elseif b>3004 then
aO=C(aO+3*(_[4]-3006),1)elseif b>3000 then
bY=_[4]end
bN=J(2)end
end
if bB(3)and bi~=1 and bi~=3 then
bZ=.1
aI=bi==5 and 5 or 3
else
aI=aI-1
if aI<1then
bZ=0
end
end
for a=1,#ar do
al=ar[a]for m=1,#al do
ah=al[m]_=ah[1]if _>(2^15)then
_=an[_-(2^15)]for h=1,6 do
_[h]=ah[h+1]end
elseif _<0 then
while-_>#r do
r[#r+1]=P
end
cg.remove(r,-_)else
if not r[_]then
r[_]={}end
_=r[_]for h=1,8 do
_[c[19][1][h]]=ah[h+1]end
_[15]=0
_[7]=aS(#c[7],_)_[8]=bx(_[7])end
end
end
ar={}for a=1,#c[6]do
aN[a]={}end
for a=1,#r do
_=r[a]if _ then
if aw then
_[7]=aS(#c[7],_)_[8]=bx(_[7])_[9]=an[_[8]][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
if _[4]==1 then
cA=a
end
end
br=0
for m,d in aK({1,2,9})do
_[d]=_[d]+_[d+10]br=br+_[d+10]end
if br~=0then
_[7]=aS(#c[7],_)_[8]=bx(_[7])end
_[15]=_[15]+1
_[20]=bm(_,g[1])S=c[16][_[6]]if S~=nil then
if _[15]>=S[2]and S[2]~=-1 then
_[6]=S[4]_[15]=0
end
end
aN[_[7]][#aN[_[7]]+1]=a
end
end
aw=P
_=r[cA]g[1]={_[1],_[2]}g[2]=_[9]+41
g[3]=_[3]as={}bq(#c[7])aZ={}q={}aT={}aW={}ad={}ab={}ba={}bu=N
for a=0,N-1 do
aZ[a],ad[a],ab[a]=#c[6]+2,s+1,-s
end
a=1
while a<=#as and bu>0 do
_=c[6][as[a]]aT[a]={}aW[a]={}q[a]={}ba[a]=aN[as[a]]cg.sort(ba[a],function(b,k)return r[b][20]>r[k][20]end)for m=_[2],_[1]+_[2]-1 do
W=c[5][m]G=c[2][W[4]]bS,cd=c[4][W[1]],c[4][W[2]]aF,bO=sub(bS,g[1]),sub(cd,g[1])bJ=aM(aF)I,aQ=bE(bJ-g[3]),bE(aM(bO)-g[3])if z(I)<90 or z(aQ)<90 then
aj,af=bk(I,-K,K),bk(aQ,-K,K)if z(I)>=90 or z(aQ)>=90 then
ch=bh(aF,bO)if z(I)>=90 then
if ch>0 then aj=-K else aj=K end
else
if ch<0 then af=-K else af=K end
end
end
n,l=av(tan(aj)/L*y),av(tan(af)/L*y)if n~=l then
o,at=bm(g[1],bS),bm(g[1],cd)aY=W[3]+90
cf=aY-bJ
cv=o*sin(cf)b_=(o*cos(cf))if I~=aj then
o=b_/cos(aY-(aj+g[3]))end
if aQ~=af then
at=b_/cos(aY-(af+g[3]))end
o,at=o*cos(aj),at*cos(af)h=W[5]+6
cz=(n>l)if cz and G[h]~=0 then
aA=G[3]&4>0
if aA then
aa,X=an[c[3][G[6]][6]],an[c[3][G[7]][6]]end
ag=c[3][G[h]]cr={ag[3],ag[4],ag[5]}E,bK,bV=an[ag[6]]for j,d in aK(cr)do
aB=d>0
aC=O
if(aB or(j==3 and not(bK and bV)))and(j==3 or aA)then
bU=P
c_=0
if j<3 then
bU=j==1 and C(aa[4],X[4])==0
A,v=aa[3-j],X[3-j]aC=(A<v)~=(j==2)~=(h==6)and A~=v and aa~=X
A,v=x(A,v),C(A,v)if aC then
if j==1then
bK=O
else
bV=O
c_=G[3]&16>0 and C(aa[2],X[2])-v or 0
end
end
else
if aA then
A,v=C(aa[1],X[1]),x(aa[2],X[2])aC=aa~=X
else
A,v=E[1],E[2]end
end
A,v=A-g[2],v-g[2]cl,bM=A*aL,v*aL
if(aC or aB)and not bU then
bj=W[6]-ag[1]if G[4]==48 then
bj=bj-aU
end
cK,cD=cl/o,bM/o
cG,cM=cl/at,bM/at
bI=0
au=P
if aB then
_=c[21][d][4]if(W[4]==bN or bY==G[4])and _>0then
d=_
end
ay=c[21][d][3]t=1
if(j==3 and G[3]&16>0)or(j==1 and G[3]&8==0)then
t=-1
end
end
for h=n,l,-1 do
cH=bT[h]aV=(aY-g[3])-cH
f=y-h
bF=P
if f>=0 and f<=N-1 then
if a<aZ[f]then
bb=(h-n)/(l-n)H,F=(cK*(1-bb)+cG*bb),(cD*(1-bb)+cM*bb)if z(F+H)-(F-H)<ak then
if aB then
if H~=F then
bF=O
bG=b_*tan(aV)M=x(((z(bG)+z(b_))//aO)+1,4)bc=x(bt(V(M/cos(aV))),16)M=bt(M)be=V((C(bG-cv,0)-bj)/(ay*bc))*bc
cj={f,s-H,s-F,d,be,v-A,E[5],ag[2]+c_,O,ay*M,M,t,not au,j==3 and aA}if be>bI or(not au)or h==l then
bI=be-1+bc
au=O
q[a][#q[a]+1]=cj
end
cB=cj
end
end
if aC then
if j~=2 then
if F<ad[f]then
aW[a][#aW[a]+1]={f,C(F,ab[f]),ad[f],E}end
if j==3then U=F else U=H end
if ad[f]>U then ad[f]=U end
end
if j~=1 then
if H>ab[f]then
aT[a][#aT[a]+1]={f,ab[f],x(H,ad[f]),E}end
if j==3then U=H else U=F end
if ab[f]<U then ab[f]=U end
end
if(ad[f]<=ab[f])or(j==3 and(not aA)and aB)then
aZ[f]=a
bu=bu-1
end
end
end
end
end
if(not bF)and au then
au=P
q[a][#q[a]+1]=cB
q[a][#q[a]][9]=P
end
end
if#q[a]>0 then
q[a][#q[a]][9]=P
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
function onDraw()aX=bQ
local bL,bw,ae,cR=aX.drawTriangleF,aX.drawRectF,aX.setColor,aX.drawText
bz=bz+1
cu={aT,aW}if bz<=1 then
if aP then
e=c[24][c[19][8][aE-3]]Y,az=e[1],e[2]D=N/ceil(Y*L)cp=D*1
for a=0,ceil(Y*L),1 do
n=(Y/2-a-1+g[3]/90*Y)%Y
l=(n%1-1)*D
n=V(n)*az
for m=0,az-1,1 do
Q=e[5+m+n]i=c[20][Q]ae(i[1],i[2],i[3])bw(a*D+l,m*D,cp,cp)end
end
for a=#q,1,-1 do
for m=1,#q[a]do
d=q[a][m]if d[9]or d[13]then
if d[9]then
T=q[a][m+1]else
T=d
end
e=c[21][d[4]]e=c[21][d[4]+(co%e[5])]t=d[12]ac=x(t,0)f=d[1]l=T[1]bP=d[2-ac]ct=T[2-ac]h=d[3+ac]bd=T[3+ac]if not T[9]then l=l+1 end
aR(d[7])cw=t*(d[2]-d[3])*d[10]/d[6]cN=t*(T[2]-T[3])*d[10]/T[6]ai=t>0 and x or C
bl=0
while h*t<bP*t and(bl<e[2]or not d[14])do
ck=ai(h+cw,bP)bs=ai(bd+cN,ct)Q=e[7+((ac*d[11]+d[8]//e[3])%e[2])+e[2]*(d[5]%e[1])]i=c[20][Q]if i then
ae(i[1]*p,i[2]*p,i[3]*p)bL(f,h,f,ck,l,bs)bL(f,h,l,bd,l,bs)end
h=ck
bd=bs
ac=ac+t
bl=bl+d[11]end
end
end
for b=1,2 do
_=cu[b]ca={}aD,ax,bp=ak,-ak
for m,d in aK(_[a])do
aD=x(aD,d[2])ax=C(ax,d[3])bp=d
e=c[22][d[4][b+2]]if e and not bX then
aR(d[4][5])i=c[20][e[5]]ae(i[1]*p,i[2]*p,i[3]*p)bQ.drawLine(d[1],s-d[2],d[1],V(s-d[3]-1))end
end
if bp and bX then
E=bp[4]cx=(E[b]-g[2])bf=cos(g[3])bA=sin(g[3])for ao=V(aD+s),ceil(ax+s)do
am=aL*cx/(s-ao)cn=bf*am-g[1][1]cm=bA*am-g[1][2]cb=-bA*am+cn
ce=bf*am+cm
cF=bA*am+cn
cJ=-bf*am+cm
cL=(cF-cb)/N
cE=(cJ-ce)/N
ca[ao]={cL,cE,cb,ce}end
for m,d in aK(_[a])do
if E[b+2]~=0 then
aR(E[5])k=E[b+2]e=c[22][k]e=c[22][k+(co%e[4])]f=d[1]ci=y-(y-f)*L
aD,ax=V(d[2]+s),ceil(d[3]+s)ay=e[3]for ao=aD,ax do
aJ=ca[ao]cI=(aJ[3]+aJ[1]*ci)//ay
cy=(aJ[4]+aJ[2]*ci)//ay
Q=6+(cy%e[1])+e[1]*(cI%e[2])i=c[20][e[Q]]if i then
ae(i[1]*p,i[2]*p,i[3]*p)bw(f,-ao+ak,1,1)end
end
end
end
end
end
for m=1,#ba[a]do
_=r[ba[a][m]]if _[6]~=0 then
aF=sub(_,g[1])o=_[20]if o>1 then
I=bE(aM(aF)-g[3])o=o*cos(I)if z(I)<90 then
n=y-av(tan(I)/L*y)aV=av((R+I+g[3]-_[3])/360*8)S=c[16][_[6]][1]if S~=0 and _[6]~=1 then
e=c[17][z(S)][aV%8+1]t=e<0 and-1 or 1
e=z(e)if e>0 then
e=c[23][e]Y,az=e[1],e[2]M=x(bt(o//aO+1),8)D=y/(L*o)aH=D*bo
H=s+(g[2]-_[9])/o*aL
F=H-e[5]*aH
l=n-t*e[4]*D
D,aH=D*e[3],aH*e[3]aR(an[_[8]][5])p=S>0 and p or 1
bW=D*M
cC=bW*bo
cs=_[4]and c[15][_[4]][23]&8>0
for h=0,Y-1,M do
n=l+h*D*t
if a<=aZ[bk(av(n),0,N-1)]then
for j=0,az-1,M do
Q=e[7+j+h*az]if Q~=0 then
if cs then
bv=bv%50+1
ae(0,0,0,x(75*c[13][2][bv],255))else
i=c[20][Q]ae(i[1]*p,i[2]*p,i[3]*p)end
bw(n,F+j*aH,bW,cC)end
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
