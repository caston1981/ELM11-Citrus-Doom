
A=math
w=A.max
s=A.min
D=A.abs
ak=A.floor
ceil=A.ceil
sqrt=A.sqrt
I=input.getNumber
bn=input.getBool
pi=A.pi/180
bA=false
N=true
au=ipairs
bG=table.remove
bj=string
function be(b,n)return b[1]*n[2]-b[2]*n[1]end
function sub(b,n)return{(b[1]-n[1]),(b[2]-n[2])}end
function by(b)return((b+180)%360)-180 end
function sin(b)return A.sin(b*pi)end
function cos(b)return A.cos(b*pi)end
function tan(b)return A.tan(b*pi)end
function cO(b)return A.atan(b)/pi end
function aN(b)return A.atan(b[2],b[1])/pi end
function bx(b,n,_)return s(w(n,b),_)end
function av(b)return ak(b+.5)end
function aS(b,n)return sqrt(((b[1]-n[1])^2)+((b[2]-n[2])^2))end
function bO(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
function aP(b)q=s(b/255+aY,1)^2.2 end
c={}bb=1
ao=3
aB=N
l={{0,0},0}F=0
R=288
E=144
ab=128
t=64
aX={}aO=500
bK=250
bI=1
am=2^15
bs=3002
bl=0
aq=0
aF=0
bk=1.2
O=52
L=tan(O)aG=t*bk*R/ab/L
S=1
bD={}for a=-E,E do bD[a]=aN({1,a/E*L})end
function bp(a)if a<am then
local u,bC=c[7][a]bC=0<be({u[3],u[4]},sub(l[1],u))and 8 or 7
bp(u[bC])bp(u[15-bC])else
aD[#aD+1]=a-am
end
end
function aT(a,b)if a<am then
u=c[7][a]return aT(u[0<be({u[3],u[4]},sub(b,u))and 8 or 7],b)else
return a-am
end
end
function bo(b)u=c[5][c[6][b][2]]return aK[c[3][c[2][u[4]][u[5]+6]][6]]end
function onTick()bg=0
for o=1,3 do
if bn(9)and(not bz)or not c[21]then
bq=property.getText(bb)a=1
B=""
_=bj.sub(bq,a,a)while _~=""do
ar=bj.byte(_)if ar>64 then
B=(B..ar-65)+0
if S==1 then
bL=B
c[B]=c[B]or{}elseif S==2 then
cI=B
aE=0
elseif S==3 then
bu=B
else
if aE==0 then
aE=cI
bu=bu-1
bv={}c[bL][#c[bL]+1]=bv
end
bv[#bv+1]=B
aE=aE-1
S=w(aE,bu)>0 and S-1 or 0
end
S=S+1
B=""
else
B=B.._
end
a=a+1
_=bj.sub(bq,a,a)end
bb=bb+1
bz=bq==""
end
end
if bz then
if I(10)>0 then
aB=N
ao=I(10)end
if bI>0 and not aB then
ae={}az[#az+1]=ae
aw=6
_=I(aw)while _~=0 do
ai={}ae[#ae+1]=ai
for a=0,8 do
ai[a+1]=I(aw+a)end
aw=aw+9
_=I(aw)end
end
if bn(1)then
bX=0
cq=I(1)bI=I(3)aF=aF+1
bE=aF//10
if aB then
for a=1,10 do
c[a]=c[a+10*ao]end
k=c[1]cP={k[1][1],k[1][2]}for a=#k,1,-1 do
_=k[a]_=_[5]&(bs-3000)>0 or bG(k,a)end
aK=c[8]az={}ao=ao+1
end
if I(2)>0 then
_=c[2][I(2)]if _ then
b=_[4]if b>0 then
if b==3008 then
aV=_[5]>0 and _[5]elseif b>3004 then
aO=w(aO+3*(_[4]-3006),1)bK=aO/2
elseif b>3000 then
bs=_[4]end
bX=I(2)if b<3000 and c[9][_[5]][7]==0 then
_[8]=1
end
end
end
end
if bn(3)and cq~=1 and cq~=3 and aY<1 then
aY=.1
aq=5
else
aq=aq-1
if aq<1 then
aY=0
end
end
for a=1,#az do
ae=az[a]for o=1,#ae do
ai=ae[o]_=ai[1]if _>am then
_=aK[_-am]for g=1,6 do
_[g]=ai[g+1]end
elseif _<0 then
ar=c[1][-_]if ar and c[15][ar[4]or 1][29]=="light amp index" then
aY=1
aq=4200
end
while-_>#k do
k[#k+1]=bA
end
bG(k,-_)else
k[_]=k[_]or{}_=k[_]for g=1,8 do
_[c[19][1][g]]=ai[g+1]end
_[15]=0
_[7]=aT(#c[7],_)_[8]=bo(_[7])end
end
end
az={}for a=1,#c[6]do
aX[a]={}end
for a,_ in au(k)do
if aB then
_[7]=aT(#c[7],_)_[8]=bo(_[7])_[9]=_[8][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
end
if _ and a>1 then
bt=0
for o,d in au({1,2,9})do
_[d]=_[d]+_[d+10]bt=bt+_[d+10]end
if bt~=0 then
_[7]=aT(#c[7],_)_[8]=bo(_[7])end
_[15]=_[15]+1
_[20]=aS(_,l[1])M=c[16][_[6]]if M then
if M[5]>0 then
_[9]=_[8][1]end
if _[15]>=M[2]and M[2]~=-1 then
_[6]=M[4]_[15]=0
end
end
aX[_[7]][#aX[_[7]]+1]=a
end
end
_,aB=k[1]cK=s(aS(_,l[1])^2/4,16)l[1]={_[1],_[2]}F=_[3]l[2]=_[9]+41+cK*sin(aF*20)/4
aD={}bp(#c[7])aZ={}y={}aM={}ba={}W={}V={}aL={}bf=R
for a=0,R-1 do
aZ[a],W[a],V[a]=#c[6]+2,t+1,-t
end
a=1
while a<=#aD and bf>0 do
_=c[6][aD[a]]aM[a]={}ba[a]={}y[a]={}aL[a]=aX[aD[a]]table.sort(aL[a],function(b,n)return k[b][20]>k[n][20]end)for o=_[2],_[1]+_[2]-1 do
U=c[5][o]H=c[2][U[4]]cf,bS=c[4][U[1]],c[4][U[2]]b_,bV=sub(cf,l[1]),sub(bS,l[1])ce=aN(b_)K,aW=by(ce-F),by(aN(bV)-F)if D(K)<90 or D(aW)<90 then
ah,ac=bx(K,-O,O),bx(aW,-O,O)if D(K)>=90 or D(aW)>=90 then
cp=be(b_,bV)if D(K)>=90 then
if cp>0 then ah=-O else ah=O end
else
if cp<0 then ac=-O else ac=O end
end
end
m,p=av(tan(ah)/L*E),av(tan(ac)/L*E)if m~=p then
r,an=aS(l[1],cf),aS(l[1],bS)aQ=U[3]+90
bR=aQ-ce
cr=r*sin(bR)aJ=(r*cos(bR))if K~=ah then
r=aJ/cos(aQ-(ah+F))end
if aW~=ac then
an=aJ/cos(aQ-(ac+F))end
r,an=r*cos(ah),an*cos(ac)g=U[5]+6
cA=(m>p)if cA and H[g]~=0 then
at=H[3]&4>0
if at then
Y=aK[c[3][H[13-g]][6]]end
ag=c[3][H[g]]cJ={ag[3],ag[4],ag[5]}j,cb,bN=aK[ag[6]]for i,d in au(cJ)do
ad=d>0
aa=N
if(ad or(i==3 and not(cb and bN)))and(i==3 or at)then
bU=0
ch=N
if i<3 then
ch=i~=1 or w(j[4],Y[4])~=0
C,z=j[3-i],(i==1 and w or s)(Y[3-i],j[i])aa=(C<z)==(i==2)and C~=z and j~=Y
ad=aa
C,z=s(C,z),w(C,z)if aa then
if i==1 then
cb=N
else
bN=N
bU=H[3]&16>0 and w(j[2],Y[2])-z or 0
end
end
else
if at then
C,z=s(w(j[1],Y[1]),j[2]),w(s(j[2],Y[2]),j[1])aa=j~=Y
else
C,z=j[1],j[2]end
end
C,z=C-l[2],z-l[2]bM,bJ=C*aG,z*aG
if(aa or ad)and ch then
br=U[6]-ag[1]if H[4]==48 then
br=br-aF
end
cL,cu=bM/r,bJ/r
cC,cM=bM/an,bJ/an
cn,aC=0
if ad then
_=c[21][d][4]if(U[4]==bX or bs==H[4]or H[8])and _>0 then
d=_
end
ap=c[21][d][3]v=1
if(i==3 and H[3]&16>0)or(i==1 and H[3]&8==0)then
v=-1
end
end
for g=m,p,-1 do
cw=bD[g]bi=(aQ-F)-cw
f,ck=E-g
if f>=0 and f<=R-1 then
if a<aZ[f]then
aR=(g-m)/(p-m)J,G=(cL*(1-aR)+cC*aR),(cu*(1-aR)+cM*aR)if D(G+J)-(G-J)<ab then
if ad then
if J~=G then
ck=N
bP=aJ*tan(bi)ay=bO(s(((D(bP)+D(aJ))//bK)+1,16))ca=ak((w(bP-cr,0)-br)/(ap*ay))cj=ca*ay
cd={f,t-J,t-G,d,ca,z-C,j[5],ag[2]+bU,N,ap*ay,ay,v,not aC,i==3 and at}if cj>cn or(not aC)or g==p then
cn=cj-1+ay
aC=N
y[a][#y[a]+1]=cd
end
bQ=cd
end
end
if aa then
if i~=2 then
if G<W[f]then
ba[a][#ba[a]+1]={f,w(G,V[f]),W[f],j}end
if i==3 then Z=G else Z=J end
if W[f]>Z then W[f]=Z end
end
if i~=1 then
if J>V[f]then
aM[a][#aM[a]+1]={f,V[f],s(J,W[f]),j}end
if i==3 then Z=J else Z=G end
if V[f]<Z then V[f]=Z end
end
if(W[f]<=V[f])or(i==3 and(not at)and ad)then
aZ[f]=a
bf=bf-1
end
end
end
end
end
if(not ck)and aC then
bQ[9]=bA
y[a][#y[a]+1],aC=bQ
end
end
if#y[a]>0 then
y[a][#y[a]][9]=bA
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
function onDraw()aI=screen
local bT,c_,al,bW=aI.drawTriangleF,aI.drawRectF,aI.setColor,aI.drawLine
cz={aM,ba}if bz then
e=c[24][c[19][8][ao-3]]X,aA=e[1],e[2]x=R/ceil(X*L)for a=0,ceil(X*L),1 do
m=(X/2-a-1+F/90*X)%X
p=(m%1-1)*x
m=ak(m)*aA
for o=0,aA-1,1 do
Q=e[5+o+m]h=c[20][Q]al(h[1],h[2],h[3])c_(a*x+p,o*x,x,x)end
end
for a=#y,1,-1 do
for o=1,#y[a]do
d=y[a][o]if d[9]or d[13]then
if d[9]then
P=y[a][o+1]else
P=d
end
e=c[21][d[4]]e=c[21][d[4]+(bE%e[5])*"number of wall mipmap levels"+c[19][12][d[11]]]v=d[12]T=s(v,0)f=d[1]p=P[1]bH=d[2-T]cB=P[2-T]g=d[3+T]bd=P[3+T]if not P[9]then p=p+1 end
aP(d[7])cv=v*(d[2]-d[3])*e[3]/d[6]cG=v*(P[2]-P[3])*e[3]/P[6]co=v>0 and s or w
bc=0
while g*v<bH*v and(bc<e[2]or not d[14])do
cl=co(g+cv,bH)bh=co(bd+cG,cB)Q=e[7+((T+d[8]//e[3])%e[2])+e[2]*((d[5])%e[1])]h=c[20][Q]if h then
al(h[1]*q,h[2]*q,h[3]*q)bT(f,g,f,cl,p,bh)bT(f,g,p,bd,p,bh)end
g=cl
bd=bh
T=T+v
bc=bc+1
end
end
end
for b=1,2 do
_=cz[b]bZ={}ax,as,bB=ab,-ab
for o,d in au(_[a])do
ax=s(ax,d[2])as=w(as,d[3])bB=d
e=c[22][d[4][b+2]]if e and not aV then
aP(d[4][5])h=c[20][e[5]]al(h[1]*q,h[2]*q,h[3]*q)bW(d[1],t-d[2],d[1],ak(t-d[3]-1))end
end
if bB and aV then
j=bB[4]cs=(j[b]-l[2])bm=cos(F)bw=sin(F)for aj=ak(ax+t),ceil(as+t)do
af=aG*cs/(t-aj)cg=bm*af-l[1][1]cc=bw*af-l[1][2]cm=-bw*af+cg
bF=bm*af+cc
cx=bw*af+cg
cH=-bm*af+cc
ct=(cx-cm)/R
cN=(cH-bF)/R
bZ[aj]={ct,cN,cm,bF}end
for o,d in au(_[a])do
if j[b+2]~=0 then
f=d[1]if f%aV==0 then
aP(j[5])n=j[b+2]e=c[22][n]e=c[22][n+(bE%e[4])]ci=E-(E-f)*L
ax,as=ak(d[2]+t),ceil(d[3]+t)ap=e[3]for aj=ax,as do
aU=bZ[aj]cy=(aU[3]+aU[1]*ci)//ap
cE=(aU[4]+aU[2]*ci)//ap
Q=6+(cE%e[1])+e[1]*(cy%e[2])h=c[20][e[Q]]if h then
al(h[1]*q,h[2]*q,h[3]*q)bW(f,ab-aj,f+aV+1,ab-aj)end
end
end
end
end
end
end
for o=1,#aL[a]do
_=k[aL[a][o]]if _[6]~=0 then
b_=sub(_,l[1])r=_[20]if r>1 then
K=by(aN(b_)-F)r=r*cos(K)if D(K)<90 then
m=E-av(tan(K)/L*E)bi=av((180+K+F-_[3]+bg*4)/360*8)M=c[16][_[6]][1]if M~=0 and _[6]~=1 then
e=c[17][D(M)][bi%8+1]v=e<0 and-1 or 1
e=D(e)if e>0 then
e=c[23][e+c[19][12][s(bO(r//aO+1),8)]]X,aA=e[1],e[2]x=E/(L*r)aH=x*bk
J=t+(l[2]-_[9])/r*aG
G=J-e[5]*aH
p=m-v*e[4]*x
x,aH=x*e[3],aH*e[3]aP(_[8][5])q=M>0 and q or 1
bY=x
cD=bY*bk
cF=c[15][_[4]or 1][23]&8>0
for g=0,X-1 do
m=p+g*x*v
if a<=aZ[bx(av(m),0,R-1)]then
for i=0,aA-1 do
Q=e[7+i+g*aA]if Q~=0 then
if cF then
bl=bl%50+1
al(0,0,0,s(75*c[13][2][bl],255))else
h=c[20][Q]al(h[1]*q,h[2]*q,h[3]*q)end
c_(m,G+i*aH,bY,cD)end
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
