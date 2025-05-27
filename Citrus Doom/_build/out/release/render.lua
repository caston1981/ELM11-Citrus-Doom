cS=""

R=180
cg=screen
aI=ipairs
bM=table
cn=input
v=math
A=v.max
x=v.min
y=v.abs
Z=v.floor
ceil=v.ceil
sqrt=v.sqrt
H=cn.getNumber
bj=cn.getBool
pi=v.pi
K=false
S=true
bA=string
function bm(b,n)return b[1]*n[2]-b[2]*n[1]end
function sub(b,n)return{(b[1]-n[1]),(b[2]-n[2])}end
function bl(b)return((b+R)%360)-R end
function sin(b)return v.sin(b/R*pi)end
function cos(b)return v.cos(b/R*pi)end
function tan(b)return v.tan(b/R*pi)end
function cP(b)return v.atan(b)*R/pi end
function aH(b)return v.atan(b[2],b[1])*R/pi end
function bs(b,n,_)return x(A(n,b),_)end
function ar(b)return Z(b+.5)end
function bi(b,n)return sqrt(((b[1]-n[1])^2)+((b[2]-n[2])^2))end
function by(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
function aU(b)p=x(b/255+bN,1)^2.2 end
c={}bD=1
as=3
aG=K
ap=S
f={{0,0},0,0}L=288
z=L//2
ae=128
r=ae//2
aT={}aQ=400
bR=100
cQ=0
an={}aX=32768
bF=3002
br=0
ba=0
aK=0
bh=1.2
M=52
N=tan(M)aJ=r*bh*L/ae/N
ac=1
ce={}for a=-z,z do ce[a]=aH({1,a/z*N})end
function bb(a)if a<aX then
local s,bn=c[7][a]bn=0<bm({s[3],s[4]},sub(f[1],s))and 8 or 7
bb(s[bn])bb(s[15-bn])else
aq[#aq+1]=a-aX
end
end
function aR(a,b)if a<aX then
s=c[7][a]return aR(s[0<bm({s[3],s[4]},sub(b,s))and 8 or 7],b)else
return a-aX
end
end
function bf(b)s=c[5][c[6][b][2]]return c[3][c[2][s[4]][s[5]+6]][6]end
function onTick()bq=0
for k=1,3 do
if bj(9)and(not aG)or not c[21]then
bt=property.getText(bD)a=1
B=cS
_=bA.sub(bt,a,a)while _~=cSdo
bL=bA.byte(_)if bL>64then
B=(B..bL-65)+0
if ac==1then
bP=B
c[B]=c[B]or{}elseif ac==2then
cC=B
aC=0
elseif ac==3then
be=B
else
if aC==0then
aC=cC
be=be-1
bd={}c[bP][#c[bP]+1]=bd
end
bd[#bd+1]=B
aC=aC-1
ac=A(aC,be)>0 and ac-1 or 0
end
ac=ac+1
B=cS
else
B=B.._
end
a=a+1
_=bA.sub(bt,a,a)end
bD=bD+1
aG=bt==cS
end
end
if aG then
if H(9)>0 then
ap=S
as=H(9)end
if bR>0 and not ap then
ah={}an[#an+1]=ah
aA=5
_=H(aA)while _~=0 do
am={}ah[#ah+1]=am
for a=0,8 do
am[a+1]=H(aA+a)end
aA=aA+9
_=H(aA)end
end
if bj(1)then
bS=0
bc=H(1)bR=H(3)aK=aK+1
bG=aK//10
if ap then
for a=1,10 do
c[a]=c[a+10*as]end
t=c[1]aj=c[8]as=as+1
end
if H(2)>0 then
_=c[2][H(2)]if _ then
b=_[4]if b>0 then
if b==3008 then
cp=_[5]==1
elseif b>3004 then
aQ=A(aQ+3*(_[4]-3006),1)elseif b>3000 then
bF=_[4]end
bS=H(2)if b<3000 and c[9][_[5]][7]==0then
_[8]=1
end
end
end
end
if bj(3)and bc~=1 and bc~=3 then
bN=.1
ba=bc==5 and 5 or 3
else
ba=ba-1
if ba<1then
bN=0
end
end
for a=1,#an do
ah=an[a]for k=1,#ah do
am=ah[k]_=am[1]if _>(2^15)then
_=aj[_-(2^15)]for h=1,6 do
_[h]=am[h+1]end
elseif _<0 then
while-_>#t do
t[#t+1]=K
end
bM.remove(t,-_)else
if not t[_]then
t[_]={}end
_=t[_]for h=1,8 do
_[c[19][1][h]]=am[h+1]end
_[15]=0
_[7]=aR(#c[7],_)_[8]=bf(_[7])end
end
end
an={}for a=1,#c[6]do
aT[a]={}end
for a=1,#t do
_=t[a]if _ then
if ap then
_[7]=aR(#c[7],_)_[8]=bf(_[7])_[9]=aj[_[8]][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
end
bg=0
for k,d in aI({1,2,9})do
_[d]=_[d]+_[d+10]bg=bg+_[d+10]end
if bg~=0then
_[7]=aR(#c[7],_)_[8]=bf(_[7])end
_[15]=_[15]+1
_[20]=bi(_,f[1])Q=c[16][_[6]]if Q~=nil then
if _[15]>=Q[2]and Q[2]~=-1 then
_[6]=Q[4]_[15]=0
end
end
aT[_[7]][#aT[_[7]]+1]=a
end
end
ap=K
_=t[1]f[1]={_[1],_[2]}f[2]=_[9]+41
f[3]=_[3]aq={}bb(#c[7])aZ={}o={}aE={}aP={}U={}aa={}b_={}bk=L
for a=0,L-1 do
aZ[a],U[a],aa[a]=#c[6]+2,r+1,-r
end
a=1
while a<=#aq and bk>0 do
_=c[6][aq[a]]aE[a]={}aP[a]={}o[a]={}b_[a]=aT[aq[a]]bM.sort(b_[a],function(b,n)return t[b][20]>t[n][20]end)for k=_[2],_[1]+_[2]-1 do
X=c[5][k]D=c[2][X[4]]bH,bJ=c[4][X[1]],c[4][X[2]]aV,cr=sub(bH,f[1]),sub(bJ,f[1])ck=aH(aV)F,aY=bl(ck-f[3]),bl(aH(cr)-f[3])if y(F)<90 or y(aY)<90 then
af,al=bs(F,-M,M),bs(aY,-M,M)if y(F)>=90 or y(aY)>=90 then
bX=bm(aV,cr)if y(F)>=90 then
if bX>0 then af=-M else af=M end
else
if bX<0 then al=-M else al=M end
end
end
l,m=ar(tan(af)/N*z),ar(tan(al)/N*z)if l~=m then
q,av=bi(f[1],bH),bi(f[1],bJ)aW=X[3]+90
bY=aW-ck
cH=q*sin(bY)aF=(q*cos(bY))if F~=af then
q=aF/cos(aW-(af+f[3]))end
if aY~=al then
av=aF/cos(aW-(al+f[3]))end
q,av=q*cos(af),av*cos(al)h=X[5]+6
cN=(l>m)if cN and D[h]~=0 then
ao=D[3]&4>0
if ao then
Y,W=aj[c[3][D[6]][6]],aj[c[3][D[7]][6]]end
ag=c[3][D[h]]cI={ag[3],ag[4],ag[5]}I,co,bK=aj[ag[6]]for j,d in aI(cI)do
aD=d>0
ax=S
if(aD or(j==3 and not(co and bK)))and(j==3 or ao)then
bV=K
bZ=0
if j<3 then
bV=j==1 and A(Y[4],W[4])==0
E,w=Y[3-j],W[3-j]ax=(E<w)~=(j==2)~=(h==6)and E~=w and Y~=W
E,w=x(E,w),A(E,w)if ax then
if j==1then
co=S
else
bK=S
bZ=D[3]&16>0 and A(Y[2],W[2])-w or 0
end
end
else
if ao then
E,w=A(Y[1],W[1]),x(Y[2],W[2])ax=Y~=W
else
E,w=I[1],I[2]end
end
E,w=E-f[2],w-f[2]ca,cb=E*aJ,w*aJ
if(ax or aD)and not bV then
bo=X[6]-ag[1]if D[4]==48 then
bo=bo-aK
end
cJ,cK=ca/q,cb/q
cv,cs=ca/av,cb/av
ci=0
aw=K
if aD then
_=c[21][d][4]if(X[4]==bS or bF==D[4]or D[8])and _>0then
d=_
end
az=c[21][d][3]u=1
if(j==3 and D[3]&16>0)or(j==1 and D[3]&8==0)then
u=-1
end
end
for h=l,m,-1 do
cF=ce[h]aN=(aW-f[3])-cF
g=z-h
cq=K
if g>=0 and g<=L-1 then
if a<aZ[g]then
aL=(h-l)/(m-l)J,G=(cJ*(1-aL)+cv*aL),(cK*(1-aL)+cs*aL)if y(G+J)-(G-J)<ae then
if aD then
if J~=G then
cq=S
ch=aF*tan(aN)O=x(((y(ch)+y(aF))//aQ)+1,4)bC=x(by(Z(O/cos(aN))),16)O=by(O)bB=Z((A(ch-cH,0)-bo)/(az*bC))*bC
cd={g,r-J,r-G,d,bB,w-E,I[5],ag[2]+bZ,S,az*O,O,u,not aw,j==3 and ao}if bB>ci or(not aw)or h==m then
ci=bB-1+bC
aw=S
o[a][#o[a]+1]=cd
end
cO=cd
end
end
if ax then
if j~=2 then
if G<U[g]then
aP[a][#aP[a]+1]={g,A(G,aa[g]),U[g],I}end
if j==3then ad=G else ad=J end
if U[g]>ad then U[g]=ad end
end
if j~=1 then
if J>aa[g]then
aE[a][#aE[a]+1]={g,aa[g],x(J,U[g]),I}end
if j==3then ad=J else ad=G end
if aa[g]<ad then aa[g]=ad end
end
if(U[g]<=aa[g])or(j==3 and(not ao)and aD)then
aZ[g]=a
bk=bk-1
end
end
end
end
end
if(not cq)and aw then
aw=K
o[a][#o[a]+1]=cO
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
function onDraw()aO=cg
local cj,bp,ai,cR=aO.drawTriangleF,aO.drawRectF,aO.setColor,aO.drawText
cA={aE,aP}if aG then
e=c[24][c[19][8][as-3]]ab,au=e[1],e[2]C=L/ceil(ab*N)cm=C*1
for a=0,ceil(ab*N),1 do
l=(ab/2-a-1+f[3]/90*ab)%ab
m=(l%1-1)*C
l=Z(l)*au
for k=0,au-1,1 do
P=e[5+k+l]i=c[20][P]ai(i[1],i[2],i[3])bp(a*C+m,k*C,cm,cm)end
end
for a=#o,1,-1 do
for k=1,#o[a]do
d=o[a][k]if d[9]or d[13]then
if d[9]then
T=o[a][k+1]else
T=d
end
e=c[21][d[4]]e=c[21][d[4]+(bG%e[5])]u=d[12]V=x(u,0)g=d[1]m=T[1]cc=d[2-V]ct=T[2-V]h=d[3+V]bE=T[3+V]if not T[9]then m=m+1 end
aU(d[7])cD=u*(d[2]-d[3])*d[10]/d[6]cE=u*(T[2]-T[3])*d[10]/T[6]cf=u>0 and x or A
bz=0
while h*u<cc*u and(bz<e[2]or not d[14])do
bQ=cf(h+cD,cc)bu=cf(bE+cE,ct)P=e[7+((V*d[11]+d[8]//e[3])%e[2])+e[2]*(d[5]%e[1])]i=c[20][P]if i then
ai(i[1]*p,i[2]*p,i[3]*p)cj(g,h,g,bQ,m,bu)cj(g,h,m,bE,m,bu)end
h=bQ
bE=bu
V=V+u
bz=bz+d[11]end
end
end
for b=1,2 do
_=cA[b]bI={}aB,ay,bw=ae,-ae
for k,d in aI(_[a])do
aB=x(aB,d[2])ay=A(ay,d[3])bw=d
e=c[22][d[4][b+2]]if e and not cp then
aU(d[4][5])i=c[20][e[5]]ai(i[1]*p,i[2]*p,i[3]*p)cg.drawLine(d[1],r-d[2],d[1],Z(r-d[3]-1))end
end
if bw and cp then
I=bw[4]cB=(I[b]-f[2])bx=cos(f[3])bv=sin(f[3])for at=Z(aB+r),ceil(ay+r)do
ak=aJ*cB/(r-at)cl=bx*ak-f[1][1]bU=bv*ak-f[1][2]bW=-bv*ak+cl
bT=bx*ak+bU
cz=bv*ak+cl
cw=-bx*ak+bU
cx=(cz-bW)/L
cL=(cw-bT)/L
bI[at]={cx,cL,bW,bT}end
for k,d in aI(_[a])do
if I[b+2]~=0 then
aU(I[5])n=I[b+2]e=c[22][n]e=c[22][n+(bG%e[4])]g=d[1]bO=z-(z-g)*N
aB,ay=Z(d[2]+r),ceil(d[3]+r)az=e[3]for at=aB,ay do
aS=bI[at]cu=(aS[3]+aS[1]*bO)//az
cy=(aS[4]+aS[2]*bO)//az
P=6+(cy%e[1])+e[1]*(cu%e[2])i=c[20][e[P]]if i then
ai(i[1]*p,i[2]*p,i[3]*p)bp(g,-at+ae,1,1)end
end
end
end
end
end
for k=1,#b_[a]do
_=t[b_[a][k]]if _[6]~=0 then
aV=sub(_,f[1])q=_[20]if q>1 then
F=bl(aH(aV)-f[3])q=q*cos(F)if y(F)<90 then
l=z-ar(tan(F)/N*z)aN=ar((R+F+f[3]-_[3]+bq*4)/360*8)Q=c[16][_[6]][1]if Q~=0 and _[6]~=1 then
e=c[17][y(Q)][aN%8+1]u=e<0 and-1 or 1
e=y(e)if e>0 then
e=c[23][e]ab,au=e[1],e[2]O=x(by(q//aQ+1),8)C=z/(N*q)aM=C*bh
J=r+(f[2]-_[9])/q*aJ
G=J-e[5]*aM
m=l-u*e[4]*C
C,aM=C*e[3],aM*e[3]aU(aj[_[8]][5])p=Q>0 and p or 1
c_=C*O
cG=c_*bh
cM=_[4]and c[15][_[4]][23]&8>0
for h=0,ab-1,O do
l=m+h*C*u
if a<=aZ[bs(ar(l),0,L-1)]then
for j=0,au-1,O do
P=e[7+j+h*au]if P~=0 then
if cM then
br=br%50+1
ai(0,0,0,x(75*c[13][2][br],255))else
i=c[20][P]ai(i[1]*p,i[2]*p,i[3]*p)end
bp(l,G+j*aM,c_,cG)end
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
bq=bq+1
end
