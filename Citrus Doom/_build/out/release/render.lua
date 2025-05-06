cp=""

O=180
bH=screen
bi=ipairs
bU=table
bX=nil
bY=input
bz=string.sub
x=math
D=x.max
q=x.min
v=x.abs
aL=x.floor
ceil=x.ceil
sqrt=x.sqrt
G=bY.getNumber
bb=bY.getBool
pi=x.pi
I=false
J=true
function bc(c,t)return c[1]*t[2]-c[2]*t[1]end
function sub(c,t)return{(c[1]-t[1]),(c[2]-t[2])}end
function aV(c)return((c+O)%360)-O end
function cos(c)return x.cos(c/O*pi)end
function tan(c)return x.tan(c/O*pi)end
function cn(c)return x.atan(c)*O/pi end
function aE(c)return x.atan(c[2],c[1])*O/pi end
function aJ(c,t,_)return q(D(t,c),_)end
function ah(c)return aL(c+.5)end
function aY(c,t)return sqrt(((c[1]-t[1])^2)+((c[2]-t[2])^2))end
function bj(c)c=c-1
c=c|(c>>1)c=c|(c>>2)c=c|(c>>4)return c+1
end
b={}bp=1
aw=3
aA=I
ar=J
i={{0,0},0,0}Q=288
M=Q//2
aW=128
N=aW//2
aD={}aM=400
bu=100
co=0
ao={}az=32768
bP=3002
bm=0
aF=0
bd=0
bs=1.2
K=52
P=tan(K)aS=N*bs*Q/aW/P
Y=1
bJ={}for a=-M,M do bJ[a]=aE({1,a/M*P})end
function bh(a)if a<az then
local r,bq=b[7][a]bq=0<bc({r[3],r[4]},sub(i[1],r))and 8 or 7
bh(r[bq])bh(r[15-bq])else
av[#av+1]=a-az
end
end
function aO(a,c)if a<az then
r=b[7][a]return aO(r[0<bc({r[3],r[4]},sub(c,r))and 8 or 7],c)else
return a-az
end
end
function bn(c)r=b[5][b[6][c][2]]return b[3][b[2][r[4]][r[5]+6]][6]end
function onTick()br=0
for p=1,3 do
if bb(9)and(not aA)or not b[21]then
be=property.getText(bp..cp)if be~=cp then
a=1
u=cp
_=bz(be,a,a)while _~=cpor u~=cpdo
if _==","or _==cpthen
u=u+0
if Y==1 then
bE=u
if b[u]==bX then
b[u]={}end
Y=2
elseif Y==2 then
ce=u
at=0
Y=3
elseif Y==3 then
bo=u
Y=4
else
if at==0 then
at=ce
bo=bo-1
af={}b[bE][#b[bE]+1]=af
end
af[#af+1]=u
at=at-1
if D(at,bo)==0 then
Y=1
end
end
u=cp
else
u=u.._
end
a=a+1
_=bz(be,a,a)end
bp=bp+1
else
aA=J
end
end
end
if aA then
if G(9)>0 then
ar=J
aw=G(9)end
if bu>0 and not ar then
ak={}ao[#ao+1]=ak
ay=5
_=G(ay)while _~=0 do
ad={}ak[#ak+1]=ad
for a=0,8 do
ad[a+1]=G(ay+a)end
ay=ay+9
_=G(ay)end
end
if bb(1)then
bF=0
ba=G(1)bu=G(3)bd=bd+1
if ar then
for a=1,10 do
b[a]=b[a+10*aw]end
aw=aw+1
end
if G(2)>0 then
_=b[2][G(2)]if _ then
if _[4]>3004 then
aM=D(aM+3*(_[4]-3006),1)elseif _[4]>3000 then
bP=_[4]end
bF=G(2)end
end
if bb(3)and ba~=1 and ba~=3 then
aI=.1
aF=ba==5 and 5 or 3
else
aF=aF-1
if aF<1then
aI=0
end
end
for a=1,#ao do
ak=ao[a]for p=1,#ak do
ad=ak[p]_=ad[1]if _>(2^15)then
_=b[8][_-(2^15)]_[1]=ad[2]_[2]=ad[3]elseif _<0 then
while-_>#b[1]do
b[1][#b[1]+1]=I
end
bU.remove(b[1],-_)else
if not b[1][_]then
b[1][_]={}end
_=b[1][_]for g=1,8 do
_[b[19][1][g]]=ad[g+1]end
_[15]=0
_[7]=aO(#b[7],_)_[8]=bn(_[7])end
end
end
ao={}for a=1,#b[6]do
aD[a]={}end
for a=1,#b[1]do
_=b[1][a]if _ then
if ar then
_[7]=aO(#b[7],_)_[8]=bn(_[7])_[9]=b[8][_[8]][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
if _[4]==1 then
c_=a
end
end
aR=0
for p,d in bi({1,2,9})do
_[d]=_[d]+_[d+10]aR=aR+_[d+10]end
if aR~=0then
_[7]=aO(#b[7],_)_[8]=bn(_[7])end
_[15]=_[15]+1
_[20]=aY(_,i[1])H=b[16][_[6]]if H~=bX then
if _[15]>=H[2]and H[2]~=-1 then
_[6]=H[4]_[15]=0
end
end
aD[_[7]][#aD[_[7]]+1]=a
end
end
ar=I
_=b[1][c_]i[1]={_[1],_[2]}i[2]=_[9]+41
i[3]=_[3]av={}bh(#b[7])ax={}o={}ag={}W={}ac={}aQ={}bg=Q
for a=0,Q-1 do
ax[a],W[a],ac[a]=#b[6]+2,N+1,-N
end
a=1
while a<=#av and bg>0 do
_=b[6][av[a]]ag[a]={}o[a]={}aQ[a]=aD[av[a]]bU.sort(aQ[a],function(c,t)return b[1][c][20]>b[1][t][20]end)for p=_[2],_[1]+_[2]-1 do
Z=b[5][p]E=b[2][Z[4]]bO,bt=b[4][Z[1]],b[4][Z[2]]aP,bQ=sub(bO,i[1]),sub(bt,i[1])bC=aE(aP)F,aC=aV(bC-i[3]),aV(aE(bQ)-i[3])if v(F)<90 or v(aC)<90 then
ai,ae=aJ(F,-K,K),aJ(aC,-K,K)if v(F)>=90 or v(aC)>=90 then
bV=bc(aP,bQ)if v(F)>=90 then
if bV>0 then ai=-K else ai=K end
else
if bV<0 then ae=-K else ae=K end
end
end
j,l=ah(tan(ai)/P*M),ah(tan(ae)/P*M)if j~=l then
m,au=aY(i[1],bO),aY(i[1],bt)aN=Z[3]+90
bD=aN-bC
cj=m*x.sin(bD/O*pi)aB=(m*cos(bD))if F~=ai then
m=aB/cos(aN-(ai+i[3]))end
if aC~=ae then
au=aB/cos(aN-(ae+i[3]))end
m,au=m*cos(ai),au*cos(ae)g=Z[5]+6
ci=(j>l)if ci and E[g]~=0 then
as=E[3]&4>0
if as then
U,ab=b[8][b[3][E[6]][6]],b[8][b[3][E[7]][6]]end
aj=b[3][E[g]]cb={aj[3],aj[4],aj[5]}L,bv,bI=b[8][aj[6]]for h,d in bi(cb)do
ap=d>0
al=J
if(ap or(h==3 and not(bv and bI)))and(h==3 or as)then
bw=I
bG=0
if h<3 then
bw=h==1 and D(U[4],ab[4])==0
A,s=U[3-h],ab[3-h]al=(A<s)~=(h==2)~=(g==6)and A~=s and U~=ab
A,s=q(A,s),D(A,s)if al then
if h==1then
bv=J
else
bI=J
bG=E[3]&16>0 and D(U[2],ab[2])-s or 0
end
end
else
if as then
A,s=D(U[1],ab[1]),q(U[2],ab[2])al=U~=ab
else
A,s=L[1],L[2]end
end
A,s=A-i[2],s-i[2]bx,bL=A*aS,s*aS
if(al or ap)and not bw then
b_=Z[6]-aj[1]if E[4]==48 then
b_=b_-bd
end
ca,cl=bx/m,bL/m
cg,ck=bx/au,bL/au
bN=0
am=I
if ap then
_=b[21][d][4]if(Z[4]==bF or bP==E[4])and _>0then
d=_
end
bT=b[21][d][3]n=1
if(h==3 and E[3]&16>0)or(h==1 and E[3]&8==0)then
n=-1
end
end
for g=j,l,-1 do
ch=bJ[g]aK=(aN-i[3])-ch
f=M-g
bS=I
if f>=0 and f<=Q-1 then
if a<ax[f]then
aH=(g-j)/(l-j)C,B=(ca*(1-aH)+cg*aH),(cl*(1-aH)+ck*aH)if v(B+C)-(B-C)<aW then
if ap then
if C~=B then
bS=J
bM=aB*tan(aK)z=q(((v(bM)+v(aB))//aM)+1,4)aU=q(bj(aL(z/cos(aK))),16)z=bj(z)bf=aL((D(bM-cj,0)-b_)/(bT*aU))*aU
bB={f,N-C,N-B,d,bf,s-A,L[5],aj[2]+bG,J,bT*z,z,n,not am,h==3 and as}if bf>bN or(not am)or g==l then
bN=bf-1+aU
am=J
o[a][#o[a]+1]=bB
end
cd=bB
end
end
if al then
if h~=2 then
if B<W[f]then
ag[a][#ag[a]+1]={f,D(B,ac[f]),W[f],L,2}end
if h==3then V=B else V=C end
if W[f]>V then W[f]=V end
end
if h~=1 then
if C>ac[f]then
ag[a][#ag[a]+1]={f,ac[f],q(C,W[f]),L,1}end
if h==3then V=C else V=B end
if ac[f]<V then ac[f]=V end
end
if(W[f]<=ac[f])or(h==3 and(not as)and ap)then
ax[f]=a
bg=bg-1
end
end
end
end
end
if(not bS)and am then
am=I
o[a][#o[a]+1]=cd
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
function onDraw()aG=bH
local bA,aT,an,cm=aG.drawTriangleF,aG.drawRectF,aG.setColor,aG.drawText
br=br+1
if br<=1 then
if aA then
e=b[24][b[19][8][aw-3]]S,X=e[1],e[2]w=Q/ceil(S*P)bK=w*1
for a=0,ceil(S*P),1 do
j=(S/2-a-1+i[3]/90*S)%S
l=(j%1-1)*w
j=aL(j)*X
for p=0,X-1,1 do
T=e[5+p+j]k=b[20][T]an(k[1],k[2],k[3])aT(a*w+l,p*w,bK,bK)end
end
for a=#o,1,-1 do
for p=1,#o[a]do
d=o[a][p]if d[9]or d[13]then
if d[9]then
R=o[a][p+1]else
R=d
end
e=b[21][d[4]]n=d[12]aa=q(n,0)f=d[1]l=R[1]bW=d[2-aa]cf=R[2-aa]g=d[3+aa]aZ=R[3+aa]if not R[9]then l=l+1 end
y=q(d[7]+aI,1)^2.2
cc=n*(d[2]-d[3])*d[10]/d[6]bZ=n*(R[2]-R[3])*d[10]/R[6]af=n>0 and q or D
aX=0
while g*n<bW*n and(aX<e[2]or not d[14])do
bR=af(g+cc,bW)bl=af(aZ+bZ,cf)T=e[6+((aa*d[11]+d[8]//e[3])%e[2])+e[2]*(d[5]%e[1])]k=b[20][T]if k then
an(k[1]*y,k[2]*y,k[3]*y)bA(f,g,f,bR,l,bl)bA(f,g,l,aZ,l,bl)end
g=bR
aZ=bl
aa=aa+n
aX=aX+d[11]end
end
end
for p,d in bi(ag[a])do
L=d[4]if L[d[5]+2]~=0 then
e=b[22][L[d[5]+2]]f=d[1]y=q(L[5]+aI,1)^2.2
k=b[20][e[4]]an(k[1]*y,k[2]*y,k[3]*y)bH.drawLine(f,-d[3]+N-1,f,-d[2]+N)end
end
for p=1,#aQ[a]do
_=b[1][aQ[a][p]]if _[6]~=0 then
aP=sub(_,i[1])m=_[20]if m>1 then
F=aV(aE(aP)-i[3])m=m*cos(F)if v(F)<90 then
j=M-ah(tan(F)/P*M)aK=ah((O+F+i[3]-_[3])/360*8)H=b[16][_[6]][1]if H~=0 and _[6]~=1 then
e=b[17][v(H)][aK%8+1]if e==0 then
e=b[17][v(H)][1]end
n=e<0 and-1 or 1
e=v(e)if e>0 then
e=b[23][e]S,X=e[1],e[2]z=q(bj(m//aM+1),8)w=M/(P*m)aq=w*bs
C=N+(i[2]-_[9])/m*aS
B=C-e[5]*aq
l=j-n*e[4]*w
w,aq=w*e[3],aq*e[3]y=H>0 and q(b[8][_[8]][5]+aI,1)^2.2 or 1
bk=w*z
by=bk*bs
if _[4]and b[15][_[4]][23]&8>0 then
for g=0,S-1,z do
j=l+g*w*n
if a<=ax[aJ(ah(j),0,Q-1)]then
for h=0,X-1,z do
T=e[7+h+g*X]if T~=0 then
bm=bm%50+1
an(0,0,0,q(75*b[13][2][bm],255))aT(j,B+h*aq,bk,by)end
end
end
end
else
for g=0,S-1,z do
j=l+g*w*n
if a<=ax[aJ(ah(j),0,Q-1)]then
for h=0,X-1,z do
T=e[7+h+g*X]if T~=0 then
k=b[20][T]an(k[1]*y,k[2]*y,k[3]*y)aT(j,B+h*aq,bk,by)end
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
