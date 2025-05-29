cS=""

Q=180
bS=screen
aZ=ipairs
cl=table
bV=input
x=math
z=x.max
v=x.min
E=x.abs
W=x.floor
ceil=x.ceil
sqrt=x.sqrt
F=bV.getNumber
bB=bV.getBool
pi=x.pi
O=false
P=true
bE=string
function bm(b,m)return b[1]*m[2]-b[2]*m[1]end
function sub(b,m)return{(b[1]-m[1]),(b[2]-m[2])}end
function bf(b)return((b+Q)%360)-Q end
function sin(b)return x.sin(b/Q*pi)end
function cos(b)return x.cos(b/Q*pi)end
function tan(b)return x.tan(b/Q*pi)end
function cR(b)return x.atan(b)*Q/pi end
function aG(b)return x.atan(b[2],b[1])*Q/pi end
function bb(b,m,_)return v(z(m,b),_)end
function ax(b)return W(b+.5)end
function bj(b,m)return sqrt(((b[1]-m[1])^2)+((b[2]-m[2])^2))end
function bg(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
function aY(b)o=v(b/255+cj,1)^2.2 end
c={}bn=1
aC=3
aE=O
au=P
g={{0,0},0,0}M=288
D=M//2
al=128
r=al//2
aS={}aR=400
bF=100
cQ=0
aD={}aT=32768
bW=3002
bd=0
aH=0
aN=0
bA=1.2
K=52
L=tan(K)aJ=r*bA*M/al/L
aa=1
cf={}for a=-D,D do cf[a]=aG({1,a/D*L})end
function bC(a)if a<aT then
local u,bi=c[7][a]bi=0<bm({u[3],u[4]},sub(g[1],u))and 8 or 7
bC(u[bi])bC(u[15-bi])else
az[#az+1]=a-aT
end
end
function aF(a,b)if a<aT then
u=c[7][a]return aF(u[0<bm({u[3],u[4]},sub(b,u))and 8 or 7],b)else
return a-aT
end
end
function br(b)u=c[5][c[6][b][2]]return c[3][c[2][u[4]][u[5]+6]][6]end
function onTick()bo=0
for l=1,3 do
if bB(9)and(not aE)or not c[21]then
bl=property.getText(bn)a=1
B=cS
_=bE.sub(bl,a,a)while _~=cSdo
co=bE.byte(_)if co>64then
B=(B..co-65)+0
if aa==1then
ck=B
c[B]=c[B]or{}elseif aa==2then
cv=B
aw=0
elseif aa==3then
bp=B
else
if aw==0then
aw=cv
bp=bp-1
bD={}c[ck][#c[ck]+1]=bD
end
bD[#bD+1]=B
aw=aw-1
aa=z(aw,bp)>0 and aa-1 or 0
end
aa=aa+1
B=cS
else
B=B.._
end
a=a+1
_=bE.sub(bl,a,a)end
bn=bn+1
aE=bl==cS
end
end
if aE then
if F(9)>0 then
au=P
aC=F(9)end
if bF>0 and not au then
ak={}aD[#aD+1]=ak
ay=5
_=F(ay)while _~=0 do
ae={}ak[#ak+1]=ae
for a=0,8 do
ae[a+1]=F(ay+a)end
ay=ay+9
_=F(ay)end
end
if bB(1)then
bH=0
bh=F(1)bF=F(3)aN=aN+1
ci=aN//10
if au then
for a=1,10 do
c[a]=c[a+10*aC]end
s=c[1]am=c[8]aC=aC+1
end
if F(2)>0 then
_=c[2][F(2)]if _ then
b=_[4]if b>0 then
if b==3008 then
bN=_[5]==1
elseif b>3004 then
aR=z(aR+3*(_[4]-3006),1)elseif b>3000 then
bW=_[4]end
bH=F(2)if b<3000 and c[9][_[5]][7]==0then
_[8]=1
end
end
end
end
if bB(3)and bh~=1 and bh~=3 then
cj=.1
aH=bh==5 and 5 or 3
else
aH=aH-1
if aH<1then
cj=0
end
end
for a=1,#aD do
ak=aD[a]for l=1,#ak do
ae=ak[l]_=ae[1]if _>(2^15)then
_=am[_-(2^15)]for h=1,6 do
_[h]=ae[h+1]end
elseif _<0 then
while-_>#s do
s[#s+1]=O
end
cl.remove(s,-_)else
if not s[_]then
s[_]={}end
_=s[_]for h=1,8 do
_[c[19][1][h]]=ae[h+1]end
_[15]=0
_[7]=aF(#c[7],_)_[8]=br(_[7])end
end
end
aD={}for a=1,#c[6]do
aS[a]={}end
for a=1,#s do
_=s[a]if _ then
if au then
_[7]=aF(#c[7],_)_[8]=br(_[7])_[9]=am[_[8]][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
end
bw=0
for l,d in aZ({1,2,9})do
_[d]=_[d]+_[d+10]bw=bw+_[d+10]end
if bw~=0then
_[7]=aF(#c[7],_)_[8]=br(_[7])end
_[15]=_[15]+1
_[20]=bj(_,g[1])R=c[16][_[6]]if R~=nil then
if _[15]>=R[2]and R[2]~=-1 then
_[6]=R[4]_[15]=0
end
end
aS[_[7]][#aS[_[7]]+1]=a
end
end
au=O
_=s[1]g[1]={_[1],_[2]}g[2]=_[9]+41
g[3]=_[3]az={}bC(#c[7])aL={}p={}aX={}aQ={}V={}Y={}ba={}be=M
for a=0,M-1 do
aL[a],V[a],Y[a]=#c[6]+2,r+1,-r
end
a=1
while a<=#az and be>0 do
_=c[6][az[a]]aX[a]={}aQ[a]={}p[a]={}ba[a]=aS[az[a]]cl.sort(ba[a],function(b,m)return s[b][20]>s[m][20]end)for l=_[2],_[1]+_[2]-1 do
ad=c[5][l]y=c[2][ad[4]]bM,bG=c[4][ad[1]],c[4][ad[2]]aU,bU=sub(bM,g[1]),sub(bG,g[1])bY=aG(aU)J,aP=bf(bY-g[3]),bf(aG(bU)-g[3])if E(J)<90 or E(aP)<90 then
aj,af=bb(J,-K,K),bb(aP,-K,K)if E(J)>=90 or E(aP)>=90 then
cq=bm(aU,bU)if E(J)>=90 then
if cq>0 then aj=-K else aj=K end
else
if cq<0 then af=-K else af=K end
end
end
n,k=ax(tan(aj)/L*D),ax(tan(af)/L*D)if n~=k then
q,ao=bj(g[1],bM),bj(g[1],bG)b_=ad[3]+90
bI=b_-bY
cJ=q*sin(bI)aI=(q*cos(bI))if J~=aj then
q=aI/cos(b_-(aj+g[3]))end
if aP~=af then
ao=aI/cos(b_-(af+g[3]))end
q,ao=q*cos(aj),ao*cos(af)h=ad[5]+6
cx=(n>k)if cx and y[h]~=0 then
aq=y[3]&4>0
if aq then
ac,Z=am[c[3][y[6]][6]],am[c[3][y[7]][6]]end
ai=c[3][y[h]]cL={ai[3],ai[4],ai[5]}G,bQ,cn=am[ai[6]]for j,d in aZ(cL)do
aB=d>0
at=P
if(aB or(j==3 and not(bQ and cn)))and(j==3 or aq)then
cm=O
c_=0
if j<3 then
cm=j==1 and z(ac[4],Z[4])==0
A,w=ac[3-j],Z[3-j]at=(A<w)~=(j==2)~=(h==6)and A~=w and ac~=Z
A,w=v(A,w),z(A,w)if at then
if j==1then
bQ=P
else
cn=P
c_=y[3]&16>0 and z(ac[2],Z[2])-w or 0
end
end
else
if aq then
A,w=z(ac[1],Z[1]),v(ac[2],Z[2])at=ac~=Z
else
A,w=G[1],G[2]end
end
A,w=A-g[2],w-g[2]bL,cr=A*aJ,w*aJ
if(at or aB)and not cm then
bu=ad[6]-ai[1]if y[4]==48 then
bu=bu-aN
end
cw,cz=bL/q,cr/q
cD,ct=bL/ao,cr/ao
ca=0
ap=O
if aB then
_=c[21][d][4]if(ad[4]==bH or bW==y[4]or y[8])and _>0then
d=_
end
aA=c[21][d][3]t=1
if(j==3 and y[3]&16>0)or(j==1 and y[3]&8==0)then
t=-1
end
end
for h=n,k,-1 do
cH=cf[h]aK=(b_-g[3])-cH
f=D-h
cb=O
if f>=0 and f<=M-1 then
if a<aL[f]then
aO=(h-n)/(k-n)H,I=(cw*(1-aO)+cD*aO),(cz*(1-aO)+ct*aO)if E(I+H)-(I-H)<al then
if aB then
if H~=I then
cb=P
bZ=aI*tan(aK)N=v(((E(bZ)+E(aI))//aR)+1,4)bq=v(bg(W(N/cos(aK))),16)N=bg(N)bk=W((z(bZ-cJ,0)-bu)/(aA*bq))*bq
ch={f,r-H,r-I,d,bk,w-A,G[5],ai[2]+c_,P,aA*N,N,t,not ap,j==3 and aq}if bk>ca or(not ap)or h==k then
ca=bk-1+bq
ap=P
p[a][#p[a]+1]=ch
end
cE=ch
end
end
if at then
if j~=2 then
if I<V[f]then
aQ[a][#aQ[a]+1]={f,z(I,Y[f]),V[f],G}end
if j==3then U=I else U=H end
if V[f]>U then V[f]=U end
end
if j~=1 then
if H>Y[f]then
aX[a][#aX[a]+1]={f,Y[f],v(H,V[f]),G}end
if j==3then U=H else U=I end
if Y[f]<U then Y[f]=U end
end
if(V[f]<=Y[f])or(j==3 and(not aq)and aB)then
aL[f]=a
be=be-1
end
end
end
end
end
if(not cb)and ap then
ap=O
p[a][#p[a]+1]=cE
p[a][#p[a]][9]=O
end
end
if#p[a]>0 then
p[a][#p[a]][9]=O
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
function onDraw()aM=bS
local bJ,bt,ah,cP=aM.drawTriangleF,aM.drawRectF,aM.setColor,aM.drawText
cF={aX,aQ}if aE then
e=c[24][c[19][8][aC-3]]ab,an=e[1],e[2]C=M/ceil(ab*L)ce=C*1
for a=0,ceil(ab*L),1 do
n=(ab/2-a-1+g[3]/90*ab)%ab
k=(n%1-1)*C
n=W(n)*an
for l=0,an-1,1 do
T=e[5+l+n]i=c[20][T]ah(i[1],i[2],i[3])bt(a*C+k,l*C,ce,ce)end
end
for a=#p,1,-1 do
for l=1,#p[a]do
d=p[a][l]if d[9]or d[13]then
if d[9]then
S=p[a][l+1]else
S=d
end
e=c[21][d[4]]e=c[21][d[4]+(ci%e[5])]t=d[12]X=v(t,0)f=d[1]k=S[1]bP=d[2-X]cG=S[2-X]h=d[3+X]bv=S[3+X]if not S[9]then k=k+1 end
aY(d[7])cs=t*(d[2]-d[3])*d[10]/d[6]cN=t*(S[2]-S[3])*d[10]/S[6]bO=t>0 and v or z
bc=0
while h*t<bP*t and(bc<e[2]or not d[14])do
cd=bO(h+cs,bP)bz=bO(bv+cN,cG)T=e[7+((X*d[11]+d[8]//e[3])%e[2])+e[2]*(d[5]%e[1])]i=c[20][T]if i then
ah(i[1]*o,i[2]*o,i[3]*o)bJ(f,h,f,cd,k,bz)bJ(f,h,k,bv,k,bz)end
h=cd
bv=bz
X=X+t
bc=bc+d[11]end
end
end
for b=1,2 do
_=cF[b]cp={}as,av,bs=al,-al
for l,d in aZ(_[a])do
as=v(as,d[2])av=z(av,d[3])bs=d
e=c[22][d[4][b+2]]if e and not bN then
aY(d[4][5])i=c[20][e[5]]ah(i[1]*o,i[2]*o,i[3]*o)bS.drawLine(d[1],r-d[2],d[1],W(r-d[3]-1))end
end
if bs and bN then
G=bs[4]cC=(G[b]-g[2])bx=cos(g[3])by=sin(g[3])for ar=W(as+r),ceil(av+r)do
ag=aJ*cC/(r-ar)cc=bx*ag-g[1][1]bR=by*ag-g[1][2]bT=-by*ag+cc
bX=bx*ag+bR
cy=by*ag+cc
cO=-bx*ag+bR
cu=(cy-bT)/M
cM=(cO-bX)/M
cp[ar]={cu,cM,bT,bX}end
for l,d in aZ(_[a])do
if G[b+2]~=0 then
aY(G[5])m=G[b+2]e=c[22][m]e=c[22][m+(ci%e[4])]f=d[1]cg=D-(D-f)*L
as,av=W(d[2]+r),ceil(d[3]+r)aA=e[3]for ar=as,av do
aV=cp[ar]cI=(aV[3]+aV[1]*cg)//aA
cB=(aV[4]+aV[2]*cg)//aA
T=6+(cB%e[1])+e[1]*(cI%e[2])i=c[20][e[T]]if i then
ah(i[1]*o,i[2]*o,i[3]*o)bt(f,-ar+al,1,1)end
end
end
end
end
end
for l=1,#ba[a]do
_=s[ba[a][l]]if _[6]~=0 then
aU=sub(_,g[1])q=_[20]if q>1 then
J=bf(aG(aU)-g[3])q=q*cos(J)if E(J)<90 then
n=D-ax(tan(J)/L*D)aK=ax((Q+J+g[3]-_[3]+bo*4)/360*8)R=c[16][_[6]][1]if R~=0 and _[6]~=1 then
e=c[17][E(R)][aK%8+1]t=e<0 and-1 or 1
e=E(e)if e>0 then
e=c[23][e]ab,an=e[1],e[2]N=v(bg(q//aR+1),8)C=D/(L*q)aW=C*bA
H=r+(g[2]-_[9])/q*aJ
I=H-e[5]*aW
k=n-t*e[4]*C
C,aW=C*e[3],aW*e[3]aY(am[_[8]][5])o=R>0 and o or 1
bK=C*N
cA=bK*bA
cK=_[4]and c[15][_[4]][23]&8>0
for h=0,ab-1,N do
n=k+h*C*t
if a<=aL[bb(ax(n),0,M-1)]then
for j=0,an-1,N do
T=e[7+j+h*an]if T~=0 then
if cK then
bd=bd%50+1
ah(0,0,0,v(75*c[13][2][bd],255))else
i=c[20][T]ah(i[1]*o,i[2]*o,i[3]*o)end
bt(n,I+j*aW,bK,cA)end
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
bo=bo+1
end
