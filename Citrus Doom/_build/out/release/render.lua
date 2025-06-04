
Q=180
cr=screen
aL=ipairs
cl=table
bO=input
w=math
C=w.max
x=w.min
z=w.abs
ai=w.floor
ceil=w.ceil
sqrt=w.sqrt
F=bO.getNumber
bs=bO.getBool
pi=w.pi
K=false
S=true
bt=string
function bk(b,o)return b[1]*o[2]-b[2]*o[1]end
function sub(b,o)return{(b[1]-o[1]),(b[2]-o[2])}end
function bz(b)return((b+Q)%360)-Q end
function sin(b)return w.sin(b/Q*pi)end
function cos(b)return w.cos(b/Q*pi)end
function tan(b)return w.tan(b/Q*pi)end
function cU(b)return w.atan(b)*Q/pi end
function aQ(b)return w.atan(b[2],b[1])*Q/pi end
function bA(b,o,_)return x(C(o,b),_)end
function aD(b)return ai(b+.5)end
function aW(b,o)return sqrt(((b[1]-o[1])^2)+((b[2]-o[2])^2))end
function bI(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
function aS(b)r=x(b/255+cp,1)^2.2 end
c={}br=1
at=3
aF=K
al=S
f={{0,0},0,0}L=288
B=L//2
aj=128
u=aj//2
aG={}aZ=400
bM=200
cs=100
cS=0
ay={}ba=32768
ch=3002
bw=0
aN=0
az=0
bx=1.2
N=52
O=tan(N)b_=u*bx*L/aj/O
aa=1
bV={}for a=-B,B do bV[a]=aQ({1,a/B*O})end
function bj(a)if a<ba then
local t,bv=c[7][a]bv=0<bk({t[3],t[4]},sub(f[1],t))and 8 or 7
bj(t[bv])bj(t[15-bv])else
aA[#aA+1]=a-ba
end
end
function aX(a,b)if a<ba then
t=c[7][a]return aX(t[0<bk({t[3],t[4]},sub(b,t))and 8 or 7],b)else
return a-ba
end
end
function bo(b)t=c[5][c[6][b][2]]return am[c[3][c[2][t[4]][t[5]+6]][6]]end
function onTick()bi=0
for l=1,3 do
if bs(9)and(not aF)or not c[21]then
bq=property.getText(br)a=1
E=""
_=bt.sub(bq,a,a)while _~=""do
bK=bt.byte(_)if bK>64 then
E=(E..bK-65)+0
if aa==1 then
bD=E
c[E]=c[E]or{}elseif aa==2 then
cM=E
aB=0
elseif aa==3 then
bh=E
else
if aB==0 then
aB=cM
bh=bh-1
by={}c[bD][#c[bD]+1]=by
end
by[#by+1]=E
aB=aB-1
aa=C(aB,bh)>0 and aa-1 or 0
end
aa=aa+1
E=""
else
E=E.._
end
a=a+1
_=bt.sub(bq,a,a)end
br=br+1
aF=bq==""
end
end
if aF then
if F(9)>0 then
al=S
at=F(9)end
if cs>0 and not al then
ad={}ay[#ay+1]=ad
aC=5
_=F(aC)while _~=0 do
ag={}ad[#ad+1]=ag
for a=0,8 do
ag[a+1]=F(aC+a)end
aC=aC+9
_=F(aC)end
end
if bs(1)then
cf=0
bm=F(1)cs=F(3)az=az+1
ci=az//10
if al then
for a=1,10 do
c[a]=c[a+10*at]end
m=c[1]bS={m[1][1],m[1][2]}am=c[8]at=at+1
end
if F(2)>0 then
_=c[2][F(2)]if _ then
b=_[4]if b>0 then
if b==3008 then
c_=_[5]==1
elseif b>3004 then
aZ=C(aZ+3*(_[4]-3006),1)bM=aZ/2
elseif b>3000 then
ch=_[4]end
cf=F(2)if b<3000 and c[9][_[5]][7]==0 then
_[8]=1
end
end
end
end
if bs(3)and bm~=1 and bm~=3 then
cp=.1
aN=bm==5 and 5 or 3
else
aN=aN-1
if aN<1 then
cp=0
end
end
for a=1,#ay do
ad=ay[a]for l=1,#ad do
ag=ad[l]_=ag[1]if _>(2^15)then
_=am[_-(2^15)]for h=1,6 do
_[h]=ag[h+1]end
elseif _<0 then
while-_>#m do
m[#m+1]=K
end
cl.remove(m,-_)else
if not m[_]then
m[_]={}end
_=m[_]for h=1,8 do
_[c[19][1][h]]=ag[h+1]end
_[15]=0
_[7]=aX(#c[7],_)_[8]=bo(_[7])end
end
end
ay={}for a=1,#c[6]do
aG[a]={}end
for a=1,#m do
_=m[a]if al then
_[7]=aX(#c[7],_)_[8]=bo(_[7])_[9]=_[8][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
end
if _ and a>1 then
bf=0
for l,d in aL({1,2,9})do
_[d]=_[d]+_[d+10]bf=bf+_[d+10]end
if bf~=0 then
_[7]=aX(#c[7],_)_[8]=bo(_[7])end
_[15]=_[15]+1
_[20]=aW(_,f[1])M=c[16][_[6]]if M~=nil then
if M[5]>0 then
_[9]=_[8][1]end
if _[15]>=M[2]and M[2]~=-1 then
_[6]=M[4]_[15]=0
end
end
aG[_[7]][#aG[_[7]]+1]=a
end
end
al=K
_=m[1]f[1]={_[1],_[2]}f[3]=_[3]cy=x(aW(f[1],bS)^2/4,16)bS={_[1],_[2]}f[2]=_[9]+41+cy*sin(az*20)/4
aA={}bj(#c[7])aP={}p={}aY={}aU={}W={}V={}aT={}bg=L
for a=0,L-1 do
aP[a],W[a],V[a]=#c[6]+2,u+1,-u
end
a=1
while a<=#aA and bg>0 do
_=c[6][aA[a]]aY[a]={}aU[a]={}p[a]={}aT[a]=aG[aA[a]]cl.sort(aT[a],function(b,o)return m[b][20]>m[o][20]end)for l=_[2],_[1]+_[2]-1 do
ab=c[5][l]A=c[2][ab[4]]cc,ck=c[4][ab[1]],c[4][ab[2]]aR,bZ=sub(cc,f[1]),sub(ck,f[1])cd=aQ(aR)I,aH=bz(cd-f[3]),bz(aQ(bZ)-f[3])if z(I)<90 or z(aH)<90 then
ah,ac=bA(I,-N,N),bA(aH,-N,N)if z(I)>=90 or z(aH)>=90 then
cq=bk(aR,bZ)if z(I)>=90 then
if cq>0 then ah=-N else ah=N end
else
if cq<0 then ac=-N else ac=N end
end
end
n,k=aD(tan(ah)/O*B),aD(tan(ac)/O*B)if n~=k then
q,as=aW(f[1],cc),aW(f[1],ck)aI=ab[3]+90
bY=aI-cd
cx=q*sin(bY)aJ=(q*cos(bY))if I~=ah then
q=aJ/cos(aI-(ah+f[3]))end
if aH~=ac then
as=aJ/cos(aI-(ac+f[3]))end
q,as=q*cos(ah),as*cos(ac)h=ab[5]+6
cE=(n>k)if cE and A[h]~=0 then
ax=A[3]&4>0
if ax then
U,T=am[c[3][A[6]][6]],am[c[3][A[7]][6]]end
ak=c[3][A[h]]cJ={ak[3],ak[4],ak[5]}G,bN,bF=am[ak[6]]for j,d in aL(cJ)do
an=d>0
av=S
if(an or(j==3 and not(bN and bF)))and(j==3 or ax)then
bG=K
cm=0
if j<3 then
bG=j==1 and C(U[4],T[4])==0
y,v=U[3-j],T[3-j]av=(y<v)~=(j==2)~=(h==6)and y~=v and U~=T
y,v=x(y,v),C(y,v)if av then
if j==1 then
bN=S
else
bF=S
cm=A[3]&16>0 and C(U[2],T[2])-v or 0
end
end
else
if ax then
y,v=C(U[1],T[1]),x(U[2],T[2])av=U~=T
else
y,v=G[1],G[2]end
end
y,v=y-f[2],v-f[2]bE,bH=y*b_,v*b_
if(av or an)and not bG then
bp=ab[6]-ak[1]if A[4]==48 then
bp=bp-az
end
cw,cz=bE/q,bH/q
cA,cI=bE/as,bH/as
bR=0
ao=K
if an then
_=c[21][d][4]if(ab[4]==cf or ch==A[4]or A[8])and _>0 then
d=_
end
ap=c[21][d][3]s=1
if(j==3 and A[3]&16>0)or(j==1 and A[3]&8==0)then
s=-1
end
end
for h=n,k,-1 do
cv=bV[h]bB=(aI-f[3])-cv
g=B-h
bJ=K
if g>=0 and g<=L-1 then
if a<aP[g]then
aK=(h-n)/(k-n)H,J=(cw*(1-aK)+cA*aK),(cz*(1-aK)+cI*aK)if z(J+H)-(J-H)<aj then
if an then
if H~=J then
bJ=S
bT=aJ*tan(bB)aE=bI(x(((z(bT)+z(aJ))//bM)+1,16))cb=ai((C(bT-cx,0)-bp)/(ap*aE))ct=cb*aE
cj={g,u-H,u-J,d,cb,v-y,G[5],ak[2]+cm,S,ap*aE,aE,s,not ao,j==3 and ax}if ct>bR or(not ao)or h==k then
bR=ct-1+aE
ao=S
p[a][#p[a]+1]=cj
end
cD=cj
end
end
if av then
if j~=2 then
if J<W[g]then
aU[a][#aU[a]+1]={g,C(J,V[g]),W[g],G}end
if j==3 then Y=J else Y=H end
if W[g]>Y then W[g]=Y end
end
if j~=1 then
if H>V[g]then
aY[a][#aY[a]+1]={g,V[g],x(H,W[g]),G}end
if j==3 then Y=H else Y=J end
if V[g]<Y then V[g]=Y end
end
if(W[g]<=V[g])or(j==3 and(not ax)and an)then
aP[g]=a
bg=bg-1
end
end
end
end
end
if(not bJ)and ao then
ao=K
p[a][#p[a]+1]=cD
p[a][#p[a]][9]=K
end
end
if#p[a]>0 then
p[a][#p[a]][9]=K
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
function onDraw()aM=cr
local co,bc,ae,cT=aM.drawTriangleF,aM.drawRectF,aM.setColor,aM.drawText
cQ={aY,aU}if aF then
e=c[24][c[19][8][at-3]]X,ar=e[1],e[2]D=L/ceil(X*O)ce=D*1
for a=0,ceil(X*O),1 do
n=(X/2-a-1+f[3]/90*X)%X
k=(n%1-1)*D
n=ai(n)*ar
for l=0,ar-1,1 do
R=e[5+l+n]i=c[20][R]ae(i[1],i[2],i[3])bc(a*D+k,l*D,ce,ce)end
end
for a=#p,1,-1 do
for l=1,#p[a]do
d=p[a][l]if d[9]or d[13]then
if d[9]then
P=p[a][l+1]else
P=d
end
e=c[21][d[4]]e=c[21][d[4]+(ci%e[5])*c[19][3][2]+c[19][12][d[11]]]s=d[12]Z=x(s,0)g=d[1]k=P[1]cg=d[2-Z]cR=P[2-Z]h=d[3+Z]bb=P[3+Z]if not P[9]then k=k+1 end
aS(d[7])cB=s*(d[2]-d[3])*e[3]/d[6]cL=s*(P[2]-P[3])*e[3]/P[6]bU=s>0 and x or C
bn=0
while h*s<cg*s and(bn<e[2]or not d[14])do
bP=bU(h+cB,cg)be=bU(bb+cL,cR)R=e[7+((Z+d[8]//e[3])%e[2])+e[2]*((d[5])%e[1])]i=c[20][R]if i then
ae(i[1]*r,i[2]*r,i[3]*r)co(g,h,g,bP,k,be)co(g,h,k,bb,k,be)end
h=bP
bb=be
Z=Z+s
bn=bn+1
end
end
end
for b=1,2 do
_=cQ[b]cn={}au,aq,bl=aj,-aj
for l,d in aL(_[a])do
au=x(au,d[2])aq=C(aq,d[3])bl=d
e=c[22][d[4][b+2]]if e and not c_ then
aS(d[4][5])i=c[20][e[5]]ae(i[1]*r,i[2]*r,i[3]*r)cr.drawLine(d[1],u-d[2],d[1],ai(u-d[3]-1))end
end
if bl and c_ then
G=bl[4]cN=(G[b]-f[2])bd=cos(f[3])bu=sin(f[3])for aw=ai(au+u),ceil(aq+u)do
af=b_*cN/(u-aw)bW=bd*af-f[1][1]ca=bu*af-f[1][2]bQ=-bu*af+bW
bX=bd*af+ca
cH=bu*af+bW
cu=-bd*af+ca
cP=(cH-bQ)/L
cK=(cu-bX)/L
cn[aw]={cP,cK,bQ,bX}end
for l,d in aL(_[a])do
if G[b+2]~=0 then
g=d[1]aS(G[5])o=G[b+2]e=c[22][o]e=c[22][o+(ci%e[4])]bC=B-(B-g)*O
au,aq=ai(d[2]+u),ceil(d[3]+u)ap=e[3]for aw=au,aq do
aV=cn[aw]cO=(aV[3]+aV[1]*bC)//ap
cF=(aV[4]+aV[2]*bC)//ap
R=6+(cF%e[1])+e[1]*(cO%e[2])i=c[20][e[R]]if i then
ae(i[1]*r,i[2]*r,i[3]*r)bc(g,-aw+aj,1,1)end
end
end
end
end
end
for l=1,#aT[a]do
_=m[aT[a][l]]if _[6]~=0 then
aR=sub(_,f[1])q=_[20]if q>1 then
I=bz(aQ(aR)-f[3])q=q*cos(I)if z(I)<90 then
n=B-aD(tan(I)/O*B)bB=aD((Q+I+f[3]-_[3]+bi*4)/360*8)M=c[16][_[6]][1]if M~=0 and _[6]~=1 then
e=c[17][z(M)][bB%8+1]s=e<0 and-1 or 1
e=z(e)if e>0 then
e=c[23][e+c[19][12][x(bI(q//aZ+1),8)]]X,ar=e[1],e[2]D=B/(O*q)aO=D*bx
H=u+(f[2]-_[9])/q*b_
J=H-e[5]*aO
k=n-s*e[4]*D
D,aO=D*e[3],aO*e[3]aS(_[8][5])r=M>0 and r or 1
bL=D
cC=bL*bx
cG=_[4]and c[15][_[4]][23]&8>0
for h=0,X-1 do
n=k+h*D*s
if a<=aP[bA(aD(n),0,L-1)]then
for j=0,ar-1 do
R=e[7+j+h*ar]if R~=0 then
if cG then
bw=bw%50+1
ae(0,0,0,x(75*c[13][2][bw],255))else
i=c[20][R]ae(i[1]*r,i[2]*r,i[3]*r)end
bc(n,J+j*aO,bL,cC)end
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
bi=bi+1
end
