
z=math
x=z.max
s=z.min
E=z.abs
ak=z.floor
ceil=z.ceil
sqrt=z.sqrt
G=input.getNumber
bo=input.getBool
pi=z.pi/180
bi=false
O=true
ay=ipairs
bH=table.remove
bA=string
function bj(b,p)return b[1]*p[2]-b[2]*p[1]end
function sub(b,p)return{(b[1]-p[1]),(b[2]-p[2])}end
function by(b)return((b+180)%360)-180 end
function sin(b)return z.sin(b*pi)end
function cos(b)return z.cos(b*pi)end
function tan(b)return z.tan(b*pi)end
function cQ(b)return z.atan(b)/pi end
function aK(b)return z.atan(b[2],b[1])/pi end
function bv(b,p,_)return s(x(p,b),_)end
function am(b)return ak(b+.5)end
function aJ(b,p)return sqrt(((b[1]-p[1])^2)+((b[2]-p[2])^2))end
function cm(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
function aR(b)q=s(b/255+bV,1)^2.2 end
c={}br=1
aw=3
az=O
l={{0,0},0}B=0
R=288
F=144
af=128
v=64
aM={}aE=400
bM=200
bW=1
cS=0
aS=2^15
bp=3002
be=0
aD=0
as=0
bm=1.2
M=52
N=tan(M)aW=v*bm*R/af/N
Y=1
bS={}for a=-F,F do bS[a]=aK({1,a/F*N})end
function bb(a)if a<aS then
local w,bl=c[7][a]bl=0<bj({w[3],w[4]},sub(l[1],w))and 8 or 7
bb(w[bl])bb(w[15-bl])else
at[#at+1]=a-aS
end
end
function aX(a,b)if a<aS then
w=c[7][a]return aX(w[0<bj({w[3],w[4]},sub(b,w))and 8 or 7],b)else
return a-aS
end
end
function bg(b)w=c[5][c[6][b][2]]return aG[c[3][c[2][w[4]][w[5]+6]][6]]end
function onTick()bq=0
for m=1,3 do
if bo(9)and(not bz)or not c[21]then
bx=property.getText(br)a=1
D=""
_=bA.sub(bx,a,a)while _~=""do
bK=bA.byte(_)if bK>64 then
D=(D..bK-65)+0
if Y==1 then
bU=D
c[D]=c[D]or{}elseif Y==2 then
cw=D
aA=0
elseif Y==3 then
bw=D
else
if aA==0 then
aA=cw
bw=bw-1
bu={}c[bU][#c[bU]+1]=bu
end
bu[#bu+1]=D
aA=aA-1
Y=x(aA,bw)>0 and Y-1 or 0
end
Y=Y+1
D=""
else
D=D.._
end
a=a+1
_=bA.sub(bx,a,a)end
br=br+1
bz=bx==""
end
end
if bz then
if G(9)>0 then
az=O
aw=G(9)end
if bW>0 and not az then
ac={}an[#an+1]=ac
ar=5
_=G(ar)while _~=0 do
ah={}ac[#ac+1]=ah
for a=0,8 do
ah[a+1]=G(ar+a)end
ar=ar+9
_=G(ar)end
end
if bo(1)then
ch=0
bE=G(1)bW=G(3)as=as+1
cj=as//10
if az then
for a=1,10 do
c[a]=c[a+10*aw]end
k=c[1]cP={k[1][1],k[1][2]}for a=#k,1,-1 do
_=k[a]_=_[5]&(bp-3000)>0 or bH(k,a)end
aG=c[8]an={}aw=aw+1
end
if G(2)>0 then
_=c[2][G(2)]if _ then
b=_[4]if b>0 then
if b==3008 then
aU=_[5]>0 and _[5]elseif b>3004 then
aE=x(aE+3*(_[4]-3006),1)bM=aE/2
elseif b>3000 then
bp=_[4]end
ch=G(2)if b<3000 and c[9][_[5]][7]==0 then
_[8]=1
end
end
end
end
if bo(3)and bE~=1 and bE~=3 then
bV=.1
aD=5
else
aD=aD-1
if aD<1 then
bV=0
end
end
for a=1,#an do
ac=an[a]for m=1,#ac do
ah=ac[m]_=ah[1]if _>(2^15)then
_=aG[_-(2^15)]for g=1,6 do
_[g]=ah[g+1]end
elseif _<0 then
while-_>#k do
k[#k+1]=bi
end
bH(k,-_)else
if not k[_]then
k[_]={}end
_=k[_]for g=1,8 do
_[c[19][1][g]]=ah[g+1]end
_[15]=0
_[7]=aX(#c[7],_)_[8]=bg(_[7])end
end
end
an={}for a=1,#c[6]do
aM[a]={}end
for a,_ in ay(k)do
if az then
_[7]=aX(#c[7],_)_[8]=bg(_[7])_[9]=_[8][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
end
if _ and a>1 then
bd=0
for m,d in ay({1,2,9})do
_[d]=_[d]+_[d+10]bd=bd+_[d+10]end
if bd~=0 then
_[7]=aX(#c[7],_)_[8]=bg(_[7])end
_[15]=_[15]+1
_[20]=aJ(_,l[1])L=c[16][_[6]]if L~=nil then
if L[5]>0 then
_[9]=_[8][1]end
if _[15]>=L[2]and L[2]~=-1 then
_[6]=L[4]_[15]=0
end
end
aM[_[7]][#aM[_[7]]+1]=a
end
end
_,az=k[1]cM=s(aJ(_,l[1])^2/4,16)l[1]={_[1],_[2]}B=_[3]cR=_[9]+1
l[2]=_[9]+41+cM*sin(as*20)/4
at={}bb(#c[7])aO={}r={}aP={}aN={}Z={}S={}aI={}bt=R
for a=0,R-1 do
aO[a],Z[a],S[a]=#c[6]+2,v+1,-v
end
a=1
while a<=#at and bt>0 do
_=c[6][at[a]]aP[a]={}aN[a]={}r[a]={}aI[a]=aM[at[a]]table.sort(aI[a],function(b,p)return k[b][20]>k[p][20]end)for m=_[2],_[1]+_[2]-1 do
V=c[5][m]K=c[2][V[4]]cc,bQ=c[4][V[1]],c[4][V[2]]aQ,bO=sub(cc,l[1]),sub(bQ,l[1])cf=aK(aQ)I,aL=by(cf-B),by(aK(bO)-B)if E(I)<90 or E(aL)<90 then
ai,ad=bv(I,-M,M),bv(aL,-M,M)if E(I)>=90 or E(aL)>=90 then
cl=bj(aQ,bO)if E(I)>=90 then
if cl>0 then ai=-M else ai=M end
else
if cl<0 then ad=-M else ad=M end
end
end
n,o=am(tan(ai)/N*F),am(tan(ad)/N*F)if n~=o then
t,au=aJ(l[1],cc),aJ(l[1],bQ)aZ=V[3]+90
ca=aZ-cf
cG=t*sin(ca)aH=(t*cos(ca))if I~=ai then
t=aH/cos(aZ-(ai+B))end
if aL~=ad then
au=aH/cos(aZ-(ad+B))end
t,au=t*cos(ai),au*cos(ad)g=V[5]+6
cN=(n>o)if cN and K[g]~=0 then
ap=K[3]&4>0
if ap then
W=aG[c[3][K[13-g]][6]]end
ae=c[3][K[g]]cL={ae[3],ae[4],ae[5]}j,bT,bI=aG[ae[6]]for i,d in ay(cL)do
aj=d>0
ab=O
if(aj or(i==3 and not(bT and bI)))and(i==3 or ap)then
bF,bG=0
if i<3 then
bG=i==1 and x(j[4],W[4])==0
A,y=j[3-i],(i==1 and x or s)(W[3-i],j[i])ab=(A<y)==(i==2)and A~=y and j~=W
aj=ab
A,y=s(A,y),x(A,y)if ab then
if i==1 then
bT=O
else
bI=O
bF=K[3]&16>0 and x(j[2],W[2])-y or 0
end
end
else
if ap then
A,y=s(x(j[1],W[1]),j[2]),x(s(j[2],W[2]),j[1])ab=j~=W
else
A,y=j[1],j[2]end
end
A,y=A-l[2],y-l[2]bD,cn=A*aW,y*aW
if(ab or aj)and not bG then
bh=V[6]-ae[1]if K[4]==48 then
bh=bh-as
end
cv,cF=bD/t,cn/t
cu,cD=bD/au,cn/au
co,aq=0
if aj then
_=c[21][d][4]if(V[4]==ch or bp==K[4]or K[8])and _>0 then
d=_
end
ao=c[21][d][3]u=1
if(i==3 and K[3]&16>0)or(i==1 and K[3]&8==0)then
u=-1
end
end
for g=n,o,-1 do
cs=bS[g]bf=(aZ-B)-cs
f,bR=F-g
if f>=0 and f<=R-1 then
if a<aO[f]then
aV=(g-n)/(o-n)J,H=(cv*(1-aV)+cu*aV),(cF*(1-aV)+cD*aV)if E(H+J)-(H-J)<af then
if aj then
if J~=H then
bR=O
c_=aH*tan(bf)av=cm(s(((E(c_)+E(aH))//bM)+1,16))bC=ak((x(c_-cG,0)-bh)/(ao*av))bP=bC*av
ci={f,v-J,v-H,d,bC,y-A,j[5],ae[2]+bF,O,ao*av,av,u,not aq,i==3 and ap}if bP>co or(not aq)or g==o then
co=bP-1+av
aq=O
r[a][#r[a]+1]=ci
end
cJ=ci
end
end
if ab then
if i~=2 then
if H<Z[f]then
aN[a][#aN[a]+1]={f,x(H,S[f]),Z[f],j}end
if i==3 then U=H else U=J end
if Z[f]>U then Z[f]=U end
end
if i~=1 then
if J>S[f]then
aP[a][#aP[a]+1]={f,S[f],s(J,Z[f]),j}end
if i==3 then U=J else U=H end
if S[f]<U then S[f]=U end
end
if(Z[f]<=S[f])or(i==3 and(not ap)and aj)then
aO[f]=a
bt=bt-1
end
end
end
end
end
if(not bR)and aq then
r[a][#r[a]+1],aq=cJ
r[a][#r[a]][9]=bi
end
end
if#r[a]>0 then
r[a][#r[a]][9]=bi
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
function onDraw()aT=screen
local bB,bZ,ag,bJ=aT.drawTriangleF,aT.drawRectF,aT.setColor,aT.drawLine
cE={aP,aN}if bz then
e=c[24][c[19][8][aw-3]]T,ax=e[1],e[2]C=R/ceil(T*N)bY=C*1
for a=0,ceil(T*N),1 do
n=(T/2-a-1+B/90*T)%T
o=(n%1-1)*C
n=ak(n)*ax
for m=0,ax-1,1 do
P=e[5+m+n]h=c[20][P]ag(h[1],h[2],h[3])bZ(a*C+o,m*C,bY,bY)end
end
for a=#r,1,-1 do
for m=1,#r[a]do
d=r[a][m]if d[9]or d[13]then
if d[9]then
Q=r[a][m+1]else
Q=d
end
e=c[21][d[4]]e=c[21][d[4]+(cj%e[5])*c[19][3][2]+c[19][12][d[11]]]u=d[12]X=s(u,0)f=d[1]o=Q[1]bN=d[2-X]cO=Q[2-X]g=d[3+X]b_=Q[3+X]if not Q[9]then o=o+1 end
aR(d[7])cB=u*(d[2]-d[3])*e[3]/d[6]cH=u*(Q[2]-Q[3])*e[3]/Q[6]cp=u>0 and s or x
bn=0
while g*u<bN*u and(bn<e[2]or not d[14])do
ck=cp(g+cB,bN)bs=cp(b_+cH,cO)P=e[7+((X+d[8]//e[3])%e[2])+e[2]*((d[5])%e[1])]h=c[20][P]if h then
ag(h[1]*q,h[2]*q,h[3]*q)bB(f,g,f,ck,o,bs)bB(f,g,o,b_,o,bs)end
g=ck
b_=bs
X=X+u
bn=bn+1
end
end
end
for b=1,2 do
_=cE[b]bL={}aC,aB,bk=af,-af
for m,d in ay(_[a])do
aC=s(aC,d[2])aB=x(aB,d[3])bk=d
e=c[22][d[4][b+2]]if e and not aU then
aR(d[4][5])h=c[20][e[5]]ag(h[1]*q,h[2]*q,h[3]*q)bJ(d[1],v-d[2],d[1],ak(v-d[3]-1))end
end
if bk and aU then
j=bk[4]cC=(j[b]-l[2])bc=cos(B)ba=sin(B)for aa=ak(aC+v),ceil(aB+v)do
al=aW*cC/(v-aa)cq=bc*al-l[1][1]bX=ba*al-l[1][2]cb=-ba*al+cq
ce=bc*al+bX
cA=ba*al+cq
cr=-bc*al+bX
cx=(cA-cb)/R
cK=(cr-ce)/R
bL[aa]={cx,cK,cb,ce}end
for m,d in ay(_[a])do
if j[b+2]~=0 then
f=d[1]if f%aU==0 then
aR(j[5])p=j[b+2]e=c[22][p]e=c[22][p+(cj%e[4])]cd=F-(F-f)*N
aC,aB=ak(d[2]+v),ceil(d[3]+v)ao=e[3]for aa=aC,aB do
aF=bL[aa]cI=(aF[3]+aF[1]*cd)//ao
cz=(aF[4]+aF[2]*cd)//ao
P=6+(cz%e[1])+e[1]*(cI%e[2])h=c[20][e[P]]if h then
ag(h[1]*q,h[2]*q,h[3]*q)bJ(f,af-aa,f+aU+1,af-aa)end
end
end
end
end
end
end
for m=1,#aI[a]do
_=k[aI[a][m]]if _[6]~=0 then
aQ=sub(_,l[1])t=_[20]if t>1 then
I=by(aK(aQ)-B)t=t*cos(I)if E(I)<90 then
n=F-am(tan(I)/N*F)bf=am((180+I+B-_[3]+bq*4)/360*8)L=c[16][_[6]][1]if L~=0 and _[6]~=1 then
e=c[17][E(L)][bf%8+1]u=e<0 and-1 or 1
e=E(e)if e>0 then
e=c[23][e+c[19][12][s(cm(t//aE+1),8)]]T,ax=e[1],e[2]C=F/(N*t)aY=C*bm
J=v+(l[2]-_[9])/t*aW
H=J-e[5]*aY
o=n-u*e[4]*C
C,aY=C*e[3],aY*e[3]aR(_[8][5])q=L>0 and q or 1
cg=C
cy=cg*bm
ct=_[4]and c[15][_[4]][23]&8>0
for g=0,T-1 do
n=o+g*C*u
if a<=aO[bv(am(n),0,R-1)]then
for i=0,ax-1 do
P=e[7+i+g*ax]if P~=0 then
if ct then
be=be%50+1
ag(0,0,0,s(75*c[13][2][be],255))else
h=c[20][P]ag(h[1]*q,h[2]*q,h[3]*q)end
bZ(n,H+i*aY,cg,cy)end
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
bq=bq+1
end
