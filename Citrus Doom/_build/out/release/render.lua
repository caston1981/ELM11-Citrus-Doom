
y=math
u=y.max
r=y.min
D=y.abs
ah=y.floor
ceil=y.ceil
sqrt=y.sqrt
H=input.getNumber
bf=input.getBool
pi=y.pi/180
ba=false
P=true
aB=ipairs
cb=table.remove
bz=string
function bp(b,p)return b[1]*p[2]-b[2]*p[1]end
function sub(b,p)return{(b[1]-p[1]),(b[2]-p[2])}end
function bd(b)return((b+180)%360)-180 end
function sin(b)return y.sin(b*pi)end
function cos(b)return y.cos(b*pi)end
function tan(b)return y.tan(b*pi)end
function cQ(b)return y.atan(b)/pi end
function aP(b)return y.atan(b[2],b[1])/pi end
function be(b,p,_)return r(u(p,b),_)end
function av(b)return ah(b+.5)end
function aS(b,p)return sqrt(((b[1]-p[1])^2)+((b[2]-p[2])^2))end
function bN(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
function aD(b)t=r(b/255+ck,1)^2.2 end
c={}bs=1
at=3
aw=P
l={{0,0},0}A=0
R=288
E=144
al=128
v=64
aH={}aV=400
bV=200
ce=1
cS=0
aQ=2^15
bo=3002
bq=0
aT=0
ay=0
bu=1.2
M=52
L=tan(M)aR=v*bu*R/al/L
W=1
bX={}for a=-E,E do bX[a]=aP({1,a/E*L})end
function bx(a)if a<aQ then
local w,bk=c[7][a]bk=0<bp({w[3],w[4]},sub(l[1],w))and 8 or 7
bx(w[bk])bx(w[15-bk])else
az[#az+1]=a-aQ
end
end
function aU(a,b)if a<aQ then
w=c[7][a]return aU(w[0<bp({w[3],w[4]},sub(b,w))and 8 or 7],b)else
return a-aQ
end
end
function bw(b)w=c[5][c[6][b][2]]return aZ[c[3][c[2][w[4]][w[5]+6]][6]]end
function onTick()bt=0
for o=1,3 do
if bf(9)and(not bn)or not c[21]then
bv=property.getText(bs)a=1
B=""
_=bz.sub(bv,a,a)while _~=""do
cc=bz.byte(_)if cc>64 then
B=(B..cc-65)+0
if W==1 then
bT=B
c[B]=c[B]or{}elseif W==2 then
cr=B
ap=0
elseif W==3 then
br=B
else
if ap==0 then
ap=cr
br=br-1
bb={}c[bT][#c[bT]+1]=bb
end
bb[#bb+1]=B
ap=ap-1
W=u(ap,br)>0 and W-1 or 0
end
W=W+1
B=""
else
B=B.._
end
a=a+1
_=bz.sub(bv,a,a)end
bs=bs+1
bn=bv==""
end
end
if bn then
if H(9)>0 then
aw=P
at=H(9)end
if ce>0 and not aw then
aa={}ao[#ao+1]=aa
aC=5
_=H(aC)while _~=0 do
aj={}aa[#aa+1]=aj
for a=0,8 do
aj[a+1]=H(aC+a)end
aC=aC+9
_=H(aC)end
end
if bf(1)then
bE=0
bR=H(1)ce=H(3)ay=ay+1
cn=ay//10
if aw then
for a=1,10 do
c[a]=c[a+10*at]end
k=c[1]cR={k[1][1],k[1][2]}for a=#k,1,-1 do
_=k[a]_=_[5]&(bo-3000)>0 or cb(k,a)end
aZ=c[8]ao={}at=at+1
end
if H(2)>0 then
_=c[2][H(2)]if _ then
b=_[4]if b>0 then
if b==3008 then
aY=_[5]>0 and _[5]elseif b>3004 then
aV=u(aV+3*(_[4]-3006),1)bV=aV/2
elseif b>3000 then
bo=_[4]end
bE=H(2)if b<3000 and c[9][_[5]][7]==0 then
_[8]=1
end
end
end
end
if bf(3)and bR~=1 and bR~=3 then
ck=.1
aT=5
else
aT=aT-1
if aT<1 then
ck=0
end
end
for a=1,#ao do
aa=ao[a]for o=1,#aa do
aj=aa[o]_=aj[1]if _>(2^15)then
_=aZ[_-(2^15)]for g=1,6 do
_[g]=aj[g+1]end
elseif _<0 then
while-_>#k do
k[#k+1]=ba
end
cb(k,-_)else
if not k[_]then
k[_]={}end
_=k[_]for g=1,8 do
_[c[19][1][g]]=aj[g+1]end
_[15]=0
_[7]=aU(#c[7],_)_[8]=bw(_[7])end
end
end
ao={}for a=1,#c[6]do
aH[a]={}end
for a,_ in aB(k)do
if aw then
_[7]=aU(#c[7],_)_[8]=bw(_[7])_[9]=_[8][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
end
if _ and a>1 then
bi=0
for o,d in aB({1,2,9})do
_[d]=_[d]+_[d+10]bi=bi+_[d+10]end
if bi~=0 then
_[7]=aU(#c[7],_)_[8]=bw(_[7])end
_[15]=_[15]+1
_[20]=aS(_,l[1])N=c[16][_[6]]if N~=nil then
if N[5]>0 then
_[9]=_[8][1]end
if _[15]>=N[2]and N[2]~=-1 then
_[6]=N[4]_[15]=0
end
end
aH[_[7]][#aH[_[7]]+1]=a
end
end
_,aw=k[1]cx=r(aS(_,l[1])^2/4,16)l[1]={_[1],_[2]}A=_[3]cP=_[9]+1
l[2]=_[9]+41+cx*sin(ay*20)/4
az={}bx(#c[7])aE={}s={}aW={}aI={}T={}Y={}aK={}bj=R
for a=0,R-1 do
aE[a],T[a],Y[a]=#c[6]+2,v+1,-v
end
a=1
while a<=#az and bj>0 do
_=c[6][az[a]]aW[a]={}aI[a]={}s[a]={}aK[a]=aH[az[a]]table.sort(aK[a],function(b,p)return k[b][20]>k[p][20]end)for o=_[2],_[1]+_[2]-1 do
U=c[5][o]I=c[2][U[4]]bO,bS=c[4][U[1]],c[4][U[2]]aL,ca=sub(bO,l[1]),sub(bS,l[1])bJ=aP(aL)K,aG=bd(bJ-A),bd(aP(ca)-A)if D(K)<90 or D(aG)<90 then
ab,ac=be(K,-M,M),be(aG,-M,M)if D(K)>=90 or D(aG)>=90 then
bF=bp(aL,ca)if D(K)>=90 then
if bF>0 then ab=-M else ab=M end
else
if bF<0 then ac=-M else ac=M end
end
end
n,m=av(tan(ab)/L*E),av(tan(ac)/L*E)if n~=m then
q,an=aS(l[1],bO),aS(l[1],bS)aN=U[3]+90
cd=aN-bJ
cJ=q*sin(cd)aX=(q*cos(cd))if K~=ab then
q=aX/cos(aN-(ab+A))end
if aG~=ac then
an=aX/cos(aN-(ac+A))end
q,an=q*cos(ab),an*cos(ac)g=U[5]+6
cE=(n>m)if cE and I[g]~=0 then
am=I[3]&4>0
if am then
X=aZ[c[3][I[13-g]][6]]end
ak=c[3][I[g]]cA={ak[3],ak[4],ak[5]}j,c_,cp=aZ[ak[6]]for h,d in aB(cA)do
ai=d>0
af=P
if(ai or(h==3 and not(c_ and cp)))and(h==3 or am)then
bL,bU=0
if h<3 then
bU=h==1 and u(j[4],X[4])==0
F,z=j[3-h],(h==1 and u or r)(X[3-h],j[h])af=(F<z)==(h==2)and F~=z and j~=X
ai=af
F,z=r(F,z),u(F,z)if af then
if h==1 then
c_=P
else
cp=P
bL=I[3]&16>0 and u(j[2],X[2])-z or 0
end
end
else
if am then
F,z=r(u(j[1],X[1]),j[2]),u(r(j[2],X[2]),j[1])af=j~=X
else
F,z=j[1],j[2]end
end
F,z=F-l[2],z-l[2]cf,bI=F*aR,z*aR
if(af or ai)and not bU then
by=U[6]-ak[1]if I[4]==48 then
by=by-ay
end
cw,cL=cf/q,bI/q
cK,cN=cf/an,bI/an
bG,aA=0
if ai then
_=c[21][d][4]if(U[4]==bE or bo==I[4]or I[8])and _>0 then
d=_
end
au=c[21][d][3]x=1
if(h==3 and I[3]&16>0)or(h==1 and I[3]&8==0)then
x=-1
end
end
for g=n,m,-1 do
cM=bX[g]bc=(aN-A)-cM
f,bK=E-g
if f>=0 and f<=R-1 then
if a<aE[f]then
aM=(g-n)/(m-n)J,G=(cw*(1-aM)+cK*aM),(cL*(1-aM)+cN*aM)if D(G+J)-(G-J)<al then
if ai then
if J~=G then
bK=P
co=aX*tan(bc)aq=bN(r(((D(co)+D(aX))//bV)+1,16))bB=ah((u(co-cJ,0)-by)/(au*aq))cl=bB*aq
bP={f,v-J,v-G,d,bB,z-F,j[5],ak[2]+bL,P,au*aq,aq,x,not aA,h==3 and am}if cl>bG or(not aA)or g==m then
bG=cl-1+aq
aA=P
s[a][#s[a]+1]=bP
end
cs=bP
end
end
if af then
if h~=2 then
if G<T[f]then
aI[a][#aI[a]+1]={f,u(G,Y[f]),T[f],j}end
if h==3 then S=G else S=J end
if T[f]>S then T[f]=S end
end
if h~=1 then
if J>Y[f]then
aW[a][#aW[a]+1]={f,Y[f],r(J,T[f]),j}end
if h==3 then S=J else S=G end
if Y[f]<S then Y[f]=S end
end
if(T[f]<=Y[f])or(h==3 and(not am)and ai)then
aE[f]=a
bj=bj-1
end
end
end
end
end
if(not bK)and aA then
s[a][#s[a]+1],aA=cs
s[a][#s[a]][9]=ba
end
end
if#s[a]>0 then
s[a][#s[a]][9]=ba
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
function onDraw()aF=screen
local bC,bD,ae,bY=aF.drawTriangleF,aF.drawRectF,aF.setColor,aF.drawLine
cO={aW,aI}if bn then
e=c[24][c[19][8][at-3]]Z,ax=e[1],e[2]C=R/ceil(Z*L)bM=C*1
for a=0,ceil(Z*L),1 do
n=(Z/2-a-1+A/90*Z)%Z
m=(n%1-1)*C
n=ah(n)*ax
for o=0,ax-1,1 do
O=e[5+o+n]i=c[20][O]ae(i[1],i[2],i[3])bD(a*C+m,o*C,bM,bM)end
end
for a=#s,1,-1 do
for o=1,#s[a]do
d=s[a][o]if d[9]or d[13]then
if d[9]then
Q=s[a][o+1]else
Q=d
end
e=c[21][d[4]]e=c[21][d[4]+(cn%e[5])*c[19][3][2]+c[19][12][d[11]]]x=d[12]V=r(x,0)f=d[1]m=Q[1]cj=d[2-V]cG=Q[2-V]g=d[3+V]b_=Q[3+V]if not Q[9]then m=m+1 end
aD(d[7])cv=x*(d[2]-d[3])*e[3]/d[6]ct=x*(Q[2]-Q[3])*e[3]/Q[6]bQ=x>0 and r or u
bm=0
while g*x<cj*x and(bm<e[2]or not d[14])do
bZ=bQ(g+cv,cj)bA=bQ(b_+ct,cG)O=e[7+((V+d[8]//e[3])%e[2])+e[2]*((d[5])%e[1])]i=c[20][O]if i then
ae(i[1]*t,i[2]*t,i[3]*t)bC(f,g,f,bZ,m,bA)bC(f,g,m,b_,m,bA)end
g=bZ
b_=bA
V=V+x
bm=bm+1
end
end
end
for b=1,2 do
_=cO[b]ch={}as,ar,bh=al,-al
for o,d in aB(_[a])do
as=r(as,d[2])ar=u(ar,d[3])bh=d
e=c[22][d[4][b+2]]if e and not aY then
aD(d[4][5])i=c[20][e[5]]ae(i[1]*t,i[2]*t,i[3]*t)bY(d[1],v-d[2],d[1],ah(v-d[3]-1))end
end
if bh and aY then
j=bh[4]cu=(j[b]-l[2])bg=cos(A)bl=sin(A)for ag=ah(as+v),ceil(ar+v)do
ad=aR*cu/(v-ag)cg=bg*ad-l[1][1]bW=bl*ad-l[1][2]ci=-bl*ad+cg
cm=bg*ad+bW
cI=bl*ad+cg
cy=-bg*ad+bW
cz=(cI-ci)/R
cC=(cy-cm)/R
ch[ag]={cz,cC,ci,cm}end
for o,d in aB(_[a])do
if j[b+2]~=0 then
f=d[1]if f%aY==0 then
aD(j[5])p=j[b+2]e=c[22][p]e=c[22][p+(cn%e[4])]bH=E-(E-f)*L
as,ar=ah(d[2]+v),ceil(d[3]+v)au=e[3]for ag=as,ar do
aJ=ch[ag]cF=(aJ[3]+aJ[1]*bH)//au
cB=(aJ[4]+aJ[2]*bH)//au
O=6+(cB%e[1])+e[1]*(cF%e[2])i=c[20][e[O]]if i then
ae(i[1]*t,i[2]*t,i[3]*t)bY(f,al-ag,f+aY+1,al-ag)end
end
end
end
end
end
end
for o=1,#aK[a]do
_=k[aK[a][o]]if _[6]~=0 then
aL=sub(_,l[1])q=_[20]if q>1 then
K=bd(aP(aL)-A)q=q*cos(K)if D(K)<90 then
n=E-av(tan(K)/L*E)bc=av((180+K+A-_[3]+bt*4)/360*8)N=c[16][_[6]][1]if N~=0 and _[6]~=1 then
e=c[17][D(N)][bc%8+1]x=e<0 and-1 or 1
e=D(e)if e>0 then
e=c[23][e+c[19][12][r(bN(q//aV+1),8)]]Z,ax=e[1],e[2]C=E/(L*q)aO=C*bu
J=v+(l[2]-_[9])/q*aR
G=J-e[5]*aO
m=n-x*e[4]*C
C,aO=C*e[3],aO*e[3]aD(_[8][5])t=N>0 and t or 1
cq=C
cD=cq*bu
cH=_[4]and c[15][_[4]][23]&8>0
for g=0,Z-1 do
n=m+g*C*x
if a<=aE[be(av(n),0,R-1)]then
for h=0,ax-1 do
O=e[7+h+g*ax]if O~=0 then
if cH then
bq=bq%50+1
ae(0,0,0,r(75*c[13][2][bq],255))else
i=c[20][O]ae(i[1]*t,i[2]*t,i[3]*t)end
bD(n,G+h*aO,cq,cD)end
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
bt=bt+1
end
