
y=math
v=y.max
q=y.min
D=y.abs
ag=y.floor
ceil=y.ceil
sqrt=y.sqrt
G=input.getNumber
bu=input.getBool
pi=y.pi/180
bl=false
P=true
at=ipairs
bK=table.remove
bf=string
function bs(b,n)return b[1]*n[2]-b[2]*n[1]end
function sub(b,n)return{(b[1]-n[1]),(b[2]-n[2])}end
function bn(b)return((b+180)%360)-180 end
function sin(b)return y.sin(b*pi)end
function cos(b)return y.cos(b*pi)end
function tan(b)return y.tan(b*pi)end
function cR(b)return y.atan(b)/pi end
function aF(b)return y.atan(b[2],b[1])/pi end
function bA(b,n,_)return q(v(n,b),_)end
function az(b)return ag(b+.5)end
function aM(b,n)return sqrt(((b[1]-n[1])^2)+((b[2]-n[2])^2))end
function ce(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
function aZ(b)s=q(b/255+bX,1)^2.2 end
c={}bh=1
ap=3
aw=P
l={{0,0},0}F=0
R=288
A=144
af=128
u=64
aD={}aL=400
bB=200
ci=1
cS=0
aE=2^15
bp=3002
bv=0
aR=0
av=0
bz=1.2
N=52
M=tan(N)aS=u*bz*R/af/M
W=1
bC={}for a=-A,A do bC[a]=aF({1,a/A*M})end
function bg(a)if a<aE then
local x,by=c[7][a]by=0<bs({x[3],x[4]},sub(l[1],x))and 8 or 7
bg(x[by])bg(x[15-by])else
an[#an+1]=a-aE
end
end
function aK(a,b)if a<aE then
x=c[7][a]return aK(x[0<bs({x[3],x[4]},sub(b,x))and 8 or 7],b)else
return a-aE
end
end
function bq(b)x=c[5][c[6][b][2]]return aI[c[3][c[2][x[4]][x[5]+6]][6]]end
function onTick()bi=0
for m=1,3 do
if bu(9)and(not bj)or not c[21]then
b_=property.getText(bh)a=1
B=""
_=bf.sub(b_,a,a)while _~=""do
bG=bf.byte(_)if bG>64 then
B=(B..bG-65)+0
if W==1 then
bU=B
c[B]=c[B]or{}elseif W==2 then
cI=B
ao=0
elseif W==3 then
br=B
else
if ao==0 then
ao=cI
br=br-1
bx={}c[bU][#c[bU]+1]=bx
end
bx[#bx+1]=B
ao=ao-1
W=v(ao,br)>0 and W-1 or 0
end
W=W+1
B=""
else
B=B.._
end
a=a+1
_=bf.sub(b_,a,a)end
bh=bh+1
bj=b_==""
end
end
if bj then
if G(10)>0 then
aw=P
ap=G(10)end
if ci>0 and not aw then
ac={}au[#au+1]=ac
aC=6
_=G(aC)while _~=0 do
ae={}ac[#ac+1]=ae
for a=0,8 do
ae[a+1]=G(aC+a)end
aC=aC+9
_=G(aC)end
end
if bu(1)then
cn=0
bN=G(1)ci=G(3)av=av+1
co=av//10
if aw then
for a=1,10 do
c[a]=c[a+10*ap]end
k=c[1]cQ={k[1][1],k[1][2]}for a=#k,1,-1 do
_=k[a]_=_[5]&(bp-3000)>0 or bK(k,a)end
aI=c[8]au={}ap=ap+1
end
if G(2)>0 then
_=c[2][G(2)]if _ then
b=_[4]if b>0 then
if b==3008 then
aP=_[5]>0 and _[5]elseif b>3004 then
aL=v(aL+3*(_[4]-3006),1)bB=aL/2
elseif b>3000 then
bp=_[4]end
cn=G(2)if b<3000 and c[9][_[5]][7]==0 then
_[8]=1
end
end
end
end
if bu(3)and bN~=1 and bN~=3 then
bX=.1
aR=5
else
aR=aR-1
if aR<1 then
bX=0
end
end
for a=1,#au do
ac=au[a]for m=1,#ac do
ae=ac[m]_=ae[1]if _>(2^15)then
_=aI[_-(2^15)]for g=1,6 do
_[g]=ae[g+1]end
elseif _<0 then
while-_>#k do
k[#k+1]=bl
end
bK(k,-_)else
if not k[_]then
k[_]={}end
_=k[_]for g=1,8 do
_[c[19][1][g]]=ae[g+1]end
_[15]=0
_[7]=aK(#c[7],_)_[8]=bq(_[7])end
end
end
au={}for a=1,#c[6]do
aD[a]={}end
for a,_ in at(k)do
if aw then
_[7]=aK(#c[7],_)_[8]=bq(_[7])_[9]=_[8][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
end
if _ and a>1 then
bd=0
for m,d in at({1,2,9})do
_[d]=_[d]+_[d+10]bd=bd+_[d+10]end
if bd~=0 then
_[7]=aK(#c[7],_)_[8]=bq(_[7])end
_[15]=_[15]+1
_[20]=aM(_,l[1])L=c[16][_[6]]if L~=nil then
if L[5]>0 then
_[9]=_[8][1]end
if _[15]>=L[2]and L[2]~=-1 then
_[6]=L[4]_[15]=0
end
end
aD[_[7]][#aD[_[7]]+1]=a
end
end
_,aw=k[1]cN=q(aM(_,l[1])^2/4,16)l[1]={_[1],_[2]}F=_[3]cP=_[9]+1
l[2]=_[9]+41+cN*sin(av*20)/4
an={}bg(#c[7])aH={}t={}aQ={}aG={}S={}V={}aY={}bm=R
for a=0,R-1 do
aH[a],S[a],V[a]=#c[6]+2,u+1,-u
end
a=1
while a<=#an and bm>0 do
_=c[6][an[a]]aQ[a]={}aG[a]={}t[a]={}aY[a]=aD[an[a]]table.sort(aY[a],function(b,n)return k[b][20]>k[n][20]end)for m=_[2],_[1]+_[2]-1 do
Z=c[5][m]I=c[2][Z[4]]c_,bZ=c[4][Z[1]],c[4][Z[2]]aO,cj=sub(c_,l[1]),sub(bZ,l[1])bD=aF(aO)J,aN=bn(bD-F),bn(aF(cj)-F)if D(J)<90 or D(aN)<90 then
al,ab=bA(J,-N,N),bA(aN,-N,N)if D(J)>=90 or D(aN)>=90 then
bW=bs(aO,cj)if D(J)>=90 then
if bW>0 then al=-N else al=N end
else
if bW<0 then ab=-N else ab=N end
end
end
p,o=az(tan(al)/M*A),az(tan(ab)/M*A)if p~=o then
r,aq=aM(l[1],c_),aM(l[1],bZ)aJ=Z[3]+90
bJ=aJ-bD
cO=r*sin(bJ)aT=(r*cos(bJ))if J~=al then
r=aT/cos(aJ-(al+F))end
if aN~=ab then
aq=aT/cos(aJ-(ab+F))end
r,aq=r*cos(al),aq*cos(ab)g=Z[5]+6
cH=(p>o)if cH and I[g]~=0 then
aB=I[3]&4>0
if aB then
T=aI[c[3][I[13-g]][6]]end
ai=c[3][I[g]]cy={ai[3],ai[4],ai[5]}j,bT,bY=aI[ai[6]]for i,d in at(cy)do
aa=d>0
aj=P
if(aa or(i==3 and not(bT and bY)))and(i==3 or aB)then
bF,ck=0
if i<3 then
ck=i==1 and v(j[4],T[4])==0
E,z=j[3-i],(i==1 and v or q)(T[3-i],j[i])aj=(E<z)==(i==2)and E~=z and j~=T
aa=aj
E,z=q(E,z),v(E,z)if aj then
if i==1 then
bT=P
else
bY=P
bF=I[3]&16>0 and v(j[2],T[2])-z or 0
end
end
else
if aB then
E,z=q(v(j[1],T[1]),j[2]),v(q(j[2],T[2]),j[1])aj=j~=T
else
E,z=j[1],j[2]end
end
E,z=E-l[2],z-l[2]bQ,bM=E*aS,z*aS
if(aj or aa)and not ck then
ba=Z[6]-ai[1]if I[4]==48 then
ba=ba-av
end
cC,cL=bQ/r,bM/r
cF,cB=bQ/aq,bM/aq
cb,ax=0
if aa then
_=c[21][d][4]if(Z[4]==cn or bp==I[4]or I[8])and _>0 then
d=_
end
ar=c[21][d][3]w=1
if(i==3 and I[3]&16>0)or(i==1 and I[3]&8==0)then
w=-1
end
end
for g=p,o,-1 do
cD=bC[g]bo=(aJ-F)-cD
f,bP=A-g
if f>=0 and f<=R-1 then
if a<aH[f]then
aV=(g-p)/(o-p)K,H=(cC*(1-aV)+cF*aV),(cL*(1-aV)+cB*aV)if D(H+K)-(H-K)<af then
if aa then
if K~=H then
bP=P
bL=aT*tan(bo)am=ce(q(((D(bL)+D(aT))//bB)+1,16))cq=ag((v(bL-cO,0)-ba)/(ar*am))cc=cq*am
bH={f,u-K,u-H,d,cq,z-E,j[5],ai[2]+bF,P,ar*am,am,w,not ax,i==3 and aB}if cc>cb or(not ax)or g==o then
cb=cc-1+am
ax=P
t[a][#t[a]+1]=bH
end
cu=bH
end
end
if aj then
if i~=2 then
if H<S[f]then
aG[a][#aG[a]+1]={f,v(H,V[f]),S[f],j}end
if i==3 then X=H else X=K end
if S[f]>X then S[f]=X end
end
if i~=1 then
if K>V[f]then
aQ[a][#aQ[a]+1]={f,V[f],q(K,S[f]),j}end
if i==3 then X=K else X=H end
if V[f]<X then V[f]=X end
end
if(S[f]<=V[f])or(i==3 and(not aB)and aa)then
aH[f]=a
bm=bm-1
end
end
end
end
end
if(not bP)and ax then
t[a][#t[a]+1],ax=cu
t[a][#t[a]][9]=bl
end
end
if#t[a]>0 then
t[a][#t[a]][9]=bl
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
function onDraw()aW=screen
local bS,ca,ak,ch=aW.drawTriangleF,aW.drawRectF,aW.setColor,aW.drawLine
ct={aQ,aG}if bj then
e=c[24][c[19][8][ap-3]]U,as=e[1],e[2]C=R/ceil(U*M)cp=C*1
for a=0,ceil(U*M),1 do
p=(U/2-a-1+F/90*U)%U
o=(p%1-1)*C
p=ag(p)*as
for m=0,as-1,1 do
O=e[5+m+p]h=c[20][O]ak(h[1],h[2],h[3])ca(a*C+o,m*C,cp,cp)end
end
for a=#t,1,-1 do
for m=1,#t[a]do
d=t[a][m]if d[9]or d[13]then
if d[9]then
Q=t[a][m+1]else
Q=d
end
e=c[21][d[4]]e=c[21][d[4]+(co%e[5])*"number of wall mipmap levels"+c[19][12][d[11]]]w=d[12]Y=q(w,0)f=d[1]o=Q[1]cf=d[2-Y]cw=Q[2-Y]g=d[3+Y]bc=Q[3+Y]if not Q[9]then o=o+1 end
aZ(d[7])cz=w*(d[2]-d[3])*e[3]/d[6]cs=w*(Q[2]-Q[3])*e[3]/Q[6]cm=w>0 and q or v
bw=0
while g*w<cf*w and(bw<e[2]or not d[14])do
cl=cm(g+cz,cf)bk=cm(bc+cs,cw)O=e[7+((Y+d[8]//e[3])%e[2])+e[2]*((d[5])%e[1])]h=c[20][O]if h then
ak(h[1]*s,h[2]*s,h[3]*s)bS(f,g,f,cl,o,bk)bS(f,g,o,bc,o,bk)end
g=cl
bc=bk
Y=Y+w
bw=bw+1
end
end
end
for b=1,2 do
_=ct[b]bO={}ay,aA,bb=af,-af
for m,d in at(_[a])do
ay=q(ay,d[2])aA=v(aA,d[3])bb=d
e=c[22][d[4][b+2]]if e and not aP then
aZ(d[4][5])h=c[20][e[5]]ak(h[1]*s,h[2]*s,h[3]*s)ch(d[1],u-d[2],d[1],ag(u-d[3]-1))end
end
if bb and aP then
j=bb[4]cE=(j[b]-l[2])bt=cos(F)be=sin(F)for ad=ag(ay+u),ceil(aA+u)do
ah=aS*cE/(u-ad)bV=bt*ah-l[1][1]bR=be*ah-l[1][2]cg=-be*ah+bV
cd=bt*ah+bR
cv=be*ah+bV
cG=-bt*ah+bR
cM=(cv-cg)/R
cK=(cG-cd)/R
bO[ad]={cM,cK,cg,cd}end
for m,d in at(_[a])do
if j[b+2]~=0 then
f=d[1]if f%aP==0 then
aZ(j[5])n=j[b+2]e=c[22][n]e=c[22][n+(co%e[4])]bI=A-(A-f)*M
ay,aA=ag(d[2]+u),ceil(d[3]+u)ar=e[3]for ad=ay,aA do
aU=bO[ad]cJ=(aU[3]+aU[1]*bI)//ar
cx=(aU[4]+aU[2]*bI)//ar
O=6+(cx%e[1])+e[1]*(cJ%e[2])h=c[20][e[O]]if h then
ak(h[1]*s,h[2]*s,h[3]*s)ch(f,af-ad,f+aP+1,af-ad)end
end
end
end
end
end
end
for m=1,#aY[a]do
_=k[aY[a][m]]if _[6]~=0 then
aO=sub(_,l[1])r=_[20]if r>1 then
J=bn(aF(aO)-F)r=r*cos(J)if D(J)<90 then
p=A-az(tan(J)/M*A)bo=az((180+J+F-_[3]+bi*4)/360*8)L=c[16][_[6]][1]if L~=0 and _[6]~=1 then
e=c[17][D(L)][bo%8+1]w=e<0 and-1 or 1
e=D(e)if e>0 then
e=c[23][e+c[19][12][q(ce(r//aL+1),8)]]U,as=e[1],e[2]C=A/(M*r)aX=C*bz
K=u+(l[2]-_[9])/r*aS
H=K-e[5]*aX
o=p-w*e[4]*C
C,aX=C*e[3],aX*e[3]aZ(_[8][5])s=L>0 and s or 1
bE=C
cA=bE*bz
cr=_[4]and c[15][_[4]][23]&8>0
for g=0,U-1 do
p=o+g*C*w
if a<=aH[bA(az(p),0,R-1)]then
for i=0,as-1 do
O=e[7+i+g*as]if O~=0 then
if cr then
bv=bv%50+1
ak(0,0,0,q(75*c[13][2][bv],255))else
h=c[20][O]ak(h[1]*s,h[2]*s,h[3]*s)end
ca(p,H+i*aX,bE,cA)end
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
bi=bi+1
end
