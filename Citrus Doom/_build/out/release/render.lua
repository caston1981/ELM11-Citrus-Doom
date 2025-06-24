
x=math
w=x.max
r=x.min
C=x.abs
ab=x.floor
ceil=x.ceil
sqrt=x.sqrt
G=input.getNumber
bj=input.getBool
pi=x.pi/180
bf=false
M=true
aw=ipairs
bM=table.remove
bm=string
function bd(b,n)return b[1]*n[2]-b[2]*n[1]end
function sub(b,n)return{(b[1]-n[1]),(b[2]-n[2])}end
function bg(b)return((b+180)%360)-180 end
function sin(b)return x.sin(b*pi)end
function cos(b)return x.cos(b*pi)end
function tan(b)return x.tan(b*pi)end
function cP(b)return x.atan(b)/pi end
function aK(b)return x.atan(b[2],b[1])/pi end
function by(b,n,_)return r(w(n,b),_)end
function az(b)return ab(b+.5)end
function aR(b,n)return sqrt(((b[1]-n[1])^2)+((b[2]-n[2])^2))end
function bX(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
function aH(b)q=r(b/255+aL,1)^2.2 end
c={}bq=1
av=3
aE=M
l={{0,0},0}F=0
P=288
B=144
ac=128
v=64
aY={}aG=500
bW=250
bR=1
ae=2^15
bo=3002
bu=0
aB=0
ax=0
bb=1.2
O=52
N=tan(O)aJ=v*bb*P/ac/N
V=1
cl={}for a=-B,B do cl[a]=aK({1,a/B*N})end
function bh(a)if a<ae then
local u,bA=c[7][a]bA=0<bd({u[3],u[4]},sub(l[1],u))and 8 or 7
bh(u[bA])bh(u[15-bA])else
ar[#ar+1]=a-ae
end
end
function aS(a,b)if a<ae then
u=c[7][a]return aS(u[0<bd({u[3],u[4]},sub(b,u))and 8 or 7],b)else
return a-ae
end
end
function bz(b)u=c[5][c[6][b][2]]return aI[c[3][c[2][u[4]][u[5]+6]][6]]end
function onTick()bx=0
for p=1,3 do
if bj(9)and(not bk)or not c[21]then
bi=property.getText(bq)a=1
E=""
_=bm.sub(bi,a,a)while _~=""do
ay=bm.byte(_)if ay>64 then
E=(E..ay-65)+0
if V==1 then
bY=E
c[E]=c[E]or{}elseif V==2 then
cF=E
au=0
elseif V==3 then
bC=E
else
if au==0 then
au=cF
bC=bC-1
be={}c[bY][#c[bY]+1]=be
end
be[#be+1]=E
au=au-1
V=w(au,bC)>0 and V-1 or 0
end
V=V+1
E=""
else
E=E.._
end
a=a+1
_=bm.sub(bi,a,a)end
bq=bq+1
bk=bi==""
end
end
if bk then
if G(10)>0 then
aE=M
av=G(10)end
if bR>0 and not aE then
ag={}aC[#aC+1]=ag
an=6
_=G(an)while _~=0 do
am={}ag[#ag+1]=am
for a=0,8 do
am[a+1]=G(an+a)end
an=an+9
_=G(an)end
end
if bj(1)then
c_=0
bV=G(1)bR=G(3)ax=ax+1
cp=ax//10
if aE then
for a=1,10 do
c[a]=c[a+10*av]end
k=c[1]cO={k[1][1],k[1][2]}for a=#k,1,-1 do
_=k[a]_=_[5]&(bo-3000)>0 or bM(k,a)end
aI=c[8]aC={}av=av+1
end
if G(2)>0 then
_=c[2][G(2)]if _ then
b=_[4]if b>0 then
if b==3008 then
aQ=_[5]>0 and _[5]elseif b>3004 then
aG=w(aG+3*(_[4]-3006),1)bW=aG/2
elseif b>3000 then
bo=_[4]end
c_=G(2)if b<3000 and c[9][_[5]][7]==0 then
_[8]=1
end
end
end
end
if bj(3)and bV~=1 and bV~=3 and aL<1 then
aL=.1
aB=5
else
aB=aB-1
if aB<1 then
aL=0
end
end
for a=1,#aC do
ag=aC[a]for p=1,#ag do
am=ag[p]_=am[1]if _>ae then
_=aI[_-ae]for g=1,6 do
_[g]=am[g+1]end
elseif _<0 then
ay=c[1][-_]if ay and c[15][ay[4]or 1][29]=="light amp index" then
aL=1
aB=4200
end
while-_>#k do
k[#k+1]=bf
end
bM(k,-_)else
k[_]=k[_]or{}_=k[_]for g=1,8 do
_[c[19][1][g]]=am[g+1]end
_[15]=0
_[7]=aS(#c[7],_)_[8]=bz(_[7])end
end
end
aC={}for a=1,#c[6]do
aY[a]={}end
for a,_ in aw(k)do
if aE then
_[7]=aS(#c[7],_)_[8]=bz(_[7])_[9]=_[8][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
end
if _ and a>1 then
bl=0
for p,d in aw({1,2,9})do
_[d]=_[d]+_[d+10]bl=bl+_[d+10]end
if bl~=0 then
_[7]=aS(#c[7],_)_[8]=bz(_[7])end
_[15]=_[15]+1
_[20]=aR(_,l[1])L=c[16][_[6]]if L then
if L[5]>0 then
_[9]=_[8][1]end
if _[15]>=L[2]and L[2]~=-1 then
_[6]=L[4]_[15]=0
end
end
aY[_[7]][#aY[_[7]]+1]=a
end
end
_,aE=k[1]cD=r(aR(_,l[1])^2/4,16)l[1]={_[1],_[2]}F=_[3]l[2]=_[9]+41+cD*sin(ax*20)/4
ar={}bh(#c[7])aT={}z={}aX={}aM={}T={}Z={}aU={}bv=P
for a=0,P-1 do
aT[a],T[a],Z[a]=#c[6]+2,v+1,-v
end
a=1
while a<=#ar and bv>0 do
_=c[6][ar[a]]aX[a]={}aM[a]={}z[a]={}aU[a]=aY[ar[a]]table.sort(aU[a],function(b,n)return k[b][20]>k[n][20]end)for p=_[2],_[1]+_[2]-1 do
S=c[5][p]H=c[2][S[4]]bQ,ci=c[4][S[1]],c[4][S[2]]aZ,ck=sub(bQ,l[1]),sub(ci,l[1])cb=aK(aZ)K,aP=bg(cb-F),bg(aK(ck)-F)if C(K)<90 or C(aP)<90 then
ad,ah=by(K,-O,O),by(aP,-O,O)if C(K)>=90 or C(aP)>=90 then
bU=bd(aZ,ck)if C(K)>=90 then
if bU>0 then ad=-O else ad=O end
else
if bU<0 then ah=-O else ah=O end
end
end
o,m=az(tan(ad)/N*B),az(tan(ah)/N*B)if o~=m then
s,aA=aR(l[1],bQ),aR(l[1],ci)aV=S[3]+90
cf=aV-cb
ct=s*sin(cf)aW=(s*cos(cf))if K~=ad then
s=aW/cos(aV-(ad+F))end
if aP~=ah then
aA=aW/cos(aV-(ah+F))end
s,aA=s*cos(ad),aA*cos(ah)g=S[5]+6
cu=(o>m)if cu and H[g]~=0 then
as=H[3]&4>0
if as then
X=aI[c[3][H[13-g]][6]]end
ai=c[3][H[g]]cI={ai[3],ai[4],ai[5]}j,bZ,cd=aI[ai[6]]for i,d in aw(cI)do
aj=d>0
al=M
if(aj or(i==3 and not(bZ and cd)))and(i==3 or as)then
bS=0
bP=M
if i<3 then
bP=i~=1 or w(j[4],X[4])~=0
D,y=j[3-i],(i==1 and w or r)(X[3-i],j[i])al=(D<y)==(i==2)and D~=y and j~=X
aj=al
D,y=r(D,y),w(D,y)if al then
if i==1 then
bZ=M
else
cd=M
bS=H[3]&16>0 and w(j[2],X[2])-y or 0
end
end
else
if as then
D,y=r(w(j[1],X[1]),j[2]),w(r(j[2],X[2]),j[1])al=j~=X
else
D,y=j[1],j[2]end
end
D,y=D-l[2],y-l[2]ch,bT=D*aJ,y*aJ
if(al or aj)and bP then
br=S[6]-ai[1]if H[4]==48 then
br=br-ax
end
cM,cN=ch/s,bT/s
cw,cJ=ch/aA,bT/aA
bL,aF=0
if aj then
_=c[21][d][4]if(S[4]==c_ or bo==H[4]or H[8])and _>0 then
d=_
end
ao=c[21][d][3]t=1
if(i==3 and H[3]&16>0)or(i==1 and H[3]&8==0)then
t=-1
end
end
for g=o,m,-1 do
cC=cl[g]bp=(aV-F)-cC
f,bF=B-g
if f>=0 and f<=P-1 then
if a<aT[f]then
aO=(g-o)/(m-o)J,I=(cM*(1-aO)+cw*aO),(cN*(1-aO)+cJ*aO)if C(I+J)-(I-J)<ac then
if aj then
if J~=I then
bF=M
ce=aW*tan(bp)aD=bX(r(((C(ce)+C(aW))//bW)+1,16))ca=ab((w(ce-ct,0)-br)/(ao*aD))cn=ca*aD
cg={f,v-J,v-I,d,ca,y-D,j[5],ai[2]+bS,M,ao*aD,aD,t,not aF,i==3 and as}if cn>bL or(not aF)or g==m then
bL=cn-1+aD
aF=M
z[a][#z[a]+1]=cg
end
bG=cg
end
end
if al then
if i~=2 then
if I<T[f]then
aM[a][#aM[a]+1]={f,w(I,Z[f]),T[f],j}end
if i==3 then W=I else W=J end
if T[f]>W then T[f]=W end
end
if i~=1 then
if J>Z[f]then
aX[a][#aX[a]+1]={f,Z[f],r(J,T[f]),j}end
if i==3 then W=J else W=I end
if Z[f]<W then Z[f]=W end
end
if(T[f]<=Z[f])or(i==3 and(not as)and aj)then
aT[f]=a
bv=bv-1
end
end
end
end
end
if(not bF)and aF then
bG[9]=bf
z[a][#z[a]+1],aF=bG
end
end
if#z[a]>0 then
z[a][#z[a]][9]=bf
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
function onDraw()b_=screen
local bH,co,af,bK=b_.drawTriangleF,b_.drawRectF,b_.setColor,b_.drawLine
cz={aX,aM}if bk then
e=c[24][c[19][8][av-3]]U,ap=e[1],e[2]A=P/ceil(U*N)for a=0,ceil(U*N),1 do
o=(U/2-a-1+F/90*U)%U
m=(o%1-1)*A
o=ab(o)*ap
for p=0,ap-1,1 do
Q=e[5+p+o]h=c[20][Q]af(h[1],h[2],h[3])co(a*A+m,p*A,A,A)end
end
for a=#z,1,-1 do
for p=1,#z[a]do
d=z[a][p]if d[9]or d[13]then
if d[9]then
R=z[a][p+1]else
R=d
end
e=c[21][d[4]]e=c[21][d[4]+(cp%e[5])*"number of wall mipmap levels"+c[19][12][d[11]]]t=d[12]Y=r(t,0)f=d[1]m=R[1]bI=d[2-Y]cB=R[2-Y]g=d[3+Y]bs=R[3+Y]if not R[9]then m=m+1 end
aH(d[7])cv=t*(d[2]-d[3])*e[3]/d[6]cx=t*(R[2]-R[3])*e[3]/R[6]cc=t>0 and r or w
bt=0
while g*t<bI*t and(bt<e[2]or not d[14])do
cm=cc(g+cv,bI)bc=cc(bs+cx,cB)Q=e[7+((Y+d[8]//e[3])%e[2])+e[2]*((d[5])%e[1])]h=c[20][Q]if h then
af(h[1]*q,h[2]*q,h[3]*q)bH(f,g,f,cm,m,bc)bH(f,g,m,bs,m,bc)end
g=cm
bs=bc
Y=Y+t
bt=bt+1
end
end
end
for b=1,2 do
_=cz[b]cj={}aq,at,bB=ac,-ac
for p,d in aw(_[a])do
aq=r(aq,d[2])at=w(at,d[3])bB=d
e=c[22][d[4][b+2]]if e and not aQ then
aH(d[4][5])h=c[20][e[5]]af(h[1]*q,h[2]*q,h[3]*q)bK(d[1],v-d[2],d[1],ab(v-d[3]-1))end
end
if bB and aQ then
j=bB[4]cH=(j[b]-l[2])bw=cos(F)bn=sin(F)for ak=ab(aq+v),ceil(at+v)do
aa=aJ*cH/(v-ak)bJ=bw*aa-l[1][1]cq=bn*aa-l[1][2]bN=-bn*aa+bJ
bD=bw*aa+cq
cy=bn*aa+bJ
cr=-bw*aa+cq
cA=(cy-bN)/P
cG=(cr-bD)/P
cj[ak]={cA,cG,bN,bD}end
for p,d in aw(_[a])do
if j[b+2]~=0 then
f=d[1]if f%aQ==0 then
aH(j[5])n=j[b+2]e=c[22][n]e=c[22][n+(cp%e[4])]bO=B-(B-f)*N
aq,at=ab(d[2]+v),ceil(d[3]+v)ao=e[3]for ak=aq,at do
aN=cj[ak]cK=(aN[3]+aN[1]*bO)//ao
cL=(aN[4]+aN[2]*bO)//ao
Q=6+(cL%e[1])+e[1]*(cK%e[2])h=c[20][e[Q]]if h then
af(h[1]*q,h[2]*q,h[3]*q)bK(f,ac-ak,f+aQ+1,ac-ak)end
end
end
end
end
end
end
for p=1,#aU[a]do
_=k[aU[a][p]]if _[6]~=0 then
aZ=sub(_,l[1])s=_[20]if s>1 then
K=bg(aK(aZ)-F)s=s*cos(K)if C(K)<90 then
o=B-az(tan(K)/N*B)bp=az((180+K+F-_[3]+bx*4)/360*8)L=c[16][_[6]][1]if L~=0 and _[6]~=1 then
e=c[17][C(L)][bp%8+1]t=e<0 and-1 or 1
e=C(e)if e>0 then
e=c[23][e+c[19][12][r(bX(s//aG+1),8)]]U,ap=e[1],e[2]A=B/(N*s)ba=A*bb
J=v+(l[2]-_[9])/s*aJ
I=J-e[5]*ba
m=o-t*e[4]*A
A,ba=A*e[3],ba*e[3]aH(_[8][5])q=L>0 and q or 1
bE=A
cE=bE*bb
cs=c[15][_[4]or 1][23]&8>0
for g=0,U-1 do
o=m+g*A*t
if a<=aT[by(az(o),0,P-1)]then
for i=0,ap-1 do
Q=e[7+i+g*ap]if Q~=0 then
if cs then
bu=bu%50+1
af(0,0,0,r(75*c[13][2][bu],255))else
h=c[20][Q]af(h[1]*q,h[2]*q,h[3]*q)end
co(o,I+i*ba,bE,cE)end
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
bx=bx+1
end
