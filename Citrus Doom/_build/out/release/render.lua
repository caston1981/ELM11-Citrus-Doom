cS=""

R=180
bF=screen
aF=ipairs
cg=table
cl=input
v=math
y=v.max
w=v.min
C=v.abs
aa=v.floor
ceil=v.ceil
sqrt=v.sqrt
I=cl.getNumber
bi=cl.getBool
pi=v.pi
K=false
P=true
bD=string
function bg(b,k)return b[1]*k[2]-b[2]*k[1]end
function sub(b,k)return{(b[1]-k[1]),(b[2]-k[2])}end
function bC(b)return((b+R)%360)-R end
function sin(b)return v.sin(b/R*pi)end
function cos(b)return v.cos(b/R*pi)end
function tan(b)return v.tan(b/R*pi)end
function cP(b)return v.atan(b)*R/pi end
function aX(b)return v.atan(b[2],b[1])*R/pi end
function bt(b,k,_)return w(y(k,b),_)end
function az(b)return aa(b+.5)end
function by(b,k)return sqrt(((b[1]-k[1])^2)+((b[2]-k[2])^2))end
function bj(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
function aG(b)p=w(b/255+cc,1)^2.2 end
c={}bx=1
ao=3
aQ=K
aq=P
g={{0,0},0,0}N=288
A=N//2
al=128
t=al//2
aU={}aW=400
bG=100
cO=0
aC={}aS=32768
bZ=3002
bc=0
aM=0
aH=0
bq=1.2
M=52
O=tan(M)aP=t*bq*N/al/O
U=1
bH={}for a=-A,A do bH[a]=aX({1,a/A*O})end
function bs(a)if a<aS then
local r,bv=c[7][a]bv=0<bg({r[3],r[4]},sub(g[1],r))and 8 or 7
bs(r[bv])bs(r[15-bv])else
as[#as+1]=a-aS
end
end
function aL(a,b)if a<aS then
r=c[7][a]return aL(r[0<bg({r[3],r[4]},sub(b,r))and 8 or 7],b)else
return a-aS
end
end
function bw(b)r=c[5][c[6][b][2]]return c[3][c[2][r[4]][r[5]+6]][6]end
function onTick()bm=0
for m=1,3 do
if bi(9)and(not aQ)or not c[21]then
bA=property.getText(bx..cS)if bA~=cS then
a=1
B=cS
_=bD.sub(bA,a,a)while _~=cSdo
k=bD.byte(_)if k>64 or _==cSthen
B=(B..(k-65))+0
if U==1then
bM=B
if c[B]==cQ then
c[B]={}end
U=2
elseif U==2then
cH=B
aD=0
U=3
elseif U==3then
be=B
U=4
else
if aD==0then
aD=cH
be=be-1
ae={}c[bM][#c[bM]+1]=ae
end
ae[#ae+1]=B
aD=aD-1
if y(aD,be)==0then
U=1
end
end
B=cS
else
B=B.._
end
a=a+1
_=bD.sub(bA,a,a)end
bx=bx+1
else
aQ=P
end
end
end
if aQ then
if I(9)>0 then
aq=P
ao=I(9)end
if bG>0 and not aq then
am={}aC[#aC+1]=am
au=5
_=I(au)while _~=0 do
ah={}am[#am+1]=ah
for a=0,8 do
ah[a+1]=I(au+a)end
au=au+9
_=I(au)end
end
if bi(1)then
bT=0
bn=I(1)bG=I(3)aH=aH+1
cp=aH//10
if aq then
for a=1,10 do
c[a]=c[a+10*ao]end
s=c[1]ag=c[8]ao=ao+1
end
if I(2)>0 then
_=c[2][I(2)]if _ then
b=_[4]if b==3008 then
cd=_[5]==1
elseif b>3004 then
aW=y(aW+3*(_[4]-3006),1)elseif b>3000 then
bZ=_[4]end
bT=I(2)end
end
if bi(3)and bn~=1 and bn~=3 then
cc=.1
aM=bn==5 and 5 or 3
else
aM=aM-1
if aM<1then
cc=0
end
end
for a=1,#aC do
am=aC[a]for m=1,#am do
ah=am[m]_=ah[1]if _>(2^15)then
_=ag[_-(2^15)]for h=1,6 do
_[h]=ah[h+1]end
elseif _<0 then
while-_>#s do
s[#s+1]=K
end
cg.remove(s,-_)else
if not s[_]then
s[_]={}end
_=s[_]for h=1,8 do
_[c[19][1][h]]=ah[h+1]end
_[15]=0
_[7]=aL(#c[7],_)_[8]=bw(_[7])end
end
end
aC={}for a=1,#c[6]do
aU[a]={}end
for a=1,#s do
_=s[a]if _ then
if aq then
_[7]=aL(#c[7],_)_[8]=bw(_[7])_[9]=ag[_[8]][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
if _[4]==1 then
cw=a
end
end
bo=0
for m,d in aF({1,2,9})do
_[d]=_[d]+_[d+10]bo=bo+_[d+10]end
if bo~=0then
_[7]=aL(#c[7],_)_[8]=bw(_[7])end
_[15]=_[15]+1
_[20]=by(_,g[1])Q=c[16][_[6]]if Q~=nil then
if _[15]>=Q[2]and Q[2]~=-1 then
_[6]=Q[4]_[15]=0
end
end
aU[_[7]][#aU[_[7]]+1]=a
end
end
aq=K
_=s[cw]g[1]={_[1],_[2]}g[2]=_[9]+41
g[3]=_[3]as={}bs(#c[7])aK={}o={}b_={}aZ={}ac={}Z={}aR={}bu=N
for a=0,N-1 do
aK[a],ac[a],Z[a]=#c[6]+2,t+1,-t
end
a=1
while a<=#as and bu>0 do
_=c[6][as[a]]b_[a]={}aZ[a]={}o[a]={}aR[a]=aU[as[a]]cg.sort(aR[a],function(b,k)return s[b][20]>s[k][20]end)for m=_[2],_[1]+_[2]-1 do
Y=c[5][m]E=c[2][Y[4]]cf,cm=c[4][Y[1]],c[4][Y[2]]aY,bR=sub(cf,g[1]),sub(cm,g[1])bY=aX(aY)H,aN=bC(bY-g[3]),bC(aX(bR)-g[3])if C(H)<90 or C(aN)<90 then
ai,ak=bt(H,-M,M),bt(aN,-M,M)if C(H)>=90 or C(aN)>=90 then
ci=bg(aY,bR)if C(H)>=90 then
if ci>0 then ai=-M else ai=M end
else
if ci<0 then ak=-M else ak=M end
end
end
l,n=az(tan(ai)/O*A),az(tan(ak)/O*A)if l~=n then
q,ay=by(g[1],cf),by(g[1],cm)aO=Y[3]+90
bJ=aO-bY
cA=q*sin(bJ)ba=(q*cos(bJ))if H~=ai then
q=ba/cos(aO-(ai+g[3]))end
if aN~=ak then
ay=ba/cos(aO-(ak+g[3]))end
q,ay=q*cos(ai),ay*cos(ak)h=Y[5]+6
cM=(l>n)if cM and E[h]~=0 then
ap=E[3]&4>0
if ap then
W,ab=ag[c[3][E[6]][6]],ag[c[3][E[7]][6]]end
af=c[3][E[h]]cL={af[3],af[4],af[5]}G,bN,bS=ag[af[6]]for j,d in aF(cL)do
ax=d>0
aE=P
if(ax or(j==3 and not(bN and bS)))and(j==3 or ap)then
bO=K
bU=0
if j<3 then
bO=j==1 and y(W[4],ab[4])==0
z,x=W[3-j],ab[3-j]aE=(z<x)~=(j==2)~=(h==6)and z~=x and W~=ab
z,x=w(z,x),y(z,x)if aE then
if j==1then
bN=P
else
bS=P
bU=E[3]&16>0 and y(W[2],ab[2])-x or 0
end
end
else
if ap then
z,x=y(W[1],ab[1]),w(W[2],ab[2])aE=W~=ab
else
z,x=G[1],G[2]end
end
z,x=z-g[2],x-g[2]ch,ce=z*aP,x*aP
if(aE or ax)and not bO then
bB=Y[6]-af[1]if E[4]==48 then
bB=bB-aH
end
cq,cI=ch/q,ce/q
cK,cv=ch/ay,ce/ay
bQ=0
aw=K
if ax then
_=c[21][d][4]if(Y[4]==bT or bZ==E[4])and _>0then
d=_
end
av=c[21][d][3]u=1
if(j==3 and E[3]&16>0)or(j==1 and E[3]&8==0)then
u=-1
end
end
for h=l,n,-1 do
cD=bH[h]aT=(aO-g[3])-cD
f=A-h
c_=K
if f>=0 and f<=N-1 then
if a<aK[f]then
aI=(h-l)/(n-l)J,F=(cq*(1-aI)+cK*aI),(cI*(1-aI)+cv*aI)if C(F+J)-(F-J)<al then
if ax then
if J~=F then
c_=P
ca=ba*tan(aT)L=w(((C(ca)+C(ba))//aW)+1,4)bp=w(bj(aa(L/cos(aT))),16)L=bj(L)bl=aa((y(ca-cA,0)-bB)/(av*bp))*bp
ck={f,t-J,t-F,d,bl,x-z,G[5],af[2]+bU,P,av*L,L,u,not aw,j==3 and ap}if bl>bQ or(not aw)or h==n then
bQ=bl-1+bp
aw=P
o[a][#o[a]+1]=ck
end
cz=ck
end
end
if aE then
if j~=2 then
if F<ac[f]then
aZ[a][#aZ[a]+1]={f,y(F,Z[f]),ac[f],G}end
if j==3then V=F else V=J end
if ac[f]>V then ac[f]=V end
end
if j~=1 then
if J>Z[f]then
b_[a][#b_[a]+1]={f,Z[f],w(J,ac[f]),G}end
if j==3then V=J else V=F end
if Z[f]<V then Z[f]=V end
end
if(ac[f]<=Z[f])or(j==3 and(not ap)and ax)then
aK[f]=a
bu=bu-1
end
end
end
end
end
if(not c_)and aw then
aw=K
o[a][#o[a]+1]=cz
o[a][#o[a]][9]=K
end
end
if#o[a]>0 then
o[a][#o[a]][9]=K
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
function onDraw()aJ=bF
local cj,bk,aj,cR=aJ.drawTriangleF,aJ.drawRectF,aJ.setColor,aJ.drawText
bm=bm+1
cs={b_,aZ}if bm<=1 then
if aQ then
e=c[24][c[19][8][ao-3]]ad,aA=e[1],e[2]D=N/ceil(ad*O)bW=D*1
for a=0,ceil(ad*O),1 do
l=(ad/2-a-1+g[3]/90*ad)%ad
n=(l%1-1)*D
l=aa(l)*aA
for m=0,aA-1,1 do
S=e[5+m+l]i=c[20][S]aj(i[1],i[2],i[3])bk(a*D+n,m*D,bW,bW)end
end
for a=#o,1,-1 do
for m=1,#o[a]do
d=o[a][m]if d[9]or d[13]then
if d[9]then
T=o[a][m+1]else
T=d
end
e=c[21][d[4]]e=c[21][d[4]+(cp%e[5])]u=d[12]X=w(u,0)f=d[1]n=T[1]bV=d[2-X]cu=T[2-X]h=d[3+X]bE=T[3+X]if not T[9]then n=n+1 end
aG(d[7])cE=u*(d[2]-d[3])*d[10]/d[6]cr=u*(T[2]-T[3])*d[10]/T[6]ae=u>0 and w or y
bf=0
while h*u<bV*u and(bf<e[2]or not d[14])do
co=ae(h+cE,bV)bh=ae(bE+cr,cu)S=e[7+((X*d[11]+d[8]//e[3])%e[2])+e[2]*(d[5]%e[1])]i=c[20][S]if i then
aj(i[1]*p,i[2]*p,i[3]*p)cj(f,h,f,co,n,bh)cj(f,h,n,bE,n,bh)end
h=co
bE=bh
X=X+u
bf=bf+d[11]end
end
end
for b=1,2 do
_=cs[b]cn={}ar,at,br=al,-al
for m,d in aF(_[a])do
ar=w(ar,d[2])at=y(at,d[3])br=d
e=c[22][d[4][b+2]]if e and not cd then
aG(d[4][5])i=c[20][e[5]]aj(i[1]*p,i[2]*p,i[3]*p)bF.drawLine(d[1],t-d[2],d[1],aa(t-d[3]-1))end
end
if br and cd then
G=br[4]cC=(G[b]-g[2])bd=cos(g[3])bz=sin(g[3])for aB=aa(ar+t),ceil(at+t)do
an=aP*cC/(t-aB)bX=bd*an-g[1][1]bK=bz*an-g[1][2]bP=-bz*an+bX
bL=bd*an+bK
cy=bz*an+bX
cB=-bd*an+bK
cJ=(cy-bP)/N
ct=(cB-bL)/N
cn[aB]={cJ,ct,bP,bL}end
for m,d in aF(_[a])do
if G[b+2]~=0 then
aG(G[5])k=G[b+2]e=c[22][k]e=c[22][k+(cp%e[4])]f=d[1]cb=A-(A-f)*O
ar,at=aa(d[2]+t),ceil(d[3]+t)av=e[3]for aB=ar,at do
bb=cn[aB]cN=(bb[3]+bb[1]*cb)//av
cx=(bb[4]+bb[2]*cb)//av
S=6+(cx%e[1])+e[1]*(cN%e[2])i=c[20][e[S]]if i then
aj(i[1]*p,i[2]*p,i[3]*p)bk(f,-aB+al,1,1)end
end
end
end
end
end
for m=1,#aR[a]do
_=s[aR[a][m]]if _[6]~=0 then
aY=sub(_,g[1])q=_[20]if q>1 then
H=bC(aX(aY)-g[3])q=q*cos(H)if C(H)<90 then
l=A-az(tan(H)/O*A)aT=az((R+H+g[3]-_[3])/360*8)Q=c[16][_[6]][1]if Q~=0 and _[6]~=1 then
e=c[17][C(Q)][aT%8+1]u=e<0 and-1 or 1
e=C(e)if e>0 then
e=c[23][e]ad,aA=e[1],e[2]L=w(bj(q//aW+1),8)D=A/(O*q)aV=D*bq
J=t+(g[2]-_[9])/q*aP
F=J-e[5]*aV
n=l-u*e[4]*D
D,aV=D*e[3],aV*e[3]aG(ag[_[8]][5])p=Q>0 and p or 1
bI=D*L
cG=bI*bq
cF=_[4]and c[15][_[4]][23]&8>0
for h=0,ad-1,L do
l=n+h*D*u
if a<=aK[bt(az(l),0,N-1)]then
for j=0,aA-1,L do
S=e[7+j+h*aA]if S~=0 then
if cF then
bc=bc%50+1
aj(0,0,0,w(75*c[13][2][bc],255))else
i=c[20][S]aj(i[1]*p,i[2]*p,i[3]*p)end
bk(l,F+j*aV,bI,cG)end
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
