
z=math
v=z.max
s=z.min
E=z.abs
ab=z.floor
ceil=z.ceil
sqrt=z.sqrt
K=input.getNumber
bx=input.getBool
pi=z.pi/180
bt=false
L=true
aE=ipairs
co=table.remove
bi=string
function bb(b,p)return b[1]*p[2]-b[2]*p[1]end
function sub(b,p)return{(b[1]-p[1]),(b[2]-p[2])}end
function bg(b)return((b+180)%360)-180 end
function sin(b)return z.sin(b*pi)end
function cos(b)return z.cos(b*pi)end
function tan(b)return z.tan(b*pi)end
function cO(b)return z.atan(b)/pi end
function aV(b)return z.atan(b[2],b[1])/pi end
function bm(b,p,_)return s(v(p,b),_)end
function az(b)return ab(b+.5)end
function aK(b,p)return sqrt(((b[1]-p[1])^2)+((b[2]-p[2])^2))end
function bY(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
function ba(b)r=s(b/255+aZ,1)^2.2 end
c={}bs=1
aD=3
ap=L
l={{0,0},0}B=0
R=288
D=144
af=128
t=64
b_={}aU=500
bW=250
bG=1
al=2^15
bC=3002
bq=0
ax=0
av=0
bp=1.2
M=52
N=tan(M)aY=t*bp*R/af/N
Z=1
cg={}for a=-D,D do cg[a]=aV({1,a/D*N})end
function bd(a)if a<al then
local u,bu=c[7][a]bu=0<bb({u[3],u[4]},sub(l[1],u))and 8 or 7
bd(u[bu])bd(u[15-bu])else
ay[#ay+1]=a-al
end
end
function aX(a,b)if a<al then
u=c[7][a]return aX(u[0<bb({u[3],u[4]},sub(b,u))and 8 or 7],b)else
return a-al
end
end
function bn(b)u=c[5][c[6][b][2]]return aT[c[3][c[2][u[4]][u[5]+6]][6]]end
function onTick()bB=0
for o=1,3 do
if bx(9)and(not bo)or not c[21]then
bv=property.getText(bs)a=1
F=""
_=bi.sub(bv,a,a)while _~=""do
an=bi.byte(_)if an>64 then
F=(F..an-65)+0
if Z==1 then
bL=F
c[F]=c[F]or{}elseif Z==2 then
cG=F
ao=0
elseif Z==3 then
bl=F
else
if ao==0 then
ao=cG
bl=bl-1
bh={}c[bL][#c[bL]+1]=bh
end
bh[#bh+1]=F
ao=ao-1
Z=v(ao,bl)>0 and Z-1 or 0
end
Z=Z+1
F=""
else
F=F.._
end
a=a+1
_=bi.sub(bv,a,a)end
bs=bs+1
bo=bv==""
end
end
if bo then
if K(10)>0 then
ap=L
aD=K(10)end
if bG>0 and not ap then
ak={}aF[#aF+1]=ak
at=6
_=K(at)while _~=0 do
ae={}ak[#ak+1]=ae
for a=0,8 do
ae[a+1]=K(at+a)end
at=at+9
_=K(at)end
end
if bx(1)then
bJ=0
ce=K(1)bG=K(3)av=av+1
cb=av//10
if ap then
for a=1,10 do
c[a]=c[a+10*aD]end
k=c[1]cP={k[1][1],k[1][2]}for a=#k,1,-1 do
_=k[a]_=_[5]&(bC-3000)>0 or co(k,a)end
aT=c[8]aF={}aD=aD+1
end
if K(2)>0 then
_=c[2][K(2)]if _ then
b=_[4]if b>0 then
if b==3008 then
aS=_[5]>0 and _[5]elseif b>3004 then
aU=v(aU+3*(_[4]-3006),1)bW=aU/2
elseif b>3000 then
bC=_[4]end
bJ=K(2)if b<3000 and c[9][_[5]][7]==0 then
_[8]=1
end
end
end
end
if bx(3)and ce~=1 and ce~=3 and aZ<1 then
aZ=.1
ax=5
else
ax=ax-1
if ax<1 then
aZ=0
end
end
for a=1,#aF do
ak=aF[a]for o=1,#ak do
ae=ak[o]_=ae[1]if _>al then
_=aT[_-al]for g=1,6 do
_[g]=ae[g+1]end
elseif _<0 then
an=c[1][-_]if an and c[15][an[4]or 1][29]=="light amp index" then
aZ=1
ax=4200
end
while-_>#k do
k[#k+1]=bt
end
co(k,-_)else
k[_]=k[_]or{}_=k[_]for g=1,8 do
_[c[19][1][g]]=ae[g+1]end
_[15]=0
_[7]=aX(#c[7],_)_[8]=bn(_[7])end
end
end
aF={}for a=1,#c[6]do
b_[a]={}end
for a,_ in aE(k)do
if ap then
_[7]=aX(#c[7],_)_[8]=bn(_[7])_[9]=_[8][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
end
if _ and a>1 then
bk=0
for o,d in aE({1,2,9})do
_[d]=_[d]+_[d+10]bk=bk+_[d+10]end
if bk~=0 then
_[7]=aX(#c[7],_)_[8]=bn(_[7])end
_[15]=_[15]+1
_[20]=aK(_,l[1])O=c[16][_[6]]if O then
if O[5]>0 then
_[9]=_[8][1]end
if _[15]>=O[2]and O[2]~=-1 then
_[6]=O[4]_[15]=0
end
end
b_[_[7]][#b_[_[7]]+1]=a
end
end
_,ap=k[1]cJ=s(aK(_,l[1])^2/4,16)l[1]={_[1],_[2]}B=_[3]l[2]=_[9]+41+cJ*sin(av*20)/4
ay={}bd(#c[7])aJ={}A={}aP={}aQ={}W={}U={}aG={}bf=R
for a=0,R-1 do
aJ[a],W[a],U[a]=#c[6]+2,t+1,-t
end
a=1
while a<=#ay and bf>0 do
_=c[6][ay[a]]aP[a]={}aQ[a]={}A[a]={}aG[a]=b_[ay[a]]table.sort(aG[a],function(b,p)return k[b][20]>k[p][20]end)for o=_[2],_[1]+_[2]-1 do
X=c[5][o]I=c[2][X[4]]bR,bK=c[4][X[1]],c[4][X[2]]aI,bQ=sub(bR,l[1]),sub(bK,l[1])bM=aV(aI)H,aL=bg(bM-B),bg(aV(bQ)-B)if E(H)<90 or E(aL)<90 then
am,ag=bm(H,-M,M),bm(aL,-M,M)if E(H)>=90 or E(aL)>=90 then
cj=bb(aI,bQ)if E(H)>=90 then
if cj>0 then am=-M else am=M end
else
if cj<0 then ag=-M else ag=M end
end
end
m,n=az(tan(am)/N*D),az(tan(ag)/N*D)if m~=n then
q,aB=aK(l[1],bR),aK(l[1],bK)aM=X[3]+90
bS=aM-bM
cL=q*sin(bS)aR=(q*cos(bS))if H~=am then
q=aR/cos(aM-(am+B))end
if aL~=ag then
aB=aR/cos(aM-(ag+B))end
q,aB=q*cos(am),aB*cos(ag)g=X[5]+6
ct=(m>n)if ct and I[g]~=0 then
au=I[3]&4>0
if au then
V=aT[c[3][I[13-g]][6]]end
ad=c[3][I[g]]cz={ad[3],ad[4],ad[5]}j,bV,bH=aT[ad[6]]for i,d in aE(cz)do
ah=d>0
ac=L
if(ah or(i==3 and not(bV and bH)))and(i==3 or au)then
ca=0
cn=L
if i<3 then
cn=i~=1 or v(j[4],V[4])~=0
C,y=j[3-i],(i==1 and v or s)(V[3-i],j[i])ac=(C<y)==(i==2)and C~=y and j~=V
ah=ac
C,y=s(C,y),v(C,y)if ac then
if i==1 then
bV=L
else
bH=L
ca=I[3]&16>0 and v(j[2],V[2])-y or 0
end
end
else
if au then
C,y=s(v(j[1],V[1]),j[2]),v(s(j[2],V[2]),j[1])ac=j~=V
else
C,y=j[1],j[2]end
end
C,y=C-l[2],y-l[2]cp,bZ=C*aY,y*aY
if(ac or ah)and cn then
bc=X[6]-ad[1]if I[4]==48 then
bc=bc-av
end
cD,cB=cp/q,bZ/q
cC,cK=cp/aB,bZ/aB
bT,aC=0
if ah then
_=c[21][d][4]if(X[4]==bJ or bC==I[4]or I[8])and _>0 then
d=_
end
as=c[21][d][3]w=1
if(i==3 and I[3]&16>0)or(i==1 and I[3]&8==0)then
w=-1
end
end
for g=m,n,-1 do
cM=cg[g]bj=(aM-B)-cM
f,bO=D-g
if f>=0 and f<=R-1 then
if a<aJ[f]then
aO=(g-m)/(n-m)J,G=(cD*(1-aO)+cC*aO),(cB*(1-aO)+cK*aO)if E(G+J)-(G-J)<af then
if ah then
if J~=G then
bO=L
bF=aR*tan(bj)ar=bY(s(((E(bF)+E(aR))//bW)+1,16))cm=ab((v(bF-cL,0)-bc)/(as*ar))ck=cm*ar
bX={f,t-J,t-G,d,cm,y-C,j[5],ad[2]+ca,L,as*ar,ar,w,not aC,i==3 and au}if ck>bT or(not aC)or g==n then
bT=ck-1+ar
aC=L
A[a][#A[a]+1]=bX
end
cf=bX
end
end
if ac then
if i~=2 then
if G<W[f]then
aQ[a][#aQ[a]+1]={f,v(G,U[f]),W[f],j}end
if i==3 then Y=G else Y=J end
if W[f]>Y then W[f]=Y end
end
if i~=1 then
if J>U[f]then
aP[a][#aP[a]+1]={f,U[f],s(J,W[f]),j}end
if i==3 then Y=J else Y=G end
if U[f]<Y then U[f]=Y end
end
if(W[f]<=U[f])or(i==3 and(not au)and ah)then
aJ[f]=a
bf=bf-1
end
end
end
end
end
if(not bO)and aC then
cf[9]=bt
A[a][#A[a]+1],aC=cf
end
end
if#A[a]>0 then
A[a][#A[a]][9]=bt
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
function onDraw()aH=screen
local cc,bD,ai,cl=aH.drawTriangleF,aH.drawRectF,aH.setColor,aH.drawLine
cv={aP,aQ}if bo then
e=c[24][c[19][8][aD-3]]S,aw=e[1],e[2]x=R/ceil(S*N)for a=0,ceil(S*N),1 do
m=(S/2-a-1+B/90*S)%S
n=(m%1-1)*x
m=ab(m)*aw
for o=0,aw-1,1 do
P=e[5+o+m]h=c[20][P]ai(h[1],h[2],h[3])bD(a*x+n,o*x,x,x)end
end
for a=#A,1,-1 do
for o=1,#A[a]do
d=A[a][o]if d[9]or d[13]then
if d[9]then
Q=A[a][o+1]else
Q=d
end
e=c[21][d[4]]e=c[21][d[4]+(cb%e[5])*"number of wall mipmap levels"+c[19][12][d[11]]]w=d[12]T=s(w,0)f=d[1]n=Q[1]cq=d[2-T]cE=Q[2-T]g=d[3+T]br=Q[3+T]if not Q[9]then n=n+1 end
ba(d[7])cA=w*(d[2]-d[3])*e[3]/d[6]cN=w*(Q[2]-Q[3])*e[3]/Q[6]bI=w>0 and s or v
by=0
while g*w<cq*w and(by<e[2]or not d[14])do
bU=bI(g+cA,cq)bw=bI(br+cN,cE)P=e[7+((T+d[8]//e[3])%e[2])+e[2]*((d[5])%e[1])]h=c[20][P]if h then
ai(h[1]*r,h[2]*r,h[3]*r)cc(f,g,f,bU,n,bw)cc(f,g,n,br,n,bw)end
g=bU
br=bw
T=T+w
by=by+1
end
end
end
for b=1,2 do
_=cv[b]bN={}aA,aq,bA=af,-af
for o,d in aE(_[a])do
aA=s(aA,d[2])aq=v(aq,d[3])bA=d
e=c[22][d[4][b+2]]if e and not aS then
ba(d[4][5])h=c[20][e[5]]ai(h[1]*r,h[2]*r,h[3]*r)cl(d[1],t-d[2],d[1],ab(t-d[3]-1))end
end
if bA and aS then
j=bA[4]cu=(j[b]-l[2])bz=cos(B)be=sin(B)for aj=ab(aA+t),ceil(aq+t)do
aa=aY*cu/(t-aj)c_=bz*aa-l[1][1]ci=be*aa-l[1][2]bP=-be*aa+c_
bE=bz*aa+ci
cw=be*aa+c_
cH=-bz*aa+ci
cF=(cw-bP)/R
cI=(cH-bE)/R
bN[aj]={cF,cI,bP,bE}end
for o,d in aE(_[a])do
if j[b+2]~=0 then
f=d[1]if f%aS==0 then
ba(j[5])p=j[b+2]e=c[22][p]e=c[22][p+(cb%e[4])]ch=D-(D-f)*N
aA,aq=ab(d[2]+t),ceil(d[3]+t)as=e[3]for aj=aA,aq do
aW=bN[aj]cx=(aW[3]+aW[1]*ch)//as
cr=(aW[4]+aW[2]*ch)//as
P=6+(cr%e[1])+e[1]*(cx%e[2])h=c[20][e[P]]if h then
ai(h[1]*r,h[2]*r,h[3]*r)cl(f,af-aj,f+aS+1,af-aj)end
end
end
end
end
end
end
for o=1,#aG[a]do
_=k[aG[a][o]]if _[6]~=0 then
aI=sub(_,l[1])q=_[20]if q>1 then
H=bg(aV(aI)-B)q=q*cos(H)if E(H)<90 then
m=D-az(tan(H)/N*D)bj=az((180+H+B-_[3]+bB*4)/360*8)O=c[16][_[6]][1]if O~=0 and _[6]~=1 then
e=c[17][E(O)][bj%8+1]w=e<0 and-1 or 1
e=E(e)if e>0 then
e=c[23][e+c[19][12][s(bY(q//aU+1),8)]]S,aw=e[1],e[2]x=D/(N*q)aN=x*bp
J=t+(l[2]-_[9])/q*aY
G=J-e[5]*aN
n=m-w*e[4]*x
x,aN=x*e[3],aN*e[3]ba(_[8][5])r=O>0 and r or 1
cd=x
cy=cd*bp
cs=c[15][_[4]or 1][23]&8>0
for g=0,S-1 do
m=n+g*x*w
if a<=aJ[bm(az(m),0,R-1)]then
for i=0,aw-1 do
P=e[7+i+g*aw]if P~=0 then
if cs then
bq=bq%50+1
ai(0,0,0,s(75*c[13][2][bq],255))else
h=c[20][P]ai(h[1]*r,h[2]*r,h[3]*r)end
bD(m,G+i*aN,cd,cy)end
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
bB=bB+1
end
