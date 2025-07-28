
y=math
u=y.max
s=y.min
E=y.abs
ak=y.floor
ceil=y.ceil
sqrt=y.sqrt
J=input.getNumber
bb=input.getBool
pi=y.pi/180
bd=false
N=true
ay=ipairs
bP=table.remove
bC=string
function bc(b,o)return b[1]*o[2]-b[2]*o[1]end
function sub(b,o)return{(b[1]-o[1]),(b[2]-o[2])}end
function bf(b)return((b+180)%360)-180 end
function sin(b)return y.sin(b*pi)end
function cos(b)return y.cos(b*pi)end
function tan(b)return y.tan(b*pi)end
function cO(b)return y.atan(b)/pi end
function aO(b)return y.atan(b[2],b[1])/pi end
function bl(b,o,_)return s(u(o,b),_)end
function ax(b)return ak(b+.5)end
function aQ(b,o)return sqrt(((b[1]-o[1])^2)+((b[2]-o[2])^2))end
function bO(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
function aH(b)r=s(b/255+aL,1)^2.2 end
c={}bw=1
ao=3
aE=N
l={{0,0},0}F=0
Q=288
D=144
al=128
v=64
aN={}aV=500
bG=250
bE=1
ag=2^15
bz=3002
bA=0
aC=0
aA=0
bu=1.2
O=52
M=tan(O)ba=v*bu*Q/al/M
X=1
cq={}for a=-D,D do cq[a]=aO({1,a/D*M})end
function bk(a)if a<ag then
local t,bB=c[7][a]bB=0<bc({t[3],t[4]},sub(l[1],t))and 8 or 7
bk(t[bB])bk(t[15-bB])else
av[#av+1]=a-ag
end
end
function aG(a,b)if a<ag then
t=c[7][a]return aG(t[0<bc({t[3],t[4]},sub(b,t))and 8 or 7],b)else
return a-ag
end
end
function be(b)t=c[5][c[6][b][2]]return aX[c[3][c[2][t[4]][t[5]+6]][6]]end
function onTick()bs=0
for p=1,3 do
if bb(9)and(not bg)or not c[21]then
bt=property.getText(bw)a=1
B=""
_=bC.sub(bt,a,a)while _~=""do
aF=bC.byte(_)if aF>64 then
B=(B..aF-65)+0
if X==1 then
ce=B
c[B]=c[B]or{}elseif X==2 then
cH=B
aB=0
elseif X==3 then
br=B
else
if aB==0 then
aB=cH
br=br-1
bx={}c[ce][#c[ce]+1]=bx
end
bx[#bx+1]=B
aB=aB-1
X=u(aB,br)>0 and X-1 or 0
end
X=X+1
B=""
else
B=B.._
end
a=a+1
_=bC.sub(bt,a,a)end
bw=bw+1
bg=bt==""
end
end
if bg then
if J(10)>0 then
aE=N
ao=J(10)end
if bE>0 and not aE then
am={}aD[#aD+1]=am
az=6
_=J(az)while _~=0 do
ac={}am[#am+1]=ac
for a=0,8 do
ac[a+1]=J(az+a)end
az=az+9
_=J(az)end
end
if bb(1)then
co=0
cm=J(1)bE=J(3)aA=aA+1
bV=aA//10
if aE then
for a=1,10 do
c[a]=c[a+10*ao]end
k=c[1]cP={k[1][1],k[1][2]}for a=#k,1,-1 do
_=k[a]_=_[5]&(bz-3000)>0 or bP(k,a)end
aX=c[8]aD={}ao=ao+1
end
if J(2)>0 then
_=c[2][J(2)]if _ then
b=_[4]if b>0 then
if b==3008 then
aY=_[5]>0 and _[5]elseif b>3004 then
aV=u(aV+3*(_[4]-3006),1)bG=aV/2
elseif b>3000 then
bz=_[4]end
co=J(2)if b<3000 and c[9][_[5]][7]==0 then
_[8]=1
end
end
end
end
if bb(3)and cm~=1 and cm~=3 and aL<1 then
aL=.1
aC=5
else
aC=aC-1
if aC<1 then
aL=0
end
end
for a=1,#aD do
am=aD[a]for p=1,#am do
ac=am[p]_=ac[1]if _>ag then
_=aX[_-ag]for g=1,6 do
_[g]=ac[g+1]end
elseif _<0 then
aF=c[1][-_]if aF and c[15][aF[4]or 1][29]=="light amp index" then
aL=1
aC=4200
end
while-_>#k do
k[#k+1]=bd
end
bP(k,-_)else
k[_]=k[_]or{}_=k[_]for g=1,8 do
_[c[19][1][g]]=ac[g+1]end
_[15]=0
_[7]=aG(#c[7],_)_[8]=be(_[7])end
end
end
aD={}for a=1,#c[6]do
aN[a]={}end
for a,_ in ay(k)do
if aE then
_[7]=aG(#c[7],_)_[8]=be(_[7])_[9]=_[8][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
end
if _ and a>1 then
by=0
for p,d in ay({1,2,9})do
_[d]=_[d]+_[d+10]by=by+_[d+10]end
if by~=0 then
_[7]=aG(#c[7],_)_[8]=be(_[7])end
_[15]=_[15]+1
_[20]=aQ(_,l[1])L=c[16][_[6]]if L then
if L[5]>0 then
_[9]=_[8][1]end
if _[15]>=L[2]and L[2]~=-1 then
_[6]=L[4]_[15]=0
end
end
aN[_[7]][#aN[_[7]]+1]=a
end
end
_,aE=k[1]cw=s(aQ(_,l[1])^2/4,16)l[1]={_[1],_[2]}F=_[3]l[2]=_[9]+41+cw*sin(aA*20)/4
av={}bk(#c[7])aT={}A={}aR={}aS={}U={}W={}aP={}bp=Q
for a=0,Q-1 do
aT[a],U[a],W[a]=#c[6]+2,v+1,-v
end
a=1
while a<=#av and bp>0 do
_=c[6][av[a]]aR[a]={}aS[a]={}A[a]={}aP[a]=aN[av[a]]table.sort(aP[a],function(b,o)return k[b][20]>k[o][20]end)for p=_[2],_[1]+_[2]-1 do
Z=c[5][p]K=c[2][Z[4]]cc,ch=c[4][Z[1]],c[4][Z[2]]aZ,c_=sub(cc,l[1]),sub(ch,l[1])bR=aO(aZ)G,aM=bf(bR-F),bf(aO(c_)-F)if E(G)<90 or E(aM)<90 then
ah,ab=bl(G,-O,O),bl(aM,-O,O)if E(G)>=90 or E(aM)>=90 then
bJ=bc(aZ,c_)if E(G)>=90 then
if bJ>0 then ah=-O else ah=O end
else
if bJ<0 then ab=-O else ab=O end
end
end
m,n=ax(tan(ah)/M*D),ax(tan(ab)/M*D)if m~=n then
q,au=aQ(l[1],cc),aQ(l[1],ch)aK=Z[3]+90
bI=aK-bR
cx=q*sin(bI)aJ=(q*cos(bI))if G~=ah then
q=aJ/cos(aK-(ah+F))end
if aM~=ab then
au=aJ/cos(aK-(ab+F))end
q,au=q*cos(ah),au*cos(ab)g=Z[5]+6
cC=(m>n)if cC and K[g]~=0 then
an=K[3]&4>0
if an then
V=aX[c[3][K[13-g]][6]]end
ai=c[3][K[g]]cu={ai[3],ai[4],ai[5]}j,bF,ck=aX[ai[6]]for h,d in ay(cu)do
aa=d>0
ad=N
if(aa or(h==3 and not(bF and ck)))and(h==3 or an)then
bU=0
cd=N
if h<3 then
cd=h~=1 or u(j[4],V[4])~=0
C,z=j[3-h],(h==1 and u or s)(V[3-h],j[h])ad=(C<z)==(h==2)and C~=z and j~=V
aa=ad
C,z=s(C,z),u(C,z)if ad then
if h==1 then
bF=N
else
ck=N
bU=K[3]&16>0 and u(j[2],V[2])-z or 0
end
end
else
if an then
C,z=s(u(j[1],V[1]),j[2]),u(s(j[2],V[2]),j[1])ad=j~=V
else
C,z=j[1],j[2]end
end
C,z=C-l[2],z-l[2]bT,bQ=C*ba,z*ba
if(ad or aa)and cd then
bi=Z[6]-ai[1]if K[4]==48 then
bi=bi-aA
end
cM,cJ=bT/q,bQ/q
cL,ct=bT/au,bQ/au
bL,ap=0
if aa then
_=c[21][d][4]if(Z[4]==co or bz==K[4]or K[8])and _>0 then
d=_
end
aw=c[21][d][3]w=1
if(h==3 and K[3]&16>0)or(h==1 and K[3]&8==0)then
w=-1
end
end
for g=m,n,-1 do
cv=cq[g]bm=(aK-F)-cv
f,bW=D-g
if f>=0 and f<=Q-1 then
if a<aT[f]then
aI=(g-m)/(n-m)I,H=(cM*(1-aI)+cL*aI),(cJ*(1-aI)+ct*aI)if E(H+I)-(H-I)<al then
if aa then
if I~=H then
bW=N
bX=aJ*tan(bm)ar=bO(s(((E(bX)+E(aJ))//bG)+1,16))cg=ak((u(bX-cx,0)-bi)/(aw*ar))ca=cg*ar
bK={f,v-I,v-H,d,cg,z-C,j[5],ai[2]+bU,N,aw*ar,ar,w,not ap,h==3 and an}if ca>bL or(not ap)or g==n then
bL=ca-1+ar
ap=N
A[a][#A[a]+1]=bK
end
bH=bK
end
end
if ad then
if h~=2 then
if H<U[f]then
aS[a][#aS[a]+1]={f,u(H,W[f]),U[f],j}end
if h==3 then S=H else S=I end
if U[f]>S then U[f]=S end
end
if h~=1 then
if I>W[f]then
aR[a][#aR[a]+1]={f,W[f],s(I,U[f]),j}end
if h==3 then S=I else S=H end
if W[f]<S then W[f]=S end
end
if(U[f]<=W[f])or(h==3 and(not an)and aa)then
aT[f]=a
bp=bp-1
end
end
end
end
end
if(not bW)and ap then
bH[9]=bd
A[a][#A[a]+1],ap=bH
end
end
if#A[a]>0 then
A[a][#A[a]][9]=bd
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
function onDraw()b_=screen
local bM,bZ,aj,cb=b_.drawTriangleF,b_.drawRectF,b_.setColor,b_.drawLine
cK={aR,aS}if bg then
e=c[24][c[19][8][ao-3]]T,aq=e[1],e[2]x=Q/ceil(T*M)for a=0,ceil(T*M),1 do
m=(T/2-a-1+F/90*T)%T
n=(m%1-1)*x
m=ak(m)*aq
for p=0,aq-1,1 do
R=e[5+p+m]i=c[20][R]aj(i[1],i[2],i[3])bZ(a*x+n,p*x,x,x)end
end
for a=#A,1,-1 do
for p=1,#A[a]do
d=A[a][p]if d[9]or d[13]then
if d[9]then
P=A[a][p+1]else
P=d
end
e=c[21][d[4]]e=c[21][d[4]+(bV%e[5])*"number of wall mipmap levels"+c[19][12][d[11]]]w=d[12]Y=s(w,0)f=d[1]n=P[1]bD=d[2-Y]cr=P[2-Y]g=d[3+Y]bn=P[3+Y]if not P[9]then n=n+1 end
aH(d[7])cs=w*(d[2]-d[3])*e[3]/d[6]cD=w*(P[2]-P[3])*e[3]/P[6]cf=w>0 and s or u
bq=0
while g*w<bD*w and(bq<e[2]or not d[14])do
cl=cf(g+cs,bD)bj=cf(bn+cD,cr)R=e[7+((Y+d[8]//e[3])%e[2])+e[2]*((d[5])%e[1])]i=c[20][R]if i then
aj(i[1]*r,i[2]*r,i[3]*r)bM(f,g,f,cl,n,bj)bM(f,g,n,bn,n,bj)end
g=cl
bn=bj
Y=Y+w
bq=bq+1
end
end
end
for b=1,2 do
_=cK[b]bY={}as,at,bh=al,-al
for p,d in ay(_[a])do
as=s(as,d[2])at=u(at,d[3])bh=d
e=c[22][d[4][b+2]]if e and not aY then
aH(d[4][5])i=c[20][e[5]]aj(i[1]*r,i[2]*r,i[3]*r)cb(d[1],v-d[2],d[1],ak(v-d[3]-1))end
end
if bh and aY then
j=bh[4]cA=(j[b]-l[2])bv=cos(F)bo=sin(F)for af=ak(as+v),ceil(at+v)do
ae=ba*cA/(v-af)cn=bv*ae-l[1][1]ci=bo*ae-l[1][2]cp=-bo*ae+cn
bN=bv*ae+ci
cF=bo*ae+cn
cy=-bv*ae+ci
cz=(cF-cp)/Q
cG=(cy-bN)/Q
bY[af]={cz,cG,cp,bN}end
for p,d in ay(_[a])do
if j[b+2]~=0 then
f=d[1]if f%aY==0 then
aH(j[5])o=j[b+2]e=c[22][o]e=c[22][o+(bV%e[4])]bS=D-(D-f)*M
as,at=ak(d[2]+v),ceil(d[3]+v)aw=e[3]for af=as,at do
aU=bY[af]cB=(aU[3]+aU[1]*bS)//aw
cE=(aU[4]+aU[2]*bS)//aw
R=6+(cE%e[1])+e[1]*(cB%e[2])i=c[20][e[R]]if i then
aj(i[1]*r,i[2]*r,i[3]*r)cb(f,al-af,f+aY+1,al-af)end
end
end
end
end
end
end
for p=1,#aP[a]do
_=k[aP[a][p]]if _[6]~=0 then
aZ=sub(_,l[1])q=_[20]if q>1 then
G=bf(aO(aZ)-F)q=q*cos(G)if E(G)<90 then
m=D-ax(tan(G)/M*D)bm=ax((180+G+F-_[3]+bs*4)/360*8)L=c[16][_[6]][1]if L~=0 and _[6]~=1 then
e=c[17][E(L)][bm%8+1]w=e<0 and-1 or 1
e=E(e)if e>0 then
e=c[23][e+c[19][12][s(bO(q//aV+1),8)]]T,aq=e[1],e[2]x=D/(M*q)aW=x*bu
I=v+(l[2]-_[9])/q*ba
H=I-e[5]*aW
n=m-w*e[4]*x
x,aW=x*e[3],aW*e[3]aH(_[8][5])r=L>0 and r or 1
cj=x
cI=cj*bu
cN=c[15][_[4]or 1][23]&8>0
for g=0,T-1 do
m=n+g*x*w
if a<=aT[bl(ax(m),0,Q-1)]then
for h=0,aq-1 do
R=e[7+h+g*aq]if R~=0 then
if cN then
bA=bA%50+1
aj(0,0,0,s(75*c[13][2][bA],255))else
i=c[20][R]aj(i[1]*r,i[2]*r,i[3]*r)end
bZ(m,H+h*aW,cj,cI)end
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
bs=bs+1
end
