
v=math
F=v.max
w=v.min
D=v.abs
ai=v.floor
ceil=v.ceil
sqrt=v.sqrt
I=input.getNumber
bb=input.getBool
pi=v.pi/180
bB=false
O=true
aE=ipairs
bI=table.remove
bm=string
function bi(b,o)return b[1]*o[2]-b[2]*o[1]end
function sub(b,o)return{(b[1]-o[1]),(b[2]-o[2])}end
function br(b)return((b+180)%360)-180 end
function sin(b)return v.sin(b*pi)end
function cos(b)return v.cos(b*pi)end
function tan(b)return v.tan(b*pi)end
function cT(b)return v.atan(b)/pi end
function aG(b)return v.atan(b[2],b[1])/pi end
function bt(b,o,_)return w(F(o,b),_)end
function ax(b)return ai(b+.5)end
function aI(b,o)return sqrt(((b[1]-o[1])^2)+((b[2]-o[2])^2))end
function bN(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
function aJ(b)q=w(b/255+ck,1)^2.2 end
c={}bh=1
aB=3
at=O
k={{0,0},0}B=0
R=288
z=144
aa=128
u=aa//2
aR={}aM=400
bT=200
cd=1
cR=0
aA={}aN=2^15
bn=3002
bu=0
aS=0
aq=0
bl=1.2
N=52
L=tan(N)aY=u*bl*R/aa/L
X=1
ch={}for a=-z,z do ch[a]=aG({1,a/z*L})end
function bx(a)if a<aN then
local t,bg=c[7][a]bg=0<bi({t[3],t[4]},sub(k[1],t))and 8 or 7
bx(t[bg])bx(t[15-bg])else
ap[#ap+1]=a-aN
end
end
function aL(a,b)if a<aN then
t=c[7][a]return aL(t[0<bi({t[3],t[4]},sub(b,t))and 8 or 7],b)else
return a-aN
end
end
function bc(b)t=c[5][c[6][b][2]]return aw[c[3][c[2][t[4]][t[5]+6]][6]]end
function onTick()bw=0
for l=1,3 do
if bb(9)and(not bs)or not c[21]then
bv=property.getText(bh)a=1
y=""
_=bm.sub(bv,a,a)while _~=""do
bY=bm.byte(_)if bY>64 then
y=(y..bY-65)+0
if X==1 then
bG=y
c[y]=c[y]or{}elseif X==2 then
cs=y
ar=0
elseif X==3 then
by=y
else
if ar==0 then
ar=cs
by=by-1
bp={}c[bG][#c[bG]+1]=bp
end
bp[#bp+1]=y
ar=ar-1
X=F(ar,by)>0 and X-1 or 0
end
X=X+1
y=""
else
y=y.._
end
a=a+1
_=bm.sub(bv,a,a)end
bh=bh+1
bs=bv==""
end
end
if bs then
if I(9)>0 then
at=O
aB=I(9)end
if cd>0 and not at then
af={}aA[#aA+1]=af
av=5
_=I(av)while _~=0 do
ak={}af[#af+1]=ak
for a=0,8 do
ak[a+1]=I(av+a)end
av=av+9
_=I(av)end
end
if bb(1)then
cp=0
cj=I(1)cd=I(3)aq=aq+1
ci=aq//10
if at then
for a=1,10 do
c[a]=c[a+10*aB]end
j=c[1]cQ={j[1][1],j[1][2]}for a=#j,1,-1 do
_=j[a]_=_[5]&(bn-3000)>0 or bI(j,a)end
aw=c[8]aB=aB+1
end
if I(2)>0 then
_=c[2][I(2)]if _ then
b=_[4]if b>0 then
if b==3008 then
aX=_[5]>0 and _[5]elseif b>3004 then
aM=F(aM+3*(_[4]-3006),1)bT=aM/2
elseif b>3000 then
bn=_[4]end
cp=I(2)if b<3000 and c[9][_[5]][7]==0 then
_[8]=1
end
end
end
end
if bb(3)and cj~=1 and cj~=3 then
ck=.1
aS=5
else
aS=aS-1
if aS<1 then
ck=0
end
end
for a=1,#aA do
af=aA[a]for l=1,#af do
ak=af[l]_=ak[1]if _>(2^15)then
_=aw[_-(2^15)]for g=1,6 do
_[g]=ak[g+1]end
elseif _<0 then
while-_>#j do
j[#j+1]=bB
end
bI(j,-_)else
if not j[_]then
j[_]={}end
_=j[_]for g=1,8 do
_[c[19][1][g]]=ak[g+1]end
_[15]=0
_[7]=aL(#c[7],_)_[8]=bc(_[7])end
end
end
aA={}for a=1,#c[6]do
aR[a]={}end
for a,_ in aE(j)do
if at then
_[7]=aL(#c[7],_)_[8]=bc(_[7])_[9]=_[8][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
end
if _ and a>1 then
bf=0
for l,d in aE({1,2,9})do
_[d]=_[d]+_[d+10]bf=bf+_[d+10]end
if bf~=0 then
_[7]=aL(#c[7],_)_[8]=bc(_[7])end
_[15]=_[15]+1
_[20]=aI(_,k[1])M=c[16][_[6]]if M~=nil then
if M[5]>0 then
_[9]=_[8][1]end
if _[15]>=M[2]and M[2]~=-1 then
_[6]=M[4]_[15]=0
end
end
aR[_[7]][#aR[_[7]]+1]=a
end
end
_,at=j[1]ct=w(aI(_,k[1])^2/4,16)k[1]={_[1],_[2]}B=_[3]cS=_[9]+1
k[2]=_[9]+41+ct*sin(aq*20)/4
ap={}bx(#c[7])aF={}p={}aW={}aT={}U={}ab={}b_={}bj=R
for a=0,R-1 do
aF[a],U[a],ab[a]=#c[6]+2,u+1,-u
end
a=1
while a<=#ap and bj>0 do
_=c[6][ap[a]]aW[a]={}aT[a]={}p[a]={}b_[a]=aR[ap[a]]table.sort(b_[a],function(b,o)return j[b][20]>j[o][20]end)for l=_[2],_[1]+_[2]-1 do
Y=c[5][l]C=c[2][Y[4]]cm,bK=c[4][Y[1]],c[4][Y[2]]aQ,bV=sub(cm,k[1]),sub(bK,k[1])cl=aG(aQ)K,aU=br(cl-B),br(aG(bV)-B)if D(K)<90 or D(aU)<90 then
ad,ag=bt(K,-N,N),bt(aU,-N,N)if D(K)>=90 or D(aU)>=90 then
ce=bi(aQ,bV)if D(K)>=90 then
if ce>0 then ad=-N else ad=N end
else
if ce<0 then ag=-N else ag=N end
end
end
m,n=ax(tan(ad)/L*z),ax(tan(ag)/L*z)if m~=n then
r,aC=aI(k[1],cm),aI(k[1],bK)aH=Y[3]+90
c_=aH-cl
cy=r*sin(c_)aV=(r*cos(c_))if K~=ad then
r=aV/cos(aH-(ad+B))end
if aU~=ag then
aC=aV/cos(aH-(ag+B))end
r,aC=r*cos(ad),aC*cos(ag)g=Y[5]+6
cx=(m>n)if cx and C[g]~=0 then
ay=C[3]&4>0
if ay then
W,V=aw[c[3][C[6]][6]],aw[c[3][C[7]][6]]end
aj=c[3][C[g]]cw={aj[3],aj[4],aj[5]}G,bO,bW=aw[aj[6]]for i,d in aE(cw)do
as=d>0
ao=O
if(as or(i==3 and not(bO and bW)))and(i==3 or ay)then
bR,bE=0
if i<3 then
bE=i==1 and F(W[4],V[4])==0
A,x=W[3-i],V[3-i]ao=(A<x)~=(i==2)~=(g==6)and A~=x and W~=V
A,x=w(A,x),F(A,x)if ao then
if i==1 then
bO=O
else
bW=O
bR=C[3]&16>0 and F(W[2],V[2])-x or 0
end
end
else
if ay then
A,x=F(W[1],V[1]),w(W[2],V[2])ao=W~=V
else
A,x=G[1],G[2]end
end
A,x=A-k[2],x-k[2]co,bL=A*aY,x*aY
if(ao or as)and not bE then
bq=Y[6]-aj[1]if C[4]==48 then
bq=bq-aq
end
cM,cO=co/r,bL/r
cN,cC=co/aC,bL/aC
bU,aD=0
if as then
_=c[21][d][4]if(Y[4]==cp or bn==C[4]or C[8])and _>0 then
d=_
end
al=c[21][d][3]s=1
if(i==3 and C[3]&16>0)or(i==1 and C[3]&8==0)then
s=-1
end
end
for g=m,n,-1 do
cv=ch[g]bo=(aH-B)-cv
f,bF=z-g
if f>=0 and f<=R-1 then
if a<aF[f]then
aZ=(g-m)/(n-m)J,H=(cM*(1-aZ)+cN*aZ),(cO*(1-aZ)+cC*aZ)if D(H+J)-(H-J)<aa then
if as then
if J~=H then
bF=O
cn=aV*tan(bo)am=bN(w(((D(cn)+D(aV))//bT)+1,16))cq=ai((F(cn-cy,0)-bq)/(al*am))bS=cq*am
bP={f,u-J,u-H,d,cq,x-A,G[5],aj[2]+bR,O,al*am,am,s,not aD,i==3 and ay}if bS>bU or(not aD)or g==n then
bU=bS-1+am
aD=O
p[a][#p[a]+1]=bP
end
cP=bP
end
end
if ao then
if i~=2 then
if H<U[f]then
aT[a][#aT[a]+1]={f,F(H,ab[f]),U[f],G}end
if i==3 then T=H else T=J end
if U[f]>T then U[f]=T end
end
if i~=1 then
if J>ab[f]then
aW[a][#aW[a]+1]={f,ab[f],w(J,U[f]),G}end
if i==3 then T=J else T=H end
if ab[f]<T then ab[f]=T end
end
if(U[f]<=ab[f])or(i==3 and(not ay)and as)then
aF[f]=a
bj=bj-1
end
end
end
end
end
if(not bF)and aD then
p[a][#p[a]+1],aD=cP
p[a][#p[a]][9]=bB
end
end
if#p[a]>0 then
p[a][#p[a]][9]=bB
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
function onDraw()aP=screen
local bH,bD,ac,cI=aP.drawTriangleF,aP.drawRectF,aP.setColor,aP.drawLine
cu={aW,aT}if bs then
e=c[24][c[19][8][aB-3]]Z,an=e[1],e[2]E=R/ceil(Z*L)bC=E*1
for a=0,ceil(Z*L),1 do
m=(Z/2-a-1+B/90*Z)%Z
n=(m%1-1)*E
m=ai(m)*an
for l=0,an-1,1 do
Q=e[5+l+m]h=c[20][Q]ac(h[1],h[2],h[3])bD(a*E+n,l*E,bC,bC)end
end
for a=#p,1,-1 do
for l=1,#p[a]do
d=p[a][l]if d[9]or d[13]then
if d[9]then
P=p[a][l+1]else
P=d
end
e=c[21][d[4]]e=c[21][d[4]+(ci%e[5])*c[19][3][2]+c[19][12][d[11]]]s=d[12]S=w(s,0)f=d[1]n=P[1]bZ=d[2-S]cF=P[2-S]g=d[3+S]bA=P[3+S]if not P[9]then n=n+1 end
aJ(d[7])cD=s*(d[2]-d[3])*e[3]/d[6]cE=s*(P[2]-P[3])*e[3]/P[6]bM=s>0 and w or F
bd=0
while g*s<bZ*s and(bd<e[2]or not d[14])do
cf=bM(g+cD,bZ)bz=bM(bA+cE,cF)Q=e[7+((S+d[8]//e[3])%e[2])+e[2]*((d[5])%e[1])]h=c[20][Q]if h then
ac(h[1]*q,h[2]*q,h[3]*q)bH(f,g,f,cf,n,bz)bH(f,g,n,bA,n,bz)end
g=cf
bA=bz
S=S+s
bd=bd+1
end
end
end
for b=1,2 do
_=cu[b]bQ={}az,au,be=aa,-aa
for l,d in aE(_[a])do
az=w(az,d[2])au=F(au,d[3])be=d
e=c[22][d[4][b+2]]if e and not aX then
aJ(d[4][5])h=c[20][e[5]]ac(h[1]*q,h[2]*q,h[3]*q)screen.drawLine(d[1],u-d[2],d[1],ai(u-d[3]-1))end
end
if be and aX then
G=be[4]cH=(G[b]-k[2])ba=cos(B)bk=sin(B)for ah=ai(az+u),ceil(au+u)do
ae=aY*cH/(u-ah)bX=ba*ae-k[1][1]cg=bk*ae-k[1][2]cc=-bk*ae+bX
ca=ba*ae+cg
cB=bk*ae+bX
cK=-ba*ae+cg
cG=(cB-cc)/R
cJ=(cK-ca)/R
bQ[ah]={cG,cJ,cc,ca}end
for l,d in aE(_[a])do
if G[b+2]~=0 then
f=d[1]if f%aX==0 then
aJ(G[5])o=G[b+2]e=c[22][o]e=c[22][o+(ci%e[4])]bJ=z-(z-f)*L
az,au=ai(d[2]+u),ceil(d[3]+u)al=e[3]for ah=az,au do
aO=bQ[ah]cL=(aO[3]+aO[1]*bJ)//al
cr=(aO[4]+aO[2]*bJ)//al
Q=6+(cr%e[1])+e[1]*(cL%e[2])h=c[20][e[Q]]if h then
ac(h[1]*q,h[2]*q,h[3]*q)cI(f,aa-ah,f+aX+1,aa-ah)end
end
end
end
end
end
end
for l=1,#b_[a]do
_=j[b_[a][l]]if _[6]~=0 then
aQ=sub(_,k[1])r=_[20]if r>1 then
K=br(aG(aQ)-B)r=r*cos(K)if D(K)<90 then
m=z-ax(tan(K)/L*z)bo=ax((180+K+B-_[3]+bw*4)/360*8)M=c[16][_[6]][1]if M~=0 and _[6]~=1 then
e=c[17][D(M)][bo%8+1]s=e<0 and-1 or 1
e=D(e)if e>0 then
e=c[23][e+c[19][12][w(bN(r//aM+1),8)]]Z,an=e[1],e[2]E=z/(L*r)aK=E*bl
J=u+(k[2]-_[9])/r*aY
H=J-e[5]*aK
n=m-s*e[4]*E
E,aK=E*e[3],aK*e[3]aJ(_[8][5])q=M>0 and q or 1
cb=E
cz=cb*bl
cA=_[4]and c[15][_[4]][23]&8>0
for g=0,Z-1 do
m=n+g*E*s
if a<=aF[bt(ax(m),0,R-1)]then
for i=0,an-1 do
Q=e[7+i+g*an]if Q~=0 then
if cA then
bu=bu%50+1
ac(0,0,0,w(75*c[13][2][bu],255))else
h=c[20][Q]ac(h[1]*q,h[2]*q,h[3]*q)end
bD(m,H+i*aK,cb,cz)end
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
bw=bw+1
end
