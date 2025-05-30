cT=""

P=180
ca=screen
ba=ipairs
bI=table
cr=input
v=math
z=v.max
w=v.min
E=v.abs
Y=v.floor
ceil=v.ceil
sqrt=v.sqrt
I=cr.getNumber
bs=cr.getBool
pi=v.pi
N=false
Q=true
br=string
function bz(b,k)return b[1]*k[2]-b[2]*k[1]end
function sub(b,k)return{(b[1]-k[1]),(b[2]-k[2])}end
function by(b)return((b+P)%360)-P end
function sin(b)return v.sin(b/P*pi)end
function cos(b)return v.cos(b/P*pi)end
function tan(b)return v.tan(b/P*pi)end
function cR(b)return v.atan(b)*P/pi end
function aZ(b)return v.atan(b[2],b[1])*P/pi end
function bc(b,k,_)return w(z(k,b),_)end
function aA(b)return Y(b+.5)end
function bC(b,k)return sqrt(((b[1]-k[1])^2)+((b[2]-k[2])^2))end
function bk(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
function aS(b)o=w(b/255+bX,1)^2.2 end
c={}bB=1
aD=3
aO=N
ao=Q
g={{0,0},0,0}L=288
D=L//2
af=128
r=af//2
aJ={}aK=400
bK=100
cS=0
ax={}aV=32768
ck=3002
bj=0
aG=0
aL=0
bA=1.2
M=52
K=tan(M)aI=r*bA*L/af/K
Z=1
bV={}for a=-D,D do bV[a]=aZ({1,a/D*K})end
function bf(a)if a<aV then
local s,bl=c[7][a]bl=0<bz({s[3],s[4]},sub(g[1],s))and 8 or 7
bf(s[bl])bf(s[15-bl])else
ap[#ap+1]=a-aV
end
end
function aR(a,b)if a<aV then
s=c[7][a]return aR(s[0<bz({s[3],s[4]},sub(b,s))and 8 or 7],b)else
return a-aV
end
end
function bo(b)s=c[5][c[6][b][2]]return c[3][c[2][s[4]][s[5]+6]][6]end
function onTick()be=0
for l=1,3 do
if bs(9)and(not aO)or not c[21]then
bu=property.getText(bB)a=1
A=cT
_=br.sub(bu,a,a)while _~=cTdo
cl=br.byte(_)if cl>64then
A=(A..cl-65)+0
if Z==1then
cs=A
c[A]=c[A]or{}elseif Z==2then
cE=A
au=0
elseif Z==3then
bD=A
else
if au==0then
au=cE
bD=bD-1
bi={}c[cs][#c[cs]+1]=bi
end
bi[#bi+1]=A
au=au-1
Z=z(au,bD)>0 and Z-1 or 0
end
Z=Z+1
A=cT
else
A=A.._
end
a=a+1
_=br.sub(bu,a,a)end
bB=bB+1
aO=bu==cT
end
end
if aO then
if I(9)>0 then
ao=Q
aD=I(9)end
if bK>0 and not ao then
ag={}ax[#ax+1]=ag
aC=5
_=I(aC)while _~=0 do
al={}ag[#ag+1]=al
for a=0,8 do
al[a+1]=I(aC+a)end
aC=aC+9
_=I(aC)end
end
if bs(1)then
bF=0
bv=I(1)bK=I(3)aL=aL+1
bS=aL//10
if ao then
for a=1,10 do
c[a]=c[a+10*aD]end
u=c[1]ak=c[8]aD=aD+1
end
if I(2)>0 then
_=c[2][I(2)]if _ then
b=_[4]if b>0 then
if b==3008 then
bP=_[5]==1
elseif b>3004 then
aK=z(aK+3*(_[4]-3006),1)elseif b>3000 then
ck=_[4]end
bF=I(2)if b<3000 and c[9][_[5]][7]==0then
_[8]=1
end
end
end
end
if bs(3)and bv~=1 and bv~=3 then
bX=.1
aG=bv==5 and 5 or 3
else
aG=aG-1
if aG<1then
bX=0
end
end
for a=1,#ax do
ag=ax[a]for l=1,#ag do
al=ag[l]_=al[1]if _>(2^15)then
_=ak[_-(2^15)]for h=1,6 do
_[h]=al[h+1]end
elseif _<0 then
while-_>#u do
u[#u+1]=N
end
bI.remove(u,-_)else
if not u[_]then
u[_]={}end
_=u[_]for h=1,8 do
_[c[19][1][h]]=al[h+1]end
_[15]=0
_[7]=aR(#c[7],_)_[8]=bo(_[7])end
end
end
ax={}for a=1,#c[6]do
aJ[a]={}end
for a=1,#u do
_=u[a]if _ then
if ao then
_[7]=aR(#c[7],_)_[8]=bo(_[7])_[9]=ak[_[8]][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
end
bb=0
for l,d in ba({1,2,9})do
_[d]=_[d]+_[d+10]bb=bb+_[d+10]end
if bb~=0then
_[7]=aR(#c[7],_)_[8]=bo(_[7])end
_[15]=_[15]+1
_[20]=bC(_,g[1])R=c[16][_[6]]if R~=nil then
if _[15]>=R[2]and R[2]~=-1 then
_[6]=R[4]_[15]=0
end
end
aJ[_[7]][#aJ[_[7]]+1]=a
end
end
ao=N
_=u[1]g[1]={_[1],_[2]}g[2]=_[9]+41
g[3]=_[3]ap={}bf(#c[7])aW={}p={}aP={}aY={}ab={}V={}aN={}bn=L
for a=0,L-1 do
aW[a],ab[a],V[a]=#c[6]+2,r+1,-r
end
a=1
while a<=#ap and bn>0 do
_=c[6][ap[a]]aP[a]={}aY[a]={}p[a]={}aN[a]=aJ[ap[a]]bI.sort(aN[a],function(b,k)return u[b][20]>u[k][20]end)for l=_[2],_[1]+_[2]-1 do
ac=c[5][l]y=c[2][ac[4]]bU,bW=c[4][ac[1]],c[4][ac[2]]b_,cf=sub(bU,g[1]),sub(bW,g[1])cp=aZ(b_)H,aF=by(cp-g[3]),by(aZ(cf)-g[3])if E(H)<90 or E(aF)<90 then
ae,ai=bc(H,-M,M),bc(aF,-M,M)if E(H)>=90 or E(aF)>=90 then
bL=bz(b_,cf)if E(H)>=90 then
if bL>0 then ae=-M else ae=M end
else
if bL<0 then ai=-M else ai=M end
end
end
n,m=aA(tan(ae)/K*D),aA(tan(ai)/K*D)if n~=m then
q,aw=bC(g[1],bU),bC(g[1],bW)aU=ac[3]+90
bG=aU-cp
cN=q*sin(bG)aX=(q*cos(bG))if H~=ae then
q=aX/cos(aU-(ae+g[3]))end
if aF~=ai then
aw=aX/cos(aU-(ai+g[3]))end
q,aw=q*cos(ae),aw*cos(ai)h=ac[5]+6
cM=(n>m)if cM and y[h]~=0 then
at=y[3]&4>0
if at then
U,X=ak[c[3][y[6]][6]],ak[c[3][y[7]][6]]end
aj=c[3][y[h]]cO={aj[3],aj[4],aj[5]}J,ch,bY=ak[aj[6]]for j,d in ba(cO)do
aB=d>0
ar=Q
if(aB or(j==3 and not(ch and bY)))and(j==3 or at)then
bQ=N
bO=0
if j<3 then
bQ=j==1 and z(U[4],X[4])==0
C,x=U[3-j],X[3-j]ar=(C<x)~=(j==2)~=(h==6)and C~=x and U~=X
C,x=w(C,x),z(C,x)if ar then
if j==1then
ch=Q
else
bY=Q
bO=y[3]&16>0 and z(U[2],X[2])-x or 0
end
end
else
if at then
C,x=z(U[1],X[1]),w(U[2],X[2])ar=U~=X
else
C,x=J[1],J[2]end
end
C,x=C-g[2],x-g[2]bH,cj=C*aI,x*aI
if(ar or aB)and not bQ then
bg=ac[6]-aj[1]if y[4]==48 then
bg=bg-aL
end
cD,cC=bH/q,cj/q
cI,ct=bH/aw,cj/aw
bJ=0
aq=N
if aB then
_=c[21][d][4]if(ac[4]==bF or ck==y[4]or y[8])and _>0then
d=_
end
az=c[21][d][3]t=1
if(j==3 and y[3]&16>0)or(j==1 and y[3]&8==0)then
t=-1
end
end
for h=n,m,-1 do
cw=bV[h]aT=(aU-g[3])-cw
f=D-h
bM=N
if f>=0 and f<=L-1 then
if a<aW[f]then
aE=(h-n)/(m-n)G,F=(cD*(1-aE)+cI*aE),(cC*(1-aE)+ct*aE)if E(F+G)-(F-G)<af then
if aB then
if G~=F then
bM=Q
co=aX*tan(aT)as=w(((E(co)+E(aX))//aK)+1,8)bd=w(bk(Y(as/cos(aT))),16)as=bk(as)cn=Y((z(co-cN,0)-bg)/(az*bd))cm=cn*bd
cd={f,r-G,r-F,d,cn,x-C,J[5],aj[2]+bO,Q,az*as,as,t,not aq,j==3 and at}if cm>bJ or(not aq)or h==m then
bJ=cm-1+bd
aq=Q
p[a][#p[a]+1]=cd
end
cu=cd
end
end
if ar then
if j~=2 then
if F<ab[f]then
aY[a][#aY[a]+1]={f,z(F,V[f]),ab[f],J}end
if j==3then aa=F else aa=G end
if ab[f]>aa then ab[f]=aa end
end
if j~=1 then
if G>V[f]then
aP[a][#aP[a]+1]={f,V[f],w(G,ab[f]),J}end
if j==3then aa=G else aa=F end
if V[f]<aa then V[f]=aa end
end
if(ab[f]<=V[f])or(j==3 and(not at)and aB)then
aW[f]=a
bn=bn-1
end
end
end
end
end
if(not bM)and aq then
aq=N
p[a][#p[a]+1]=cu
p[a][#p[a]][9]=N
end
end
if#p[a]>0 then
p[a][#p[a]][9]=N
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
function onDraw()aM=ca
local cc,bt,ad,cQ=aM.drawTriangleF,aM.drawRectF,aM.setColor,aM.drawText
cH={aP,aY}if aO then
e=c[24][c[19][8][aD-3]]W,am=e[1],e[2]B=L/ceil(W*K)cq=B*1
for a=0,ceil(W*K),1 do
n=(W/2-a-1+g[3]/90*W)%W
m=(n%1-1)*B
n=Y(n)*am
for l=0,am-1,1 do
O=e[5+l+n]i=c[20][O]ad(i[1],i[2],i[3])bt(a*B+m,l*B,cq,cq)end
end
for a=#p,1,-1 do
for l=1,#p[a]do
d=p[a][l]if d[9]or d[13]then
if d[9]then
S=p[a][l+1]else
S=d
end
e=c[21][d[4]]e=c[21][d[4]+(bS%e[5])*c[19][3][2]+c[19][12][d[11]]]t=d[12]T=w(t,0)f=d[1]m=S[1]bR=d[2-T]cJ=S[2-T]h=d[3+T]bh=S[3+T]if not S[9]then m=m+1 end
aS(d[7])cK=t*(d[2]-d[3])*e[3]/d[6]cx=t*(S[2]-S[3])*e[3]/S[6]bE=t>0 and w or z
bq=0
while h*t<bR*t and(bq<e[2]or not d[14])do
c_=bE(h+cK,bR)bm=bE(bh+cx,cJ)O=e[7+((T+d[8]//e[3])%e[2])+e[2]*((d[5])%e[1])]i=c[20][O]if i then
ad(i[1]*o,i[2]*o,i[3]*o)cc(f,h,f,c_,m,bm)cc(f,h,m,bh,m,bm)end
h=c_
bh=bm
T=T+t
bq=bq+1
end
end
end
for b=1,2 do
_=cH[b]cg={}av,an,bx=af,-af
for l,d in ba(_[a])do
av=w(av,d[2])an=z(an,d[3])bx=d
e=c[22][d[4][b+2]]if e and not bP then
aS(d[4][5])i=c[20][e[5]]ad(i[1]*o,i[2]*o,i[3]*o)ca.drawLine(d[1],r-d[2],d[1],Y(r-d[3]-1))end
end
if bx and bP then
J=bx[4]cz=(J[b]-g[2])bw=cos(g[3])bp=sin(g[3])for ay=Y(av+r),ceil(an+r)do
ah=aI*cz/(r-ay)bN=bw*ah-g[1][1]bZ=bp*ah-g[1][2]ci=-bp*ah+bN
ce=bw*ah+bZ
cP=bp*ah+bN
cF=-bw*ah+bZ
cG=(cP-ci)/L
cL=(cF-ce)/L
cg[ay]={cG,cL,ci,ce}end
for l,d in ba(_[a])do
if J[b+2]~=0 then
aS(J[5])k=J[b+2]e=c[22][k]e=c[22][k+(bS%e[4])]f=d[1]cb=D-(D-f)*K
av,an=Y(d[2]+r),ceil(d[3]+r)az=e[3]for ay=av,an do
aQ=cg[ay]cB=(aQ[3]+aQ[1]*cb)//az
cy=(aQ[4]+aQ[2]*cb)//az
O=6+(cy%e[1])+e[1]*(cB%e[2])i=c[20][e[O]]if i then
ad(i[1]*o,i[2]*o,i[3]*o)bt(f,-ay+af,1,1)end
end
end
end
end
end
for l=1,#aN[a]do
_=u[aN[a][l]]if _[6]~=0 then
b_=sub(_,g[1])q=_[20]if q>1 then
H=by(aZ(b_)-g[3])q=q*cos(H)if E(H)<90 then
n=D-aA(tan(H)/K*D)aT=aA((P+H+g[3]-_[3]+be*4)/360*8)R=c[16][_[6]][1]if R~=0 and _[6]~=1 then
e=c[17][E(R)][aT%8+1]t=e<0 and-1 or 1
e=E(e)if e>0 then
e=c[23][e+c[19][12][w(bk(q//aK+1),8)]]W,am=e[1],e[2]B=D/(K*q)aH=B*bA
G=r+(g[2]-_[9])/q*aI
F=G-e[5]*aH
m=n-t*e[4]*B
B,aH=B*e[3],aH*e[3]aS(ak[_[8]][5])o=R>0 and o or 1
bT=B
cA=bT*bA
cv=_[4]and c[15][_[4]][23]&8>0
for h=0,W-1 do
n=m+h*B*t
if a<=aW[bc(aA(n),0,L-1)]then
for j=0,am-1 do
O=e[7+j+h*am]if O~=0 then
if cv then
bj=bj%50+1
ad(0,0,0,w(75*c[13][2][bj],255))else
i=c[20][O]ad(i[1]*o,i[2]*o,i[3]*o)end
bt(n,F+j*aH,bT,cA)end
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
