cp=""

O=180
bR=screen
aX=ipairs
bA=table
bN=nil
bJ=input
bw=string.sub
s=math
C=s.max
q=s.min
x=s.abs
aD=s.floor
ceil=s.ceil
sqrt=s.sqrt
S=bJ.getNumber
aA=bJ.getBool
pi=s.pi
J=false
R=true
function bs(c,u)return c[1]*u[2]-c[2]*u[1]end
function sub(c,u)return{(c[1]-u[1]),(c[2]-u[2])}end
function bg(c)return((c+O)%360)-O end
function cos(c)return s.cos(c/O*pi)end
function tan(c)return s.tan(c/O*pi)end
function cn(c)return s.atan(c)*O/pi end
function aJ(c)return s.atan(c[2],c[1])*O/pi end
function ay(c,u,_)return q(C(u,c),_)end
function ai(c)return aD(c+.5)end
function aS(c,u)return sqrt(((c[1]-u[1])^2)+((c[2]-u[2])^2))end
function bp(c)c=c-1
c=c|(c>>1)c=c|(c>>2)c=c|(c>>4)return c+1
end
b={}bl=1
az=3
aF=J
ae=R
i={{0,0},0,0}L=288
I=L//2
ba=128
T=ba//2
aQ={}aC=400
bE=100
co=0
aw={}aL=32768
bL=3002
bo=0
aB=0
aU=0
bn=1.2
K=52
N=tan(K)bc=T*bn*L/ba/N
X=1
bt={}for a=-I,I do bt[a]=aJ({1,a/I*N})end
function bb(a)if a<aL then
local r,bf=b[7][a]bf=0<bs({r[3],r[4]},sub(i[1],r))and 8 or 7
bb(r[bf])bb(r[15-bf])else
ao[#ao+1]=a-aL
end
end
function aE(a,c)if a<aL then
r=b[7][a]return aE(r[0<bs({r[3],r[4]},sub(c,r))and 8 or 7],c)else
return a-aL
end
end
function bd(c)r=b[5][b[6][c][2]]return b[3][b[2][r[4]][r[5]+6]][6]end
function onTick()bm=0
for n=1,3 do
if aA(9)and(not aF)or not b[21]then
bk=property.getText(bl..cp)if bk~=cp then
a=1
w=cp
_=bw(bk,a,a)while _~=cpor w~=cpdo
if _==","or _==cpthen
w=w+0
if X==1 then
bU=w
if b[w]==bN then
b[w]={}end
X=2
elseif X==2 then
bZ=w
av=0
X=3
elseif X==3 then
bh=w
X=4
else
if av==0 then
av=bZ
bh=bh-1
af={}b[bU][#b[bU]+1]=af
end
af[#af+1]=w
av=av-1
if C(av,bh)==0 then
X=1
end
end
w=cp
else
w=w.._
end
a=a+1
_=bw(bk,a,a)end
bl=bl+1
else
aF=R
end
end
end
if aF then
ae=ae or aA(2)if bE>0 and not ae then
ag={}aw[#aw+1]=ag
ap=5
_=S(ap)while _~=0 do
U={}ag[#ag+1]=U
for a=0,8 do
U[a+1]=S(ap+a)end
ap=ap+9
_=S(ap)end
end
if aA(1)then
bT=0
bi=S(1)bE=S(3)aU=aU+1
if ae then
for a=1,10 do
b[a]=b[a+10*az]end
az=az+1
end
if S(2)>0 then
_=b[2][S(2)]if _ then
if _[4]>3004 then
aC=C(aC+3*(_[4]-3006),1)elseif _[4]>3000 then
bL=_[4]end
bT=S(2)end
end
if aA(3)and bi~=1 and bi~=3 then
aG=.1
aB=bi==5 and 5 or 3
else
aB=aB-1
if aB<1then
aG=0
end
end
for a=1,#aw do
ag=aw[a]for n=1,#ag do
U=ag[n]_=U[1]if _>(2^15)then
_=b[8][_-(2^15)]_[1]=U[2]_[2]=U[3]elseif _<0 then
while-_>#b[1]do
b[1][#b[1]+1]=J
end
bA.remove(b[1],-_)else
if not b[1][_]then
b[1][_]={}end
_=b[1][_]for g=1,8 do
_[b[19][1][g]]=U[g+1]end
_[15]=0
_[7]=aE(#b[7],_)_[8]=bd(_[7])end
end
end
aw={}for a=1,#b[6]do
aQ[a]={}end
for a=1,#b[1]do
_=b[1][a]if _ then
if ae then
_[7]=aE(#b[7],_)_[8]=bd(_[7])_[9]=b[8][_[8]][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
if _[4]==1 then
cj=a
end
end
aW=0
for n,d in aX({1,2,9})do
_[d]=_[d]+_[d+10]aW=aW+_[d+10]end
if aW~=0then
_[7]=aE(#b[7],_)_[8]=bd(_[7])end
_[15]=_[15]+1
_[20]=aS(_,i[1])H=b[16][_[6]]if H~=bN then
if _[15]>=H[2]and H[2]~=-1 then
_[6]=H[4]_[15]=0
end
end
aQ[_[7]][#aQ[_[7]]+1]=a
end
end
ae=J
_=b[1][cj]i[1]={_[1],_[2]}i[2]=_[9]+41
i[3]=_[3]ao={}bb(#b[7])at={}m={}ah={}W={}V={}aR={}br=L
for a=0,L-1 do
at[a],W[a],V[a]=#b[6]+2,T+1,-T
end
a=1
while a<=#ao and br>0 do
_=b[6][ao[a]]ah[a]={}m[a]={}aR[a]=aQ[ao[a]]bA.sort(aR[a],function(c,u)return b[1][c][20]>b[1][u][20]end)for n=_[2],_[1]+_[2]-1 do
ac=b[5][n]F=b[2][ac[4]]bV,bv=b[4][ac[1]],b[4][ac[2]]aN,bF=sub(bV,i[1]),sub(bv,i[1])bS=aJ(aN)D,aH=bg(bS-i[3]),bg(aJ(bF)-i[3])if x(D)<90 or x(aH)<90 then
al,aj=ay(D,-K,K),ay(aH,-K,K)if x(D)>=90 or x(aH)>=90 then
bO=bs(aN,bF)if x(D)>=90 then
if bO>0 then al=-K else al=K end
else
if bO<0 then aj=-K else aj=K end
end
end
j,k=ai(tan(al)/N*I),ai(tan(aj)/N*I)if j~=k then
o,aq=aS(i[1],bV),aS(i[1],bv)aO=ac[3]+90
bu=aO-bS
cd=o*s.sin(bu/O*pi)aM=(o*cos(bu))if D~=al then
o=aM/cos(aO-(al+i[3]))end
if aH~=aj then
aq=aM/cos(aO-(aj+i[3]))end
o,aq=o*cos(al),aq*cos(aj)g=ac[5]+6
ck=(j>k)if ck and F[g]~=0 then
am=F[3]&4>0
if am then
Z,aa=b[8][b[3][F[6]][6]],b[8][b[3][F[7]][6]]end
ak=b[3][F[g]]c_={ak[3],ak[4],ak[5]}G,bW,bP=b[8][ak[6]]for h,d in aX(c_)do
ax=d>0
au=R
if(ax or(h==3 and not(bW and bP)))and(h==3 or am)then
bC=J
bG=0
if h<3 then
bC=h==1 and C(Z[4],aa[4])==0
y,v=Z[3-h],aa[3-h]au=(y<v)~=(h==2)~=(g==6)and y~=v and Z~=aa
y,v=q(y,v),C(y,v)if au then
if h==1then
bW=R
else
bP=R
bG=F[3]&16>0 and C(Z[2],aa[2])-v or 0
end
end
else
if am then
y,v=C(Z[1],aa[1]),q(Z[2],aa[2])au=Z~=aa
else
y,v=G[1],G[2]end
end
y,v=y-i[2],v-i[2]bY,bK=y*bc,v*bc
if(au or ax)and not bC then
bq=ac[6]-ak[1]if F[4]==48 then
bq=bq-aU
end
cf,cc=bY/o,bK/o
ca,cb=bY/aq,bK/aq
bX=0
ar=J
if ax then
_=b[21][d][4]if(ac[4]==bT or bL==F[4])and _>0then
d=_
end
bB=b[21][d][3]p=1
if(h==3 and F[3]&16>0)or(h==1 and F[3]&8==0)then
p=-1
end
end
for g=j,k,-1 do
ch=bt[g]aI=(aO-i[3])-ch
f=I-g
bH=J
if f>=0 and f<=L-1 then
if a<at[f]then
aK=(g-j)/(k-j)E,z=(cf*(1-aK)+ca*aK),(cc*(1-aK)+cb*aK)if x(z+E)-(z-E)<ba then
if ax then
if E~=z then
bH=R
bx=aM*tan(aI)B=q(((x(bx)+x(aM))//aC)+1,4)aT=q(bp(aD(B/cos(aI))),16)B=bp(B)be=aD((C(bx-cd,0)-bq)/(bB*aT))*aT
bI={f,T-E,T-z,d,be,v-y,G[5],ak[2]+bG,R,bB*B,B,p,not ar,h==3 and am}if be>bX or(not ar)or g==k then
bX=be-1+aT
ar=R
m[a][#m[a]+1]=bI
end
cl=bI
end
end
if au then
if h~=2 then
if z<W[f]then
ah[a][#ah[a]+1]={f,C(z,V[f]),W[f],G,2}end
if h==3then ab=z else ab=E end
if W[f]>ab then W[f]=ab end
end
if h~=1 then
if E>V[f]then
ah[a][#ah[a]+1]={f,V[f],q(E,W[f]),G,1}end
if h==3then ab=E else ab=z end
if V[f]<ab then V[f]=ab end
end
if(W[f]<=V[f])or(h==3 and(not am)and ax)then
at[f]=a
br=br-1
end
end
end
end
end
if(not bH)and ar then
ar=J
m[a][#m[a]+1]=cl
m[a][#m[a]][9]=J
end
end
if#m[a]>0 then
m[a][#m[a]][9]=J
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
function onDraw()aP=bR
local bD,aV,as,cm=aP.drawTriangleF,aP.drawRectF,aP.setColor,aP.drawText
bm=bm+1
if bm<=1 then
if aF then
e=b[24][b[19][8][az-3]]Q,ad=e[1],e[2]t=L/ceil(Q*N)bM=t*1
for a=0,ceil(Q*N),1 do
j=(Q/2-a-1+i[3]/90*Q)%Q
k=(j%1-1)*t
j=aD(j)*ad
for n=0,ad-1,1 do
P=e[5+n+j]l=b[20][P]as(l[1],l[2],l[3])aV(a*t+k,n*t,bM,bM)end
end
for a=#m,1,-1 do
for n=1,#m[a]do
d=m[a][n]if d[9]or d[13]then
if d[9]then
M=m[a][n+1]else
M=d
end
e=b[21][d[4]]p=d[12]Y=q(p,0)f=d[1]k=M[1]by=d[2-Y]cg=M[2-Y]g=d[3+Y]bj=M[3+Y]if not M[9]then k=k+1 end
A=q(d[7]+aG,1)^2.2
ci=p*(d[2]-d[3])*d[10]/d[6]ce=p*(M[2]-M[3])*d[10]/M[6]af=p>0 and q or C
aY=0
while g*p<by*p and(aY<e[2]or not d[14])do
bQ=af(g+ci,by)b_=af(bj+ce,cg)P=e[6+((Y*d[11]+d[8]//e[3])%e[2])+e[2]*(d[5]%e[1])]l=b[20][P]if l then
as(l[1]*A,l[2]*A,l[3]*A)bD(f,g,f,bQ,k,b_)bD(f,g,k,bj,k,b_)end
g=bQ
bj=b_
Y=Y+p
aY=aY+d[11]end
end
end
for n,d in aX(ah[a])do
G=d[4]if G[d[5]+2]~=0 then
e=b[22][G[d[5]+2]]f=d[1]A=q(G[5]+aG,1)^2.2
l=b[20][e[4]]as(l[1]*A,l[2]*A,l[3]*A)bR.drawLine(f,-d[3]+T-1,f,-d[2]+T)end
end
for n=1,#aR[a]do
_=b[1][aR[a][n]]if _[6]~=0 then
aN=sub(_,i[1])o=_[20]if o>1 then
D=bg(aJ(aN)-i[3])o=o*cos(D)if x(D)<90 then
j=I-ai(tan(D)/N*I)aI=ai((O+D+i[3]-_[3])/360*8)H=b[16][_[6]][1]if H~=0 and _[6]~=1 then
e=b[17][x(H)][aI%8+1]if e==0 then
e=b[17][x(H)][1]end
p=e<0 and-1 or 1
e=x(e)if e>0 then
e=b[23][e]Q,ad=e[1],e[2]B=q(bp(o//aC+1),8)t=I/(N*o)an=t*bn
E=T+(i[2]-_[9])/o*bc
z=E-e[5]*an
k=j-p*e[4]*t
t,an=t*e[3],an*e[3]A=H>0 and q(b[8][_[8]][5]+aG,1)^2.2 or 1
aZ=t*B
bz=aZ*bn
if _[4]and b[15][_[4]][23]&8>0 then
for g=0,Q-1,B do
j=k+g*t*p
if a<=at[ay(ai(j),0,L-1)]then
for h=0,ad-1,B do
P=e[7+h+g*ad]if P~=0 then
bo=bo%50+1
as(0,0,0,q(75*b[13][2][bo],255))aV(j,z+h*an,aZ,bz)end
end
end
end
else
for g=0,Q-1,B do
j=k+g*t*p
if a<=at[ay(ai(j),0,L-1)]then
for h=0,ad-1,B do
P=e[7+h+g*ad]if P~=0 then
l=b[20][P]as(l[1]*A,l[2]*A,l[3]*A)aV(j,z+h*an,aZ,bz)end
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
end
