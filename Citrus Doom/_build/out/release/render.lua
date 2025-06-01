cV=""

S=180
bG=screen
aQ=ipairs
bV=table
cb=input
w=math
C=w.max
v=w.min
A=w.abs
ae=w.floor
ceil=w.ceil
sqrt=w.sqrt
G=cb.getNumber
bn=cb.getBool
pi=w.pi
O=false
Q=true
bd=string
function bi(b,n)return b[1]*n[2]-b[2]*n[1]end
function sub(b,n)return{(b[1]-n[1]),(b[2]-n[2])}end
function bk(b)return((b+S)%360)-S end
function sin(b)return w.sin(b/S*pi)end
function cos(b)return w.cos(b/S*pi)end
function tan(b)return w.tan(b/S*pi)end
function cS(b)return w.atan(b)*S/pi end
function aF(b)return w.atan(b[2],b[1])*S/pi end
function bs(b,n,_)return v(C(n,b),_)end
function aB(b)return ae(b+.5)end
function aH(b,n)return sqrt(((b[1]-n[1])^2)+((b[2]-n[2])^2))end
function bX(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
function aP(b)p=v(b/255+bN,1)^2.2 end
c={}by=1
al=3
aI=O
aC=Q
f={{0,0},0,0}K=288
D=K//2
ad=128
t=ad//2
aY={}aR=400
c_=200
cf=100
cU=0
aA={}aW=32768
bR=3002
bl=0
aO=0
am=0
bm=1.2
M=52
L=tan(M)aS=t*bm*K/ad/L
Y=1
bC={}for a=-D,D do bC[a]=aF({1,a/D*L})end
function bp(a)if a<aW then
local s,bh=c[7][a]bh=0<bi({s[3],s[4]},sub(f[1],s))and 8 or 7
bp(s[bh])bp(s[15-bh])else
ax[#ax+1]=a-aW
end
end
function aU(a,b)if a<aW then
s=c[7][a]return aU(s[0<bi({s[3],s[4]},sub(b,s))and 8 or 7],b)else
return a-aW
end
end
function be(b)s=c[5][c[6][b][2]]return aD[c[3][c[2][s[4]][s[5]+6]][6]]end
function onTick()bw=0
for l=1,3 do
if bn(9)and(not aI)or not c[21]then
bx=property.getText(by)a=1
y=cV
_=bd.sub(bx,a,a)while _~=cVdo
bT=bd.byte(_)if bT>64then
y=(y..bT-65)+0
if Y==1then
cm=y
c[y]=c[y]or{}elseif Y==2then
cM=y
av=0
elseif Y==3then
bb=y
else
if av==0then
av=cM
bb=bb-1
bo={}c[cm][#c[cm]+1]=bo
end
bo[#bo+1]=y
av=av-1
Y=C(av,bb)>0 and Y-1 or 0
end
Y=Y+1
y=cV
else
y=y.._
end
a=a+1
_=bd.sub(bx,a,a)end
by=by+1
aI=bx==cV
end
end
if aI then
if G(9)>0 then
aC=Q
al=G(9)end
if cf>0 and not aC then
ah={}aA[#aA+1]=ah
au=5
_=G(au)while _~=0 do
aj={}ah[#ah+1]=aj
for a=0,8 do
aj[a+1]=G(au+a)end
au=au+9
_=G(au)end
end
if bn(1)then
bJ=0
bv=G(1)cf=G(3)am=am+1
bZ=am//10
if aC then
for a=1,10 do
c[a]=c[a+10*al]end
k=c[1]bW={k[1][1],k[1][2]}aD=c[8]al=al+1
end
if G(2)>0 then
_=c[2][G(2)]if _ then
b=_[4]if b>0 then
if b==3008 then
ct=_[5]==1
elseif b>3004 then
aR=C(aR+3*(_[4]-3006),1)c_=aR/2
elseif b>3000 then
bR=_[4]end
bJ=G(2)if b<3000 and c[9][_[5]][7]==0then
_[8]=1
end
end
end
end
if bn(3)and bv~=1 and bv~=3 then
bN=.1
aO=bv==5 and 5 or 3
else
aO=aO-1
if aO<1then
bN=0
end
end
for a=1,#aA do
ah=aA[a]for l=1,#ah do
aj=ah[l]_=aj[1]if _>(2^15)then
_=aD[_-(2^15)]for h=1,6 do
_[h]=aj[h+1]end
elseif _<0 then
while-_>#k do
k[#k+1]=O
end
bV.remove(k,-_)else
if not k[_]then
k[_]={}end
_=k[_]for h=1,8 do
_[c[19][1][h]]=aj[h+1]end
_[15]=0
_[7]=aU(#c[7],_)_[8]=be(_[7])end
end
end
aA={}for a=1,#c[6]do
aY[a]={}end
for a=1,#k do
_=k[a]if _ then
if aC then
_[7]=aU(#c[7],_)_[8]=be(_[7])_[9]=_[8][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
end
bz=0
for l,d in aQ({1,2,9})do
_[d]=_[d]+_[d+10]bz=bz+_[d+10]end
if bz~=0then
_[7]=aU(#c[7],_)_[8]=be(_[7])end
_[15]=_[15]+1
_[20]=aH(_,f[1])N=c[16][_[6]]if N~=nil then
if N[5]>0 then
_[9]=_[8][1]end
if _[15]>=N[2]and N[2]~=-1 then
_[6]=N[4]_[15]=0
end
end
aY[_[7]][#aY[_[7]]+1]=a
end
end
aC=O
_=k[1]f[1]={_[1],_[2]}f[3]=_[3]cK=v(aH(f[1],bW)^2/4,16)bW={_[1],_[2]}f[2]=_[9]+41+cK*sin(am*20)/4
ax={}bp(#c[7])aK={}r={}aG={}aZ={}V={}ab={}aX={}bf=K
for a=0,K-1 do
aK[a],V[a],ab[a]=#c[6]+2,t+1,-t
end
a=1
while a<=#ax and bf>0 do
_=c[6][ax[a]]aG[a]={}aZ[a]={}r[a]={}aX[a]=aY[ax[a]]bV.sort(aX[a],function(b,n)return k[b][20]>k[n][20]end)for l=_[2],_[1]+_[2]-1 do
X=c[5][l]B=c[2][X[4]]cj,bE=c[4][X[1]],c[4][X[2]]aV,cl=sub(cj,f[1]),sub(bE,f[1])bQ=aF(aV)J,b_=bk(bQ-f[3]),bk(aF(cl)-f[3])if A(J)<90 or A(b_)<90 then
af,ac=bs(J,-M,M),bs(b_,-M,M)if A(J)>=90 or A(b_)>=90 then
bD=bi(aV,cl)if A(J)>=90 then
if bD>0 then af=-M else af=M end
else
if bD<0 then ac=-M else ac=M end
end
end
m,o=aB(tan(af)/L*D),aB(tan(ac)/L*D)if m~=o then
q,aq=aH(f[1],cj),aH(f[1],bE)aN=X[3]+90
ch=aN-bQ
cJ=q*sin(ch)aT=(q*cos(ch))if J~=af then
q=aT/cos(aN-(af+f[3]))end
if b_~=ac then
aq=aT/cos(aN-(ac+f[3]))end
q,aq=q*cos(af),aq*cos(ac)h=X[5]+6
cy=(m>o)if cy and B[h]~=0 then
as=B[3]&4>0
if as then
T,U=aD[c[3][B[6]][6]],aD[c[3][B[7]][6]]end
ai=c[3][B[h]]cw={ai[3],ai[4],ai[5]}I,bU,bO=aD[ai[6]]for j,d in aQ(cw)do
ar=d>0
aE=Q
if(ar or(j==3 and not(bU and bO)))and(j==3 or as)then
bH=O
bK=0
if j<3 then
bH=j==1 and C(T[4],U[4])==0
z,x=T[3-j],U[3-j]aE=(z<x)~=(j==2)~=(h==6)and z~=x and T~=U
z,x=v(z,x),C(z,x)if aE then
if j==1then
bU=Q
else
bO=Q
bK=B[3]&16>0 and C(T[2],U[2])-x or 0
end
end
else
if as then
z,x=C(T[1],U[1]),v(T[2],U[2])aE=T~=U
else
z,x=I[1],I[2]end
end
z,x=z-f[2],x-f[2]bI,ck=z*aS,x*aS
if(aE or ar)and not bH then
bc=X[6]-ai[1]if B[4]==48 then
bc=bc-am
end
cF,cu=bI/q,ck/q
cP,cC=bI/aq,ck/aq
cp=0
ao=O
if ar then
_=c[21][d][4]if(X[4]==bJ or bR==B[4]or B[8])and _>0then
d=_
end
ay=c[21][d][3]u=1
if(j==3 and B[3]&16>0)or(j==1 and B[3]&8==0)then
u=-1
end
end
for h=m,o,-1 do
cH=bC[h]bq=(aN-f[3])-cH
g=D-h
bS=O
if g>=0 and g<=K-1 then
if a<aK[g]then
aM=(h-m)/(o-m)F,H=(cF*(1-aM)+cP*aM),(cu*(1-aM)+cC*aM)if A(H+F)-(H-F)<ad then
if ar then
if F~=H then
bS=Q
bP=aT*tan(bq)at=bX(v(((A(bP)+A(aT))//c_)+1,16))cs=ae((C(bP-cJ,0)-bc)/(ay*at))bM=cs*at
co={g,t-F,t-H,d,cs,x-z,I[5],ai[2]+bK,Q,ay*at,at,u,not ao,j==3 and as}if bM>cp or(not ao)or h==o then
cp=bM-1+at
ao=Q
r[a][#r[a]+1]=co
end
cv=co
end
end
if aE then
if j~=2 then
if H<V[g]then
aZ[a][#aZ[a]+1]={g,C(H,ab[g]),V[g],I}end
if j==3then W=H else W=F end
if V[g]>W then V[g]=W end
end
if j~=1 then
if F>ab[g]then
aG[a][#aG[a]+1]={g,ab[g],v(F,V[g]),I}end
if j==3then W=F else W=H end
if ab[g]<W then ab[g]=W end
end
if(V[g]<=ab[g])or(j==3 and(not as)and ar)then
aK[g]=a
bf=bf-1
end
end
end
end
end
if(not bS)and ao then
ao=O
r[a][#r[a]+1]=cv
r[a][#r[a]][9]=O
end
end
if#r[a]>0 then
r[a][#r[a]][9]=O
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
function onDraw()aL=bG
local cd,bg,ag,cT=aL.drawTriangleF,aL.drawRectF,aL.setColor,aL.drawText
cL={aG,aZ}if aI then
e=c[24][c[19][8][al-3]]aa,az=e[1],e[2]E=K/ceil(aa*L)ca=E*1
for a=0,ceil(aa*L),1 do
m=(aa/2-a-1+f[3]/90*aa)%aa
o=(m%1-1)*E
m=ae(m)*az
for l=0,az-1,1 do
P=e[5+l+m]i=c[20][P]ag(i[1],i[2],i[3])bg(a*E+o,l*E,ca,ca)end
end
for a=#r,1,-1 do
for l=1,#r[a]do
d=r[a][l]if d[9]or d[13]then
if d[9]then
R=r[a][l+1]else
R=d
end
e=c[21][d[4]]e=c[21][d[4]+(bZ%e[5])*c[19][3][2]+c[19][12][d[11]]]u=d[12]Z=v(u,0)g=d[1]o=R[1]cg=d[2-Z]cQ=R[2-Z]h=d[3+Z]bj=R[3+Z]if not R[9]then o=o+1 end
aP(d[7])cB=u*(d[2]-d[3])*e[3]/d[6]cN=u*(R[2]-R[3])*e[3]/R[6]ci=u>0 and v or C
bB=0
while h*u<cg*u and(bB<e[2]or not d[14])do
bL=ci(h+cB,cg)br=ci(bj+cN,cQ)P=e[7+((Z+d[8]//e[3])%e[2])+e[2]*((d[5])%e[1])]i=c[20][P]if i then
ag(i[1]*p,i[2]*p,i[3]*p)cd(g,h,g,bL,o,br)cd(g,h,o,bj,o,br)end
h=bL
bj=br
Z=Z+u
bB=bB+1
end
end
end
for b=1,2 do
_=cL[b]cc={}aw,ap,bu=ad,-ad
for l,d in aQ(_[a])do
aw=v(aw,d[2])ap=C(ap,d[3])bu=d
e=c[22][d[4][b+2]]if e and not ct then
aP(d[4][5])i=c[20][e[5]]ag(i[1]*p,i[2]*p,i[3]*p)bG.drawLine(d[1],t-d[2],d[1],ae(t-d[3]-1))end
end
if bu and ct then
I=bu[4]cE=(I[b]-f[2])bA=cos(f[3])bt=sin(f[3])for an=ae(aw+t),ceil(ap+t)do
ak=aS*cE/(t-an)cr=bA*ak-f[1][1]cn=bt*ak-f[1][2]bY=-bt*ak+cr
ce=bA*ak+cn
cz=bt*ak+cr
cA=-bA*ak+cn
cD=(cz-bY)/K
cI=(cA-ce)/K
cc[an]={cD,cI,bY,ce}end
for l,d in aQ(_[a])do
if I[b+2]~=0 then
g=d[1]aP(I[5])n=I[b+2]e=c[22][n]e=c[22][n+(bZ%e[4])]cq=D-(D-g)*L
aw,ap=ae(d[2]+t),ceil(d[3]+t)ay=e[3]for an=aw,ap do
aJ=cc[an]cG=(aJ[3]+aJ[1]*cq)//ay
cR=(aJ[4]+aJ[2]*cq)//ay
P=6+(cR%e[1])+e[1]*(cG%e[2])i=c[20][e[P]]if i then
ag(i[1]*p,i[2]*p,i[3]*p)bg(g,-an+ad,1,1)end
end
end
end
end
end
for l=1,#aX[a]do
_=k[aX[a][l]]if _[6]~=0 then
aV=sub(_,f[1])q=_[20]if q>1 then
J=bk(aF(aV)-f[3])q=q*cos(J)if A(J)<90 then
m=D-aB(tan(J)/L*D)bq=aB((S+J+f[3]-_[3]+bw*4)/360*8)N=c[16][_[6]][1]if N~=0 and _[6]~=1 then
e=c[17][A(N)][bq%8+1]u=e<0 and-1 or 1
e=A(e)if e>0 then
e=c[23][e+c[19][12][v(bX(q//aR+1),8)]]aa,az=e[1],e[2]E=D/(L*q)ba=E*bm
F=t+(f[2]-_[9])/q*aS
H=F-e[5]*ba
o=m-u*e[4]*E
E,ba=E*e[3],ba*e[3]aP(_[8][5])p=N>0 and p or 1
bF=E
cO=bF*bm
cx=_[4]and c[15][_[4]][23]&8>0
for h=0,aa-1 do
m=o+h*E*u
if a<=aK[bs(aB(m),0,K-1)]then
for j=0,az-1 do
P=e[7+j+h*az]if P~=0 then
if cx then
bl=bl%50+1
ag(0,0,0,v(75*c[13][2][bl],255))else
i=c[20][P]ag(i[1]*p,i[2]*p,i[3]*p)end
bg(m,H+j*ba,bF,cO)end
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
bw=bw+1
end
