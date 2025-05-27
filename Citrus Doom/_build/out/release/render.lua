cS=""

S=180
ci=screen
aJ=ipairs
bZ=table
bO=input
w=math
B=w.max
x=w.min
z=w.abs
Y=w.floor
ceil=w.ceil
sqrt=w.sqrt
G=bO.getNumber
be=bO.getBool
pi=w.pi
K=false
P=true
by=string
function bb(b,l)return b[1]*l[2]-b[2]*l[1]end
function sub(b,l)return{(b[1]-l[1]),(b[2]-l[2])}end
function bE(b)return((b+S)%360)-S end
function sin(b)return w.sin(b/S*pi)end
function cos(b)return w.cos(b/S*pi)end
function tan(b)return w.tan(b/S*pi)end
function cP(b)return w.atan(b)*S/pi end
function aO(b)return w.atan(b[2],b[1])*S/pi end
function bo(b,l,_)return x(B(l,b),_)end
function ap(b)return Y(b+.5)end
function bk(b,l)return sqrt(((b[1]-l[1])^2)+((b[2]-l[2])^2))end
function bz(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
function b_(b)q=x(b/255+bQ,1)^2.2 end
c={}bq=1
ay=3
aT=K
as=P
g={{0,0},0,0}N=288
A=N//2
ae=128
u=ae//2
aI={}aG=400
bI=100
cR=0
ar={}aW=32768
cd=3002
bD=0
ba=0
aN=0
bA=1.2
L=52
M=tan(L)aZ=u*bA*N/ae/M
aa=1
ch={}for a=-A,A do ch[a]=aO({1,a/A*M})end
function bu(a)if a<aW then
local s,bc=c[7][a]bc=0<bb({s[3],s[4]},sub(g[1],s))and 8 or 7
bu(s[bc])bu(s[15-bc])else
ax[#ax+1]=a-aW
end
end
function aR(a,b)if a<aW then
s=c[7][a]return aR(s[0<bb({s[3],s[4]},sub(b,s))and 8 or 7],b)else
return a-aW
end
end
function br(b)s=c[5][c[6][b][2]]return c[3][c[2][s[4]][s[5]+6]][6]end
function onTick()bf=0
for k=1,3 do
if be(9)and(not aT)or not c[21]then
bB=property.getText(bq)a=1
D=cS
_=by.sub(bB,a,a)while _~=cSdo
cc=by.byte(_)if cc>64then
D=(D..cc-65)+0
if aa==1then
bV=D
c[D]=c[D]or{}elseif aa==2then
cM=D
aC=0
elseif aa==3then
bd=D
else
if aC==0then
aC=cM
bd=bd-1
bl={}c[bV][#c[bV]+1]=bl
end
bl[#bl+1]=D
aC=aC-1
aa=B(aC,bd)>0 and aa-1 or 0
end
aa=aa+1
D=cS
else
D=D.._
end
a=a+1
_=by.sub(bB,a,a)end
bq=bq+1
aT=bB==cS
end
end
if aT then
if G(9)>0 then
as=P
ay=G(9)end
if bI>0 and not as then
af={}ar[#ar+1]=af
ao=5
_=G(ao)while _~=0 do
aj={}af[#af+1]=aj
for a=0,8 do
aj[a+1]=G(ao+a)end
ao=ao+9
_=G(ao)end
end
if be(1)then
bP=0
bp=G(1)bI=G(3)aN=aN+1
bU=aN//10
if as then
for a=1,10 do
c[a]=c[a+10*ay]end
r=c[1]am=c[8]ay=ay+1
end
if G(2)>0 then
_=c[2][G(2)]if _ then
b=_[4]if b>0 then
if b==3008 then
bJ=_[5]==1
elseif b>3004 then
aG=B(aG+3*(_[4]-3006),1)elseif b>3000 then
cd=_[4]end
bP=G(2)if b<3000 and c[9][_[5]][7]==0then
_[8]=1
end
end
end
end
if be(3)and bp~=1 and bp~=3 then
bQ=.1
ba=bp==5 and 5 or 3
else
ba=ba-1
if ba<1then
bQ=0
end
end
for a=1,#ar do
af=ar[a]for k=1,#af do
aj=af[k]_=aj[1]if _>(2^15)then
_=am[_-(2^15)]for h=1,6 do
_[h]=aj[h+1]end
elseif _<0 then
while-_>#r do
r[#r+1]=K
end
bZ.remove(r,-_)else
if not r[_]then
r[_]={}end
_=r[_]for h=1,8 do
_[c[19][1][h]]=aj[h+1]end
_[15]=0
_[7]=aR(#c[7],_)_[8]=br(_[7])end
end
end
ar={}for a=1,#c[6]do
aI[a]={}end
for a=1,#r do
_=r[a]if _ then
if as then
_[7]=aR(#c[7],_)_[8]=br(_[7])_[9]=am[_[8]][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
end
bt=0
for k,d in aJ({1,2,9})do
_[d]=_[d]+_[d+10]bt=bt+_[d+10]end
if bt~=0then
_[7]=aR(#c[7],_)_[8]=br(_[7])end
_[15]=_[15]+1
_[20]=bk(_,g[1])T=c[16][_[6]]if T~=nil then
if _[15]>=T[2]and T[2]~=-1 then
_[6]=T[4]_[15]=0
end
end
aI[_[7]][#aI[_[7]]+1]=a
end
end
as=K
_=r[1]g[1]={_[1],_[2]}g[2]=_[9]+41
g[3]=_[3]ax={}bu(#c[7])aM={}o={}aX={}aQ={}ab={}V={}aH={}bn=N
for a=0,N-1 do
aM[a],ab[a],V[a]=#c[6]+2,u+1,-u
end
a=1
while a<=#ax and bn>0 do
_=c[6][ax[a]]aX[a]={}aQ[a]={}o[a]={}aH[a]=aI[ax[a]]bZ.sort(aH[a],function(b,l)return r[b][20]>r[l][20]end)for k=_[2],_[1]+_[2]-1 do
W=c[5][k]E=c[2][W[4]]bT,cq=c[4][W[1]],c[4][W[2]]aV,bN=sub(bT,g[1]),sub(cq,g[1])ca=aO(aV)H,aP=bE(ca-g[3]),bE(aO(bN)-g[3])if z(H)<90 or z(aP)<90 then
al,ag=bo(H,-L,L),bo(aP,-L,L)if z(H)>=90 or z(aP)>=90 then
bM=bb(aV,bN)if z(H)>=90 then
if bM>0 then al=-L else al=L end
else
if bM<0 then ag=-L else ag=L end
end
end
n,m=ap(tan(al)/M*A),ap(tan(ag)/M*A)if n~=m then
p,an=bk(g[1],bT),bk(g[1],cq)aY=W[3]+90
bK=aY-ca
cx=p*sin(bK)aE=(p*cos(bK))if H~=al then
p=aE/cos(aY-(al+g[3]))end
if aP~=ag then
an=aE/cos(aY-(ag+g[3]))end
p,an=p*cos(al),an*cos(ag)h=W[5]+6
cI=(n>m)if cI and E[h]~=0 then
av=E[3]&4>0
if av then
ac,X=am[c[3][E[6]][6]],am[c[3][E[7]][6]]end
ai=c[3][E[h]]cw={ai[3],ai[4],ai[5]}I,cg,cr=am[ai[6]]for j,d in aJ(cw)do
aw=d>0
aD=P
if(aw or(j==3 and not(cg and cr)))and(j==3 or av)then
cf=K
bX=0
if j<3 then
cf=j==1 and B(ac[4],X[4])==0
C,v=ac[3-j],X[3-j]aD=(C<v)~=(j==2)~=(h==6)and C~=v and ac~=X
C,v=x(C,v),B(C,v)if aD then
if j==1then
cg=P
else
cr=P
bX=E[3]&16>0 and B(ac[2],X[2])-v or 0
end
end
else
if av then
C,v=B(ac[1],X[1]),x(ac[2],X[2])aD=ac~=X
else
C,v=I[1],I[2]end
end
C,v=C-g[2],v-g[2]cn,bG=C*aZ,v*aZ
if(aD or aw)and not cf then
bi=W[6]-ai[1]if E[4]==48 then
bi=bi-aN
end
cJ,cK=cn/p,bG/p
cN,cv=cn/an,bG/an
cl=0
aq=K
if aw then
_=c[21][d][4]if(W[4]==bP or cd==E[4]or E[8])and _>0then
d=_
end
aB=c[21][d][3]t=1
if(j==3 and E[3]&16>0)or(j==1 and E[3]&8==0)then
t=-1
end
end
for h=n,m,-1 do
cy=ch[h]aS=(aY-g[3])-cy
f=A-h
cm=K
if f>=0 and f<=N-1 then
if a<aM[f]then
aF=(h-n)/(m-n)J,F=(cJ*(1-aF)+cN*aF),(cK*(1-aF)+cv*aF)if z(F+J)-(F-J)<ae then
if aw then
if J~=F then
cm=P
cb=aE*tan(aS)O=x(((z(cb)+z(aE))//aG)+1,4)bj=x(bz(Y(O/cos(aS))),16)O=bz(O)bC=Y((B(cb-cx,0)-bi)/(aB*bj))*bj
co={f,u-J,u-F,d,bC,v-C,I[5],ai[2]+bX,P,aB*O,O,t,not aq,j==3 and av}if bC>cl or(not aq)or h==m then
cl=bC-1+bj
aq=P
o[a][#o[a]+1]=co
end
cO=co
end
end
if aD then
if j~=2 then
if F<ab[f]then
aQ[a][#aQ[a]+1]={f,B(F,V[f]),ab[f],I}end
if j==3then ad=F else ad=J end
if ab[f]>ad then ab[f]=ad end
end
if j~=1 then
if J>V[f]then
aX[a][#aX[a]+1]={f,V[f],x(J,ab[f]),I}end
if j==3then ad=J else ad=F end
if V[f]<ad then V[f]=ad end
end
if(ab[f]<=V[f])or(j==3 and(not av)and aw)then
aM[f]=a
bn=bn-1
end
end
end
end
end
if(not cm)and aq then
aq=K
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
function onDraw()aL=ci
local bL,bh,ak,cQ=aL.drawTriangleF,aL.drawRectF,aL.setColor,aL.drawText
bf=bf+1
cH={aX,aQ}if bf<=1 then
if aT then
e=c[24][c[19][8][ay-3]]U,aA=e[1],e[2]y=N/ceil(U*M)cj=y*1
for a=0,ceil(U*M),1 do
n=(U/2-a-1+g[3]/90*U)%U
m=(n%1-1)*y
n=Y(n)*aA
for k=0,aA-1,1 do
R=e[5+k+n]i=c[20][R]ak(i[1],i[2],i[3])bh(a*y+m,k*y,cj,cj)end
end
for a=#o,1,-1 do
for k=1,#o[a]do
d=o[a][k]if d[9]or d[13]then
if d[9]then
Q=o[a][k+1]else
Q=d
end
e=c[21][d[4]]e=c[21][d[4]+(bU%e[5])]t=d[12]Z=x(t,0)f=d[1]m=Q[1]bR=d[2-Z]cz=Q[2-Z]h=d[3+Z]bv=Q[3+Z]if not Q[9]then m=m+1 end
b_(d[7])ct=t*(d[2]-d[3])*d[10]/d[6]cA=t*(Q[2]-Q[3])*d[10]/Q[6]c_=t>0 and x or B
bs=0
while h*t<bR*t and(bs<e[2]or not d[14])do
bY=c_(h+ct,bR)bw=c_(bv+cA,cz)R=e[7+((Z*d[11]+d[8]//e[3])%e[2])+e[2]*(d[5]%e[1])]i=c[20][R]if i then
ak(i[1]*q,i[2]*q,i[3]*q)bL(f,h,f,bY,m,bw)bL(f,h,m,bv,m,bw)end
h=bY
bv=bw
Z=Z+t
bs=bs+d[11]end
end
end
for b=1,2 do
_=cH[b]bF={}at,az,bm=ae,-ae
for k,d in aJ(_[a])do
at=x(at,d[2])az=B(az,d[3])bm=d
e=c[22][d[4][b+2]]if e and not bJ then
b_(d[4][5])i=c[20][e[5]]ak(i[1]*q,i[2]*q,i[3]*q)ci.drawLine(d[1],u-d[2],d[1],Y(u-d[3]-1))end
end
if bm and bJ then
I=bm[4]cC=(I[b]-g[2])bg=cos(g[3])bx=sin(g[3])for au=Y(at+u),ceil(az+u)do
ah=aZ*cC/(u-au)bW=bg*ah-g[1][1]ck=bx*ah-g[1][2]bH=-bx*ah+bW
bS=bg*ah+ck
cD=bx*ah+bW
cF=-bg*ah+ck
cL=(cD-bH)/N
cG=(cF-bS)/N
bF[au]={cL,cG,bH,bS}end
for k,d in aJ(_[a])do
if I[b+2]~=0 then
b_(I[5])l=I[b+2]e=c[22][l]e=c[22][l+(bU%e[4])]f=d[1]ce=A-(A-f)*M
at,az=Y(d[2]+u),ceil(d[3]+u)aB=e[3]for au=at,az do
aU=bF[au]cs=(aU[3]+aU[1]*ce)//aB
cB=(aU[4]+aU[2]*ce)//aB
R=6+(cB%e[1])+e[1]*(cs%e[2])i=c[20][e[R]]if i then
ak(i[1]*q,i[2]*q,i[3]*q)bh(f,-au+ae,1,1)end
end
end
end
end
end
for k=1,#aH[a]do
_=r[aH[a][k]]if _[6]~=0 then
aV=sub(_,g[1])p=_[20]if p>1 then
H=bE(aO(aV)-g[3])p=p*cos(H)if z(H)<90 then
n=A-ap(tan(H)/M*A)aS=ap((S+H+g[3]-_[3])/360*8)T=c[16][_[6]][1]if T~=0 and _[6]~=1 then
e=c[17][z(T)][aS%8+1]t=e<0 and-1 or 1
e=z(e)if e>0 then
e=c[23][e]U,aA=e[1],e[2]O=x(bz(p//aG+1),8)y=A/(M*p)aK=y*bA
J=u+(g[2]-_[9])/p*aZ
F=J-e[5]*aK
m=n-t*e[4]*y
y,aK=y*e[3],aK*e[3]b_(am[_[8]][5])q=T>0 and q or 1
cp=y*O
cu=cp*bA
cE=_[4]and c[15][_[4]][23]&8>0
for h=0,U-1,O do
n=m+h*y*t
if a<=aM[bo(ap(n),0,N-1)]then
for j=0,aA-1,O do
R=e[7+j+h*aA]if R~=0 then
if cE then
bD=bD%50+1
ak(0,0,0,x(75*c[13][2][bD],255))else
i=c[20][R]ak(i[1]*q,i[2]*q,i[3]*q)end
bh(n,F+j*aK,cp,cu)end
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
