cS=""

R=180
bY=screen
aK=ipairs
ch=table
bZ=input
w=math
A=w.max
v=w.min
y=w.abs
X=w.floor
ceil=w.ceil
sqrt=w.sqrt
G=bZ.getNumber
bb=bZ.getBool
pi=w.pi
O=false
Q=true
bc=string
function bu(b,l)return b[1]*l[2]-b[2]*l[1]end
function sub(b,l)return{(b[1]-l[1]),(b[2]-l[2])}end
function bt(b)return((b+R)%360)-R end
function sin(b)return w.sin(b/R*pi)end
function cos(b)return w.cos(b/R*pi)end
function tan(b)return w.tan(b/R*pi)end
function cP(b)return w.atan(b)*R/pi end
function aT(b)return w.atan(b[2],b[1])*R/pi end
function bq(b,l,_)return v(A(l,b),_)end
function au(b)return X(b+.5)end
function bC(b,l)return sqrt(((b[1]-l[1])^2)+((b[2]-l[2])^2))end
function bo(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
function aU(b)p=v(b/255+bO,1)^2.2 end
c={}bA=1
ao=3
aJ=O
at=Q
g={{0,0},0,0}M=288
D=M//2
al=128
u=al//2
aO={}aV=400
bT=100
cR=0
aB={}aI=32768
cj=3002
bn=0
aQ=0
aN=0
bj=1.2
L=52
N=tan(L)aH=u*bj*M/al/N
aa=1
bF={}for a=-D,D do bF[a]=aT({1,a/D*N})end
function bp(a)if a<aI then
local r,bl=c[7][a]bl=0<bu({r[3],r[4]},sub(g[1],r))and 8 or 7
bp(r[bl])bp(r[15-bl])else
aw[#aw+1]=a-aI
end
end
function ba(a,b)if a<aI then
r=c[7][a]return ba(r[0<bu({r[3],r[4]},sub(b,r))and 8 or 7],b)else
return a-aI
end
end
function bv(b)r=c[5][c[6][b][2]]return c[3][c[2][r[4]][r[5]+6]][6]end
function onTick()bB=0
for n=1,3 do
if bb(9)and(not aJ)or not c[21]then
bd=property.getText(bA)a=1
C=cS
_=bc.sub(bd,a,a)while _~=cSdo
ce=bc.byte(_)if ce>64then
C=(C..ce-65)+0
if aa==1then
bQ=C
c[C]=c[C]or{}elseif aa==2then
cu=C
ar=0
elseif aa==3then
bk=C
else
if ar==0then
ar=cu
bk=bk-1
bw={}c[bQ][#c[bQ]+1]=bw
end
bw[#bw+1]=C
ar=ar-1
aa=A(ar,bk)>0 and aa-1 or 0
end
aa=aa+1
C=cS
else
C=C.._
end
a=a+1
_=bc.sub(bd,a,a)end
bA=bA+1
aJ=bd==cS
end
end
if aJ then
if G(9)>0 then
at=Q
ao=G(9)end
if bT>0 and not at then
ak={}aB[#aB+1]=ak
aq=5
_=G(aq)while _~=0 do
am={}ak[#ak+1]=am
for a=0,8 do
am[a+1]=G(aq+a)end
aq=aq+9
_=G(aq)end
end
if bb(1)then
bX=0
bz=G(1)bT=G(3)aN=aN+1
ck=aN//10
if at then
for a=1,10 do
c[a]=c[a+10*ao]end
t=c[1]aj=c[8]ao=ao+1
end
if G(2)>0 then
_=c[2][G(2)]if _ then
b=_[4]if b>0 then
if b==3008 then
bU=_[5]==1
elseif b>3004 then
aV=A(aV+3*(_[4]-3006),1)elseif b>3000 then
cj=_[4]end
bX=G(2)if b<3000 and c[9][_[5]][7]==0then
_[8]=1
end
end
end
end
if bb(3)and bz~=1 and bz~=3 then
bO=.1
aQ=bz==5 and 5 or 3
else
aQ=aQ-1
if aQ<1then
bO=0
end
end
for a=1,#aB do
ak=aB[a]for n=1,#ak do
am=ak[n]_=am[1]if _>(2^15)then
_=aj[_-(2^15)]for h=1,6 do
_[h]=am[h+1]end
elseif _<0 then
while-_>#t do
t[#t+1]=O
end
ch.remove(t,-_)else
if not t[_]then
t[_]={}end
_=t[_]for h=1,8 do
_[c[19][1][h]]=am[h+1]end
_[15]=0
_[7]=ba(#c[7],_)_[8]=bv(_[7])end
end
end
aB={}for a=1,#c[6]do
aO[a]={}end
for a=1,#t do
_=t[a]if _ then
if at then
_[7]=ba(#c[7],_)_[8]=bv(_[7])_[9]=aj[_[8]][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
end
bf=0
for n,d in aK({1,2,9})do
_[d]=_[d]+_[d+10]bf=bf+_[d+10]end
if bf~=0then
_[7]=ba(#c[7],_)_[8]=bv(_[7])end
_[15]=_[15]+1
_[20]=bC(_,g[1])S=c[16][_[6]]if S~=nil then
if _[15]>=S[2]and S[2]~=-1 then
_[6]=S[4]_[15]=0
end
end
aO[_[7]][#aO[_[7]]+1]=a
end
end
at=O
_=t[1]g[1]={_[1],_[2]}g[2]=_[9]+41
g[3]=_[3]aw={}bp(#c[7])aM={}o={}aL={}aZ={}ac={}ab={}aG={}by=M
for a=0,M-1 do
aM[a],ac[a],ab[a]=#c[6]+2,u+1,-u
end
a=1
while a<=#aw and by>0 do
_=c[6][aw[a]]aL[a]={}aZ[a]={}o[a]={}aG[a]=aO[aw[a]]ch.sort(aG[a],function(b,l)return t[b][20]>t[l][20]end)for n=_[2],_[1]+_[2]-1 do
V=c[5][n]E=c[2][V[4]]ca,bV=c[4][V[1]],c[4][V[2]]b_,cf=sub(ca,g[1]),sub(bV,g[1])bH=aT(b_)F,aY=bt(bH-g[3]),bt(aT(cf)-g[3])if y(F)<90 or y(aY)<90 then
ai,ae=bq(F,-L,L),bq(aY,-L,L)if y(F)>=90 or y(aY)>=90 then
bM=bu(b_,cf)if y(F)>=90 then
if bM>0 then ai=-L else ai=L end
else
if bM<0 then ae=-L else ae=L end
end
end
k,m=au(tan(ai)/N*D),au(tan(ae)/N*D)if k~=m then
q,av=bC(g[1],ca),bC(g[1],bV)aP=V[3]+90
bS=aP-bH
cG=q*sin(bS)aS=(q*cos(bS))if F~=ai then
q=aS/cos(aP-(ai+g[3]))end
if aY~=ae then
av=aS/cos(aP-(ae+g[3]))end
q,av=q*cos(ai),av*cos(ae)h=V[5]+6
cx=(k>m)if cx and E[h]~=0 then
ay=E[3]&4>0
if ay then
ad,Y=aj[c[3][E[6]][6]],aj[c[3][E[7]][6]]end
ah=c[3][E[h]]cL={ah[3],ah[4],ah[5]}J,co,cq=aj[ah[6]]for j,d in aK(cL)do
an=d>0
aC=Q
if(an or(j==3 and not(co and cq)))and(j==3 or ay)then
cg=O
cn=0
if j<3 then
cg=j==1 and A(ad[4],Y[4])==0
z,x=ad[3-j],Y[3-j]aC=(z<x)~=(j==2)~=(h==6)and z~=x and ad~=Y
z,x=v(z,x),A(z,x)if aC then
if j==1then
co=Q
else
cq=Q
cn=E[3]&16>0 and A(ad[2],Y[2])-x or 0
end
end
else
if ay then
z,x=A(ad[1],Y[1]),v(ad[2],Y[2])aC=ad~=Y
else
z,x=J[1],J[2]end
end
z,x=z-g[2],x-g[2]cp,cm=z*aH,x*aH
if(aC or an)and not cg then
be=V[6]-ah[1]if E[4]==48 then
be=be-aN
end
cI,cw=cp/q,cm/q
cF,cs=cp/av,cm/av
bI=0
ax=O
if an then
_=c[21][d][4]if(V[4]==bX or cj==E[4]or E[8])and _>0then
d=_
end
ap=c[21][d][3]s=1
if(j==3 and E[3]&16>0)or(j==1 and E[3]&8==0)then
s=-1
end
end
for h=k,m,-1 do
cC=bF[h]aE=(aP-g[3])-cC
f=D-h
bG=O
if f>=0 and f<=M-1 then
if a<aM[f]then
aF=(h-k)/(m-k)I,H=(cI*(1-aF)+cF*aF),(cw*(1-aF)+cs*aF)if y(H+I)-(H-I)<al then
if an then
if I~=H then
bG=Q
bP=aS*tan(aE)K=v(((y(bP)+y(aS))//aV)+1,4)bD=v(bo(X(K/cos(aE))),16)K=bo(K)bi=X((A(bP-cG,0)-be)/(ap*bD))*bD
cb={f,u-I,u-H,d,bi,x-z,J[5],ah[2]+cn,Q,ap*K,K,s,not ax,j==3 and ay}if bi>bI or(not ax)or h==m then
bI=bi-1+bD
ax=Q
o[a][#o[a]+1]=cb
end
cJ=cb
end
end
if aC then
if j~=2 then
if H<ac[f]then
aZ[a][#aZ[a]+1]={f,A(H,ab[f]),ac[f],J}end
if j==3then W=H else W=I end
if ac[f]>W then ac[f]=W end
end
if j~=1 then
if I>ab[f]then
aL[a][#aL[a]+1]={f,ab[f],v(I,ac[f]),J}end
if j==3then W=I else W=H end
if ab[f]<W then ab[f]=W end
end
if(ac[f]<=ab[f])or(j==3 and(not ay)and an)then
aM[f]=a
by=by-1
end
end
end
end
end
if(not bG)and ax then
ax=O
o[a][#o[a]+1]=cJ
o[a][#o[a]][9]=O
end
end
if#o[a]>0 then
o[a][#o[a]][9]=O
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
function onDraw()aW=bY
local c_,bg,af,cQ=aW.drawTriangleF,aW.drawRectF,aW.setColor,aW.drawText
bB=bB+1
ct={aL,aZ}if bB<=1 then
if aJ then
e=c[24][c[19][8][ao-3]]Z,as=e[1],e[2]B=M/ceil(Z*N)bN=B*1
for a=0,ceil(Z*N),1 do
k=(Z/2-a-1+g[3]/90*Z)%Z
m=(k%1-1)*B
k=X(k)*as
for n=0,as-1,1 do
P=e[5+n+k]i=c[20][P]af(i[1],i[2],i[3])bg(a*B+m,n*B,bN,bN)end
end
for a=#o,1,-1 do
for n=1,#o[a]do
d=o[a][n]if d[9]or d[13]then
if d[9]then
T=o[a][n+1]else
T=d
end
e=c[21][d[4]]e=c[21][d[4]+(ck%e[5])]s=d[12]U=v(s,0)f=d[1]m=T[1]bW=d[2-U]cA=T[2-U]h=d[3+U]bE=T[3+U]if not T[9]then m=m+1 end
aU(d[7])cK=s*(d[2]-d[3])*d[10]/d[6]cD=s*(T[2]-T[3])*d[10]/T[6]bL=s>0 and v or A
bm=0
while h*s<bW*s and(bm<e[2]or not d[14])do
bR=bL(h+cK,bW)bs=bL(bE+cD,cA)P=e[7+((U*d[11]+d[8]//e[3])%e[2])+e[2]*(d[5]%e[1])]i=c[20][P]if i then
af(i[1]*p,i[2]*p,i[3]*p)c_(f,h,f,bR,m,bs)c_(f,h,m,bE,m,bs)end
h=bR
bE=bs
U=U+s
bm=bm+d[11]end
end
end
for b=1,2 do
_=ct[b]ci={}az,aD,br=al,-al
for n,d in aK(_[a])do
az=v(az,d[2])aD=A(aD,d[3])br=d
e=c[22][d[4][b+2]]if e and not bU then
aU(d[4][5])i=c[20][e[5]]af(i[1]*p,i[2]*p,i[3]*p)bY.drawLine(d[1],u-d[2],d[1],X(u-d[3]-1))end
end
if br and bU then
J=br[4]cv=(J[b]-g[2])bx=cos(g[3])bh=sin(g[3])for aA=X(az+u),ceil(aD+u)do
ag=aH*cv/(u-aA)cd=bx*ag-g[1][1]cl=bh*ag-g[1][2]cc=-bh*ag+cd
bJ=bx*ag+cl
cM=bh*ag+cd
cE=-bx*ag+cl
cO=(cM-cc)/M
cH=(cE-bJ)/M
ci[aA]={cO,cH,cc,bJ}end
for n,d in aK(_[a])do
if J[b+2]~=0 then
aU(J[5])l=J[b+2]e=c[22][l]e=c[22][l+(ck%e[4])]f=d[1]cr=D-(D-f)*N
az,aD=X(d[2]+u),ceil(d[3]+u)ap=e[3]for aA=az,aD do
aR=ci[aA]cz=(aR[3]+aR[1]*cr)//ap
cN=(aR[4]+aR[2]*cr)//ap
P=6+(cN%e[1])+e[1]*(cz%e[2])i=c[20][e[P]]if i then
af(i[1]*p,i[2]*p,i[3]*p)bg(f,-aA+al,1,1)end
end
end
end
end
end
for n=1,#aG[a]do
_=t[aG[a][n]]if _[6]~=0 then
b_=sub(_,g[1])q=_[20]if q>1 then
F=bt(aT(b_)-g[3])q=q*cos(F)if y(F)<90 then
k=D-au(tan(F)/N*D)aE=au((R+F+g[3]-_[3])/360*8)S=c[16][_[6]][1]if S~=0 and _[6]~=1 then
e=c[17][y(S)][aE%8+1]s=e<0 and-1 or 1
e=y(e)if e>0 then
e=c[23][e]Z,as=e[1],e[2]K=v(bo(q//aV+1),8)B=D/(N*q)aX=B*bj
I=u+(g[2]-_[9])/q*aH
H=I-e[5]*aX
m=k-s*e[4]*B
B,aX=B*e[3],aX*e[3]aU(aj[_[8]][5])p=S>0 and p or 1
bK=B*K
cB=bK*bj
cy=_[4]and c[15][_[4]][23]&8>0
for h=0,Z-1,K do
k=m+h*B*s
if a<=aM[bq(au(k),0,M-1)]then
for j=0,as-1,K do
P=e[7+j+h*as]if P~=0 then
if cy then
bn=bn%50+1
af(0,0,0,v(75*c[13][2][bn],255))else
i=c[20][P]af(i[1]*p,i[2]*p,i[3]*p)end
bg(k,H+j*aX,bK,cB)end
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
