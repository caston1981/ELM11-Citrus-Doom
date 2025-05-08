cq=""

P=180
bD=screen
bj=ipairs
bQ=table
by=input
w=math
E=w.max
r=w.min
s=w.abs
aE=w.floor
ceil=w.ceil
sqrt=w.sqrt
C=by.getNumber
aT=by.getBool
pi=w.pi
I=false
L=true
bp=string
function aR(c,u)return c[1]*u[2]-c[2]*u[1]end
function sub(c,u)return{(c[1]-u[1]),(c[2]-u[2])}end
function bs(c)return((c+P)%360)-P end
function cos(c)return w.cos(c/P*pi)end
function tan(c)return w.tan(c/P*pi)end
function co(c)return w.atan(c)*P/pi end
function aI(c)return w.atan(c[2],c[1])*P/pi end
function aA(c,u,_)return r(E(u,c),_)end
function ah(c)return aE(c+.5)end
function bg(c,u)return sqrt(((c[1]-u[1])^2)+((c[2]-u[2])^2))end
function ba(c)c=c-1
c=c|(c>>1)c=c|(c>>2)c=c|(c>>4)return c+1
end
b={}bl=1
ao=3
aP=I
ax=L
i={{0,0},0,0}R=288
H=R//2
bd=128
T=bd//2
aJ={}aL=400
bu=100
cn=0
al={}aG=32768
bS=3002
bc=0
aF=0
b_=0
bq=1.2
J=52
Q=tan(J)be=T*bq*R/bd/Q
ad=1
bF={}for a=-H,H do bF[a]=aI({1,a/H*Q})end
function bt(a)if a<aG then
local q,bm=b[7][a]bm=0<aR({q[3],q[4]},sub(i[1],q))and 8 or 7
bt(q[bm])bt(q[15-bm])else
au[#au+1]=a-aG
end
end
function aK(a,c)if a<aG then
q=b[7][a]return aK(q[0<aR({q[3],q[4]},sub(c,q))and 8 or 7],c)else
return a-aG
end
end
function br(c)q=b[5][b[6][c][2]]return b[3][b[2][q[4]][q[5]+6]][6]end
function onTick()bh=0
for p=1,3 do
if aT(9)and(not aP)or not b[21]then
bo=property.getText(bl..cq)if bo~=cq then
a=1
z=cq
_=bp.sub(bo,a,a)while _~=cqdo
bz=bp.byte(_)if bz>64 or _==cqthen
z=(z..(bz-65))+0
if ad==1then
bx=z
if b[z]==cp then
b[z]={}end
ad=2
elseif ad==2then
bZ=z
ap=0
ad=3
elseif ad==3then
bn=z
ad=4
else
if ap==0then
ap=bZ
bn=bn-1
ae={}b[bx][#b[bx]+1]=ae
end
ae[#ae+1]=z
ap=ap-1
if E(ap,bn)==0then
ad=1
end
end
z=cq
else
z=z.._
end
a=a+1
_=bp.sub(bo,a,a)end
bl=bl+1
else
aP=L
end
end
end
if aP then
if C(9)>0 then
ax=L
ao=C(9)end
if bu>0 and not ax then
ai={}al[#al+1]=ai
ay=5
_=C(ay)while _~=0 do
Y={}ai[#ai+1]=Y
for a=0,8 do
Y[a+1]=C(ay+a)end
ay=ay+9
_=C(ay)end
end
if aT(1)then
bU=0
aX=C(1)bu=C(3)b_=b_+1
if ax then
for a=1,10 do
b[a]=b[a+10*ao]end
for a=1,#b[8]do
b[8][a][5]=b[8][a][5]/255
end
ao=ao+1
end
if C(2)>0 then
_=b[2][C(2)]if _ then
if _[4]>3004 then
aL=E(aL+3*(_[4]-3006),1)elseif _[4]>3000 then
bS=_[4]end
bU=C(2)end
end
if aT(3)and aX~=1 and aX~=3 then
aC=.1
aF=aX==5 and 5 or 3
else
aF=aF-1
if aF<1then
aC=0
end
end
for a=1,#al do
ai=al[a]for p=1,#ai do
Y=ai[p]_=Y[1]if _>(2^15)then
_=b[8][_-(2^15)]_[1]=Y[2]_[2]=Y[3]elseif _<0 then
while-_>#b[1]do
b[1][#b[1]+1]=I
end
bQ.remove(b[1],-_)else
if not b[1][_]then
b[1][_]={}end
_=b[1][_]for g=1,8 do
_[b[19][1][g]]=Y[g+1]end
_[15]=0
_[7]=aK(#b[7],_)_[8]=br(_[7])end
end
end
al={}for a=1,#b[6]do
aJ[a]={}end
for a=1,#b[1]do
_=b[1][a]if _ then
if ax then
_[7]=aK(#b[7],_)_[8]=br(_[7])_[9]=b[8][_[8]][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
if _[4]==1 then
cl=a
end
end
bf=0
for p,d in bj({1,2,9})do
_[d]=_[d]+_[d+10]bf=bf+_[d+10]end
if bf~=0then
_[7]=aK(#b[7],_)_[8]=br(_[7])end
_[15]=_[15]+1
_[20]=bg(_,i[1])M=b[16][_[6]]if M~=nil then
if _[15]>=M[2]and M[2]~=-1 then
_[6]=M[4]_[15]=0
end
end
aJ[_[7]][#aJ[_[7]]+1]=a
end
end
ax=I
_=b[1][cl]i[1]={_[1],_[2]}i[2]=_[9]+41
i[3]=_[3]au={}bt(#b[7])an={}o={}ak={}V={}Z={}az={}bb=R
for a=0,R-1 do
an[a],V[a],Z[a]=#b[6]+2,T+1,-T
end
a=1
while a<=#au and bb>0 do
_=b[6][au[a]]ak[a]={}o[a]={}az[a]=aJ[au[a]]bQ.sort(az[a],function(c,u)return b[1][c][20]>b[1][u][20]end)for p=_[2],_[1]+_[2]-1 do
ac=b[5][p]F=b[2][ac[4]]bT,bA=b[4][ac[1]],b[4][ac[2]]aM,bw=sub(bT,i[1]),sub(bA,i[1])bI=aI(aM)D,aB=bs(bI-i[3]),bs(aI(bw)-i[3])if s(D)<90 or s(aB)<90 then
aj,af=aA(D,-J,J),aA(aB,-J,J)if s(D)>=90 or s(aB)>=90 then
bW=aR(aM,bw)if s(D)>=90 then
if bW>0 then aj=-J else aj=J end
else
if bW<0 then af=-J else af=J end
end
end
j,l=ah(tan(aj)/Q*H),ah(tan(af)/Q*H)if j~=l then
n,as=bg(i[1],bT),bg(i[1],bA)aO=ac[3]+90
bR=aO-bI
ca=n*w.sin(bR/P*pi)aN=(n*cos(bR))if D~=aj then
n=aN/cos(aO-(aj+i[3]))end
if aB~=af then
as=aN/cos(aO-(af+i[3]))end
n,as=n*cos(aj),as*cos(af)g=ac[5]+6
cb=(j>l)if cb and F[g]~=0 then
am=F[3]&4>0
if am then
aa,W=b[8][b[3][F[6]][6]],b[8][b[3][F[7]][6]]end
ag=b[3][F[g]]ck={ag[3],ag[4],ag[5]}K,bM,bC=b[8][ag[6]]for h,d in bj(ck)do
av=d>0
at=L
if(av or(h==3 and not(bM and bC)))and(h==3 or am)then
bv=I
bG=0
if h<3 then
bv=h==1 and E(aa[4],W[4])==0
A,v=aa[3-h],W[3-h]at=(A<v)~=(h==2)~=(g==6)and A~=v and aa~=W
A,v=r(A,v),E(A,v)if at then
if h==1then
bM=L
else
bC=L
bG=F[3]&16>0 and E(aa[2],W[2])-v or 0
end
end
else
if am then
A,v=E(aa[1],W[1]),r(aa[2],W[2])at=aa~=W
else
A,v=K[1],K[2]end
end
A,v=A-i[2],v-i[2]bJ,bY=A*be,v*be
if(at or av)and not bv then
bk=ac[6]-ag[1]if F[4]==48 then
bk=bk-b_
end
ci,cc=bJ/n,bY/n
cd,ch=bJ/as,bY/as
bK=0
ar=I
if av then
_=b[21][d][4]if(ac[4]==bU or bS==F[4])and _>0then
d=_
end
bO=b[21][d][3]m=1
if(h==3 and F[3]&16>0)or(h==1 and F[3]&8==0)then
m=-1
end
end
for g=j,l,-1 do
c_=bF[g]aQ=(aO-i[3])-c_
f=H-g
bP=I
if f>=0 and f<=R-1 then
if a<an[f]then
aH=(g-j)/(l-j)G,B=(ci*(1-aH)+cd*aH),(cc*(1-aH)+ch*aH)if s(B+G)-(B-G)<bd then
if av then
if G~=B then
bP=L
bN=aN*tan(aQ)y=r(((s(bN)+s(aN))//aL)+1,4)bi=r(ba(aE(y/cos(aQ))),16)y=ba(y)aZ=aE((E(bN-ca,0)-bk)/(bO*bi))*bi
bE={f,T-G,T-B,d,aZ,v-A,K[5],ag[2]+bG,L,bO*y,y,m,not ar,h==3 and am}if aZ>bK or(not ar)or g==l then
bK=aZ-1+bi
ar=L
o[a][#o[a]+1]=bE
end
ce=bE
end
end
if at then
if h~=2 then
if B<V[f]then
ak[a][#ak[a]+1]={f,E(B,Z[f]),V[f],K,2}end
if h==3then X=B else X=G end
if V[f]>X then V[f]=X end
end
if h~=1 then
if G>Z[f]then
ak[a][#ak[a]+1]={f,Z[f],r(G,V[f]),K,1}end
if h==3then X=G else X=B end
if Z[f]<X then Z[f]=X end
end
if(V[f]<=Z[f])or(h==3 and(not am)and av)then
an[f]=a
bb=bb-1
end
end
end
end
end
if(not bP)and ar then
ar=I
o[a][#o[a]+1]=ce
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
function onDraw()aD=bD
local bB,aU,aq,cm=aD.drawTriangleF,aD.drawRectF,aD.setColor,aD.drawText
bh=bh+1
if bh<=1 then
if aP then
e=b[24][b[19][8][ao-3]]N,ab=e[1],e[2]t=R/ceil(N*Q)bH=t*1
for a=0,ceil(N*Q),1 do
j=(N/2-a-1+i[3]/90*N)%N
l=(j%1-1)*t
j=aE(j)*ab
for p=0,ab-1,1 do
S=e[5+p+j]k=b[20][S]aq(k[1],k[2],k[3])aU(a*t+l,p*t,bH,bH)end
end
for a=#o,1,-1 do
for p=1,#o[a]do
d=o[a][p]if d[9]or d[13]then
if d[9]then
O=o[a][p+1]else
O=d
end
e=b[21][d[4]]m=d[12]U=r(m,0)f=d[1]l=O[1]bL=d[2-U]cj=O[2-U]g=d[3+U]aS=O[3+U]if not O[9]then l=l+1 end
x=r(d[7]+aC,1)^2.2
cg=m*(d[2]-d[3])*d[10]/d[6]cf=m*(O[2]-O[3])*d[10]/O[6]ae=m>0 and r or E
aW=0
while g*m<bL*m and(aW<e[2]or not d[14])do
bV=ae(g+cg,bL)aV=ae(aS+cf,cj)S=e[6+((U*d[11]+d[8]//e[3])%e[2])+e[2]*(d[5]%e[1])]k=b[20][S]if k then
aq(k[1]*x,k[2]*x,k[3]*x)bB(f,g,f,bV,l,aV)bB(f,g,l,aS,l,aV)end
g=bV
aS=aV
U=U+m
aW=aW+d[11]end
end
end
for p,d in bj(ak[a])do
K=d[4]if K[d[5]+2]~=0 then
e=b[22][K[d[5]+2]]f=d[1]x=r(K[5]+aC,1)^2.2
k=b[20][e[4]]aq(k[1]*x,k[2]*x,k[3]*x)bD.drawLine(f,-d[3]+T-1,f,-d[2]+T)end
end
for p=1,#az[a]do
_=b[1][az[a][p]]if _[6]~=0 then
aM=sub(_,i[1])n=_[20]if n>1 then
D=bs(aI(aM)-i[3])n=n*cos(D)if s(D)<90 then
j=H-ah(tan(D)/Q*H)aQ=ah((P+D+i[3]-_[3])/360*8)M=b[16][_[6]][1]if M~=0 and _[6]~=1 then
e=b[17][s(M)][aQ%8+1]if e==0 then
e=b[17][s(M)][1]end
m=e<0 and-1 or 1
e=s(e)if e>0 then
e=b[23][e]N,ab=e[1],e[2]y=r(ba(n//aL+1),8)t=H/(Q*n)aw=t*bq
G=T+(i[2]-_[9])/n*be
B=G-e[5]*aw
l=j-m*e[4]*t
t,aw=t*e[3],aw*e[3]x=M>0 and r(b[8][_[8]][5]+aC,1)^2.2 or 1
aY=t*y
bX=aY*bq
if _[4]and b[15][_[4]][23]&8>0 then
for g=0,N-1,y do
j=l+g*t*m
if a<=an[aA(ah(j),0,R-1)]then
for h=0,ab-1,y do
S=e[7+h+g*ab]if S~=0 then
bc=bc%50+1
aq(0,0,0,r(75*b[13][2][bc],255))aU(j,B+h*aw,aY,bX)end
end
end
end
else
for g=0,N-1,y do
j=l+g*t*m
if a<=an[aA(ah(j),0,R-1)]then
for h=0,ab-1,y do
S=e[7+h+g*ab]if S~=0 then
k=b[20][S]aq(k[1]*x,k[2]*x,k[3]*x)aU(j,B+h*aw,aY,bX)end
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
