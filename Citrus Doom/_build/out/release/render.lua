
bO=screen
b_=ipairs
bS=table
bN=input
v=math
E=v.max
w=v.min
D=v.abs
af=v.floor
ceil=v.ceil
sqrt=v.sqrt
I=bN.getNumber
bd=bN.getBool
pi=v.pi/180
N=false
P=true
bb=string
function be(b,l)return b[1]*l[2]-b[2]*l[1]end
function sub(b,l)return{(b[1]-l[1]),(b[2]-l[2])}end
function bx(b)return((b+180)%360)-180 end
function sin(b)return v.sin(b*pi)end
function cos(b)return v.cos(b*pi)end
function tan(b)return v.tan(b*pi)end
function cR(b)return v.atan(b)/pi end
function aP(b)return v.atan(b[2],b[1])/pi end
function bp(b,l,_)return w(E(l,b),_)end
function aB(b)return af(b+.5)end
function aV(b,l)return sqrt(((b[1]-l[1])^2)+((b[2]-l[2])^2))end
function cj(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
function aU(b)r=w(b/255+bD,1)^2.2 end
c={}ba=1
am=3
aL=N
ax=P
f={{0,0},0,0}M=288
C=M//2
ac=128
s=ac//2
aT={}aW=400
bL=200
bR=100
cS=0
ap={}aO=2^15
ce=3002
bc=0
aM=0
ar=0
bB=1.2
K=52
L=tan(K)aE=s*bB*M/ac/L
T=1
ck={}for a=-C,C do ck[a]=aP({1,a/C*L})end
function bm(a)if a<aO then
local t,bg=c[7][a]bg=0<be({t[3],t[4]},sub(f[1],t))and 8 or 7
bm(t[bg])bm(t[15-bg])else
aw[#aw+1]=a-aO
end
end
function aS(a,b)if a<aO then
t=c[7][a]return aS(t[0<be({t[3],t[4]},sub(b,t))and 8 or 7],b)else
return a-aO
end
end
function bh(b)t=c[5][c[6][b][2]]return az[c[3][c[2][t[4]][t[5]+6]][6]]end
function onTick()by=0
for m=1,3 do
if bd(9)and(not aL)or not c[21]then
bv=property.getText(ba)a=1
z=""
_=bb.sub(bv,a,a)while _~=""do
cf=bb.byte(_)if cf>64 then
z=(z..cf-65)+0
if T==1 then
bK=z
c[z]=c[z]or{}elseif T==2 then
cy=z
ao=0
elseif T==3 then
bz=z
else
if ao==0 then
ao=cy
bz=bz-1
bs={}c[bK][#c[bK]+1]=bs
end
bs[#bs+1]=z
ao=ao-1
T=E(ao,bz)>0 and T-1 or 0
end
T=T+1
z=""
else
z=z.._
end
a=a+1
_=bb.sub(bv,a,a)end
ba=ba+1
aL=bv==""
end
end
if aL then
if I(9)>0 then
ax=P
am=I(9)end
if bR>0 and not ax then
ag={}ap[#ap+1]=ag
av=5
_=I(av)while _~=0 do
ad={}ag[#ag+1]=ad
for a=0,8 do
ad[a+1]=I(av+a)end
av=av+9
_=I(av)end
end
if bd(1)then
ci=0
bn=I(1)bR=I(3)ar=ar+1
cg=ar//10
if ax then
for a=1,10 do
c[a]=c[a+10*am]end
k=c[1]bU={k[1][1],k[1][2]}az=c[8]am=am+1
end
if I(2)>0 then
_=c[2][I(2)]if _ then
b=_[4]if b>0 then
if b==3008 then
aH=_[5]>0 and _[5]elseif b>3004 then
aW=E(aW+3*(_[4]-3006),1)bL=aW/2
elseif b>3000 then
ce=_[4]end
ci=I(2)if b<3000 and c[9][_[5]][7]==0 then
_[8]=1
end
end
end
end
if bd(3)and bn~=1 and bn~=3 then
bD=.1
aM=bn==5 and 5 or 3
else
aM=aM-1
if aM<1 then
bD=0
end
end
for a=1,#ap do
ag=ap[a]for m=1,#ag do
ad=ag[m]_=ad[1]if _>(2^15)then
_=az[_-(2^15)]for h=1,6 do
_[h]=ad[h+1]end
elseif _<0 then
while-_>#k do
k[#k+1]=N
end
bS.remove(k,-_)else
if not k[_]then
k[_]={}end
_=k[_]for h=1,8 do
_[c[19][1][h]]=ad[h+1]end
_[15]=0
_[7]=aS(#c[7],_)_[8]=bh(_[7])end
end
end
ap={}for a=1,#c[6]do
aT[a]={}end
for a=1,#k do
_=k[a]if ax then
_[7]=aS(#c[7],_)_[8]=bh(_[7])_[9]=_[8][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
end
if _ and a>1 then
bf=0
for m,d in b_({1,2,9})do
_[d]=_[d]+_[d+10]bf=bf+_[d+10]end
if bf~=0 then
_[7]=aS(#c[7],_)_[8]=bh(_[7])end
_[15]=_[15]+1
_[20]=aV(_,f[1])O=c[16][_[6]]if O~=nil then
if O[5]>0 then
_[9]=_[8][1]end
if _[15]>=O[2]and O[2]~=-1 then
_[6]=O[4]_[15]=0
end
end
aT[_[7]][#aT[_[7]]+1]=a
end
end
ax=N
_=k[1]f[1]={_[1],_[2]}f[3]=_[3]cz=w(aV(f[1],bU)^2/4,16)bU={_[1],_[2]}f[2]=_[9]+41+cz*sin(ar*20)/4
aw={}bm(#c[7])aG={}q={}aI={}aY={}X={}U={}aZ={}bi=M
for a=0,M-1 do
aG[a],X[a],U[a]=#c[6]+2,s+1,-s
end
a=1
while a<=#aw and bi>0 do
_=c[6][aw[a]]aI[a]={}aY[a]={}q[a]={}aZ[a]=aT[aw[a]]bS.sort(aZ[a],function(b,l)return k[b][20]>k[l][20]end)for m=_[2],_[1]+_[2]-1 do
Z=c[5][m]A=c[2][Z[4]]bT,bJ=c[4][Z[1]],c[4][Z[2]]aQ,cd=sub(bT,f[1]),sub(bJ,f[1])bV=aP(aQ)G,aN=bx(bV-f[3]),bx(aP(cd)-f[3])if D(G)<90 or D(aN)<90 then
aj,ab=bp(G,-K,K),bp(aN,-K,K)if D(G)>=90 or D(aN)>=90 then
cs=be(aQ,cd)if D(G)>=90 then
if cs>0 then aj=-K else aj=K end
else
if cs<0 then ab=-K else ab=K end
end
end
o,n=aB(tan(aj)/L*C),aB(tan(ab)/L*C)if o~=n then
p,au=aV(f[1],bT),aV(f[1],bJ)aX=Z[3]+90
bZ=aX-bV
cE=p*sin(bZ)aJ=(p*cos(bZ))if G~=aj then
p=aJ/cos(aX-(aj+f[3]))end
if aN~=ab then
au=aJ/cos(aX-(ab+f[3]))end
p,au=p*cos(aj),au*cos(ab)h=Z[5]+6
cN=(o>n)if cN and A[h]~=0 then
ay=A[3]&4>0
if ay then
V,S=az[c[3][A[6]][6]],az[c[3][A[7]][6]]end
ah=c[3][A[h]]cK={ah[3],ah[4],ah[5]}F,bY,bE=az[ah[6]]for j,d in b_(cK)do
al=d>0
as=P
if(al or(j==3 and not(bY and bE)))and(j==3 or ay)then
ca=N
c_=0
if j<3 then
ca=j==1 and E(V[4],S[4])==0
y,x=V[3-j],S[3-j]as=(y<x)~=(j==2)~=(h==6)and y~=x and V~=S
y,x=w(y,x),E(y,x)if as then
if j==1 then
bY=P
else
bE=P
c_=A[3]&16>0 and E(V[2],S[2])-x or 0
end
end
else
if ay then
y,x=E(V[1],S[1]),w(V[2],S[2])as=V~=S
else
y,x=F[1],F[2]end
end
y,x=y-f[2],x-f[2]bM,ch=y*aE,x*aE
if(as or al)and not ca then
bw=Z[6]-ah[1]if A[4]==48 then
bw=bw-ar
end
cv,cw=bM/p,ch/p
cP,cL=bM/au,ch/au
bX=0
an=N
if al then
_=c[21][d][4]if(Z[4]==ci or ce==A[4]or A[8])and _>0 then
d=_
end
aq=c[21][d][3]u=1
if(j==3 and A[3]&16>0)or(j==1 and A[3]&8==0)then
u=-1
end
end
for h=o,n,-1 do
cM=ck[h]bo=(aX-f[3])-cM
g=C-h
bC=N
if g>=0 and g<=M-1 then
if a<aG[g]then
aR=(h-o)/(n-o)J,H=(cv*(1-aR)+cP*aR),(cw*(1-aR)+cL*aR)if D(H+J)-(H-J)<ac then
if al then
if J~=H then
bC=P
bH=aJ*tan(bo)at=cj(w(((D(bH)+D(aJ))//bL)+1,16))bI=af((E(bH-cE,0)-bw)/(aq*at))cq=bI*at
bP={g,s-J,s-H,d,bI,x-y,F[5],ah[2]+c_,P,aq*at,at,u,not an,j==3 and ay}if cq>bX or(not an)or h==n then
bX=cq-1+at
an=P
q[a][#q[a]+1]=bP
end
ct=bP
end
end
if as then
if j~=2 then
if H<X[g]then
aY[a][#aY[a]+1]={g,E(H,U[g]),X[g],F}end
if j==3 then W=H else W=J end
if X[g]>W then X[g]=W end
end
if j~=1 then
if J>U[g]then
aI[a][#aI[a]+1]={g,U[g],w(J,X[g]),F}end
if j==3 then W=J else W=H end
if U[g]<W then U[g]=W end
end
if(X[g]<=U[g])or(j==3 and(not ay)and al)then
aG[g]=a
bi=bi-1
end
end
end
end
end
if(not bC)and an then
an=N
q[a][#q[a]+1]=ct
q[a][#q[a]][9]=N
end
end
if#q[a]>0 then
q[a][#q[a]][9]=N
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
function onDraw()bk=bO
local bG,bl,ae=bk.drawTriangleF,bk.drawRectF,bk.setColor
cx={aI,aY}if aL then
e=c[24][c[19][8][am-3]]aa,ak=e[1],e[2]B=M/ceil(aa*L)cc=B*1
for a=0,ceil(aa*L),1 do
o=(aa/2-a-1+f[3]/90*aa)%aa
n=(o%1-1)*B
o=af(o)*ak
for m=0,ak-1,1 do
R=e[5+m+o]i=c[20][R]ae(i[1],i[2],i[3])bl(a*B+n,m*B,cc,cc)end
end
for a=#q,1,-1 do
for m=1,#q[a]do
d=q[a][m]if d[9]or d[13]then
if d[9]then
Q=q[a][m+1]else
Q=d
end
e=c[21][d[4]]e=c[21][d[4]+(cg%e[5])*c[19][3][2]+c[19][12][d[11]]]u=d[12]Y=w(u,0)g=d[1]n=Q[1]cl=d[2-Y]cG=Q[2-Y]h=d[3+Y]bj=Q[3+Y]if not Q[9]then n=n+1 end
aU(d[7])cA=u*(d[2]-d[3])*e[3]/d[6]cI=u*(Q[2]-Q[3])*e[3]/Q[6]cn=u>0 and w or E
bu=0
while h*u<cl*u and(bu<e[2]or not d[14])do
co=cn(h+cA,cl)br=cn(bj+cI,cG)R=e[7+((Y+d[8]//e[3])%e[2])+e[2]*((d[5])%e[1])]i=c[20][R]if i then
ae(i[1]*r,i[2]*r,i[3]*r)bG(g,h,g,co,n,br)bG(g,h,n,bj,n,br)end
h=co
bj=br
Y=Y+u
bu=bu+1
end
end
end
for b=1,2 do
_=cx[b]bF={}aA,aD,bq=ac,-ac
for m,d in b_(_[a])do
aA=w(aA,d[2])aD=E(aD,d[3])bq=d
e=c[22][d[4][b+2]]if e and not aH then
aU(d[4][5])i=c[20][e[5]]ae(i[1]*r,i[2]*r,i[3]*r)bO.drawLine(d[1],s-d[2],d[1],af(s-d[3]-1))end
end
if bq and aH then
F=bq[4]cB=(F[b]-f[2])bt=cos(f[3])bA=sin(f[3])for aC=af(aA+s),ceil(aD+s)do
ai=aE*cB/(s-aC)bW=bt*ai-f[1][1]cp=bA*ai-f[1][2]cm=-bA*ai+bW
bQ=bt*ai+cp
cF=bA*ai+bW
cu=-bt*ai+cp
cC=(cF-cm)/M
cD=(cu-bQ)/M
bF[aC]={cC,cD,cm,bQ}end
for m,d in b_(_[a])do
if F[b+2]~=0 then
g=d[1]if g%aH==0 then
aU(F[5])l=F[b+2]e=c[22][l]e=c[22][l+(cg%e[4])]cb=C-(C-g)*L
aA,aD=af(d[2]+s),ceil(d[3]+s)aq=e[3]for aC=aA,aD do
aK=bF[aC]cO=(aK[3]+aK[1]*cb)//aq
cH=(aK[4]+aK[2]*cb)//aq
R=6+(cH%e[1])+e[1]*(cO%e[2])i=c[20][e[R]]if i then
ae(i[1]*r,i[2]*r,i[3]*r)bl(g,-aC+ac,aH,1)end
end
end
end
end
end
end
for m=1,#aZ[a]do
_=k[aZ[a][m]]if _[6]~=0 then
aQ=sub(_,f[1])p=_[20]if p>1 then
G=bx(aP(aQ)-f[3])p=p*cos(G)if D(G)<90 then
o=C-aB(tan(G)/L*C)bo=aB((180+G+f[3]-_[3]+by*4)/360*8)O=c[16][_[6]][1]if O~=0 and _[6]~=1 then
e=c[17][D(O)][bo%8+1]u=e<0 and-1 or 1
e=D(e)if e>0 then
e=c[23][e+c[19][12][w(cj(p//aW+1),8)]]aa,ak=e[1],e[2]B=C/(L*p)aF=B*bB
J=s+(f[2]-_[9])/p*aE
H=J-e[5]*aF
n=o-u*e[4]*B
B,aF=B*e[3],aF*e[3]aU(_[8][5])r=O>0 and r or 1
cr=B
cQ=cr*bB
cJ=_[4]and c[15][_[4]][23]&8>0
for h=0,aa-1 do
o=n+h*B*u
if a<=aG[bp(aB(o),0,M-1)]then
for j=0,ak-1 do
R=e[7+j+h*ak]if R~=0 then
if cJ then
bc=bc%50+1
ae(0,0,0,w(75*c[13][2][bc],255))else
i=c[20][R]ae(i[1]*r,i[2]*r,i[3]*r)end
bl(o,H+j*aF,cr,cQ)end
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
by=by+1
end
