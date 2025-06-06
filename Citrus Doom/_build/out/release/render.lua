
bY=screen
aW=ipairs
cp=table
bT=input
v=math
y=v.max
w=v.min
z=v.abs
ae=v.floor
ceil=v.ceil
sqrt=v.sqrt
H=bT.getNumber
bB=bT.getBool
pi=v.pi/180
K=false
R=true
bi=string
function bx(b,m)return b[1]*m[2]-b[2]*m[1]end
function sub(b,m)return{(b[1]-m[1]),(b[2]-m[2])}end
function bw(b)return((b+180)%360)-180 end
function sin(b)return v.sin(b*pi)end
function cos(b)return v.cos(b*pi)end
function tan(b)return v.tan(b*pi)end
function cR(b)return v.atan(b)/pi end
function aX(b)return v.atan(b[2],b[1])/pi end
function bA(b,m,_)return w(y(m,b),_)end
function az(b)return ae(b+.5)end
function aU(b,m)return sqrt(((b[1]-m[1])^2)+((b[2]-m[2])^2))end
function bE(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
function aM(b)q=w(b/255+bG,1)^2.2 end
c={}bz=1
ap=3
aQ=K
ao=R
f={{0,0},0,0}L=288
A=L//2
ab=128
t=ab//2
aG={}aK=400
ck=200
bX=100
cS=0
aB={}aI=2^15
bV=3002
bf=0
aV=0
ar=0
bs=1.2
N=52
M=tan(N)aR=t*bs*L/ab/M
Z=1
bZ={}for a=-A,A do bZ[a]=aX({1,a/A*M})end
function bu(a)if a<aI then
local s,bk=c[7][a]bk=0<bx({s[3],s[4]},sub(f[1],s))and 8 or 7
bu(s[bk])bu(s[15-bk])else
as[#as+1]=a-aI
end
end
function aN(a,b)if a<aI then
s=c[7][a]return aN(s[0<bx({s[3],s[4]},sub(b,s))and 8 or 7],b)else
return a-aI
end
end
function bq(b)s=c[5][c[6][b][2]]return ak[c[3][c[2][s[4]][s[5]+6]][6]]end
function onTick()bm=0
for n=1,3 do
if bB(9)and(not aQ)or not c[21]then
be=property.getText(bz)a=1
D=""
_=bi.sub(be,a,a)while _~=""do
cb=bi.byte(_)if cb>64 then
D=(D..cb-65)+0
if Z==1 then
bU=D
c[D]=c[D]or{}elseif Z==2 then
cE=D
an=0
elseif Z==3 then
ba=D
else
if an==0 then
an=cE
ba=ba-1
bh={}c[bU][#c[bU]+1]=bh
end
bh[#bh+1]=D
an=an-1
Z=y(an,ba)>0 and Z-1 or 0
end
Z=Z+1
D=""
else
D=D.._
end
a=a+1
_=bi.sub(be,a,a)end
bz=bz+1
aQ=be==""
end
end
if aQ then
if H(9)>0 then
ao=R
ap=H(9)end
if bX>0 and not ao then
ac={}aB[#aB+1]=ac
am=5
_=H(am)while _~=0 do
ai={}ac[#ac+1]=ai
for a=0,8 do
ai[a+1]=H(am+a)end
am=am+9
_=H(am)end
end
if bB(1)then
cr=0
by=H(1)bX=H(3)ar=ar+1
cl=ar//10
if ao then
for a=1,10 do
c[a]=c[a+10*ap]end
k=c[1]cj={k[1][1],k[1][2]}ak=c[8]ap=ap+1
end
if H(2)>0 then
_=c[2][H(2)]if _ then
b=_[4]if b>0 then
if b==3008 then
aH=_[5]>0 and _[5]elseif b>3004 then
aK=y(aK+3*(_[4]-3006),1)ck=aK/2
elseif b>3000 then
bV=_[4]end
cr=H(2)if b<3000 and c[9][_[5]][7]==0 then
_[8]=1
end
end
end
end
if bB(3)and by~=1 and by~=3 then
bG=.1
aV=by==5 and 5 or 3
else
aV=aV-1
if aV<1 then
bG=0
end
end
for a=1,#aB do
ac=aB[a]for n=1,#ac do
ai=ac[n]_=ai[1]if _>(2^15)then
_=ak[_-(2^15)]for h=1,6 do
_[h]=ai[h+1]end
elseif _<0 then
while-_>#k do
k[#k+1]=K
end
cp.remove(k,-_)else
if not k[_]then
k[_]={}end
_=k[_]for h=1,8 do
_[c[19][1][h]]=ai[h+1]end
_[15]=0
_[7]=aN(#c[7],_)_[8]=bq(_[7])end
end
end
aB={}for a=1,#c[6]do
aG[a]={}end
for a=1,#k do
_=k[a]if ao then
_[7]=aN(#c[7],_)_[8]=bq(_[7])_[9]=_[8][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
end
if _ and a>1 then
bt=0
for n,d in aW({1,2,9})do
_[d]=_[d]+_[d+10]bt=bt+_[d+10]end
if bt~=0 then
_[7]=aN(#c[7],_)_[8]=bq(_[7])end
_[15]=_[15]+1
_[20]=aU(_,f[1])O=c[16][_[6]]if O~=nil then
if O[5]>0 then
_[9]=_[8][1]end
if _[15]>=O[2]and O[2]~=-1 then
_[6]=O[4]_[15]=0
end
end
aG[_[7]][#aG[_[7]]+1]=a
end
end
ao=K
_=k[1]f[1]={_[1],_[2]}f[3]=_[3]cz=w(aU(f[1],cj)^2/4,16)cj={_[1],_[2]}f[2]=_[9]+41+cz*sin(ar*20)/4
as={}bu(#c[7])aT={}r={}aO={}b_={}T={}S={}aZ={}bb=L
for a=0,L-1 do
aT[a],T[a],S[a]=#c[6]+2,t+1,-t
end
a=1
while a<=#as and bb>0 do
_=c[6][as[a]]aO[a]={}b_[a]={}r[a]={}aZ[a]=aG[as[a]]cp.sort(aZ[a],function(b,m)return k[b][20]>k[m][20]end)for n=_[2],_[1]+_[2]-1 do
X=c[5][n]B=c[2][X[4]]ca,bI=c[4][X[1]],c[4][X[2]]aP,bM=sub(ca,f[1]),sub(bI,f[1])cd=aX(aP)G,aE=bw(cd-f[3]),bw(aX(bM)-f[3])if z(G)<90 or z(aE)<90 then
ah,ag=bA(G,-N,N),bA(aE,-N,N)if z(G)>=90 or z(aE)>=90 then
bH=bx(aP,bM)if z(G)>=90 then
if bH>0 then ah=-N else ah=N end
else
if bH<0 then ag=-N else ag=N end
end
end
l,o=az(tan(ah)/M*A),az(tan(ag)/M*A)if l~=o then
p,au=aU(f[1],ca),aU(f[1],bI)aY=X[3]+90
bC=aY-cd
cx=p*sin(bC)aS=(p*cos(bC))if G~=ah then
p=aS/cos(aY-(ah+f[3]))end
if aE~=ag then
au=aS/cos(aY-(ag+f[3]))end
p,au=p*cos(ah),au*cos(ag)h=X[5]+6
cP=(l>o)if cP and B[h]~=0 then
aA=B[3]&4>0
if aA then
V,Y=ak[c[3][B[6]][6]],ak[c[3][B[7]][6]]end
af=c[3][B[h]]cD={af[3],af[4],af[5]}I,bP,bN=ak[af[6]]for j,d in aW(cD)do
aw=d>0
aC=R
if(aw or(j==3 and not(bP and bN)))and(j==3 or aA)then
cf=K
ci=0
if j<3 then
cf=j==1 and y(V[4],Y[4])==0
E,x=V[3-j],Y[3-j]aC=(E<x)~=(j==2)~=(h==6)and E~=x and V~=Y
E,x=w(E,x),y(E,x)if aC then
if j==1 then
bP=R
else
bN=R
ci=B[3]&16>0 and y(V[2],Y[2])-x or 0
end
end
else
if aA then
E,x=y(V[1],Y[1]),w(V[2],Y[2])aC=V~=Y
else
E,x=I[1],I[2]end
end
E,x=E-f[2],x-f[2]bK,cn=E*aR,x*aR
if(aC or aw)and not cf then
bn=X[6]-af[1]if B[4]==48 then
bn=bn-ar
end
cN,cy=bK/p,cn/p
cO,cC=bK/au,cn/au
ch=0
ay=K
if aw then
_=c[21][d][4]if(X[4]==cr or bV==B[4]or B[8])and _>0 then
d=_
end
aq=c[21][d][3]u=1
if(j==3 and B[3]&16>0)or(j==1 and B[3]&8==0)then
u=-1
end
end
for h=l,o,-1 do
cL=bZ[h]bo=(aY-f[3])-cL
g=A-h
cm=K
if g>=0 and g<=L-1 then
if a<aT[g]then
aJ=(h-l)/(o-l)F,J=(cN*(1-aJ)+cO*aJ),(cy*(1-aJ)+cC*aJ)if z(J+F)-(J-F)<ab then
if aw then
if F~=J then
cm=R
bQ=aS*tan(bo)ax=bE(w(((z(bQ)+z(aS))//ck)+1,16))bW=ae((y(bQ-cx,0)-bn)/(aq*ax))bF=bW*ax
bS={g,t-F,t-J,d,bW,x-E,I[5],af[2]+ci,R,aq*ax,ax,u,not ay,j==3 and aA}if bF>ch or(not ay)or h==o then
ch=bF-1+ax
ay=R
r[a][#r[a]+1]=bS
end
cv=bS
end
end
if aC then
if j~=2 then
if J<T[g]then
b_[a][#b_[a]+1]={g,y(J,S[g]),T[g],I}end
if j==3 then W=J else W=F end
if T[g]>W then T[g]=W end
end
if j~=1 then
if F>S[g]then
aO[a][#aO[a]+1]={g,S[g],w(F,T[g]),I}end
if j==3 then W=F else W=J end
if S[g]<W then S[g]=W end
end
if(T[g]<=S[g])or(j==3 and(not aA)and aw)then
aT[g]=a
bb=bb-1
end
end
end
end
end
if(not cm)and ay then
ay=K
r[a][#r[a]+1]=cv
r[a][#r[a]][9]=K
end
end
if#r[a]>0 then
r[a][#r[a]][9]=K
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
function onDraw()bv=bY
local bR,bg,ad=bv.drawTriangleF,bv.drawRectF,bv.setColor
cM={aO,b_}if aQ then
e=c[24][c[19][8][ap-3]]aa,at=e[1],e[2]C=L/ceil(aa*M)c_=C*1
for a=0,ceil(aa*M),1 do
l=(aa/2-a-1+f[3]/90*aa)%aa
o=(l%1-1)*C
l=ae(l)*at
for n=0,at-1,1 do
Q=e[5+n+l]i=c[20][Q]ad(i[1],i[2],i[3])bg(a*C+o,n*C,c_,c_)end
end
for a=#r,1,-1 do
for n=1,#r[a]do
d=r[a][n]if d[9]or d[13]then
if d[9]then
P=r[a][n+1]else
P=d
end
e=c[21][d[4]]e=c[21][d[4]+(cl%e[5])*c[19][3][2]+c[19][12][d[11]]]u=d[12]U=w(u,0)g=d[1]o=P[1]cs=d[2-U]cJ=P[2-U]h=d[3+U]bc=P[3+U]if not P[9]then o=o+1 end
aM(d[7])cA=u*(d[2]-d[3])*e[3]/d[6]cG=u*(P[2]-P[3])*e[3]/P[6]cc=u>0 and w or y
bp=0
while h*u<cs*u and(bp<e[2]or not d[14])do
bD=cc(h+cA,cs)bl=cc(bc+cG,cJ)Q=e[7+((U+d[8]//e[3])%e[2])+e[2]*((d[5])%e[1])]i=c[20][Q]if i then
ad(i[1]*q,i[2]*q,i[3]*q)bR(g,h,g,bD,o,bl)bR(g,h,o,bc,o,bl)end
h=bD
bc=bl
U=U+u
bp=bp+1
end
end
end
for b=1,2 do
_=cM[b]bO={}av,aD,bd=ab,-ab
for n,d in aW(_[a])do
av=w(av,d[2])aD=y(aD,d[3])bd=d
e=c[22][d[4][b+2]]if e and not aH then
aM(d[4][5])i=c[20][e[5]]ad(i[1]*q,i[2]*q,i[3]*q)bY.drawLine(d[1],t-d[2],d[1],ae(t-d[3]-1))end
end
if bd and aH then
I=bd[4]cK=(I[b]-f[2])bj=cos(f[3])br=sin(f[3])for al=ae(av+t),ceil(aD+t)do
aj=aR*cK/(t-al)bJ=bj*aj-f[1][1]ce=br*aj-f[1][2]co=-br*aj+bJ
cq=bj*aj+ce
cw=br*aj+bJ
ct=-bj*aj+ce
cI=(cw-co)/L
cH=(ct-cq)/L
bO[al]={cI,cH,co,cq}end
for n,d in aW(_[a])do
if I[b+2]~=0 then
g=d[1]if g%aH==0 then
aM(I[5])m=I[b+2]e=c[22][m]e=c[22][m+(cl%e[4])]bL=A-(A-g)*M
av,aD=ae(d[2]+t),ceil(d[3]+t)aq=e[3]for al=av,aD do
aL=bO[al]cF=(aL[3]+aL[1]*bL)//aq
cB=(aL[4]+aL[2]*bL)//aq
Q=6+(cB%e[1])+e[1]*(cF%e[2])i=c[20][e[Q]]if i then
ad(i[1]*q,i[2]*q,i[3]*q)bg(g,-al+ab,aH,1)end
end
end
end
end
end
end
for n=1,#aZ[a]do
_=k[aZ[a][n]]if _[6]~=0 then
aP=sub(_,f[1])p=_[20]if p>1 then
G=bw(aX(aP)-f[3])p=p*cos(G)if z(G)<90 then
l=A-az(tan(G)/M*A)bo=az((180+G+f[3]-_[3]+bm*4)/360*8)O=c[16][_[6]][1]if O~=0 and _[6]~=1 then
e=c[17][z(O)][bo%8+1]u=e<0 and-1 or 1
e=z(e)if e>0 then
e=c[23][e+c[19][12][w(bE(p//aK+1),8)]]aa,at=e[1],e[2]C=A/(M*p)aF=C*bs
F=t+(f[2]-_[9])/p*aR
J=F-e[5]*aF
o=l-u*e[4]*C
C,aF=C*e[3],aF*e[3]aM(_[8][5])q=O>0 and q or 1
cg=C
cu=cg*bs
cQ=_[4]and c[15][_[4]][23]&8>0
for h=0,aa-1 do
l=o+h*C*u
if a<=aT[bA(az(l),0,L-1)]then
for j=0,at-1 do
Q=e[7+j+h*at]if Q~=0 then
if cQ then
bf=bf%50+1
ad(0,0,0,w(75*c[13][2][bf],255))else
i=c[20][Q]ad(i[1]*q,i[2]*q,i[3]*q)end
bg(l,J+j*aF,cg,cu)end
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
bm=bm+1
end
