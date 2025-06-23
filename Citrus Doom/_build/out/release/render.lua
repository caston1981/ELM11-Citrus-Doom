
z=math
t=z.max
r=z.min
D=z.abs
al=z.floor
ceil=z.ceil
sqrt=z.sqrt
I=input.getNumber
bp=input.getBool
pi=z.pi/180
bB=false
N=true
au=ipairs
ch=table.remove
bt=string
function bl(b,p)return b[1]*p[2]-b[2]*p[1]end
function sub(b,p)return{(b[1]-p[1]),(b[2]-p[2])}end
function bu(b)return((b+180)%360)-180 end
function sin(b)return z.sin(b*pi)end
function cos(b)return z.cos(b*pi)end
function tan(b)return z.tan(b*pi)end
function cO(b)return z.atan(b)/pi end
function aG(b)return z.atan(b[2],b[1])/pi end
function bb(b,p,_)return r(t(p,b),_)end
function aw(b)return al(b+.5)end
function aK(b,p)return sqrt(((b[1]-p[1])^2)+((b[2]-p[2])^2))end
function cg(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
function aX(b)q=r(b/255+aZ,1)^2.2 end
c={}bm=1
aF=3
aB=N
l={{0,0},0}F=0
Q=288
B=144
ai=128
u=64
aT={}aN=500
ca=250
cp=1
ab=2^15
bk=3002
bs=0
aD=0
ay=0
bn=1.2
L=52
M=tan(L)aM=u*bn*Q/ai/M
Z=1
bN={}for a=-B,B do bN[a]=aG({1,a/B*M})end
function bh(a)if a<ab then
local w,bi=c[7][a]bi=0<bl({w[3],w[4]},sub(l[1],w))and 8 or 7
bh(w[bi])bh(w[15-bi])else
ao[#ao+1]=a-ab
end
end
function aP(a,b)if a<ab then
w=c[7][a]return aP(w[0<bl({w[3],w[4]},sub(b,w))and 8 or 7],b)else
return a-ab
end
end
function bf(b)w=c[5][c[6][b][2]]return aI[c[3][c[2][w[4]][w[5]+6]][6]]end
function onTick()bv=0
for o=1,3 do
if bp(9)and(not be)or not c[21]then
bj=property.getText(bm)a=1
C=""
_=bt.sub(bj,a,a)while _~=""do
aE=bt.byte(_)if aE>64 then
C=(C..aE-65)+0
if Z==1 then
bW=C
c[C]=c[C]or{}elseif Z==2 then
cH=C
az=0
elseif Z==3 then
br=C
else
if az==0 then
az=cH
br=br-1
bg={}c[bW][#c[bW]+1]=bg
end
bg[#bg+1]=C
az=az-1
Z=t(az,br)>0 and Z-1 or 0
end
Z=Z+1
C=""
else
C=C.._
end
a=a+1
_=bt.sub(bj,a,a)end
bm=bm+1
be=bj==""
end
end
if be then
if I(10)>0 then
aB=N
aF=I(10)end
if cp>0 and not aB then
ac={}ar[#ar+1]=ac
av=6
_=I(av)while _~=0 do
ak={}ac[#ac+1]=ak
for a=0,8 do
ak[a+1]=I(av+a)end
av=av+9
_=I(av)end
end
if bp(1)then
bH=0
bI=I(1)cp=I(3)ay=ay+1
c_=ay//10
if aB then
for a=1,10 do
c[a]=c[a+10*aF]end
k=c[1]cP={k[1][1],k[1][2]}for a=#k,1,-1 do
_=k[a]_=_[5]&(bk-3000)>0 or ch(k,a)end
aI=c[8]ar={}aF=aF+1
end
if I(2)>0 then
_=c[2][I(2)]if _ then
b=_[4]if b>0 then
if b==3008 then
aR=_[5]>0 and _[5]elseif b>3004 then
aN=t(aN+3*(_[4]-3006),1)ca=aN/2
elseif b>3000 then
bk=_[4]end
bH=I(2)if b<3000 and c[9][_[5]][7]==0 then
_[8]=1
end
end
end
end
if bp(3)and bI~=1 and bI~=3 and aZ<1 then
aZ=.1
aD=5
else
aD=aD-1
if aD<1 then
aZ=0
end
end
for a=1,#ar do
ac=ar[a]for o=1,#ac do
ak=ac[o]_=ak[1]if _>ab then
_=aI[_-ab]for g=1,6 do
_[g]=ak[g+1]end
elseif _<0 then
aE=c[1][-_]if aE and c[15][aE[4]or 1][29]=="light amp index" then
aZ=1
aD=4200
end
while-_>#k do
k[#k+1]=bB
end
ch(k,-_)else
k[_]=k[_]or{}_=k[_]for g=1,8 do
_[c[19][1][g]]=ak[g+1]end
_[15]=0
_[7]=aP(#c[7],_)_[8]=bf(_[7])end
end
end
ar={}for a=1,#c[6]do
aT[a]={}end
for a,_ in au(k)do
if aB then
_[7]=aP(#c[7],_)_[8]=bf(_[7])_[9]=_[8][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
end
if _ and a>1 then
bo=0
for o,d in au({1,2,9})do
_[d]=_[d]+_[d+10]bo=bo+_[d+10]end
if bo~=0 then
_[7]=aP(#c[7],_)_[8]=bf(_[7])end
_[15]=_[15]+1
_[20]=aK(_,l[1])O=c[16][_[6]]if O then
if O[5]>0 then
_[9]=_[8][1]end
if _[15]>=O[2]and O[2]~=-1 then
_[6]=O[4]_[15]=0
end
end
aT[_[7]][#aT[_[7]]+1]=a
end
end
_,aB=k[1]cy=r(aK(_,l[1])^2/4,16)l[1]={_[1],_[2]}F=_[3]l[2]=_[9]+41+cy*sin(ay*20)/4
ao={}bh(#c[7])aS={}x={}aO={}aW={}X={}Y={}aJ={}bz=Q
for a=0,Q-1 do
aS[a],X[a],Y[a]=#c[6]+2,u+1,-u
end
a=1
while a<=#ao and bz>0 do
_=c[6][ao[a]]aO[a]={}aW[a]={}x[a]={}aJ[a]=aT[ao[a]]table.sort(aJ[a],function(b,p)return k[b][20]>k[p][20]end)for o=_[2],_[1]+_[2]-1 do
W=c[5][o]J=c[2][W[4]]bM,cm=c[4][W[1]],c[4][W[2]]b_,bU=sub(bM,l[1]),sub(cm,l[1])bY=aG(b_)H,aU=bu(bY-F),bu(aG(bU)-F)if D(H)<90 or D(aU)<90 then
ag,ah=bb(H,-L,L),bb(aU,-L,L)if D(H)>=90 or D(aU)>=90 then
bZ=bl(b_,bU)if D(H)>=90 then
if bZ>0 then ag=-L else ag=L end
else
if bZ<0 then ah=-L else ah=L end
end
end
m,n=aw(tan(ag)/M*B),aw(tan(ah)/M*B)if m~=n then
s,at=aK(l[1],bM),aK(l[1],cm)aH=W[3]+90
bV=aH-bY
cF=s*sin(bV)ba=(s*cos(bV))if H~=ag then
s=ba/cos(aH-(ag+F))end
if aU~=ah then
at=ba/cos(aH-(ah+F))end
s,at=s*cos(ag),at*cos(ah)g=W[5]+6
cL=(m>n)if cL and J[g]~=0 then
ax=J[3]&4>0
if ax then
U=aI[c[3][J[13-g]][6]]end
ad=c[3][J[g]]ct={ad[3],ad[4],ad[5]}j,cd,cf=aI[ad[6]]for h,d in au(ct)do
aa=d>0
aj=N
if(aa or(h==3 and not(cd and cf)))and(h==3 or ax)then
bX=0
bQ=N
if h<3 then
bQ=h~=1 or t(j[4],U[4])~=0
E,y=j[3-h],(h==1 and t or r)(U[3-h],j[h])aj=(E<y)==(h==2)and E~=y and j~=U
aa=aj
E,y=r(E,y),t(E,y)if aj then
if h==1 then
cd=N
else
cf=N
bX=J[3]&16>0 and t(j[2],U[2])-y or 0
end
end
else
if ax then
E,y=r(t(j[1],U[1]),j[2]),t(r(j[2],U[2]),j[1])aj=j~=U
else
E,y=j[1],j[2]end
end
E,y=E-l[2],y-l[2]bG,cn=E*aM,y*aM
if(aj or aa)and bQ then
bc=W[6]-ad[1]if J[4]==48 then
bc=bc-ay
end
cE,cJ=bG/s,cn/s
cx,cK=bG/at,cn/at
bJ,an=0
if aa then
_=c[21][d][4]if(W[4]==bH or bk==J[4]or J[8])and _>0 then
d=_
end
as=c[21][d][3]v=1
if(h==3 and J[3]&16>0)or(h==1 and J[3]&8==0)then
v=-1
end
end
for g=m,n,-1 do
cM=bN[g]bC=(aH-F)-cM
f,co=B-g
if f>=0 and f<=Q-1 then
if a<aS[f]then
aY=(g-m)/(n-m)K,G=(cE*(1-aY)+cx*aY),(cJ*(1-aY)+cK*aY)if D(G+K)-(G-K)<ai then
if aa then
if K~=G then
co=N
cl=ba*tan(bC)aC=cg(r(((D(cl)+D(ba))//ca)+1,16))ce=al((t(cl-cF,0)-bc)/(as*aC))cb=ce*aC
bT={f,u-K,u-G,d,ce,y-E,j[5],ad[2]+bX,N,as*aC,aC,v,not an,h==3 and ax}if cb>bJ or(not an)or g==n then
bJ=cb-1+aC
an=N
x[a][#x[a]+1]=bT
end
ck=bT
end
end
if aj then
if h~=2 then
if G<X[f]then
aW[a][#aW[a]+1]={f,t(G,Y[f]),X[f],j}end
if h==3 then S=G else S=K end
if X[f]>S then X[f]=S end
end
if h~=1 then
if K>Y[f]then
aO[a][#aO[a]+1]={f,Y[f],r(K,X[f]),j}end
if h==3 then S=K else S=G end
if Y[f]<S then Y[f]=S end
end
if(X[f]<=Y[f])or(h==3 and(not ax)and aa)then
aS[f]=a
bz=bz-1
end
end
end
end
end
if(not co)and an then
ck[9]=bB
x[a][#x[a]+1],an=ck
end
end
if#x[a]>0 then
x[a][#x[a]][9]=bB
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
function onDraw()aV=screen
local cc,bD,af,bS=aV.drawTriangleF,aV.drawRectF,aV.setColor,aV.drawLine
cs={aO,aW}if be then
e=c[24][c[19][8][aF-3]]T,aq=e[1],e[2]A=Q/ceil(T*M)for a=0,ceil(T*M),1 do
m=(T/2-a-1+F/90*T)%T
n=(m%1-1)*A
m=al(m)*aq
for o=0,aq-1,1 do
R=e[5+o+m]i=c[20][R]af(i[1],i[2],i[3])bD(a*A+n,o*A,A,A)end
end
for a=#x,1,-1 do
for o=1,#x[a]do
d=x[a][o]if d[9]or d[13]then
if d[9]then
P=x[a][o+1]else
P=d
end
e=c[21][d[4]]e=c[21][d[4]+(c_%e[5])*"number of wall mipmap levels"+c[19][12][d[11]]]v=d[12]V=r(v,0)f=d[1]n=P[1]bP=d[2-V]cG=P[2-V]g=d[3+V]bx=P[3+V]if not P[9]then n=n+1 end
aX(d[7])cz=v*(d[2]-d[3])*e[3]/d[6]cB=v*(P[2]-P[3])*e[3]/P[6]ci=v>0 and r or t
by=0
while g*v<bP*v and(by<e[2]or not d[14])do
bL=ci(g+cz,bP)bd=ci(bx+cB,cG)R=e[7+((V+d[8]//e[3])%e[2])+e[2]*((d[5])%e[1])]i=c[20][R]if i then
af(i[1]*q,i[2]*q,i[3]*q)cc(f,g,f,bL,n,bd)cc(f,g,n,bx,n,bd)end
g=bL
bx=bd
V=V+v
by=by+1
end
end
end
for b=1,2 do
_=cs[b]cj={}aA,ap,bw=ai,-ai
for o,d in au(_[a])do
aA=r(aA,d[2])ap=t(ap,d[3])bw=d
e=c[22][d[4][b+2]]if e and not aR then
aX(d[4][5])i=c[20][e[5]]af(i[1]*q,i[2]*q,i[3]*q)bS(d[1],u-d[2],d[1],al(u-d[3]-1))end
end
if bw and aR then
j=bw[4]cr=(j[b]-l[2])bA=cos(F)bq=sin(F)for am=al(aA+u),ceil(ap+u)do
ae=aM*cr/(u-am)bF=bA*ae-l[1][1]cq=bq*ae-l[1][2]bO=-bq*ae+bF
bE=bA*ae+cq
cN=bq*ae+bF
cI=-bA*ae+cq
cD=(cN-bO)/Q
cA=(cI-bE)/Q
cj[am]={cD,cA,bO,bE}end
for o,d in au(_[a])do
if j[b+2]~=0 then
f=d[1]if f%aR==0 then
aX(j[5])p=j[b+2]e=c[22][p]e=c[22][p+(c_%e[4])]bR=B-(B-f)*M
aA,ap=al(d[2]+u),ceil(d[3]+u)as=e[3]for am=aA,ap do
aL=cj[am]cC=(aL[3]+aL[1]*bR)//as
cv=(aL[4]+aL[2]*bR)//as
R=6+(cv%e[1])+e[1]*(cC%e[2])i=c[20][e[R]]if i then
af(i[1]*q,i[2]*q,i[3]*q)bS(f,ai-am,f+aR+1,ai-am)end
end
end
end
end
end
end
for o=1,#aJ[a]do
_=k[aJ[a][o]]if _[6]~=0 then
b_=sub(_,l[1])s=_[20]if s>1 then
H=bu(aG(b_)-F)s=s*cos(H)if D(H)<90 then
m=B-aw(tan(H)/M*B)bC=aw((180+H+F-_[3]+bv*4)/360*8)O=c[16][_[6]][1]if O~=0 and _[6]~=1 then
e=c[17][D(O)][bC%8+1]v=e<0 and-1 or 1
e=D(e)if e>0 then
e=c[23][e+c[19][12][r(cg(s//aN+1),8)]]T,aq=e[1],e[2]A=B/(M*s)aQ=A*bn
K=u+(l[2]-_[9])/s*aM
G=K-e[5]*aQ
n=m-v*e[4]*A
A,aQ=A*e[3],aQ*e[3]aX(_[8][5])q=O>0 and q or 1
bK=A
cw=bK*bn
cu=c[15][_[4]or 1][23]&8>0
for g=0,T-1 do
m=n+g*A*v
if a<=aS[bb(aw(m),0,Q-1)]then
for h=0,aq-1 do
R=e[7+h+g*aq]if R~=0 then
if cu then
bs=bs%50+1
af(0,0,0,r(75*c[13][2][bs],255))else
i=c[20][R]af(i[1]*q,i[2]*q,i[3]*q)end
bD(m,G+h*aQ,bK,cw)end
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
bv=bv+1
end
