cP=""

R=180
bS=screen
aU=ipairs
c_=table
bL=input
w=math
C=w.max
l=w.min
A=w.abs
ak=w.floor
ceil=w.ceil
sqrt=w.sqrt
F=bL.getNumber
bj=bL.getBool
pi=w.pi
N=false
M=true
bk=string
function bt(c,k)return c[1]*k[2]-c[2]*k[1]end
function sub(c,k)return{(c[1]-k[1]),(c[2]-k[2])}end
function bB(c)return((c+R)%360)-R end
function sin(c)return w.sin(c/R*pi)end
function cos(c)return w.cos(c/R*pi)end
function tan(c)return w.tan(c/R*pi)end
function cO(c)return w.atan(c)*R/pi end
function aE(c)return w.atan(c[2],c[1])*R/pi end
function be(c,k,_)return l(C(k,c),_)end
function aC(c)return ak(c+.5)end
function by(c,k)return sqrt(((c[1]-k[1])^2)+((c[2]-k[2])^2))end
function bx(c)c=c-1
c=c|(c>>1)c=c|(c>>2)c=c|(c>>4)return c+1
end
b={}bl=1
ax=3
aR=N
am=M
g={{0,0},0,0}K=288
x=K//2
ag=128
u=ag//2
aP={}aV=400
cb=100
cM=0
au={}aY=32768
bU=3002
bv=0
aZ=0
aK=0
bs=1.2
J=52
O=tan(J)aM=u*bs*K/ag/O
V=1
bY={}for a=-x,x do bY[a]=aE({1,a/x*O})end
function bw(a)if a<aY then
local s,bp=b[7][a]bp=0<bt({s[3],s[4]},sub(g[1],s))and 8 or 7
bw(s[bp])bw(s[15-bp])else
aA[#aA+1]=a-aY
end
end
function aW(a,c)if a<aY then
s=b[7][a]return aW(s[0<bt({s[3],s[4]},sub(c,s))and 8 or 7],c)else
return a-aY
end
end
function ba(c)s=b[5][b[6][c][2]]return b[3][b[2][s[4]][s[5]+6]][6]end
function onTick()bn=0
for n=1,3 do
if bj(9)and(not aR)or not b[21]then
bc=property.getText(bl..cP)if bc~=cP then
a=1
z=cP
_=bk.sub(bc,a,a)while _~=cPdo
k=bk.byte(_)if k>64 or _==cPthen
z=(z..(k-65))+0
if V==1then
bX=z
if b[z]==cN then
b[z]={}end
V=2
elseif V==2then
cv=z
az=0
V=3
elseif V==3then
bA=z
V=4
else
if az==0then
az=cv
bA=bA-1
ai={}b[bX][#b[bX]+1]=ai
end
ai[#ai+1]=z
az=az-1
if C(az,bA)==0then
V=1
end
end
z=cP
else
z=z.._
end
a=a+1
_=bk.sub(bc,a,a)end
bl=bl+1
else
aR=M
end
end
end
if aR then
if F(9)>0 then
am=M
ax=F(9)end
if cb>0 and not am then
al={}au[#au+1]=al
aD=5
_=F(aD)while _~=0 do
W={}al[#al+1]=W
for a=0,8 do
W[a+1]=F(aD+a)end
aD=aD+9
_=F(aD)end
end
if bj(1)then
bV=0
bm=F(1)cb=F(3)aK=aK+1
bR=aK//10
if am then
for a=1,10 do
b[a]=b[a+10*ax]end
for a=1,#b[8]do
b[8][a][5]=b[8][a][5]/255
end
ax=ax+1
end
if F(2)>0 then
_=b[2][F(2)]if _ then
c=_[4]if c==3008 then
bM=_[5]==1
elseif c>3004 then
aV=C(aV+3*(_[4]-3006),1)elseif c>3000 then
bU=_[4]end
bV=F(2)end
end
if bj(3)and bm~=1 and bm~=3 then
av=.1
aZ=bm==5 and 5 or 3
else
aZ=aZ-1
if aZ<1then
av=0
end
end
for a=1,#au do
al=au[a]for n=1,#al do
W=al[n]_=W[1]if _>(2^15)then
_=b[8][_-(2^15)]_[1]=W[2]_[2]=W[3]elseif _<0 then
while-_>#b[1]do
b[1][#b[1]+1]=N
end
c_.remove(b[1],-_)else
if not b[1][_]then
b[1][_]={}end
_=b[1][_]for i=1,8 do
_[b[19][1][i]]=W[i+1]end
_[15]=0
_[7]=aW(#b[7],_)_[8]=ba(_[7])end
end
end
au={}for a=1,#b[6]do
aP[a]={}end
for a=1,#b[1]do
_=b[1][a]if _ then
if am then
_[7]=aW(#b[7],_)_[8]=ba(_[7])_[9]=b[8][_[8]][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
if _[4]==1 then
cp=a
end
end
bg=0
for n,d in aU({1,2,9})do
_[d]=_[d]+_[d+10]bg=bg+_[d+10]end
if bg~=0then
_[7]=aW(#b[7],_)_[8]=ba(_[7])end
_[15]=_[15]+1
_[20]=by(_,g[1])Q=b[16][_[6]]if Q~=nil then
if _[15]>=Q[2]and Q[2]~=-1 then
_[6]=Q[4]_[15]=0
end
end
aP[_[7]][#aP[_[7]]+1]=a
end
end
am=N
_=b[1][cp]g[1]={_[1],_[2]}g[2]=_[9]+41
g[3]=_[3]aA={}bw(#b[7])aT={}r={}aH={}aS={}ab={}U={}b_={}bq=K
for a=0,K-1 do
aT[a],ab[a],U[a]=#b[6]+2,u+1,-u
end
a=1
while a<=#aA and bq>0 do
_=b[6][aA[a]]aH[a]={}aS[a]={}r[a]={}b_[a]=aP[aA[a]]c_.sort(b_[a],function(c,k)return b[1][c][20]>b[1][k][20]end)for n=_[2],_[1]+_[2]-1 do
T=b[5][n]I=b[2][T[4]]bW,bE=b[4][T[1]],b[4][T[2]]aN,bH=sub(bW,g[1]),sub(bE,g[1])bG=aE(aN)D,aG=bB(bG-g[3]),bB(aE(bH)-g[3])if A(D)<90 or A(aG)<90 then
ae,ah=be(D,-J,J),be(aG,-J,J)if A(D)>=90 or A(aG)>=90 then
cl=bt(aN,bH)if A(D)>=90 then
if cl>0 then ae=-J else ae=J end
else
if cl<0 then ah=-J else ah=J end
end
end
p,m=aC(tan(ae)/O*x),aC(tan(ah)/O*x)if p~=m then
q,as=by(g[1],bW),by(g[1],bE)aO=T[3]+90
bN=aO-bG
cu=q*sin(bN)aQ=(q*cos(bN))if D~=ae then
q=aQ/cos(aO-(ae+g[3]))end
if aG~=ah then
as=aQ/cos(aO-(ah+g[3]))end
q,as=q*cos(ae),as*cos(ah)i=T[5]+6
cI=(p>m)if cI and I[i]~=0 then
ap=I[3]&4>0
if ap then
ac,X=b[8][b[3][I[6]][6]],b[8][b[3][I[7]][6]]end
ad=b[3][I[i]]cs={ad[3],ad[4],ad[5]}E,bQ,bF=b[8][ad[6]]for j,d in aU(cs)do
an=d>0
ar=M
if(an or(j==3 and not(bQ and bF)))and(j==3 or ap)then
bZ=N
ci=0
if j<3 then
bZ=j==1 and C(ac[4],X[4])==0
y,v=ac[3-j],X[3-j]ar=(y<v)~=(j==2)~=(i==6)and y~=v and ac~=X
y,v=l(y,v),C(y,v)if ar then
if j==1then
bQ=M
else
bF=M
ci=I[3]&16>0 and C(ac[2],X[2])-v or 0
end
end
else
if ap then
y,v=C(ac[1],X[1]),l(ac[2],X[2])ar=ac~=X
else
y,v=E[1],E[2]end
end
y,v=y-g[2],v-g[2]bO,bD=y*aM,v*aM
if(ar or an)and not bZ then
bo=T[6]-ad[1]if I[4]==48 then
bo=bo-aK
end
cE,cA=bO/q,bD/q
cF,cz=bO/as,bD/as
bT=0
aB=N
if an then
_=b[21][d][4]if(T[4]==bV or bU==I[4])and _>0then
d=_
end
ao=b[21][d][3]t=1
if(j==3 and I[3]&16>0)or(j==1 and I[3]&8==0)then
t=-1
end
end
for i=p,m,-1 do
cC=bY[i]aI=(aO-g[3])-cC
f=x-i
cg=N
if f>=0 and f<=K-1 then
if a<aT[f]then
aL=(i-p)/(m-p)H,G=(cE*(1-aL)+cF*aL),(cA*(1-aL)+cz*aL)if A(G+H)-(G-H)<ag then
if an then
if H~=G then
cg=M
bJ=aQ*tan(aI)L=l(((A(bJ)+A(aQ))//aV)+1,4)bu=l(bx(ak(L/cos(aI))),16)L=bx(L)bh=ak((C(bJ-cu,0)-bo)/(ao*bu))*bu
bK={f,u-H,u-G,d,bh,v-y,E[5],ad[2]+ci,M,ao*L,L,t,not aB,j==3 and ap}if bh>bT or(not aB)or i==m then
bT=bh-1+bu
aB=M
r[a][#r[a]+1]=bK
end
co=bK
end
end
if ar then
if j~=2 then
if G<ab[f]then
aS[a][#aS[a]+1]={f,C(G,U[f]),ab[f],E}end
if j==3then Y=G else Y=H end
if ab[f]>Y then ab[f]=Y end
end
if j~=1 then
if H>U[f]then
aH[a][#aH[a]+1]={f,U[f],l(H,ab[f]),E}end
if j==3then Y=H else Y=G end
if U[f]<Y then U[f]=Y end
end
if(ab[f]<=U[f])or(j==3 and(not ap)and an)then
aT[f]=a
bq=bq-1
end
end
end
end
end
if(not cg)and aB then
aB=N
r[a][#r[a]+1]=co
r[a][#r[a]][9]=N
end
end
if#r[a]>0 then
r[a][#r[a]][9]=N
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
function onDraw()aJ=bS
local bP,bd,aj,cL=aJ.drawTriangleF,aJ.drawRectF,aJ.setColor,aJ.drawText
bn=bn+1
cK={aH,aS}if bn<=1 then
if aR then
e=b[24][b[19][8][ax-3]]aa,aq=e[1],e[2]B=K/ceil(aa*O)cj=B*1
for a=0,ceil(aa*O),1 do
p=(aa/2-a-1+g[3]/90*aa)%aa
m=(p%1-1)*B
p=ak(p)*aq
for n=0,aq-1,1 do
S=e[5+n+p]h=b[20][S]aj(h[1],h[2],h[3])bd(a*B+m,n*B,cj,cj)end
end
for a=#r,1,-1 do
for n=1,#r[a]do
d=r[a][n]if d[9]or d[13]then
if d[9]then
P=r[a][n+1]else
P=d
end
e=b[21][d[4]]e=b[21][d[4]+(bR%e[5])]t=d[12]Z=l(t,0)f=d[1]m=P[1]ck=d[2-Z]ct=P[2-Z]i=d[3+Z]bC=P[3+Z]if not P[9]then m=m+1 end
o=l(d[7]+av,1)^2.2
cq=t*(d[2]-d[3])*d[10]/d[6]cx=t*(P[2]-P[3])*d[10]/P[6]ai=t>0 and l or C
br=0
while i*t<ck*t and(br<e[2]or not d[14])do
cm=ai(i+cq,ck)bb=ai(bC+cx,ct)S=e[7+((Z*d[11]+d[8]//e[3])%e[2])+e[2]*(d[5]%e[1])]h=b[20][S]if h then
aj(h[1]*o,h[2]*o,h[3]*o)bP(f,i,f,cm,m,bb)bP(f,i,m,bC,m,bb)end
i=cm
bC=bb
Z=Z+t
br=br+d[11]end
end
end
for c=1,2 do
_=cK[c]ch={}ay,at,bi=ag,-ag
for n,d in aU(_[a])do
ay=l(ay,d[2])at=C(at,d[3])bi=d
e=b[22][d[4][c+2]]if e and not bM then
o=l(d[4][5]+av,1)^2.2
h=b[20][e[5]]aj(h[1]*o,h[2]*o,h[3]*o)bS.drawLine(d[1],-d[2]+u,d[1],-d[3]+u)end
end
if bi and bM then
E=bi[4]cH=(E[c]-g[2])bz=cos(g[3])bf=sin(g[3])for aw=ak(ay+u),ceil(at+u)do
af=aM*cH/(u-aw)ca=bz*af-g[1][1]cc=bf*af-g[1][2]ce=-bf*af+ca
cf=bz*af+cc
cG=bf*af+ca
cw=-bz*af+cc
cn=(cG-ce)/K
cD=(cw-cf)/K
ch[aw]={cn,cD,ce,cf}end
for n,d in aU(_[a])do
if E[c+2]~=0 then
o=l(E[5]+av,1)^2.2
k=E[c+2]e=b[22][k]e=b[22][k+(bR%e[4])]f=d[1]bI=x-(x-f)*O
ay,at=ak(d[2]+u),ceil(d[3]+u)ao=e[3]for aw=ay,at do
aX=ch[aw]cr=(aX[3]+aX[1]*bI)//ao
cy=(aX[4]+aX[2]*bI)//ao
S=6+(cy%e[1])+e[1]*(cr%e[2])h=b[20][e[S]]if h then
aj(h[1]*o,h[2]*o,h[3]*o)bd(f,-aw+ag,1,1)end
end
end
end
end
end
for n=1,#b_[a]do
_=b[1][b_[a][n]]if _[6]~=0 then
aN=sub(_,g[1])q=_[20]if q>1 then
D=bB(aE(aN)-g[3])q=q*cos(D)if A(D)<90 then
p=x-aC(tan(D)/O*x)aI=aC((R+D+g[3]-_[3])/360*8)Q=b[16][_[6]][1]if Q~=0 and _[6]~=1 then
e=b[17][A(Q)][aI%8+1]t=e<0 and-1 or 1
e=A(e)if e>0 then
e=b[23][e]aa,aq=e[1],e[2]L=l(bx(q//aV+1),8)B=x/(O*q)aF=B*bs
H=u+(g[2]-_[9])/q*aM
G=H-e[5]*aF
m=p-t*e[4]*B
B,aF=B*e[3],aF*e[3]o=Q>0 and l(b[8][_[8]][5]+av,1)^2.2 or 1
cd=B*L
cJ=cd*bs
cB=_[4]and b[15][_[4]][23]&8>0
for i=0,aa-1,L do
p=m+i*B*t
if a<=aT[be(aC(p),0,K-1)]then
for j=0,aq-1,L do
S=e[7+j+i*aq]if S~=0 then
if cB then
bv=bv%50+1
aj(0,0,0,l(75*b[13][2][bv],255))else
h=b[20][S]aj(h[1]*o,h[2]*o,h[3]*o)end
bd(p,G+j*aF,cd,cJ)end
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
