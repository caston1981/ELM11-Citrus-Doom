cR=""

Q=180
cc=screen
aO=ipairs
bI=table
cl=input
w=math
z=w.max
v=w.min
A=w.abs
ad=w.floor
ceil=w.ceil
sqrt=w.sqrt
J=cl.getNumber
bu=cl.getBool
pi=w.pi
N=false
P=true
bs=string
function bt(b,k)return b[1]*k[2]-b[2]*k[1]end
function sub(b,k)return{(b[1]-k[1]),(b[2]-k[2])}end
function be(b)return((b+Q)%360)-Q end
function sin(b)return w.sin(b/Q*pi)end
function cos(b)return w.cos(b/Q*pi)end
function tan(b)return w.tan(b/Q*pi)end
function cO(b)return w.atan(b)*Q/pi end
function b_(b)return w.atan(b[2],b[1])*Q/pi end
function bE(b,k,_)return v(z(k,b),_)end
function aE(b)return ad(b+.5)end
function bm(b,k)return sqrt(((b[1]-k[1])^2)+((b[2]-k[2])^2))end
function bk(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
function aL(b)p=v(b/255+bN,1)^2.2 end
c={}bx=1
aB=3
aM=N
aD=P
g={{0,0},0,0}L=288
B=L//2
ae=128
s=ae//2
aW={}aT=400
cg=100
cN=0
ax={}aK=32768
bP=3002
bv=0
aP=0
aQ=0
bc=1.2
K=52
O=tan(K)aV=s*bc*L/ae/O
X=1
ch={}for a=-B,B do ch[a]=b_({1,a/B*O})end
function bh(a)if a<aK then
local u,bf=c[7][a]bf=0<bt({u[3],u[4]},sub(g[1],u))and 8 or 7
bh(u[bf])bh(u[15-bf])else
aA[#aA+1]=a-aK
end
end
function aU(a,b)if a<aK then
u=c[7][a]return aU(u[0<bt({u[3],u[4]},sub(b,u))and 8 or 7],b)else
return a-aK
end
end
function bq(b)u=c[5][c[6][b][2]]return c[3][c[2][u[4]][u[5]+6]][6]end
function onTick()bg=0
for n=1,3 do
if bu(9)and(not aM)or not c[21]then
bD=property.getText(bx..cR)if bD~=cR then
a=1
C=cR
_=bs.sub(bD,a,a)while _~=cRdo
k=bs.byte(_)if k>64 or _==cRthen
C=(C..(k-65))+0
if X==1then
bF=C
if c[C]==cQ then
c[C]={}end
X=2
elseif X==2then
ct=C
as=0
X=3
elseif X==3then
bo=C
X=4
else
if as==0then
as=ct
bo=bo-1
am={}c[bF][#c[bF]+1]=am
end
am[#am+1]=C
as=as-1
if z(as,bo)==0then
X=1
end
end
C=cR
else
C=C.._
end
a=a+1
_=bs.sub(bD,a,a)end
bx=bx+1
else
aM=P
end
end
end
if aM then
if J(9)>0 then
aD=P
aB=J(9)end
if cg>0 and not aD then
ak={}ax[#ax+1]=ak
av=5
_=J(av)while _~=0 do
ah={}ak[#ak+1]=ah
for a=0,8 do
ah[a+1]=J(av+a)end
av=av+9
_=J(av)end
end
if bu(1)then
bJ=0
bn=J(1)cg=J(3)aQ=aQ+1
ca=aQ//10
if aD then
for a=1,10 do
c[a]=c[a+10*aB]end
t=c[1]ai=c[8]aB=aB+1
end
if J(2)>0 then
_=c[2][J(2)]if _ then
b=_[4]if b==3008 then
cb=_[5]==1
elseif b>3004 then
aT=z(aT+3*(_[4]-3006),1)elseif b>3000 then
bP=_[4]end
bJ=J(2)end
end
if bu(3)and bn~=1 and bn~=3 then
bN=.1
aP=bn==5 and 5 or 3
else
aP=aP-1
if aP<1then
bN=0
end
end
for a=1,#ax do
ak=ax[a]for n=1,#ak do
ah=ak[n]_=ah[1]if _>(2^15)then
_=ai[_-(2^15)]for h=1,6 do
_[h]=ah[h+1]end
elseif _<0 then
while-_>#t do
t[#t+1]=N
end
bI.remove(t,-_)else
if not t[_]then
t[_]={}end
_=t[_]for h=1,8 do
_[c[19][1][h]]=ah[h+1]end
_[15]=0
_[7]=aU(#c[7],_)_[8]=bq(_[7])end
end
end
ax={}for a=1,#c[6]do
aW[a]={}end
for a=1,#t do
_=t[a]if _ then
if aD then
_[7]=aU(#c[7],_)_[8]=bq(_[7])_[9]=ai[_[8]][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
end
bl=0
for n,d in aO({1,2,9})do
_[d]=_[d]+_[d+10]bl=bl+_[d+10]end
if bl~=0then
_[7]=aU(#c[7],_)_[8]=bq(_[7])end
_[15]=_[15]+1
_[20]=bm(_,g[1])R=c[16][_[6]]if R~=nil then
if _[15]>=R[2]and R[2]~=-1 then
_[6]=R[4]_[15]=0
end
end
aW[_[7]][#aW[_[7]]+1]=a
end
end
aD=N
_=t[1]g[1]={_[1],_[2]}g[2]=_[9]+41
g[3]=_[3]aA={}bh(#c[7])aR={}q={}aS={}aG={}ac={}Z={}aY={}bz=L
for a=0,L-1 do
aR[a],ac[a],Z[a]=#c[6]+2,s+1,-s
end
a=1
while a<=#aA and bz>0 do
_=c[6][aA[a]]aS[a]={}aG[a]={}q[a]={}aY[a]=aW[aA[a]]bI.sort(aY[a],function(b,k)return t[b][20]>t[k][20]end)for n=_[2],_[1]+_[2]-1 do
V=c[5][n]I=c[2][V[4]]bW,bR=c[4][V[1]],c[4][V[2]]bb,bH=sub(bW,g[1]),sub(bR,g[1])ck=b_(bb)F,aI=be(ck-g[3]),be(b_(bH)-g[3])if A(F)<90 or A(aI)<90 then
al,aj=bE(F,-K,K),bE(aI,-K,K)if A(F)>=90 or A(aI)>=90 then
cf=bt(bb,bH)if A(F)>=90 then
if cf>0 then al=-K else al=K end
else
if cf<0 then aj=-K else aj=K end
end
end
l,m=aE(tan(al)/O*B),aE(tan(aj)/O*B)if l~=m then
o,aw=bm(g[1],bW),bm(g[1],bR)aJ=V[3]+90
cd=aJ-ck
cy=o*sin(cd)aZ=(o*cos(cd))if F~=al then
o=aZ/cos(aJ-(al+g[3]))end
if aI~=aj then
aw=aZ/cos(aJ-(aj+g[3]))end
o,aw=o*cos(al),aw*cos(aj)h=V[5]+6
cE=(l>m)if cE and I[h]~=0 then
aq=I[3]&4>0
if aq then
ab,U=ai[c[3][I[6]][6]],ai[c[3][I[7]][6]]end
ag=c[3][I[h]]cr={ag[3],ag[4],ag[5]}E,cn,cp=ai[ag[6]]for j,d in aO(cr)do
at=d>0
ao=P
if(at or(j==3 and not(cn and cp)))and(j==3 or aq)then
bM=N
bO=0
if j<3 then
bM=j==1 and z(ab[4],U[4])==0
D,x=ab[3-j],U[3-j]ao=(D<x)~=(j==2)~=(h==6)and D~=x and ab~=U
D,x=v(D,x),z(D,x)if ao then
if j==1then
cn=P
else
cp=P
bO=I[3]&16>0 and z(ab[2],U[2])-x or 0
end
end
else
if aq then
D,x=z(ab[1],U[1]),v(ab[2],U[2])ao=ab~=U
else
D,x=E[1],E[2]end
end
D,x=D-g[2],x-g[2]bX,bL=D*aV,x*aV
if(ao or at)and not bM then
bi=V[6]-ag[1]if I[4]==48 then
bi=bi-aQ
end
cK,cF=bX/o,bL/o
cu,cw=bX/aw,bL/aw
bU=0
ap=N
if at then
_=c[21][d][4]if(V[4]==bJ or bP==I[4])and _>0then
d=_
end
ay=c[21][d][3]r=1
if(j==3 and I[3]&16>0)or(j==1 and I[3]&8==0)then
r=-1
end
end
for h=l,m,-1 do
cL=ch[h]aH=(aJ-g[3])-cL
f=B-h
bG=N
if f>=0 and f<=L-1 then
if a<aR[f]then
aX=(h-l)/(m-l)G,H=(cK*(1-aX)+cu*aX),(cF*(1-aX)+cw*aX)if A(H+G)-(H-G)<ae then
if at then
if G~=H then
bG=P
bQ=aZ*tan(aH)M=v(((A(bQ)+A(aZ))//aT)+1,4)bp=v(bk(ad(M/cos(aH))),16)M=bk(M)bC=ad((z(bQ-cy,0)-bi)/(ay*bp))*bp
bS={f,s-G,s-H,d,bC,x-D,E[5],ag[2]+bO,P,ay*M,M,r,not ap,j==3 and aq}if bC>bU or(not ap)or h==m then
bU=bC-1+bp
ap=P
q[a][#q[a]+1]=bS
end
cM=bS
end
end
if ao then
if j~=2 then
if H<ac[f]then
aG[a][#aG[a]+1]={f,z(H,Z[f]),ac[f],E}end
if j==3then W=H else W=G end
if ac[f]>W then ac[f]=W end
end
if j~=1 then
if G>Z[f]then
aS[a][#aS[a]+1]={f,Z[f],v(G,ac[f]),E}end
if j==3then W=G else W=H end
if Z[f]<W then Z[f]=W end
end
if(ac[f]<=Z[f])or(j==3 and(not aq)and at)then
aR[f]=a
bz=bz-1
end
end
end
end
end
if(not bG)and ap then
ap=N
q[a][#q[a]+1]=cM
q[a][#q[a]][9]=N
end
end
if#q[a]>0 then
q[a][#q[a]][9]=N
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
function onDraw()ba=cc
local bK,bw,an,cP=ba.drawTriangleF,ba.drawRectF,ba.setColor,ba.drawText
bg=bg+1
cx={aS,aG}if bg<=1 then
if aM then
e=c[24][c[19][8][aB-3]]aa,az=e[1],e[2]y=L/ceil(aa*O)cj=y*1
for a=0,ceil(aa*O),1 do
l=(aa/2-a-1+g[3]/90*aa)%aa
m=(l%1-1)*y
l=ad(l)*az
for n=0,az-1,1 do
T=e[5+n+l]i=c[20][T]an(i[1],i[2],i[3])bw(a*y+m,n*y,cj,cj)end
end
for a=#q,1,-1 do
for n=1,#q[a]do
d=q[a][n]if d[9]or d[13]then
if d[9]then
S=q[a][n+1]else
S=d
end
e=c[21][d[4]]e=c[21][d[4]+(ca%e[5])]r=d[12]Y=v(r,0)f=d[1]m=S[1]ce=d[2-Y]cs=S[2-Y]h=d[3+Y]bB=S[3+Y]if not S[9]then m=m+1 end
aL(d[7])cI=r*(d[2]-d[3])*d[10]/d[6]cB=r*(S[2]-S[3])*d[10]/S[6]am=r>0 and v or z
bj=0
while h*r<ce*r and(bj<e[2]or not d[14])do
cm=am(h+cI,ce)by=am(bB+cB,cs)T=e[7+((Y*d[11]+d[8]//e[3])%e[2])+e[2]*(d[5]%e[1])]i=c[20][T]if i then
an(i[1]*p,i[2]*p,i[3]*p)bK(f,h,f,cm,m,by)bK(f,h,m,bB,m,by)end
h=cm
bB=by
Y=Y+r
bj=bj+d[11]end
end
end
for b=1,2 do
_=cx[b]co={}ar,aC,br=ae,-ae
for n,d in aO(_[a])do
ar=v(ar,d[2])aC=z(aC,d[3])br=d
e=c[22][d[4][b+2]]if e and not cb then
aL(d[4][5])i=c[20][e[5]]an(i[1]*p,i[2]*p,i[3]*p)cc.drawLine(d[1],s-d[2],d[1],ad(s-d[3]-1))end
end
if br and cb then
E=br[4]cD=(E[b]-g[2])bA=cos(g[3])bd=sin(g[3])for au=ad(ar+s),ceil(aC+s)do
af=aV*cD/(s-au)bZ=bA*af-g[1][1]bT=bd*af-g[1][2]bY=-bd*af+bZ
ci=bA*af+bT
cH=bd*af+bZ
cJ=-bA*af+bT
cG=(cH-bY)/L
cA=(cJ-ci)/L
co[au]={cG,cA,bY,ci}end
for n,d in aO(_[a])do
if E[b+2]~=0 then
aL(E[5])k=E[b+2]e=c[22][k]e=c[22][k+(ca%e[4])]f=d[1]c_=B-(B-f)*O
ar,aC=ad(d[2]+s),ceil(d[3]+s)ay=e[3]for au=ar,aC do
aF=co[au]cC=(aF[3]+aF[1]*c_)//ay
cq=(aF[4]+aF[2]*c_)//ay
T=6+(cq%e[1])+e[1]*(cC%e[2])i=c[20][e[T]]if i then
an(i[1]*p,i[2]*p,i[3]*p)bw(f,-au+ae,1,1)end
end
end
end
end
end
for n=1,#aY[a]do
_=t[aY[a][n]]if _[6]~=0 then
bb=sub(_,g[1])o=_[20]if o>1 then
F=be(b_(bb)-g[3])o=o*cos(F)if A(F)<90 then
l=B-aE(tan(F)/O*B)aH=aE((Q+F+g[3]-_[3])/360*8)R=c[16][_[6]][1]if R~=0 and _[6]~=1 then
e=c[17][A(R)][aH%8+1]r=e<0 and-1 or 1
e=A(e)if e>0 then
e=c[23][e]aa,az=e[1],e[2]M=v(bk(o//aT+1),8)y=B/(O*o)aN=y*bc
G=s+(g[2]-_[9])/o*aV
H=G-e[5]*aN
m=l-r*e[4]*y
y,aN=y*e[3],aN*e[3]aL(ai[_[8]][5])p=R>0 and p or 1
bV=y*M
cz=bV*bc
cv=_[4]and c[15][_[4]][23]&8>0
for h=0,aa-1,M do
l=m+h*y*r
if a<=aR[bE(aE(l),0,L-1)]then
for j=0,az-1,M do
T=e[7+j+h*az]if T~=0 then
if cv then
bv=bv%50+1
an(0,0,0,v(75*c[13][2][bv],255))else
i=c[20][T]an(i[1]*p,i[2]*p,i[3]*p)end
bw(l,H+j*aN,bV,cz)end
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
