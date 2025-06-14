
y=math
w=y.max
t=y.min
E=y.abs
ag=y.floor
ceil=y.ceil
sqrt=y.sqrt
J=input.getNumber
bv=input.getBool
pi=y.pi/180
bi=false
O=true
ar=ipairs
bU=table.remove
bt=string
function bx(b,n)return b[1]*n[2]-b[2]*n[1]end
function sub(b,n)return{(b[1]-n[1]),(b[2]-n[2])}end
function bq(b)return((b+180)%360)-180 end
function sin(b)return y.sin(b*pi)end
function cos(b)return y.cos(b*pi)end
function tan(b)return y.tan(b*pi)end
function cP(b)return y.atan(b)/pi end
function aV(b)return y.atan(b[2],b[1])/pi end
function bn(b,n,_)return t(w(n,b),_)end
function aq(b)return ag(b+.5)end
function aJ(b,n)return sqrt(((b[1]-n[1])^2)+((b[2]-n[2])^2))end
function bS(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
function aZ(b)s=t(b/255+bG,1)^2.2 end
c={}bg=1
aw=3
am=O
l={{0,0},0}F=0
R=288
A=144
ai=128
x=64
aG={}aT=400
c_=200
bW=1
cS=0
aF=2^15
bm=3002
br=0
aH=0
ax=0
bs=1.2
L=52
N=tan(L)aD=x*bs*R/ai/N
V=1
bB={}for a=-A,A do bB[a]=aV({1,a/A*N})end
function bb(a)if a<aF then
local u,bz=c[7][a]bz=0<bx({u[3],u[4]},sub(l[1],u))and 8 or 7
bb(u[bz])bb(u[15-bz])else
av[#av+1]=a-aF
end
end
function aW(a,b)if a<aF then
u=c[7][a]return aW(u[0<bx({u[3],u[4]},sub(b,u))and 8 or 7],b)else
return a-aF
end
end
function bl(b)u=c[5][c[6][b][2]]return aQ[c[3][c[2][u[4]][u[5]+6]][6]]end
function onTick()be=0
for o=1,3 do
if bv(9)and(not bw)or not c[21]then
bA=property.getText(bg)a=1
B=""
_=bt.sub(bA,a,a)while _~=""do
cd=bt.byte(_)if cd>64 then
B=(B..cd-65)+0
if V==1 then
cn=B
c[B]=c[B]or{}elseif V==2 then
cH=B
aA=0
elseif V==3 then
bp=B
else
if aA==0 then
aA=cH
bp=bp-1
bo={}c[cn][#c[cn]+1]=bo
end
bo[#bo+1]=B
aA=aA-1
V=w(aA,bp)>0 and V-1 or 0
end
V=V+1
B=""
else
B=B.._
end
a=a+1
_=bt.sub(bA,a,a)end
bg=bg+1
bw=bA==""
end
end
if bw then
if J(10)>0 then
am=O
aw=J(10)end
if bW>0 and not am then
al={}ap[#ap+1]=al
ao=6
_=J(ao)while _~=0 do
ab={}al[#al+1]=ab
for a=0,8 do
ab[a+1]=J(ao+a)end
ao=ao+9
_=J(ao)end
end
if bv(1)then
co=0
ca=J(1)bW=J(3)ax=ax+1
cb=ax//10
if am then
for a=1,10 do
c[a]=c[a+10*aw]end
k=c[1]cQ={k[1][1],k[1][2]}for a=#k,1,-1 do
_=k[a]_=_[5]&(bm-3000)>0 or bU(k,a)end
aQ=c[8]ap={}aw=aw+1
end
if J(2)>0 then
_=c[2][J(2)]if _ then
b=_[4]if b>0 then
if b==3008 then
aU=_[5]>0 and _[5]elseif b>3004 then
aT=w(aT+3*(_[4]-3006),1)c_=aT/2
elseif b>3000 then
bm=_[4]end
co=J(2)if b<3000 and c[9][_[5]][7]==0 then
_[8]=1
end
end
end
end
if bv(3)and ca~=1 and ca~=3 then
bG=.1
aH=5
else
aH=aH-1
if aH<1 then
bG=0
end
end
for a=1,#ap do
al=ap[a]for o=1,#al do
ab=al[o]_=ab[1]if _>(2^15)then
_=aQ[_-(2^15)]for g=1,6 do
_[g]=ab[g+1]end
elseif _<0 then
while-_>#k do
k[#k+1]=bi
end
bU(k,-_)else
if not k[_]then
k[_]={}end
_=k[_]for g=1,8 do
_[c[19][1][g]]=ab[g+1]end
_[15]=0
_[7]=aW(#c[7],_)_[8]=bl(_[7])end
end
end
ap={}for a=1,#c[6]do
aG[a]={}end
for a,_ in ar(k)do
if am then
_[7]=aW(#c[7],_)_[8]=bl(_[7])_[9]=_[8][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
end
if _ and a>1 then
bj=0
for o,d in ar({1,2,9})do
_[d]=_[d]+_[d+10]bj=bj+_[d+10]end
if bj~=0 then
_[7]=aW(#c[7],_)_[8]=bl(_[7])end
_[15]=_[15]+1
_[20]=aJ(_,l[1])M=c[16][_[6]]if M~=nil then
if M[5]>0 then
_[9]=_[8][1]end
if _[15]>=M[2]and M[2]~=-1 then
_[6]=M[4]_[15]=0
end
end
aG[_[7]][#aG[_[7]]+1]=a
end
end
_,am=k[1]cI=t(aJ(_,l[1])^2/4,16)l[1]={_[1],_[2]}F=_[3]cR=_[9]+1
l[2]=_[9]+41+cI*sin(ax*20)/4
av={}bb(#c[7])aO={}q={}aE={}aI={}S={}W={}aM={}bk=R
for a=0,R-1 do
aO[a],S[a],W[a]=#c[6]+2,x+1,-x
end
a=1
while a<=#av and bk>0 do
_=c[6][av[a]]aE[a]={}aI[a]={}q[a]={}aM[a]=aG[av[a]]table.sort(aM[a],function(b,n)return k[b][20]>k[n][20]end)for o=_[2],_[1]+_[2]-1 do
Y=c[5][o]G=c[2][Y[4]]ci,bJ=c[4][Y[1]],c[4][Y[2]]aR,bV=sub(ci,l[1]),sub(bJ,l[1])bL=aV(aR)I,aP=bq(bL-F),bq(aV(bV)-F)if E(I)<90 or E(aP)<90 then
ak,aj=bn(I,-L,L),bn(aP,-L,L)if E(I)>=90 or E(aP)>=90 then
bE=bx(aR,bV)if E(I)>=90 then
if bE>0 then ak=-L else ak=L end
else
if bE<0 then aj=-L else aj=L end
end
end
m,p=aq(tan(ak)/N*A),aq(tan(aj)/N*A)if m~=p then
r,an=aJ(l[1],ci),aJ(l[1],bJ)aL=Y[3]+90
bF=aL-bL
cE=r*sin(bF)aN=(r*cos(bF))if I~=ak then
r=aN/cos(aL-(ak+F))end
if aP~=aj then
an=aN/cos(aL-(aj+F))end
r,an=r*cos(ak),an*cos(aj)g=Y[5]+6
cN=(m>p)if cN and G[g]~=0 then
az=G[3]&4>0
if az then
X=aQ[c[3][G[13-g]][6]]end
ad=c[3][G[g]]cJ={ad[3],ad[4],ad[5]}j,cp,bZ=aQ[ad[6]]for h,d in ar(cJ)do
ae=d>0
af=O
if(ae or(h==3 and not(cp and bZ)))and(h==3 or az)then
bK,bP=0
if h<3 then
bP=h==1 and w(j[4],X[4])==0
D,z=j[3-h],(h==1 and w or t)(X[3-h],j[h])af=(D<z)==(h==2)and D~=z and j~=X
ae=af
D,z=t(D,z),w(D,z)if af then
if h==1 then
cp=O
else
bZ=O
bK=G[3]&16>0 and w(j[2],X[2])-z or 0
end
end
else
if az then
D,z=t(w(j[1],X[1]),j[2]),w(t(j[2],X[2]),j[1])af=j~=X
else
D,z=j[1],j[2]end
end
D,z=D-l[2],z-l[2]bO,bY=D*aD,z*aD
if(af or ae)and not bP then
bf=Y[6]-ad[1]if G[4]==48 then
bf=bf-ax
end
ct,cr=bO/r,bY/r
cC,cL=bO/an,bY/an
cq,aB=0
if ae then
_=c[21][d][4]if(Y[4]==co or bm==G[4]or G[8])and _>0 then
d=_
end
at=c[21][d][3]v=1
if(h==3 and G[3]&16>0)or(h==1 and G[3]&8==0)then
v=-1
end
end
for g=m,p,-1 do
cA=bB[g]b_=(aL-F)-cA
f,bC=A-g
if f>=0 and f<=R-1 then
if a<aO[f]then
aY=(g-m)/(p-m)K,H=(ct*(1-aY)+cC*aY),(cr*(1-aY)+cL*aY)if E(H+K)-(H-K)<ai then
if ae then
if K~=H then
bC=O
bI=aN*tan(b_)aC=bS(t(((E(bI)+E(aN))//c_)+1,16))bN=ag((w(bI-cE,0)-bf)/(at*aC))bD=bN*aC
ch={f,x-K,x-H,d,bN,z-D,j[5],ad[2]+bK,O,at*aC,aC,v,not aB,h==3 and az}if bD>cq or(not aB)or g==p then
cq=bD-1+aC
aB=O
q[a][#q[a]+1]=ch
end
cu=ch
end
end
if af then
if h~=2 then
if H<S[f]then
aI[a][#aI[a]+1]={f,w(H,W[f]),S[f],j}end
if h==3 then U=H else U=K end
if S[f]>U then S[f]=U end
end
if h~=1 then
if K>W[f]then
aE[a][#aE[a]+1]={f,W[f],t(K,S[f]),j}end
if h==3 then U=K else U=H end
if W[f]<U then W[f]=U end
end
if(S[f]<=W[f])or(h==3 and(not az)and ae)then
aO[f]=a
bk=bk-1
end
end
end
end
end
if(not bC)and aB then
q[a][#q[a]+1],aB=cu
q[a][#q[a]][9]=bi
end
end
if#q[a]>0 then
q[a][#q[a]][9]=bi
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
function onDraw()aK=screen
local cf,cl,aa,ck=aK.drawTriangleF,aK.drawRectF,aK.setColor,aK.drawLine
cK={aE,aI}if bw then
e=c[24][c[19][8][aw-3]]Z,ay=e[1],e[2]C=R/ceil(Z*N)cj=C*1
for a=0,ceil(Z*N),1 do
m=(Z/2-a-1+F/90*Z)%Z
p=(m%1-1)*C
m=ag(m)*ay
for o=0,ay-1,1 do
Q=e[5+o+m]i=c[20][Q]aa(i[1],i[2],i[3])cl(a*C+p,o*C,cj,cj)end
end
for a=#q,1,-1 do
for o=1,#q[a]do
d=q[a][o]if d[9]or d[13]then
if d[9]then
P=q[a][o+1]else
P=d
end
e=c[21][d[4]]e=c[21][d[4]+(cb%e[5])*"number of wall mipmap levels"+c[19][12][d[11]]]v=d[12]T=t(v,0)f=d[1]p=P[1]ce=d[2-T]cz=P[2-T]g=d[3+T]ba=P[3+T]if not P[9]then p=p+1 end
aZ(d[7])cF=v*(d[2]-d[3])*e[3]/d[6]cw=v*(P[2]-P[3])*e[3]/P[6]cm=v>0 and t or w
bc=0
while g*v<ce*v and(bc<e[2]or not d[14])do
bM=cm(g+cF,ce)bu=cm(ba+cw,cz)Q=e[7+((T+d[8]//e[3])%e[2])+e[2]*((d[5])%e[1])]i=c[20][Q]if i then
aa(i[1]*s,i[2]*s,i[3]*s)cf(f,g,f,bM,p,bu)cf(f,g,p,ba,p,bu)end
g=bM
ba=bu
T=T+v
bc=bc+1
end
end
end
for b=1,2 do
_=cK[b]bH={}au,as,by=ai,-ai
for o,d in ar(_[a])do
au=t(au,d[2])as=w(as,d[3])by=d
e=c[22][d[4][b+2]]if e and not aU then
aZ(d[4][5])i=c[20][e[5]]aa(i[1]*s,i[2]*s,i[3]*s)ck(d[1],x-d[2],d[1],ag(x-d[3]-1))end
end
if by and aU then
j=by[4]cB=(j[b]-l[2])bd=cos(F)bh=sin(F)for ac=ag(au+x),ceil(as+x)do
ah=aD*cB/(x-ac)bT=bd*ah-l[1][1]cc=bh*ah-l[1][2]bR=-bh*ah+bT
bQ=bd*ah+cc
cG=bh*ah+bT
cs=-bd*ah+cc
cD=(cG-bR)/R
cy=(cs-bQ)/R
bH[ac]={cD,cy,bR,bQ}end
for o,d in ar(_[a])do
if j[b+2]~=0 then
f=d[1]if f%aU==0 then
aZ(j[5])n=j[b+2]e=c[22][n]e=c[22][n+(cb%e[4])]bX=A-(A-f)*N
au,as=ag(d[2]+x),ceil(d[3]+x)at=e[3]for ac=au,as do
aX=bH[ac]cx=(aX[3]+aX[1]*bX)//at
cO=(aX[4]+aX[2]*bX)//at
Q=6+(cO%e[1])+e[1]*(cx%e[2])i=c[20][e[Q]]if i then
aa(i[1]*s,i[2]*s,i[3]*s)ck(f,ai-ac,f+aU+1,ai-ac)end
end
end
end
end
end
end
for o=1,#aM[a]do
_=k[aM[a][o]]if _[6]~=0 then
aR=sub(_,l[1])r=_[20]if r>1 then
I=bq(aV(aR)-F)r=r*cos(I)if E(I)<90 then
m=A-aq(tan(I)/N*A)b_=aq((180+I+F-_[3]+be*4)/360*8)M=c[16][_[6]][1]if M~=0 and _[6]~=1 then
e=c[17][E(M)][b_%8+1]v=e<0 and-1 or 1
e=E(e)if e>0 then
e=c[23][e+c[19][12][t(bS(r//aT+1),8)]]Z,ay=e[1],e[2]C=A/(N*r)aS=C*bs
K=x+(l[2]-_[9])/r*aD
H=K-e[5]*aS
p=m-v*e[4]*C
C,aS=C*e[3],aS*e[3]aZ(_[8][5])s=M>0 and s or 1
cg=C
cM=cg*bs
cv=_[4]and c[15][_[4]][23]&8>0
for g=0,Z-1 do
m=p+g*C*v
if a<=aO[bn(aq(m),0,R-1)]then
for h=0,ay-1 do
Q=e[7+h+g*ay]if Q~=0 then
if cv then
br=br%50+1
aa(0,0,0,t(75*c[13][2][br],255))else
i=c[20][Q]aa(i[1]*s,i[2]*s,i[3]*s)end
cl(m,H+h*aS,cg,cM)end
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
be=be+1
end
