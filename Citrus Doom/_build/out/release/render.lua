
z=math
w=z.max
s=z.min
C=z.abs
aj=z.floor
ceil=z.ceil
sqrt=z.sqrt
G=input.getNumber
bm=input.getBool
pi=z.pi/180
be=false
Q=true
as=ipairs
cc=table.remove
bg=string
function bo(b,p)return b[1]*p[2]-b[2]*p[1]end
function sub(b,p)return{(b[1]-p[1]),(b[2]-p[2])}end
function bp(b)return((b+180)%360)-180 end
function sin(b)return z.sin(b*pi)end
function cos(b)return z.cos(b*pi)end
function tan(b)return z.tan(b*pi)end
function cP(b)return z.atan(b)/pi end
function aT(b)return z.atan(b[2],b[1])/pi end
function bq(b,p,_)return s(w(p,b),_)end
function aw(b)return aj(b+.5)end
function aI(b,p)return sqrt(((b[1]-p[1])^2)+((b[2]-p[2])^2))end
function bV(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
function aL(b)q=s(b/255+ce,1)^2.2 end
c={}bl=1
aD=3
av=Q
l={{0,0},0}D=0
R=288
F=144
ae=128
u=64
aF={}aZ=500
bM=250
cb=1
ac=2^15
bA=3002
bs=0
aE=0
ar=0
bv=1.2
L=52
N=tan(L)aU=u*bv*R/ae/N
T=1
bC={}for a=-F,F do bC[a]=aT({1,a/F*N})end
function br(a)if a<ac then
local v,ba=c[7][a]ba=0<bo({v[3],v[4]},sub(l[1],v))and 8 or 7
br(v[ba])br(v[15-ba])else
ax[#ax+1]=a-ac
end
end
function aV(a,b)if a<ac then
v=c[7][a]return aV(v[0<bo({v[3],v[4]},sub(b,v))and 8 or 7],b)else
return a-ac
end
end
function bz(b)v=c[5][c[6][b][2]]return aR[c[3][c[2][v[4]][v[5]+6]][6]]end
function onTick()bi=0
for m=1,3 do
if bm(9)and(not bd)or not c[21]then
bf=property.getText(bl)a=1
B=""
_=bg.sub(bf,a,a)while _~=""do
cd=bg.byte(_)if cd>64 then
B=(B..cd-65)+0
if T==1 then
bR=B
c[B]=c[B]or{}elseif T==2 then
cx=B
aq=0
elseif T==3 then
b_=B
else
if aq==0 then
aq=cx
b_=b_-1
bk={}c[bR][#c[bR]+1]=bk
end
bk[#bk+1]=B
aq=aq-1
T=w(aq,b_)>0 and T-1 or 0
end
T=T+1
B=""
else
B=B.._
end
a=a+1
_=bg.sub(bf,a,a)end
bl=bl+1
bd=bf==""
end
end
if bd then
if G(10)>0 then
av=Q
aD=G(10)end
if cb>0 and not av then
af={}ay[#ay+1]=af
aC=6
_=G(aC)while _~=0 do
al={}af[#af+1]=al
for a=0,8 do
al[a+1]=G(aC+a)end
aC=aC+9
_=G(aC)end
end
if bm(1)then
bW=0
bX=G(1)cb=G(3)ar=ar+1
bY=ar//10
if av then
for a=1,10 do
c[a]=c[a+10*aD]end
k=c[1]cO={k[1][1],k[1][2]}for a=#k,1,-1 do
_=k[a]_=_[5]&(bA-3000)>0 or cc(k,a)end
aR=c[8]ay={}aD=aD+1
end
if G(2)>0 then
_=c[2][G(2)]if _ then
b=_[4]if b>0 then
if b==3008 then
aH=_[5]>0 and _[5]elseif b>3004 then
aZ=w(aZ+3*(_[4]-3006),1)bM=aZ/2
elseif b>3000 then
bA=_[4]end
bW=G(2)if b<3000 and c[9][_[5]][7]==0 then
_[8]=1
end
end
end
end
if bm(3)and bX~=1 and bX~=3 then
ce=.1
aE=5
else
aE=aE-1
if aE<1 then
ce=0
end
end
for a=1,#ay do
af=ay[a]for m=1,#af do
al=af[m]_=al[1]if _>ac then
_=aR[_-ac]for g=1,6 do
_[g]=al[g+1]end
elseif _<0 then
while-_>#k do
k[#k+1]=be
end
cc(k,-_)else
k[_]=k[_]or{}_=k[_]for g=1,8 do
_[c[19][1][g]]=al[g+1]end
_[15]=0
_[7]=aV(#c[7],_)_[8]=bz(_[7])end
end
end
ay={}for a=1,#c[6]do
aF[a]={}end
for a,_ in as(k)do
if av then
_[7]=aV(#c[7],_)_[8]=bz(_[7])_[9]=_[8][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
end
if _ and a>1 then
bw=0
for m,d in as({1,2,9})do
_[d]=_[d]+_[d+10]bw=bw+_[d+10]end
if bw~=0 then
_[7]=aV(#c[7],_)_[8]=bz(_[7])end
_[15]=_[15]+1
_[20]=aI(_,l[1])M=c[16][_[6]]if M then
if M[5]>0 then
_[9]=_[8][1]end
if _[15]>=M[2]and M[2]~=-1 then
_[6]=M[4]_[15]=0
end
end
aF[_[7]][#aF[_[7]]+1]=a
end
end
_,av=k[1]ct=s(aI(_,l[1])^2/4,16)l[1]={_[1],_[2]}D=_[3]l[2]=_[9]+41+ct*sin(ar*20)/4
ax={}br(#c[7])aP={}x={}aJ={}aK={}X={}W={}aS={}by=R
for a=0,R-1 do
aP[a],X[a],W[a]=#c[6]+2,u+1,-u
end
a=1
while a<=#ax and by>0 do
_=c[6][ax[a]]aJ[a]={}aK[a]={}x[a]={}aS[a]=aF[ax[a]]table.sort(aS[a],function(b,p)return k[b][20]>k[p][20]end)for m=_[2],_[1]+_[2]-1 do
U=c[5][m]J=c[2][U[4]]bL,bE=c[4][U[1]],c[4][U[2]]aY,cf=sub(bL,l[1]),sub(bE,l[1])bZ=aT(aY)I,aO=bp(bZ-D),bp(aT(cf)-D)if C(I)<90 or C(aO)<90 then
ag,ab=bq(I,-L,L),bq(aO,-L,L)if C(I)>=90 or C(aO)>=90 then
bJ=bo(aY,cf)if C(I)>=90 then
if bJ>0 then ag=-L else ag=L end
else
if bJ<0 then ab=-L else ab=L end
end
end
o,n=aw(tan(ag)/N*F),aw(tan(ab)/N*F)if o~=n then
r,aA=aI(l[1],bL),aI(l[1],bE)aQ=U[3]+90
co=aQ-bZ
cs=r*sin(co)aX=(r*cos(co))if I~=ag then
r=aX/cos(aQ-(ag+D))end
if aO~=ab then
aA=aX/cos(aQ-(ab+D))end
r,aA=r*cos(ag),aA*cos(ab)g=U[5]+6
cv=(o>n)if cv and J[g]~=0 then
au=J[3]&4>0
if au then
S=aR[c[3][J[13-g]][6]]end
ak=c[3][J[g]]cw={ak[3],ak[4],ak[5]}j,bP,bO=aR[ak[6]]for i,d in as(cw)do
aa=d>0
ad=Q
if(aa or(i==3 and not(bP and bO)))and(i==3 or au)then
ci,cQ=0
if i<3 then
cM=i~=1 or w(j[4],S[4])~=0
E,y=j[3-i],(i==1 and w or s)(S[3-i],j[i])ad=(E<y)==(i==2)and E~=y and j~=S
aa=ad
E,y=s(E,y),w(E,y)if ad then
if i==1 then
bP=Q
else
bO=Q
ci=J[3]&16>0 and w(j[2],S[2])-y or 0
end
end
else
if au then
E,y=s(w(j[1],S[1]),j[2]),w(s(j[2],S[2]),j[1])ad=j~=S
else
E,y=j[1],j[2]end
end
E,y=E-l[2],y-l[2]cl,c_=E*aU,y*aU
if(ad or aa)and cM then
bx=U[6]-ak[1]if J[4]==48 then
bx=bx-ar
end
cJ,cN=cl/r,c_/r
cA,cI=cl/aA,c_/aA
bH,aB=0
if aa then
_=c[21][d][4]if(U[4]==bW or bA==J[4]or J[8])and _>0 then
d=_
end
ap=c[21][d][3]t=1
if(i==3 and J[3]&16>0)or(i==1 and J[3]&8==0)then
t=-1
end
end
for g=o,n,-1 do
cy=bC[g]bn=(aQ-D)-cy
f,bU=F-g
if f>=0 and f<=R-1 then
if a<aP[f]then
aW=(g-o)/(n-o)K,H=(cJ*(1-aW)+cA*aW),(cN*(1-aW)+cI*aW)if C(H+K)-(H-K)<ae then
if aa then
if K~=H then
bU=Q
cn=aX*tan(bn)at=bV(s(((C(cn)+C(aX))//bM)+1,16))bG=aj((w(cn-cs,0)-bx)/(ap*at))bN=bG*at
bI={f,u-K,u-H,d,bG,y-E,j[5],ak[2]+ci,Q,ap*at,at,t,not aB,i==3 and au}if bN>bH or(not aB)or g==n then
bH=bN-1+at
aB=Q
x[a][#x[a]+1]=bI
end
bK=bI
end
end
if ad then
if i~=2 then
if H<X[f]then
aK[a][#aK[a]+1]={f,w(H,W[f]),X[f],j}end
if i==3 then Z=H else Z=K end
if X[f]>Z then X[f]=Z end
end
if i~=1 then
if K>W[f]then
aJ[a][#aJ[a]+1]={f,W[f],s(K,X[f]),j}end
if i==3 then Z=K else Z=H end
if W[f]<Z then W[f]=Z end
end
if(X[f]<=W[f])or(i==3 and(not au)and aa)then
aP[f]=a
by=by-1
end
end
end
end
end
if(not bU)and aB then
bK[9]=be
x[a][#x[a]+1],aB=bK
end
end
if#x[a]>0 then
x[a][#x[a]][9]=be
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
function onDraw()aG=screen
local bQ,cg,ah,bS=aG.drawTriangleF,aG.drawRectF,aG.setColor,aG.drawLine
cu={aJ,aK}if bd then
e=c[24][c[19][8][aD-3]]V,az=e[1],e[2]A=R/ceil(V*N)for a=0,ceil(V*N),1 do
o=(V/2-a-1+D/90*V)%V
n=(o%1-1)*A
o=aj(o)*az
for m=0,az-1,1 do
O=e[5+m+o]h=c[20][O]ah(h[1],h[2],h[3])cg(a*A+n,m*A,A,A)end
end
for a=#x,1,-1 do
for m=1,#x[a]do
d=x[a][m]if d[9]or d[13]then
if d[9]then
P=x[a][m+1]else
P=d
end
e=c[21][d[4]]e=c[21][d[4]+(bY%e[5])*"number of wall mipmap levels"+c[19][12][d[11]]]t=d[12]Y=s(t,0)f=d[1]n=P[1]bB=d[2-Y]cG=P[2-Y]g=d[3+Y]bh=P[3+Y]if not P[9]then n=n+1 end
aL(d[7])cq=t*(d[2]-d[3])*e[3]/d[6]cK=t*(P[2]-P[3])*e[3]/P[6]bD=t>0 and s or w
bu=0
while g*t<bB*t and(bu<e[2]or not d[14])do
cj=bD(g+cq,bB)bj=bD(bh+cK,cG)O=e[7+((Y+d[8]//e[3])%e[2])+e[2]*((d[5])%e[1])]h=c[20][O]if h then
ah(h[1]*q,h[2]*q,h[3]*q)bQ(f,g,f,cj,n,bj)bQ(f,g,n,bh,n,bj)end
g=cj
bh=bj
Y=Y+t
bu=bu+1
end
end
end
for b=1,2 do
_=cu[b]ch={}an,ao,bt=ae,-ae
for m,d in as(_[a])do
an=s(an,d[2])ao=w(ao,d[3])bt=d
e=c[22][d[4][b+2]]if e and not aH then
aL(d[4][5])h=c[20][e[5]]ah(h[1]*q,h[2]*q,h[3]*q)bS(d[1],u-d[2],d[1],aj(u-d[3]-1))end
end
if bt and aH then
j=bt[4]cF=(j[b]-l[2])bc=cos(D)bb=sin(D)for am=aj(an+u),ceil(ao+u)do
ai=aU*cF/(u-am)cp=bc*ai-l[1][1]cm=bb*ai-l[1][2]ck=-bb*ai+cp
ca=bc*ai+cm
cz=bb*ai+cp
cC=-bc*ai+cm
cD=(cz-ck)/R
cH=(cC-ca)/R
ch[am]={cD,cH,ck,ca}end
for m,d in as(_[a])do
if j[b+2]~=0 then
f=d[1]if f%aH==0 then
aL(j[5])p=j[b+2]e=c[22][p]e=c[22][p+(bY%e[4])]bT=F-(F-f)*N
an,ao=aj(d[2]+u),ceil(d[3]+u)ap=e[3]for am=an,ao do
aN=ch[am]cr=(aN[3]+aN[1]*bT)//ap
cL=(aN[4]+aN[2]*bT)//ap
O=6+(cL%e[1])+e[1]*(cr%e[2])h=c[20][e[O]]if h then
ah(h[1]*q,h[2]*q,h[3]*q)bS(f,ae-am,f+aH+1,ae-am)end
end
end
end
end
end
end
for m=1,#aS[a]do
_=k[aS[a][m]]if _[6]~=0 then
aY=sub(_,l[1])r=_[20]if r>1 then
I=bp(aT(aY)-D)r=r*cos(I)if C(I)<90 then
o=F-aw(tan(I)/N*F)bn=aw((180+I+D-_[3]+bi*4)/360*8)M=c[16][_[6]][1]if M~=0 and _[6]~=1 then
e=c[17][C(M)][bn%8+1]t=e<0 and-1 or 1
e=C(e)if e>0 then
e=c[23][e+c[19][12][s(bV(r//aZ+1),8)]]V,az=e[1],e[2]A=F/(N*r)aM=A*bv
K=u+(l[2]-_[9])/r*aU
H=K-e[5]*aM
n=o-t*e[4]*A
A,aM=A*e[3],aM*e[3]aL(_[8][5])q=M>0 and q or 1
bF=A
cE=bF*bv
cB=c[15][_[4]or 1][23]&8>0
for g=0,V-1 do
o=n+g*A*t
if a<=aP[bq(aw(o),0,R-1)]then
for i=0,az-1 do
O=e[7+i+g*az]if O~=0 then
if cB then
bs=bs%50+1
ah(0,0,0,s(75*c[13][2][bs],255))else
h=c[20][O]ah(h[1]*q,h[2]*q,h[3]*q)end
cg(o,H+i*aM,bF,cE)end
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
