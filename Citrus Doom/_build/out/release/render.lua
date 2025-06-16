
y=math
w=y.max
r=y.min
A=y.abs
af=y.floor
ceil=y.ceil
sqrt=y.sqrt
I=input.getNumber
bf=input.getBool
pi=y.pi/180
bw=false
Q=true
aC=ipairs
bE=table.remove
br=string
function bt(b,p)return b[1]*p[2]-b[2]*p[1]end
function sub(b,p)return{(b[1]-p[1]),(b[2]-p[2])}end
function bm(b)return((b+180)%360)-180 end
function sin(b)return y.sin(b*pi)end
function cos(b)return y.cos(b*pi)end
function tan(b)return y.tan(b*pi)end
function cR(b)return y.atan(b)/pi end
function aX(b)return y.atan(b[2],b[1])/pi end
function by(b,p,_)return r(w(p,b),_)end
function am(b)return af(b+.5)end
function aV(b,p)return sqrt(((b[1]-p[1])^2)+((b[2]-p[2])^2))end
function bO(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
function aO(b)q=r(b/255+cm,1)^2.2 end
c={}bq=1
ar=3
as=Q
l={{0,0},0}D=0
O=288
B=144
ac=128
v=64
aT={}aH=400
bU=200
bJ=1
cS=0
aR=2^15
bi=3002
ba=0
aM=0
ap=0
bh=1.2
L=52
M=tan(L)aZ=v*bh*O/ac/M
U=1
bR={}for a=-B,B do bR[a]=aX({1,a/B*M})end
function bg(a)if a<aR then
local u,bu=c[7][a]bu=0<bt({u[3],u[4]},sub(l[1],u))and 8 or 7
bg(u[bu])bg(u[15-bu])else
aw[#aw+1]=a-aR
end
end
function aW(a,b)if a<aR then
u=c[7][a]return aW(u[0<bt({u[3],u[4]},sub(b,u))and 8 or 7],b)else
return a-aR
end
end
function be(b)u=c[5][c[6][b][2]]return aJ[c[3][c[2][u[4]][u[5]+6]][6]]end
function onTick()bo=0
for n=1,3 do
if bf(9)and(not b_)or not c[21]then
bA=property.getText(bq)a=1
E=""
_=br.sub(bA,a,a)while _~=""do
bL=br.byte(_)if bL>64 then
E=(E..bL-65)+0
if U==1 then
bX=E
c[E]=c[E]or{}elseif U==2 then
cN=E
ao=0
elseif U==3 then
bl=E
else
if ao==0 then
ao=cN
bl=bl-1
bc={}c[bX][#c[bX]+1]=bc
end
bc[#bc+1]=E
ao=ao-1
U=w(ao,bl)>0 and U-1 or 0
end
U=U+1
E=""
else
E=E.._
end
a=a+1
_=br.sub(bA,a,a)end
bq=bq+1
b_=bA==""
end
end
if b_ then
if I(10)>0 then
as=Q
ar=I(10)end
if bJ>0 and not as then
ad={}av[#av+1]=ad
aq=6
_=I(aq)while _~=0 do
aa={}ad[#ad+1]=aa
for a=0,8 do
aa[a+1]=I(aq+a)end
aq=aq+9
_=I(aq)end
end
if bf(1)then
cn=0
bM=I(1)bJ=I(3)ap=ap+1
cp=ap//10
if as then
for a=1,10 do
c[a]=c[a+10*ar]end
k=c[1]cQ={k[1][1],k[1][2]}for a=#k,1,-1 do
_=k[a]_=_[5]&(bi-3000)>0 or bE(k,a)end
aJ=c[8]av={}ar=ar+1
end
if I(2)>0 then
_=c[2][I(2)]if _ then
b=_[4]if b>0 then
if b==3008 then
aL=_[5]>0 and _[5]elseif b>3004 then
aH=w(aH+3*(_[4]-3006),1)bU=aH/2
elseif b>3000 then
bi=_[4]end
cn=I(2)if b<3000 and c[9][_[5]][7]==0 then
_[8]=1
end
end
end
end
if bf(3)and bM~=1 and bM~=3 then
cm=.1
aM=5
else
aM=aM-1
if aM<1 then
cm=0
end
end
for a=1,#av do
ad=av[a]for n=1,#ad do
aa=ad[n]_=aa[1]if _>(2^15)then
_=aJ[_-(2^15)]for g=1,6 do
_[g]=aa[g+1]end
elseif _<0 then
while-_>#k do
k[#k+1]=bw
end
bE(k,-_)else
if not k[_]then
k[_]={}end
_=k[_]for g=1,8 do
_[c[19][1][g]]=aa[g+1]end
_[15]=0
_[7]=aW(#c[7],_)_[8]=be(_[7])end
end
end
av={}for a=1,#c[6]do
aT[a]={}end
for a,_ in aC(k)do
if as then
_[7]=aW(#c[7],_)_[8]=be(_[7])_[9]=_[8][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
end
if _ and a>1 then
bb=0
for n,d in aC({1,2,9})do
_[d]=_[d]+_[d+10]bb=bb+_[d+10]end
if bb~=0 then
_[7]=aW(#c[7],_)_[8]=be(_[7])end
_[15]=_[15]+1
_[20]=aV(_,l[1])N=c[16][_[6]]if N~=nil then
if N[5]>0 then
_[9]=_[8][1]end
if _[15]>=N[2]and N[2]~=-1 then
_[6]=N[4]_[15]=0
end
end
aT[_[7]][#aT[_[7]]+1]=a
end
end
_,as=k[1]cK=r(aV(_,l[1])^2/4,16)l[1]={_[1],_[2]}D=_[3]cP=_[9]+1
l[2]=_[9]+41+cK*sin(ap*20)/4
aw={}bg(#c[7])aK={}t={}aD={}aI={}T={}S={}aF={}bj=O
for a=0,O-1 do
aK[a],T[a],S[a]=#c[6]+2,v+1,-v
end
a=1
while a<=#aw and bj>0 do
_=c[6][aw[a]]aD[a]={}aI[a]={}t[a]={}aF[a]=aT[aw[a]]table.sort(aF[a],function(b,p)return k[b][20]>k[p][20]end)for n=_[2],_[1]+_[2]-1 do
Y=c[5][n]J=c[2][Y[4]]bK,bS=c[4][Y[1]],c[4][Y[2]]aQ,co=sub(bK,l[1]),sub(bS,l[1])bY=aX(aQ)K,aN=bm(bY-D),bm(aX(co)-D)if A(K)<90 or A(aN)<90 then
ag,ah=by(K,-L,L),by(aN,-L,L)if A(K)>=90 or A(aN)>=90 then
cf=bt(aQ,co)if A(K)>=90 then
if cf>0 then ag=-L else ag=L end
else
if cf<0 then ah=-L else ah=L end
end
end
o,m=am(tan(ag)/M*B),am(tan(ah)/M*B)if o~=m then
s,aA=aV(l[1],bK),aV(l[1],bS)aS=Y[3]+90
bZ=aS-bY
cu=s*sin(bZ)aE=(s*cos(bZ))if K~=ag then
s=aE/cos(aS-(ag+D))end
if aN~=ah then
aA=aE/cos(aS-(ah+D))end
s,aA=s*cos(ag),aA*cos(ah)g=Y[5]+6
cB=(o>m)if cB and J[g]~=0 then
ay=J[3]&4>0
if ay then
W=aJ[c[3][J[13-g]][6]]end
ab=c[3][J[g]]cG={ab[3],ab[4],ab[5]}j,ch,cj=aJ[ab[6]]for h,d in aC(cG)do
ai=d>0
ae=Q
if(ai or(h==3 and not(ch and cj)))and(h==3 or ay)then
bV,bI=0
if h<3 then
bI=h==1 and w(j[4],W[4])==0
F,z=j[3-h],(h==1 and w or r)(W[3-h],j[h])ae=(F<z)==(h==2)and F~=z and j~=W
ai=ae
F,z=r(F,z),w(F,z)if ae then
if h==1 then
ch=Q
else
cj=Q
bV=J[3]&16>0 and w(j[2],W[2])-z or 0
end
end
else
if ay then
F,z=r(w(j[1],W[1]),j[2]),w(r(j[2],W[2]),j[1])ae=j~=W
else
F,z=j[1],j[2]end
end
F,z=F-l[2],z-l[2]bD,bB=F*aZ,z*aZ
if(ae or ai)and not bI then
bp=Y[6]-ab[1]if J[4]==48 then
bp=bp-ap
end
cH,cz=bD/s,bB/s
cM,cE=bD/aA,bB/aA
bF,aB=0
if ai then
_=c[21][d][4]if(Y[4]==cn or bi==J[4]or J[8])and _>0 then
d=_
end
au=c[21][d][3]x=1
if(h==3 and J[3]&16>0)or(h==1 and J[3]&8==0)then
x=-1
end
end
for g=o,m,-1 do
cs=bR[g]bk=(aS-D)-cs
f,ce=B-g
if f>=0 and f<=O-1 then
if a<aK[f]then
aG=(g-o)/(m-o)G,H=(cH*(1-aG)+cM*aG),(cz*(1-aG)+cE*aG)if A(H+G)-(H-G)<ac then
if ai then
if G~=H then
ce=Q
bC=aE*tan(bk)az=bO(r(((A(bC)+A(aE))//bU)+1,16))cg=af((w(bC-cu,0)-bp)/(au*az))cc=cg*az
bW={f,v-G,v-H,d,cg,z-F,j[5],ab[2]+bV,Q,au*az,az,x,not aB,h==3 and ay}if cc>bF or(not aB)or g==m then
bF=cc-1+az
aB=Q
t[a][#t[a]+1]=bW
end
cI=bW
end
end
if ae then
if h~=2 then
if H<T[f]then
aI[a][#aI[a]+1]={f,w(H,S[f]),T[f],j}end
if h==3 then Z=H else Z=G end
if T[f]>Z then T[f]=Z end
end
if h~=1 then
if G>S[f]then
aD[a][#aD[a]+1]={f,S[f],r(G,T[f]),j}end
if h==3 then Z=G else Z=H end
if S[f]<Z then S[f]=Z end
end
if(T[f]<=S[f])or(h==3 and(not ay)and ai)then
aK[f]=a
bj=bj-1
end
end
end
end
end
if(not ce)and aB then
t[a][#t[a]+1],aB=cI
t[a][#t[a]][9]=bw
end
end
if#t[a]>0 then
t[a][#t[a]][9]=bw
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
function onDraw()aU=screen
local bH,bN,ak,cl=aU.drawTriangleF,aU.drawRectF,aU.setColor,aU.drawLine
cD={aD,aI}if b_ then
e=c[24][c[19][8][ar-3]]X,at=e[1],e[2]C=O/ceil(X*M)ca=C*1
for a=0,ceil(X*M),1 do
o=(X/2-a-1+D/90*X)%X
m=(o%1-1)*C
o=af(o)*at
for n=0,at-1,1 do
R=e[5+n+o]i=c[20][R]ak(i[1],i[2],i[3])bN(a*C+m,n*C,ca,ca)end
end
for a=#t,1,-1 do
for n=1,#t[a]do
d=t[a][n]if d[9]or d[13]then
if d[9]then
P=t[a][n+1]else
P=d
end
e=c[21][d[4]]e=c[21][d[4]+(cp%e[5])*"number of wall mipmap levels"+c[19][12][d[11]]]x=d[12]V=r(x,0)f=d[1]m=P[1]bG=d[2-V]cy=P[2-V]g=d[3+V]bz=P[3+V]if not P[9]then m=m+1 end
aO(d[7])cO=x*(d[2]-d[3])*e[3]/d[6]cJ=x*(P[2]-P[3])*e[3]/P[6]bQ=x>0 and r or w
bs=0
while g*x<bG*x and(bs<e[2]or not d[14])do
cb=bQ(g+cO,bG)bd=bQ(bz+cJ,cy)R=e[7+((V+d[8]//e[3])%e[2])+e[2]*((d[5])%e[1])]i=c[20][R]if i then
ak(i[1]*q,i[2]*q,i[3]*q)bH(f,g,f,cb,m,bd)bH(f,g,m,bz,m,bd)end
g=cb
bz=bd
V=V+x
bs=bs+1
end
end
end
for b=1,2 do
_=cD[b]ck={}an,ax,bn=ac,-ac
for n,d in aC(_[a])do
an=r(an,d[2])ax=w(ax,d[3])bn=d
e=c[22][d[4][b+2]]if e and not aL then
aO(d[4][5])i=c[20][e[5]]ak(i[1]*q,i[2]*q,i[3]*q)cl(d[1],v-d[2],d[1],af(v-d[3]-1))end
end
if bn and aL then
j=bn[4]ct=(j[b]-l[2])bv=cos(D)bx=sin(D)for aj=af(an+v),ceil(ax+v)do
al=aZ*ct/(v-aj)c_=bv*al-l[1][1]ci=bx*al-l[1][2]bP=-bx*al+c_
cq=bv*al+ci
cv=bx*al+c_
cC=-bv*al+ci
cA=(cv-bP)/O
cF=(cC-cq)/O
ck[aj]={cA,cF,bP,cq}end
for n,d in aC(_[a])do
if j[b+2]~=0 then
f=d[1]if f%aL==0 then
aO(j[5])p=j[b+2]e=c[22][p]e=c[22][p+(cp%e[4])]bT=B-(B-f)*M
an,ax=af(d[2]+v),ceil(d[3]+v)au=e[3]for aj=an,ax do
aY=ck[aj]cr=(aY[3]+aY[1]*bT)//au
cx=(aY[4]+aY[2]*bT)//au
R=6+(cx%e[1])+e[1]*(cr%e[2])i=c[20][e[R]]if i then
ak(i[1]*q,i[2]*q,i[3]*q)cl(f,ac-aj,f+aL+1,ac-aj)end
end
end
end
end
end
end
for n=1,#aF[a]do
_=k[aF[a][n]]if _[6]~=0 then
aQ=sub(_,l[1])s=_[20]if s>1 then
K=bm(aX(aQ)-D)s=s*cos(K)if A(K)<90 then
o=B-am(tan(K)/M*B)bk=am((180+K+D-_[3]+bo*4)/360*8)N=c[16][_[6]][1]if N~=0 and _[6]~=1 then
e=c[17][A(N)][bk%8+1]x=e<0 and-1 or 1
e=A(e)if e>0 then
e=c[23][e+c[19][12][r(bO(s//aH+1),8)]]X,at=e[1],e[2]C=B/(M*s)aP=C*bh
G=v+(l[2]-_[9])/s*aZ
H=G-e[5]*aP
m=o-x*e[4]*C
C,aP=C*e[3],aP*e[3]aO(_[8][5])q=N>0 and q or 1
cd=C
cL=cd*bh
cw=_[4]and c[15][_[4]][23]&8>0
for g=0,X-1 do
o=m+g*C*x
if a<=aK[by(am(o),0,O-1)]then
for h=0,at-1 do
R=e[7+h+g*at]if R~=0 then
if cw then
ba=ba%50+1
ak(0,0,0,r(75*c[13][2][ba],255))else
i=c[20][R]ak(i[1]*q,i[2]*q,i[3]*q)end
bN(o,H+h*aP,cd,cL)end
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
bo=bo+1
end
