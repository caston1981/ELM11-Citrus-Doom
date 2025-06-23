
A=math
u=A.max
q=A.min
D=A.abs
ak=A.floor
ceil=A.ceil
sqrt=A.sqrt
I=input.getNumber
be=input.getBool
pi=A.pi/180
bs=false
L=true
ar=ipairs
cq=table.remove
bo=string
function bt(b,p)return b[1]*p[2]-b[2]*p[1]end
function sub(b,p)return{(b[1]-p[1]),(b[2]-p[2])}end
function bp(b)return((b+180)%360)-180 end
function sin(b)return A.sin(b*pi)end
function cos(b)return A.cos(b*pi)end
function tan(b)return A.tan(b*pi)end
function cO(b)return A.atan(b)/pi end
function aI(b)return A.atan(b[2],b[1])/pi end
function bC(b,p,_)return q(u(p,b),_)end
function ay(b)return ak(b+.5)end
function aY(b,p)return sqrt(((b[1]-p[1])^2)+((b[2]-p[2])^2))end
function bV(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
function aV(b)r=q(b/255+b_,1)^2.2 end
c={}bj=1
aA=3
aw=L
l={{0,0},0}C=0
P=288
B=144
aa=128
v=64
aW={}ba=500
bD=250
bN=1
al=2^15
bk=3002
bh=0
aE=0
ap=0
bl=1.2
O=52
N=tan(O)aR=v*bl*P/aa/N
S=1
bS={}for a=-B,B do bS[a]=aI({1,a/B*N})end
function bm(a)if a<al then
local w,bb=c[7][a]bb=0<bt({w[3],w[4]},sub(l[1],w))and 8 or 7
bm(w[bb])bm(w[15-bb])else
az[#az+1]=a-al
end
end
function aH(a,b)if a<al then
w=c[7][a]return aH(w[0<bt({w[3],w[4]},sub(b,w))and 8 or 7],b)else
return a-al
end
end
function by(b)w=c[5][c[6][b][2]]return aS[c[3][c[2][w[4]][w[5]+6]][6]]end
function onTick()bx=0
for n=1,3 do
if be(9)and(not bg)or not c[21]then
bc=property.getText(bj)a=1
F=""
_=bo.sub(bc,a,a)while _~=""do
at=bo.byte(_)if at>64 then
F=(F..at-65)+0
if S==1 then
bJ=F
c[F]=c[F]or{}elseif S==2 then
cC=F
aC=0
elseif S==3 then
bn=F
else
if aC==0 then
aC=cC
bn=bn-1
bB={}c[bJ][#c[bJ]+1]=bB
end
bB[#bB+1]=F
aC=aC-1
S=u(aC,bn)>0 and S-1 or 0
end
S=S+1
F=""
else
F=F.._
end
a=a+1
_=bo.sub(bc,a,a)end
bj=bj+1
bg=bc==""
end
end
if bg then
if I(10)>0 then
aw=L
aA=I(10)end
if bN>0 and not aw then
am={}aB[#aB+1]=am
av=6
_=I(av)while _~=0 do
ae={}am[#am+1]=ae
for a=0,8 do
ae[a+1]=I(av+a)end
av=av+9
_=I(av)end
end
if be(1)then
bZ=0
bK=I(1)bN=I(3)ap=ap+1
bW=ap//10
if aw then
for a=1,10 do
c[a]=c[a+10*aA]end
k=c[1]cP={k[1][1],k[1][2]}for a=#k,1,-1 do
_=k[a]_=_[5]&(bk-3000)>0 or cq(k,a)end
aS=c[8]aB={}aA=aA+1
end
if I(2)>0 then
_=c[2][I(2)]if _ then
b=_[4]if b>0 then
if b==3008 then
aN=_[5]>0 and _[5]elseif b>3004 then
ba=u(ba+3*(_[4]-3006),1)bD=ba/2
elseif b>3000 then
bk=_[4]end
bZ=I(2)if b<3000 and c[9][_[5]][7]==0 then
_[8]=1
end
end
end
end
if be(3)and bK~=1 and bK~=3 and b_<1 then
b_=.1
aE=5
else
aE=aE-1
if aE<1 then
b_=0
end
end
for a=1,#aB do
am=aB[a]for n=1,#am do
ae=am[n]_=ae[1]if _>al then
_=aS[_-al]for g=1,6 do
_[g]=ae[g+1]end
elseif _<0 then
at=c[1][-_]if at and c[15][at[4]or 1][29]=="light amp index" then
b_=1
aE=4200
end
while-_>#k do
k[#k+1]=bs
end
cq(k,-_)else
k[_]=k[_]or{}_=k[_]for g=1,8 do
_[c[19][1][g]]=ae[g+1]end
_[15]=0
_[7]=aH(#c[7],_)_[8]=by(_[7])end
end
end
aB={}for a=1,#c[6]do
aW[a]={}end
for a,_ in ar(k)do
if aw then
_[7]=aH(#c[7],_)_[8]=by(_[7])_[9]=_[8][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
end
if _ and a>1 then
bu=0
for n,d in ar({1,2,9})do
_[d]=_[d]+_[d+10]bu=bu+_[d+10]end
if bu~=0 then
_[7]=aH(#c[7],_)_[8]=by(_[7])end
_[15]=_[15]+1
_[20]=aY(_,l[1])M=c[16][_[6]]if M then
if M[5]>0 then
_[9]=_[8][1]end
if _[15]>=M[2]and M[2]~=-1 then
_[6]=M[4]_[15]=0
end
end
aW[_[7]][#aW[_[7]]+1]=a
end
end
_,aw=k[1]cN=q(aY(_,l[1])^2/4,16)l[1]={_[1],_[2]}C=_[3]l[2]=_[9]+41+cN*sin(ap*20)/4
az={}bm(#c[7])aL={}x={}aG={}aQ={}T={}Y={}aJ={}bq=P
for a=0,P-1 do
aL[a],T[a],Y[a]=#c[6]+2,v+1,-v
end
a=1
while a<=#az and bq>0 do
_=c[6][az[a]]aG[a]={}aQ[a]={}x[a]={}aJ[a]=aW[az[a]]table.sort(aJ[a],function(b,p)return k[b][20]>k[p][20]end)for n=_[2],_[1]+_[2]-1 do
U=c[5][n]H=c[2][U[4]]bU,bL=c[4][U[1]],c[4][U[2]]aK,bI=sub(bU,l[1]),sub(bL,l[1])bG=aI(aK)J,aX=bp(bG-C),bp(aI(bI)-C)if D(J)<90 or D(aX)<90 then
ac,ai=bC(J,-O,O),bC(aX,-O,O)if D(J)>=90 or D(aX)>=90 then
bE=bt(aK,bI)if D(J)>=90 then
if bE>0 then ac=-O else ac=O end
else
if bE<0 then ai=-O else ai=O end
end
end
m,o=ay(tan(ac)/N*B),ay(tan(ai)/N*B)if m~=o then
s,aD=aY(l[1],bU),aY(l[1],bL)aZ=U[3]+90
cm=aZ-bG
ct=s*sin(cm)aU=(s*cos(cm))if J~=ac then
s=aU/cos(aZ-(ac+C))end
if aX~=ai then
aD=aU/cos(aZ-(ai+C))end
s,aD=s*cos(ac),aD*cos(ai)g=U[5]+6
cs=(m>o)if cs and H[g]~=0 then
as=H[3]&4>0
if as then
V=aS[c[3][H[13-g]][6]]end
ab=c[3][H[g]]cL={ab[3],ab[4],ab[5]}j,c_,bQ=aS[ab[6]]for h,d in ar(cL)do
af=d>0
ad=L
if(af or(h==3 and not(c_ and bQ)))and(h==3 or as)then
cp=0
bO=L
if h<3 then
bO=h~=1 or u(j[4],V[4])~=0
E,y=j[3-h],(h==1 and u or q)(V[3-h],j[h])ad=(E<y)==(h==2)and E~=y and j~=V
af=ad
E,y=q(E,y),u(E,y)if ad then
if h==1 then
c_=L
else
bQ=L
cp=H[3]&16>0 and u(j[2],V[2])-y or 0
end
end
else
if as then
E,y=q(u(j[1],V[1]),j[2]),u(q(j[2],V[2]),j[1])ad=j~=V
else
E,y=j[1],j[2]end
end
E,y=E-l[2],y-l[2]ck,bP=E*aR,y*aR
if(ad or af)and bO then
bd=U[6]-ab[1]if H[4]==48 then
bd=bd-ap
end
cu,cB=ck/s,bP/s
cw,cH=ck/aD,bP/aD
bH,ax=0
if af then
_=c[21][d][4]if(U[4]==bZ or bk==H[4]or H[8])and _>0 then
d=_
end
au=c[21][d][3]t=1
if(h==3 and H[3]&16>0)or(h==1 and H[3]&8==0)then
t=-1
end
end
for g=m,o,-1 do
cJ=bS[g]br=(aZ-C)-cJ
f,bM=B-g
if f>=0 and f<=P-1 then
if a<aL[f]then
aM=(g-m)/(o-m)G,K=(cu*(1-aM)+cw*aM),(cB*(1-aM)+cH*aM)if D(K+G)-(K-G)<aa then
if af then
if G~=K then
bM=L
ca=aU*tan(br)aq=bV(q(((D(ca)+D(aU))//bD)+1,16))cj=ak((u(ca-ct,0)-bd)/(au*aq))bF=cj*aq
cd={f,v-G,v-K,d,cj,y-E,j[5],ab[2]+cp,L,au*aq,aq,t,not ax,h==3 and as}if bF>bH or(not ax)or g==o then
bH=bF-1+aq
ax=L
x[a][#x[a]+1]=cd
end
ch=cd
end
end
if ad then
if h~=2 then
if K<T[f]then
aQ[a][#aQ[a]+1]={f,u(K,Y[f]),T[f],j}end
if h==3 then Z=K else Z=G end
if T[f]>Z then T[f]=Z end
end
if h~=1 then
if G>Y[f]then
aG[a][#aG[a]+1]={f,Y[f],q(G,T[f]),j}end
if h==3 then Z=G else Z=K end
if Y[f]<Z then Y[f]=Z end
end
if(T[f]<=Y[f])or(h==3 and(not as)and af)then
aL[f]=a
bq=bq-1
end
end
end
end
end
if(not bM)and ax then
ch[9]=bs
x[a][#x[a]+1],ax=ch
end
end
if#x[a]>0 then
x[a][#x[a]][9]=bs
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
function onDraw()aP=screen
local bY,ce,ah,bR=aP.drawTriangleF,aP.drawRectF,aP.setColor,aP.drawLine
cz={aG,aQ}if bg then
e=c[24][c[19][8][aA-3]]W,aF=e[1],e[2]z=P/ceil(W*N)for a=0,ceil(W*N),1 do
m=(W/2-a-1+C/90*W)%W
o=(m%1-1)*z
m=ak(m)*aF
for n=0,aF-1,1 do
Q=e[5+n+m]i=c[20][Q]ah(i[1],i[2],i[3])ce(a*z+o,n*z,z,z)end
end
for a=#x,1,-1 do
for n=1,#x[a]do
d=x[a][n]if d[9]or d[13]then
if d[9]then
R=x[a][n+1]else
R=d
end
e=c[21][d[4]]e=c[21][d[4]+(bW%e[5])*"number of wall mipmap levels"+c[19][12][d[11]]]t=d[12]X=q(t,0)f=d[1]o=R[1]cl=d[2-X]cE=R[2-X]g=d[3+X]bf=R[3+X]if not R[9]then o=o+1 end
aV(d[7])cI=t*(d[2]-d[3])*e[3]/d[6]cF=t*(R[2]-R[3])*e[3]/R[6]ci=t>0 and q or u
bA=0
while g*t<cl*t and(bA<e[2]or not d[14])do
cf=ci(g+cI,cl)bv=ci(bf+cF,cE)Q=e[7+((X+d[8]//e[3])%e[2])+e[2]*((d[5])%e[1])]i=c[20][Q]if i then
ah(i[1]*r,i[2]*r,i[3]*r)bY(f,g,f,cf,o,bv)bY(f,g,o,bf,o,bv)end
g=cf
bf=bv
X=X+t
bA=bA+1
end
end
end
for b=1,2 do
_=cz[b]cc={}an,ao,bw=aa,-aa
for n,d in ar(_[a])do
an=q(an,d[2])ao=u(ao,d[3])bw=d
e=c[22][d[4][b+2]]if e and not aN then
aV(d[4][5])i=c[20][e[5]]ah(i[1]*r,i[2]*r,i[3]*r)bR(d[1],v-d[2],d[1],ak(v-d[3]-1))end
end
if bw and aN then
j=bw[4]cy=(j[b]-l[2])bz=cos(C)bi=sin(C)for aj=ak(an+v),ceil(ao+v)do
ag=aR*cy/(v-aj)bT=bz*ag-l[1][1]bX=bi*ag-l[1][2]cg=-bi*ag+bT
cn=bz*ag+bX
cD=bi*ag+bT
cM=-bz*ag+bX
cv=(cD-cg)/P
cA=(cM-cn)/P
cc[aj]={cv,cA,cg,cn}end
for n,d in ar(_[a])do
if j[b+2]~=0 then
f=d[1]if f%aN==0 then
aV(j[5])p=j[b+2]e=c[22][p]e=c[22][p+(bW%e[4])]co=B-(B-f)*N
an,ao=ak(d[2]+v),ceil(d[3]+v)au=e[3]for aj=an,ao do
aO=cc[aj]cr=(aO[3]+aO[1]*co)//au
cG=(aO[4]+aO[2]*co)//au
Q=6+(cG%e[1])+e[1]*(cr%e[2])i=c[20][e[Q]]if i then
ah(i[1]*r,i[2]*r,i[3]*r)bR(f,aa-aj,f+aN+1,aa-aj)end
end
end
end
end
end
end
for n=1,#aJ[a]do
_=k[aJ[a][n]]if _[6]~=0 then
aK=sub(_,l[1])s=_[20]if s>1 then
J=bp(aI(aK)-C)s=s*cos(J)if D(J)<90 then
m=B-ay(tan(J)/N*B)br=ay((180+J+C-_[3]+bx*4)/360*8)M=c[16][_[6]][1]if M~=0 and _[6]~=1 then
e=c[17][D(M)][br%8+1]t=e<0 and-1 or 1
e=D(e)if e>0 then
e=c[23][e+c[19][12][q(bV(s//ba+1),8)]]W,aF=e[1],e[2]z=B/(N*s)aT=z*bl
G=v+(l[2]-_[9])/s*aR
K=G-e[5]*aT
o=m-t*e[4]*z
z,aT=z*e[3],aT*e[3]aV(_[8][5])r=M>0 and r or 1
cb=z
cx=cb*bl
cK=c[15][_[4]or 1][23]&8>0
for g=0,W-1 do
m=o+g*z*t
if a<=aL[bC(ay(m),0,P-1)]then
for h=0,aF-1 do
Q=e[7+h+g*aF]if Q~=0 then
if cK then
bh=bh%50+1
ah(0,0,0,q(75*c[13][2][bh],255))else
i=c[20][Q]ah(i[1]*r,i[2]*r,i[3]*r)end
ce(m,K+h*aT,cb,cx)end
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
