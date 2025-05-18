cS=""

S=180
cm=screen
b_=ipairs
co=table
bU=input
v=math
z=v.max
w=v.min
B=v.abs
ad=v.floor
ceil=v.ceil
sqrt=v.sqrt
J=bU.getNumber
bw=bU.getBool
pi=v.pi
M=false
P=true
bq=string
function bz(b,l)return b[1]*l[2]-b[2]*l[1]end
function sub(b,l)return{(b[1]-l[1]),(b[2]-l[2])}end
function bi(b)return((b+S)%360)-S end
function sin(b)return v.sin(b/S*pi)end
function cos(b)return v.cos(b/S*pi)end
function tan(b)return v.tan(b/S*pi)end
function cR(b)return v.atan(b)*S/pi end
function aU(b)return v.atan(b[2],b[1])*S/pi end
function bA(b,l,_)return w(z(l,b),_)end
function aw(b)return ad(b+.5)end
function bd(b,l)return sqrt(((b[1]-l[1])^2)+((b[2]-l[2])^2))end
function by(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
function aG(b)o=w(b/255+bF,1)^2.2 end
c={}bo=1
at=3
aZ=M
aD=P
f={{0,0},0,0}K=288
y=K//2
ag=128
r=ag//2
aO={}aL=400
cd=100
cP=0
aq={}aP=32768
c_=3002
bc=0
aV=0
aH=0
bl=1.2
L=52
O=tan(L)aE=r*bl*K/ag/O
U=1
bW={}for a=-y,y do bW[a]=aU({1,a/y*O})end
function bx(a)if a<aP then
local t,be=c[7][a]be=0<bz({t[3],t[4]},sub(f[1],t))and 8 or 7
bx(t[be])bx(t[15-be])else
au[#au+1]=a-aP
end
end
function ba(a,b)if a<aP then
t=c[7][a]return ba(t[0<bz({t[3],t[4]},sub(b,t))and 8 or 7],b)else
return a-aP
end
end
function bj(b)t=c[5][c[6][b][2]]return c[3][c[2][t[4]][t[5]+6]][6]end
function onTick()bk=0
for m=1,3 do
if bw(9)and(not aZ)or not c[21]then
bg=property.getText(bo)a=1
C=cS
_=bq.sub(bg,a,a)while _~=cSdo
bR=bq.byte(_)if bR>64then
C=(C..bR-65)+0
if U==1then
bP=C
c[C]=c[C]or{}elseif U==2then
ct=C
ax=0
elseif U==3then
br=C
else
if ax==0then
ax=ct
br=br-1
bp={}c[bP][#c[bP]+1]=bp
end
bp[#bp+1]=C
ax=ax-1
U=z(ax,br)>0 and U-1 or 0
end
U=U+1
C=cS
else
C=C.._
end
a=a+1
_=bq.sub(bg,a,a)end
bo=bo+1
aZ=bg==cS
end
end
if aZ then
if J(9)>0 then
aD=P
at=J(9)end
if cd>0 and not aD then
ah={}aq[#aq+1]=ah
az=5
_=J(az)while _~=0 do
ae={}ah[#ah+1]=ae
for a=0,8 do
ae[a+1]=J(az+a)end
az=az+9
_=J(az)end
end
if bw(1)then
bK=0
bm=J(1)cd=J(3)aH=aH+1
cq=aH//10
if aD then
for a=1,10 do
c[a]=c[a+10*at]end
s=c[1]af=c[8]at=at+1
end
if J(2)>0 then
_=c[2][J(2)]if _ then
b=_[4]if b>0 then
if b==3008 then
cg=_[5]==1
elseif b>3004 then
aL=z(aL+3*(_[4]-3006),1)elseif b>3000 then
c_=_[4]end
bK=J(2)if b<3000 and c[9][_[5]][7]==0then
_[8]=1
end
end
end
end
if bw(3)and bm~=1 and bm~=3 then
bF=.1
aV=bm==5 and 5 or 3
else
aV=aV-1
if aV<1then
bF=0
end
end
for a=1,#aq do
ah=aq[a]for m=1,#ah do
ae=ah[m]_=ae[1]if _>(2^15)then
_=af[_-(2^15)]for h=1,6 do
_[h]=ae[h+1]end
elseif _<0 then
while-_>#s do
s[#s+1]=M
end
co.remove(s,-_)else
if not s[_]then
s[_]={}end
_=s[_]for h=1,8 do
_[c[19][1][h]]=ae[h+1]end
_[15]=0
_[7]=ba(#c[7],_)_[8]=bj(_[7])end
end
end
aq={}for a=1,#c[6]do
aO[a]={}end
for a=1,#s do
_=s[a]if _ then
if aD then
_[7]=ba(#c[7],_)_[8]=bj(_[7])_[9]=af[_[8]][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
end
bD=0
for m,d in b_({1,2,9})do
_[d]=_[d]+_[d+10]bD=bD+_[d+10]end
if bD~=0then
_[7]=ba(#c[7],_)_[8]=bj(_[7])end
_[15]=_[15]+1
_[20]=bd(_,f[1])Q=c[16][_[6]]if Q~=nil then
if _[15]>=Q[2]and Q[2]~=-1 then
_[6]=Q[4]_[15]=0
end
end
aO[_[7]][#aO[_[7]]+1]=a
end
end
aD=M
_=s[1]f[1]={_[1],_[2]}f[2]=_[9]+41
f[3]=_[3]au={}bx(#c[7])aK={}p={}aX={}aF={}aa={}ac={}aT={}bt=K
for a=0,K-1 do
aK[a],aa[a],ac[a]=#c[6]+2,r+1,-r
end
a=1
while a<=#au and bt>0 do
_=c[6][au[a]]aX[a]={}aF[a]={}p[a]={}aT[a]=aO[au[a]]co.sort(aT[a],function(b,l)return s[b][20]>s[l][20]end)for m=_[2],_[1]+_[2]-1 do
Z=c[5][m]E=c[2][Z[4]]bI,bL=c[4][Z[1]],c[4][Z[2]]aY,bG=sub(bI,f[1]),sub(bL,f[1])cc=aU(aY)F,aQ=bi(cc-f[3]),bi(aU(bG)-f[3])if B(F)<90 or B(aQ)<90 then
ai,al=bA(F,-L,L),bA(aQ,-L,L)if B(F)>=90 or B(aQ)>=90 then
cr=bz(aY,bG)if B(F)>=90 then
if cr>0 then ai=-L else ai=L end
else
if cr<0 then al=-L else al=L end
end
end
k,n=aw(tan(ai)/O*y),aw(tan(al)/O*y)if k~=n then
q,as=bd(f[1],bI),bd(f[1],bL)aJ=Z[3]+90
bZ=aJ-cc
cC=q*sin(bZ)aS=(q*cos(bZ))if F~=ai then
q=aS/cos(aJ-(ai+f[3]))end
if aQ~=al then
as=aS/cos(aJ-(al+f[3]))end
q,as=q*cos(ai),as*cos(al)h=Z[5]+6
cw=(k>n)if cw and E[h]~=0 then
aA=E[3]&4>0
if aA then
ab,X=af[c[3][E[6]][6]],af[c[3][E[7]][6]]end
ak=c[3][E[h]]cx={ak[3],ak[4],ak[5]}H,cp,bY=af[ak[6]]for j,d in b_(cx)do
ao=d>0
av=P
if(ao or(j==3 and not(cp and bY)))and(j==3 or aA)then
bO=M
bQ=0
if j<3 then
bO=j==1 and z(ab[4],X[4])==0
A,x=ab[3-j],X[3-j]av=(A<x)~=(j==2)~=(h==6)and A~=x and ab~=X
A,x=w(A,x),z(A,x)if av then
if j==1then
cp=P
else
bY=P
bQ=E[3]&16>0 and z(ab[2],X[2])-x or 0
end
end
else
if aA then
A,x=z(ab[1],X[1]),w(ab[2],X[2])av=ab~=X
else
A,x=H[1],H[2]end
end
A,x=A-f[2],x-f[2]bN,ck=A*aE,x*aE
if(av or ao)and not bO then
bn=Z[6]-ak[1]if E[4]==48 then
bn=bn-aH
end
cM,cz=bN/q,ck/q
cO,cv=bN/as,ck/as
bS=0
aC=M
if ao then
_=c[21][d][4]if(Z[4]==bK or c_==E[4]or E[8])and _>0then
d=_
end
ar=c[21][d][3]u=1
if(j==3 and E[3]&16>0)or(j==1 and E[3]&8==0)then
u=-1
end
end
for h=k,n,-1 do
cs=bW[h]aM=(aJ-f[3])-cs
g=y-h
ce=M
if g>=0 and g<=K-1 then
if a<aK[g]then
aW=(h-k)/(n-k)I,G=(cM*(1-aW)+cO*aW),(cz*(1-aW)+cv*aW)if B(G+I)-(G-I)<ag then
if ao then
if I~=G then
ce=P
cf=aS*tan(aM)N=w(((B(cf)+B(aS))//aL)+1,4)bC=w(by(ad(N/cos(aM))),16)N=by(N)bs=ad((z(cf-cC,0)-bn)/(ar*bC))*bC
bM={g,r-I,r-G,d,bs,x-A,H[5],ak[2]+bQ,P,ar*N,N,u,not aC,j==3 and aA}if bs>bS or(not aC)or h==n then
bS=bs-1+bC
aC=P
p[a][#p[a]+1]=bM
end
cL=bM
end
end
if av then
if j~=2 then
if G<aa[g]then
aF[a][#aF[a]+1]={g,z(G,ac[g]),aa[g],H}end
if j==3then Y=G else Y=I end
if aa[g]>Y then aa[g]=Y end
end
if j~=1 then
if I>ac[g]then
aX[a][#aX[a]+1]={g,ac[g],w(I,aa[g]),H}end
if j==3then Y=I else Y=G end
if ac[g]<Y then ac[g]=Y end
end
if(aa[g]<=ac[g])or(j==3 and(not aA)and ao)then
aK[g]=a
bt=bt-1
end
end
end
end
end
if(not ce)and aC then
aC=M
p[a][#p[a]+1]=cL
p[a][#p[a]][9]=M
end
end
if#p[a]>0 then
p[a][#p[a]][9]=M
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
function onDraw()aR=cm
local bJ,bh,aj,cQ=aR.drawTriangleF,aR.drawRectF,aR.setColor,aR.drawText
bk=bk+1
cK={aX,aF}if bk<=1 then
if aZ then
e=c[24][c[19][8][at-3]]W,aB=e[1],e[2]D=K/ceil(W*O)bV=D*1
for a=0,ceil(W*O),1 do
k=(W/2-a-1+f[3]/90*W)%W
n=(k%1-1)*D
k=ad(k)*aB
for m=0,aB-1,1 do
T=e[5+m+k]i=c[20][T]aj(i[1],i[2],i[3])bh(a*D+n,m*D,bV,bV)end
end
for a=#p,1,-1 do
for m=1,#p[a]do
d=p[a][m]if d[9]or d[13]then
if d[9]then
R=p[a][m+1]else
R=d
end
e=c[21][d[4]]e=c[21][d[4]+(cq%e[5])]u=d[12]V=w(u,0)g=d[1]n=R[1]cl=d[2-V]cy=R[2-V]h=d[3+V]bf=R[3+V]if not R[9]then n=n+1 end
aG(d[7])cu=u*(d[2]-d[3])*d[10]/d[6]cA=u*(R[2]-R[3])*d[10]/R[6]ci=u>0 and w or z
bE=0
while h*u<cl*u and(bE<e[2]or not d[14])do
bT=ci(h+cu,cl)bu=ci(bf+cA,cy)T=e[7+((V*d[11]+d[8]//e[3])%e[2])+e[2]*(d[5]%e[1])]i=c[20][T]if i then
aj(i[1]*o,i[2]*o,i[3]*o)bJ(g,h,g,bT,n,bu)bJ(g,h,n,bf,n,bu)end
h=bT
bf=bu
V=V+u
bE=bE+d[11]end
end
end
for b=1,2 do
_=cK[b]cj={}ap,an,bB=ag,-ag
for m,d in b_(_[a])do
ap=w(ap,d[2])an=z(an,d[3])bB=d
e=c[22][d[4][b+2]]if e and not cg then
aG(d[4][5])i=c[20][e[5]]aj(i[1]*o,i[2]*o,i[3]*o)cm.drawLine(d[1],r-d[2],d[1],ad(r-d[3]-1))end
end
if bB and cg then
H=bB[4]cE=(H[b]-f[2])bb=cos(f[3])bv=sin(f[3])for ay=ad(ap+r),ceil(an+r)do
am=aE*cE/(r-ay)ch=bb*am-f[1][1]ca=bv*am-f[1][2]cb=-bv*am+ch
bX=bb*am+ca
cN=bv*am+ch
cG=-bb*am+ca
cI=(cN-cb)/K
cH=(cG-bX)/K
cj[ay]={cI,cH,cb,bX}end
for m,d in b_(_[a])do
if H[b+2]~=0 then
aG(H[5])l=H[b+2]e=c[22][l]e=c[22][l+(cq%e[4])]g=d[1]cn=y-(y-g)*O
ap,an=ad(d[2]+r),ceil(d[3]+r)ar=e[3]for ay=ap,an do
aN=cj[ay]cJ=(aN[3]+aN[1]*cn)//ar
cF=(aN[4]+aN[2]*cn)//ar
T=6+(cF%e[1])+e[1]*(cJ%e[2])i=c[20][e[T]]if i then
aj(i[1]*o,i[2]*o,i[3]*o)bh(g,-ay+ag,1,1)end
end
end
end
end
end
for m=1,#aT[a]do
_=s[aT[a][m]]if _[6]~=0 then
aY=sub(_,f[1])q=_[20]if q>1 then
F=bi(aU(aY)-f[3])q=q*cos(F)if B(F)<90 then
k=y-aw(tan(F)/O*y)aM=aw((S+F+f[3]-_[3])/360*8)Q=c[16][_[6]][1]if Q~=0 and _[6]~=1 then
e=c[17][B(Q)][aM%8+1]u=e<0 and-1 or 1
e=B(e)if e>0 then
e=c[23][e]W,aB=e[1],e[2]N=w(by(q//aL+1),8)D=y/(O*q)aI=D*bl
I=r+(f[2]-_[9])/q*aE
G=I-e[5]*aI
n=k-u*e[4]*D
D,aI=D*e[3],aI*e[3]aG(af[_[8]][5])o=Q>0 and o or 1
bH=D*N
cD=bH*bl
cB=_[4]and c[15][_[4]][23]&8>0
for h=0,W-1,N do
k=n+h*D*u
if a<=aK[bA(aw(k),0,K-1)]then
for j=0,aB-1,N do
T=e[7+j+h*aB]if T~=0 then
if cB then
bc=bc%50+1
aj(0,0,0,w(75*c[13][2][bc],255))else
i=c[20][T]aj(i[1]*o,i[2]*o,i[3]*o)end
bh(k,G+j*aI,bH,cD)end
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
end
end
