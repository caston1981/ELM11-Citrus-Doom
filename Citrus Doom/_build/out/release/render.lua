
A=math
w=A.max
r=A.min
B=A.abs
ak=A.floor
ceil=A.ceil
sqrt=A.sqrt
K=input.getNumber
be=input.getBool
pi=A.pi/180
bx=false
O=true
aA=ipairs
cn=table.remove
bu=string
function bk(b,p)return b[1]*p[2]-b[2]*p[1]end
function sub(b,p)return{(b[1]-p[1]),(b[2]-p[2])}end
function bv(b)return((b+180)%360)-180 end
function sin(b)return A.sin(b*pi)end
function cos(b)return A.cos(b*pi)end
function tan(b)return A.tan(b*pi)end
function cO(b)return A.atan(b)/pi end
function aV(b)return A.atan(b[2],b[1])/pi end
function by(b,p,_)return r(w(p,b),_)end
function as(b)return ak(b+.5)end
function aX(b,p)return sqrt(((b[1]-p[1])^2)+((b[2]-p[2])^2))end
function cf(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
function aR(b)q=r(b/255+aS,1)^2.2 end
c={}bl=1
aw=3
ao=O
l={{0,0},0}F=0
R=288
E=144
af=128
u=64
aI={}aQ=500
cm=250
cg=1
ai=2^15
bp=3002
bo=0
ax=0
aD=0
bA=1.2
L=52
M=tan(L)aL=u*bA*R/af/M
X=1
bS={}for a=-E,E do bS[a]=aV({1,a/E*M})end
function bz(a)if a<ai then
local v,bf=c[7][a]bf=0<bk({v[3],v[4]},sub(l[1],v))and 8 or 7
bz(v[bf])bz(v[15-bf])else
aB[#aB+1]=a-ai
end
end
function b_(a,b)if a<ai then
v=c[7][a]return b_(v[0<bk({v[3],v[4]},sub(b,v))and 8 or 7],b)else
return a-ai
end
end
function bj(b)v=c[5][c[6][b][2]]return aT[c[3][c[2][v[4]][v[5]+6]][6]]end
function onTick()bn=0
for n=1,3 do
if be(9)and(not bw)or not c[21]then
bC=property.getText(bl)a=1
C=""
_=bu.sub(bC,a,a)while _~=""do
ay=bu.byte(_)if ay>64 then
C=(C..ay-65)+0
if X==1 then
cb=C
c[C]=c[C]or{}elseif X==2 then
cD=C
aq=0
elseif X==3 then
bB=C
else
if aq==0 then
aq=cD
bB=bB-1
bs={}c[cb][#c[cb]+1]=bs
end
bs[#bs+1]=C
aq=aq-1
X=w(aq,bB)>0 and X-1 or 0
end
X=X+1
C=""
else
C=C.._
end
a=a+1
_=bu.sub(bC,a,a)end
bl=bl+1
bw=bC==""
end
end
if bw then
if K(10)>0 then
ao=O
aw=K(10)end
if cg>0 and not ao then
ad={}ap[#ap+1]=ad
au=6
_=K(au)while _~=0 do
ag={}ad[#ad+1]=ag
for a=0,8 do
ag[a+1]=K(au+a)end
au=au+9
_=K(au)end
end
if be(1)then
cd=0
bW=K(1)cg=K(3)aD=aD+1
bG=aD//10
if ao then
for a=1,10 do
c[a]=c[a+10*aw]end
k=c[1]cP={k[1][1],k[1][2]}for a=#k,1,-1 do
_=k[a]_=_[5]&(bp-3000)>0 or cn(k,a)end
aT=c[8]ap={}aw=aw+1
end
if K(2)>0 then
_=c[2][K(2)]if _ then
b=_[4]if b>0 then
if b==3008 then
aW=_[5]>0 and _[5]elseif b>3004 then
aQ=w(aQ+3*(_[4]-3006),1)cm=aQ/2
elseif b>3000 then
bp=_[4]end
cd=K(2)if b<3000 and c[9][_[5]][7]==0 then
_[8]=1
end
end
end
end
if be(3)and bW~=1 and bW~=3 and aS<1 then
aS=.1
ax=5
else
ax=ax-1
if ax<1 then
aS=0
end
end
for a=1,#ap do
ad=ap[a]for n=1,#ad do
ag=ad[n]_=ag[1]if _>ai then
_=aT[_-ai]for g=1,6 do
_[g]=ag[g+1]end
elseif _<0 then
ay=c[1][-_]if ay and c[15][ay[4]or 1][29]=="light amp index" then
aS=1
ax=4200
end
while-_>#k do
k[#k+1]=bx
end
cn(k,-_)else
k[_]=k[_]or{}_=k[_]for g=1,8 do
_[c[19][1][g]]=ag[g+1]end
_[15]=0
_[7]=b_(#c[7],_)_[8]=bj(_[7])end
end
end
ap={}for a=1,#c[6]do
aI[a]={}end
for a,_ in aA(k)do
if ao then
_[7]=b_(#c[7],_)_[8]=bj(_[7])_[9]=_[8][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
end
if _ and a>1 then
bd=0
for n,d in aA({1,2,9})do
_[d]=_[d]+_[d+10]bd=bd+_[d+10]end
if bd~=0 then
_[7]=b_(#c[7],_)_[8]=bj(_[7])end
_[15]=_[15]+1
_[20]=aX(_,l[1])N=c[16][_[6]]if N then
if N[5]>0 then
_[9]=_[8][1]end
if _[15]>=N[2]and N[2]~=-1 then
_[6]=N[4]_[15]=0
end
end
aI[_[7]][#aI[_[7]]+1]=a
end
end
_,ao=k[1]cx=r(aX(_,l[1])^2/4,16)l[1]={_[1],_[2]}F=_[3]l[2]=_[9]+41+cx*sin(aD*20)/4
aB={}bz(#c[7])aG={}y={}aK={}aN={}Y={}T={}aZ={}bm=R
for a=0,R-1 do
aG[a],Y[a],T[a]=#c[6]+2,u+1,-u
end
a=1
while a<=#aB and bm>0 do
_=c[6][aB[a]]aK[a]={}aN[a]={}y[a]={}aZ[a]=aI[aB[a]]table.sort(aZ[a],function(b,p)return k[b][20]>k[p][20]end)for n=_[2],_[1]+_[2]-1 do
Z=c[5][n]I=c[2][Z[4]]bF,bT=c[4][Z[1]],c[4][Z[2]]aP,bE=sub(bF,l[1]),sub(bT,l[1])cc=aV(aP)H,aM=bv(cc-F),bv(aV(bE)-F)if B(H)<90 or B(aM)<90 then
al,ae=by(H,-L,L),by(aM,-L,L)if B(H)>=90 or B(aM)>=90 then
ca=bk(aP,bE)if B(H)>=90 then
if ca>0 then al=-L else al=L end
else
if ca<0 then ae=-L else ae=L end
end
end
m,o=as(tan(al)/M*E),as(tan(ae)/M*E)if m~=o then
s,at=aX(l[1],bF),aX(l[1],bT)aJ=Z[3]+90
bX=aJ-cc
cB=s*sin(bX)ba=(s*cos(bX))if H~=al then
s=ba/cos(aJ-(al+F))end
if aM~=ae then
at=ba/cos(aJ-(ae+F))end
s,at=s*cos(al),at*cos(ae)g=Z[5]+6
ct=(m>o)if ct and I[g]~=0 then
aE=I[3]&4>0
if aE then
W=aT[c[3][I[13-g]][6]]end
am=c[3][I[g]]cF={am[3],am[4],am[5]}j,bO,bR=aT[am[6]]for h,d in aA(cF)do
ab=d>0
ac=O
if(ab or(h==3 and not(bO and bR)))and(h==3 or aE)then
ci=0
bQ=O
if h<3 then
bQ=h~=1 or w(j[4],W[4])~=0
D,x=j[3-h],(h==1 and w or r)(W[3-h],j[h])ac=(D<x)==(h==2)and D~=x and j~=W
ab=ac
D,x=r(D,x),w(D,x)if ac then
if h==1 then
bO=O
else
bR=O
ci=I[3]&16>0 and w(j[2],W[2])-x or 0
end
end
else
if aE then
D,x=r(w(j[1],W[1]),j[2]),w(r(j[2],W[2]),j[1])ac=j~=W
else
D,x=j[1],j[2]end
end
D,x=D-l[2],x-l[2]ck,cl=D*aL,x*aL
if(ac or ab)and bQ then
bi=Z[6]-am[1]if I[4]==48 then
bi=bi-aD
end
cv,cK=ck/s,cl/s
cs,cI=ck/at,cl/at
co,aC=0
if ab then
_=c[21][d][4]if(Z[4]==cd or bp==I[4]or I[8])and _>0 then
d=_
end
av=c[21][d][3]t=1
if(h==3 and I[3]&16>0)or(h==1 and I[3]&8==0)then
t=-1
end
end
for g=m,o,-1 do
cH=bS[g]br=(aJ-F)-cH
f,bZ=E-g
if f>=0 and f<=R-1 then
if a<aG[f]then
aU=(g-m)/(o-m)J,G=(cv*(1-aU)+cs*aU),(cK*(1-aU)+cI*aU)if B(G+J)-(G-J)<af then
if ab then
if J~=G then
bZ=O
bV=ba*tan(br)aF=cf(r(((B(bV)+B(ba))//cm)+1,16))c_=ak((w(bV-cB,0)-bi)/(av*aF))bP=c_*aF
cp={f,u-J,u-G,d,c_,x-D,j[5],am[2]+ci,O,av*aF,aF,t,not aC,h==3 and aE}if bP>co or(not aC)or g==o then
co=bP-1+aF
aC=O
y[a][#y[a]+1]=cp
end
bU=cp
end
end
if ac then
if h~=2 then
if G<Y[f]then
aN[a][#aN[a]+1]={f,w(G,T[f]),Y[f],j}end
if h==3 then U=G else U=J end
if Y[f]>U then Y[f]=U end
end
if h~=1 then
if J>T[f]then
aK[a][#aK[a]+1]={f,T[f],r(J,Y[f]),j}end
if h==3 then U=J else U=G end
if T[f]<U then T[f]=U end
end
if(Y[f]<=T[f])or(h==3 and(not aE)and ab)then
aG[f]=a
bm=bm-1
end
end
end
end
end
if(not bZ)and aC then
bU[9]=bx
y[a][#y[a]+1],aC=bU
end
end
if#y[a]>0 then
y[a][#y[a]][9]=bx
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
function onDraw()aY=screen
local bI,bD,aa,cq=aY.drawTriangleF,aY.drawRectF,aY.setColor,aY.drawLine
cC={aK,aN}if bw then
e=c[24][c[19][8][aw-3]]V,az=e[1],e[2]z=R/ceil(V*M)for a=0,ceil(V*M),1 do
m=(V/2-a-1+F/90*V)%V
o=(m%1-1)*z
m=ak(m)*az
for n=0,az-1,1 do
Q=e[5+n+m]i=c[20][Q]aa(i[1],i[2],i[3])bD(a*z+o,n*z,z,z)end
end
for a=#y,1,-1 do
for n=1,#y[a]do
d=y[a][n]if d[9]or d[13]then
if d[9]then
P=y[a][n+1]else
P=d
end
e=c[21][d[4]]e=c[21][d[4]+(bG%e[5])*"number of wall mipmap levels"+c[19][12][d[11]]]t=d[12]S=r(t,0)f=d[1]o=P[1]ch=d[2-S]cJ=P[2-S]g=d[3+S]bg=P[3+S]if not P[9]then o=o+1 end
aR(d[7])cE=t*(d[2]-d[3])*e[3]/d[6]cA=t*(P[2]-P[3])*e[3]/P[6]bH=t>0 and r or w
bh=0
while g*t<ch*t and(bh<e[2]or not d[14])do
bJ=bH(g+cE,ch)bb=bH(bg+cA,cJ)Q=e[7+((S+d[8]//e[3])%e[2])+e[2]*((d[5])%e[1])]i=c[20][Q]if i then
aa(i[1]*q,i[2]*q,i[3]*q)bI(f,g,f,bJ,o,bb)bI(f,g,o,bg,o,bb)end
g=bJ
bg=bb
S=S+t
bh=bh+1
end
end
end
for b=1,2 do
_=cC[b]bL={}ar,an,bt=af,-af
for n,d in aA(_[a])do
ar=r(ar,d[2])an=w(an,d[3])bt=d
e=c[22][d[4][b+2]]if e and not aW then
aR(d[4][5])i=c[20][e[5]]aa(i[1]*q,i[2]*q,i[3]*q)cq(d[1],u-d[2],d[1],ak(u-d[3]-1))end
end
if bt and aW then
j=bt[4]cu=(j[b]-l[2])bq=cos(F)bc=sin(F)for ah=ak(ar+u),ceil(an+u)do
aj=aL*cu/(u-ah)bK=bq*aj-l[1][1]bY=bc*aj-l[1][2]bN=-bc*aj+bK
cj=bq*aj+bY
cM=bc*aj+bK
cN=-bq*aj+bY
cw=(cM-bN)/R
cL=(cN-cj)/R
bL[ah]={cw,cL,bN,cj}end
for n,d in aA(_[a])do
if j[b+2]~=0 then
f=d[1]if f%aW==0 then
aR(j[5])p=j[b+2]e=c[22][p]e=c[22][p+(bG%e[4])]ce=E-(E-f)*M
ar,an=ak(d[2]+u),ceil(d[3]+u)av=e[3]for ah=ar,an do
aH=bL[ah]cy=(aH[3]+aH[1]*ce)//av
cz=(aH[4]+aH[2]*ce)//av
Q=6+(cz%e[1])+e[1]*(cy%e[2])i=c[20][e[Q]]if i then
aa(i[1]*q,i[2]*q,i[3]*q)cq(f,af-ah,f+aW+1,af-ah)end
end
end
end
end
end
end
for n=1,#aZ[a]do
_=k[aZ[a][n]]if _[6]~=0 then
aP=sub(_,l[1])s=_[20]if s>1 then
H=bv(aV(aP)-F)s=s*cos(H)if B(H)<90 then
m=E-as(tan(H)/M*E)br=as((180+H+F-_[3]+bn*4)/360*8)N=c[16][_[6]][1]if N~=0 and _[6]~=1 then
e=c[17][B(N)][br%8+1]t=e<0 and-1 or 1
e=B(e)if e>0 then
e=c[23][e+c[19][12][r(cf(s//aQ+1),8)]]V,az=e[1],e[2]z=E/(M*s)aO=z*bA
J=u+(l[2]-_[9])/s*aL
G=J-e[5]*aO
o=m-t*e[4]*z
z,aO=z*e[3],aO*e[3]aR(_[8][5])q=N>0 and q or 1
bM=z
cG=bM*bA
cr=c[15][_[4]or 1][23]&8>0
for g=0,V-1 do
m=o+g*z*t
if a<=aG[by(as(m),0,R-1)]then
for h=0,az-1 do
Q=e[7+h+g*az]if Q~=0 then
if cr then
bo=bo%50+1
aa(0,0,0,r(75*c[13][2][bo],255))else
i=c[20][Q]aa(i[1]*q,i[2]*q,i[3]*q)end
bD(m,G+h*aO,bM,cG)end
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
bn=bn+1
end
