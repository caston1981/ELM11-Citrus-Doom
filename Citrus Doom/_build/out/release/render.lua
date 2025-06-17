
y=math
u=y.max
t=y.min
F=y.abs
aj=y.floor
ceil=y.ceil
sqrt=y.sqrt
K=input.getNumber
b_=input.getBool
pi=y.pi/180
bw=false
P=true
ao=ipairs
bW=table.remove
bz=string
function bx(b,p)return b[1]*p[2]-b[2]*p[1]end
function sub(b,p)return{(b[1]-p[1]),(b[2]-p[2])}end
function bn(b)return((b+180)%360)-180 end
function sin(b)return y.sin(b*pi)end
function cos(b)return y.cos(b*pi)end
function tan(b)return y.tan(b*pi)end
function cS(b)return y.atan(b)/pi end
function aU(b)return y.atan(b[2],b[1])/pi end
function bA(b,p,_)return t(u(p,b),_)end
function ar(b)return aj(b+.5)end
function aM(b,p)return sqrt(((b[1]-p[1])^2)+((b[2]-p[2])^2))end
function cm(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
function aV(b)r=t(b/255+co,1)^2.2 end
c={}bs=1
aC=3
as=P
l={{0,0},0}C=0
Q=288
D=144
aa=128
w=64
aR={}aH=500
bO=250
bV=1
cR=0
aK=2^15
bt=3002
bc=0
aS=0
an=0
bl=1.2
N=52
M=tan(N)aD=w*bl*Q/aa/M
U=1
bF={}for a=-D,D do bF[a]=aU({1,a/D*M})end
function bj(a)if a<aK then
local v,bh=c[7][a]bh=0<bx({v[3],v[4]},sub(l[1],v))and 8 or 7
bj(v[bh])bj(v[15-bh])else
aq[#aq+1]=a-aK
end
end
function aQ(a,b)if a<aK then
v=c[7][a]return aQ(v[0<bx({v[3],v[4]},sub(b,v))and 8 or 7],b)else
return a-aK
end
end
function bb(b)v=c[5][c[6][b][2]]return aG[c[3][c[2][v[4]][v[5]+6]][6]]end
function onTick()bv=0
for m=1,3 do
if b_(9)and(not bo)or not c[21]then
ba=property.getText(bs)a=1
B=""
_=bz.sub(ba,a,a)while _~=""do
bL=bz.byte(_)if bL>64 then
B=(B..bL-65)+0
if U==1 then
bH=B
c[B]=c[B]or{}elseif U==2 then
cx=B
ax=0
elseif U==3 then
bm=B
else
if ax==0 then
ax=cx
bm=bm-1
bi={}c[bH][#c[bH]+1]=bi
end
bi[#bi+1]=B
ax=ax-1
U=u(ax,bm)>0 and U-1 or 0
end
U=U+1
B=""
else
B=B.._
end
a=a+1
_=bz.sub(ba,a,a)end
bs=bs+1
bo=ba==""
end
end
if bo then
if K(10)>0 then
as=P
aC=K(10)end
if bV>0 and not as then
ae={}av[#av+1]=ae
aB=6
_=K(aB)while _~=0 do
ab={}ae[#ae+1]=ab
for a=0,8 do
ab[a+1]=K(aB+a)end
aB=aB+9
_=K(aB)end
end
if b_(1)then
bS=0
cp=K(1)bV=K(3)an=an+1
cc=an//10
if as then
for a=1,10 do
c[a]=c[a+10*aC]end
k=c[1]cQ={k[1][1],k[1][2]}for a=#k,1,-1 do
_=k[a]_=_[5]&(bt-3000)>0 or bW(k,a)end
aG=c[8]av={}aC=aC+1
end
if K(2)>0 then
_=c[2][K(2)]if _ then
b=_[4]if b>0 then
if b==3008 then
aP=_[5]>0 and _[5]elseif b>3004 then
aH=u(aH+3*(_[4]-3006),1)bO=aH/2
elseif b>3000 then
bt=_[4]end
bS=K(2)if b<3000 and c[9][_[5]][7]==0 then
_[8]=1
end
end
end
end
if b_(3)and cp~=1 and cp~=3 then
co=.1
aS=5
else
aS=aS-1
if aS<1 then
co=0
end
end
for a=1,#av do
ae=av[a]for m=1,#ae do
ab=ae[m]_=ab[1]if _>(2^15)then
_=aG[_-(2^15)]for g=1,6 do
_[g]=ab[g+1]end
elseif _<0 then
while-_>#k do
k[#k+1]=bw
end
bW(k,-_)else
if not k[_]then
k[_]={}end
_=k[_]for g=1,8 do
_[c[19][1][g]]=ab[g+1]end
_[15]=0
_[7]=aQ(#c[7],_)_[8]=bb(_[7])end
end
end
av={}for a=1,#c[6]do
aR[a]={}end
for a,_ in ao(k)do
if as then
_[7]=aQ(#c[7],_)_[8]=bb(_[7])_[9]=_[8][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
end
if _ and a>1 then
bd=0
for m,d in ao({1,2,9})do
_[d]=_[d]+_[d+10]bd=bd+_[d+10]end
if bd~=0 then
_[7]=aQ(#c[7],_)_[8]=bb(_[7])end
_[15]=_[15]+1
_[20]=aM(_,l[1])L=c[16][_[6]]if L~=nil then
if L[5]>0 then
_[9]=_[8][1]end
if _[15]>=L[2]and L[2]~=-1 then
_[6]=L[4]_[15]=0
end
end
aR[_[7]][#aR[_[7]]+1]=a
end
end
_,as=k[1]cH=t(aM(_,l[1])^2/4,16)l[1]={_[1],_[2]}C=_[3]cP=_[9]+1
l[2]=_[9]+41+cH*sin(an*20)/4
aq={}bj(#c[7])aT={}s={}aL={}aI={}V={}S={}aN={}by=Q
for a=0,Q-1 do
aT[a],V[a],S[a]=#c[6]+2,w+1,-w
end
a=1
while a<=#aq and by>0 do
_=c[6][aq[a]]aL[a]={}aI[a]={}s[a]={}aN[a]=aR[aq[a]]table.sort(aN[a],function(b,p)return k[b][20]>k[p][20]end)for m=_[2],_[1]+_[2]-1 do
T=c[5][m]J=c[2][T[4]]cn,bE=c[4][T[1]],c[4][T[2]]aZ,bY=sub(cn,l[1]),sub(bE,l[1])ck=aU(aZ)H,aE=bn(ck-C),bn(aU(bY)-C)if F(H)<90 or F(aE)<90 then
al,ad=bA(H,-N,N),bA(aE,-N,N)if F(H)>=90 or F(aE)>=90 then
bG=bx(aZ,bY)if F(H)>=90 then
if bG>0 then al=-N else al=N end
else
if bG<0 then ad=-N else ad=N end
end
end
o,n=ar(tan(al)/M*D),ar(tan(ad)/M*D)if o~=n then
q,aw=aM(l[1],cn),aM(l[1],bE)aJ=T[3]+90
cq=aJ-ck
ct=q*sin(cq)aX=(q*cos(cq))if H~=al then
q=aX/cos(aJ-(al+C))end
if aE~=ad then
aw=aX/cos(aJ-(ad+C))end
q,aw=q*cos(al),aw*cos(ad)g=T[5]+6
cz=(o>n)if cz and J[g]~=0 then
aA=J[3]&4>0
if aA then
X=aG[c[3][J[13-g]][6]]end
ai=c[3][J[g]]cI={ai[3],ai[4],ai[5]}j,bJ,bT=aG[ai[6]]for i,d in ao(cI)do
ah=d>0
ac=P
if(ah or(i==3 and not(bJ and bT)))and(i==3 or aA)then
ch,cg=0
if i<3 then
cg=i==1 and u(j[4],X[4])==0
E,z=j[3-i],(i==1 and u or t)(X[3-i],j[i])ac=(E<z)==(i==2)and E~=z and j~=X
ah=ac
E,z=t(E,z),u(E,z)if ac then
if i==1 then
bJ=P
else
bT=P
ch=J[3]&16>0 and u(j[2],X[2])-z or 0
end
end
else
if aA then
E,z=t(u(j[1],X[1]),j[2]),u(t(j[2],X[2]),j[1])ac=j~=X
else
E,z=j[1],j[2]end
end
E,z=E-l[2],z-l[2]cd,ca=E*aD,z*aD
if(ac or ah)and not cg then
bk=T[6]-ai[1]if J[4]==48 then
bk=bk-an
end
cK,cL=cd/q,ca/q
cJ,cE=cd/aw,ca/aw
bR,az=0
if ah then
_=c[21][d][4]if(T[4]==bS or bt==J[4]or J[8])and _>0 then
d=_
end
am=c[21][d][3]x=1
if(i==3 and J[3]&16>0)or(i==1 and J[3]&8==0)then
x=-1
end
end
for g=o,n,-1 do
cr=bF[g]bg=(aJ-C)-cr
f,ci=D-g
if f>=0 and f<=Q-1 then
if a<aT[f]then
aO=(g-o)/(n-o)G,I=(cK*(1-aO)+cJ*aO),(cL*(1-aO)+cE*aO)if F(I+G)-(I-G)<aa then
if ah then
if G~=I then
ci=P
bB=aX*tan(bg)ap=cm(t(((F(bB)+F(aX))//bO)+1,16))bC=aj((u(bB-ct,0)-bk)/(am*ap))bN=bC*ap
c_={f,w-G,w-I,d,bC,z-E,j[5],ai[2]+ch,P,am*ap,ap,x,not az,i==3 and aA}if bN>bR or(not az)or g==n then
bR=bN-1+ap
az=P
s[a][#s[a]+1]=c_
end
cB=c_
end
end
if ac then
if i~=2 then
if I<V[f]then
aI[a][#aI[a]+1]={f,u(I,S[f]),V[f],j}end
if i==3 then Y=I else Y=G end
if V[f]>Y then V[f]=Y end
end
if i~=1 then
if G>S[f]then
aL[a][#aL[a]+1]={f,S[f],t(G,V[f]),j}end
if i==3 then Y=G else Y=I end
if S[f]<Y then S[f]=Y end
end
if(V[f]<=S[f])or(i==3 and(not aA)and ah)then
aT[f]=a
by=by-1
end
end
end
end
end
if(not ci)and az then
s[a][#s[a]+1],az=cB
s[a][#s[a]][9]=bw
end
end
if#s[a]>0 then
s[a][#s[a]][9]=bw
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
local cj,bU,ag,bK=aF.drawTriangleF,aF.drawRectF,aF.setColor,aF.drawLine
cs={aL,aI}if bo then
e=c[24][c[19][8][aC-3]]Z,ay=e[1],e[2]A=Q/ceil(Z*M)bQ=A*1
for a=0,ceil(Z*M),1 do
o=(Z/2-a-1+C/90*Z)%Z
n=(o%1-1)*A
o=aj(o)*ay
for m=0,ay-1,1 do
R=e[5+m+o]h=c[20][R]ag(h[1],h[2],h[3])bU(a*A+n,m*A,bQ,bQ)end
end
for a=#s,1,-1 do
for m=1,#s[a]do
d=s[a][m]if d[9]or d[13]then
if d[9]then
O=s[a][m+1]else
O=d
end
e=c[21][d[4]]e=c[21][d[4]+(cc%e[5])*"number of wall mipmap levels"+c[19][12][d[11]]]x=d[12]W=t(x,0)f=d[1]n=O[1]bI=d[2-W]cF=O[2-W]g=d[3+W]bf=O[3+W]if not O[9]then n=n+1 end
aV(d[7])cC=x*(d[2]-d[3])*e[3]/d[6]cM=x*(O[2]-O[3])*e[3]/O[6]bM=x>0 and t or u
be=0
while g*x<bI*x and(be<e[2]or not d[14])do
bX=bM(g+cC,bI)bq=bM(bf+cM,cF)R=e[7+((W+d[8]//e[3])%e[2])+e[2]*((d[5])%e[1])]h=c[20][R]if h then
ag(h[1]*r,h[2]*r,h[3]*r)cj(f,g,f,bX,n,bq)cj(f,g,n,bf,n,bq)end
g=bX
bf=bq
W=W+x
be=be+1
end
end
end
for b=1,2 do
_=cs[b]cb={}au,at,bp=aa,-aa
for m,d in ao(_[a])do
au=t(au,d[2])at=u(at,d[3])bp=d
e=c[22][d[4][b+2]]if e and not aP then
aV(d[4][5])h=c[20][e[5]]ag(h[1]*r,h[2]*r,h[3]*r)bK(d[1],w-d[2],d[1],aj(w-d[3]-1))end
end
if bp and aP then
j=bp[4]cA=(j[b]-l[2])bu=cos(C)br=sin(C)for ak=aj(au+w),ceil(at+w)do
af=aD*cA/(w-ak)cl=bu*af-l[1][1]bP=br*af-l[1][2]bZ=-br*af+cl
ce=bu*af+bP
cD=br*af+cl
cy=-bu*af+bP
cv=(cD-bZ)/Q
cG=(cy-ce)/Q
cb[ak]={cv,cG,bZ,ce}end
for m,d in ao(_[a])do
if j[b+2]~=0 then
f=d[1]if f%aP==0 then
aV(j[5])p=j[b+2]e=c[22][p]e=c[22][p+(cc%e[4])]bD=D-(D-f)*M
au,at=aj(d[2]+w),ceil(d[3]+w)am=e[3]for ak=au,at do
aW=cb[ak]cO=(aW[3]+aW[1]*bD)//am
cw=(aW[4]+aW[2]*bD)//am
R=6+(cw%e[1])+e[1]*(cO%e[2])h=c[20][e[R]]if h then
ag(h[1]*r,h[2]*r,h[3]*r)bK(f,aa-ak,f+aP+1,aa-ak)end
end
end
end
end
end
end
for m=1,#aN[a]do
_=k[aN[a][m]]if _[6]~=0 then
aZ=sub(_,l[1])q=_[20]if q>1 then
H=bn(aU(aZ)-C)q=q*cos(H)if F(H)<90 then
o=D-ar(tan(H)/M*D)bg=ar((180+H+C-_[3]+bv*4)/360*8)L=c[16][_[6]][1]if L~=0 and _[6]~=1 then
e=c[17][F(L)][bg%8+1]x=e<0 and-1 or 1
e=F(e)if e>0 then
e=c[23][e+c[19][12][t(cm(q//aH+1),8)]]Z,ay=e[1],e[2]A=D/(M*q)aY=A*bl
G=w+(l[2]-_[9])/q*aD
I=G-e[5]*aY
n=o-x*e[4]*A
A,aY=A*e[3],aY*e[3]aV(_[8][5])r=L>0 and r or 1
cf=A
cN=cf*bl
cu=_[4]and c[15][_[4]][23]&8>0
for g=0,Z-1 do
o=n+g*A*x
if a<=aT[bA(ar(o),0,Q-1)]then
for i=0,ay-1 do
R=e[7+i+g*ay]if R~=0 then
if cu then
bc=bc%50+1
ag(0,0,0,t(75*c[13][2][bc],255))else
h=c[20][R]ag(h[1]*r,h[2]*r,h[3]*r)end
bU(o,I+i*aY,cf,cN)end
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
