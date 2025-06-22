
y=math
t=y.max
r=y.min
D=y.abs
am=y.floor
ceil=y.ceil
sqrt=y.sqrt
J=input.getNumber
bB=input.getBool
pi=y.pi/180
bw=false
O=true
aF=ipairs
cm=table.remove
bn=string
function br(b,n)return b[1]*n[2]-b[2]*n[1]end
function sub(b,n)return{(b[1]-n[1]),(b[2]-n[2])}end
function bu(b)return((b+180)%360)-180 end
function sin(b)return y.sin(b*pi)end
function cos(b)return y.cos(b*pi)end
function tan(b)return y.tan(b*pi)end
function cP(b)return y.atan(b)/pi end
function aK(b)return y.atan(b[2],b[1])/pi end
function bt(b,n,_)return r(t(n,b),_)end
function ay(b)return am(b+.5)end
function aU(b,n)return sqrt(((b[1]-n[1])^2)+((b[2]-n[2])^2))end
function bX(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
function aN(b)s=r(b/255+aL,1)^2.2 end
c={}be=1
aq=3
as=O
l={{0,0},0}B=0
P=288
F=144
ad=128
v=64
aY={}aJ=500
bJ=250
bS=1
ac=2^15
bC=3002
bd=0
aB=0
ax=0
bh=1.2
L=52
M=tan(L)aX=v*bh*P/ad/M
X=1
ce={}for a=-F,F do ce[a]=aK({1,a/F*M})end
function bA(a)if a<ac then
local u,bp=c[7][a]bp=0<br({u[3],u[4]},sub(l[1],u))and 8 or 7
bA(u[bp])bA(u[15-bp])else
aD[#aD+1]=a-ac
end
end
function aR(a,b)if a<ac then
u=c[7][a]return aR(u[0<br({u[3],u[4]},sub(b,u))and 8 or 7],b)else
return a-ac
end
end
function bj(b)u=c[5][c[6][b][2]]return aT[c[3][c[2][u[4]][u[5]+6]][6]]end
function onTick()bz=0
for p=1,3 do
if bB(9)and(not bc)or not c[21]then
bv=property.getText(be)a=1
E=""
_=bn.sub(bv,a,a)while _~=""do
au=bn.byte(_)if au>64 then
E=(E..au-65)+0
if X==1 then
bD=E
c[E]=c[E]or{}elseif X==2 then
cz=E
an=0
elseif X==3 then
bb=E
else
if an==0 then
an=cz
bb=bb-1
bo={}c[bD][#c[bD]+1]=bo
end
bo[#bo+1]=E
an=an-1
X=t(an,bb)>0 and X-1 or 0
end
X=X+1
E=""
else
E=E.._
end
a=a+1
_=bn.sub(bv,a,a)end
be=be+1
bc=bv==""
end
end
if bc then
if J(10)>0 then
as=O
aq=J(10)end
if bS>0 and not as then
aj={}ao[#ao+1]=aj
at=6
_=J(at)while _~=0 do
ai={}aj[#aj+1]=ai
for a=0,8 do
ai[a+1]=J(at+a)end
at=at+9
_=J(at)end
end
if bB(1)then
bG=0
ch=J(1)bS=J(3)ax=ax+1
cd=ax//10
if as then
for a=1,10 do
c[a]=c[a+10*aq]end
k=c[1]cO={k[1][1],k[1][2]}for a=#k,1,-1 do
_=k[a]_=_[5]&(bC-3000)>0 or cm(k,a)end
aT=c[8]ao={}aq=aq+1
end
if J(2)>0 then
_=c[2][J(2)]if _ then
b=_[4]if b>0 then
if b==3008 then
aH=_[5]>0 and _[5]elseif b>3004 then
aJ=t(aJ+3*(_[4]-3006),1)bJ=aJ/2
elseif b>3000 then
bC=_[4]end
bG=J(2)if b<3000 and c[9][_[5]][7]==0 then
_[8]=1
end
end
end
end
if bB(3)and ch~=1 and ch~=3 and aL<1 then
aL=.1
aB=5
else
aB=aB-1
if aB<1 then
aL=0
end
end
for a=1,#ao do
aj=ao[a]for p=1,#aj do
ai=aj[p]_=ai[1]if _>ac then
_=aT[_-ac]for g=1,6 do
_[g]=ai[g+1]end
elseif _<0 then
au=c[1][-_]if au and c[15][au[4]or 1][29]=="light amp index" then
aL=1
aB=4200
end
while-_>#k do
k[#k+1]=bw
end
cm(k,-_)else
k[_]=k[_]or{}_=k[_]for g=1,8 do
_[c[19][1][g]]=ai[g+1]end
_[15]=0
_[7]=aR(#c[7],_)_[8]=bj(_[7])end
end
end
ao={}for a=1,#c[6]do
aY[a]={}end
for a,_ in aF(k)do
if as then
_[7]=aR(#c[7],_)_[8]=bj(_[7])_[9]=_[8][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
end
if _ and a>1 then
bi=0
for p,d in aF({1,2,9})do
_[d]=_[d]+_[d+10]bi=bi+_[d+10]end
if bi~=0 then
_[7]=aR(#c[7],_)_[8]=bj(_[7])end
_[15]=_[15]+1
_[20]=aU(_,l[1])N=c[16][_[6]]if N then
if N[5]>0 then
_[9]=_[8][1]end
if _[15]>=N[2]and N[2]~=-1 then
_[6]=N[4]_[15]=0
end
end
aY[_[7]][#aY[_[7]]+1]=a
end
end
_,as=k[1]cy=r(aU(_,l[1])^2/4,16)l[1]={_[1],_[2]}B=_[3]l[2]=_[9]+41+cy*sin(ax*20)/4
aD={}bA(#c[7])aI={}z={}aM={}aZ={}T={}U={}aG={}bg=P
for a=0,P-1 do
aI[a],T[a],U[a]=#c[6]+2,v+1,-v
end
a=1
while a<=#aD and bg>0 do
_=c[6][aD[a]]aM[a]={}aZ[a]={}z[a]={}aG[a]=aY[aD[a]]table.sort(aG[a],function(b,n)return k[b][20]>k[n][20]end)for p=_[2],_[1]+_[2]-1 do
S=c[5][p]I=c[2][S[4]]bQ,cc=c[4][S[1]],c[4][S[2]]aO,cb=sub(bQ,l[1]),sub(cc,l[1])bY=aK(aO)K,b_=bu(bY-B),bu(aK(cb)-B)if D(K)<90 or D(b_)<90 then
ak,ah=bt(K,-L,L),bt(b_,-L,L)if D(K)>=90 or D(b_)>=90 then
ci=br(aO,cb)if D(K)>=90 then
if ci>0 then ak=-L else ak=L end
else
if ci<0 then ah=-L else ah=L end
end
end
o,m=ay(tan(ak)/M*F),ay(tan(ah)/M*F)if o~=m then
q,aw=aU(l[1],bQ),aU(l[1],cc)aQ=S[3]+90
bI=aQ-bY
cs=q*sin(bI)aP=(q*cos(bI))if K~=ak then
q=aP/cos(aQ-(ak+B))end
if b_~=ah then
aw=aP/cos(aQ-(ah+B))end
q,aw=q*cos(ak),aw*cos(ah)g=S[5]+6
cK=(o>m)if cK and I[g]~=0 then
ar=I[3]&4>0
if ar then
W=aT[c[3][I[13-g]][6]]end
ae=c[3][I[g]]cJ={ae[3],ae[4],ae[5]}j,bH,cn=aT[ae[6]]for i,d in aF(cJ)do
ag=d>0
al=O
if(ag or(i==3 and not(bH and cn)))and(i==3 or ar)then
cj=0
bV=O
if i<3 then
bV=i~=1 or t(j[4],W[4])~=0
C,x=j[3-i],(i==1 and t or r)(W[3-i],j[i])al=(C<x)==(i==2)and C~=x and j~=W
ag=al
C,x=r(C,x),t(C,x)if al then
if i==1 then
bH=O
else
cn=O
cj=I[3]&16>0 and t(j[2],W[2])-x or 0
end
end
else
if ar then
C,x=r(t(j[1],W[1]),j[2]),t(r(j[2],W[2]),j[1])al=j~=W
else
C,x=j[1],j[2]end
end
C,x=C-l[2],x-l[2]cl,bN=C*aX,x*aX
if(al or ag)and bV then
bs=S[6]-ae[1]if I[4]==48 then
bs=bs-ax
end
cI,cM=cl/q,bN/q
cx,cA=cl/aw,bN/aw
bM,aC=0
if ag then
_=c[21][d][4]if(S[4]==bG or bC==I[4]or I[8])and _>0 then
d=_
end
ap=c[21][d][3]w=1
if(i==3 and I[3]&16>0)or(i==1 and I[3]&8==0)then
w=-1
end
end
for g=o,m,-1 do
cL=ce[g]bq=(aQ-B)-cL
f,bR=F-g
if f>=0 and f<=P-1 then
if a<aI[f]then
aV=(g-o)/(m-o)H,G=(cI*(1-aV)+cx*aV),(cM*(1-aV)+cA*aV)if D(G+H)-(G-H)<ad then
if ag then
if H~=G then
bR=O
bO=aP*tan(bq)az=bX(r(((D(bO)+D(aP))//bJ)+1,16))bF=am((t(bO-cs,0)-bs)/(ap*az))bP=bF*az
ck={f,v-H,v-G,d,bF,x-C,j[5],ae[2]+cj,O,ap*az,az,w,not aC,i==3 and ar}if bP>bM or(not aC)or g==m then
bM=bP-1+az
aC=O
z[a][#z[a]+1]=ck
end
bW=ck
end
end
if al then
if i~=2 then
if G<T[f]then
aZ[a][#aZ[a]+1]={f,t(G,U[f]),T[f],j}end
if i==3 then Y=G else Y=H end
if T[f]>Y then T[f]=Y end
end
if i~=1 then
if H>U[f]then
aM[a][#aM[a]+1]={f,U[f],r(H,T[f]),j}end
if i==3 then Y=H else Y=G end
if U[f]<Y then U[f]=Y end
end
if(T[f]<=U[f])or(i==3 and(not ar)and ag)then
aI[f]=a
bg=bg-1
end
end
end
end
end
if(not bR)and aC then
bW[9]=bw
z[a][#z[a]+1],aC=bW
end
end
if#z[a]>0 then
z[a][#z[a]][9]=bw
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
function onDraw()aW=screen
local cp,bL,af,cg=aW.drawTriangleF,aW.drawRectF,aW.setColor,aW.drawLine
ct={aM,aZ}if bc then
e=c[24][c[19][8][aq-3]]Z,aE=e[1],e[2]A=P/ceil(Z*M)for a=0,ceil(Z*M),1 do
o=(Z/2-a-1+B/90*Z)%Z
m=(o%1-1)*A
o=am(o)*aE
for p=0,aE-1,1 do
Q=e[5+p+o]h=c[20][Q]af(h[1],h[2],h[3])bL(a*A+m,p*A,A,A)end
end
for a=#z,1,-1 do
for p=1,#z[a]do
d=z[a][p]if d[9]or d[13]then
if d[9]then
R=z[a][p+1]else
R=d
end
e=c[21][d[4]]e=c[21][d[4]+(cd%e[5])*"number of wall mipmap levels"+c[19][12][d[11]]]w=d[12]V=r(w,0)f=d[1]m=R[1]c_=d[2-V]cE=R[2-V]g=d[3+V]bl=R[3+V]if not R[9]then m=m+1 end
aN(d[7])cu=w*(d[2]-d[3])*e[3]/d[6]cr=w*(R[2]-R[3])*e[3]/R[6]cq=w>0 and r or t
bk=0
while g*w<c_*w and(bk<e[2]or not d[14])do
ca=cq(g+cu,c_)bx=cq(bl+cr,cE)Q=e[7+((V+d[8]//e[3])%e[2])+e[2]*((d[5])%e[1])]h=c[20][Q]if h then
af(h[1]*s,h[2]*s,h[3]*s)cp(f,g,f,ca,m,bx)cp(f,g,m,bl,m,bx)end
g=ca
bl=bx
V=V+w
bk=bk+1
end
end
end
for b=1,2 do
_=ct[b]bK={}aA,av,by=ad,-ad
for p,d in aF(_[a])do
aA=r(aA,d[2])av=t(av,d[3])by=d
e=c[22][d[4][b+2]]if e and not aH then
aN(d[4][5])h=c[20][e[5]]af(h[1]*s,h[2]*s,h[3]*s)cg(d[1],v-d[2],d[1],am(v-d[3]-1))end
end
if by and aH then
j=by[4]cN=(j[b]-l[2])bf=cos(B)bm=sin(B)for aa=am(aA+v),ceil(av+v)do
ab=aX*cN/(v-aa)bU=bf*ab-l[1][1]bE=bm*ab-l[1][2]bT=-bm*ab+bU
co=bf*ab+bE
cF=bm*ab+bU
cD=-bf*ab+bE
cB=(cF-bT)/P
cC=(cD-co)/P
bK[aa]={cB,cC,bT,co}end
for p,d in aF(_[a])do
if j[b+2]~=0 then
f=d[1]if f%aH==0 then
aN(j[5])n=j[b+2]e=c[22][n]e=c[22][n+(cd%e[4])]cf=F-(F-f)*M
aA,av=am(d[2]+v),ceil(d[3]+v)ap=e[3]for aa=aA,av do
ba=bK[aa]cG=(ba[3]+ba[1]*cf)//ap
cH=(ba[4]+ba[2]*cf)//ap
Q=6+(cH%e[1])+e[1]*(cG%e[2])h=c[20][e[Q]]if h then
af(h[1]*s,h[2]*s,h[3]*s)cg(f,ad-aa,f+aH+1,ad-aa)end
end
end
end
end
end
end
for p=1,#aG[a]do
_=k[aG[a][p]]if _[6]~=0 then
aO=sub(_,l[1])q=_[20]if q>1 then
K=bu(aK(aO)-B)q=q*cos(K)if D(K)<90 then
o=F-ay(tan(K)/M*F)bq=ay((180+K+B-_[3]+bz*4)/360*8)N=c[16][_[6]][1]if N~=0 and _[6]~=1 then
e=c[17][D(N)][bq%8+1]w=e<0 and-1 or 1
e=D(e)if e>0 then
e=c[23][e+c[19][12][r(bX(q//aJ+1),8)]]Z,aE=e[1],e[2]A=F/(M*q)aS=A*bh
H=v+(l[2]-_[9])/q*aX
G=H-e[5]*aS
m=o-w*e[4]*A
A,aS=A*e[3],aS*e[3]aN(_[8][5])s=N>0 and s or 1
bZ=A
cw=bZ*bh
cv=c[15][_[4]or 1][23]&8>0
for g=0,Z-1 do
o=m+g*A*w
if a<=aI[bt(ay(o),0,P-1)]then
for i=0,aE-1 do
Q=e[7+i+g*aE]if Q~=0 then
if cv then
bd=bd%50+1
af(0,0,0,r(75*c[13][2][bd],255))else
h=c[20][Q]af(h[1]*s,h[2]*s,h[3]*s)end
bL(o,G+i*aS,bZ,cw)end
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
