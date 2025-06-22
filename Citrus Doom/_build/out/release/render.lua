
A=math
v=A.max
q=A.min
D=A.abs
ak=A.floor
ceil=A.ceil
sqrt=A.sqrt
K=input.getNumber
bd=input.getBool
pi=A.pi/180
bo=false
M=true
aq=ipairs
bE=table.remove
bx=string
function bC(b,n)return b[1]*n[2]-b[2]*n[1]end
function sub(b,n)return{(b[1]-n[1]),(b[2]-n[2])}end
function bn(b)return((b+180)%360)-180 end
function sin(b)return A.sin(b*pi)end
function cos(b)return A.cos(b*pi)end
function tan(b)return A.tan(b*pi)end
function cO(b)return A.atan(b)/pi end
function aU(b)return A.atan(b[2],b[1])/pi end
function be(b,n,_)return q(v(n,b),_)end
function aD(b)return ak(b+.5)end
function aN(b,n)return sqrt(((b[1]-n[1])^2)+((b[2]-n[2])^2))end
function cl(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
function aZ(b)s=q(b/255+aX,1)^2.2 end
c={}bc=1
aC=3
aA=M
l={{0,0},0}F=0
R=288
B=144
ac=128
t=64
b_={}aK=500
bW=250
bD=1
ag=2^15
bg=3002
bb=0
aE=0
aF=0
bl=1.2
N=52
L=tan(N)ba=t*bl*R/ac/L
X=1
bI={}for a=-B,B do bI[a]=aU({1,a/B*L})end
function bf(a)if a<ag then
local w,bj=c[7][a]bj=0<bC({w[3],w[4]},sub(l[1],w))and 8 or 7
bf(w[bj])bf(w[15-bj])else
at[#at+1]=a-ag
end
end
function aH(a,b)if a<ag then
w=c[7][a]return aH(w[0<bC({w[3],w[4]},sub(b,w))and 8 or 7],b)else
return a-ag
end
end
function bh(b)w=c[5][c[6][b][2]]return aP[c[3][c[2][w[4]][w[5]+6]][6]]end
function onTick()bm=0
for o=1,3 do
if bd(9)and(not bq)or not c[21]then
bw=property.getText(bc)a=1
C=""
_=bx.sub(bw,a,a)while _~=""do
ao=bx.byte(_)if ao>64 then
C=(C..ao-65)+0
if X==1 then
cc=C
c[C]=c[C]or{}elseif X==2 then
cG=C
ar=0
elseif X==3 then
bs=C
else
if ar==0 then
ar=cG
bs=bs-1
by={}c[cc][#c[cc]+1]=by
end
by[#by+1]=C
ar=ar-1
X=v(ar,bs)>0 and X-1 or 0
end
X=X+1
C=""
else
C=C.._
end
a=a+1
_=bx.sub(bw,a,a)end
bc=bc+1
bq=bw==""
end
end
if bq then
if K(10)>0 then
aA=M
aC=K(10)end
if bD>0 and not aA then
ae={}ax[#ax+1]=ae
aw=6
_=K(aw)while _~=0 do
aj={}ae[#ae+1]=aj
for a=0,8 do
aj[a+1]=K(aw+a)end
aw=aw+9
_=K(aw)end
end
if bd(1)then
bP=0
cm=K(1)bD=K(3)aF=aF+1
cg=aF//10
if aA then
for a=1,10 do
c[a]=c[a+10*aC]end
k=c[1]cP={k[1][1],k[1][2]}for a=#k,1,-1 do
_=k[a]_=_[5]&(bg-3000)>0 or bE(k,a)end
aP=c[8]ax={}aC=aC+1
end
if K(2)>0 then
_=c[2][K(2)]if _ then
b=_[4]if b>0 then
if b==3008 then
aR=_[5]>0 and _[5]elseif b>3004 then
aK=v(aK+3*(_[4]-3006),1)bW=aK/2
elseif b>3000 then
bg=_[4]end
bP=K(2)if b<3000 and c[9][_[5]][7]==0 then
_[8]=1
end
end
end
end
if bd(3)and cm~=1 and cm~=3 and aX<1 then
aX=.1
aE=5
else
aE=aE-1
if aE<1 then
aX=0
end
end
for a=1,#ax do
ae=ax[a]for o=1,#ae do
aj=ae[o]_=aj[1]if _>ag then
_=aP[_-ag]for g=1,6 do
_[g]=aj[g+1]end
elseif _<0 then
ao=c[1][-_]if ao and c[15][ao[4]or 1][29]=="light amp index" then
aX=1
aE=4200
end
while-_>#k do
k[#k+1]=bo
end
bE(k,-_)else
k[_]=k[_]or{}_=k[_]for g=1,8 do
_[c[19][1][g]]=aj[g+1]end
_[15]=0
_[7]=aH(#c[7],_)_[8]=bh(_[7])end
end
end
ax={}for a=1,#c[6]do
b_[a]={}end
for a,_ in aq(k)do
if aA then
_[7]=aH(#c[7],_)_[8]=bh(_[7])_[9]=_[8][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
end
if _ and a>1 then
bz=0
for o,d in aq({1,2,9})do
_[d]=_[d]+_[d+10]bz=bz+_[d+10]end
if bz~=0 then
_[7]=aH(#c[7],_)_[8]=bh(_[7])end
_[15]=_[15]+1
_[20]=aN(_,l[1])O=c[16][_[6]]if O then
if O[5]>0 then
_[9]=_[8][1]end
if _[15]>=O[2]and O[2]~=-1 then
_[6]=O[4]_[15]=0
end
end
b_[_[7]][#b_[_[7]]+1]=a
end
end
_,aA=k[1]cF=q(aN(_,l[1])^2/4,16)l[1]={_[1],_[2]}F=_[3]l[2]=_[9]+41+cF*sin(aF*20)/4
at={}bf(#c[7])aY={}y={}aT={}aL={}W={}T={}aO={}bp=R
for a=0,R-1 do
aY[a],W[a],T[a]=#c[6]+2,t+1,-t
end
a=1
while a<=#at and bp>0 do
_=c[6][at[a]]aT[a]={}aL[a]={}y[a]={}aO[a]=b_[at[a]]table.sort(aO[a],function(b,n)return k[b][20]>k[n][20]end)for o=_[2],_[1]+_[2]-1 do
Y=c[5][o]I=c[2][Y[4]]bY,bX=c[4][Y[1]],c[4][Y[2]]aW,bR=sub(bY,l[1]),sub(bX,l[1])bH=aU(aW)G,aS=bn(bH-F),bn(aU(bR)-F)if D(G)<90 or D(aS)<90 then
am,af=be(G,-N,N),be(aS,-N,N)if D(G)>=90 or D(aS)>=90 then
cd=bC(aW,bR)if D(G)>=90 then
if cd>0 then am=-N else am=N end
else
if cd<0 then af=-N else af=N end
end
end
p,m=aD(tan(am)/L*B),aD(tan(af)/L*B)if p~=m then
r,ay=aN(l[1],bY),aN(l[1],bX)aI=Y[3]+90
ce=aI-bH
cx=r*sin(ce)aJ=(r*cos(ce))if G~=am then
r=aJ/cos(aI-(am+F))end
if aS~=af then
ay=aJ/cos(aI-(af+F))end
r,ay=r*cos(am),ay*cos(af)g=Y[5]+6
cM=(p>m)if cM and I[g]~=0 then
av=I[3]&4>0
if av then
S=aP[c[3][I[13-g]][6]]end
aa=c[3][I[g]]ct={aa[3],aa[4],aa[5]}j,bN,bT=aP[aa[6]]for i,d in aq(ct)do
ad=d>0
ab=M
if(ad or(i==3 and not(bN and bT)))and(i==3 or av)then
bU=0
cj=M
if i<3 then
cj=i~=1 or v(j[4],S[4])~=0
E,z=j[3-i],(i==1 and v or q)(S[3-i],j[i])ab=(E<z)==(i==2)and E~=z and j~=S
ad=ab
E,z=q(E,z),v(E,z)if ab then
if i==1 then
bN=M
else
bT=M
bU=I[3]&16>0 and v(j[2],S[2])-z or 0
end
end
else
if av then
E,z=q(v(j[1],S[1]),j[2]),v(q(j[2],S[2]),j[1])ab=j~=S
else
E,z=j[1],j[2]end
end
E,z=E-l[2],z-l[2]c_,cn=E*ba,z*ba
if(ab or ad)and cj then
br=Y[6]-aa[1]if I[4]==48 then
br=br-aF
end
cv,cJ=c_/r,cn/r
cK,cB=c_/ay,cn/ay
bS,aB=0
if ad then
_=c[21][d][4]if(Y[4]==bP or bg==I[4]or I[8])and _>0 then
d=_
end
au=c[21][d][3]u=1
if(i==3 and I[3]&16>0)or(i==1 and I[3]&8==0)then
u=-1
end
end
for g=p,m,-1 do
cN=bI[g]bk=(aI-F)-cN
f,ca=B-g
if f>=0 and f<=R-1 then
if a<aY[f]then
aQ=(g-p)/(m-p)J,H=(cv*(1-aQ)+cK*aQ),(cJ*(1-aQ)+cB*aQ)if D(H+J)-(H-J)<ac then
if ad then
if J~=H then
ca=M
co=aJ*tan(bk)an=cl(q(((D(co)+D(aJ))//bW)+1,16))bQ=ak((v(co-cx,0)-br)/(au*an))bG=bQ*an
bK={f,t-J,t-H,d,bQ,z-E,j[5],aa[2]+bU,M,au*an,an,u,not aB,i==3 and av}if bG>bS or(not aB)or g==m then
bS=bG-1+an
aB=M
y[a][#y[a]+1]=bK
end
bM=bK
end
end
if ab then
if i~=2 then
if H<W[f]then
aL[a][#aL[a]+1]={f,v(H,T[f]),W[f],j}end
if i==3 then V=H else V=J end
if W[f]>V then W[f]=V end
end
if i~=1 then
if J>T[f]then
aT[a][#aT[a]+1]={f,T[f],q(J,W[f]),j}end
if i==3 then V=J else V=H end
if T[f]<V then T[f]=V end
end
if(W[f]<=T[f])or(i==3 and(not av)and ad)then
aY[f]=a
bp=bp-1
end
end
end
end
end
if(not ca)and aB then
bM[9]=bo
y[a][#y[a]+1],aB=bM
end
end
if#y[a]>0 then
y[a][#y[a]][9]=bo
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
function onDraw()aM=screen
local bZ,ch,al,bJ=aM.drawTriangleF,aM.drawRectF,aM.setColor,aM.drawLine
cD={aT,aL}if bq then
e=c[24][c[19][8][aC-3]]U,ap=e[1],e[2]x=R/ceil(U*L)for a=0,ceil(U*L),1 do
p=(U/2-a-1+F/90*U)%U
m=(p%1-1)*x
p=ak(p)*ap
for o=0,ap-1,1 do
Q=e[5+o+p]h=c[20][Q]al(h[1],h[2],h[3])ch(a*x+m,o*x,x,x)end
end
for a=#y,1,-1 do
for o=1,#y[a]do
d=y[a][o]if d[9]or d[13]then
if d[9]then
P=y[a][o+1]else
P=d
end
e=c[21][d[4]]e=c[21][d[4]+(cg%e[5])*"number of wall mipmap levels"+c[19][12][d[11]]]u=d[12]Z=q(u,0)f=d[1]m=P[1]cf=d[2-Z]cy=P[2-Z]g=d[3+Z]bi=P[3+Z]if not P[9]then m=m+1 end
aZ(d[7])cw=u*(d[2]-d[3])*e[3]/d[6]cu=u*(P[2]-P[3])*e[3]/P[6]bL=u>0 and q or v
bv=0
while g*u<cf*u and(bv<e[2]or not d[14])do
bF=bL(g+cw,cf)bA=bL(bi+cu,cy)Q=e[7+((Z+d[8]//e[3])%e[2])+e[2]*((d[5])%e[1])]h=c[20][Q]if h then
al(h[1]*s,h[2]*s,h[3]*s)bZ(f,g,f,bF,m,bA)bZ(f,g,m,bi,m,bA)end
g=bF
bi=bA
Z=Z+u
bv=bv+1
end
end
end
for b=1,2 do
_=cD[b]ci={}as,az,bB=ac,-ac
for o,d in aq(_[a])do
as=q(as,d[2])az=v(az,d[3])bB=d
e=c[22][d[4][b+2]]if e and not aR then
aZ(d[4][5])h=c[20][e[5]]al(h[1]*s,h[2]*s,h[3]*s)bJ(d[1],t-d[2],d[1],ak(t-d[3]-1))end
end
if bB and aR then
j=bB[4]cE=(j[b]-l[2])bu=cos(F)bt=sin(F)for ah=ak(as+t),ceil(az+t)do
ai=ba*cE/(t-ah)ck=bu*ai-l[1][1]bV=bt*ai-l[1][2]cb=-bt*ai+ck
cq=bu*ai+bV
cH=bt*ai+ck
cI=-bu*ai+bV
cL=(cH-cb)/R
cA=(cI-cq)/R
ci[ah]={cL,cA,cb,cq}end
for o,d in aq(_[a])do
if j[b+2]~=0 then
f=d[1]if f%aR==0 then
aZ(j[5])n=j[b+2]e=c[22][n]e=c[22][n+(cg%e[4])]cp=B-(B-f)*L
as,az=ak(d[2]+t),ceil(d[3]+t)au=e[3]for ah=as,az do
aG=ci[ah]cr=(aG[3]+aG[1]*cp)//au
cz=(aG[4]+aG[2]*cp)//au
Q=6+(cz%e[1])+e[1]*(cr%e[2])h=c[20][e[Q]]if h then
al(h[1]*s,h[2]*s,h[3]*s)bJ(f,ac-ah,f+aR+1,ac-ah)end
end
end
end
end
end
end
for o=1,#aO[a]do
_=k[aO[a][o]]if _[6]~=0 then
aW=sub(_,l[1])r=_[20]if r>1 then
G=bn(aU(aW)-F)r=r*cos(G)if D(G)<90 then
p=B-aD(tan(G)/L*B)bk=aD((180+G+F-_[3]+bm*4)/360*8)O=c[16][_[6]][1]if O~=0 and _[6]~=1 then
e=c[17][D(O)][bk%8+1]u=e<0 and-1 or 1
e=D(e)if e>0 then
e=c[23][e+c[19][12][q(cl(r//aK+1),8)]]U,ap=e[1],e[2]x=B/(L*r)aV=x*bl
J=t+(l[2]-_[9])/r*ba
H=J-e[5]*aV
m=p-u*e[4]*x
x,aV=x*e[3],aV*e[3]aZ(_[8][5])s=O>0 and s or 1
bO=x
cs=bO*bl
cC=c[15][_[4]or 1][23]&8>0
for g=0,U-1 do
p=m+g*x*u
if a<=aY[be(aD(p),0,R-1)]then
for i=0,ap-1 do
Q=e[7+i+g*ap]if Q~=0 then
if cC then
bb=bb%50+1
al(0,0,0,q(75*c[13][2][bb],255))else
h=c[20][Q]al(h[1]*s,h[2]*s,h[3]*s)end
ch(p,H+i*aV,bO,cs)end
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
