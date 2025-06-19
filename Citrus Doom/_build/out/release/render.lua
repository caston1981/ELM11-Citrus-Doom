
A=math
u=A.max
s=A.min
E=A.abs
af=A.floor
ceil=A.ceil
sqrt=A.sqrt
I=input.getNumber
bA=input.getBool
pi=A.pi/180
bm=false
O=true
aB=ipairs
bX=table.remove
bs=string
function be(b,m)return b[1]*m[2]-b[2]*m[1]end
function sub(b,m)return{(b[1]-m[1]),(b[2]-m[2])}end
function bj(b)return((b+180)%360)-180 end
function sin(b)return A.sin(b*pi)end
function cos(b)return A.cos(b*pi)end
function tan(b)return A.tan(b*pi)end
function cP(b)return A.atan(b)/pi end
function aY(b)return A.atan(b[2],b[1])/pi end
function bc(b,m,_)return s(u(m,b),_)end
function ax(b)return af(b+.5)end
function aL(b,m)return sqrt(((b[1]-m[1])^2)+((b[2]-m[2])^2))end
function bN(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
function aQ(b)r=s(b/255+cq,1)^2.2 end
c={}bp=1
as=3
ar=O
l={{0,0},0}B=0
R=288
C=144
aj=128
v=64
aZ={}aW=500
bO=250
bR=1
ab=2^15
bt=3002
bi=0
aS=0
ap=0
bh=1.2
M=52
N=tan(M)aP=v*bh*R/aj/N
X=1
ca={}for a=-C,C do ca[a]=aY({1,a/C*N})end
function bf(a)if a<ab then
local w,bb=c[7][a]bb=0<be({w[3],w[4]},sub(l[1],w))and 8 or 7
bf(w[bb])bf(w[15-bb])else
an[#an+1]=a-ab
end
end
function aH(a,b)if a<ab then
w=c[7][a]return aH(w[0<be({w[3],w[4]},sub(b,w))and 8 or 7],b)else
return a-ab
end
end
function ba(b)w=c[5][c[6][b][2]]return aT[c[3][c[2][w[4]][w[5]+6]][6]]end
function onTick()by=0
for o=1,3 do
if bA(9)and(not bw)or not c[21]then
bk=property.getText(bp)a=1
D=""
_=bs.sub(bk,a,a)while _~=""do
cc=bs.byte(_)if cc>64 then
D=(D..cc-65)+0
if X==1 then
cn=D
c[D]=c[D]or{}elseif X==2 then
cr=D
av=0
elseif X==3 then
br=D
else
if av==0 then
av=cr
br=br-1
bd={}c[cn][#c[cn]+1]=bd
end
bd[#bd+1]=D
av=av-1
X=u(av,br)>0 and X-1 or 0
end
X=X+1
D=""
else
D=D.._
end
a=a+1
_=bs.sub(bk,a,a)end
bp=bp+1
bw=bk==""
end
end
if bw then
if I(10)>0 then
ar=O
as=I(10)end
if bR>0 and not ar then
ac={}ay[#ay+1]=ac
ao=6
_=I(ao)while _~=0 do
ah={}ac[#ac+1]=ah
for a=0,8 do
ah[a+1]=I(ao+a)end
ao=ao+9
_=I(ao)end
end
if bA(1)then
bP=0
bH=I(1)bR=I(3)ap=ap+1
bQ=ap//10
if ar then
for a=1,10 do
c[a]=c[a+10*as]end
k=c[1]cO={k[1][1],k[1][2]}for a=#k,1,-1 do
_=k[a]_=_[5]&(bt-3000)>0 or bX(k,a)end
aT=c[8]ay={}as=as+1
end
if I(2)>0 then
_=c[2][I(2)]if _ then
b=_[4]if b>0 then
if b==3008 then
aM=_[5]>0 and _[5]elseif b>3004 then
aW=u(aW+3*(_[4]-3006),1)bO=aW/2
elseif b>3000 then
bt=_[4]end
bP=I(2)if b<3000 and c[9][_[5]][7]==0 then
_[8]=1
end
end
end
end
if bA(3)and bH~=1 and bH~=3 then
cq=.1
aS=5
else
aS=aS-1
if aS<1 then
cq=0
end
end
for a=1,#ay do
ac=ay[a]for o=1,#ac do
ah=ac[o]_=ah[1]if _>ab then
_=aT[_-ab]for g=1,6 do
_[g]=ah[g+1]end
elseif _<0 then
while-_>#k do
k[#k+1]=bm
end
bX(k,-_)else
if not k[_]then
k[_]={}end
_=k[_]for g=1,8 do
_[c[19][1][g]]=ah[g+1]end
_[15]=0
_[7]=aH(#c[7],_)_[8]=ba(_[7])end
end
end
ay={}for a=1,#c[6]do
aZ[a]={}end
for a,_ in aB(k)do
if ar then
_[7]=aH(#c[7],_)_[8]=ba(_[7])_[9]=_[8][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
end
if _ and a>1 then
bo=0
for o,d in aB({1,2,9})do
_[d]=_[d]+_[d+10]bo=bo+_[d+10]end
if bo~=0 then
_[7]=aH(#c[7],_)_[8]=ba(_[7])end
_[15]=_[15]+1
_[20]=aL(_,l[1])L=c[16][_[6]]if L~=nil then
if L[5]>0 then
_[9]=_[8][1]end
if _[15]>=L[2]and L[2]~=-1 then
_[6]=L[4]_[15]=0
end
end
aZ[_[7]][#aZ[_[7]]+1]=a
end
end
_,ar=k[1]cF=s(aL(_,l[1])^2/4,16)l[1]={_[1],_[2]}B=_[3]l[2]=_[9]+41+cF*sin(ap*20)/4
an={}bf(#c[7])aR={}z={}aV={}aK={}U={}Y={}aU={}bu=R
for a=0,R-1 do
aR[a],U[a],Y[a]=#c[6]+2,v+1,-v
end
a=1
while a<=#an and bu>0 do
_=c[6][an[a]]aV[a]={}aK[a]={}z[a]={}aU[a]=aZ[an[a]]table.sort(aU[a],function(b,m)return k[b][20]>k[m][20]end)for o=_[2],_[1]+_[2]-1 do
V=c[5][o]K=c[2][V[4]]cl,bM=c[4][V[1]],c[4][V[2]]aE,bB=sub(cl,l[1]),sub(bM,l[1])bZ=aY(aE)G,aI=bj(bZ-B),bj(aY(bB)-B)if E(G)<90 or E(aI)<90 then
aa,ak=bc(G,-M,M),bc(aI,-M,M)if E(G)>=90 or E(aI)>=90 then
cd=be(aE,bB)if E(G)>=90 then
if cd>0 then aa=-M else aa=M end
else
if cd<0 then ak=-M else ak=M end
end
end
n,p=ax(tan(aa)/N*C),ax(tan(ak)/N*C)if n~=p then
q,az=aL(l[1],cl),aL(l[1],bM)aX=V[3]+90
bY=aX-bZ
cv=q*sin(bY)aJ=(q*cos(bY))if G~=aa then
q=aJ/cos(aX-(aa+B))end
if aI~=ak then
az=aJ/cos(aX-(ak+B))end
q,az=q*cos(aa),az*cos(ak)g=V[5]+6
cM=(n>p)if cM and K[g]~=0 then
at=K[3]&4>0
if at then
Z=aT[c[3][K[13-g]][6]]end
ae=c[3][K[g]]cE={ae[3],ae[4],ae[5]}j,bK,bW=aT[ae[6]]for i,d in aB(cE)do
am=d>0
al=O
if(am or(i==3 and not(bK and bW)))and(i==3 or at)then
cf,bJ=0
if i<3 then
bJ=i==1 and u(j[4],Z[4])==0
F,y=j[3-i],(i==1 and u or s)(Z[3-i],j[i])al=(F<y)==(i==2)and F~=y and j~=Z
am=al
F,y=s(F,y),u(F,y)if al then
if i==1 then
bK=O
else
bW=O
cf=K[3]&16>0 and u(j[2],Z[2])-y or 0
end
end
else
if at then
F,y=s(u(j[1],Z[1]),j[2]),u(s(j[2],Z[2]),j[1])al=j~=Z
else
F,y=j[1],j[2]end
end
F,y=F-l[2],y-l[2]cp,ce=F*aP,y*aP
if(al or am)and not bJ then
bg=V[6]-ae[1]if K[4]==48 then
bg=bg-ap
end
cu,cw=cp/q,ce/q
cL,cy=cp/az,ce/az
bC,aD=0
if am then
_=c[21][d][4]if(V[4]==bP or bt==K[4]or K[8])and _>0 then
d=_
end
aA=c[21][d][3]t=1
if(i==3 and K[3]&16>0)or(i==1 and K[3]&8==0)then
t=-1
end
end
for g=n,p,-1 do
cN=ca[g]bl=(aX-B)-cN
f,bF=C-g
if f>=0 and f<=R-1 then
if a<aR[f]then
aF=(g-n)/(p-n)J,H=(cu*(1-aF)+cL*aF),(cw*(1-aF)+cy*aF)if E(H+J)-(H-J)<aj then
if am then
if J~=H then
bF=O
ci=aJ*tan(bl)aq=bN(s(((E(ci)+E(aJ))//bO)+1,16))bL=af((u(ci-cv,0)-bg)/(aA*aq))bG=bL*aq
co={f,v-J,v-H,d,bL,y-F,j[5],ae[2]+cf,O,aA*aq,aq,t,not aD,i==3 and at}if bG>bC or(not aD)or g==p then
bC=bG-1+aq
aD=O
z[a][#z[a]+1]=co
end
cb=co
end
end
if al then
if i~=2 then
if H<U[f]then
aK[a][#aK[a]+1]={f,u(H,Y[f]),U[f],j}end
if i==3 then S=H else S=J end
if U[f]>S then U[f]=S end
end
if i~=1 then
if J>Y[f]then
aV[a][#aV[a]+1]={f,Y[f],s(J,U[f]),j}end
if i==3 then S=J else S=H end
if Y[f]<S then Y[f]=S end
end
if(U[f]<=Y[f])or(i==3 and(not at)and am)then
aR[f]=a
bu=bu-1
end
end
end
end
end
if(not bF)and aD then
cb[9]=bm
z[a][#z[a]+1],aD=cb
end
end
if#z[a]>0 then
z[a][#z[a]][9]=bm
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
function onDraw()aG=screen
local ch,c_,ad,bI=aG.drawTriangleF,aG.drawRectF,aG.setColor,aG.drawLine
cD={aV,aK}if bw then
e=c[24][c[19][8][as-3]]T,au=e[1],e[2]x=R/ceil(T*N)for a=0,ceil(T*N),1 do
n=(T/2-a-1+B/90*T)%T
p=(n%1-1)*x
n=af(n)*au
for o=0,au-1,1 do
Q=e[5+o+n]h=c[20][Q]ad(h[1],h[2],h[3])c_(a*x+p,o*x,x,x)end
end
for a=#z,1,-1 do
for o=1,#z[a]do
d=z[a][o]if d[9]or d[13]then
if d[9]then
P=z[a][o+1]else
P=d
end
e=c[21][d[4]]e=c[21][d[4]+(bQ%e[5])*"number of wall mipmap levels"+c[19][12][d[11]]]t=d[12]W=s(t,0)f=d[1]p=P[1]bE=d[2-W]cx=P[2-W]g=d[3+W]bv=P[3+W]if not P[9]then p=p+1 end
aQ(d[7])cG=t*(d[2]-d[3])*e[3]/d[6]cz=t*(P[2]-P[3])*e[3]/P[6]bT=t>0 and s or u
b_=0
while g*t<bE*t and(b_<e[2]or not d[14])do
cm=bT(g+cG,bE)bq=bT(bv+cz,cx)Q=e[7+((W+d[8]//e[3])%e[2])+e[2]*((d[5])%e[1])]h=c[20][Q]if h then
ad(h[1]*r,h[2]*r,h[3]*r)ch(f,g,f,cm,p,bq)ch(f,g,p,bv,p,bq)end
g=cm
bv=bq
W=W+t
b_=b_+1
end
end
end
for b=1,2 do
_=cD[b]cj={}aw,aC,bz=aj,-aj
for o,d in aB(_[a])do
aw=s(aw,d[2])aC=u(aC,d[3])bz=d
e=c[22][d[4][b+2]]if e and not aM then
aQ(d[4][5])h=c[20][e[5]]ad(h[1]*r,h[2]*r,h[3]*r)bI(d[1],v-d[2],d[1],af(v-d[3]-1))end
end
if bz and aM then
j=bz[4]cH=(j[b]-l[2])bx=cos(B)bn=sin(B)for ai=af(aw+v),ceil(aC+v)do
ag=aP*cH/(v-ai)ck=bx*ag-l[1][1]cg=bn*ag-l[1][2]bU=-bn*ag+ck
bV=bx*ag+cg
cB=bn*ag+ck
cs=-bx*ag+cg
cA=(cB-bU)/R
ct=(cs-bV)/R
cj[ai]={cA,ct,bU,bV}end
for o,d in aB(_[a])do
if j[b+2]~=0 then
f=d[1]if f%aM==0 then
aQ(j[5])m=j[b+2]e=c[22][m]e=c[22][m+(bQ%e[4])]bD=C-(C-f)*N
aw,aC=af(d[2]+v),ceil(d[3]+v)aA=e[3]for ai=aw,aC do
aN=cj[ai]cJ=(aN[3]+aN[1]*bD)//aA
cC=(aN[4]+aN[2]*bD)//aA
Q=6+(cC%e[1])+e[1]*(cJ%e[2])h=c[20][e[Q]]if h then
ad(h[1]*r,h[2]*r,h[3]*r)bI(f,aj-ai,f+aM+1,aj-ai)end
end
end
end
end
end
end
for o=1,#aU[a]do
_=k[aU[a][o]]if _[6]~=0 then
aE=sub(_,l[1])q=_[20]if q>1 then
G=bj(aY(aE)-B)q=q*cos(G)if E(G)<90 then
n=C-ax(tan(G)/N*C)bl=ax((180+G+B-_[3]+by*4)/360*8)L=c[16][_[6]][1]if L~=0 and _[6]~=1 then
e=c[17][E(L)][bl%8+1]t=e<0 and-1 or 1
e=E(e)if e>0 then
e=c[23][e+c[19][12][s(bN(q//aW+1),8)]]T,au=e[1],e[2]x=C/(N*q)aO=x*bh
J=v+(l[2]-_[9])/q*aP
H=J-e[5]*aO
p=n-t*e[4]*x
x,aO=x*e[3],aO*e[3]aQ(_[8][5])r=L>0 and r or 1
bS=x
cK=bS*bh
cI=_[4]and c[15][_[4]][23]&8>0
for g=0,T-1 do
n=p+g*x*t
if a<=aR[bc(ax(n),0,R-1)]then
for i=0,au-1 do
Q=e[7+i+g*au]if Q~=0 then
if cI then
bi=bi%50+1
ad(0,0,0,s(75*c[13][2][bi],255))else
h=c[20][Q]ad(h[1]*r,h[2]*r,h[3]*r)end
c_(n,H+i*aO,bS,cK)end
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
by=by+1
end
