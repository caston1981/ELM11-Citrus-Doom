
z=math
x=z.max
s=z.min
F=z.abs
aa=z.floor
ceil=z.ceil
sqrt=z.sqrt
I=input.getNumber
by=input.getBool
pi=z.pi/180
b_=false
Q=true
as=ipairs
cn=table.remove
bk=string
function bz(b,p)return b[1]*p[2]-b[2]*p[1]end
function sub(b,p)return{(b[1]-p[1]),(b[2]-p[2])}end
function bv(b)return((b+180)%360)-180 end
function sin(b)return z.sin(b*pi)end
function cos(b)return z.cos(b*pi)end
function tan(b)return z.tan(b*pi)end
function cS(b)return z.atan(b)/pi end
function aL(b)return z.atan(b[2],b[1])/pi end
function bx(b,p,_)return s(x(p,b),_)end
function aw(b)return aa(b+.5)end
function aQ(b,p)return sqrt(((b[1]-p[1])^2)+((b[2]-p[2])^2))end
function bK(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
function aE(b)t=s(b/255+bJ,1)^2.2 end
c={}bi=1
am=3
ar=Q
l={{0,0},0}D=0
O=288
E=144
ai=128
w=64
aY={}aW=400
bL=200
bH=1
cP=0
aO=2^15
bw=3002
bs=0
aV=0
au=0
bd=1.2
L=52
N=tan(L)aM=w*bd*O/ai/N
W=1
cp={}for a=-E,E do cp[a]=aL({1,a/E*N})end
function bn(a)if a<aO then
local v,bf=c[7][a]bf=0<bz({v[3],v[4]},sub(l[1],v))and 8 or 7
bn(v[bf])bn(v[15-bf])else
ao[#ao+1]=a-aO
end
end
function aJ(a,b)if a<aO then
v=c[7][a]return aJ(v[0<bz({v[3],v[4]},sub(b,v))and 8 or 7],b)else
return a-aO
end
end
function bl(b)v=c[5][c[6][b][2]]return aG[c[3][c[2][v[4]][v[5]+6]][6]]end
function onTick()bu=0
for m=1,3 do
if by(9)and(not bb)or not c[21]then
bh=property.getText(bi)a=1
A=""
_=bk.sub(bh,a,a)while _~=""do
bP=bk.byte(_)if bP>64 then
A=(A..bP-65)+0
if W==1 then
ck=A
c[A]=c[A]or{}elseif W==2 then
cB=A
aC=0
elseif W==3 then
bo=A
else
if aC==0 then
aC=cB
bo=bo-1
bc={}c[ck][#c[ck]+1]=bc
end
bc[#bc+1]=A
aC=aC-1
W=x(aC,bo)>0 and W-1 or 0
end
W=W+1
A=""
else
A=A.._
end
a=a+1
_=bk.sub(bh,a,a)end
bi=bi+1
bb=bh==""
end
end
if bb then
if I(10)>0 then
ar=Q
am=I(10)end
if bH>0 and not ar then
ac={}aq[#aq+1]=ac
aB=6
_=I(aB)while _~=0 do
ah={}ac[#ac+1]=ah
for a=0,8 do
ah[a+1]=I(aB+a)end
aB=aB+9
_=I(aB)end
end
if by(1)then
bY=0
bW=I(1)bH=I(3)au=au+1
bN=au//10
if ar then
for a=1,10 do
c[a]=c[a+10*am]end
k=c[1]cQ={k[1][1],k[1][2]}for a=#k,1,-1 do
_=k[a]_=_[5]&(bw-3000)>0 or cn(k,a)end
aG=c[8]aq={}am=am+1
end
if I(2)>0 then
_=c[2][I(2)]if _ then
b=_[4]if b>0 then
if b==3008 then
aZ=_[5]>0 and _[5]elseif b>3004 then
aW=x(aW+3*(_[4]-3006),1)bL=aW/2
elseif b>3000 then
bw=_[4]end
bY=I(2)if b<3000 and c[9][_[5]][7]==0 then
_[8]=1
end
end
end
end
if by(3)and bW~=1 and bW~=3 then
bJ=.1
aV=5
else
aV=aV-1
if aV<1 then
bJ=0
end
end
for a=1,#aq do
ac=aq[a]for m=1,#ac do
ah=ac[m]_=ah[1]if _>(2^15)then
_=aG[_-(2^15)]for g=1,6 do
_[g]=ah[g+1]end
elseif _<0 then
while-_>#k do
k[#k+1]=b_
end
cn(k,-_)else
if not k[_]then
k[_]={}end
_=k[_]for g=1,8 do
_[c[19][1][g]]=ah[g+1]end
_[15]=0
_[7]=aJ(#c[7],_)_[8]=bl(_[7])end
end
end
aq={}for a=1,#c[6]do
aY[a]={}end
for a,_ in as(k)do
if ar then
_[7]=aJ(#c[7],_)_[8]=bl(_[7])_[9]=_[8][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
end
if _ and a>1 then
bp=0
for m,d in as({1,2,9})do
_[d]=_[d]+_[d+10]bp=bp+_[d+10]end
if bp~=0 then
_[7]=aJ(#c[7],_)_[8]=bl(_[7])end
_[15]=_[15]+1
_[20]=aQ(_,l[1])M=c[16][_[6]]if M~=nil then
if M[5]>0 then
_[9]=_[8][1]end
if _[15]>=M[2]and M[2]~=-1 then
_[6]=M[4]_[15]=0
end
end
aY[_[7]][#aY[_[7]]+1]=a
end
end
_,ar=k[1]cK=s(aQ(_,l[1])^2/4,16)l[1]={_[1],_[2]}D=_[3]cR=_[9]+1
l[2]=_[9]+41+cK*sin(au*20)/4
ao={}bn(#c[7])aK={}q={}aH={}aN={}X={}Y={}aD={}br=O
for a=0,O-1 do
aK[a],X[a],Y[a]=#c[6]+2,w+1,-w
end
a=1
while a<=#ao and br>0 do
_=c[6][ao[a]]aH[a]={}aN[a]={}q[a]={}aD[a]=aY[ao[a]]table.sort(aD[a],function(b,p)return k[b][20]>k[p][20]end)for m=_[2],_[1]+_[2]-1 do
V=c[5][m]G=c[2][V[4]]bU,bT=c[4][V[1]],c[4][V[2]]aI,bX=sub(bU,l[1]),sub(bT,l[1])bV=aL(aI)H,aT=bv(bV-D),bv(aL(bX)-D)if F(H)<90 or F(aT)<90 then
al,ak=bx(H,-L,L),bx(aT,-L,L)if F(H)>=90 or F(aT)>=90 then
cl=bz(aI,bX)if F(H)>=90 then
if cl>0 then al=-L else al=L end
else
if cl<0 then ak=-L else ak=L end
end
end
o,n=aw(tan(al)/N*E),aw(tan(ak)/N*E)if o~=n then
r,az=aQ(l[1],bU),aQ(l[1],bT)aP=V[3]+90
cb=aP-bV
cG=r*sin(cb)aS=(r*cos(cb))if H~=al then
r=aS/cos(aP-(al+D))end
if aT~=ak then
az=aS/cos(aP-(ak+D))end
r,az=r*cos(al),az*cos(ak)g=V[5]+6
cE=(o>n)if cE and G[g]~=0 then
ay=G[3]&4>0
if ay then
S=aG[c[3][G[13-g]][6]]end
ag=c[3][G[g]]cA={ag[3],ag[4],ag[5]}j,bO,bS=aG[ag[6]]for i,d in as(cA)do
ab=d>0
af=Q
if(ab or(i==3 and not(bO and bS)))and(i==3 or ay)then
bE,ce=0
if i<3 then
ce=i==1 and x(j[4],S[4])==0
C,y=j[3-i],(i==1 and x or s)(S[3-i],j[i])af=(C<y)==(i==2)and C~=y and j~=S
ab=af
C,y=s(C,y),x(C,y)if af then
if i==1 then
bO=Q
else
bS=Q
bE=G[3]&16>0 and x(j[2],S[2])-y or 0
end
end
else
if ay then
C,y=s(x(j[1],S[1]),j[2]),x(s(j[2],S[2]),j[1])af=j~=S
else
C,y=j[1],j[2]end
end
C,y=C-l[2],y-l[2]cf,cq=C*aM,y*aM
if(af or ab)and not ce then
bm=V[6]-ag[1]if G[4]==48 then
bm=bm-au
end
cO,cJ=cf/r,cq/r
cC,cF=cf/az,cq/az
ci,aA=0
if ab then
_=c[21][d][4]if(V[4]==bY or bw==G[4]or G[8])and _>0 then
d=_
end
ax=c[21][d][3]u=1
if(i==3 and G[3]&16>0)or(i==1 and G[3]&8==0)then
u=-1
end
end
for g=o,n,-1 do
cD=cp[g]bq=(aP-D)-cD
f,ch=E-g
if f>=0 and f<=O-1 then
if a<aK[f]then
aU=(g-o)/(n-o)K,J=(cO*(1-aU)+cC*aU),(cJ*(1-aU)+cF*aU)if F(J+K)-(J-K)<ai then
if ab then
if K~=J then
ch=Q
cm=aS*tan(bq)av=bK(s(((F(cm)+F(aS))//bL)+1,16))cd=aa((x(cm-cG,0)-bm)/(ax*av))bQ=cd*av
cc={f,w-K,w-J,d,cd,y-C,j[5],ag[2]+bE,Q,ax*av,av,u,not aA,i==3 and ay}if bQ>ci or(not aA)or g==n then
ci=bQ-1+av
aA=Q
q[a][#q[a]+1]=cc
end
cr=cc
end
end
if af then
if i~=2 then
if J<X[f]then
aN[a][#aN[a]+1]={f,x(J,Y[f]),X[f],j}end
if i==3 then U=J else U=K end
if X[f]>U then X[f]=U end
end
if i~=1 then
if K>Y[f]then
aH[a][#aH[a]+1]={f,Y[f],s(K,X[f]),j}end
if i==3 then U=K else U=J end
if Y[f]<U then Y[f]=U end
end
if(X[f]<=Y[f])or(i==3 and(not ay)and ab)then
aK[f]=a
br=br-1
end
end
end
end
end
if(not ch)and aA then
q[a][#q[a]+1],aA=cr
q[a][#q[a]][9]=b_
end
end
if#q[a]>0 then
q[a][#q[a]][9]=b_
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
function onDraw()aR=screen
local cg,bM,ae,ca=aR.drawTriangleF,aR.drawRectF,aR.setColor,aR.drawLine
cM={aH,aN}if bb then
e=c[24][c[19][8][am-3]]T,at=e[1],e[2]B=O/ceil(T*N)c_=B*1
for a=0,ceil(T*N),1 do
o=(T/2-a-1+D/90*T)%T
n=(o%1-1)*B
o=aa(o)*at
for m=0,at-1,1 do
R=e[5+m+o]h=c[20][R]ae(h[1],h[2],h[3])bM(a*B+n,m*B,c_,c_)end
end
for a=#q,1,-1 do
for m=1,#q[a]do
d=q[a][m]if d[9]or d[13]then
if d[9]then
P=q[a][m+1]else
P=d
end
e=c[21][d[4]]e=c[21][d[4]+(bN%e[5])*c[19][3][2]+c[19][12][d[11]]]u=d[12]Z=s(u,0)f=d[1]n=P[1]bZ=d[2-Z]cN=P[2-Z]g=d[3+Z]bj=P[3+Z]if not P[9]then n=n+1 end
aE(d[7])cy=u*(d[2]-d[3])*e[3]/d[6]cx=u*(P[2]-P[3])*e[3]/P[6]cj=u>0 and s or x
bg=0
while g*u<bZ*u and(bg<e[2]or not d[14])do
bF=cj(g+cy,bZ)be=cj(bj+cx,cN)R=e[7+((Z+d[8]//e[3])%e[2])+e[2]*((d[5])%e[1])]h=c[20][R]if h then
ae(h[1]*t,h[2]*t,h[3]*t)cg(f,g,f,bF,n,be)cg(f,g,n,bj,n,be)end
g=bF
bj=be
Z=Z+u
bg=bg+1
end
end
end
for b=1,2 do
_=cM[b]bG={}ap,an,bA=ai,-ai
for m,d in as(_[a])do
ap=s(ap,d[2])an=x(an,d[3])bA=d
e=c[22][d[4][b+2]]if e and not aZ then
aE(d[4][5])h=c[20][e[5]]ae(h[1]*t,h[2]*t,h[3]*t)ca(d[1],w-d[2],d[1],aa(w-d[3]-1))end
end
if bA and aZ then
j=bA[4]cL=(j[b]-l[2])bt=cos(D)ba=sin(D)for aj=aa(ap+w),ceil(an+w)do
ad=aM*cL/(w-aj)co=bt*ad-l[1][1]bI=ba*ad-l[1][2]bB=-ba*ad+co
bR=bt*ad+bI
cH=ba*ad+co
cu=-bt*ad+bI
cw=(cH-bB)/O
cI=(cu-bR)/O
bG[aj]={cw,cI,bB,bR}end
for m,d in as(_[a])do
if j[b+2]~=0 then
f=d[1]if f%aZ==0 then
aE(j[5])p=j[b+2]e=c[22][p]e=c[22][p+(bN%e[4])]bC=E-(E-f)*N
ap,an=aa(d[2]+w),ceil(d[3]+w)ax=e[3]for aj=ap,an do
aF=bG[aj]cz=(aF[3]+aF[1]*bC)//ax
ct=(aF[4]+aF[2]*bC)//ax
R=6+(ct%e[1])+e[1]*(cz%e[2])h=c[20][e[R]]if h then
ae(h[1]*t,h[2]*t,h[3]*t)ca(f,ai-aj,f+aZ+1,ai-aj)end
end
end
end
end
end
end
for m=1,#aD[a]do
_=k[aD[a][m]]if _[6]~=0 then
aI=sub(_,l[1])r=_[20]if r>1 then
H=bv(aL(aI)-D)r=r*cos(H)if F(H)<90 then
o=E-aw(tan(H)/N*E)bq=aw((180+H+D-_[3]+bu*4)/360*8)M=c[16][_[6]][1]if M~=0 and _[6]~=1 then
e=c[17][F(M)][bq%8+1]u=e<0 and-1 or 1
e=F(e)if e>0 then
e=c[23][e+c[19][12][s(bK(r//aW+1),8)]]T,at=e[1],e[2]B=E/(N*r)aX=B*bd
K=w+(l[2]-_[9])/r*aM
J=K-e[5]*aX
n=o-u*e[4]*B
B,aX=B*e[3],aX*e[3]aE(_[8][5])t=M>0 and t or 1
bD=B
cs=bD*bd
cv=_[4]and c[15][_[4]][23]&8>0
for g=0,T-1 do
o=n+g*B*u
if a<=aK[bx(aw(o),0,O-1)]then
for i=0,at-1 do
R=e[7+i+g*at]if R~=0 then
if cv then
bs=bs%50+1
ae(0,0,0,s(75*c[13][2][bs],255))else
h=c[20][R]ae(h[1]*t,h[2]*t,h[3]*t)end
bM(o,J+i*aX,bD,cs)end
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
bu=bu+1
end
