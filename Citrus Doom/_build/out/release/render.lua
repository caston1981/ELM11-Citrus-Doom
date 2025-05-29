cS=""

S=180
cc=screen
aO=ipairs
bH=table
cq=input
x=math
C=x.max
v=x.min
B=x.abs
ad=x.floor
ceil=x.ceil
sqrt=x.sqrt
J=cq.getNumber
bm=cq.getBool
pi=x.pi
M=false
R=true
br=string
function bx(b,m)return b[1]*m[2]-b[2]*m[1]end
function sub(b,m)return{(b[1]-m[1]),(b[2]-m[2])}end
function bb(b)return((b+S)%360)-S end
function sin(b)return x.sin(b/S*pi)end
function cos(b)return x.cos(b/S*pi)end
function tan(b)return x.tan(b/S*pi)end
function cQ(b)return x.atan(b)*S/pi end
function aT(b)return x.atan(b[2],b[1])*S/pi end
function bl(b,m,_)return v(C(m,b),_)end
function aw(b)return ad(b+.5)end
function bE(b,m)return sqrt(((b[1]-m[1])^2)+((b[2]-m[2])^2))end
function bj(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
function aJ(b)q=v(b/255+bT,1)^2.2 end
c={}bq=1
aA=3
aV=M
ar=R
f={{0,0},0,0}N=288
A=N//2
am=128
t=am//2
aH={}aR=400
bK=100
cR=0
az={}aG=32768
co=3002
bz=0
aS=0
aZ=0
bw=1.2
L=52
K=tan(L)aI=t*bw*N/am/K
U=1
cp={}for a=-A,A do cp[a]=aT({1,a/A*K})end
function bv(a)if a<aG then
local r,bi=c[7][a]bi=0<bx({r[3],r[4]},sub(f[1],r))and 8 or 7
bv(r[bi])bv(r[15-bi])else
aq[#aq+1]=a-aG
end
end
function aW(a,b)if a<aG then
r=c[7][a]return aW(r[0<bx({r[3],r[4]},sub(b,r))and 8 or 7],b)else
return a-aG
end
end
function bh(b)r=c[5][c[6][b][2]]return c[3][c[2][r[4]][r[5]+6]][6]end
function onTick()bg=0
for n=1,3 do
if bm(9)and(not aV)or not c[21]then
by=property.getText(bq)a=1
D=cS
_=br.sub(by,a,a)while _~=cSdo
bN=br.byte(_)if bN>64then
D=(D..bN-65)+0
if U==1then
bM=D
c[D]=c[D]or{}elseif U==2then
cu=D
au=0
elseif U==3then
bs=D
else
if au==0then
au=cu
bs=bs-1
bu={}c[bM][#c[bM]+1]=bu
end
bu[#bu+1]=D
au=au-1
U=C(au,bs)>0 and U-1 or 0
end
U=U+1
D=cS
else
D=D.._
end
a=a+1
_=br.sub(by,a,a)end
bq=bq+1
aV=by==cS
end
end
if aV then
if J(9)>0 then
ar=R
aA=J(9)end
if bK>0 and not ar then
ak={}az[#az+1]=ak
ay=5
_=J(ay)while _~=0 do
ag={}ak[#ak+1]=ag
for a=0,8 do
ag[a+1]=J(ay+a)end
ay=ay+9
_=J(ay)end
end
if bm(1)then
bS=0
bn=J(1)bK=J(3)aZ=aZ+1
bR=aZ//10
if ar then
for a=1,10 do
c[a]=c[a+10*aA]end
u=c[1]ah=c[8]aA=aA+1
end
if J(2)>0 then
_=c[2][J(2)]if _ then
b=_[4]if b>0 then
if b==3008 then
bL=_[5]==1
elseif b>3004 then
aR=C(aR+3*(_[4]-3006),1)elseif b>3000 then
co=_[4]end
bS=J(2)if b<3000 and c[9][_[5]][7]==0then
_[8]=1
end
end
end
end
if bm(3)and bn~=1 and bn~=3 then
bT=.1
aS=bn==5 and 5 or 3
else
aS=aS-1
if aS<1then
bT=0
end
end
for a=1,#az do
ak=az[a]for n=1,#ak do
ag=ak[n]_=ag[1]if _>(2^15)then
_=ah[_-(2^15)]for h=1,6 do
_[h]=ag[h+1]end
elseif _<0 then
while-_>#u do
u[#u+1]=M
end
bH.remove(u,-_)else
if not u[_]then
u[_]={}end
_=u[_]for h=1,8 do
_[c[19][1][h]]=ag[h+1]end
_[15]=0
_[7]=aW(#c[7],_)_[8]=bh(_[7])end
end
end
az={}for a=1,#c[6]do
aH[a]={}end
for a=1,#u do
_=u[a]if _ then
if ar then
_[7]=aW(#c[7],_)_[8]=bh(_[7])_[9]=ah[_[8]][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
end
bB=0
for n,d in aO({1,2,9})do
_[d]=_[d]+_[d+10]bB=bB+_[d+10]end
if bB~=0then
_[7]=aW(#c[7],_)_[8]=bh(_[7])end
_[15]=_[15]+1
_[20]=bE(_,f[1])T=c[16][_[6]]if T~=nil then
if _[15]>=T[2]and T[2]~=-1 then
_[6]=T[4]_[15]=0
end
end
aH[_[7]][#aH[_[7]]+1]=a
end
end
ar=M
_=u[1]f[1]={_[1],_[2]}f[2]=_[9]+41
f[3]=_[3]aq={}bv(#c[7])aE={}o={}aU={}aM={}ac={}X={}aQ={}bf=N
for a=0,N-1 do
aE[a],ac[a],X[a]=#c[6]+2,t+1,-t
end
a=1
while a<=#aq and bf>0 do
_=c[6][aq[a]]aU[a]={}aM[a]={}o[a]={}aQ[a]=aH[aq[a]]bH.sort(aQ[a],function(b,m)return u[b][20]>u[m][20]end)for n=_[2],_[1]+_[2]-1 do
V=c[5][n]z=c[2][V[4]]bJ,bU=c[4][V[1]],c[4][V[2]]aX,bG=sub(bJ,f[1]),sub(bU,f[1])bW=aT(aX)H,aP=bb(bW-f[3]),bb(aT(bG)-f[3])if B(H)<90 or B(aP)<90 then
af,al=bl(H,-L,L),bl(aP,-L,L)if B(H)>=90 or B(aP)>=90 then
cj=bx(aX,bG)if B(H)>=90 then
if cj>0 then af=-L else af=L end
else
if cj<0 then al=-L else al=L end
end
end
k,l=aw(tan(af)/K*A),aw(tan(al)/K*A)if k~=l then
p,ao=bE(f[1],bJ),bE(f[1],bU)aL=V[3]+90
bY=aL-bW
ct=p*sin(bY)aF=(p*cos(bY))if H~=af then
p=aF/cos(aL-(af+f[3]))end
if aP~=al then
ao=aF/cos(aL-(al+f[3]))end
p,ao=p*cos(af),ao*cos(al)h=V[5]+6
cL=(k>l)if cL and z[h]~=0 then
ax=z[3]&4>0
if ax then
aa,W=ah[c[3][z[6]][6]],ah[c[3][z[7]][6]]end
aj=c[3][z[h]]cx={aj[3],aj[4],aj[5]}F,bP,bO=ah[aj[6]]for j,d in aO(cx)do
as=d>0
av=R
if(as or(j==3 and not(bP and bO)))and(j==3 or ax)then
bF=M
cf=0
if j<3 then
bF=j==1 and C(aa[4],W[4])==0
E,w=aa[3-j],W[3-j]av=(E<w)~=(j==2)~=(h==6)and E~=w and aa~=W
E,w=v(E,w),C(E,w)if av then
if j==1then
bP=R
else
bO=R
cf=z[3]&16>0 and C(aa[2],W[2])-w or 0
end
end
else
if ax then
E,w=C(aa[1],W[1]),v(aa[2],W[2])av=aa~=W
else
E,w=F[1],F[2]end
end
E,w=E-f[2],w-f[2]bQ,bI=E*aI,w*aI
if(av or as)and not bF then
bD=V[6]-aj[1]if z[4]==48 then
bD=bD-aZ
end
cw,cv=bQ/p,bI/p
cC,cG=bQ/ao,bI/ao
ck=0
an=M
if as then
_=c[21][d][4]if(V[4]==bS or co==z[4]or z[8])and _>0then
d=_
end
aC=c[21][d][3]s=1
if(j==3 and z[3]&16>0)or(j==1 and z[3]&8==0)then
s=-1
end
end
for h=k,l,-1 do
cA=cp[h]ba=(aL-f[3])-cA
g=A-h
cn=M
if g>=0 and g<=N-1 then
if a<aE[g]then
b_=(h-k)/(l-k)I,G=(cw*(1-b_)+cC*b_),(cv*(1-b_)+cG*b_)if B(G+I)-(G-I)<am then
if as then
if I~=G then
cn=R
cl=aF*tan(ba)O=v(((B(cl)+B(aF))//aR)+1,4)bt=v(bj(ad(O/cos(ba))),16)O=bj(O)bC=ad((C(cl-ct,0)-bD)/(aC*bt))*bt
cb={g,t-I,t-G,d,bC,w-E,F[5],aj[2]+cf,R,aC*O,O,s,not an,j==3 and ax}if bC>ck or(not an)or h==l then
ck=bC-1+bt
an=R
o[a][#o[a]+1]=cb
end
cD=cb
end
end
if av then
if j~=2 then
if G<ac[g]then
aM[a][#aM[a]+1]={g,C(G,X[g]),ac[g],F}end
if j==3then Y=G else Y=I end
if ac[g]>Y then ac[g]=Y end
end
if j~=1 then
if I>X[g]then
aU[a][#aU[a]+1]={g,X[g],v(I,ac[g]),F}end
if j==3then Y=I else Y=G end
if X[g]<Y then X[g]=Y end
end
if(ac[g]<=X[g])or(j==3 and(not ax)and as)then
aE[g]=a
bf=bf-1
end
end
end
end
end
if(not cn)and an then
an=M
o[a][#o[a]+1]=cD
o[a][#o[a]][9]=M
end
end
if#o[a]>0 then
o[a][#o[a]][9]=M
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
function onDraw()aN=cc
local ca,bA,ai,cP=aN.drawTriangleF,aN.drawRectF,aN.setColor,aN.drawText
cz={aU,aM}if aV then
e=c[24][c[19][8][aA-3]]Z,at=e[1],e[2]y=N/ceil(Z*K)bZ=y*1
for a=0,ceil(Z*K),1 do
k=(Z/2-a-1+f[3]/90*Z)%Z
l=(k%1-1)*y
k=ad(k)*at
for n=0,at-1,1 do
Q=e[5+n+k]i=c[20][Q]ai(i[1],i[2],i[3])bA(a*y+l,n*y,bZ,bZ)end
end
for a=#o,1,-1 do
for n=1,#o[a]do
d=o[a][n]if d[9]or d[13]then
if d[9]then
P=o[a][n+1]else
P=d
end
e=c[21][d[4]]e=c[21][d[4]+(bR%e[5])]s=d[12]ab=v(s,0)g=d[1]l=P[1]c_=d[2-ab]cF=P[2-ab]h=d[3+ab]bo=P[3+ab]if not P[9]then l=l+1 end
aJ(d[7])cy=s*(d[2]-d[3])*d[10]/d[6]cB=s*(P[2]-P[3])*d[10]/P[6]cr=s>0 and v or C
be=0
while h*s<c_*s and(be<e[2]or not d[14])do
cm=cr(h+cy,c_)bk=cr(bo+cB,cF)Q=e[7+((ab*d[11]+d[8]//e[3])%e[2])+e[2]*(d[5]%e[1])]i=c[20][Q]if i then
ai(i[1]*q,i[2]*q,i[3]*q)ca(g,h,g,cm,l,bk)ca(g,h,l,bo,l,bk)end
h=cm
bo=bk
ab=ab+s
be=be+d[11]end
end
end
for b=1,2 do
_=cz[b]cg={}aD,aB,bp=am,-am
for n,d in aO(_[a])do
aD=v(aD,d[2])aB=C(aB,d[3])bp=d
e=c[22][d[4][b+2]]if e and not bL then
aJ(d[4][5])i=c[20][e[5]]ai(i[1]*q,i[2]*q,i[3]*q)cc.drawLine(d[1],t-d[2],d[1],ad(t-d[3]-1))end
end
if bp and bL then
F=bp[4]cs=(F[b]-f[2])bd=cos(f[3])bc=sin(f[3])for ap=ad(aD+t),ceil(aB+t)do
ae=aI*cs/(t-ap)ch=bd*ae-f[1][1]bX=bc*ae-f[1][2]cd=-bc*ae+ch
ci=bd*ae+bX
cE=bc*ae+ch
cN=-bd*ae+bX
cJ=(cE-cd)/N
cH=(cN-ci)/N
cg[ap]={cJ,cH,cd,ci}end
for n,d in aO(_[a])do
if F[b+2]~=0 then
aJ(F[5])m=F[b+2]e=c[22][m]e=c[22][m+(bR%e[4])]g=d[1]ce=A-(A-g)*K
aD,aB=ad(d[2]+t),ceil(d[3]+t)aC=e[3]for ap=aD,aB do
aY=cg[ap]cM=(aY[3]+aY[1]*ce)//aC
cI=(aY[4]+aY[2]*ce)//aC
Q=6+(cI%e[1])+e[1]*(cM%e[2])i=c[20][e[Q]]if i then
ai(i[1]*q,i[2]*q,i[3]*q)bA(g,-ap+am,1,1)end
end
end
end
end
end
for n=1,#aQ[a]do
_=u[aQ[a][n]]if _[6]~=0 then
aX=sub(_,f[1])p=_[20]if p>1 then
H=bb(aT(aX)-f[3])p=p*cos(H)if B(H)<90 then
k=A-aw(tan(H)/K*A)ba=aw((S+H+f[3]-_[3]+bg*4)/360*8)T=c[16][_[6]][1]if T~=0 and _[6]~=1 then
e=c[17][B(T)][ba%8+1]s=e<0 and-1 or 1
e=B(e)if e>0 then
e=c[23][e]Z,at=e[1],e[2]O=v(bj(p//aR+1),8)y=A/(K*p)aK=y*bw
I=t+(f[2]-_[9])/p*aI
G=I-e[5]*aK
l=k-s*e[4]*y
y,aK=y*e[3],aK*e[3]aJ(ah[_[8]][5])q=T>0 and q or 1
bV=y*O
cO=bV*bw
cK=_[4]and c[15][_[4]][23]&8>0
for h=0,Z-1,O do
k=l+h*y*s
if a<=aE[bl(aw(k),0,N-1)]then
for j=0,at-1,O do
Q=e[7+j+h*at]if Q~=0 then
if cK then
bz=bz%50+1
ai(0,0,0,v(75*c[13][2][bz],255))else
i=c[20][Q]ai(i[1]*q,i[2]*q,i[3]*q)end
bA(k,G+j*aK,bV,cO)end
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
bg=bg+1
end
