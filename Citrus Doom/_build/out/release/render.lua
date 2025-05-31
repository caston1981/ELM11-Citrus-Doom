cT=""

R=180
bO=screen
aP=ipairs
bC=table
cj=input
v=math
E=v.max
x=v.min
D=v.abs
aj=v.floor
ceil=v.ceil
sqrt=v.sqrt
G=cj.getNumber
bi=cj.getBool
pi=v.pi
M=false
Q=true
be=string
function bn(b,m)return b[1]*m[2]-b[2]*m[1]end
function sub(b,m)return{(b[1]-m[1]),(b[2]-m[2])}end
function bt(b)return((b+R)%360)-R end
function sin(b)return v.sin(b/R*pi)end
function cos(b)return v.cos(b/R*pi)end
function tan(b)return v.tan(b/R*pi)end
function cQ(b)return v.atan(b)*R/pi end
function aO(b)return v.atan(b[2],b[1])*R/pi end
function ba(b,m,_)return x(E(m,b),_)end
function am(b)return aj(b+.5)end
function bB(b,m)return sqrt(((b[1]-m[1])^2)+((b[2]-m[2])^2))end
function cp(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
function aH(b)p=x(b/255+bU,1)^2.2 end
c={}bw=1
an=3
aI=M
ax=Q
g={{0,0},0,0}L=288
B=L//2
ad=128
s=ad//2
aJ={}aS=400
bN=200
bX=100
cS=0
aB={}aG=32768
bQ=3002
bo=0
aQ=0
aE=0
bg=1.2
N=52
K=tan(N)aW=s*bg*L/ad/K
X=1
bS={}for a=-B,B do bS[a]=aO({1,a/B*K})end
function bf(a)if a<aG then
local t,bb=c[7][a]bb=0<bn({t[3],t[4]},sub(g[1],t))and 8 or 7
bf(t[bb])bf(t[15-bb])else
aD[#aD+1]=a-aG
end
end
function aX(a,b)if a<aG then
t=c[7][a]return aX(t[0<bn({t[3],t[4]},sub(b,t))and 8 or 7],b)else
return a-aG
end
end
function bm(b)t=c[5][c[6][b][2]]return c[3][c[2][t[4]][t[5]+6]][6]end
function onTick()bx=0
for n=1,3 do
if bi(9)and(not aI)or not c[21]then
bu=property.getText(bw)a=1
C=cT
_=be.sub(bu,a,a)while _~=cTdo
cl=be.byte(_)if cl>64then
C=(C..cl-65)+0
if X==1then
ce=C
c[C]=c[C]or{}elseif X==2then
cP=C
ap=0
elseif X==3then
br=C
else
if ap==0then
ap=cP
br=br-1
bd={}c[ce][#c[ce]+1]=bd
end
bd[#bd+1]=C
ap=ap-1
X=E(ap,br)>0 and X-1 or 0
end
X=X+1
C=cT
else
C=C.._
end
a=a+1
_=be.sub(bu,a,a)end
bw=bw+1
aI=bu==cT
end
end
if aI then
if G(9)>0 then
ax=Q
an=G(9)end
if bX>0 and not ax then
ae={}aB[#aB+1]=ae
ay=5
_=G(ay)while _~=0 do
al={}ae[#ae+1]=al
for a=0,8 do
al[a+1]=G(ay+a)end
ay=ay+9
_=G(ay)end
end
if bi(1)then
bG=0
bz=G(1)bX=G(3)aE=aE+1
bR=aE//10
if ax then
for a=1,10 do
c[a]=c[a+10*an]end
u=c[1]ah=c[8]an=an+1
end
if G(2)>0 then
_=c[2][G(2)]if _ then
b=_[4]if b>0 then
if b==3008 then
bF=_[5]==1
elseif b>3004 then
aS=E(aS+3*(_[4]-3006),1)bN=aS/2
elseif b>3000 then
bQ=_[4]end
bG=G(2)if b<3000 and c[9][_[5]][7]==0then
_[8]=1
end
end
end
end
if bi(3)and bz~=1 and bz~=3 then
bU=.1
aQ=bz==5 and 5 or 3
else
aQ=aQ-1
if aQ<1then
bU=0
end
end
for a=1,#aB do
ae=aB[a]for n=1,#ae do
al=ae[n]_=al[1]if _>(2^15)then
_=ah[_-(2^15)]for h=1,6 do
_[h]=al[h+1]end
elseif _<0 then
while-_>#u do
u[#u+1]=M
end
bC.remove(u,-_)else
if not u[_]then
u[_]={}end
_=u[_]for h=1,8 do
_[c[19][1][h]]=al[h+1]end
_[15]=0
_[7]=aX(#c[7],_)_[8]=bm(_[7])end
end
end
aB={}for a=1,#c[6]do
aJ[a]={}end
for a=1,#u do
_=u[a]if _ then
if ax then
_[7]=aX(#c[7],_)_[8]=bm(_[7])_[9]=ah[_[8]][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
end
bj=0
for n,d in aP({1,2,9})do
_[d]=_[d]+_[d+10]bj=bj+_[d+10]end
if bj~=0then
_[7]=aX(#c[7],_)_[8]=bm(_[7])end
_[15]=_[15]+1
_[20]=bB(_,g[1])O=c[16][_[6]]if O~=nil then
if _[15]>=O[2]and O[2]~=-1 then
_[6]=O[4]_[15]=0
end
end
aJ[_[7]][#aJ[_[7]]+1]=a
end
end
ax=M
_=u[1]g[1]={_[1],_[2]}g[2]=_[9]+41
g[3]=_[3]aD={}bf(#c[7])aM={}q={}aK={}aL={}W={}T={}aT={}bs=L
for a=0,L-1 do
aM[a],W[a],T[a]=#c[6]+2,s+1,-s
end
a=1
while a<=#aD and bs>0 do
_=c[6][aD[a]]aK[a]={}aL[a]={}q[a]={}aT[a]=aJ[aD[a]]bC.sort(aT[a],function(b,m)return u[b][20]>u[m][20]end)for n=_[2],_[1]+_[2]-1 do
U=c[5][n]A=c[2][U[4]]bP,cd=c[4][U[1]],c[4][U[2]]aF,cc=sub(bP,g[1]),sub(cd,g[1])cg=aO(aF)F,aN=bt(cg-g[3]),bt(aO(cc)-g[3])if D(F)<90 or D(aN)<90 then
af,ai=ba(F,-N,N),ba(aN,-N,N)if D(F)>=90 or D(aN)>=90 then
cq=bn(aF,cc)if D(F)>=90 then
if cq>0 then af=-N else af=N end
else
if cq<0 then ai=-N else ai=N end
end
end
l,k=am(tan(af)/K*B),am(tan(ai)/K*B)if l~=k then
o,at=bB(g[1],bP),bB(g[1],cd)b_=U[3]+90
bL=b_-cg
cO=o*sin(bL)aV=(o*cos(bL))if F~=af then
o=aV/cos(b_-(af+g[3]))end
if aN~=ai then
at=aV/cos(b_-(ai+g[3]))end
o,at=o*cos(af),at*cos(ai)h=U[5]+6
cG=(l>k)if cG and A[h]~=0 then
az=A[3]&4>0
if az then
Z,V=ah[c[3][A[6]][6]],ah[c[3][A[7]][6]]end
ag=c[3][A[h]]cA={ag[3],ag[4],ag[5]}H,cb,bT=ah[ag[6]]for j,d in aP(cA)do
ao=d>0
au=Q
if(ao or(j==3 and not(cb and bT)))and(j==3 or az)then
bY=M
bV=0
if j<3 then
bY=j==1 and E(Z[4],V[4])==0
z,w=Z[3-j],V[3-j]au=(z<w)~=(j==2)~=(h==6)and z~=w and Z~=V
z,w=x(z,w),E(z,w)if au then
if j==1then
cb=Q
else
bT=Q
bV=A[3]&16>0 and E(Z[2],V[2])-w or 0
end
end
else
if az then
z,w=E(Z[1],V[1]),x(Z[2],V[2])au=Z~=V
else
z,w=H[1],H[2]end
end
z,w=z-g[2],w-g[2]bZ,ck=z*aW,w*aW
if(au or ao)and not bY then
bc=U[6]-ag[1]if A[4]==48 then
bc=bc-aE
end
cz,cE=bZ/o,ck/o
cC,cy=bZ/at,ck/at
ci=0
ar=M
if ao then
_=c[21][d][4]if(U[4]==bG or bQ==A[4]or A[8])and _>0then
d=_
end
av=c[21][d][3]r=1
if(j==3 and A[3]&16>0)or(j==1 and A[3]&8==0)then
r=-1
end
end
for h=l,k,-1 do
cK=bS[h]bv=(b_-g[3])-cK
f=B-h
bD=M
if f>=0 and f<=L-1 then
if a<aM[f]then
aU=(h-l)/(k-l)I,J=(cz*(1-aU)+cC*aU),(cE*(1-aU)+cy*aU)if D(J+I)-(J-I)<ad then
if ao then
if I~=J then
bD=Q
bK=aV*tan(bv)as=cp(x(((D(bK)+D(aV))//bN)+1,16))cm=aj((E(bK-cO,0)-bc)/(av*as))bI=cm*as
cf={f,s-I,s-J,d,cm,w-z,H[5],ag[2]+bV,Q,av*as,as,r,not ar,j==3 and az}if bI>ci or(not ar)or h==k then
ci=bI-1+as
ar=Q
q[a][#q[a]+1]=cf
end
cI=cf
end
end
if au then
if j~=2 then
if J<W[f]then
aL[a][#aL[a]+1]={f,E(J,T[f]),W[f],H}end
if j==3then aa=J else aa=I end
if W[f]>aa then W[f]=aa end
end
if j~=1 then
if I>T[f]then
aK[a][#aK[a]+1]={f,T[f],x(I,W[f]),H}end
if j==3then aa=I else aa=J end
if T[f]<aa then T[f]=aa end
end
if(W[f]<=T[f])or(j==3 and(not az)and ao)then
aM[f]=a
bs=bs-1
end
end
end
end
end
if(not bD)and ar then
ar=M
q[a][#q[a]+1]=cI
q[a][#q[a]][9]=M
end
end
if#q[a]>0 then
q[a][#q[a]][9]=M
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
function onDraw()aY=bO
local bW,by,ak,cR=aY.drawTriangleF,aY.drawRectF,aY.setColor,aY.drawText
cN={aK,aL}if aI then
e=c[24][c[19][8][an-3]]ab,aw=e[1],e[2]y=L/ceil(ab*K)cn=y*1
for a=0,ceil(ab*K),1 do
l=(ab/2-a-1+g[3]/90*ab)%ab
k=(l%1-1)*y
l=aj(l)*aw
for n=0,aw-1,1 do
P=e[5+n+l]i=c[20][P]ak(i[1],i[2],i[3])by(a*y+k,n*y,cn,cn)end
end
for a=#q,1,-1 do
for n=1,#q[a]do
d=q[a][n]if d[9]or d[13]then
if d[9]then
S=q[a][n+1]else
S=d
end
e=c[21][d[4]]e=c[21][d[4]+(bR%e[5])*c[19][3][2]+c[19][12][d[11]]]r=d[12]Y=x(r,0)f=d[1]k=S[1]co=d[2-Y]ct=S[2-Y]h=d[3+Y]bl=S[3+Y]if not S[9]then k=k+1 end
aH(d[7])cM=r*(d[2]-d[3])*e[3]/d[6]cD=r*(S[2]-S[3])*e[3]/S[6]c_=r>0 and x or E
bh=0
while h*r<co*r and(bh<e[2]or not d[14])do
bH=c_(h+cM,co)bk=c_(bl+cD,ct)P=e[7+((Y+d[8]//e[3])%e[2])+e[2]*((d[5])%e[1])]i=c[20][P]if i then
ak(i[1]*p,i[2]*p,i[3]*p)bW(f,h,f,bH,k,bk)bW(f,h,k,bl,k,bk)end
h=bH
bl=bk
Y=Y+r
bh=bh+1
end
end
end
for b=1,2 do
_=cN[b]bJ={}aC,aA,bq=ad,-ad
for n,d in aP(_[a])do
aC=x(aC,d[2])aA=E(aA,d[3])bq=d
e=c[22][d[4][b+2]]if e and not bF then
aH(d[4][5])i=c[20][e[5]]ak(i[1]*p,i[2]*p,i[3]*p)bO.drawLine(d[1],s-d[2],d[1],aj(s-d[3]-1))end
end
if bq and bF then
H=bq[4]cB=(H[b]-g[2])bA=cos(g[3])bp=sin(g[3])for aq=aj(aC+s),ceil(aA+s)do
ac=aW*cB/(s-aq)bE=bA*ac-g[1][1]cr=bp*ac-g[1][2]bM=-bp*ac+bE
ca=bA*ac+cr
cu=bp*ac+bE
cH=-bA*ac+cr
cJ=(cu-bM)/L
cL=(cH-ca)/L
bJ[aq]={cJ,cL,bM,ca}end
for n,d in aP(_[a])do
if H[b+2]~=0 then
f=d[1]aH(H[5])m=H[b+2]e=c[22][m]e=c[22][m+(bR%e[4])]ch=B-(B-f)*K
aC,aA=aj(d[2]+s),ceil(d[3]+s)av=e[3]for aq=aC,aA do
aR=bJ[aq]cx=(aR[3]+aR[1]*ch)//av
cw=(aR[4]+aR[2]*ch)//av
P=6+(cw%e[1])+e[1]*(cx%e[2])i=c[20][e[P]]if i then
ak(i[1]*p,i[2]*p,i[3]*p)by(f,-aq+ad,1,1)end
end
end
end
end
end
for n=1,#aT[a]do
_=u[aT[a][n]]if _[6]~=0 then
aF=sub(_,g[1])o=_[20]if o>1 then
F=bt(aO(aF)-g[3])o=o*cos(F)if D(F)<90 then
l=B-am(tan(F)/K*B)bv=am((R+F+g[3]-_[3]+bx*4)/360*8)O=c[16][_[6]][1]if O~=0 and _[6]~=1 then
e=c[17][D(O)][bv%8+1]r=e<0 and-1 or 1
e=D(e)if e>0 then
e=c[23][e+c[19][12][x(cp(o//aS+1),8)]]ab,aw=e[1],e[2]y=B/(K*o)aZ=y*bg
I=s+(g[2]-_[9])/o*aW
J=I-e[5]*aZ
k=l-r*e[4]*y
y,aZ=y*e[3],aZ*e[3]aH(ah[_[8]][5])p=O>0 and p or 1
cs=y
cF=cs*bg
cv=_[4]and c[15][_[4]][23]&8>0
for h=0,ab-1 do
l=k+h*y*r
if a<=aM[ba(am(l),0,L-1)]then
for j=0,aw-1 do
P=e[7+j+h*aw]if P~=0 then
if cv then
bo=bo%50+1
ak(0,0,0,x(75*c[13][2][bo],255))else
i=c[20][P]ak(i[1]*p,i[2]*p,i[3]*p)end
by(l,J+j*aZ,cs,cF)end
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
bx=bx+1
end
