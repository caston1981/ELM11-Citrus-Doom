
z=math
w=z.max
r=z.min
F=z.abs
ag=z.floor
ceil=z.ceil
sqrt=z.sqrt
H=input.getNumber
bA=input.getBool
pi=z.pi/180
bm=false
Q=true
an=ipairs
ch=table.remove
bs=string
function bn(b,o)return b[1]*o[2]-b[2]*o[1]end
function sub(b,o)return{(b[1]-o[1]),(b[2]-o[2])}end
function b_(b)return((b+180)%360)-180 end
function sin(b)return z.sin(b*pi)end
function cos(b)return z.cos(b*pi)end
function tan(b)return z.tan(b*pi)end
function cP(b)return z.atan(b)/pi end
function aK(b)return z.atan(b[2],b[1])/pi end
function br(b,o,_)return r(w(o,b),_)end
function ao(b)return ag(b+.5)end
function aR(b,o)return sqrt(((b[1]-o[1])^2)+((b[2]-o[2])^2))end
function bT(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
function aO(b)t=r(b/255+ck,1)^2.2 end
c={}bt=1
as=3
aA=Q
l={{0,0},0}A=0
P=288
D=144
ak=128
v=64
aX={}aG=500
bQ=250
bO=1
cS=0
aN=2^15
bz=3002
bv=0
aF=0
au=0
bc=1.2
M=52
N=tan(M)aT=v*bc*P/ak/N
V=1
cp={}for a=-D,D do cp[a]=aK({1,a/D*N})end
function bf(a)if a<aN then
local x,bx=c[7][a]bx=0<bn({x[3],x[4]},sub(l[1],x))and 8 or 7
bf(x[bx])bf(x[15-bx])else
aC[#aC+1]=a-aN
end
end
function aE(a,b)if a<aN then
x=c[7][a]return aE(x[0<bn({x[3],x[4]},sub(b,x))and 8 or 7],b)else
return a-aN
end
end
function bh(b)x=c[5][c[6][b][2]]return aS[c[3][c[2][x[4]][x[5]+6]][6]]end
function onTick()bd=0
for m=1,3 do
if bA(9)and(not bw)or not c[21]then
by=property.getText(bt)a=1
B=""
_=bs.sub(by,a,a)while _~=""do
bI=bs.byte(_)if bI>64 then
B=(B..bI-65)+0
if V==1 then
bH=B
c[B]=c[B]or{}elseif V==2 then
ct=B
ay=0
elseif V==3 then
bb=B
else
if ay==0 then
ay=ct
bb=bb-1
ba={}c[bH][#c[bH]+1]=ba
end
ba[#ba+1]=B
ay=ay-1
V=w(ay,bb)>0 and V-1 or 0
end
V=V+1
B=""
else
B=B.._
end
a=a+1
_=bs.sub(by,a,a)end
bt=bt+1
bw=by==""
end
end
if bw then
if H(10)>0 then
aA=Q
as=H(10)end
if bO>0 and not aA then
ad={}aB[#aB+1]=ad
aw=6
_=H(aw)while _~=0 do
ah={}ad[#ad+1]=ah
for a=0,8 do
ah[a+1]=H(aw+a)end
aw=aw+9
_=H(aw)end
end
if bA(1)then
bW=0
bM=H(1)bO=H(3)au=au+1
cf=au//10
if aA then
for a=1,10 do
c[a]=c[a+10*as]end
k=c[1]cR={k[1][1],k[1][2]}for a=#k,1,-1 do
_=k[a]_=_[5]&(bz-3000)>0 or ch(k,a)end
aS=c[8]aB={}as=as+1
end
if H(2)>0 then
_=c[2][H(2)]if _ then
b=_[4]if b>0 then
if b==3008 then
aD=_[5]>0 and _[5]elseif b>3004 then
aG=w(aG+3*(_[4]-3006),1)bQ=aG/2
elseif b>3000 then
bz=_[4]end
bW=H(2)if b<3000 and c[9][_[5]][7]==0 then
_[8]=1
end
end
end
end
if bA(3)and bM~=1 and bM~=3 then
ck=.1
aF=5
else
aF=aF-1
if aF<1 then
ck=0
end
end
for a=1,#aB do
ad=aB[a]for m=1,#ad do
ah=ad[m]_=ah[1]if _>(2^15)then
_=aS[_-(2^15)]for g=1,6 do
_[g]=ah[g+1]end
elseif _<0 then
while-_>#k do
k[#k+1]=bm
end
ch(k,-_)else
if not k[_]then
k[_]={}end
_=k[_]for g=1,8 do
_[c[19][1][g]]=ah[g+1]end
_[15]=0
_[7]=aE(#c[7],_)_[8]=bh(_[7])end
end
end
aB={}for a=1,#c[6]do
aX[a]={}end
for a,_ in an(k)do
if aA then
_[7]=aE(#c[7],_)_[8]=bh(_[7])_[9]=_[8][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
end
if _ and a>1 then
bk=0
for m,d in an({1,2,9})do
_[d]=_[d]+_[d+10]bk=bk+_[d+10]end
if bk~=0 then
_[7]=aE(#c[7],_)_[8]=bh(_[7])end
_[15]=_[15]+1
_[20]=aR(_,l[1])L=c[16][_[6]]if L~=nil then
if L[5]>0 then
_[9]=_[8][1]end
if _[15]>=L[2]and L[2]~=-1 then
_[6]=L[4]_[15]=0
end
end
aX[_[7]][#aX[_[7]]+1]=a
end
end
_,aA=k[1]cJ=r(aR(_,l[1])^2/4,16)l[1]={_[1],_[2]}A=_[3]cQ=_[9]+1
l[2]=_[9]+41+cJ*sin(au*20)/4
aC={}bf(#c[7])aP={}s={}aW={}aV={}T={}Y={}aJ={}bq=P
for a=0,P-1 do
aP[a],T[a],Y[a]=#c[6]+2,v+1,-v
end
a=1
while a<=#aC and bq>0 do
_=c[6][aC[a]]aW[a]={}aV[a]={}s[a]={}aJ[a]=aX[aC[a]]table.sort(aJ[a],function(b,o)return k[b][20]>k[o][20]end)for m=_[2],_[1]+_[2]-1 do
U=c[5][m]J=c[2][U[4]]bP,cm=c[4][U[1]],c[4][U[2]]aQ,bG=sub(bP,l[1]),sub(cm,l[1])cb=aK(aQ)I,aZ=b_(cb-A),b_(aK(bG)-A)if F(I)<90 or F(aZ)<90 then
ac,ab=br(I,-M,M),br(aZ,-M,M)if F(I)>=90 or F(aZ)>=90 then
bJ=bn(aQ,bG)if F(I)>=90 then
if bJ>0 then ac=-M else ac=M end
else
if bJ<0 then ab=-M else ab=M end
end
end
n,p=ao(tan(ac)/N*D),ao(tan(ab)/N*D)if n~=p then
q,av=aR(l[1],bP),aR(l[1],cm)aL=U[3]+90
bN=aL-cb
cH=q*sin(bN)aM=(q*cos(bN))if I~=ac then
q=aM/cos(aL-(ac+A))end
if aZ~=ab then
av=aM/cos(aL-(ab+A))end
q,av=q*cos(ac),av*cos(ab)g=U[5]+6
cN=(n>p)if cN and J[g]~=0 then
ar=J[3]&4>0
if ar then
S=aS[c[3][J[13-g]][6]]end
af=c[3][J[g]]cw={af[3],af[4],af[5]}j,bS,bE=aS[af[6]]for i,d in an(cw)do
ai=d>0
aj=Q
if(ai or(i==3 and not(bS and bE)))and(i==3 or ar)then
ca,cq=0
if i<3 then
cq=i==1 and w(j[4],S[4])==0
C,y=j[3-i],(i==1 and w or r)(S[3-i],j[i])aj=(C<y)==(i==2)and C~=y and j~=S
ai=aj
C,y=r(C,y),w(C,y)if aj then
if i==1 then
bS=Q
else
bE=Q
ca=J[3]&16>0 and w(j[2],S[2])-y or 0
end
end
else
if ar then
C,y=r(w(j[1],S[1]),j[2]),w(r(j[2],S[2]),j[1])aj=j~=S
else
C,y=j[1],j[2]end
end
C,y=C-l[2],y-l[2]cl,c_=C*aT,y*aT
if(aj or ai)and not cq then
bo=U[6]-af[1]if J[4]==48 then
bo=bo-au
end
cE,cu=cl/q,c_/q
cD,cF=cl/av,c_/av
bV,az=0
if ai then
_=c[21][d][4]if(U[4]==bW or bz==J[4]or J[8])and _>0 then
d=_
end
ap=c[21][d][3]u=1
if(i==3 and J[3]&16>0)or(i==1 and J[3]&8==0)then
u=-1
end
end
for g=n,p,-1 do
cO=cp[g]bl=(aL-A)-cO
f,bK=D-g
if f>=0 and f<=P-1 then
if a<aP[f]then
aU=(g-n)/(p-n)G,K=(cE*(1-aU)+cD*aU),(cu*(1-aU)+cF*aU)if F(K+G)-(K-G)<ak then
if ai then
if G~=K then
bK=Q
bD=aM*tan(bl)ax=bT(r(((F(bD)+F(aM))//bQ)+1,16))bR=ag((w(bD-cH,0)-bo)/(ap*ax))bB=bR*ax
bZ={f,v-G,v-K,d,bR,y-C,j[5],af[2]+ca,Q,ap*ax,ax,u,not az,i==3 and ar}if bB>bV or(not az)or g==p then
bV=bB-1+ax
az=Q
s[a][#s[a]+1]=bZ
end
cL=bZ
end
end
if aj then
if i~=2 then
if K<T[f]then
aV[a][#aV[a]+1]={f,w(K,Y[f]),T[f],j}end
if i==3 then X=K else X=G end
if T[f]>X then T[f]=X end
end
if i~=1 then
if G>Y[f]then
aW[a][#aW[a]+1]={f,Y[f],r(G,T[f]),j}end
if i==3 then X=G else X=K end
if Y[f]<X then Y[f]=X end
end
if(T[f]<=Y[f])or(i==3 and(not ar)and ai)then
aP[f]=a
bq=bq-1
end
end
end
end
end
if(not bK)and az then
s[a][#s[a]+1],az=cL
s[a][#s[a]][9]=bm
end
end
if#s[a]>0 then
s[a][#s[a]][9]=bm
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
local cn,bF,ae,bU=aI.drawTriangleF,aI.drawRectF,aI.setColor,aI.drawLine
cy={aW,aV}if bw then
e=c[24][c[19][8][as-3]]Z,am=e[1],e[2]E=P/ceil(Z*N)cd=E*1
for a=0,ceil(Z*N),1 do
n=(Z/2-a-1+A/90*Z)%Z
p=(n%1-1)*E
n=ag(n)*am
for m=0,am-1,1 do
O=e[5+m+n]h=c[20][O]ae(h[1],h[2],h[3])bF(a*E+p,m*E,cd,cd)end
end
for a=#s,1,-1 do
for m=1,#s[a]do
d=s[a][m]if d[9]or d[13]then
if d[9]then
R=s[a][m+1]else
R=d
end
e=c[21][d[4]]e=c[21][d[4]+(cf%e[5])*"number of wall mipmap levels"+c[19][12][d[11]]]u=d[12]W=r(u,0)f=d[1]p=R[1]cj=d[2-W]cr=R[2-W]g=d[3+W]be=R[3+W]if not R[9]then p=p+1 end
aO(d[7])cC=u*(d[2]-d[3])*e[3]/d[6]cG=u*(R[2]-R[3])*e[3]/R[6]bC=u>0 and r or w
bp=0
while g*u<cj*u and(bp<e[2]or not d[14])do
cg=bC(g+cC,cj)bj=bC(be+cG,cr)O=e[7+((W+d[8]//e[3])%e[2])+e[2]*((d[5])%e[1])]h=c[20][O]if h then
ae(h[1]*t,h[2]*t,h[3]*t)cn(f,g,f,cg,p,bj)cn(f,g,p,be,p,bj)end
g=cg
be=bj
W=W+u
bp=bp+1
end
end
end
for b=1,2 do
_=cy[b]ce={}at,aq,bu=ak,-ak
for m,d in an(_[a])do
at=r(at,d[2])aq=w(aq,d[3])bu=d
e=c[22][d[4][b+2]]if e and not aD then
aO(d[4][5])h=c[20][e[5]]ae(h[1]*t,h[2]*t,h[3]*t)bU(d[1],v-d[2],d[1],ag(v-d[3]-1))end
end
if bu and aD then
j=bu[4]cM=(j[b]-l[2])bi=cos(A)bg=sin(A)for aa=ag(at+v),ceil(aq+v)do
al=aT*cM/(v-aa)co=bi*al-l[1][1]ci=bg*al-l[1][2]bL=-bg*al+co
cc=bi*al+ci
cA=bg*al+co
cv=-bi*al+ci
cz=(cA-bL)/P
cI=(cv-cc)/P
ce[aa]={cz,cI,bL,cc}end
for m,d in an(_[a])do
if j[b+2]~=0 then
f=d[1]if f%aD==0 then
aO(j[5])o=j[b+2]e=c[22][o]e=c[22][o+(cf%e[4])]bY=D-(D-f)*N
at,aq=ag(d[2]+v),ceil(d[3]+v)ap=e[3]for aa=at,aq do
aY=ce[aa]cK=(aY[3]+aY[1]*bY)//ap
cx=(aY[4]+aY[2]*bY)//ap
O=6+(cx%e[1])+e[1]*(cK%e[2])h=c[20][e[O]]if h then
ae(h[1]*t,h[2]*t,h[3]*t)bU(f,ak-aa,f+aD+1,ak-aa)end
end
end
end
end
end
end
for m=1,#aJ[a]do
_=k[aJ[a][m]]if _[6]~=0 then
aQ=sub(_,l[1])q=_[20]if q>1 then
I=b_(aK(aQ)-A)q=q*cos(I)if F(I)<90 then
n=D-ao(tan(I)/N*D)bl=ao((180+I+A-_[3]+bd*4)/360*8)L=c[16][_[6]][1]if L~=0 and _[6]~=1 then
e=c[17][F(L)][bl%8+1]u=e<0 and-1 or 1
e=F(e)if e>0 then
e=c[23][e+c[19][12][r(bT(q//aG+1),8)]]Z,am=e[1],e[2]E=D/(N*q)aH=E*bc
G=v+(l[2]-_[9])/q*aT
K=G-e[5]*aH
p=n-u*e[4]*E
E,aH=E*e[3],aH*e[3]aO(_[8][5])t=L>0 and t or 1
bX=E
cB=bX*bc
cs=_[4]and c[15][_[4]][23]&8>0
for g=0,Z-1 do
n=p+g*E*u
if a<=aP[br(ao(n),0,P-1)]then
for i=0,am-1 do
O=e[7+i+g*am]if O~=0 then
if cs then
bv=bv%50+1
ae(0,0,0,r(75*c[13][2][bv],255))else
h=c[20][O]ae(h[1]*t,h[2]*t,h[3]*t)end
bF(n,K+i*aH,bX,cB)end
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
