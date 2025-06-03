
P=180
cj=screen
aL=ipairs
cs=table
bY=input
x=math
C=x.max
v=x.min
A=x.abs
ai=x.floor
ceil=x.ceil
sqrt=x.sqrt
J=bY.getNumber
bA=bY.getBool
pi=x.pi
M=false
Q=true
bi=string
function bm(b,k)return b[1]*k[2]-b[2]*k[1]end
function sub(b,k)return{(b[1]-k[1]),(b[2]-k[2])}end
function bp(b)return((b+P)%360)-P end
function sin(b)return x.sin(b/P*pi)end
function cos(b)return x.cos(b/P*pi)end
function tan(b)return x.tan(b/P*pi)end
function cU(b)return x.atan(b)*P/pi end
function aX(b)return x.atan(b[2],b[1])*P/pi end
function bj(b,k,_)return v(C(k,b),_)end
function av(b)return ai(b+.5)end
function aV(b,k)return sqrt(((b[1]-k[1])^2)+((b[2]-k[2])^2))end
function c_(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
function aT(b)q=v(b/255+bF,1)^2.2 end
c={}bo=1
ao=3
aR=M
aC=Q
f={{0,0},0,0}N=288
E=N//2
ae=128
t=ae//2
aN={}aO=400
bV=200
ct=100
cS=0
an={}aP=32768
bW=3002
bf=0
aK=0
as=0
bb=1.2
O=52
L=tan(O)aU=t*bb*N/ae/L
aa=1
ck={}for a=-E,E do ck[a]=aX({1,a/E*L})end
function bh(a)if a<aP then
local s,bl=c[7][a]bl=0<bm({s[3],s[4]},sub(f[1],s))and 8 or 7
bh(s[bl])bh(s[15-bl])else
aq[#aq+1]=a-aP
end
end
function aQ(a,b)if a<aP then
s=c[7][a]return aQ(s[0<bm({s[3],s[4]},sub(b,s))and 8 or 7],b)else
return a-aP
end
end
function bq(b)s=c[5][c[6][b][2]]return aB[c[3][c[2][s[4]][s[5]+6]][6]]end
function onTick()bt=0
for o=1,3 do
if bA(9)and(not aR)or not c[21]then
bv=property.getText(bo)a=1
B=""
_=bi.sub(bv,a,a)while _~=""do
bC=bi.byte(_)if bC>64 then
B=(B..bC-65)+0
if aa==1 then
bS=B
c[B]=c[B]or{}elseif aa==2 then
cu=B
ap=0
elseif aa==3 then
bd=B
else
if ap==0 then
ap=cu
bd=bd-1
br={}c[bS][#c[bS]+1]=br
end
br[#br+1]=B
ap=ap-1
aa=C(ap,bd)>0 and aa-1 or 0
end
aa=aa+1
B=""
else
B=B.._
end
a=a+1
_=bi.sub(bv,a,a)end
bo=bo+1
aR=bv==""
end
end
if aR then
if J(9)>0 then
aC=Q
ao=J(9)end
if ct>0 and not aC then
ah={}an[#an+1]=ah
aw=5
_=J(aw)while _~=0 do
ad={}ah[#ah+1]=ad
for a=0,8 do
ad[a+1]=J(aw+a)end
aw=aw+9
_=J(aw)end
end
if bA(1)then
cc=0
bn=J(1)ct=J(3)as=as+1
co=as//10
if aC then
for a=1,10 do
c[a]=c[a+10*ao]end
n=c[1]bR={n[1][1],n[1][2]}aB=c[8]ao=ao+1
end
if J(2)>0 then
_=c[2][J(2)]if _ then
b=_[4]if b>0 then
if b==3008 then
ce=_[5]==1
elseif b>3004 then
aO=C(aO+3*(_[4]-3006),1)bV=aO/2
elseif b>3000 then
bW=_[4]end
cc=J(2)if b<3000 and c[9][_[5]][7]==0 then
_[8]=1
end
end
end
end
if bA(3)and bn~=1 and bn~=3 then
bF=.1
aK=bn==5 and 5 or 3
else
aK=aK-1
if aK<1 then
bF=0
end
end
for a=1,#an do
ah=an[a]for o=1,#ah do
ad=ah[o]_=ad[1]if _>(2^15)then
_=aB[_-(2^15)]for h=1,6 do
_[h]=ad[h+1]end
elseif _<0 then
while-_>#n do
n[#n+1]=M
end
cs.remove(n,-_)else
if not n[_]then
n[_]={}end
_=n[_]for h=1,8 do
_[c[19][1][h]]=ad[h+1]end
_[15]=0
_[7]=aQ(#c[7],_)_[8]=bq(_[7])end
end
end
an={}for a=1,#c[6]do
aN[a]={}end
for a=1,#n do
_=n[a]if aC then
_[7]=aQ(#c[7],_)_[8]=bq(_[7])_[9]=_[8][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
end
if _ and a>1 then
bk=0
for o,d in aL({1,2,9})do
_[d]=_[d]+_[d+10]bk=bk+_[d+10]end
if bk~=0 then
_[7]=aQ(#c[7],_)_[8]=bq(_[7])end
_[15]=_[15]+1
_[20]=aV(_,f[1])K=c[16][_[6]]if K~=nil then
if K[5]>0 then
_[9]=_[8][1]end
if _[15]>=K[2]and K[2]~=-1 then
_[6]=K[4]_[15]=0
end
end
aN[_[7]][#aN[_[7]]+1]=a
end
end
aC=M
_=n[1]f[1]={_[1],_[2]}f[3]=_[3]cM=v(aV(f[1],bR)^2/4,16)bR={_[1],_[2]}f[2]=_[9]+41+cM*sin(as*20)/4
aq={}bh(#c[7])aH={}p={}aW={}aI={}X={}T={}aZ={}bs=N
for a=0,N-1 do
aH[a],X[a],T[a]=#c[6]+2,t+1,-t
end
a=1
while a<=#aq and bs>0 do
_=c[6][aq[a]]aW[a]={}aI[a]={}p[a]={}aZ[a]=aN[aq[a]]cs.sort(aZ[a],function(b,k)return n[b][20]>n[k][20]end)for o=_[2],_[1]+_[2]-1 do
W=c[5][o]y=c[2][W[4]]ca,cb=c[4][W[1]],c[4][W[2]]aS,bD=sub(ca,f[1]),sub(cb,f[1])bM=aX(aS)I,ba=bp(bM-f[3]),bp(aX(bD)-f[3])if A(I)<90 or A(ba)<90 then
ag,aj=bj(I,-O,O),bj(ba,-O,O)if A(I)>=90 or A(ba)>=90 then
cg=bm(aS,bD)if A(I)>=90 then
if cg>0 then ag=-O else ag=O end
else
if cg<0 then aj=-O else aj=O end
end
end
l,m=av(tan(ag)/L*E),av(tan(aj)/L*E)if l~=m then
r,ar=aV(f[1],ca),aV(f[1],cb)aF=W[3]+90
bE=aF-bM
cO=r*sin(bE)aY=(r*cos(bE))if I~=ag then
r=aY/cos(aF-(ag+f[3]))end
if ba~=aj then
ar=aY/cos(aF-(aj+f[3]))end
r,ar=r*cos(ag),ar*cos(aj)h=W[5]+6
cx=(l>m)if cx and y[h]~=0 then
al=y[3]&4>0
if al then
Z,V=aB[c[3][y[6]][6]],aB[c[3][y[7]][6]]end
ak=c[3][y[h]]cN={ak[3],ak[4],ak[5]}H,bP,ch=aB[ak[6]]for j,d in aL(cN)do
at=d>0
au=Q
if(at or(j==3 and not(bP and ch)))and(j==3 or al)then
bG=M
bT=0
if j<3 then
bG=j==1 and C(Z[4],V[4])==0
D,w=Z[3-j],V[3-j]au=(D<w)~=(j==2)~=(h==6)and D~=w and Z~=V
D,w=v(D,w),C(D,w)if au then
if j==1 then
bP=Q
else
ch=Q
bT=y[3]&16>0 and C(Z[2],V[2])-w or 0
end
end
else
if al then
D,w=C(Z[1],V[1]),v(Z[2],V[2])au=Z~=V
else
D,w=H[1],H[2]end
end
D,w=D-f[2],w-f[2]bZ,bU=D*aU,w*aU
if(au or at)and not bG then
bu=W[6]-ak[1]if y[4]==48 then
bu=bu-as
end
cJ,cG=bZ/r,bU/r
cH,cy=bZ/ar,bU/ar
cd=0
aD=M
if at then
_=c[21][d][4]if(W[4]==cc or bW==y[4]or y[8])and _>0 then
d=_
end
az=c[21][d][3]u=1
if(j==3 and y[3]&16>0)or(j==1 and y[3]&8==0)then
u=-1
end
end
for h=l,m,-1 do
cF=ck[h]by=(aF-f[3])-cF
g=E-h
ci=M
if g>=0 and g<=N-1 then
if a<aH[g]then
aM=(h-l)/(m-l)G,F=(cJ*(1-aM)+cH*aM),(cG*(1-aM)+cy*aM)if A(F+G)-(F-G)<ae then
if at then
if G~=F then
ci=Q
cq=aY*tan(by)aA=c_(v(((A(cq)+A(aY))//bV)+1,16))cf=ai((C(cq-cO,0)-bu)/(az*aA))cr=cf*aA
bN={g,t-G,t-F,d,cf,w-D,H[5],ak[2]+bT,Q,az*aA,aA,u,not aD,j==3 and al}if cr>cd or(not aD)or h==m then
cd=cr-1+aA
aD=Q
p[a][#p[a]+1]=bN
end
cB=bN
end
end
if au then
if j~=2 then
if F<X[g]then
aI[a][#aI[a]+1]={g,C(F,T[g]),X[g],H}end
if j==3 then ab=F else ab=G end
if X[g]>ab then X[g]=ab end
end
if j~=1 then
if G>T[g]then
aW[a][#aW[a]+1]={g,T[g],v(G,X[g]),H}end
if j==3 then ab=G else ab=F end
if T[g]<ab then T[g]=ab end
end
if(X[g]<=T[g])or(j==3 and(not al)and at)then
aH[g]=a
bs=bs-1
end
end
end
end
end
if(not ci)and aD then
aD=M
p[a][#p[a]+1]=cB
p[a][#p[a]][9]=M
end
end
if#p[a]>0 then
p[a][#p[a]][9]=M
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
function onDraw()b_=cj
local bJ,be,ac,cT=b_.drawTriangleF,b_.drawRectF,b_.setColor,b_.drawText
cR={aW,aI}if aR then
e=c[24][c[19][8][ao-3]]Y,am=e[1],e[2]z=N/ceil(Y*L)bX=z*1
for a=0,ceil(Y*L),1 do
l=(Y/2-a-1+f[3]/90*Y)%Y
m=(l%1-1)*z
l=ai(l)*am
for o=0,am-1,1 do
R=e[5+o+l]i=c[20][R]ac(i[1],i[2],i[3])be(a*z+m,o*z,bX,bX)end
end
for a=#p,1,-1 do
for o=1,#p[a]do
d=p[a][o]if d[9]or d[13]then
if d[9]then
S=p[a][o+1]else
S=d
end
e=c[21][d[4]]e=c[21][d[4]+(co%e[5])*c[19][3][2]+c[19][12][d[11]]]u=d[12]U=v(u,0)g=d[1]m=S[1]bQ=d[2-U]cP=S[2-U]h=d[3+U]bw=S[3+U]if not S[9]then m=m+1 end
aT(d[7])cQ=u*(d[2]-d[3])*e[3]/d[6]cD=u*(S[2]-S[3])*e[3]/S[6]bO=u>0 and v or C
bB=0
while h*u<bQ*u and(bB<e[2]or not d[14])do
bL=bO(h+cQ,bQ)bg=bO(bw+cD,cP)R=e[7+((U+d[8]//e[3])%e[2])+e[2]*((d[5])%e[1])]i=c[20][R]if i then
ac(i[1]*q,i[2]*q,i[3]*q)bJ(g,h,g,bL,m,bg)bJ(g,h,m,bw,m,bg)end
h=bL
bw=bg
U=U+u
bB=bB+1
end
end
end
for b=1,2 do
_=cR[b]cp={}ax,aE,bc=ae,-ae
for o,d in aL(_[a])do
ax=v(ax,d[2])aE=C(aE,d[3])bc=d
e=c[22][d[4][b+2]]if e and not ce then
aT(d[4][5])i=c[20][e[5]]ac(i[1]*q,i[2]*q,i[3]*q)cj.drawLine(d[1],t-d[2],d[1],ai(t-d[3]-1))end
end
if bc and ce then
H=bc[4]cw=(H[b]-f[2])bz=cos(f[3])bx=sin(f[3])for ay=ai(ax+t),ceil(aE+t)do
af=aU*cw/(t-ay)cl=bz*af-f[1][1]bI=bx*af-f[1][2]bK=-bx*af+cl
cn=bz*af+bI
cI=bx*af+cl
cK=-bz*af+bI
cE=(cI-bK)/N
cL=(cK-cn)/N
cp[ay]={cE,cL,bK,cn}end
for o,d in aL(_[a])do
if H[b+2]~=0 then
g=d[1]aT(H[5])k=H[b+2]e=c[22][k]e=c[22][k+(co%e[4])]cm=E-(E-g)*L
ax,aE=ai(d[2]+t),ceil(d[3]+t)az=e[3]for ay=ax,aE do
aG=cp[ay]cz=(aG[3]+aG[1]*cm)//az
cC=(aG[4]+aG[2]*cm)//az
R=6+(cC%e[1])+e[1]*(cz%e[2])i=c[20][e[R]]if i then
ac(i[1]*q,i[2]*q,i[3]*q)be(g,-ay+ae,1,1)end
end
end
end
end
end
for o=1,#aZ[a]do
_=n[aZ[a][o]]if _[6]~=0 then
aS=sub(_,f[1])r=_[20]if r>1 then
I=bp(aX(aS)-f[3])r=r*cos(I)if A(I)<90 then
l=E-av(tan(I)/L*E)by=av((P+I+f[3]-_[3]+bt*4)/360*8)K=c[16][_[6]][1]if K~=0 and _[6]~=1 then
e=c[17][A(K)][by%8+1]u=e<0 and-1 or 1
e=A(e)if e>0 then
e=c[23][e+c[19][12][v(c_(r//aO+1),8)]]Y,am=e[1],e[2]z=E/(L*r)aJ=z*bb
G=t+(f[2]-_[9])/r*aU
F=G-e[5]*aJ
m=l-u*e[4]*z
z,aJ=z*e[3],aJ*e[3]aT(_[8][5])q=K>0 and q or 1
bH=z
cv=bH*bb
cA=_[4]and c[15][_[4]][23]&8>0
for h=0,Y-1 do
l=m+h*z*u
if a<=aH[bj(av(l),0,N-1)]then
for j=0,am-1 do
R=e[7+j+h*am]if R~=0 then
if cA then
bf=bf%50+1
ac(0,0,0,v(75*c[13][2][bf],255))else
i=c[20][R]ac(i[1]*q,i[2]*q,i[3]*q)end
be(l,F+j*aJ,bH,cv)end
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
bt=bt+1
end
