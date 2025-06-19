
y=math
u=y.max
t=y.min
E=y.abs
ah=y.floor
ceil=y.ceil
sqrt=y.sqrt
G=input.getNumber
bt=input.getBool
pi=y.pi/180
bh=false
Q=true
ay=ipairs
cn=table.remove
bl=string
function bi(b,n)return b[1]*n[2]-b[2]*n[1]end
function sub(b,n)return{(b[1]-n[1]),(b[2]-n[2])}end
function bb(b)return((b+180)%360)-180 end
function sin(b)return y.sin(b*pi)end
function cos(b)return y.cos(b*pi)end
function tan(b)return y.tan(b*pi)end
function cQ(b)return y.atan(b)/pi end
function aS(b)return y.atan(b[2],b[1])/pi end
function be(b,n,_)return t(u(n,b),_)end
function am(b)return ah(b+.5)end
function aI(b,n)return sqrt(((b[1]-n[1])^2)+((b[2]-n[2])^2))end
function bL(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
function aR(b)q=t(b/255+cc,1)^2.2 end
c={}bv=1
aC=3
ar=Q
l={{0,0},0}B=0
R=288
D=144
aa=128
x=64
aU={}aQ=500
bE=250
cg=1
cS=0
aD=2^15
bp=3002
bz=0
aK=0
av=0
bq=1.2
N=52
M=tan(N)aG=x*bq*R/aa/M
T=1
bH={}for a=-D,D do bH[a]=aS({1,a/D*M})end
function b_(a)if a<aD then
local w,bo=c[7][a]bo=0<bi({w[3],w[4]},sub(l[1],w))and 8 or 7
b_(w[bo])b_(w[15-bo])else
as[#as+1]=a-aD
end
end
function aM(a,b)if a<aD then
w=c[7][a]return aM(w[0<bi({w[3],w[4]},sub(b,w))and 8 or 7],b)else
return a-aD
end
end
function bd(b)w=c[5][c[6][b][2]]return aL[c[3][c[2][w[4]][w[5]+6]][6]]end
function onTick()bg=0
for o=1,3 do
if bt(9)and(not bA)or not c[21]then
bn=property.getText(bv)a=1
C=""
_=bl.sub(bn,a,a)while _~=""do
bF=bl.byte(_)if bF>64 then
C=(C..bF-65)+0
if T==1 then
cd=C
c[C]=c[C]or{}elseif T==2 then
cD=C
aq=0
elseif T==3 then
br=C
else
if aq==0 then
aq=cD
br=br-1
bk={}c[cd][#c[cd]+1]=bk
end
bk[#bk+1]=C
aq=aq-1
T=u(aq,br)>0 and T-1 or 0
end
T=T+1
C=""
else
C=C.._
end
a=a+1
_=bl.sub(bn,a,a)end
bv=bv+1
bA=bn==""
end
end
if bA then
if G(10)>0 then
ar=Q
aC=G(10)end
if cg>0 and not ar then
al={}at[#at+1]=al
au=6
_=G(au)while _~=0 do
ag={}al[#al+1]=ag
for a=0,8 do
ag[a+1]=G(au+a)end
au=au+9
_=G(au)end
end
if bt(1)then
bC=0
cj=G(1)cg=G(3)av=av+1
bB=av//10
if ar then
for a=1,10 do
c[a]=c[a+10*aC]end
k=c[1]cP={k[1][1],k[1][2]}for a=#k,1,-1 do
_=k[a]_=_[5]&(bp-3000)>0 or cn(k,a)end
aL=c[8]at={}aC=aC+1
end
if G(2)>0 then
_=c[2][G(2)]if _ then
b=_[4]if b>0 then
if b==3008 then
aJ=_[5]>0 and _[5]elseif b>3004 then
aQ=u(aQ+3*(_[4]-3006),1)bE=aQ/2
elseif b>3000 then
bp=_[4]end
bC=G(2)if b<3000 and c[9][_[5]][7]==0 then
_[8]=1
end
end
end
end
if bt(3)and cj~=1 and cj~=3 then
cc=.1
aK=5
else
aK=aK-1
if aK<1 then
cc=0
end
end
for a=1,#at do
al=at[a]for o=1,#al do
ag=al[o]_=ag[1]if _>(2^15)then
_=aL[_-(2^15)]for g=1,6 do
_[g]=ag[g+1]end
elseif _<0 then
while-_>#k do
k[#k+1]=bh
end
cn(k,-_)else
if not k[_]then
k[_]={}end
_=k[_]for g=1,8 do
_[c[19][1][g]]=ag[g+1]end
_[15]=0
_[7]=aM(#c[7],_)_[8]=bd(_[7])end
end
end
at={}for a=1,#c[6]do
aU[a]={}end
for a,_ in ay(k)do
if ar then
_[7]=aM(#c[7],_)_[8]=bd(_[7])_[9]=_[8][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
end
if _ and a>1 then
bu=0
for o,d in ay({1,2,9})do
_[d]=_[d]+_[d+10]bu=bu+_[d+10]end
if bu~=0 then
_[7]=aM(#c[7],_)_[8]=bd(_[7])end
_[15]=_[15]+1
_[20]=aI(_,l[1])L=c[16][_[6]]if L~=nil then
if L[5]>0 then
_[9]=_[8][1]end
if _[15]>=L[2]and L[2]~=-1 then
_[6]=L[4]_[15]=0
end
end
aU[_[7]][#aU[_[7]]+1]=a
end
end
_,ar=k[1]cv=t(aI(_,l[1])^2/4,16)l[1]={_[1],_[2]}B=_[3]cR=_[9]+1
l[2]=_[9]+41+cv*sin(av*20)/4
as={}b_(#c[7])aP={}r={}aN={}aX={}V={}X={}aW={}bs=R
for a=0,R-1 do
aP[a],V[a],X[a]=#c[6]+2,x+1,-x
end
a=1
while a<=#as and bs>0 do
_=c[6][as[a]]aN[a]={}aX[a]={}r[a]={}aW[a]=aU[as[a]]table.sort(aW[a],function(b,n)return k[b][20]>k[n][20]end)for o=_[2],_[1]+_[2]-1 do
Y=c[5][o]J=c[2][Y[4]]ci,bJ=c[4][Y[1]],c[4][Y[2]]aY,bD=sub(ci,l[1]),sub(bJ,l[1])bT=aS(aY)K,aH=bb(bT-B),bb(aS(bD)-B)if E(K)<90 or E(aH)<90 then
ae,ai=be(K,-N,N),be(aH,-N,N)if E(K)>=90 or E(aH)>=90 then
bM=bi(aY,bD)if E(K)>=90 then
if bM>0 then ae=-N else ae=N end
else
if bM<0 then ai=-N else ai=N end
end
end
m,p=am(tan(ae)/M*D),am(tan(ai)/M*D)if m~=p then
s,aB=aI(l[1],ci),aI(l[1],bJ)aF=Y[3]+90
cb=aF-bT
cw=s*sin(cb)aT=(s*cos(cb))if K~=ae then
s=aT/cos(aF-(ae+B))end
if aH~=ai then
aB=aT/cos(aF-(ai+B))end
s,aB=s*cos(ae),aB*cos(ai)g=Y[5]+6
cN=(m>p)if cN and J[g]~=0 then
ao=J[3]&4>0
if ao then
W=aL[c[3][J[13-g]][6]]end
ac=c[3][J[g]]cF={ac[3],ac[4],ac[5]}j,bO,bW=aL[ac[6]]for h,d in ay(cF)do
aj=d>0
ad=Q
if(aj or(h==3 and not(bO and bW)))and(h==3 or ao)then
bV,cq=0
if h<3 then
cq=h==1 and u(j[4],W[4])==0
F,z=j[3-h],(h==1 and u or t)(W[3-h],j[h])ad=(F<z)==(h==2)and F~=z and j~=W
aj=ad
F,z=t(F,z),u(F,z)if ad then
if h==1 then
bO=Q
else
bW=Q
bV=J[3]&16>0 and u(j[2],W[2])-z or 0
end
end
else
if ao then
F,z=t(u(j[1],W[1]),j[2]),u(t(j[2],W[2]),j[1])ad=j~=W
else
F,z=j[1],j[2]end
end
F,z=F-l[2],z-l[2]bN,bG=F*aG,z*aG
if(ad or aj)and not cq then
bx=Y[6]-ac[1]if J[4]==48 then
bx=bx-av
end
cy,ct=bN/s,bG/s
cx,cM=bN/aB,bG/aB
bK,aw=0
if aj then
_=c[21][d][4]if(Y[4]==bC or bp==J[4]or J[8])and _>0 then
d=_
end
az=c[21][d][3]v=1
if(h==3 and J[3]&16>0)or(h==1 and J[3]&8==0)then
v=-1
end
end
for g=m,p,-1 do
cO=bH[g]bf=(aF-B)-cO
f,cf=D-g
if f>=0 and f<=R-1 then
if a<aP[f]then
aO=(g-m)/(p-m)I,H=(cy*(1-aO)+cx*aO),(ct*(1-aO)+cM*aO)if E(H+I)-(H-I)<aa then
if aj then
if I~=H then
cf=Q
co=aT*tan(bf)ax=bL(t(((E(co)+E(aT))//bE)+1,16))ca=ah((u(co-cw,0)-bx)/(az*ax))cl=ca*ax
c_={f,x-I,x-H,d,ca,z-F,j[5],ac[2]+bV,Q,az*ax,ax,v,not aw,h==3 and ao}if cl>bK or(not aw)or g==p then
bK=cl-1+ax
aw=Q
r[a][#r[a]+1]=c_
end
cB=c_
end
end
if ad then
if h~=2 then
if H<V[f]then
aX[a][#aX[a]+1]={f,u(H,X[f]),V[f],j}end
if h==3 then S=H else S=I end
if V[f]>S then V[f]=S end
end
if h~=1 then
if I>X[f]then
aN[a][#aN[a]+1]={f,X[f],t(I,V[f]),j}end
if h==3 then S=I else S=H end
if X[f]<S then X[f]=S end
end
if(V[f]<=X[f])or(h==3 and(not ao)and aj)then
aP[f]=a
bs=bs-1
end
end
end
end
end
if(not cf)and aw then
r[a][#r[a]+1],aw=cB
r[a][#r[a]][9]=bh
end
end
if#r[a]>0 then
r[a][#r[a]][9]=bh
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
function onDraw()aZ=screen
local bR,bQ,af,bI=aZ.drawTriangleF,aZ.drawRectF,aZ.setColor,aZ.drawLine
cz={aN,aX}if bA then
e=c[24][c[19][8][aC-3]]Z,an=e[1],e[2]A=R/ceil(Z*M)bS=A*1
for a=0,ceil(Z*M),1 do
m=(Z/2-a-1+B/90*Z)%Z
p=(m%1-1)*A
m=ah(m)*an
for o=0,an-1,1 do
P=e[5+o+m]i=c[20][P]af(i[1],i[2],i[3])bQ(a*A+p,o*A,bS,bS)end
end
for a=#r,1,-1 do
for o=1,#r[a]do
d=r[a][o]if d[9]or d[13]then
if d[9]then
O=r[a][o+1]else
O=d
end
e=c[21][d[4]]e=c[21][d[4]+(bB%e[5])*"number of wall mipmap levels"+c[19][12][d[11]]]v=d[12]U=t(v,0)f=d[1]p=O[1]bY=d[2-U]cG=O[2-U]g=d[3+U]by=O[3+U]if not O[9]then p=p+1 end
aR(d[7])cr=v*(d[2]-d[3])*e[3]/d[6]cA=v*(O[2]-O[3])*e[3]/O[6]cm=v>0 and t or u
bw=0
while g*v<bY*v and(bw<e[2]or not d[14])do
ck=cm(g+cr,bY)bm=cm(by+cA,cG)P=e[7+((U+d[8]//e[3])%e[2])+e[2]*((d[5])%e[1])]i=c[20][P]if i then
af(i[1]*q,i[2]*q,i[3]*q)bR(f,g,f,ck,p,bm)bR(f,g,p,by,p,bm)end
g=ck
by=bm
U=U+v
bw=bw+1
end
end
end
for b=1,2 do
_=cz[b]bP={}aA,ap,bc=aa,-aa
for o,d in ay(_[a])do
aA=t(aA,d[2])ap=u(ap,d[3])bc=d
e=c[22][d[4][b+2]]if e and not aJ then
aR(d[4][5])i=c[20][e[5]]af(i[1]*q,i[2]*q,i[3]*q)bI(d[1],x-d[2],d[1],ah(x-d[3]-1))end
end
if bc and aJ then
j=bc[4]cE=(j[b]-l[2])ba=cos(B)bj=sin(B)for ak=ah(aA+x),ceil(ap+x)do
ab=aG*cE/(x-ak)bU=ba*ab-l[1][1]bX=bj*ab-l[1][2]bZ=-bj*ab+bU
cp=ba*ab+bX
cK=bj*ab+bU
cu=-ba*ab+bX
cC=(cK-bZ)/R
cI=(cu-cp)/R
bP[ak]={cC,cI,bZ,cp}end
for o,d in ay(_[a])do
if j[b+2]~=0 then
f=d[1]if f%aJ==0 then
aR(j[5])n=j[b+2]e=c[22][n]e=c[22][n+(bB%e[4])]ch=D-(D-f)*M
aA,ap=ah(d[2]+x),ceil(d[3]+x)az=e[3]for ak=aA,ap do
aE=bP[ak]cs=(aE[3]+aE[1]*ch)//az
cJ=(aE[4]+aE[2]*ch)//az
P=6+(cJ%e[1])+e[1]*(cs%e[2])i=c[20][e[P]]if i then
af(i[1]*q,i[2]*q,i[3]*q)bI(f,aa-ak,f+aJ+1,aa-ak)end
end
end
end
end
end
end
for o=1,#aW[a]do
_=k[aW[a][o]]if _[6]~=0 then
aY=sub(_,l[1])s=_[20]if s>1 then
K=bb(aS(aY)-B)s=s*cos(K)if E(K)<90 then
m=D-am(tan(K)/M*D)bf=am((180+K+B-_[3]+bg*4)/360*8)L=c[16][_[6]][1]if L~=0 and _[6]~=1 then
e=c[17][E(L)][bf%8+1]v=e<0 and-1 or 1
e=E(e)if e>0 then
e=c[23][e+c[19][12][t(bL(s//aQ+1),8)]]Z,an=e[1],e[2]A=D/(M*s)aV=A*bq
I=x+(l[2]-_[9])/s*aG
H=I-e[5]*aV
p=m-v*e[4]*A
A,aV=A*e[3],aV*e[3]aR(_[8][5])q=L>0 and q or 1
ce=A
cL=ce*bq
cH=_[4]and c[15][_[4]][23]&8>0
for g=0,Z-1 do
m=p+g*A*v
if a<=aP[be(am(m),0,R-1)]then
for h=0,an-1 do
P=e[7+h+g*an]if P~=0 then
if cH then
bz=bz%50+1
af(0,0,0,t(75*c[13][2][bz],255))else
i=c[20][P]af(i[1]*q,i[2]*q,i[3]*q)end
bQ(m,H+h*aV,ce,cL)end
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
bg=bg+1
end
