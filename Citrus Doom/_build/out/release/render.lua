cp=""

T=180
bS=screen
bl=ipairs
bB=table
by=nil
bN=input
bP=string.sub
s=math
G=s.max
r=s.min
u=s.abs
aN=s.floor
ceil=s.ceil
sqrt=s.sqrt
C=bN.getNumber
aW=bN.getBool
pi=s.pi
I=false
L=true
function aU(c,w)return c[1]*w[2]-c[2]*w[1]end
function sub(c,w)return{(c[1]-w[1]),(c[2]-w[2])}end
function bm(c)return((c+T)%360)-T end
function cos(c)return s.cos(c/T*pi)end
function tan(c)return s.tan(c/T*pi)end
function cm(c)return s.atan(c)*T/pi end
function aQ(c)return s.atan(c[2],c[1])*T/pi end
function aP(c,w,_)return r(G(w,c),_)end
function ag(c)return aN(c+.5)end
function bg(c,w)return sqrt(((c[1]-w[1])^2)+((c[2]-w[2])^2))end
function bo(c)c=c-1
c=c|(c>>1)c=c|(c>>2)c=c|(c>>4)return c+1
end
b={}bc=1
ay=3
aJ=I
am=L
i={{0,0},0,0}O=288
M=O//2
bj=128
N=bj//2
aA={}aC=400
bH=100
co=0
as={}aF=32768
bF=3002
b_=0
aD=0
aY=0
aT=1.2
J=52
R=tan(J)aV=N*aT*O/bj/R
ad=1
bM={}for a=-M,M do bM[a]=aQ({1,a/M*R})end
function bb(a)if a<aF then
local q,aR=b[7][a]aR=0<aU({q[3],q[4]},sub(i[1],q))and 8 or 7
bb(q[aR])bb(q[15-aR])else
ao[#ao+1]=a-aF
end
end
function aK(a,c)if a<aF then
q=b[7][a]return aK(q[0<aU({q[3],q[4]},sub(c,q))and 8 or 7],c)else
return a-aF
end
end
function bs(c)q=b[5][b[6][c][2]]return b[3][b[2][q[4]][q[5]+6]][6]end
function onTick()aX=0
for m=1,3 do
if aW(9)and(not aJ)or not b[21]then
bp=property.getText(bc..cp)if bp~=cp then
a=1
x=cp
_=bP(bp,a,a)while _~=cpor x~=cpdo
if _==","or _==cpthen
x=x+0
if ad==1 then
bJ=x
if b[x]==by then
b[x]={}end
ad=2
elseif ad==2 then
ce=x
ax=0
ad=3
elseif ad==3 then
bi=x
ad=4
else
if ax==0 then
ax=ce
bi=bi-1
ae={}b[bJ][#b[bJ]+1]=ae
end
ae[#ae+1]=x
ax=ax-1
if G(ax,bi)==0 then
ad=1
end
end
x=cp
else
x=x.._
end
a=a+1
_=bP(bp,a,a)end
bc=bc+1
else
aJ=L
end
end
end
if aJ then
if C(9)>0 then
am=L
ay=C(9)end
if bH>0 and not am then
aj={}as[#as+1]=aj
at=5
_=C(at)while _~=0 do
aa={}aj[#aj+1]=aa
for a=0,8 do
aa[a+1]=C(at+a)end
at=at+9
_=C(at)end
end
if aW(1)then
bC=0
aS=C(1)bH=C(3)aY=aY+1
if am then
for a=1,10 do
b[a]=b[a+10*ay]end
ay=ay+1
end
if C(2)>0 then
_=b[2][C(2)]if _ then
if _[4]>3004 then
aC=G(aC+3*(_[4]-3006),1)elseif _[4]>3000 then
bF=_[4]end
bC=C(2)end
end
if aW(3)and aS~=1 and aS~=3 then
aE=.1
aD=aS==5 and 5 or 3
else
aD=aD-1
if aD<1then
aE=0
end
end
for a=1,#as do
aj=as[a]for m=1,#aj do
aa=aj[m]_=aa[1]if _>(2^15)then
_=b[8][_-(2^15)]_[1]=aa[2]_[2]=aa[3]elseif _<0 then
while-_>#b[1]do
b[1][#b[1]+1]=I
end
bB.remove(b[1],-_)else
if not b[1][_]then
b[1][_]={}end
_=b[1][_]for g=1,8 do
_[b[19][1][g]]=aa[g+1]end
_[15]=0
_[7]=aK(#b[7],_)_[8]=bs(_[7])end
end
end
as={}for a=1,#b[6]do
aA[a]={}end
for a=1,#b[1]do
_=b[1][a]if _ then
if am then
_[7]=aK(#b[7],_)_[8]=bs(_[7])_[9]=b[8][_[8]][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
if _[4]==1 then
cl=a
end
end
aZ=0
for m,d in bl({1,2,9})do
_[d]=_[d]+_[d+10]aZ=aZ+_[d+10]end
if aZ~=0then
_[7]=aK(#b[7],_)_[8]=bs(_[7])end
_[15]=_[15]+1
_[20]=bg(_,i[1])H=b[16][_[6]]if H~=by then
if _[15]>=H[2]and H[2]~=-1 then
_[6]=H[4]_[15]=0
end
end
aA[_[7]][#aA[_[7]]+1]=a
end
end
am=I
_=b[1][cl]i[1]={_[1],_[2]}i[2]=_[9]+41
i[3]=_[3]ao={}bb(#b[7])av={}o={}ai={}ab={}Z={}az={}bn=O
for a=0,O-1 do
av[a],ab[a],Z[a]=#b[6]+2,N+1,-N
end
a=1
while a<=#ao and bn>0 do
_=b[6][ao[a]]ai[a]={}o[a]={}az[a]=aA[ao[a]]bB.sort(az[a],function(c,w)return b[1][c][20]>b[1][w][20]end)for m=_[2],_[1]+_[2]-1 do
ac=b[5][m]F=b[2][ac[4]]bz,bL=b[4][ac[1]],b[4][ac[2]]aL,bA=sub(bz,i[1]),sub(bL,i[1])bY=aQ(aL)D,aI=bm(bY-i[3]),bm(aQ(bA)-i[3])if u(D)<90 or u(aI)<90 then
af,ah=aP(D,-J,J),aP(aI,-J,J)if u(D)>=90 or u(aI)>=90 then
bK=aU(aL,bA)if u(D)>=90 then
if bK>0 then af=-J else af=J end
else
if bK<0 then ah=-J else ah=J end
end
end
j,l=ag(tan(af)/R*M),ag(tan(ah)/R*M)if j~=l then
n,ap=bg(i[1],bz),bg(i[1],bL)aH=ac[3]+90
bt=aH-bY
ck=n*s.sin(bt/T*pi)aO=(n*cos(bt))if D~=af then
n=aO/cos(aH-(af+i[3]))end
if aI~=ah then
ap=aO/cos(aH-(ah+i[3]))end
n,ap=n*cos(af),ap*cos(ah)g=ac[5]+6
cg=(j>l)if cg and F[g]~=0 then
aw=F[3]&4>0
if aw then
U,V=b[8][b[3][F[6]][6]],b[8][b[3][F[7]][6]]end
ak=b[3][F[g]]c_={ak[3],ak[4],ak[5]}K,bV,bQ=b[8][ak[6]]for h,d in bl(c_)do
al=d>0
an=L
if(al or(h==3 and not(bV and bQ)))and(h==3 or aw)then
bT=I
bG=0
if h<3 then
bT=h==1 and G(U[4],V[4])==0
A,t=U[3-h],V[3-h]an=(A<t)~=(h==2)~=(g==6)and A~=t and U~=V
A,t=r(A,t),G(A,t)if an then
if h==1then
bV=L
else
bQ=L
bG=F[3]&16>0 and G(U[2],V[2])-t or 0
end
end
else
if aw then
A,t=G(U[1],V[1]),r(U[2],V[2])an=U~=V
else
A,t=K[1],K[2]end
end
A,t=A-i[2],t-i[2]bE,bR=A*aV,t*aV
if(an or al)and not bT then
br=ac[6]-ak[1]if F[4]==48 then
br=br-aY
end
cf,cb=bE/n,bR/n
ci,cc=bE/ap,bR/ap
bU=0
ar=I
if al then
_=b[21][d][4]if(ac[4]==bC or bF==F[4])and _>0then
d=_
end
bO=b[21][d][3]p=1
if(h==3 and F[3]&16>0)or(h==1 and F[3]&8==0)then
p=-1
end
end
for g=j,l,-1 do
ca=bM[g]aM=(aH-i[3])-ca
f=M-g
bx=I
if f>=0 and f<=O-1 then
if a<av[f]then
aG=(g-j)/(l-j)E,B=(cf*(1-aG)+ci*aG),(cb*(1-aG)+cc*aG)if u(B+E)-(B-E)<bj then
if al then
if E~=B then
bx=L
bI=aO*tan(aM)z=r(((u(bI)+u(aO))//aC)+1,4)bk=r(bo(aN(z/cos(aM))),16)z=bo(z)be=aN((G(bI-ck,0)-br)/(bO*bk))*bk
bu={f,N-E,N-B,d,be,t-A,K[5],ak[2]+bG,L,bO*z,z,p,not ar,h==3 and aw}if be>bU or(not ar)or g==l then
bU=be-1+bk
ar=L
o[a][#o[a]+1]=bu
end
bZ=bu
end
end
if an then
if h~=2 then
if B<ab[f]then
ai[a][#ai[a]+1]={f,G(B,Z[f]),ab[f],K,2}end
if h==3then X=B else X=E end
if ab[f]>X then ab[f]=X end
end
if h~=1 then
if E>Z[f]then
ai[a][#ai[a]+1]={f,Z[f],r(E,ab[f]),K,1}end
if h==3then X=E else X=B end
if Z[f]<X then Z[f]=X end
end
if(ab[f]<=Z[f])or(h==3 and(not aw)and al)then
av[f]=a
bn=bn-1
end
end
end
end
end
if(not bx)and ar then
ar=I
o[a][#o[a]+1]=bZ
o[a][#o[a]][9]=I
end
end
if#o[a]>0 then
o[a][#o[a]][9]=I
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
function onDraw()aB=bS
local bv,ba,au,cn=aB.drawTriangleF,aB.drawRectF,aB.setColor,aB.drawText
aX=aX+1
if aX<=1 then
if aJ then
e=b[24][b[19][8][ay-3]]P,W=e[1],e[2]v=O/ceil(P*R)bD=v*1
for a=0,ceil(P*R),1 do
j=(P/2-a-1+i[3]/90*P)%P
l=(j%1-1)*v
j=aN(j)*W
for m=0,W-1,1 do
S=e[5+m+j]k=b[20][S]au(k[1],k[2],k[3])ba(a*v+l,m*v,bD,bD)end
end
for a=#o,1,-1 do
for m=1,#o[a]do
d=o[a][m]if d[9]or d[13]then
if d[9]then
Q=o[a][m+1]else
Q=d
end
e=b[21][d[4]]p=d[12]Y=r(p,0)f=d[1]l=Q[1]bw=d[2-Y]ch=Q[2-Y]g=d[3+Y]bq=Q[3+Y]if not Q[9]then l=l+1 end
y=r(d[7]+aE,1)^2.2
cj=p*(d[2]-d[3])*d[10]/d[6]cd=p*(Q[2]-Q[3])*d[10]/Q[6]ae=p>0 and r or G
bf=0
while g*p<bw*p and(bf<e[2]or not d[14])do
bX=ae(g+cj,bw)bd=ae(bq+cd,ch)S=e[6+((Y*d[11]+d[8]//e[3])%e[2])+e[2]*(d[5]%e[1])]k=b[20][S]if k then
au(k[1]*y,k[2]*y,k[3]*y)bv(f,g,f,bX,l,bd)bv(f,g,l,bq,l,bd)end
g=bX
bq=bd
Y=Y+p
bf=bf+d[11]end
end
end
for m,d in bl(ai[a])do
K=d[4]if K[d[5]+2]~=0 then
e=b[22][K[d[5]+2]]f=d[1]y=r(K[5]+aE,1)^2.2
k=b[20][e[4]]au(k[1]*y,k[2]*y,k[3]*y)bS.drawLine(f,-d[3]+N-1,f,-d[2]+N)end
end
for m=1,#az[a]do
_=b[1][az[a][m]]if _[6]~=0 then
aL=sub(_,i[1])n=_[20]if n>1 then
D=bm(aQ(aL)-i[3])n=n*cos(D)if u(D)<90 then
j=M-ag(tan(D)/R*M)aM=ag((T+D+i[3]-_[3])/360*8)H=b[16][_[6]][1]if H~=0 and _[6]~=1 then
e=b[17][u(H)][aM%8+1]if e==0 then
e=b[17][u(H)][1]end
p=e<0 and-1 or 1
e=u(e)if e>0 then
e=b[23][e]P,W=e[1],e[2]z=r(bo(n//aC+1),8)v=M/(R*n)aq=v*aT
E=N+(i[2]-_[9])/n*aV
B=E-e[5]*aq
l=j-p*e[4]*v
v,aq=v*e[3],aq*e[3]y=H>0 and r(b[8][_[8]][5]+aE,1)^2.2 or 1
bh=v*z
bW=bh*aT
if _[4]and b[15][_[4]][23]&8>0 then
for g=0,P-1,z do
j=l+g*v*p
if a<=av[aP(ag(j),0,O-1)]then
for h=0,W-1,z do
S=e[7+h+g*W]if S~=0 then
b_=b_%50+1
au(0,0,0,r(75*b[13][2][b_],255))ba(j,B+h*aq,bh,bW)end
end
end
end
else
for g=0,P-1,z do
j=l+g*v*p
if a<=av[aP(ag(j),0,O-1)]then
for h=0,W-1,z do
S=e[7+h+g*W]if S~=0 then
k=b[20][S]au(k[1]*y,k[2]*y,k[3]*y)ba(j,B+h*aq,bh,bW)end
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
