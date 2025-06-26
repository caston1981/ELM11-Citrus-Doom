
A=math
w=A.max
r=A.min
E=A.abs
ae=A.floor
ceil=A.ceil
sqrt=A.sqrt
J=input.getNumber
bg=input.getBool
pi=A.pi/180
bd=false
M=true
aF=ipairs
co=table.remove
bq=string
function bc(b,p)return b[1]*p[2]-b[2]*p[1]end
function sub(b,p)return{(b[1]-p[1]),(b[2]-p[2])}end
function bv(b)return((b+180)%360)-180 end
function sin(b)return A.sin(b*pi)end
function cos(b)return A.cos(b*pi)end
function tan(b)return A.tan(b*pi)end
function cP(b)return A.atan(b)/pi end
function aY(b)return A.atan(b[2],b[1])/pi end
function bA(b,p,_)return r(w(p,b),_)end
function ay(b)return ae(b+.5)end
function aV(b,p)return sqrt(((b[1]-p[1])^2)+((b[2]-p[2])^2))end
function bL(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
function aS(b)q=r(b/255+aK,1)^2.2 end
c={}bb=1
av=3
an=M
l={{0,0},0}C=0
R=288
B=144
af=128
v=64
ba={}aX=500
bV=250
cj=1
aj=2^15
bB=3002
bi=0
ao=0
aD=0
bz=1.2
L=52
O=tan(L)aN=v*bz*R/af/O
V=1
bD={}for a=-B,B do bD[a]=aY({1,a/B*O})end
function bw(a)if a<aj then
local t,bn=c[7][a]bn=0<bc({t[3],t[4]},sub(l[1],t))and 8 or 7
bw(t[bn])bw(t[15-bn])else
at[#at+1]=a-aj
end
end
function aI(a,b)if a<aj then
t=c[7][a]return aI(t[0<bc({t[3],t[4]},sub(b,t))and 8 or 7],b)else
return a-aj
end
end
function bx(b)t=c[5][c[6][b][2]]return aU[c[3][c[2][t[4]][t[5]+6]][6]]end
function onTick()bo=0
for o=1,3 do
if bg(9)and(not bh)or not c[21]then
bs=property.getText(bb)a=1
F=""
_=bq.sub(bs,a,a)while _~=""do
ap=bq.byte(_)if ap>64 then
F=(F..ap-65)+0
if V==1 then
bO=F
c[F]=c[F]or{}elseif V==2 then
cG=F
aw=0
elseif V==3 then
bl=F
else
if aw==0 then
aw=cG
bl=bl-1
bf={}c[bO][#c[bO]+1]=bf
end
bf[#bf+1]=F
aw=aw-1
V=w(aw,bl)>0 and V-1 or 0
end
V=V+1
F=""
else
F=F.._
end
a=a+1
_=bq.sub(bs,a,a)end
bb=bb+1
bh=bs==""
end
end
if bh then
if J(10)>0 then
an=M
av=J(10)end
if cj>0 and not an then
aa={}aE[#aE+1]=aa
az=6
_=J(az)while _~=0 do
am={}aa[#aa+1]=am
for a=0,8 do
am[a+1]=J(az+a)end
az=az+9
_=J(az)end
end
if bg(1)then
bY=0
ck=J(1)cj=J(3)aD=aD+1
bN=aD//10
if an then
for a=1,10 do
c[a]=c[a+10*av]end
k=c[1]cO={k[1][1],k[1][2]}for a=#k,1,-1 do
_=k[a]_=_[5]&(bB-3000)>0 or co(k,a)end
aU=c[8]aE={}av=av+1
end
if J(2)>0 then
_=c[2][J(2)]if _ then
b=_[4]if b>0 then
if b==3008 then
aL=_[5]>0 and _[5]elseif b>3004 then
aX=w(aX+3*(_[4]-3006),1)bV=aX/2
elseif b>3000 then
bB=_[4]end
bY=J(2)if b<3000 and c[9][_[5]][7]==0 then
_[8]=1
end
end
end
end
if bg(3)and ck~=1 and ck~=3 and aK<1 then
aK=.1
ao=5
else
ao=ao-1
if ao<1 then
aK=0
end
end
for a=1,#aE do
aa=aE[a]for o=1,#aa do
am=aa[o]_=am[1]if _>aj then
_=aU[_-aj]for g=1,6 do
_[g]=am[g+1]end
elseif _<0 then
ap=c[1][-_]if ap and c[15][ap[4]or 1][29]=="light amp index" then
aK=1
ao=4200
end
while-_>#k do
k[#k+1]=bd
end
co(k,-_)else
k[_]=k[_]or{}_=k[_]for g=1,8 do
_[c[19][1][g]]=am[g+1]end
_[15]=0
_[7]=aI(#c[7],_)_[8]=bx(_[7])end
end
end
aE={}for a=1,#c[6]do
ba[a]={}end
for a,_ in aF(k)do
if an then
_[7]=aI(#c[7],_)_[8]=bx(_[7])_[9]=_[8][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
end
if _ and a>1 then
bp=0
for o,d in aF({1,2,9})do
_[d]=_[d]+_[d+10]bp=bp+_[d+10]end
if bp~=0 then
_[7]=aI(#c[7],_)_[8]=bx(_[7])end
_[15]=_[15]+1
_[20]=aV(_,l[1])N=c[16][_[6]]if N then
if N[5]>0 then
_[9]=_[8][1]end
if _[15]>=N[2]and N[2]~=-1 then
_[6]=N[4]_[15]=0
end
end
ba[_[7]][#ba[_[7]]+1]=a
end
end
_,an=k[1]cH=r(aV(_,l[1])^2/4,16)l[1]={_[1],_[2]}C=_[3]l[2]=_[9]+41+cH*sin(aD*20)/4
at={}bw(#c[7])b_={}z={}aT={}aR={}W={}Z={}aZ={}by=R
for a=0,R-1 do
b_[a],W[a],Z[a]=#c[6]+2,v+1,-v
end
a=1
while a<=#at and by>0 do
_=c[6][at[a]]aT[a]={}aR[a]={}z[a]={}aZ[a]=ba[at[a]]table.sort(aZ[a],function(b,p)return k[b][20]>k[p][20]end)for o=_[2],_[1]+_[2]-1 do
X=c[5][o]H=c[2][X[4]]ci,bR=c[4][X[1]],c[4][X[2]]aH,bX=sub(ci,l[1]),sub(bR,l[1])cg=aY(aH)I,aQ=bv(cg-C),bv(aY(bX)-C)if E(I)<90 or E(aQ)<90 then
ah,ai=bA(I,-L,L),bA(aQ,-L,L)if E(I)>=90 or E(aQ)>=90 then
cq=bc(aH,bX)if E(I)>=90 then
if cq>0 then ah=-L else ah=L end
else
if cq<0 then ai=-L else ai=L end
end
end
m,n=ay(tan(ah)/O*B),ay(tan(ai)/O*B)if m~=n then
s,aA=aV(l[1],ci),aV(l[1],bR)aG=X[3]+90
cc=aG-cg
cB=s*sin(cc)aO=(s*cos(cc))if I~=ah then
s=aO/cos(aG-(ah+C))end
if aQ~=ai then
aA=aO/cos(aG-(ai+C))end
s,aA=s*cos(ah),aA*cos(ai)g=X[5]+6
cN=(m>n)if cN and H[g]~=0 then
as=H[3]&4>0
if as then
S=aU[c[3][H[13-g]][6]]end
ak=c[3][H[g]]ct={ak[3],ak[4],ak[5]}j,bQ,bF=aU[ak[6]]for h,d in aF(ct)do
al=d>0
ab=M
if(al or(h==3 and not(bQ and bF)))and(h==3 or as)then
bU=0
cl=M
if h<3 then
cl=h~=1 or w(j[4],S[4])~=0
D,y=j[3-h],(h==1 and w or r)(S[3-h],j[h])ab=(D<y)==(h==2)and D~=y and j~=S
al=ab
D,y=r(D,y),w(D,y)if ab then
if h==1 then
bQ=M
else
bF=M
bU=H[3]&16>0 and w(j[2],S[2])-y or 0
end
end
else
if as then
D,y=r(w(j[1],S[1]),j[2]),w(r(j[2],S[2]),j[1])ab=j~=S
else
D,y=j[1],j[2]end
end
D,y=D-l[2],y-l[2]cm,bM=D*aN,y*aN
if(ab or al)and cl then
bC=X[6]-ak[1]if H[4]==48 then
bC=bC-aD
end
cL,cK=cm/s,bM/s
cM,cJ=cm/aA,bM/aA
bK,aC=0
if al then
_=c[21][d][4]if(X[4]==bY or bB==H[4]or H[8])and _>0 then
d=_
end
aq=c[21][d][3]u=1
if(h==3 and H[3]&16>0)or(h==1 and H[3]&8==0)then
u=-1
end
end
for g=m,n,-1 do
cD=bD[g]bm=(aG-C)-cD
f,bH=B-g
if f>=0 and f<=R-1 then
if a<b_[f]then
aP=(g-m)/(n-m)K,G=(cL*(1-aP)+cM*aP),(cK*(1-aP)+cJ*aP)if E(G+K)-(G-K)<af then
if al then
if K~=G then
bH=M
cn=aO*tan(bm)ar=bL(r(((E(cn)+E(aO))//bV)+1,16))bI=ae((w(cn-cB,0)-bC)/(aq*ar))bJ=bI*ar
bP={f,v-K,v-G,d,bI,y-D,j[5],ak[2]+bU,M,aq*ar,ar,u,not aC,h==3 and as}if bJ>bK or(not aC)or g==n then
bK=bJ-1+ar
aC=M
z[a][#z[a]+1]=bP
end
c_=bP
end
end
if ab then
if h~=2 then
if G<W[f]then
aR[a][#aR[a]+1]={f,w(G,Z[f]),W[f],j}end
if h==3 then Y=G else Y=K end
if W[f]>Y then W[f]=Y end
end
if h~=1 then
if K>Z[f]then
aT[a][#aT[a]+1]={f,Z[f],r(K,W[f]),j}end
if h==3 then Y=K else Y=G end
if Z[f]<Y then Z[f]=Y end
end
if(W[f]<=Z[f])or(h==3 and(not as)and al)then
b_[f]=a
by=by-1
end
end
end
end
end
if(not bH)and aC then
c_[9]=bd
z[a][#z[a]+1],aC=c_
end
end
if#z[a]>0 then
z[a][#z[a]][9]=bd
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
function onDraw()aM=screen
local ce,bZ,ag,bW=aM.drawTriangleF,aM.drawRectF,aM.setColor,aM.drawLine
cF={aT,aR}if bh then
e=c[24][c[19][8][av-3]]T,ax=e[1],e[2]x=R/ceil(T*O)for a=0,ceil(T*O),1 do
m=(T/2-a-1+C/90*T)%T
n=(m%1-1)*x
m=ae(m)*ax
for o=0,ax-1,1 do
P=e[5+o+m]i=c[20][P]ag(i[1],i[2],i[3])bZ(a*x+n,o*x,x,x)end
end
for a=#z,1,-1 do
for o=1,#z[a]do
d=z[a][o]if d[9]or d[13]then
if d[9]then
Q=z[a][o+1]else
Q=d
end
e=c[21][d[4]]e=c[21][d[4]+(bN%e[5])*"number of wall mipmap levels"+c[19][12][d[11]]]u=d[12]U=r(u,0)f=d[1]n=Q[1]cp=d[2-U]cC=Q[2-U]g=d[3+U]bj=Q[3+U]if not Q[9]then n=n+1 end
aS(d[7])cI=u*(d[2]-d[3])*e[3]/d[6]cs=u*(Q[2]-Q[3])*e[3]/Q[6]cb=u>0 and r or w
br=0
while g*u<cp*u and(br<e[2]or not d[14])do
bE=cb(g+cI,cp)bu=cb(bj+cs,cC)P=e[7+((U+d[8]//e[3])%e[2])+e[2]*((d[5])%e[1])]i=c[20][P]if i then
ag(i[1]*q,i[2]*q,i[3]*q)ce(f,g,f,bE,n,bu)ce(f,g,n,bj,n,bu)end
g=bE
bj=bu
U=U+u
br=br+1
end
end
end
for b=1,2 do
_=cF[b]cd={}aB,au,be=af,-af
for o,d in aF(_[a])do
aB=r(aB,d[2])au=w(au,d[3])be=d
e=c[22][d[4][b+2]]if e and not aL then
aS(d[4][5])i=c[20][e[5]]ag(i[1]*q,i[2]*q,i[3]*q)bW(d[1],v-d[2],d[1],ae(v-d[3]-1))end
end
if be and aL then
j=be[4]cE=(j[b]-l[2])bt=cos(C)bk=sin(C)for ac=ae(aB+v),ceil(au+v)do
ad=aN*cE/(v-ac)bG=bt*ad-l[1][1]ca=bk*ad-l[1][2]ch=-bk*ad+bG
bS=bt*ad+ca
cv=bk*ad+bG
cu=-bt*ad+ca
cx=(cv-ch)/R
cw=(cu-bS)/R
cd[ac]={cx,cw,ch,bS}end
for o,d in aF(_[a])do
if j[b+2]~=0 then
f=d[1]if f%aL==0 then
aS(j[5])p=j[b+2]e=c[22][p]e=c[22][p+(bN%e[4])]cf=B-(B-f)*O
aB,au=ae(d[2]+v),ceil(d[3]+v)aq=e[3]for ac=aB,au do
aW=cd[ac]cr=(aW[3]+aW[1]*cf)//aq
cy=(aW[4]+aW[2]*cf)//aq
P=6+(cy%e[1])+e[1]*(cr%e[2])i=c[20][e[P]]if i then
ag(i[1]*q,i[2]*q,i[3]*q)bW(f,af-ac,f+aL+1,af-ac)end
end
end
end
end
end
end
for o=1,#aZ[a]do
_=k[aZ[a][o]]if _[6]~=0 then
aH=sub(_,l[1])s=_[20]if s>1 then
I=bv(aY(aH)-C)s=s*cos(I)if E(I)<90 then
m=B-ay(tan(I)/O*B)bm=ay((180+I+C-_[3]+bo*4)/360*8)N=c[16][_[6]][1]if N~=0 and _[6]~=1 then
e=c[17][E(N)][bm%8+1]u=e<0 and-1 or 1
e=E(e)if e>0 then
e=c[23][e+c[19][12][r(bL(s//aX+1),8)]]T,ax=e[1],e[2]x=B/(O*s)aJ=x*bz
K=v+(l[2]-_[9])/s*aN
G=K-e[5]*aJ
n=m-u*e[4]*x
x,aJ=x*e[3],aJ*e[3]aS(_[8][5])q=N>0 and q or 1
bT=x
cz=bT*bz
cA=c[15][_[4]or 1][23]&8>0
for g=0,T-1 do
m=n+g*x*u
if a<=b_[bA(ay(m),0,R-1)]then
for h=0,ax-1 do
P=e[7+h+g*ax]if P~=0 then
if cA then
bi=bi%50+1
ag(0,0,0,r(75*c[13][2][bi],255))else
i=c[20][P]ag(i[1]*q,i[2]*q,i[3]*q)end
bZ(m,G+h*aJ,bT,cz)end
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
bo=bo+1
end
