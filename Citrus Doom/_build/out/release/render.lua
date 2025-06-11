
z=math
w=z.max
s=z.min
B=z.abs
aa=z.floor
ceil=z.ceil
sqrt=z.sqrt
I=input.getNumber
bq=input.getBool
pi=z.pi/180
br=false
P=true
aB=ipairs
bI=table.remove
bv=string
function bp(b,p)return b[1]*p[2]-b[2]*p[1]end
function sub(b,p)return{(b[1]-p[1]),(b[2]-p[2])}end
function bA(b)return((b+180)%360)-180 end
function sin(b)return z.sin(b*pi)end
function cos(b)return z.cos(b*pi)end
function tan(b)return z.tan(b*pi)end
function cQ(b)return z.atan(b)/pi end
function aF(b)return z.atan(b[2],b[1])/pi end
function bw(b,p,_)return s(w(p,b),_)end
function ap(b)return aa(b+.5)end
function aT(b,p)return sqrt(((b[1]-p[1])^2)+((b[2]-p[2])^2))end
function cp(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
function aY(b)t=s(b/255+cq,1)^2.2 end
c={}bs=1
aq=3
ay=P
l={{0,0},0}F=0
R=288
D=144
ag=128
v=64
aE={}aW=400
bX=200
bL=1
cP=0
aJ=2^15
ba=3002
bm=0
aG=0
au=0
bh=1.2
M=52
L=tan(M)aL=v*bh*R/ag/L
S=1
cb={}for a=-D,D do cb[a]=aF({1,a/D*L})end
function bn(a)if a<aJ then
local u,bu=c[7][a]bu=0<bp({u[3],u[4]},sub(l[1],u))and 8 or 7
bn(u[bu])bn(u[15-bu])else
az[#az+1]=a-aJ
end
end
function aS(a,b)if a<aJ then
u=c[7][a]return aS(u[0<bp({u[3],u[4]},sub(b,u))and 8 or 7],b)else
return a-aJ
end
end
function bx(b)u=c[5][c[6][b][2]]return aN[c[3][c[2][u[4]][u[5]+6]][6]]end
function onTick()bz=0
for o=1,3 do
if bq(9)and(not bj)or not c[21]then
bo=property.getText(bs)a=1
E=""
_=bv.sub(bo,a,a)while _~=""do
bO=bv.byte(_)if bO>64 then
E=(E..bO-65)+0
if S==1 then
cd=E
c[E]=c[E]or{}elseif S==2 then
cG=E
aA=0
elseif S==3 then
bt=E
else
if aA==0 then
aA=cG
bt=bt-1
b_={}c[cd][#c[cd]+1]=b_
end
b_[#b_+1]=E
aA=aA-1
S=w(aA,bt)>0 and S-1 or 0
end
S=S+1
E=""
else
E=E.._
end
a=a+1
_=bv.sub(bo,a,a)end
bs=bs+1
bj=bo==""
end
end
if bj then
if I(9)>0 then
ay=P
aq=I(9)end
if bL>0 and not ay then
ae={}aw[#aw+1]=ae
av=5
_=I(av)while _~=0 do
ak={}ae[#ae+1]=ak
for a=0,8 do
ak[a+1]=I(av+a)end
av=av+9
_=I(av)end
end
if bq(1)then
bY=0
bP=I(1)bL=I(3)au=au+1
ck=au//10
if ay then
for a=1,10 do
c[a]=c[a+10*aq]end
k=c[1]cR={k[1][1],k[1][2]}for a=#k,1,-1 do
_=k[a]_=_[5]&(ba-3000)>0 or bI(k,a)end
aN=c[8]aw={}aq=aq+1
end
if I(2)>0 then
_=c[2][I(2)]if _ then
b=_[4]if b>0 then
if b==3008 then
aR=_[5]>0 and _[5]elseif b>3004 then
aW=w(aW+3*(_[4]-3006),1)bX=aW/2
elseif b>3000 then
ba=_[4]end
bY=I(2)if b<3000 and c[9][_[5]][7]==0 then
_[8]=1
end
end
end
end
if bq(3)and bP~=1 and bP~=3 then
cq=.1
aG=5
else
aG=aG-1
if aG<1 then
cq=0
end
end
for a=1,#aw do
ae=aw[a]for o=1,#ae do
ak=ae[o]_=ak[1]if _>(2^15)then
_=aN[_-(2^15)]for g=1,6 do
_[g]=ak[g+1]end
elseif _<0 then
while-_>#k do
k[#k+1]=br
end
bI(k,-_)else
if not k[_]then
k[_]={}end
_=k[_]for g=1,8 do
_[c[19][1][g]]=ak[g+1]end
_[15]=0
_[7]=aS(#c[7],_)_[8]=bx(_[7])end
end
end
aw={}for a=1,#c[6]do
aE[a]={}end
for a,_ in aB(k)do
if ay then
_[7]=aS(#c[7],_)_[8]=bx(_[7])_[9]=_[8][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
end
if _ and a>1 then
bb=0
for o,d in aB({1,2,9})do
_[d]=_[d]+_[d+10]bb=bb+_[d+10]end
if bb~=0 then
_[7]=aS(#c[7],_)_[8]=bx(_[7])end
_[15]=_[15]+1
_[20]=aT(_,l[1])N=c[16][_[6]]if N~=nil then
if N[5]>0 then
_[9]=_[8][1]end
if _[15]>=N[2]and N[2]~=-1 then
_[6]=N[4]_[15]=0
end
end
aE[_[7]][#aE[_[7]]+1]=a
end
end
_,ay=k[1]cB=s(aT(_,l[1])^2/4,16)l[1]={_[1],_[2]}F=_[3]cS=_[9]+1
l[2]=_[9]+41+cB*sin(au*20)/4
az={}bn(#c[7])aM={}r={}aP={}aD={}V={}Y={}aX={}bk=R
for a=0,R-1 do
aM[a],V[a],Y[a]=#c[6]+2,v+1,-v
end
a=1
while a<=#az and bk>0 do
_=c[6][az[a]]aP[a]={}aD[a]={}r[a]={}aX[a]=aE[az[a]]table.sort(aX[a],function(b,p)return k[b][20]>k[p][20]end)for o=_[2],_[1]+_[2]-1 do
Z=c[5][o]G=c[2][Z[4]]cf,cn=c[4][Z[1]],c[4][Z[2]]aO,bR=sub(cf,l[1]),sub(cn,l[1])cm=aF(aO)K,aK=bA(cm-F),bA(aF(bR)-F)if B(K)<90 or B(aK)<90 then
ah,ad=bw(K,-M,M),bw(aK,-M,M)if B(K)>=90 or B(aK)>=90 then
bF=bp(aO,bR)if B(K)>=90 then
if bF>0 then ah=-M else ah=M end
else
if bF<0 then ad=-M else ad=M end
end
end
m,n=ap(tan(ah)/L*D),ap(tan(ad)/L*D)if m~=n then
q,ao=aT(l[1],cf),aT(l[1],cn)aU=Z[3]+90
bV=aU-cm
cw=q*sin(bV)aH=(q*cos(bV))if K~=ah then
q=aH/cos(aU-(ah+F))end
if aK~=ad then
ao=aH/cos(aU-(ad+F))end
q,ao=q*cos(ah),ao*cos(ad)g=Z[5]+6
cJ=(m>n)if cJ and G[g]~=0 then
ar=G[3]&4>0
if ar then
U=aN[c[3][G[13-g]][6]]end
af=c[3][G[g]]cv={af[3],af[4],af[5]}j,bE,ci=aN[af[6]]for i,d in aB(cv)do
ab=d>0
ac=P
if(ab or(i==3 and not(bE and ci)))and(i==3 or ar)then
bN,ca=0
if i<3 then
ca=i==1 and w(j[4],U[4])==0
A,y=j[3-i],(i==1 and w or s)(U[3-i],j[i])ac=(A<y)==(i==2)and A~=y and j~=U
ab=ac
A,y=s(A,y),w(A,y)if ac then
if i==1 then
bE=P
else
ci=P
bN=G[3]&16>0 and w(j[2],U[2])-y or 0
end
end
else
if ar then
A,y=s(w(j[1],U[1]),j[2]),w(s(j[2],U[2]),j[1])ac=j~=U
else
A,y=j[1],j[2]end
end
A,y=A-l[2],y-l[2]bQ,bS=A*aL,y*aL
if(ac or ab)and not ca then
bg=Z[6]-af[1]if G[4]==48 then
bg=bg-au
end
cK,cy=bQ/q,bS/q
cC,cx=bQ/ao,bS/ao
cl,an=0
if ab then
_=c[21][d][4]if(Z[4]==bY or ba==G[4]or G[8])and _>0 then
d=_
end
at=c[21][d][3]x=1
if(i==3 and G[3]&16>0)or(i==1 and G[3]&8==0)then
x=-1
end
end
for g=m,n,-1 do
cs=cb[g]bl=(aU-F)-cs
f,bH=D-g
if f>=0 and f<=R-1 then
if a<aM[f]then
aI=(g-m)/(n-m)J,H=(cK*(1-aI)+cC*aI),(cy*(1-aI)+cx*aI)if B(H+J)-(H-J)<ag then
if ab then
if J~=H then
bH=P
bG=aH*tan(bl)aC=cp(s(((B(bG)+B(aH))//bX)+1,16))co=aa((w(bG-cw,0)-bg)/(at*aC))bM=co*aC
cc={f,v-J,v-H,d,co,y-A,j[5],af[2]+bN,P,at*aC,aC,x,not an,i==3 and ar}if bM>cl or(not an)or g==n then
cl=bM-1+aC
an=P
r[a][#r[a]+1]=cc
end
cL=cc
end
end
if ac then
if i~=2 then
if H<V[f]then
aD[a][#aD[a]+1]={f,w(H,Y[f]),V[f],j}end
if i==3 then W=H else W=J end
if V[f]>W then V[f]=W end
end
if i~=1 then
if J>Y[f]then
aP[a][#aP[a]+1]={f,Y[f],s(J,V[f]),j}end
if i==3 then W=J else W=H end
if Y[f]<W then Y[f]=W end
end
if(V[f]<=Y[f])or(i==3 and(not ar)and ab)then
aM[f]=a
bk=bk-1
end
end
end
end
end
if(not bH)and an then
r[a][#r[a]+1],an=cL
r[a][#r[a]][9]=br
end
end
if#r[a]>0 then
r[a][#r[a]][9]=br
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
function onDraw()aQ=screen
local bD,cj,al,bJ=aQ.drawTriangleF,aQ.drawRectF,aQ.setColor,aQ.drawLine
cF={aP,aD}if bj then
e=c[24][c[19][8][aq-3]]X,ax=e[1],e[2]C=R/ceil(X*L)bZ=C*1
for a=0,ceil(X*L),1 do
m=(X/2-a-1+F/90*X)%X
n=(m%1-1)*C
m=aa(m)*ax
for o=0,ax-1,1 do
O=e[5+o+m]h=c[20][O]al(h[1],h[2],h[3])cj(a*C+n,o*C,bZ,bZ)end
end
for a=#r,1,-1 do
for o=1,#r[a]do
d=r[a][o]if d[9]or d[13]then
if d[9]then
Q=r[a][o+1]else
Q=d
end
e=c[21][d[4]]e=c[21][d[4]+(ck%e[5])*c[19][3][2]+c[19][12][d[11]]]x=d[12]T=s(x,0)f=d[1]n=Q[1]bB=d[2-T]cM=Q[2-T]g=d[3+T]be=Q[3+T]if not Q[9]then n=n+1 end
aY(d[7])cE=x*(d[2]-d[3])*e[3]/d[6]cH=x*(Q[2]-Q[3])*e[3]/Q[6]bC=x>0 and s or w
bi=0
while g*x<bB*x and(bi<e[2]or not d[14])do
bU=bC(g+cE,bB)bc=bC(be+cH,cM)O=e[7+((T+d[8]//e[3])%e[2])+e[2]*((d[5])%e[1])]h=c[20][O]if h then
al(h[1]*t,h[2]*t,h[3]*t)bD(f,g,f,bU,n,bc)bD(f,g,n,be,n,bc)end
g=bU
be=bc
T=T+x
bi=bi+1
end
end
end
for b=1,2 do
_=cF[b]ch={}as,am,bd=ag,-ag
for o,d in aB(_[a])do
as=s(as,d[2])am=w(am,d[3])bd=d
e=c[22][d[4][b+2]]if e and not aR then
aY(d[4][5])h=c[20][e[5]]al(h[1]*t,h[2]*t,h[3]*t)bJ(d[1],v-d[2],d[1],aa(v-d[3]-1))end
end
if bd and aR then
j=bd[4]cN=(j[b]-l[2])bf=cos(F)by=sin(F)for aj=aa(as+v),ceil(am+v)do
ai=aL*cN/(v-aj)c_=bf*ai-l[1][1]ce=by*ai-l[1][2]bK=-by*ai+c_
bW=bf*ai+ce
ct=by*ai+c_
cO=-bf*ai+ce
cD=(ct-bK)/R
cA=(cO-bW)/R
ch[aj]={cD,cA,bK,bW}end
for o,d in aB(_[a])do
if j[b+2]~=0 then
f=d[1]if f%aR==0 then
aY(j[5])p=j[b+2]e=c[22][p]e=c[22][p+(ck%e[4])]cg=D-(D-f)*L
as,am=aa(d[2]+v),ceil(d[3]+v)at=e[3]for aj=as,am do
aV=ch[aj]cz=(aV[3]+aV[1]*cg)//at
cr=(aV[4]+aV[2]*cg)//at
O=6+(cr%e[1])+e[1]*(cz%e[2])h=c[20][e[O]]if h then
al(h[1]*t,h[2]*t,h[3]*t)bJ(f,ag-aj,f+aR+1,ag-aj)end
end
end
end
end
end
end
for o=1,#aX[a]do
_=k[aX[a][o]]if _[6]~=0 then
aO=sub(_,l[1])q=_[20]if q>1 then
K=bA(aF(aO)-F)q=q*cos(K)if B(K)<90 then
m=D-ap(tan(K)/L*D)bl=ap((180+K+F-_[3]+bz*4)/360*8)N=c[16][_[6]][1]if N~=0 and _[6]~=1 then
e=c[17][B(N)][bl%8+1]x=e<0 and-1 or 1
e=B(e)if e>0 then
e=c[23][e+c[19][12][s(cp(q//aW+1),8)]]X,ax=e[1],e[2]C=D/(L*q)aZ=C*bh
J=v+(l[2]-_[9])/q*aL
H=J-e[5]*aZ
n=m-x*e[4]*C
C,aZ=C*e[3],aZ*e[3]aY(_[8][5])t=N>0 and t or 1
bT=C
cu=bT*bh
cI=_[4]and c[15][_[4]][23]&8>0
for g=0,X-1 do
m=n+g*C*x
if a<=aM[bw(ap(m),0,R-1)]then
for i=0,ax-1 do
O=e[7+i+g*ax]if O~=0 then
if cI then
bm=bm%50+1
al(0,0,0,s(75*c[13][2][bm],255))else
h=c[20][O]al(h[1]*t,h[2]*t,h[3]*t)end
cj(m,H+i*aZ,bT,cu)end
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
bz=bz+1
end
