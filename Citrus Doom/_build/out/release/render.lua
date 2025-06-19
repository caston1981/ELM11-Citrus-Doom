
z=math
v=z.max
s=z.min
C=z.abs
ac=z.floor
ceil=z.ceil
sqrt=z.sqrt
I=input.getNumber
br=input.getBool
pi=z.pi/180
bt=false
P=true
at=ipairs
bZ=table.remove
bw=string
function bq(b,m)return b[1]*m[2]-b[2]*m[1]end
function sub(b,m)return{(b[1]-m[1]),(b[2]-m[2])}end
function bi(b)return((b+180)%360)-180 end
function sin(b)return z.sin(b*pi)end
function cos(b)return z.cos(b*pi)end
function tan(b)return z.tan(b*pi)end
function cQ(b)return z.atan(b)/pi end
function aO(b)return z.atan(b[2],b[1])/pi end
function be(b,m,_)return s(v(m,b),_)end
function an(b)return ac(b+.5)end
function aP(b,m)return sqrt(((b[1]-m[1])^2)+((b[2]-m[2])^2))end
function bW(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
function aG(b)r=s(b/255+aS,1)^2.2 end
c={}bc=1
aE=3
as=P
l={{0,0},0}E=0
O=288
F=144
am=128
t=64
aT={}aI=500
ci=250
cm=1
al=2^15
bz=3002
bm=0
aF=0
ay=0
bf=1.2
N=52
M=tan(N)aU=t*bf*O/am/M
X=1
bV={}for a=-F,F do bV[a]=aO({1,a/F*M})end
function bB(a)if a<al then
local w,bA=c[7][a]bA=0<bq({w[3],w[4]},sub(l[1],w))and 8 or 7
bB(w[bA])bB(w[15-bA])else
aq[#aq+1]=a-al
end
end
function aJ(a,b)if a<al then
w=c[7][a]return aJ(w[0<bq({w[3],w[4]},sub(b,w))and 8 or 7],b)else
return a-al
end
end
function bl(b)w=c[5][c[6][b][2]]return aN[c[3][c[2][w[4]][w[5]+6]][6]]end
function onTick()by=0
for n=1,3 do
if br(9)and(not bn)or not c[21]then
bh=property.getText(bc)a=1
D=""
_=bw.sub(bh,a,a)while _~=""do
ap=bw.byte(_)if ap>64 then
D=(D..ap-65)+0
if X==1 then
bS=D
c[D]=c[D]or{}elseif X==2 then
cG=D
aA=0
elseif X==3 then
bv=D
else
if aA==0 then
aA=cG
bv=bv-1
bC={}c[bS][#c[bS]+1]=bC
end
bC[#bC+1]=D
aA=aA-1
X=v(aA,bv)>0 and X-1 or 0
end
X=X+1
D=""
else
D=D.._
end
a=a+1
_=bw.sub(bh,a,a)end
bc=bc+1
bn=bh==""
end
end
if bn then
if I(10)>0 then
as=P
aE=I(10)end
if cm>0 and not as then
ad={}aB[#aB+1]=ad
ao=6
_=I(ao)while _~=0 do
ag={}ad[#ad+1]=ag
for a=0,8 do
ag[a+1]=I(ao+a)end
ao=ao+9
_=I(ao)end
end
if br(1)then
bF=0
bJ=I(1)cm=I(3)ay=ay+1
bD=ay//10
if as then
for a=1,10 do
c[a]=c[a+10*aE]end
k=c[1]cO={k[1][1],k[1][2]}for a=#k,1,-1 do
_=k[a]_=_[5]&(bz-3000)>0 or bZ(k,a)end
aN=c[8]aB={}aE=aE+1
end
if I(2)>0 then
_=c[2][I(2)]if _ then
b=_[4]if b>0 then
if b==3008 then
aX=_[5]>0 and _[5]elseif b>3004 then
aI=v(aI+3*(_[4]-3006),1)ci=aI/2
elseif b>3000 then
bz=_[4]end
bF=I(2)if b<3000 and c[9][_[5]][7]==0 then
_[8]=1
end
end
end
end
if br(3)and bJ~=1 and bJ~=3 and aS<1 then
aS=.1
aF=5
else
aF=aF-1
if aF<1 then
aS=0
end
end
for a=1,#aB do
ad=aB[a]for n=1,#ad do
ag=ad[n]_=ag[1]if _>al then
_=aN[_-al]for g=1,6 do
_[g]=ag[g+1]end
elseif _<0 then
ap=c[1][-_]if ap and c[15][ap[4]or 1][29]=="light amp index" then
aS=1
aF=4200
end
while-_>#k do
k[#k+1]=bt
end
bZ(k,-_)else
k[_]=k[_]or{}_=k[_]for g=1,8 do
_[c[19][1][g]]=ag[g+1]end
_[15]=0
_[7]=aJ(#c[7],_)_[8]=bl(_[7])end
end
end
aB={}for a=1,#c[6]do
aT[a]={}end
for a,_ in at(k)do
if as then
_[7]=aJ(#c[7],_)_[8]=bl(_[7])_[9]=_[8][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
end
if _ and a>1 then
bg=0
for n,d in at({1,2,9})do
_[d]=_[d]+_[d+10]bg=bg+_[d+10]end
if bg~=0 then
_[7]=aJ(#c[7],_)_[8]=bl(_[7])end
_[15]=_[15]+1
_[20]=aP(_,l[1])L=c[16][_[6]]if L then
if L[5]>0 then
_[9]=_[8][1]end
if _[15]>=L[2]and L[2]~=-1 then
_[6]=L[4]_[15]=0
end
end
aT[_[7]][#aT[_[7]]+1]=a
end
end
_,as=k[1]cs=s(aP(_,l[1])^2/4,16)l[1]={_[1],_[2]}E=_[3]l[2]=_[9]+41+cs*sin(ay*20)/4
aq={}bB(#c[7])aY={}y={}aW={}ba={}U={}S={}b_={}bo=O
for a=0,O-1 do
aY[a],U[a],S[a]=#c[6]+2,t+1,-t
end
a=1
while a<=#aq and bo>0 do
_=c[6][aq[a]]aW[a]={}ba[a]={}y[a]={}b_[a]=aT[aq[a]]table.sort(b_[a],function(b,m)return k[b][20]>k[m][20]end)for n=_[2],_[1]+_[2]-1 do
W=c[5][n]H=c[2][W[4]]ck,bM=c[4][W[1]],c[4][W[2]]aL,ca=sub(ck,l[1]),sub(bM,l[1])cc=aO(aL)J,aQ=bi(cc-E),bi(aO(ca)-E)if C(J)<90 or C(aQ)<90 then
aj,ae=be(J,-N,N),be(aQ,-N,N)if C(J)>=90 or C(aQ)>=90 then
cg=bq(aL,ca)if C(J)>=90 then
if cg>0 then aj=-N else aj=N end
else
if cg<0 then ae=-N else ae=N end
end
end
p,o=an(tan(aj)/M*F),an(tan(ae)/M*F)if p~=o then
q,ax=aP(l[1],ck),aP(l[1],bM)aV=W[3]+90
ch=aV-cc
cx=q*sin(ch)aK=(q*cos(ch))if J~=aj then
q=aK/cos(aV-(aj+E))end
if aQ~=ae then
ax=aK/cos(aV-(ae+E))end
q,ax=q*cos(aj),ax*cos(ae)g=W[5]+6
cA=(p>o)if cA and H[g]~=0 then
az=H[3]&4>0
if az then
Z=aN[c[3][H[13-g]][6]]end
ah=c[3][H[g]]cH={ah[3],ah[4],ah[5]}j,cl,cn=aN[ah[6]]for h,d in at(cH)do
af=d>0
ab=P
if(af or(h==3 and not(cl and cn)))and(h==3 or az)then
cd,cP=0
if h<3 then
cu=h~=1 or v(j[4],Z[4])~=0
B,x=j[3-h],(h==1 and v or s)(Z[3-h],j[h])ab=(B<x)==(h==2)and B~=x and j~=Z
af=ab
B,x=s(B,x),v(B,x)if ab then
if h==1 then
cl=P
else
cn=P
cd=H[3]&16>0 and v(j[2],Z[2])-x or 0
end
end
else
if az then
B,x=s(v(j[1],Z[1]),j[2]),v(s(j[2],Z[2]),j[1])ab=j~=Z
else
B,x=j[1],j[2]end
end
B,x=B-l[2],x-l[2]bE,bP=B*aU,x*aU
if(ab or af)and cu then
bp=W[6]-ah[1]if H[4]==48 then
bp=bp-ay
end
cL,cM=bE/q,bP/q
cD,cF=bE/ax,bP/ax
bN,av=0
if af then
_=c[21][d][4]if(W[4]==bF or bz==H[4]or H[8])and _>0 then
d=_
end
aC=c[21][d][3]u=1
if(h==3 and H[3]&16>0)or(h==1 and H[3]&8==0)then
u=-1
end
end
for g=p,o,-1 do
cv=bV[g]bk=(aV-E)-cv
f,bG=F-g
if f>=0 and f<=O-1 then
if a<aY[f]then
aM=(g-p)/(o-p)K,G=(cL*(1-aM)+cD*aM),(cM*(1-aM)+cF*aM)if C(G+K)-(G-K)<am then
if af then
if K~=G then
bG=P
bK=aK*tan(bk)ar=bW(s(((C(bK)+C(aK))//ci)+1,16))bX=ac((v(bK-cx,0)-bp)/(aC*ar))bI=bX*ar
cj={f,t-K,t-G,d,bX,x-B,j[5],ah[2]+cd,P,aC*ar,ar,u,not av,h==3 and az}if bI>bN or(not av)or g==o then
bN=bI-1+ar
av=P
y[a][#y[a]+1]=cj
end
bL=cj
end
end
if ab then
if h~=2 then
if G<U[f]then
ba[a][#ba[a]+1]={f,v(G,S[f]),U[f],j}end
if h==3 then Y=G else Y=K end
if U[f]>Y then U[f]=Y end
end
if h~=1 then
if K>S[f]then
aW[a][#aW[a]+1]={f,S[f],s(K,U[f]),j}end
if h==3 then Y=K else Y=G end
if S[f]<Y then S[f]=Y end
end
if(U[f]<=S[f])or(h==3 and(not az)and af)then
aY[f]=a
bo=bo-1
end
end
end
end
end
if(not bG)and av then
bL[9]=bt
y[a][#y[a]+1],av=bL
end
end
if#y[a]>0 then
y[a][#y[a]][9]=bt
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
local bT,bH,aa,cf=aH.drawTriangleF,aH.drawRectF,aH.setColor,aH.drawLine
cN={aW,ba}if bn then
e=c[24][c[19][8][aE-3]]V,aD=e[1],e[2]A=O/ceil(V*M)for a=0,ceil(V*M),1 do
p=(V/2-a-1+E/90*V)%V
o=(p%1-1)*A
p=ac(p)*aD
for n=0,aD-1,1 do
Q=e[5+n+p]i=c[20][Q]aa(i[1],i[2],i[3])bH(a*A+o,n*A,A,A)end
end
for a=#y,1,-1 do
for n=1,#y[a]do
d=y[a][n]if d[9]or d[13]then
if d[9]then
R=y[a][n+1]else
R=d
end
e=c[21][d[4]]e=c[21][d[4]+(bD%e[5])*"number of wall mipmap levels"+c[19][12][d[11]]]u=d[12]T=s(u,0)f=d[1]o=R[1]bR=d[2-T]cJ=R[2-T]g=d[3+T]bs=R[3+T]if not R[9]then o=o+1 end
aG(d[7])cr=u*(d[2]-d[3])*e[3]/d[6]cI=u*(R[2]-R[3])*e[3]/R[6]cp=u>0 and s or v
bx=0
while g*u<bR*u and(bx<e[2]or not d[14])do
ce=cp(g+cr,bR)bj=cp(bs+cI,cJ)Q=e[7+((T+d[8]//e[3])%e[2])+e[2]*((d[5])%e[1])]i=c[20][Q]if i then
aa(i[1]*r,i[2]*r,i[3]*r)bT(f,g,f,ce,o,bj)bT(f,g,o,bs,o,bj)end
g=ce
bs=bj
T=T+u
bx=bx+1
end
end
end
for b=1,2 do
_=cN[b]cb={}aw,au,bu=am,-am
for n,d in at(_[a])do
aw=s(aw,d[2])au=v(au,d[3])bu=d
e=c[22][d[4][b+2]]if e and not aX then
aG(d[4][5])i=c[20][e[5]]aa(i[1]*r,i[2]*r,i[3]*r)cf(d[1],t-d[2],d[1],ac(t-d[3]-1))end
end
if bu and aX then
j=bu[4]cq=(j[b]-l[2])bd=cos(E)bb=sin(E)for ai=ac(aw+t),ceil(au+t)do
ak=aU*cq/(t-ai)co=bd*ak-l[1][1]bQ=bb*ak-l[1][2]bU=-bb*ak+co
c_=bd*ak+bQ
cE=bb*ak+co
cB=-bd*ak+bQ
cw=(cE-bU)/O
cC=(cB-c_)/O
cb[ai]={cw,cC,bU,c_}end
for n,d in at(_[a])do
if j[b+2]~=0 then
f=d[1]if f%aX==0 then
aG(j[5])m=j[b+2]e=c[22][m]e=c[22][m+(bD%e[4])]bO=F-(F-f)*M
aw,au=ac(d[2]+t),ceil(d[3]+t)aC=e[3]for ai=aw,au do
aZ=cb[ai]cK=(aZ[3]+aZ[1]*bO)//aC
ct=(aZ[4]+aZ[2]*bO)//aC
Q=6+(ct%e[1])+e[1]*(cK%e[2])i=c[20][e[Q]]if i then
aa(i[1]*r,i[2]*r,i[3]*r)cf(f,am-ai,f+aX+1,am-ai)end
end
end
end
end
end
end
for n=1,#b_[a]do
_=k[b_[a][n]]if _[6]~=0 then
aL=sub(_,l[1])q=_[20]if q>1 then
J=bi(aO(aL)-E)q=q*cos(J)if C(J)<90 then
p=F-an(tan(J)/M*F)bk=an((180+J+E-_[3]+by*4)/360*8)L=c[16][_[6]][1]if L~=0 and _[6]~=1 then
e=c[17][C(L)][bk%8+1]u=e<0 and-1 or 1
e=C(e)if e>0 then
e=c[23][e+c[19][12][s(bW(q//aI+1),8)]]V,aD=e[1],e[2]A=F/(M*q)aR=A*bf
K=t+(l[2]-_[9])/q*aU
G=K-e[5]*aR
o=p-u*e[4]*A
A,aR=A*e[3],aR*e[3]aG(_[8][5])r=L>0 and r or 1
bY=A
cy=bY*bf
cz=c[15][_[4]or 1][23]&8>0
for g=0,V-1 do
p=o+g*A*u
if a<=aY[be(an(p),0,O-1)]then
for h=0,aD-1 do
Q=e[7+h+g*aD]if Q~=0 then
if cz then
bm=bm%50+1
aa(0,0,0,s(75*c[13][2][bm],255))else
i=c[20][Q]aa(i[1]*r,i[2]*r,i[3]*r)end
bH(p,G+h*aR,bY,cy)end
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
