cP=""

Q=180
bL=screen
b_=ipairs
ca=table
bF=input
v=math
y=v.max
l=v.min
z=v.abs
ai=v.floor
ceil=v.ceil
sqrt=v.sqrt
F=bF.getNumber
by=bF.getBool
pi=v.pi
L=false
K=true
bq=string
function bC(c,k)return c[1]*k[2]-c[2]*k[1]end
function sub(c,k)return{(c[1]-k[1]),(c[2]-k[2])}end
function bz(c)return((c+Q)%360)-Q end
function sin(c)return v.sin(c/Q*pi)end
function cos(c)return v.cos(c/Q*pi)end
function tan(c)return v.tan(c/Q*pi)end
function cO(c)return v.atan(c)*Q/pi end
function aW(c)return v.atan(c[2],c[1])*Q/pi end
function bu(c,k,_)return l(y(k,c),_)end
function an(c)return ai(c+.5)end
function br(c,k)return sqrt(((c[1]-k[1])^2)+((c[2]-k[2])^2))end
function bi(c)c=c-1
c=c|(c>>1)c=c|(c>>2)c=c|(c>>4)return c+1
end
b={}bo=1
aD=3
aI=L
az=K
f={{0,0},0,0}N=288
A=N//2
ad=128
s=ad//2
aN={}aX=400
bS=100
cN=0
ao={}aF=32768
bM=3002
bd=0
aE=0
aL=0
bv=1.2
J=52
O=tan(J)aH=s*bv*N/ad/O
ab=1
cj={}for a=-A,A do cj[a]=aW({1,a/A*O})end
function bB(a)if a<aF then
local u,bA=b[7][a]bA=0<bC({u[3],u[4]},sub(f[1],u))and 8 or 7
bB(u[bA])bB(u[15-bA])else
aq[#aq+1]=a-aF
end
end
function aV(a,c)if a<aF then
u=b[7][a]return aV(u[0<bC({u[3],u[4]},sub(c,u))and 8 or 7],c)else
return a-aF
end
end
function bp(c)u=b[5][b[6][c][2]]return b[3][b[2][u[4]][u[5]+6]][6]end
function onTick()bt=0
for m=1,3 do
if by(9)and(not aI)or not b[21]then
bx=property.getText(bo..cP)if bx~=cP then
a=1
x=cP
_=bq.sub(bx,a,a)while _~=cPdo
k=bq.byte(_)if k>64 or _==cPthen
x=(x..(k-65))+0
if ab==1then
bW=x
if b[x]==cL then
b[x]={}end
ab=2
elseif ab==2then
cA=x
aw=0
ab=3
elseif ab==3then
bs=x
ab=4
else
if aw==0then
aw=cA
bs=bs-1
ah={}b[bW][#b[bW]+1]=ah
end
ah[#ah+1]=x
aw=aw-1
if y(aw,bs)==0then
ab=1
end
end
x=cP
else
x=x.._
end
a=a+1
_=bq.sub(bx,a,a)end
bo=bo+1
else
aI=K
end
end
end
if aI then
if F(9)>0 then
az=K
aD=F(9)end
if bS>0 and not az then
ag={}ao[#ao+1]=ag
ar=5
_=F(ar)while _~=0 do
T={}ag[#ag+1]=T
for a=0,8 do
T[a+1]=F(ar+a)end
ar=ar+9
_=F(ar)end
end
if by(1)then
bY=0
bw=F(1)bS=F(3)aL=aL+1
bD=aL//10
if az then
for a=1,10 do
b[a]=b[a+10*aD]end
for a=1,#b[8]do
b[8][a][5]=b[8][a][5]/255
end
aD=aD+1
end
if F(2)>0 then
_=b[2][F(2)]if _ then
c=_[4]if c==3008 then
cl=_[5]==1
elseif c>3004 then
aX=y(aX+3*(_[4]-3006),1)elseif c>3000 then
bM=_[4]end
bY=F(2)end
end
if by(3)and bw~=1 and bw~=3 then
ap=.1
aE=bw==5 and 5 or 3
else
aE=aE-1
if aE<1then
ap=0
end
end
for a=1,#ao do
ag=ao[a]for m=1,#ag do
T=ag[m]_=T[1]if _>(2^15)then
_=b[8][_-(2^15)]_[1]=T[2]_[2]=T[3]elseif _<0 then
while-_>#b[1]do
b[1][#b[1]+1]=L
end
ca.remove(b[1],-_)else
if not b[1][_]then
b[1][_]={}end
_=b[1][_]for i=1,8 do
_[b[19][1][i]]=T[i+1]end
_[15]=0
_[7]=aV(#b[7],_)_[8]=bp(_[7])end
end
end
ao={}for a=1,#b[6]do
aN[a]={}end
for a=1,#b[1]do
_=b[1][a]if _ then
if az then
_[7]=aV(#b[7],_)_[8]=bp(_[7])_[9]=b[8][_[8]][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
if _[4]==1 then
cJ=a
end
end
bl=0
for m,d in b_({1,2,9})do
_[d]=_[d]+_[d+10]bl=bl+_[d+10]end
if bl~=0then
_[7]=aV(#b[7],_)_[8]=bp(_[7])end
_[15]=_[15]+1
_[20]=br(_,f[1])R=b[16][_[6]]if R~=nil then
if _[15]>=R[2]and R[2]~=-1 then
_[6]=R[4]_[15]=0
end
end
aN[_[7]][#aN[_[7]]+1]=a
end
end
az=L
_=b[1][cJ]f[1]={_[1],_[2]}f[2]=_[9]+41
f[3]=_[3]aq={}bB(#b[7])aK={}q={}aJ={}aQ={}Z={}V={}aT={}bg=N
for a=0,N-1 do
aK[a],Z[a],V[a]=#b[6]+2,s+1,-s
end
a=1
while a<=#aq and bg>0 do
_=b[6][aq[a]]aJ[a]={}aQ[a]={}q[a]={}aT[a]=aN[aq[a]]ca.sort(aT[a],function(c,k)return b[1][c][20]>b[1][k][20]end)for m=_[2],_[1]+_[2]-1 do
W=b[5][m]I=b[2][W[4]]bK,bE=b[4][W[1]],b[4][W[2]]aG,c_=sub(bK,f[1]),sub(bE,f[1])cg=aW(aG)H,aM=bz(cg-f[3]),bz(aW(c_)-f[3])if z(H)<90 or z(aM)<90 then
af,aj=bu(H,-J,J),bu(aM,-J,J)if z(H)>=90 or z(aM)>=90 then
cd=bC(aG,c_)if z(H)>=90 then
if cd>0 then af=-J else af=J end
else
if cd<0 then aj=-J else aj=J end
end
end
p,n=an(tan(af)/O*A),an(tan(aj)/O*A)if p~=n then
r,au=br(f[1],bK),br(f[1],bE)aZ=W[3]+90
cc=aZ-cg
cK=r*sin(cc)aO=(r*cos(cc))if H~=af then
r=aO/cos(aZ-(af+f[3]))end
if aM~=aj then
au=aO/cos(aZ-(aj+f[3]))end
r,au=r*cos(af),au*cos(aj)i=W[5]+6
cH=(p>n)if cH and I[i]~=0 then
am=I[3]&4>0
if am then
X,Y=b[8][b[3][I[6]][6]],b[8][b[3][I[7]][6]]end
ak=b[3][I[i]]ct={ak[3],ak[4],ak[5]}D,bZ,bR=b[8][ak[6]]for j,d in b_(ct)do
av=d>0
at=K
if(av or(j==3 and not(bZ and bR)))and(j==3 or am)then
cm=L
ci=0
if j<3 then
cm=j==1 and y(X[4],Y[4])==0
B,w=X[3-j],Y[3-j]at=(B<w)~=(j==2)~=(i==6)and B~=w and X~=Y
B,w=l(B,w),y(B,w)if at then
if j==1then
bZ=K
else
bR=K
ci=I[3]&16>0 and y(X[2],Y[2])-w or 0
end
end
else
if am then
B,w=y(X[1],Y[1]),l(X[2],Y[2])at=X~=Y
else
B,w=D[1],D[2]end
end
B,w=B-f[2],w-f[2]bI,bH=B*aH,w*aH
if(at or av)and not cm then
be=W[6]-ak[1]if I[4]==48 then
be=be-aL
end
co,cq=bI/r,bH/r
cF,cp=bI/au,bH/au
bG=0
aA=L
if av then
_=b[21][d][4]if(W[4]==bY or bM==I[4])and _>0then
d=_
end
ax=b[21][d][3]t=1
if(j==3 and I[3]&16>0)or(j==1 and I[3]&8==0)then
t=-1
end
end
for i=p,n,-1 do
cy=cj[i]aY=(aZ-f[3])-cy
g=A-i
bN=L
if g>=0 and g<=N-1 then
if a<aK[g]then
aP=(i-p)/(n-p)E,G=(co*(1-aP)+cF*aP),(cq*(1-aP)+cp*aP)if z(G+E)-(G-E)<ad then
if av then
if E~=G then
bN=K
bU=aO*tan(aY)M=l(((z(bU)+z(aO))//aX)+1,4)bc=l(bi(ai(M/cos(aY))),16)M=bi(M)bf=ai((y(bU-cK,0)-be)/(ax*bc))*bc
bP={g,s-E,s-G,d,bf,w-B,D[5],ak[2]+ci,K,ax*M,M,t,not aA,j==3 and am}if bf>bG or(not aA)or i==n then
bG=bf-1+bc
aA=K
q[a][#q[a]+1]=bP
end
cs=bP
end
end
if at then
if j~=2 then
if G<Z[g]then
aQ[a][#aQ[a]+1]={g,y(G,V[g]),Z[g],D}end
if j==3then U=G else U=E end
if Z[g]>U then Z[g]=U end
end
if j~=1 then
if E>V[g]then
aJ[a][#aJ[a]+1]={g,V[g],l(E,Z[g]),D}end
if j==3then U=E else U=G end
if V[g]<U then V[g]=U end
end
if(Z[g]<=V[g])or(j==3 and(not am)and av)then
aK[g]=a
bg=bg-1
end
end
end
end
end
if(not bN)and aA then
aA=L
q[a][#q[a]+1]=cs
q[a][#q[a]][9]=L
end
end
if#q[a]>0 then
q[a][#q[a]][9]=L
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
function onDraw()aS=bL
local bT,bn,al,cM=aS.drawTriangleF,aS.drawRectF,aS.setColor,aS.drawText
bt=bt+1
cw={aJ,aQ}if bt<=1 then
if aI then
e=b[24][b[19][8][aD-3]]ac,aB=e[1],e[2]C=N/ceil(ac*O)bX=C*1
for a=0,ceil(ac*O),1 do
p=(ac/2-a-1+f[3]/90*ac)%ac
n=(p%1-1)*C
p=ai(p)*aB
for m=0,aB-1,1 do
S=e[5+m+p]h=b[20][S]al(h[1],h[2],h[3])bn(a*C+n,m*C,bX,bX)end
end
for a=#q,1,-1 do
for m=1,#q[a]do
d=q[a][m]if d[9]or d[13]then
if d[9]then
P=q[a][m+1]else
P=d
end
e=b[21][d[4]]e=b[21][d[4]+(bD%e[5])]t=d[12]aa=l(t,0)g=d[1]n=P[1]bO=d[2-aa]cr=P[2-aa]i=d[3+aa]ba=P[3+aa]if not P[9]then n=n+1 end
o=l(d[7]+ap,1)^2.2
cu=t*(d[2]-d[3])*d[10]/d[6]cC=t*(P[2]-P[3])*d[10]/P[6]ah=t>0 and l or y
bb=0
while i*t<bO*t and(bb<e[2]or not d[14])do
ck=ah(i+cu,bO)bh=ah(ba+cC,cr)S=e[7+((aa*d[11]+d[8]//e[3])%e[2])+e[2]*(d[5]%e[1])]h=b[20][S]if h then
al(h[1]*o,h[2]*o,h[3]*o)bT(g,i,g,ck,n,bh)bT(g,i,n,ba,n,bh)end
i=ck
ba=bh
aa=aa+t
bb=bb+d[11]end
end
end
for c=1,2 do
_=cw[c]cf={}as,aC,bm=ad,-ad
for m,d in b_(_[a])do
as=l(as,d[2])aC=y(aC,d[3])bm=d
e=b[22][d[4][c+2]]if e and not cl then
o=l(d[4][5]+ap,1)^2.2
h=b[20][e[5]]al(h[1]*o,h[2]*o,h[3]*o)bL.drawLine(d[1],s-d[2],d[1],s-d[3]-1.5)end
end
if bm and cl then
D=bm[4]cn=(D[c]-f[2])bk=cos(f[3])bj=sin(f[3])for ay=ai(as+s),ceil(aC+s)do
ae=aH*cn/(s-ay)ch=bk*ae-f[1][1]bV=bj*ae-f[1][2]bQ=-bj*ae+ch
cb=bk*ae+bV
cI=bj*ae+ch
cE=-bk*ae+bV
cB=(cI-bQ)/N
cD=(cE-cb)/N
cf[ay]={cB,cD,bQ,cb}end
for m,d in b_(_[a])do
if D[c+2]~=0 then
o=l(D[5]+ap,1)^2.2
k=D[c+2]e=b[22][k]e=b[22][k+(bD%e[4])]g=d[1]ce=A-(A-g)*O
as,aC=ai(d[2]+s),ceil(d[3]+s)ax=e[3]for ay=as,aC do
aR=cf[ay]cv=(aR[3]+aR[1]*ce)//ax
cx=(aR[4]+aR[2]*ce)//ax
S=6+(cx%e[1])+e[1]*(cv%e[2])h=b[20][e[S]]if h then
al(h[1]*o,h[2]*o,h[3]*o)bn(g,-ay+ad,1,1)end
end
end
end
end
end
for m=1,#aT[a]do
_=b[1][aT[a][m]]if _[6]~=0 then
aG=sub(_,f[1])r=_[20]if r>1 then
H=bz(aW(aG)-f[3])r=r*cos(H)if z(H)<90 then
p=A-an(tan(H)/O*A)aY=an((Q+H+f[3]-_[3])/360*8)R=b[16][_[6]][1]if R~=0 and _[6]~=1 then
e=b[17][z(R)][aY%8+1]t=e<0 and-1 or 1
e=z(e)if e>0 then
e=b[23][e]ac,aB=e[1],e[2]M=l(bi(r//aX+1),8)C=A/(O*r)aU=C*bv
E=s+(f[2]-_[9])/r*aH
G=E-e[5]*aU
n=p-t*e[4]*C
C,aU=C*e[3],aU*e[3]o=R>0 and l(b[8][_[8]][5]+ap,1)^2.2 or 1
bJ=C*M
cz=bJ*bv
cG=_[4]and b[15][_[4]][23]&8>0
for i=0,ac-1,M do
p=n+i*C*t
if a<=aK[bu(an(p),0,N-1)]then
for j=0,aB-1,M do
S=e[7+j+i*aB]if S~=0 then
if cG then
bd=bd%50+1
al(0,0,0,l(75*b[13][2][bd],255))else
h=b[20][S]al(h[1]*o,h[2]*o,h[3]*o)end
bn(p,G+j*aU,bJ,cz)end
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
