cS=""

P=180
cf=screen
aS=ipairs
bM=table
bF=input
w=math
C=w.max
v=w.min
B=w.abs
W=w.floor
ceil=w.ceil
sqrt=w.sqrt
G=bF.getNumber
bq=bF.getBool
pi=w.pi
M=false
R=true
bC=string
function bd(b,n)return b[1]*n[2]-b[2]*n[1]end
function sub(b,n)return{(b[1]-n[1]),(b[2]-n[2])}end
function bA(b)return((b+P)%360)-P end
function sin(b)return w.sin(b/P*pi)end
function cos(b)return w.cos(b/P*pi)end
function tan(b)return w.tan(b/P*pi)end
function cR(b)return w.atan(b)*P/pi end
function aU(b)return w.atan(b[2],b[1])*P/pi end
function by(b,n,_)return v(C(n,b),_)end
function aw(b)return W(b+.5)end
function bz(b,n)return sqrt(((b[1]-n[1])^2)+((b[2]-n[2])^2))end
function bl(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
function aY(b)o=v(b/255+ce,1)^2.2 end
c={}bx=1
au=3
aM=M
at=R
g={{0,0},0,0}O=288
y=O//2
ag=128
r=ag//2
aO={}aE=400
bQ=100
cP=0
as={}aR=32768
bH=3002
bv=0
aV=0
aK=0
bc=1.2
L=52
K=tan(L)aW=r*bc*O/ag/K
ad=1
bR={}for a=-y,y do bR[a]=aU({1,a/y*K})end
function bj(a)if a<aR then
local s,bu=c[7][a]bu=0<bd({s[3],s[4]},sub(g[1],s))and 8 or 7
bj(s[bu])bj(s[15-bu])else
av[#av+1]=a-aR
end
end
function aQ(a,b)if a<aR then
s=c[7][a]return aQ(s[0<bd({s[3],s[4]},sub(b,s))and 8 or 7],b)else
return a-aR
end
end
function bs(b)s=c[5][c[6][b][2]]return c[3][c[2][s[4]][s[5]+6]][6]end
function onTick()bB=0
for l=1,3 do
if bq(9)and(not aM)or not c[21]then
bw=property.getText(bx)a=1
z=cS
_=bC.sub(bw,a,a)while _~=cSdo
cn=bC.byte(_)if cn>64then
z=(z..cn-65)+0
if ad==1then
bW=z
c[z]=c[z]or{}elseif ad==2then
cI=z
aC=0
elseif ad==3then
bi=z
else
if aC==0then
aC=cI
bi=bi-1
bf={}c[bW][#c[bW]+1]=bf
end
bf[#bf+1]=z
aC=aC-1
ad=C(aC,bi)>0 and ad-1 or 0
end
ad=ad+1
z=cS
else
z=z.._
end
a=a+1
_=bC.sub(bw,a,a)end
bx=bx+1
aM=bw==cS
end
end
if aM then
if G(9)>0 then
at=R
au=G(9)end
if bQ>0 and not at then
aj={}as[#as+1]=aj
aD=5
_=G(aD)while _~=0 do
af={}aj[#aj+1]=af
for a=0,8 do
af[a+1]=G(aD+a)end
aD=aD+9
_=G(aD)end
end
if bq(1)then
ck=0
bk=G(1)bQ=G(3)aK=aK+1
cp=aK//10
if at then
for a=1,10 do
c[a]=c[a+10*au]end
t=c[1]ai=c[8]au=au+1
end
if G(2)>0 then
_=c[2][G(2)]if _ then
b=_[4]if b>0 then
if b==3008 then
ci=_[5]==1
elseif b>3004 then
aE=C(aE+3*(_[4]-3006),1)elseif b>3000 then
bH=_[4]end
ck=G(2)if b<3000 and c[9][_[5]][7]==0then
_[8]=1
end
end
end
end
if bq(3)and bk~=1 and bk~=3 then
ce=.1
aV=bk==5 and 5 or 3
else
aV=aV-1
if aV<1then
ce=0
end
end
for a=1,#as do
aj=as[a]for l=1,#aj do
af=aj[l]_=af[1]if _>(2^15)then
_=ai[_-(2^15)]for h=1,6 do
_[h]=af[h+1]end
elseif _<0 then
while-_>#t do
t[#t+1]=M
end
bM.remove(t,-_)else
if not t[_]then
t[_]={}end
_=t[_]for h=1,8 do
_[c[19][1][h]]=af[h+1]end
_[15]=0
_[7]=aQ(#c[7],_)_[8]=bs(_[7])end
end
end
as={}for a=1,#c[6]do
aO[a]={}end
for a=1,#t do
_=t[a]if _ then
if at then
_[7]=aQ(#c[7],_)_[8]=bs(_[7])_[9]=ai[_[8]][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
end
bm=0
for l,d in aS({1,2,9})do
_[d]=_[d]+_[d+10]bm=bm+_[d+10]end
if bm~=0then
_[7]=aQ(#c[7],_)_[8]=bs(_[7])end
_[15]=_[15]+1
_[20]=bz(_,g[1])Q=c[16][_[6]]if Q~=nil then
if _[15]>=Q[2]and Q[2]~=-1 then
_[6]=Q[4]_[15]=0
end
end
aO[_[7]][#aO[_[7]]+1]=a
end
end
at=M
_=t[1]g[1]={_[1],_[2]}g[2]=_[9]+41
g[3]=_[3]av={}bj(#c[7])aI={}p={}aZ={}ba={}aa={}U={}b_={}bp=O
for a=0,O-1 do
aI[a],aa[a],U[a]=#c[6]+2,r+1,-r
end
a=1
while a<=#av and bp>0 do
_=c[6][av[a]]aZ[a]={}ba[a]={}p[a]={}b_[a]=aO[av[a]]bM.sort(b_[a],function(b,n)return t[b][20]>t[n][20]end)for l=_[2],_[1]+_[2]-1 do
ac=c[5][l]A=c[2][ac[4]]bP,bL=c[4][ac[1]],c[4][ac[2]]aN,bO=sub(bP,g[1]),sub(bL,g[1])c_=aU(aN)H,aG=bA(c_-g[3]),bA(aU(bO)-g[3])if B(H)<90 or B(aG)<90 then
ak,ae=by(H,-L,L),by(aG,-L,L)if B(H)>=90 or B(aG)>=90 then
bK=bd(aN,bO)if B(H)>=90 then
if bK>0 then ak=-L else ak=L end
else
if bK<0 then ae=-L else ae=L end
end
end
m,k=aw(tan(ak)/K*y),aw(tan(ae)/K*y)if m~=k then
q,ax=bz(g[1],bP),bz(g[1],bL)aX=ac[3]+90
bT=aX-c_
cB=q*sin(bT)aF=(q*cos(bT))if H~=ak then
q=aF/cos(aX-(ak+g[3]))end
if aG~=ae then
ax=aF/cos(aX-(ae+g[3]))end
q,ax=q*cos(ak),ax*cos(ae)h=ac[5]+6
cw=(m>k)if cw and A[h]~=0 then
ay=A[3]&4>0
if ay then
X,Z=ai[c[3][A[6]][6]],ai[c[3][A[7]][6]]end
am=c[3][A[h]]cy={am[3],am[4],am[5]}F,bN,bJ=ai[am[6]]for j,d in aS(cy)do
ar=d>0
aq=R
if(ar or(j==3 and not(bN and bJ)))and(j==3 or ay)then
bZ=M
cj=0
if j<3 then
bZ=j==1 and C(X[4],Z[4])==0
D,x=X[3-j],Z[3-j]aq=(D<x)~=(j==2)~=(h==6)and D~=x and X~=Z
D,x=v(D,x),C(D,x)if aq then
if j==1then
bN=R
else
bJ=R
cj=A[3]&16>0 and C(X[2],Z[2])-x or 0
end
end
else
if ay then
D,x=C(X[1],Z[1]),v(X[2],Z[2])aq=X~=Z
else
D,x=F[1],F[2]end
end
D,x=D-g[2],x-g[2]cm,bS=D*aW,x*aW
if(aq or ar)and not bZ then
bE=ac[6]-am[1]if A[4]==48 then
bE=bE-aK
end
cC,cv=cm/q,bS/q
cE,cF=cm/ax,bS/ax
cq=0
an=M
if ar then
_=c[21][d][4]if(ac[4]==ck or bH==A[4]or A[8])and _>0then
d=_
end
ap=c[21][d][3]u=1
if(j==3 and A[3]&16>0)or(j==1 and A[3]&8==0)then
u=-1
end
end
for h=m,k,-1 do
cu=bR[h]aH=(aX-g[3])-cu
f=y-h
ch=M
if f>=0 and f<=O-1 then
if a<aI[f]then
aJ=(h-m)/(k-m)I,J=(cC*(1-aJ)+cE*aJ),(cv*(1-aJ)+cF*aJ)if B(J+I)-(J-I)<ag then
if ar then
if I~=J then
ch=R
bV=aF*tan(aH)N=v(((B(bV)+B(aF))//aE)+1,4)bo=v(bl(W(N/cos(aH))),16)N=bl(N)bt=W((C(bV-cB,0)-bE)/(ap*bo))*bo
cr={f,r-I,r-J,d,bt,x-D,F[5],am[2]+cj,R,ap*N,N,u,not an,j==3 and ay}if bt>cq or(not an)or h==k then
cq=bt-1+bo
an=R
p[a][#p[a]+1]=cr
end
cN=cr
end
end
if aq then
if j~=2 then
if J<aa[f]then
ba[a][#ba[a]+1]={f,C(J,U[f]),aa[f],F}end
if j==3then V=J else V=I end
if aa[f]>V then aa[f]=V end
end
if j~=1 then
if I>U[f]then
aZ[a][#aZ[a]+1]={f,U[f],v(I,aa[f]),F}end
if j==3then V=I else V=J end
if U[f]<V then U[f]=V end
end
if(aa[f]<=U[f])or(j==3 and(not ay)and ar)then
aI[f]=a
bp=bp-1
end
end
end
end
end
if(not ch)and an then
an=M
p[a][#p[a]+1]=cN
p[a][#p[a]][9]=M
end
end
if#p[a]>0 then
p[a][#p[a]][9]=M
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
function onDraw()aL=cf
local cd,bh,al,cQ=aL.drawTriangleF,aL.drawRectF,aL.setColor,aL.drawText
bB=bB+1
cG={aZ,ba}if bB<=1 then
if aM then
e=c[24][c[19][8][au-3]]ab,az=e[1],e[2]E=O/ceil(ab*K)bX=E*1
for a=0,ceil(ab*K),1 do
m=(ab/2-a-1+g[3]/90*ab)%ab
k=(m%1-1)*E
m=W(m)*az
for l=0,az-1,1 do
S=e[5+l+m]i=c[20][S]al(i[1],i[2],i[3])bh(a*E+k,l*E,bX,bX)end
end
for a=#p,1,-1 do
for l=1,#p[a]do
d=p[a][l]if d[9]or d[13]then
if d[9]then
T=p[a][l+1]else
T=d
end
e=c[21][d[4]]e=c[21][d[4]+(cp%e[5])]u=d[12]Y=v(u,0)f=d[1]k=T[1]bG=d[2-Y]ct=T[2-Y]h=d[3+Y]bn=T[3+Y]if not T[9]then k=k+1 end
aY(d[7])cH=u*(d[2]-d[3])*d[10]/d[6]cx=u*(T[2]-T[3])*d[10]/T[6]bI=u>0 and v or C
bD=0
while h*u<bG*u and(bD<e[2]or not d[14])do
co=bI(h+cH,bG)br=bI(bn+cx,ct)S=e[7+((Y*d[11]+d[8]//e[3])%e[2])+e[2]*(d[5]%e[1])]i=c[20][S]if i then
al(i[1]*o,i[2]*o,i[3]*o)cd(f,h,f,co,k,br)cd(f,h,k,bn,k,br)end
h=co
bn=br
Y=Y+u
bD=bD+d[11]end
end
end
for b=1,2 do
_=cG[b]cg={}ao,aB,bg=ag,-ag
for l,d in aS(_[a])do
ao=v(ao,d[2])aB=C(aB,d[3])bg=d
e=c[22][d[4][b+2]]if e and not ci then
aY(d[4][5])i=c[20][e[5]]al(i[1]*o,i[2]*o,i[3]*o)cf.drawLine(d[1],r-d[2],d[1],W(r-d[3]-1))end
end
if bg and ci then
F=bg[4]cJ=(F[b]-g[2])bb=cos(g[3])be=sin(g[3])for aA=W(ao+r),ceil(aB+r)do
ah=aW*cJ/(r-aA)bU=bb*ah-g[1][1]bY=be*ah-g[1][2]cc=-be*ah+bU
cb=bb*ah+bY
cM=be*ah+bU
cO=-bb*ah+bY
cA=(cM-cc)/O
cL=(cO-cb)/O
cg[aA]={cA,cL,cc,cb}end
for l,d in aS(_[a])do
if F[b+2]~=0 then
aY(F[5])n=F[b+2]e=c[22][n]e=c[22][n+(cp%e[4])]f=d[1]cl=y-(y-f)*K
ao,aB=W(d[2]+r),ceil(d[3]+r)ap=e[3]for aA=ao,aB do
aT=cg[aA]cs=(aT[3]+aT[1]*cl)//ap
cK=(aT[4]+aT[2]*cl)//ap
S=6+(cK%e[1])+e[1]*(cs%e[2])i=c[20][e[S]]if i then
al(i[1]*o,i[2]*o,i[3]*o)bh(f,-aA+ag,1,1)end
end
end
end
end
end
for l=1,#b_[a]do
_=t[b_[a][l]]if _[6]~=0 then
aN=sub(_,g[1])q=_[20]if q>1 then
H=bA(aU(aN)-g[3])q=q*cos(H)if B(H)<90 then
m=y-aw(tan(H)/K*y)aH=aw((P+H+g[3]-_[3])/360*8)Q=c[16][_[6]][1]if Q~=0 and _[6]~=1 then
e=c[17][B(Q)][aH%8+1]u=e<0 and-1 or 1
e=B(e)if e>0 then
e=c[23][e]ab,az=e[1],e[2]N=v(bl(q//aE+1),8)E=y/(K*q)aP=E*bc
I=r+(g[2]-_[9])/q*aW
J=I-e[5]*aP
k=m-u*e[4]*E
E,aP=E*e[3],aP*e[3]aY(ai[_[8]][5])o=Q>0 and o or 1
ca=E*N
cD=ca*bc
cz=_[4]and c[15][_[4]][23]&8>0
for h=0,ab-1,N do
m=k+h*E*u
if a<=aI[by(aw(m),0,O-1)]then
for j=0,az-1,N do
S=e[7+j+h*az]if S~=0 then
if cz then
bv=bv%50+1
al(0,0,0,v(75*c[13][2][bv],255))else
i=c[20][S]al(i[1]*o,i[2]*o,i[3]*o)end
bh(m,J+j*aP,ca,cD)end
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
