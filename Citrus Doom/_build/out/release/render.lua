
z=math
v=z.max
s=z.min
D=z.abs
ak=z.floor
ceil=z.ceil
sqrt=z.sqrt
I=input.getNumber
bA=input.getBool
pi=z.pi/180
be=false
P=true
ax=ipairs
ci=table.remove
bt=string
function bp(b,n)return b[1]*n[2]-b[2]*n[1]end
function sub(b,n)return{(b[1]-n[1]),(b[2]-n[2])}end
function br(b)return((b+180)%360)-180 end
function sin(b)return z.sin(b*pi)end
function cos(b)return z.cos(b*pi)end
function tan(b)return z.tan(b*pi)end
function cS(b)return z.atan(b)/pi end
function aM(b)return z.atan(b[2],b[1])/pi end
function bk(b,n,_)return s(v(n,b),_)end
function av(b)return ak(b+.5)end
function aO(b,n)return sqrt(((b[1]-n[1])^2)+((b[2]-n[2])^2))end
function bB(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
function aX(b)q=s(b/255+c_,1)^2.2 end
c={}bw=1
aA=3
au=P
l={{0,0},0}F=0
Q=288
A=144
ab=128
w=64
aQ={}aT=400
bV=200
cd=1
cQ=0
aC={}aU=2^15
bs=3002
bl=0
aH=0
at=0
by=1.2
L=52
M=tan(L)aI=w*by*Q/ab/M
W=1
cm={}for a=-A,A do cm[a]=aM({1,a/A*M})end
function bz(a)if a<aU then
local x,bb=c[7][a]bb=0<bp({x[3],x[4]},sub(l[1],x))and 8 or 7
bz(x[bb])bz(x[15-bb])else
as[#as+1]=a-aU
end
end
function aV(a,b)if a<aU then
x=c[7][a]return aV(x[0<bp({x[3],x[4]},sub(b,x))and 8 or 7],b)else
return a-aU
end
end
function bv(b)x=c[5][c[6][b][2]]return aF[c[3][c[2][x[4]][x[5]+6]][6]]end
function onTick()bh=0
for o=1,3 do
if bA(9)and(not ba)or not c[21]then
bn=property.getText(bw)a=1
B=""
_=bt.sub(bn,a,a)while _~=""do
cp=bt.byte(_)if cp>64 then
B=(B..cp-65)+0
if W==1 then
bO=B
c[B]=c[B]or{}elseif W==2 then
cI=B
aw=0
elseif W==3 then
bq=B
else
if aw==0 then
aw=cI
bq=bq-1
bu={}c[bO][#c[bO]+1]=bu
end
bu[#bu+1]=B
aw=aw-1
W=v(aw,bq)>0 and W-1 or 0
end
W=W+1
B=""
else
B=B.._
end
a=a+1
_=bt.sub(bn,a,a)end
bw=bw+1
ba=bn==""
end
end
if ba then
if I(9)>0 then
au=P
aA=I(9)end
if cd>0 and not au then
ac={}aC[#aC+1]=ac
ay=5
_=I(ay)while _~=0 do
ae={}ac[#ac+1]=ae
for a=0,8 do
ae[a+1]=I(ay+a)end
ay=ay+9
_=I(ay)end
end
if bA(1)then
cj=0
bI=I(1)cd=I(3)at=at+1
bK=at//10
if au then
for a=1,10 do
c[a]=c[a+10*aA]end
k=c[1]cR={k[1][1],k[1][2]}for a=#k,1,-1 do
_=k[a]_=_[5]&(bs-3000)>0 or ci(k,a)end
aF=c[8]aA=aA+1
end
if I(2)>0 then
_=c[2][I(2)]if _ then
b=_[4]if b>0 then
if b==3008 then
aD=_[5]>0 and _[5]elseif b>3004 then
aT=v(aT+3*(_[4]-3006),1)bV=aT/2
elseif b>3000 then
bs=_[4]end
cj=I(2)if b<3000 and c[9][_[5]][7]==0 then
_[8]=1
end
end
end
end
if bA(3)and bI~=1 and bI~=3 then
c_=.1
aH=5
else
aH=aH-1
if aH<1 then
c_=0
end
end
for a=1,#aC do
ac=aC[a]for o=1,#ac do
ae=ac[o]_=ae[1]if _>(2^15)then
_=aF[_-(2^15)]for g=1,6 do
_[g]=ae[g+1]end
elseif _<0 then
while-_>#k do
k[#k+1]=be
end
ci(k,-_)else
if not k[_]then
k[_]={}end
_=k[_]for g=1,8 do
_[c[19][1][g]]=ae[g+1]end
_[15]=0
_[7]=aV(#c[7],_)_[8]=bv(_[7])end
end
end
aC={}for a=1,#c[6]do
aQ[a]={}end
for a,_ in ax(k)do
if au then
_[7]=aV(#c[7],_)_[8]=bv(_[7])_[9]=_[8][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
end
if _ and a>1 then
bo=0
for o,d in ax({1,2,9})do
_[d]=_[d]+_[d+10]bo=bo+_[d+10]end
if bo~=0 then
_[7]=aV(#c[7],_)_[8]=bv(_[7])end
_[15]=_[15]+1
_[20]=aO(_,l[1])N=c[16][_[6]]if N~=nil then
if N[5]>0 then
_[9]=_[8][1]end
if _[15]>=N[2]and N[2]~=-1 then
_[6]=N[4]_[15]=0
end
end
aQ[_[7]][#aQ[_[7]]+1]=a
end
end
_,au=k[1]cF=s(aO(_,l[1])^2/4,16)l[1]={_[1],_[2]}F=_[3]cP=_[9]+1
l[2]=_[9]+41+cF*sin(at*20)/4
as={}bz(#c[7])aR={}t={}aG={}aJ={}U={}Y={}aY={}bc=Q
for a=0,Q-1 do
aR[a],U[a],Y[a]=#c[6]+2,w+1,-w
end
a=1
while a<=#as and bc>0 do
_=c[6][as[a]]aG[a]={}aJ[a]={}t[a]={}aY[a]=aQ[as[a]]table.sort(aY[a],function(b,n)return k[b][20]>k[n][20]end)for o=_[2],_[1]+_[2]-1 do
Z=c[5][o]G=c[2][Z[4]]bS,bZ=c[4][Z[1]],c[4][Z[2]]aL,bU=sub(bS,l[1]),sub(bZ,l[1])bN=aM(aL)H,aS=br(bN-F),br(aM(bU)-F)if D(H)<90 or D(aS)<90 then
aa,ai=bk(H,-L,L),bk(aS,-L,L)if D(H)>=90 or D(aS)>=90 then
bL=bp(aL,bU)if D(H)>=90 then
if bL>0 then aa=-L else aa=L end
else
if bL<0 then ai=-L else ai=L end
end
end
p,m=av(tan(aa)/M*A),av(tan(ai)/M*A)if p~=m then
r,aq=aO(l[1],bS),aO(l[1],bZ)aP=Z[3]+90
ck=aP-bN
cC=r*sin(ck)aE=(r*cos(ck))if H~=aa then
r=aE/cos(aP-(aa+F))end
if aS~=ai then
aq=aE/cos(aP-(ai+F))end
r,aq=r*cos(aa),aq*cos(ai)g=Z[5]+6
cA=(p>m)if cA and G[g]~=0 then
an=G[3]&4>0
if an then
X=aF[c[3][G[13-g]][6]]end
al=c[3][G[g]]cB={al[3],al[4],al[5]}j,bQ,cg=aF[al[6]]for i,d in ax(cB)do
ag=d>0
af=P
if(ag or(i==3 and not(bQ and cg)))and(i==3 or an)then
cb,bJ=0
if i<3 then
bJ=i==1 and v(j[4],X[4])==0
E,y=j[3-i],(i==1 and v or s)(X[3-i],j[i])af=(E<y)==(i==2)and E~=y and j~=X
ag=af
E,y=s(E,y),v(E,y)if af then
if i==1 then
bQ=P
else
cg=P
cb=G[3]&16>0 and v(j[2],X[2])-y or 0
end
end
else
if an then
E,y=s(v(j[1],X[1]),j[2]),v(s(j[2],X[2]),j[1])af=j~=X
else
E,y=j[1],j[2]end
end
E,y=E-l[2],y-l[2]bG,bH=E*aI,y*aI
if(af or ag)and not bJ then
bj=Z[6]-al[1]if G[4]==48 then
bj=bj-at
end
cG,cH=bG/r,bH/r
cJ,cN=bG/aq,bH/aq
bT,ap=0
if ag then
_=c[21][d][4]if(Z[4]==cj or bs==G[4]or G[8])and _>0 then
d=_
end
ao=c[21][d][3]u=1
if(i==3 and G[3]&16>0)or(i==1 and G[3]&8==0)then
u=-1
end
end
for g=p,m,-1 do
cE=cm[g]bd=(aP-F)-cE
f,bY=A-g
if f>=0 and f<=Q-1 then
if a<aR[f]then
aZ=(g-p)/(m-p)K,J=(cG*(1-aZ)+cJ*aZ),(cH*(1-aZ)+cN*aZ)if D(J+K)-(J-K)<ab then
if ag then
if K~=J then
bY=P
bF=aE*tan(bd)az=bB(s(((D(bF)+D(aE))//bV)+1,16))bD=ak((v(bF-cC,0)-bj)/(ao*az))bC=bD*az
bE={f,w-K,w-J,d,bD,y-E,j[5],al[2]+cb,P,ao*az,az,u,not ap,i==3 and an}if bC>bT or(not ap)or g==m then
bT=bC-1+az
ap=P
t[a][#t[a]+1]=bE
end
cK=bE
end
end
if af then
if i~=2 then
if J<U[f]then
aJ[a][#aJ[a]+1]={f,v(J,Y[f]),U[f],j}end
if i==3 then V=J else V=K end
if U[f]>V then U[f]=V end
end
if i~=1 then
if K>Y[f]then
aG[a][#aG[a]+1]={f,Y[f],s(K,U[f]),j}end
if i==3 then V=K else V=J end
if Y[f]<V then Y[f]=V end
end
if(U[f]<=Y[f])or(i==3 and(not an)and ag)then
aR[f]=a
bc=bc-1
end
end
end
end
end
if(not bY)and ap then
t[a][#t[a]+1],ap=cK
t[a][#t[a]][9]=be
end
end
if#t[a]>0 then
t[a][#t[a]][9]=be
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
function onDraw()aN=screen
local ch,cl,ad,cc=aN.drawTriangleF,aN.drawRectF,aN.setColor,aN.drawLine
cv={aG,aJ}if ba then
e=c[24][c[19][8][aA-3]]S,aB=e[1],e[2]C=Q/ceil(S*M)bX=C*1
for a=0,ceil(S*M),1 do
p=(S/2-a-1+F/90*S)%S
m=(p%1-1)*C
p=ak(p)*aB
for o=0,aB-1,1 do
R=e[5+o+p]h=c[20][R]ad(h[1],h[2],h[3])cl(a*C+m,o*C,bX,bX)end
end
for a=#t,1,-1 do
for o=1,#t[a]do
d=t[a][o]if d[9]or d[13]then
if d[9]then
O=t[a][o+1]else
O=d
end
e=c[21][d[4]]e=c[21][d[4]+(bK%e[5])*c[19][3][2]+c[19][12][d[11]]]u=d[12]T=s(u,0)f=d[1]m=O[1]cn=d[2-T]cr=O[2-T]g=d[3+T]bx=O[3+T]if not O[9]then m=m+1 end
aX(d[7])cu=u*(d[2]-d[3])*e[3]/d[6]cL=u*(O[2]-O[3])*e[3]/O[6]co=u>0 and s or v
bg=0
while g*u<cn*u and(bg<e[2]or not d[14])do
cq=co(g+cu,cn)bi=co(bx+cL,cr)R=e[7+((T+d[8]//e[3])%e[2])+e[2]*((d[5])%e[1])]h=c[20][R]if h then
ad(h[1]*q,h[2]*q,h[3]*q)ch(f,g,f,cq,m,bi)ch(f,g,m,bx,m,bi)end
g=cq
bx=bi
T=T+u
bg=bg+1
end
end
end
for b=1,2 do
_=cv[b]bM={}am,ar,b_=ab,-ab
for o,d in ax(_[a])do
am=s(am,d[2])ar=v(ar,d[3])b_=d
e=c[22][d[4][b+2]]if e and not aD then
aX(d[4][5])h=c[20][e[5]]ad(h[1]*q,h[2]*q,h[3]*q)cc(d[1],w-d[2],d[1],ak(w-d[3]-1))end
end
if b_ and aD then
j=b_[4]cD=(j[b]-l[2])bm=cos(F)bf=sin(F)for ah=ak(am+w),ceil(ar+w)do
aj=aI*cD/(w-ah)bP=bm*aj-l[1][1]ca=bf*aj-l[1][2]bR=-bf*aj+bP
bW=bm*aj+ca
cO=bf*aj+bP
cM=-bm*aj+ca
cw=(cO-bR)/Q
cs=(cM-bW)/Q
bM[ah]={cw,cs,bR,bW}end
for o,d in ax(_[a])do
if j[b+2]~=0 then
f=d[1]if f%aD==0 then
aX(j[5])n=j[b+2]e=c[22][n]e=c[22][n+(bK%e[4])]ce=A-(A-f)*M
am,ar=ak(d[2]+w),ceil(d[3]+w)ao=e[3]for ah=am,ar do
aW=bM[ah]ct=(aW[3]+aW[1]*ce)//ao
cy=(aW[4]+aW[2]*ce)//ao
R=6+(cy%e[1])+e[1]*(ct%e[2])h=c[20][e[R]]if h then
ad(h[1]*q,h[2]*q,h[3]*q)cc(f,ab-ah,f+aD+1,ab-ah)end
end
end
end
end
end
end
for o=1,#aY[a]do
_=k[aY[a][o]]if _[6]~=0 then
aL=sub(_,l[1])r=_[20]if r>1 then
H=br(aM(aL)-F)r=r*cos(H)if D(H)<90 then
p=A-av(tan(H)/M*A)bd=av((180+H+F-_[3]+bh*4)/360*8)N=c[16][_[6]][1]if N~=0 and _[6]~=1 then
e=c[17][D(N)][bd%8+1]u=e<0 and-1 or 1
e=D(e)if e>0 then
e=c[23][e+c[19][12][s(bB(r//aT+1),8)]]S,aB=e[1],e[2]C=A/(M*r)aK=C*by
K=w+(l[2]-_[9])/r*aI
J=K-e[5]*aK
m=p-u*e[4]*C
C,aK=C*e[3],aK*e[3]aX(_[8][5])q=N>0 and q or 1
cf=C
cz=cf*by
cx=_[4]and c[15][_[4]][23]&8>0
for g=0,S-1 do
p=m+g*C*u
if a<=aR[bk(av(p),0,Q-1)]then
for i=0,aB-1 do
R=e[7+i+g*aB]if R~=0 then
if cx then
bl=bl%50+1
ad(0,0,0,s(75*c[13][2][bl],255))else
h=c[20][R]ad(h[1]*q,h[2]*q,h[3]*q)end
cl(p,J+i*aK,cf,cz)end
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
bh=bh+1
end
