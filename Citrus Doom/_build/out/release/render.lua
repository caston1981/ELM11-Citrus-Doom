cS=""

S=180
bF=screen
aU=ipairs
bX=table
cr=input
x=math
C=x.max
v=x.min
y=x.abs
ac=x.floor
ceil=x.ceil
sqrt=x.sqrt
H=cr.getNumber
bf=cr.getBool
pi=x.pi
N=false
T=true
bA=string
function bE(b,n)return b[1]*n[2]-b[2]*n[1]end
function sub(b,n)return{(b[1]-n[1]),(b[2]-n[2])}end
function bd(b)return((b+S)%360)-S end
function sin(b)return x.sin(b/S*pi)end
function cos(b)return x.cos(b/S*pi)end
function tan(b)return x.tan(b/S*pi)end
function cQ(b)return x.atan(b)*S/pi end
function aR(b)return x.atan(b[2],b[1])*S/pi end
function bn(b,n,_)return v(C(n,b),_)end
function aC(b)return ac(b+.5)end
function be(b,n)return sqrt(((b[1]-n[1])^2)+((b[2]-n[2])^2))end
function bB(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
function aN(b)o=v(b/255+cg,1)^2.2 end
c={}bp=1
az=3
aS=N
ar=T
f={{0,0},0,0}K=288
B=K//2
af=128
t=af//2
aX={}aG=400
cq=100
cR=0
ao={}aF=32768
bS=3002
bj=0
aP=0
aQ=0
bt=1.2
O=52
M=tan(O)aH=t*bt*K/af/M
W=1
bW={}for a=-B,B do bW[a]=aR({1,a/B*M})end
function bc(a)if a<aF then
local s,bw=c[7][a]bw=0<bE({s[3],s[4]},sub(f[1],s))and 8 or 7
bc(s[bw])bc(s[15-bw])else
an[#an+1]=a-aF
end
end
function aT(a,b)if a<aF then
s=c[7][a]return aT(s[0<bE({s[3],s[4]},sub(b,s))and 8 or 7],b)else
return a-aF
end
end
function bm(b)s=c[5][c[6][b][2]]return c[3][c[2][s[4]][s[5]+6]][6]end
function onTick()bD=0
for k=1,3 do
if bf(9)and(not aS)or not c[21]then
bu=property.getText(bp)a=1
z=cS
_=bA.sub(bu,a,a)while _~=cSdo
ca=bA.byte(_)if ca>64then
z=(z..ca-65)+0
if W==1then
bI=z
c[z]=c[z]or{}elseif W==2then
cs=z
as=0
elseif W==3then
br=z
else
if as==0then
as=cs
br=br-1
bq={}c[bI][#c[bI]+1]=bq
end
bq[#bq+1]=z
as=as-1
W=C(as,br)>0 and W-1 or 0
end
W=W+1
z=cS
else
z=z.._
end
a=a+1
_=bA.sub(bu,a,a)end
bp=bp+1
aS=bu==cS
end
end
if aS then
if H(9)>0 then
ar=T
az=H(9)end
if cq>0 and not ar then
aj={}ao[#ao+1]=aj
av=5
_=H(av)while _~=0 do
ai={}aj[#aj+1]=ai
for a=0,8 do
ai[a+1]=H(av+a)end
av=av+9
_=H(av)end
end
if bf(1)then
co=0
bo=H(1)cq=H(3)aQ=aQ+1
bU=aQ//10
if ar then
for a=1,10 do
c[a]=c[a+10*az]end
r=c[1]ae=c[8]az=az+1
end
if H(2)>0 then
_=c[2][H(2)]if _ then
b=_[4]if b==3008 then
cm=_[5]==1
elseif b>3004 then
aG=C(aG+3*(_[4]-3006),1)elseif b>3000 then
bS=_[4]end
co=H(2)end
end
if bf(3)and bo~=1 and bo~=3 then
cg=.1
aP=bo==5 and 5 or 3
else
aP=aP-1
if aP<1then
cg=0
end
end
for a=1,#ao do
aj=ao[a]for k=1,#aj do
ai=aj[k]_=ai[1]if _>(2^15)then
_=ae[_-(2^15)]for h=1,6 do
_[h]=ai[h+1]end
elseif _<0 then
while-_>#r do
r[#r+1]=N
end
bX.remove(r,-_)else
if not r[_]then
r[_]={}end
_=r[_]for h=1,8 do
_[c[19][1][h]]=ai[h+1]end
_[15]=0
_[7]=aT(#c[7],_)_[8]=bm(_[7])end
end
end
ao={}for a=1,#c[6]do
aX[a]={}end
for a=1,#r do
_=r[a]if _ then
if ar then
_[7]=aT(#c[7],_)_[8]=bm(_[7])_[9]=ae[_[8]][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
end
bk=0
for k,d in aU({1,2,9})do
_[d]=_[d]+_[d+10]bk=bk+_[d+10]end
if bk~=0then
_[7]=aT(#c[7],_)_[8]=bm(_[7])end
_[15]=_[15]+1
_[20]=be(_,f[1])R=c[16][_[6]]if R~=nil then
if _[15]>=R[2]and R[2]~=-1 then
_[6]=R[4]_[15]=0
end
end
aX[_[7]][#aX[_[7]]+1]=a
end
end
ar=N
_=r[1]f[1]={_[1],_[2]}f[2]=_[9]+41
f[3]=_[3]an={}bc(#c[7])aJ={}q={}aO={}aW={}U={}V={}aY={}bh=K
for a=0,K-1 do
aJ[a],U[a],V[a]=#c[6]+2,t+1,-t
end
a=1
while a<=#an and bh>0 do
_=c[6][an[a]]aO[a]={}aW[a]={}q[a]={}aY[a]=aX[an[a]]bX.sort(aY[a],function(b,n)return r[b][20]>r[n][20]end)for k=_[2],_[1]+_[2]-1 do
X=c[5][k]I=c[2][X[4]]bK,bY=c[4][X[1]],c[4][X[2]]aI,ch=sub(bK,f[1]),sub(bY,f[1])bH=aR(aI)J,ba=bd(bH-f[3]),bd(aR(ch)-f[3])if y(J)<90 or y(ba)<90 then
al,ah=bn(J,-O,O),bn(ba,-O,O)if y(J)>=90 or y(ba)>=90 then
cd=bE(aI,ch)if y(J)>=90 then
if cd>0 then al=-O else al=O end
else
if cd<0 then ah=-O else ah=O end
end
end
m,l=aC(tan(al)/M*B),aC(tan(ah)/M*B)if m~=l then
p,aq=be(f[1],bK),be(f[1],bY)b_=X[3]+90
bP=b_-bH
cH=p*sin(bP)aK=(p*cos(bP))if J~=al then
p=aK/cos(b_-(al+f[3]))end
if ba~=ah then
aq=aK/cos(b_-(ah+f[3]))end
p,aq=p*cos(al),aq*cos(ah)h=X[5]+6
ct=(m>l)if ct and I[h]~=0 then
aD=I[3]&4>0
if aD then
ad,Y=ae[c[3][I[6]][6]],ae[c[3][I[7]][6]]end
ag=c[3][I[h]]cL={ag[3],ag[4],ag[5]}E,bR,bT=ae[ag[6]]for j,d in aU(cL)do
aB=d>0
aw=T
if(aB or(j==3 and not(bR and bT)))and(j==3 or aD)then
bO=N
cp=0
if j<3 then
bO=j==1 and C(ad[4],Y[4])==0
D,w=ad[3-j],Y[3-j]aw=(D<w)~=(j==2)~=(h==6)and D~=w and ad~=Y
D,w=v(D,w),C(D,w)if aw then
if j==1then
bR=T
else
bT=T
cp=I[3]&16>0 and C(ad[2],Y[2])-w or 0
end
end
else
if aD then
D,w=C(ad[1],Y[1]),v(ad[2],Y[2])aw=ad~=Y
else
D,w=E[1],E[2]end
end
D,w=D-f[2],w-f[2]cf,ci=D*aH,w*aH
if(aw or aB)and not bO then
bx=X[6]-ag[1]if I[4]==48 then
bx=bx-aQ
end
cw,cN=cf/p,ci/p
cF,cK=cf/aq,ci/aq
cn=0
ap=N
if aB then
_=c[21][d][4]if(X[4]==co or bS==I[4])and _>0then
d=_
end
au=c[21][d][3]u=1
if(j==3 and I[3]&16>0)or(j==1 and I[3]&8==0)then
u=-1
end
end
for h=m,l,-1 do
cD=bW[h]aM=(b_-f[3])-cD
g=B-h
ce=N
if g>=0 and g<=K-1 then
if a<aJ[g]then
aE=(h-m)/(l-m)G,F=(cw*(1-aE)+cF*aE),(cN*(1-aE)+cK*aE)if y(F+G)-(F-G)<af then
if aB then
if G~=F then
ce=T
cj=aK*tan(aM)L=v(((y(cj)+y(aK))//aG)+1,4)by=v(bB(ac(L/cos(aM))),16)L=bB(L)bi=ac((C(cj-cH,0)-bx)/(au*by))*by
bV={g,t-G,t-F,d,bi,w-D,E[5],ag[2]+cp,T,au*L,L,u,not ap,j==3 and aD}if bi>cn or(not ap)or h==l then
cn=bi-1+by
ap=T
q[a][#q[a]+1]=bV
end
cA=bV
end
end
if aw then
if j~=2 then
if F<U[g]then
aW[a][#aW[a]+1]={g,C(F,V[g]),U[g],E}end
if j==3then aa=F else aa=G end
if U[g]>aa then U[g]=aa end
end
if j~=1 then
if G>V[g]then
aO[a][#aO[a]+1]={g,V[g],v(G,U[g]),E}end
if j==3then aa=G else aa=F end
if V[g]<aa then V[g]=aa end
end
if(U[g]<=V[g])or(j==3 and(not aD)and aB)then
aJ[g]=a
bh=bh-1
end
end
end
end
end
if(not ce)and ap then
ap=N
q[a][#q[a]+1]=cA
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
function onDraw()aL=bF
local cl,bz,ak,cP=aL.drawTriangleF,aL.drawRectF,aL.setColor,aL.drawText
bD=bD+1
cB={aO,aW}if bD<=1 then
if aS then
e=c[24][c[19][8][az-3]]ab,at=e[1],e[2]A=K/ceil(ab*M)c_=A*1
for a=0,ceil(ab*M),1 do
m=(ab/2-a-1+f[3]/90*ab)%ab
l=(m%1-1)*A
m=ac(m)*at
for k=0,at-1,1 do
P=e[5+k+m]i=c[20][P]ak(i[1],i[2],i[3])bz(a*A+l,k*A,c_,c_)end
end
for a=#q,1,-1 do
for k=1,#q[a]do
d=q[a][k]if d[9]or d[13]then
if d[9]then
Q=q[a][k+1]else
Q=d
end
e=c[21][d[4]]e=c[21][d[4]+(bU%e[5])]u=d[12]Z=v(u,0)g=d[1]l=Q[1]bZ=d[2-Z]cx=Q[2-Z]h=d[3+Z]bb=Q[3+Z]if not Q[9]then l=l+1 end
aN(d[7])cu=u*(d[2]-d[3])*d[10]/d[6]cv=u*(Q[2]-Q[3])*d[10]/Q[6]ck=u>0 and v or C
bC=0
while h*u<bZ*u and(bC<e[2]or not d[14])do
bM=ck(h+cu,bZ)bl=ck(bb+cv,cx)P=e[7+((Z*d[11]+d[8]//e[3])%e[2])+e[2]*(d[5]%e[1])]i=c[20][P]if i then
ak(i[1]*o,i[2]*o,i[3]*o)cl(g,h,g,bM,l,bl)cl(g,h,l,bb,l,bl)end
h=bM
bb=bl
Z=Z+u
bC=bC+d[11]end
end
end
for b=1,2 do
_=cB[b]bQ={}ax,aA,bg=af,-af
for k,d in aU(_[a])do
ax=v(ax,d[2])aA=C(aA,d[3])bg=d
e=c[22][d[4][b+2]]if e and not cm then
aN(d[4][5])i=c[20][e[5]]ak(i[1]*o,i[2]*o,i[3]*o)bF.drawLine(d[1],t-d[2],d[1],ac(t-d[3]-1))end
end
if bg and cm then
E=bg[4]cz=(E[b]-f[2])bs=cos(f[3])bv=sin(f[3])for ay=ac(ax+t),ceil(aA+t)do
am=aH*cz/(t-ay)bL=bs*am-f[1][1]bN=bv*am-f[1][2]cc=-bv*am+bL
cb=bs*am+bN
cM=bv*am+bL
cI=-bs*am+bN
cC=(cM-cc)/K
cO=(cI-cb)/K
bQ[ay]={cC,cO,cc,cb}end
for k,d in aU(_[a])do
if E[b+2]~=0 then
aN(E[5])n=E[b+2]e=c[22][n]e=c[22][n+(bU%e[4])]g=d[1]bG=B-(B-g)*M
ax,aA=ac(d[2]+t),ceil(d[3]+t)au=e[3]for ay=ax,aA do
aV=bQ[ay]cJ=(aV[3]+aV[1]*bG)//au
cE=(aV[4]+aV[2]*bG)//au
P=6+(cE%e[1])+e[1]*(cJ%e[2])i=c[20][e[P]]if i then
ak(i[1]*o,i[2]*o,i[3]*o)bz(g,-ay+af,1,1)end
end
end
end
end
end
for k=1,#aY[a]do
_=r[aY[a][k]]if _[6]~=0 then
aI=sub(_,f[1])p=_[20]if p>1 then
J=bd(aR(aI)-f[3])p=p*cos(J)if y(J)<90 then
m=B-aC(tan(J)/M*B)aM=aC((S+J+f[3]-_[3])/360*8)R=c[16][_[6]][1]if R~=0 and _[6]~=1 then
e=c[17][y(R)][aM%8+1]u=e<0 and-1 or 1
e=y(e)if e>0 then
e=c[23][e]ab,at=e[1],e[2]L=v(bB(p//aG+1),8)A=B/(M*p)aZ=A*bt
G=t+(f[2]-_[9])/p*aH
F=G-e[5]*aZ
l=m-u*e[4]*A
A,aZ=A*e[3],aZ*e[3]aN(ae[_[8]][5])o=R>0 and o or 1
bJ=A*L
cy=bJ*bt
cG=_[4]and c[15][_[4]][23]&8>0
for h=0,ab-1,L do
m=l+h*A*u
if a<=aJ[bn(aC(m),0,K-1)]then
for j=0,at-1,L do
P=e[7+j+h*at]if P~=0 then
if cG then
bj=bj%50+1
ak(0,0,0,v(75*c[13][2][bj],255))else
i=c[20][P]ak(i[1]*o,i[2]*o,i[3]*o)end
bz(m,F+j*aZ,bJ,cy)end
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
