
bI=screen
aP=ipairs
bS=table
bV=input
v=math
D=v.max
w=v.min
z=v.abs
ah=v.floor
ceil=v.ceil
sqrt=v.sqrt
F=bV.getNumber
bb=bV.getBool
pi=v.pi/180
L=false
Q=true
bk=string
function bg(b,m)return b[1]*m[2]-b[2]*m[1]end
function sub(b,m)return{(b[1]-m[1]),(b[2]-m[2])}end
function bm(b)return((b+180)%360)-180 end
function sin(b)return v.sin(b*pi)end
function cos(b)return v.cos(b*pi)end
function tan(b)return v.tan(b*pi)end
function cR(b)return v.atan(b)/pi end
function aG(b)return v.atan(b[2],b[1])/pi end
function bA(b,m,_)return w(D(m,b),_)end
function ar(b)return ah(b+.5)end
function aQ(b,m)return sqrt(((b[1]-m[1])^2)+((b[2]-m[2])^2))end
function bR(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
function aS(b)q=w(b/255+bK,1)^2.2 end
c={}br=1
ay=3
aJ=L
ak=Q
g={{0,0},0,0}O=288
y=O//2
aj=128
s=aj//2
aH={}aN=400
cq=200
bN=100
cS=0
av={}aK=2^15
co=3002
bj=0
aY=0
aw=0
bw=1.2
K=52
N=tan(K)aO=s*bw*O/aj/N
W=1
bE={}for a=-y,y do bE[a]=aG({1,a/y*N})end
function bx(a)if a<aK then
local u,bi=c[7][a]bi=0<bg({u[3],u[4]},sub(g[1],u))and 8 or 7
bx(u[bi])bx(u[15-bi])else
am[#am+1]=a-aK
end
end
function aW(a,b)if a<aK then
u=c[7][a]return aW(u[0<bg({u[3],u[4]},sub(b,u))and 8 or 7],b)else
return a-aK
end
end
function bv(b)u=c[5][c[6][b][2]]return an[c[3][c[2][u[4]][u[5]+6]][6]]end
function onTick()bz=0
for n=1,3 do
if bb(9)and(not aJ)or not c[21]then
bl=property.getText(br)a=1
A=""
_=bk.sub(bl,a,a)while _~=""do
bU=bk.byte(_)if bU>64 then
A=(A..bU-65)+0
if W==1 then
ca=A
c[A]=c[A]or{}elseif W==2 then
ct=A
aC=0
elseif W==3 then
bs=A
else
if aC==0 then
aC=ct
bs=bs-1
bh={}c[ca][#c[ca]+1]=bh
end
bh[#bh+1]=A
aC=aC-1
W=D(aC,bs)>0 and W-1 or 0
end
W=W+1
A=""
else
A=A.._
end
a=a+1
_=bk.sub(bl,a,a)end
br=br+1
aJ=bl==""
end
end
if aJ then
if F(9)>0 then
ak=Q
ay=F(9)end
if bN>0 and not ak then
af={}av[#av+1]=af
aB=5
_=F(aB)while _~=0 do
ad={}af[#af+1]=ad
for a=0,8 do
ad[a+1]=F(aB+a)end
aB=aB+9
_=F(aB)end
end
if bb(1)then
bH=0
bp=F(1)bN=F(3)aw=aw+1
ck=aw//10
if ak then
for a=1,10 do
c[a]=c[a+10*ay]end
l=c[1]bW={l[1][1],l[1][2]}an=c[8]ay=ay+1
end
if F(2)>0 then
_=c[2][F(2)]if _ then
b=_[4]if b>0 then
if b==3008 then
aX=_[5]>0 and _[5]elseif b>3004 then
aN=D(aN+3*(_[4]-3006),1)cq=aN/2
elseif b>3000 then
co=_[4]end
bH=F(2)if b<3000 and c[9][_[5]][7]==0 then
_[8]=1
end
end
end
end
if bb(3)and bp~=1 and bp~=3 then
bK=.1
aY=bp==5 and 5 or 3
else
aY=aY-1
if aY<1 then
bK=0
end
end
for a=1,#av do
af=av[a]for n=1,#af do
ad=af[n]_=ad[1]if _>(2^15)then
_=an[_-(2^15)]for h=1,6 do
_[h]=ad[h+1]end
elseif _<0 then
while-_>#l do
l[#l+1]=L
end
bS.remove(l,-_)else
if not l[_]then
l[_]={}end
_=l[_]for h=1,8 do
_[c[19][1][h]]=ad[h+1]end
_[15]=0
_[7]=aW(#c[7],_)_[8]=bv(_[7])end
end
end
av={}for a=1,#c[6]do
aH[a]={}end
for a=1,#l do
_=l[a]if ak then
_[7]=aW(#c[7],_)_[8]=bv(_[7])_[9]=_[8][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
end
if _ and a>1 then
by=0
for n,d in aP({1,2,9})do
_[d]=_[d]+_[d+10]by=by+_[d+10]end
if by~=0 then
_[7]=aW(#c[7],_)_[8]=bv(_[7])end
_[15]=_[15]+1
_[20]=aQ(_,g[1])M=c[16][_[6]]if M~=nil then
if M[5]>0 then
_[9]=_[8][1]end
if _[15]>=M[2]and M[2]~=-1 then
_[6]=M[4]_[15]=0
end
end
aH[_[7]][#aH[_[7]]+1]=a
end
end
ak=L
_=l[1]g[1]={_[1],_[2]}g[3]=_[3]cI=w(aQ(g[1],bW)^2/4,16)bW={_[1],_[2]}g[2]=_[9]+41+cI*sin(aw*20)/4
am={}bx(#c[7])aE={}p={}aF={}aM={}V={}S={}aL={}be=O
for a=0,O-1 do
aE[a],V[a],S[a]=#c[6]+2,s+1,-s
end
a=1
while a<=#am and be>0 do
_=c[6][am[a]]aF[a]={}aM[a]={}p[a]={}aL[a]=aH[am[a]]bS.sort(aL[a],function(b,m)return l[b][20]>l[m][20]end)for n=_[2],_[1]+_[2]-1 do
aa=c[5][n]B=c[2][aa[4]]cf,cc=c[4][aa[1]],c[4][aa[2]]aT,bC=sub(cf,g[1]),sub(cc,g[1])bM=aG(aT)G,b_=bm(bM-g[3]),bm(aG(bC)-g[3])if z(G)<90 or z(b_)<90 then
ag,ab=bA(G,-K,K),bA(b_,-K,K)if z(G)>=90 or z(b_)>=90 then
cr=bg(aT,bC)if z(G)>=90 then
if cr>0 then ag=-K else ag=K end
else
if cr<0 then ab=-K else ab=K end
end
end
k,o=ar(tan(ag)/N*y),ar(tan(ab)/N*y)if k~=o then
r,as=aQ(g[1],cf),aQ(g[1],cc)aZ=aa[3]+90
bD=aZ-bM
cB=r*sin(bD)aR=(r*cos(bD))if G~=ag then
r=aR/cos(aZ-(ag+g[3]))end
if b_~=ab then
as=aR/cos(aZ-(ab+g[3]))end
r,as=r*cos(ag),as*cos(ab)h=aa[5]+6
cQ=(k>o)if cQ and B[h]~=0 then
aD=B[3]&4>0
if aD then
Y,U=an[c[3][B[6]][6]],an[c[3][B[7]][6]]end
ai=c[3][B[h]]cE={ai[3],ai[4],ai[5]}H,bP,cs=an[ai[6]]for j,d in aP(cE)do
az=d>0
at=Q
if(az or(j==3 and not(bP and cs)))and(j==3 or aD)then
cn=L
cj=0
if j<3 then
cn=j==1 and D(Y[4],U[4])==0
C,x=Y[3-j],U[3-j]at=(C<x)~=(j==2)~=(h==6)and C~=x and Y~=U
C,x=w(C,x),D(C,x)if at then
if j==1 then
bP=Q
else
cs=Q
cj=B[3]&16>0 and D(Y[2],U[2])-x or 0
end
end
else
if aD then
C,x=D(Y[1],U[1]),w(Y[2],U[2])at=Y~=U
else
C,x=H[1],H[2]end
end
C,x=C-g[2],x-g[2]bF,bL=C*aO,x*aO
if(at or az)and not cn then
bd=aa[6]-ai[1]if B[4]==48 then
bd=bd-aw
end
cP,cO=bF/r,bL/r
cH,cv=bF/as,bL/as
bY=0
ax=L
if az then
_=c[21][d][4]if(aa[4]==bH or co==B[4]or B[8])and _>0 then
d=_
end
al=c[21][d][3]t=1
if(j==3 and B[3]&16>0)or(j==1 and B[3]&8==0)then
t=-1
end
end
for h=k,o,-1 do
cJ=bE[h]bn=(aZ-g[3])-cJ
f=y-h
ci=L
if f>=0 and f<=O-1 then
if a<aE[f]then
aV=(h-k)/(o-k)J,I=(cP*(1-aV)+cH*aV),(cO*(1-aV)+cv*aV)if z(I+J)-(I-J)<aj then
if az then
if J~=I then
ci=Q
ch=aR*tan(bn)aq=bR(w(((z(ch)+z(aR))//cq)+1,16))cl=ah((D(ch-cB,0)-bd)/(al*aq))cm=cl*aq
bJ={f,s-J,s-I,d,cl,x-C,H[5],ai[2]+cj,Q,al*aq,aq,t,not ax,j==3 and aD}if cm>bY or(not ax)or h==o then
bY=cm-1+aq
ax=Q
p[a][#p[a]+1]=bJ
end
cz=bJ
end
end
if at then
if j~=2 then
if I<V[f]then
aM[a][#aM[a]+1]={f,D(I,S[f]),V[f],H}end
if j==3 then T=I else T=J end
if V[f]>T then V[f]=T end
end
if j~=1 then
if J>S[f]then
aF[a][#aF[a]+1]={f,S[f],w(J,V[f]),H}end
if j==3 then T=J else T=I end
if S[f]<T then S[f]=T end
end
if(V[f]<=S[f])or(j==3 and(not aD)and az)then
aE[f]=a
be=be-1
end
end
end
end
end
if(not ci)and ax then
ax=L
p[a][#p[a]+1]=cz
p[a][#p[a]][9]=L
end
end
if#p[a]>0 then
p[a][#p[a]][9]=L
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
function onDraw()bq=bI
local bO,bt,ac=bq.drawTriangleF,bq.drawRectF,bq.setColor
cM={aF,aM}if aJ then
e=c[24][c[19][8][ay-3]]Z,ap=e[1],e[2]E=O/ceil(Z*N)cg=E*1
for a=0,ceil(Z*N),1 do
k=(Z/2-a-1+g[3]/90*Z)%Z
o=(k%1-1)*E
k=ah(k)*ap
for n=0,ap-1,1 do
R=e[5+n+k]i=c[20][R]ac(i[1],i[2],i[3])bt(a*E+o,n*E,cg,cg)end
end
for a=#p,1,-1 do
for n=1,#p[a]do
d=p[a][n]if d[9]or d[13]then
if d[9]then
P=p[a][n+1]else
P=d
end
e=c[21][d[4]]e=c[21][d[4]+(ck%e[5])*c[19][3][2]+c[19][12][d[11]]]t=d[12]X=w(t,0)f=d[1]o=P[1]bQ=d[2-X]cu=P[2-X]h=d[3+X]bu=P[3+X]if not P[9]then o=o+1 end
aS(d[7])cw=t*(d[2]-d[3])*e[3]/d[6]cG=t*(P[2]-P[3])*e[3]/P[6]bG=t>0 and w or D
bc=0
while h*t<bQ*t and(bc<e[2]or not d[14])do
cb=bG(h+cw,bQ)bf=bG(bu+cG,cu)R=e[7+((X+d[8]//e[3])%e[2])+e[2]*((d[5])%e[1])]i=c[20][R]if i then
ac(i[1]*q,i[2]*q,i[3]*q)bO(f,h,f,cb,o,bf)bO(f,h,o,bu,o,bf)end
h=cb
bu=bf
X=X+t
bc=bc+1
end
end
end
for b=1,2 do
_=cM[b]cp={}ao,au,bo=aj,-aj
for n,d in aP(_[a])do
ao=w(ao,d[2])au=D(au,d[3])bo=d
e=c[22][d[4][b+2]]if e and not aX then
aS(d[4][5])i=c[20][e[5]]ac(i[1]*q,i[2]*q,i[3]*q)bI.drawLine(d[1],s-d[2],d[1],ah(s-d[3]-1))end
end
if bo and aX then
H=bo[4]cL=(H[b]-g[2])ba=cos(g[3])bB=sin(g[3])for aA=ah(ao+s),ceil(au+s)do
ae=aO*cL/(s-aA)cd=ba*ae-g[1][1]ce=bB*ae-g[1][2]bT=-bB*ae+cd
bZ=ba*ae+ce
cF=bB*ae+cd
cC=-ba*ae+ce
cy=(cF-bT)/O
cK=(cC-bZ)/O
cp[aA]={cy,cK,bT,bZ}end
for n,d in aP(_[a])do
if H[b+2]~=0 then
f=d[1]if f%aX==0 then
aS(H[5])m=H[b+2]e=c[22][m]e=c[22][m+(ck%e[4])]bX=y-(y-f)*N
ao,au=ah(d[2]+s),ceil(d[3]+s)al=e[3]for aA=ao,au do
aI=cp[aA]cN=(aI[3]+aI[1]*bX)//al
cD=(aI[4]+aI[2]*bX)//al
R=6+(cD%e[1])+e[1]*(cN%e[2])i=c[20][e[R]]if i then
ac(i[1]*q,i[2]*q,i[3]*q)bt(f,-aA+aj,aX,1)end
end
end
end
end
end
end
for n=1,#aL[a]do
_=l[aL[a][n]]if _[6]~=0 then
aT=sub(_,g[1])r=_[20]if r>1 then
G=bm(aG(aT)-g[3])r=r*cos(G)if z(G)<90 then
k=y-ar(tan(G)/N*y)bn=ar((180+G+g[3]-_[3]+bz*4)/360*8)M=c[16][_[6]][1]if M~=0 and _[6]~=1 then
e=c[17][z(M)][bn%8+1]t=e<0 and-1 or 1
e=z(e)if e>0 then
e=c[23][e+c[19][12][w(bR(r//aN+1),8)]]Z,ap=e[1],e[2]E=y/(N*r)aU=E*bw
J=s+(g[2]-_[9])/r*aO
I=J-e[5]*aU
o=k-t*e[4]*E
E,aU=E*e[3],aU*e[3]aS(_[8][5])q=M>0 and q or 1
c_=E
cx=c_*bw
cA=_[4]and c[15][_[4]][23]&8>0
for h=0,Z-1 do
k=o+h*E*t
if a<=aE[bA(ar(k),0,O-1)]then
for j=0,ap-1 do
R=e[7+j+h*ap]if R~=0 then
if cA then
bj=bj%50+1
ac(0,0,0,w(75*c[13][2][bj],255))else
i=c[20][R]ac(i[1]*q,i[2]*q,i[3]*q)end
bt(k,I+j*aU,c_,cx)end
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
