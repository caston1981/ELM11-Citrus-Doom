
x=math
w=x.max
q=x.min
F=x.abs
aj=x.floor
ceil=x.ceil
sqrt=x.sqrt
I=input.getNumber
bu=input.getBool
pi=x.pi/180
bB=false
M=true
aq=ipairs
cn=table.remove
bo=string
function bh(b,p)return b[1]*p[2]-b[2]*p[1]end
function sub(b,p)return{(b[1]-p[1]),(b[2]-p[2])}end
function bm(b)return((b+180)%360)-180 end
function sin(b)return x.sin(b*pi)end
function cos(b)return x.cos(b*pi)end
function tan(b)return x.tan(b*pi)end
function cO(b)return x.atan(b)/pi end
function aG(b)return x.atan(b[2],b[1])/pi end
function bt(b,p,_)return q(w(p,b),_)end
function aC(b)return aj(b+.5)end
function aN(b,p)return sqrt(((b[1]-p[1])^2)+((b[2]-p[2])^2))end
function cg(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
function aK(b)r=q(b/255+aR,1)^2.2 end
c={}bz=1
ao=3
aA=M
l={{0,0},0}D=0
Q=288
E=144
ac=128
u=64
ba={}aL=500
bL=250
cc=1
af=2^15
bk=3002
bs=0
as=0
ax=0
bg=1.2
O=52
N=tan(O)aO=u*bg*Q/ac/N
Z=1
bI={}for a=-E,E do bI[a]=aG({1,a/E*N})end
function bv(a)if a<af then
local v,bx=c[7][a]bx=0<bh({v[3],v[4]},sub(l[1],v))and 8 or 7
bv(v[bx])bv(v[15-bx])else
az[#az+1]=a-af
end
end
function aZ(a,b)if a<af then
v=c[7][a]return aZ(v[0<bh({v[3],v[4]},sub(b,v))and 8 or 7],b)else
return a-af
end
end
function bl(b)v=c[5][c[6][b][2]]return aT[c[3][c[2][v[4]][v[5]+6]][6]]end
function onTick()bn=0
for m=1,3 do
if bu(9)and(not be)or not c[21]then
bw=property.getText(bz)a=1
C=""
_=bo.sub(bw,a,a)while _~=""do
aD=bo.byte(_)if aD>64 then
C=(C..aD-65)+0
if Z==1 then
bT=C
c[C]=c[C]or{}elseif Z==2 then
cF=C
ap=0
elseif Z==3 then
bC=C
else
if ap==0 then
ap=cF
bC=bC-1
bi={}c[bT][#c[bT]+1]=bi
end
bi[#bi+1]=C
ap=ap-1
Z=w(ap,bC)>0 and Z-1 or 0
end
Z=Z+1
C=""
else
C=C.._
end
a=a+1
_=bo.sub(bw,a,a)end
bz=bz+1
be=bw==""
end
end
if be then
if I(10)>0 then
aA=M
ao=I(10)end
if cc>0 and not aA then
ah={}at[#at+1]=ah
aE=6
_=I(aE)while _~=0 do
aa={}ah[#ah+1]=aa
for a=0,8 do
aa[a+1]=I(aE+a)end
aE=aE+9
_=I(aE)end
end
if bu(1)then
bM=0
bG=I(1)cc=I(3)ax=ax+1
bW=ax//10
if aA then
for a=1,10 do
c[a]=c[a+10*ao]end
k=c[1]cP={k[1][1],k[1][2]}for a=#k,1,-1 do
_=k[a]_=_[5]&(bk-3000)>0 or cn(k,a)end
aT=c[8]at={}ao=ao+1
end
if I(2)>0 then
_=c[2][I(2)]if _ then
b=_[4]if b>0 then
if b==3008 then
aX=_[5]>0 and _[5]elseif b>3004 then
aL=w(aL+3*(_[4]-3006),1)bL=aL/2
elseif b>3000 then
bk=_[4]end
bM=I(2)if b<3000 and c[9][_[5]][7]==0 then
_[8]=1
end
end
end
end
if bu(3)and bG~=1 and bG~=3 and aR<1 then
aR=.1
as=5
else
as=as-1
if as<1 then
aR=0
end
end
for a=1,#at do
ah=at[a]for m=1,#ah do
aa=ah[m]_=aa[1]if _>af then
_=aT[_-af]for g=1,6 do
_[g]=aa[g+1]end
elseif _<0 then
aD=c[1][-_]if aD and c[15][aD[4]or 1][29]=="light amp index" then
aR=1
as=4200
end
while-_>#k do
k[#k+1]=bB
end
cn(k,-_)else
k[_]=k[_]or{}_=k[_]for g=1,8 do
_[c[19][1][g]]=aa[g+1]end
_[15]=0
_[7]=aZ(#c[7],_)_[8]=bl(_[7])end
end
end
at={}for a=1,#c[6]do
ba[a]={}end
for a,_ in aq(k)do
if aA then
_[7]=aZ(#c[7],_)_[8]=bl(_[7])_[9]=_[8][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
end
if _ and a>1 then
bq=0
for m,d in aq({1,2,9})do
_[d]=_[d]+_[d+10]bq=bq+_[d+10]end
if bq~=0 then
_[7]=aZ(#c[7],_)_[8]=bl(_[7])end
_[15]=_[15]+1
_[20]=aN(_,l[1])L=c[16][_[6]]if L then
if L[5]>0 then
_[9]=_[8][1]end
if _[15]>=L[2]and L[2]~=-1 then
_[6]=L[4]_[15]=0
end
end
ba[_[7]][#ba[_[7]]+1]=a
end
end
_,aA=k[1]cr=q(aN(_,l[1])^2/4,16)l[1]={_[1],_[2]}D=_[3]l[2]=_[9]+41+cr*sin(ax*20)/4
az={}bv(#c[7])aW={}A={}aI={}aM={}X={}S={}aH={}bd=Q
for a=0,Q-1 do
aW[a],X[a],S[a]=#c[6]+2,u+1,-u
end
a=1
while a<=#az and bd>0 do
_=c[6][az[a]]aI[a]={}aM[a]={}A[a]={}aH[a]=ba[az[a]]table.sort(aH[a],function(b,p)return k[b][20]>k[p][20]end)for m=_[2],_[1]+_[2]-1 do
T=c[5][m]H=c[2][T[4]]bJ,cj=c[4][T[1]],c[4][T[2]]aP,bX=sub(bJ,l[1]),sub(cj,l[1])cm=aG(aP)J,aY=bm(cm-D),bm(aG(bX)-D)if F(J)<90 or F(aY)<90 then
ad,ak=bt(J,-O,O),bt(aY,-O,O)if F(J)>=90 or F(aY)>=90 then
bY=bh(aP,bX)if F(J)>=90 then
if bY>0 then ad=-O else ad=O end
else
if bY<0 then ak=-O else ak=O end
end
end
o,n=aC(tan(ad)/N*E),aC(tan(ak)/N*E)if o~=n then
s,au=aN(l[1],bJ),aN(l[1],cj)b_=T[3]+90
ca=b_-cm
cy=s*sin(ca)aU=(s*cos(ca))if J~=ad then
s=aU/cos(b_-(ad+D))end
if aY~=ak then
au=aU/cos(b_-(ak+D))end
s,au=s*cos(ad),au*cos(ak)g=T[5]+6
cB=(o>n)if cB and H[g]~=0 then
ar=H[3]&4>0
if ar then
W=aT[c[3][H[13-g]][6]]end
ae=c[3][H[g]]ct={ae[3],ae[4],ae[5]}j,cd,ch=aT[ae[6]]for i,d in aq(ct)do
ab=d>0
ag=M
if(ab or(i==3 and not(cd and ch)))and(i==3 or ar)then
cl=0
bU=M
if i<3 then
bU=i~=1 or w(j[4],W[4])~=0
B,z=j[3-i],(i==1 and w or q)(W[3-i],j[i])ag=(B<z)==(i==2)and B~=z and j~=W
ab=ag
B,z=q(B,z),w(B,z)if ag then
if i==1 then
cd=M
else
ch=M
cl=H[3]&16>0 and w(j[2],W[2])-z or 0
end
end
else
if ar then
B,z=q(w(j[1],W[1]),j[2]),w(q(j[2],W[2]),j[1])ag=j~=W
else
B,z=j[1],j[2]end
end
B,z=B-l[2],z-l[2]bK,ce=B*aO,z*aO
if(ag or ab)and bU then
by=T[6]-ae[1]if H[4]==48 then
by=by-ax
end
cA,cu=bK/s,ce/s
cG,cM=bK/au,ce/au
bV,av=0
if ab then
_=c[21][d][4]if(T[4]==bM or bk==H[4]or H[8])and _>0 then
d=_
end
an=c[21][d][3]t=1
if(i==3 and H[3]&16>0)or(i==1 and H[3]&8==0)then
t=-1
end
end
for g=o,n,-1 do
cJ=bI[g]bc=(b_-D)-cJ
f,c_=E-g
if f>=0 and f<=Q-1 then
if a<aW[f]then
aS=(g-o)/(n-o)G,K=(cA*(1-aS)+cG*aS),(cu*(1-aS)+cM*aS)if F(K+G)-(K-G)<ac then
if ab then
if G~=K then
c_=M
cq=aU*tan(bc)aF=cg(q(((F(cq)+F(aU))//bL)+1,16))bN=aj((w(cq-cy,0)-by)/(an*aF))bR=bN*aF
bS={f,u-G,u-K,d,bN,z-B,j[5],ae[2]+cl,M,an*aF,aF,t,not av,i==3 and ar}if bR>bV or(not av)or g==n then
bV=bR-1+aF
av=M
A[a][#A[a]+1]=bS
end
bP=bS
end
end
if ag then
if i~=2 then
if K<X[f]then
aM[a][#aM[a]+1]={f,w(K,S[f]),X[f],j}end
if i==3 then U=K else U=G end
if X[f]>U then X[f]=U end
end
if i~=1 then
if G>S[f]then
aI[a][#aI[a]+1]={f,S[f],q(G,X[f]),j}end
if i==3 then U=G else U=K end
if S[f]<U then S[f]=U end
end
if(X[f]<=S[f])or(i==3 and(not ar)and ab)then
aW[f]=a
bd=bd-1
end
end
end
end
end
if(not c_)and av then
bP[9]=bB
A[a][#A[a]+1],av=bP
end
end
if#A[a]>0 then
A[a][#A[a]][9]=bB
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
function onDraw()aQ=screen
local bO,bH,al,bD=aQ.drawTriangleF,aQ.drawRectF,aQ.setColor,aQ.drawLine
cL={aI,aM}if be then
e=c[24][c[19][8][ao-3]]V,aB=e[1],e[2]y=Q/ceil(V*N)for a=0,ceil(V*N),1 do
o=(V/2-a-1+D/90*V)%V
n=(o%1-1)*y
o=aj(o)*aB
for m=0,aB-1,1 do
P=e[5+m+o]h=c[20][P]al(h[1],h[2],h[3])bH(a*y+n,m*y,y,y)end
end
for a=#A,1,-1 do
for m=1,#A[a]do
d=A[a][m]if d[9]or d[13]then
if d[9]then
R=A[a][m+1]else
R=d
end
e=c[21][d[4]]e=c[21][d[4]+(bW%e[5])*"number of wall mipmap levels"+c[19][12][d[11]]]t=d[12]Y=q(t,0)f=d[1]n=R[1]co=d[2-Y]cN=R[2-Y]g=d[3+Y]bb=R[3+Y]if not R[9]then n=n+1 end
aK(d[7])cH=t*(d[2]-d[3])*e[3]/d[6]cI=t*(R[2]-R[3])*e[3]/R[6]bQ=t>0 and q or w
bf=0
while g*t<co*t and(bf<e[2]or not d[14])do
ck=bQ(g+cH,co)bj=bQ(bb+cI,cN)P=e[7+((Y+d[8]//e[3])%e[2])+e[2]*((d[5])%e[1])]h=c[20][P]if h then
al(h[1]*r,h[2]*r,h[3]*r)bO(f,g,f,ck,n,bj)bO(f,g,n,bb,n,bj)end
g=ck
bb=bj
Y=Y+t
bf=bf+1
end
end
end
for b=1,2 do
_=cL[b]cp={}ay,aw,bp=ac,-ac
for m,d in aq(_[a])do
ay=q(ay,d[2])aw=w(aw,d[3])bp=d
e=c[22][d[4][b+2]]if e and not aX then
aK(d[4][5])h=c[20][e[5]]al(h[1]*r,h[2]*r,h[3]*r)bD(d[1],u-d[2],d[1],aj(u-d[3]-1))end
end
if bp and aX then
j=bp[4]cv=(j[b]-l[2])br=cos(D)bA=sin(D)for ai=aj(ay+u),ceil(aw+u)do
am=aO*cv/(u-ai)cb=br*am-l[1][1]bE=bA*am-l[1][2]bF=-bA*am+cb
cf=br*am+bE
cE=bA*am+cb
cC=-br*am+bE
cx=(cE-bF)/Q
cD=(cC-cf)/Q
cp[ai]={cx,cD,bF,cf}end
for m,d in aq(_[a])do
if j[b+2]~=0 then
f=d[1]if f%aX==0 then
aK(j[5])p=j[b+2]e=c[22][p]e=c[22][p+(bW%e[4])]bZ=E-(E-f)*N
ay,aw=aj(d[2]+u),ceil(d[3]+u)an=e[3]for ai=ay,aw do
aV=cp[ai]cK=(aV[3]+aV[1]*bZ)//an
cs=(aV[4]+aV[2]*bZ)//an
P=6+(cs%e[1])+e[1]*(cK%e[2])h=c[20][e[P]]if h then
al(h[1]*r,h[2]*r,h[3]*r)bD(f,ac-ai,f+aX+1,ac-ai)end
end
end
end
end
end
end
for m=1,#aH[a]do
_=k[aH[a][m]]if _[6]~=0 then
aP=sub(_,l[1])s=_[20]if s>1 then
J=bm(aG(aP)-D)s=s*cos(J)if F(J)<90 then
o=E-aC(tan(J)/N*E)bc=aC((180+J+D-_[3]+bn*4)/360*8)L=c[16][_[6]][1]if L~=0 and _[6]~=1 then
e=c[17][F(L)][bc%8+1]t=e<0 and-1 or 1
e=F(e)if e>0 then
e=c[23][e+c[19][12][q(cg(s//aL+1),8)]]V,aB=e[1],e[2]y=E/(N*s)aJ=y*bg
G=u+(l[2]-_[9])/s*aO
K=G-e[5]*aJ
n=o-t*e[4]*y
y,aJ=y*e[3],aJ*e[3]aK(_[8][5])r=L>0 and r or 1
ci=y
cz=ci*bg
cw=c[15][_[4]or 1][23]&8>0
for g=0,V-1 do
o=n+g*y*t
if a<=aW[bt(aC(o),0,Q-1)]then
for i=0,aB-1 do
P=e[7+i+g*aB]if P~=0 then
if cw then
bs=bs%50+1
al(0,0,0,q(75*c[13][2][bs],255))else
h=c[20][P]al(h[1]*r,h[2]*r,h[3]*r)end
bH(o,K+i*aJ,ci,cz)end
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
bn=bn+1
end
