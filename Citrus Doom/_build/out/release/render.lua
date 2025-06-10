
w=math
A=w.max
x=w.min
D=w.abs
ae=w.floor
ceil=w.ceil
sqrt=w.sqrt
G=input.getNumber
bk=input.getBool
pi=w.pi/180
bo=false
P=true
ap=ipairs
bS=table.remove
bs=string
function bA(b,l)return b[1]*l[2]-b[2]*l[1]end
function sub(b,l)return{(b[1]-l[1]),(b[2]-l[2])}end
function bB(b)return((b+180)%360)-180 end
function sin(b)return w.sin(b*pi)end
function cos(b)return w.cos(b*pi)end
function tan(b)return w.tan(b*pi)end
function cT(b)return w.atan(b)/pi end
function aQ(b)return w.atan(b[2],b[1])/pi end
function bp(b,l,_)return x(A(l,b),_)end
function aC(b)return ae(b+.5)end
function aN(b,l)return sqrt(((b[1]-l[1])^2)+((b[2]-l[2])^2))end
function cg(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
function aM(b)r=x(b/255+bC,1)^2.2 end
c={}bl=1
az=3
aE=P
k={{0,0},0}F=0
Q=288
E=144
X=128
t=X//2
b_={}aY=400
c_=200
cp=1
cQ=0
aA={}aP=2^15
bj=3002
by=0
aR=0
am=0
bt=1.2
N=52
M=tan(N)aL=t*bt*Q/X/M
W=1
bJ={}for a=-E,E do bJ[a]=aQ({1,a/E*M})end
function bv(a)if a<aP then
local s,bn=c[7][a]bn=0<bA({s[3],s[4]},sub(k[1],s))and 8 or 7
bv(s[bn])bv(s[15-bn])else
at[#at+1]=a-aP
end
end
function aW(a,b)if a<aP then
s=c[7][a]return aW(s[0<bA({s[3],s[4]},sub(b,s))and 8 or 7],b)else
return a-aP
end
end
function bw(b)s=c[5][c[6][b][2]]return aB[c[3][c[2][s[4]][s[5]+6]][6]]end
function onTick()bd=0
for o=1,3 do
if bk(9)and(not bx)or not c[21]then
bf=property.getText(bl)a=1
y=""
_=bs.sub(bf,a,a)while _~=""do
bQ=bs.byte(_)if bQ>64 then
y=(y..bQ-65)+0
if W==1 then
cl=y
c[y]=c[y]or{}elseif W==2 then
cA=y
ax=0
elseif W==3 then
be=y
else
if ax==0 then
ax=cA
be=be-1
ba={}c[cl][#c[cl]+1]=ba
end
ba[#ba+1]=y
ax=ax-1
W=A(ax,be)>0 and W-1 or 0
end
W=W+1
y=""
else
y=y.._
end
a=a+1
_=bs.sub(bf,a,a)end
bl=bl+1
bx=bf==""
end
end
if bx then
if G(9)>0 then
aE=P
az=G(9)end
if cp>0 and not aE then
ak={}aA[#aA+1]=ak
av=5
_=G(av)while _~=0 do
ad={}ak[#ak+1]=ad
for a=0,8 do
ad[a+1]=G(av+a)end
av=av+9
_=G(av)end
end
if bk(1)then
cr=0
bZ=G(1)cp=G(3)am=am+1
bU=am//10
if aE then
for a=1,10 do
c[a]=c[a+10*az]end
j=c[1]cR={j[1][1],j[1][2]}for a=#j,1,-1 do
_=j[a]_=_[5]&(bj-3000)>0 or bS(j,a)end
aB=c[8]az=az+1
end
if G(2)>0 then
_=c[2][G(2)]if _ then
b=_[4]if b>0 then
if b==3008 then
aG=_[5]>0 and _[5]elseif b>3004 then
aY=A(aY+3*(_[4]-3006),1)c_=aY/2
elseif b>3000 then
bj=_[4]end
cr=G(2)if b<3000 and c[9][_[5]][7]==0 then
_[8]=1
end
end
end
end
if bk(3)and bZ~=1 and bZ~=3 then
bC=.1
aR=5
else
aR=aR-1
if aR<1 then
bC=0
end
end
for a=1,#aA do
ak=aA[a]for o=1,#ak do
ad=ak[o]_=ad[1]if _>(2^15)then
_=aB[_-(2^15)]for g=1,6 do
_[g]=ad[g+1]end
elseif _<0 then
while-_>#j do
j[#j+1]=bo
end
bS(j,-_)else
if not j[_]then
j[_]={}end
_=j[_]for g=1,8 do
_[c[19][1][g]]=ad[g+1]end
_[15]=0
_[7]=aW(#c[7],_)_[8]=bw(_[7])end
end
end
aA={}for a=1,#c[6]do
b_[a]={}end
for a,_ in ap(j)do
if aE then
_[7]=aW(#c[7],_)_[8]=bw(_[7])_[9]=_[8][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
end
if _ and a>1 then
bc=0
for o,d in ap({1,2,9})do
_[d]=_[d]+_[d+10]bc=bc+_[d+10]end
if bc~=0 then
_[7]=aW(#c[7],_)_[8]=bw(_[7])end
_[15]=_[15]+1
_[20]=aN(_,k[1])L=c[16][_[6]]if L~=nil then
if L[5]>0 then
_[9]=_[8][1]end
if _[15]>=L[2]and L[2]~=-1 then
_[6]=L[4]_[15]=0
end
end
b_[_[7]][#b_[_[7]]+1]=a
end
end
_,aE=j[1]cF=x(aN(_,k[1])^2/4,16)k[1]={_[1],_[2]}F=_[3]cS=_[9]+1
k[2]=_[9]+41+cF*sin(am*20)/4
at={}bv(#c[7])aV={}p={}aZ={}aX={}S={}Y={}aH={}bz=Q
for a=0,Q-1 do
aV[a],S[a],Y[a]=#c[6]+2,t+1,-t
end
a=1
while a<=#at and bz>0 do
_=c[6][at[a]]aZ[a]={}aX[a]={}p[a]={}aH[a]=b_[at[a]]table.sort(aH[a],function(b,l)return j[b][20]>j[l][20]end)for o=_[2],_[1]+_[2]-1 do
U=c[5][o]z=c[2][U[4]]bM,bK=c[4][U[1]],c[4][U[2]]aO,bI=sub(bM,k[1]),sub(bK,k[1])cc=aQ(aO)J,aS=bB(cc-F),bB(aQ(bI)-F)if D(J)<90 or D(aS)<90 then
ac,af=bp(J,-N,N),bp(aS,-N,N)if D(J)>=90 or D(aS)>=90 then
bN=bA(aO,bI)if D(J)>=90 then
if bN>0 then ac=-N else ac=N end
else
if bN<0 then af=-N else af=N end
end
end
n,m=aC(tan(ac)/M*E),aC(tan(af)/M*E)if n~=m then
q,al=aN(k[1],bM),aN(k[1],bK)aU=U[3]+90
bW=aU-cc
cE=q*sin(bW)aJ=(q*cos(bW))if J~=ac then
q=aJ/cos(aU-(ac+F))end
if aS~=af then
al=aJ/cos(aU-(af+F))end
q,al=q*cos(ac),al*cos(af)g=U[5]+6
cO=(n>m)if cO and z[g]~=0 then
au=z[3]&4>0
if au then
ab,Z=aB[c[3][z[6]][6]],aB[c[3][z[7]][6]]end
ah=c[3][z[g]]cK={ah[3],ah[4],ah[5]}I,bO,bT=aB[ah[6]]for i,d in ap(cK)do
aD=d>0
an=P
if(aD or(i==3 and not(bO and bT)))and(i==3 or au)then
co,bV=0
if i<3 then
bV=i==1 and A(ab[4],Z[4])==0
C,v=ab[3-i],Z[3-i]an=(C<v)~=(i==2)~=(g==6)and C~=v and ab~=Z
C,v=x(C,v),A(C,v)if an then
if i==1 then
bO=P
else
bT=P
co=z[3]&16>0 and A(ab[2],Z[2])-v or 0
end
end
else
if au then
C,v=A(ab[1],Z[1]),x(ab[2],Z[2])an=ab~=Z
else
C,v=I[1],I[2]end
end
C,v=C-k[2],v-k[2]bP,cm=C*aL,v*aL
if(an or aD)and not bV then
bu=U[6]-ah[1]if z[4]==48 then
bu=bu-am
end
cC,cu=bP/q,cm/q
cw,cN=bP/al,cm/al
bR,ay=0
if aD then
_=c[21][d][4]if(U[4]==cr or bj==z[4]or z[8])and _>0 then
d=_
end
aw=c[21][d][3]u=1
if(i==3 and z[3]&16>0)or(i==1 and z[3]&8==0)then
u=-1
end
end
for g=n,m,-1 do
cJ=bJ[g]bg=(aU-F)-cJ
f,ce=E-g
if f>=0 and f<=Q-1 then
if a<aV[f]then
aT=(g-n)/(m-n)K,H=(cC*(1-aT)+cw*aT),(cu*(1-aT)+cN*aT)if D(H+K)-(H-K)<X then
if aD then
if K~=H then
ce=P
cb=aJ*tan(bg)ao=cg(x(((D(cb)+D(aJ))//c_)+1,16))bH=ae((A(cb-cE,0)-bu)/(aw*ao))ca=bH*ao
bG={f,t-K,t-H,d,bH,v-C,I[5],ah[2]+co,P,aw*ao,ao,u,not ay,i==3 and au}if ca>bR or(not ay)or g==m then
bR=ca-1+ao
ay=P
p[a][#p[a]+1]=bG
end
cB=bG
end
end
if an then
if i~=2 then
if H<S[f]then
aX[a][#aX[a]+1]={f,A(H,Y[f]),S[f],I}end
if i==3 then T=H else T=K end
if S[f]>T then S[f]=T end
end
if i~=1 then
if K>Y[f]then
aZ[a][#aZ[a]+1]={f,Y[f],x(K,S[f]),I}end
if i==3 then T=K else T=H end
if Y[f]<T then Y[f]=T end
end
if(S[f]<=Y[f])or(i==3 and(not au)and aD)then
aV[f]=a
bz=bz-1
end
end
end
end
end
if(not ce)and ay then
p[a][#p[a]+1],ay=cB
p[a][#p[a]][9]=bo
end
end
if#p[a]>0 then
p[a][#p[a]][9]=bo
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
function onDraw()aI=screen
local bL,ch,aj,bX=aI.drawTriangleF,aI.drawRectF,aI.setColor,aI.drawLine
cH={aZ,aX}if bx then
e=c[24][c[19][8][az-3]]aa,as=e[1],e[2]B=Q/ceil(aa*M)ck=B*1
for a=0,ceil(aa*M),1 do
n=(aa/2-a-1+F/90*aa)%aa
m=(n%1-1)*B
n=ae(n)*as
for o=0,as-1,1 do
O=e[5+o+n]h=c[20][O]aj(h[1],h[2],h[3])ch(a*B+m,o*B,ck,ck)end
end
for a=#p,1,-1 do
for o=1,#p[a]do
d=p[a][o]if d[9]or d[13]then
if d[9]then
R=p[a][o+1]else
R=d
end
e=c[21][d[4]]e=c[21][d[4]+(bU%e[5])*c[19][3][2]+c[19][12][d[11]]]u=d[12]V=x(u,0)f=d[1]m=R[1]cf=d[2-V]ct=R[2-V]g=d[3+V]br=R[3+V]if not R[9]then m=m+1 end
aM(d[7])cL=u*(d[2]-d[3])*e[3]/d[6]cD=u*(R[2]-R[3])*e[3]/R[6]cq=u>0 and x or A
bm=0
while g*u<cf*u and(bm<e[2]or not d[14])do
cj=cq(g+cL,cf)bh=cq(br+cD,ct)O=e[7+((V+d[8]//e[3])%e[2])+e[2]*((d[5])%e[1])]h=c[20][O]if h then
aj(h[1]*r,h[2]*r,h[3]*r)bL(f,g,f,cj,m,bh)bL(f,g,m,br,m,bh)end
g=cj
br=bh
V=V+u
bm=bm+1
end
end
end
for b=1,2 do
_=cH[b]bF={}ar,aq,bq=X,-X
for o,d in ap(_[a])do
ar=x(ar,d[2])aq=A(aq,d[3])bq=d
e=c[22][d[4][b+2]]if e and not aG then
aM(d[4][5])h=c[20][e[5]]aj(h[1]*r,h[2]*r,h[3]*r)bX(d[1],t-d[2],d[1],ae(t-d[3]-1))end
end
if bq and aG then
I=bq[4]cP=(I[b]-k[2])bb=cos(F)bi=sin(F)for ag=ae(ar+t),ceil(aq+t)do
ai=aL*cP/(t-ag)bY=bb*ai-k[1][1]ci=bi*ai-k[1][2]cd=-bi*ai+bY
bD=bb*ai+ci
cx=bi*ai+bY
cv=-bb*ai+ci
cG=(cx-cd)/Q
cz=(cv-bD)/Q
bF[ag]={cG,cz,cd,bD}end
for o,d in ap(_[a])do
if I[b+2]~=0 then
f=d[1]if f%aG==0 then
aM(I[5])l=I[b+2]e=c[22][l]e=c[22][l+(bU%e[4])]cn=E-(E-f)*M
ar,aq=ae(d[2]+t),ceil(d[3]+t)aw=e[3]for ag=ar,aq do
aK=bF[ag]cM=(aK[3]+aK[1]*cn)//aw
cy=(aK[4]+aK[2]*cn)//aw
O=6+(cy%e[1])+e[1]*(cM%e[2])h=c[20][e[O]]if h then
aj(h[1]*r,h[2]*r,h[3]*r)bX(f,X-ag,f+aG+1,X-ag)end
end
end
end
end
end
end
for o=1,#aH[a]do
_=j[aH[a][o]]if _[6]~=0 then
aO=sub(_,k[1])q=_[20]if q>1 then
J=bB(aQ(aO)-F)q=q*cos(J)if D(J)<90 then
n=E-aC(tan(J)/M*E)bg=aC((180+J+F-_[3]+bd*4)/360*8)L=c[16][_[6]][1]if L~=0 and _[6]~=1 then
e=c[17][D(L)][bg%8+1]u=e<0 and-1 or 1
e=D(e)if e>0 then
e=c[23][e+c[19][12][x(cg(q//aY+1),8)]]aa,as=e[1],e[2]B=E/(M*q)aF=B*bt
K=t+(k[2]-_[9])/q*aL
H=K-e[5]*aF
m=n-u*e[4]*B
B,aF=B*e[3],aF*e[3]aM(_[8][5])r=L>0 and r or 1
bE=B
cI=bE*bt
cs=_[4]and c[15][_[4]][23]&8>0
for g=0,aa-1 do
n=m+g*B*u
if a<=aV[bp(aC(n),0,Q-1)]then
for i=0,as-1 do
O=e[7+i+g*as]if O~=0 then
if cs then
by=by%50+1
aj(0,0,0,x(75*c[13][2][by],255))else
h=c[20][O]aj(h[1]*r,h[2]*r,h[3]*r)end
ch(n,H+i*aF,bE,cI)end
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
bd=bd+1
end
