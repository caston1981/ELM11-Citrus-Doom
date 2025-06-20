
x=math
t=x.max
q=x.min
E=x.abs
ai=x.floor
ceil=x.ceil
sqrt=x.sqrt
H=input.getNumber
bb=input.getBool
pi=x.pi/180
by=false
N=true
ay=ipairs
ck=table.remove
bn=string
function bs(b,p)return b[1]*p[2]-b[2]*p[1]end
function sub(b,p)return{(b[1]-p[1]),(b[2]-p[2])}end
function bg(b)return((b+180)%360)-180 end
function sin(b)return x.sin(b*pi)end
function cos(b)return x.cos(b*pi)end
function tan(b)return x.tan(b*pi)end
function cO(b)return x.atan(b)/pi end
function aV(b)return x.atan(b[2],b[1])/pi end
function bx(b,p,_)return q(t(p,b),_)end
function aC(b)return ai(b+.5)end
function aR(b,p)return sqrt(((b[1]-p[1])^2)+((b[2]-p[2])^2))end
function bI(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
function aN(b)r=q(b/255+aP,1)^2.2 end
c={}bm=1
aA=3
aD=N
l={{0,0},0}B=0
R=288
D=144
aa=128
u=64
aT={}aY=500
bH=250
cl=1
aj=2^15
bp=3002
bf=0
ax=0
aq=0
bt=1.2
L=52
M=tan(L)aM=u*bt*R/aa/M
S=1
bM={}for a=-D,D do bM[a]=aV({1,a/D*M})end
function bl(a)if a<aj then
local w,bA=c[7][a]bA=0<bs({w[3],w[4]},sub(l[1],w))and 8 or 7
bl(w[bA])bl(w[15-bA])else
at[#at+1]=a-aj
end
end
function ba(a,b)if a<aj then
w=c[7][a]return ba(w[0<bs({w[3],w[4]},sub(b,w))and 8 or 7],b)else
return a-aj
end
end
function bu(b)w=c[5][c[6][b][2]]return aW[c[3][c[2][w[4]][w[5]+6]][6]]end
function onTick()bo=0
for o=1,3 do
if bb(9)and(not bz)or not c[21]then
bc=property.getText(bm)a=1
F=""
_=bn.sub(bc,a,a)while _~=""do
aw=bn.byte(_)if aw>64 then
F=(F..aw-65)+0
if S==1 then
bP=F
c[F]=c[F]or{}elseif S==2 then
cK=F
aF=0
elseif S==3 then
bB=F
else
if aF==0 then
aF=cK
bB=bB-1
bi={}c[bP][#c[bP]+1]=bi
end
bi[#bi+1]=F
aF=aF-1
S=t(aF,bB)>0 and S-1 or 0
end
S=S+1
F=""
else
F=F.._
end
a=a+1
_=bn.sub(bc,a,a)end
bm=bm+1
bz=bc==""
end
end
if bz then
if H(10)>0 then
aD=N
aA=H(10)end
if cl>0 and not aD then
ae={}aE[#aE+1]=ae
ar=6
_=H(ar)while _~=0 do
ak={}ae[#ae+1]=ak
for a=0,8 do
ak[a+1]=H(ar+a)end
ar=ar+9
_=H(ar)end
end
if bb(1)then
bW=0
bQ=H(1)cl=H(3)aq=aq+1
cd=aq//10
if aD then
for a=1,10 do
c[a]=c[a+10*aA]end
k=c[1]cP={k[1][1],k[1][2]}for a=#k,1,-1 do
_=k[a]_=_[5]&(bp-3000)>0 or ck(k,a)end
aW=c[8]aE={}aA=aA+1
end
if H(2)>0 then
_=c[2][H(2)]if _ then
b=_[4]if b>0 then
if b==3008 then
aS=_[5]>0 and _[5]elseif b>3004 then
aY=t(aY+3*(_[4]-3006),1)bH=aY/2
elseif b>3000 then
bp=_[4]end
bW=H(2)if b<3000 and c[9][_[5]][7]==0 then
_[8]=1
end
end
end
end
if bb(3)and bQ~=1 and bQ~=3 and aP<1 then
aP=.1
ax=5
else
ax=ax-1
if ax<1 then
aP=0
end
end
for a=1,#aE do
ae=aE[a]for o=1,#ae do
ak=ae[o]_=ak[1]if _>aj then
_=aW[_-aj]for g=1,6 do
_[g]=ak[g+1]end
elseif _<0 then
aw=c[1][-_]if aw and c[15][aw[4]or 1][29]=="light amp index" then
aP=1
ax=4200
end
while-_>#k do
k[#k+1]=by
end
ck(k,-_)else
k[_]=k[_]or{}_=k[_]for g=1,8 do
_[c[19][1][g]]=ak[g+1]end
_[15]=0
_[7]=ba(#c[7],_)_[8]=bu(_[7])end
end
end
aE={}for a=1,#c[6]do
aT[a]={}end
for a,_ in ay(k)do
if aD then
_[7]=ba(#c[7],_)_[8]=bu(_[7])_[9]=_[8][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
end
if _ and a>1 then
br=0
for o,d in ay({1,2,9})do
_[d]=_[d]+_[d+10]br=br+_[d+10]end
if br~=0 then
_[7]=ba(#c[7],_)_[8]=bu(_[7])end
_[15]=_[15]+1
_[20]=aR(_,l[1])O=c[16][_[6]]if O then
if O[5]>0 then
_[9]=_[8][1]end
if _[15]>=O[2]and O[2]~=-1 then
_[6]=O[4]_[15]=0
end
end
aT[_[7]][#aT[_[7]]+1]=a
end
end
_,aD=k[1]cF=q(aR(_,l[1])^2/4,16)l[1]={_[1],_[2]}B=_[3]l[2]=_[9]+41+cF*sin(aq*20)/4
at={}bl(#c[7])aZ={}z={}aJ={}aK={}U={}T={}aL={}bv=R
for a=0,R-1 do
aZ[a],U[a],T[a]=#c[6]+2,u+1,-u
end
a=1
while a<=#at and bv>0 do
_=c[6][at[a]]aJ[a]={}aK[a]={}z[a]={}aL[a]=aT[at[a]]table.sort(aL[a],function(b,p)return k[b][20]>k[p][20]end)for o=_[2],_[1]+_[2]-1 do
W=c[5][o]I=c[2][W[4]]bS,c_=c[4][W[1]],c[4][W[2]]aH,bU=sub(bS,l[1]),sub(c_,l[1])bK=aV(aH)K,aI=bg(bK-B),bg(aV(bU)-B)if E(K)<90 or E(aI)<90 then
ah,ad=bx(K,-L,L),bx(aI,-L,L)if E(K)>=90 or E(aI)>=90 then
cg=bs(aH,bU)if E(K)>=90 then
if cg>0 then ah=-L else ah=L end
else
if cg<0 then ad=-L else ad=L end
end
end
m,n=aC(tan(ah)/M*D),aC(tan(ad)/M*D)if m~=n then
s,az=aR(l[1],bS),aR(l[1],c_)aG=W[3]+90
bD=aG-bK
ct=s*sin(bD)aU=(s*cos(bD))if K~=ah then
s=aU/cos(aG-(ah+B))end
if aI~=ad then
az=aU/cos(aG-(ad+B))end
s,az=s*cos(ah),az*cos(ad)g=W[5]+6
cy=(m>n)if cy and I[g]~=0 then
av=I[3]&4>0
if av then
Y=aW[c[3][I[13-g]][6]]end
ac=c[3][I[g]]cE={ac[3],ac[4],ac[5]}j,ch,bV=aW[ac[6]]for h,d in ay(cE)do
ab=d>0
af=N
if(ab or(h==3 and not(ch and bV)))and(h==3 or av)then
co=0
cf=N
if h<3 then
cf=h~=1 or t(j[4],Y[4])~=0
C,y=j[3-h],(h==1 and t or q)(Y[3-h],j[h])af=(C<y)==(h==2)and C~=y and j~=Y
ab=af
C,y=q(C,y),t(C,y)if af then
if h==1 then
ch=N
else
bV=N
co=I[3]&16>0 and t(j[2],Y[2])-y or 0
end
end
else
if av then
C,y=q(t(j[1],Y[1]),j[2]),t(q(j[2],Y[2]),j[1])af=j~=Y
else
C,y=j[1],j[2]end
end
C,y=C-l[2],y-l[2]bX,bZ=C*aM,y*aM
if(af or ab)and cf then
bh=W[6]-ac[1]if I[4]==48 then
bh=bh-aq
end
cz,cw=bX/s,bZ/s
cA,cB=bX/az,bZ/az
bE,ap=0
if ab then
_=c[21][d][4]if(W[4]==bW or bp==I[4]or I[8])and _>0 then
d=_
end
as=c[21][d][3]v=1
if(h==3 and I[3]&16>0)or(h==1 and I[3]&8==0)then
v=-1
end
end
for g=m,n,-1 do
cH=bM[g]bq=(aG-B)-cH
f,cq=D-g
if f>=0 and f<=R-1 then
if a<aZ[f]then
b_=(g-m)/(n-m)G,J=(cz*(1-b_)+cA*b_),(cw*(1-b_)+cB*b_)if E(J+G)-(J-G)<aa then
if ab then
if G~=J then
cq=N
bG=aU*tan(bq)aB=bI(q(((E(bG)+E(aU))//bH)+1,16))bR=ai((t(bG-ct,0)-bh)/(as*aB))cj=bR*aB
bF={f,u-G,u-J,d,bR,y-C,j[5],ac[2]+co,N,as*aB,aB,v,not ap,h==3 and av}if cj>bE or(not ap)or g==n then
bE=cj-1+aB
ap=N
z[a][#z[a]+1]=bF
end
ca=bF
end
end
if af then
if h~=2 then
if J<U[f]then
aK[a][#aK[a]+1]={f,t(J,T[f]),U[f],j}end
if h==3 then X=J else X=G end
if U[f]>X then U[f]=X end
end
if h~=1 then
if G>T[f]then
aJ[a][#aJ[a]+1]={f,T[f],q(G,U[f]),j}end
if h==3 then X=G else X=J end
if T[f]<X then T[f]=X end
end
if(U[f]<=T[f])or(h==3 and(not av)and ab)then
aZ[f]=a
bv=bv-1
end
end
end
end
end
if(not cq)and ap then
ca[9]=by
z[a][#z[a]+1],ap=ca
end
end
if#z[a]>0 then
z[a][#z[a]][9]=by
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
function onDraw()aX=screen
local bT,bY,ag,cc=aX.drawTriangleF,aX.drawRectF,aX.setColor,aX.drawLine
cu={aJ,aK}if bz then
e=c[24][c[19][8][aA-3]]V,an=e[1],e[2]A=R/ceil(V*M)for a=0,ceil(V*M),1 do
m=(V/2-a-1+B/90*V)%V
n=(m%1-1)*A
m=ai(m)*an
for o=0,an-1,1 do
P=e[5+o+m]i=c[20][P]ag(i[1],i[2],i[3])bY(a*A+n,o*A,A,A)end
end
for a=#z,1,-1 do
for o=1,#z[a]do
d=z[a][o]if d[9]or d[13]then
if d[9]then
Q=z[a][o+1]else
Q=d
end
e=c[21][d[4]]e=c[21][d[4]+(cd%e[5])*"number of wall mipmap levels"+c[19][12][d[11]]]v=d[12]Z=q(v,0)f=d[1]n=Q[1]bO=d[2-Z]cN=Q[2-Z]g=d[3+Z]bw=Q[3+Z]if not Q[9]then n=n+1 end
aN(d[7])cM=v*(d[2]-d[3])*e[3]/d[6]cD=v*(Q[2]-Q[3])*e[3]/Q[6]ci=v>0 and q or t
be=0
while g*v<bO*v and(be<e[2]or not d[14])do
bN=ci(g+cM,bO)bd=ci(bw+cD,cN)P=e[7+((Z+d[8]//e[3])%e[2])+e[2]*((d[5])%e[1])]i=c[20][P]if i then
ag(i[1]*r,i[2]*r,i[3]*r)bT(f,g,f,bN,n,bd)bT(f,g,n,bw,n,bd)end
g=bN
bw=bd
Z=Z+v
be=be+1
end
end
end
for b=1,2 do
_=cu[b]bJ={}au,ao,bk=aa,-aa
for o,d in ay(_[a])do
au=q(au,d[2])ao=t(ao,d[3])bk=d
e=c[22][d[4][b+2]]if e and not aS then
aN(d[4][5])i=c[20][e[5]]ag(i[1]*r,i[2]*r,i[3]*r)cc(d[1],u-d[2],d[1],ai(u-d[3]-1))end
end
if bk and aS then
j=bk[4]cr=(j[b]-l[2])bj=cos(B)bC=sin(B)for am=ai(au+u),ceil(ao+u)do
al=aM*cr/(u-am)cm=bj*al-l[1][1]bL=bC*al-l[1][2]cp=-bC*al+cm
cn=bj*al+bL
cC=bC*al+cm
cx=-bj*al+bL
cs=(cC-cp)/R
cL=(cx-cn)/R
bJ[am]={cs,cL,cp,cn}end
for o,d in ay(_[a])do
if j[b+2]~=0 then
f=d[1]if f%aS==0 then
aN(j[5])p=j[b+2]e=c[22][p]e=c[22][p+(cd%e[4])]ce=D-(D-f)*M
au,ao=ai(d[2]+u),ceil(d[3]+u)as=e[3]for am=au,ao do
aO=bJ[am]cI=(aO[3]+aO[1]*ce)//as
cG=(aO[4]+aO[2]*ce)//as
P=6+(cG%e[1])+e[1]*(cI%e[2])i=c[20][e[P]]if i then
ag(i[1]*r,i[2]*r,i[3]*r)cc(f,aa-am,f+aS+1,aa-am)end
end
end
end
end
end
end
for o=1,#aL[a]do
_=k[aL[a][o]]if _[6]~=0 then
aH=sub(_,l[1])s=_[20]if s>1 then
K=bg(aV(aH)-B)s=s*cos(K)if E(K)<90 then
m=D-aC(tan(K)/M*D)bq=aC((180+K+B-_[3]+bo*4)/360*8)O=c[16][_[6]][1]if O~=0 and _[6]~=1 then
e=c[17][E(O)][bq%8+1]v=e<0 and-1 or 1
e=E(e)if e>0 then
e=c[23][e+c[19][12][q(bI(s//aY+1),8)]]V,an=e[1],e[2]A=D/(M*s)aQ=A*bt
G=u+(l[2]-_[9])/s*aM
J=G-e[5]*aQ
n=m-v*e[4]*A
A,aQ=A*e[3],aQ*e[3]aN(_[8][5])r=O>0 and r or 1
cb=A
cJ=cb*bt
cv=c[15][_[4]or 1][23]&8>0
for g=0,V-1 do
m=n+g*A*v
if a<=aZ[bx(aC(m),0,R-1)]then
for h=0,an-1 do
P=e[7+h+g*an]if P~=0 then
if cv then
bf=bf%50+1
ag(0,0,0,q(75*c[13][2][bf],255))else
i=c[20][P]ag(i[1]*r,i[2]*r,i[3]*r)end
bY(m,J+h*aQ,cb,cJ)end
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
