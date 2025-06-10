
z=math
u=z.max
r=z.min
F=z.abs
af=z.floor
ceil=z.ceil
sqrt=z.sqrt
J=input.getNumber
bn=input.getBool
pi=z.pi/180
bo=false
Q=true
an=ipairs
bV=table.remove
bj=string
function bA(b,o)return b[1]*o[2]-b[2]*o[1]end
function sub(b,o)return{(b[1]-o[1]),(b[2]-o[2])}end
function bq(b)return((b+180)%360)-180 end
function sin(b)return z.sin(b*pi)end
function cos(b)return z.cos(b*pi)end
function tan(b)return z.tan(b*pi)end
function cS(b)return z.atan(b)/pi end
function aI(b)return z.atan(b[2],b[1])/pi end
function bv(b,o,_)return r(u(o,b),_)end
function am(b)return af(b+.5)end
function aM(b,o)return sqrt(((b[1]-o[1])^2)+((b[2]-o[2])^2))end
function bM(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
function aJ(b)q=r(b/255+bC,1)^2.2 end
c={}bh=1
ap=3
ax=Q
l={{0,0},0}B=0
P=288
C=144
ah=128
v=64
aX={}aK=400
ce=200
bJ=1
cR=0
aw={}aQ=2^15
b_=3002
bs=0
aL=0
aq=0
br=1.2
N=52
M=tan(N)aN=v*br*P/ah/M
T=1
ck={}for a=-C,C do ck[a]=aI({1,a/C*M})end
function by(a)if a<aQ then
local x,bx=c[7][a]bx=0<bA({x[3],x[4]},sub(l[1],x))and 8 or 7
by(x[bx])by(x[15-bx])else
av[#av+1]=a-aQ
end
end
function aU(a,b)if a<aQ then
x=c[7][a]return aU(x[0<bA({x[3],x[4]},sub(b,x))and 8 or 7],b)else
return a-aQ
end
end
function bg(b)x=c[5][c[6][b][2]]return aF[c[3][c[2][x[4]][x[5]+6]][6]]end
function onTick()bk=0
for m=1,3 do
if bn(9)and(not bm)or not c[21]then
bb=property.getText(bh)a=1
E=""
_=bj.sub(bb,a,a)while _~=""do
bP=bj.byte(_)if bP>64 then
E=(E..bP-65)+0
if T==1 then
cg=E
c[E]=c[E]or{}elseif T==2 then
cF=E
aB=0
elseif T==3 then
bd=E
else
if aB==0 then
aB=cF
bd=bd-1
bl={}c[cg][#c[cg]+1]=bl
end
bl[#bl+1]=E
aB=aB-1
T=u(aB,bd)>0 and T-1 or 0
end
T=T+1
E=""
else
E=E.._
end
a=a+1
_=bj.sub(bb,a,a)end
bh=bh+1
bm=bb==""
end
end
if bm then
if J(9)>0 then
ax=Q
ap=J(9)end
if bJ>0 and not ax then
ag={}aw[#aw+1]=ag
ay=5
_=J(ay)while _~=0 do
ai={}ag[#ag+1]=ai
for a=0,8 do
ai[a+1]=J(ay+a)end
ay=ay+9
_=J(ay)end
end
if bn(1)then
cc=0
bI=J(1)bJ=J(3)aq=aq+1
bK=aq//10
if ax then
for a=1,10 do
c[a]=c[a+10*ap]end
k=c[1]cQ={k[1][1],k[1][2]}for a=#k,1,-1 do
_=k[a]_=_[5]&(b_-3000)>0 or bV(k,a)end
aF=c[8]ap=ap+1
end
if J(2)>0 then
_=c[2][J(2)]if _ then
b=_[4]if b>0 then
if b==3008 then
aO=_[5]>0 and _[5]elseif b>3004 then
aK=u(aK+3*(_[4]-3006),1)ce=aK/2
elseif b>3000 then
b_=_[4]end
cc=J(2)if b<3000 and c[9][_[5]][7]==0 then
_[8]=1
end
end
end
end
if bn(3)and bI~=1 and bI~=3 then
bC=.1
aL=5
else
aL=aL-1
if aL<1 then
bC=0
end
end
for a=1,#aw do
ag=aw[a]for m=1,#ag do
ai=ag[m]_=ai[1]if _>(2^15)then
_=aF[_-(2^15)]for g=1,6 do
_[g]=ai[g+1]end
elseif _<0 then
while-_>#k do
k[#k+1]=bo
end
bV(k,-_)else
if not k[_]then
k[_]={}end
_=k[_]for g=1,8 do
_[c[19][1][g]]=ai[g+1]end
_[15]=0
_[7]=aU(#c[7],_)_[8]=bg(_[7])end
end
end
aw={}for a=1,#c[6]do
aX[a]={}end
for a,_ in an(k)do
if ax then
_[7]=aU(#c[7],_)_[8]=bg(_[7])_[9]=_[8][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
end
if _ and a>1 then
bt=0
for m,d in an({1,2,9})do
_[d]=_[d]+_[d+10]bt=bt+_[d+10]end
if bt~=0 then
_[7]=aU(#c[7],_)_[8]=bg(_[7])end
_[15]=_[15]+1
_[20]=aM(_,l[1])L=c[16][_[6]]if L~=nil then
if L[5]>0 then
_[9]=_[8][1]end
if _[15]>=L[2]and L[2]~=-1 then
_[6]=L[4]_[15]=0
end
end
aX[_[7]][#aX[_[7]]+1]=a
end
end
_,ax=k[1]cD=r(aM(_,l[1])^2/4,16)l[1]={_[1],_[2]}B=_[3]cP=_[9]+1
l[2]=_[9]+41+cD*sin(aq*20)/4
av={}by(#c[7])aW={}t={}aZ={}aG={}S={}Y={}aD={}ba=P
for a=0,P-1 do
aW[a],S[a],Y[a]=#c[6]+2,v+1,-v
end
a=1
while a<=#av and ba>0 do
_=c[6][av[a]]aZ[a]={}aG[a]={}t[a]={}aD[a]=aX[av[a]]table.sort(aD[a],function(b,o)return k[b][20]>k[o][20]end)for m=_[2],_[1]+_[2]-1 do
W=c[5][m]I=c[2][W[4]]co,bE=c[4][W[1]],c[4][W[2]]aH,bR=sub(co,l[1]),sub(bE,l[1])bU=aI(aH)G,aP=bq(bU-B),bq(aI(bR)-B)if F(G)<90 or F(aP)<90 then
ae,aa=bv(G,-N,N),bv(aP,-N,N)if F(G)>=90 or F(aP)>=90 then
cb=bA(aH,bR)if F(G)>=90 then
if cb>0 then ae=-N else ae=N end
else
if cb<0 then aa=-N else aa=N end
end
end
p,n=am(tan(ae)/M*C),am(tan(aa)/M*C)if p~=n then
s,ar=aM(l[1],co),aM(l[1],bE)aT=W[3]+90
bW=aT-bU
cr=s*sin(bW)aV=(s*cos(bW))if G~=ae then
s=aV/cos(aT-(ae+B))end
if aP~=aa then
ar=aV/cos(aT-(aa+B))end
s,ar=s*cos(ae),ar*cos(aa)g=W[5]+6
cN=(p>n)if cN and I[g]~=0 then
aC=I[3]&4>0
if aC then
Z=aF[c[3][I[13-g]][6]]end
aj=c[3][I[g]]cO={aj[3],aj[4],aj[5]}j,bB,cm=aF[aj[6]]for h,d in an(cO)do
ak=d>0
ad=Q
if(ak or(h==3 and not(bB and cm)))and(h==3 or aC)then
bS,bF=0
if h<3 then
bF=h==1 and u(j[4],Z[4])==0
A,y=j[3-h],(h==1 and u or r)(Z[3-h],j[h])ad=(A<y)==(h==2)and A~=y and j~=Z
ak=ad
A,y=r(A,y),u(A,y)if ad then
if h==1 then
bB=Q
else
cm=Q
bS=I[3]&16>0 and u(j[2],Z[2])-y or 0
end
end
else
if aC then
A,y=r(u(j[1],Z[1]),j[2]),u(r(j[2],Z[2]),j[1])ad=j~=Z
else
A,y=j[1],j[2]end
end
A,y=A-l[2],y-l[2]bG,bD=A*aN,y*aN
if(ad or ak)and not bF then
be=W[6]-aj[1]if I[4]==48 then
be=be-aq
end
cM,cy=bG/s,bD/s
cC,cv=bG/ar,bD/ar
bT,at=0
if ak then
_=c[21][d][4]if(W[4]==cc or b_==I[4]or I[8])and _>0 then
d=_
end
as=c[21][d][3]w=1
if(h==3 and I[3]&16>0)or(h==1 and I[3]&8==0)then
w=-1
end
end
for g=p,n,-1 do
cE=ck[g]bp=(aT-B)-cE
f,bH=C-g
if f>=0 and f<=P-1 then
if a<aW[f]then
aE=(g-p)/(n-p)K,H=(cM*(1-aE)+cC*aE),(cy*(1-aE)+cv*aE)if F(H+K)-(H-K)<ah then
if ak then
if K~=H then
bH=Q
bL=aV*tan(bp)au=bM(r(((F(bL)+F(aV))//ce)+1,16))bN=af((u(bL-cr,0)-be)/(as*au))ch=bN*au
cq={f,v-K,v-H,d,bN,y-A,j[5],aj[2]+bS,Q,as*au,au,w,not at,h==3 and aC}if ch>bT or(not at)or g==n then
bT=ch-1+au
at=Q
t[a][#t[a]+1]=cq
end
cI=cq
end
end
if ad then
if h~=2 then
if H<S[f]then
aG[a][#aG[a]+1]={f,u(H,Y[f]),S[f],j}end
if h==3 then X=H else X=K end
if S[f]>X then S[f]=X end
end
if h~=1 then
if K>Y[f]then
aZ[a][#aZ[a]+1]={f,Y[f],r(K,S[f]),j}end
if h==3 then X=K else X=H end
if Y[f]<X then Y[f]=X end
end
if(S[f]<=Y[f])or(h==3 and(not aC)and ak)then
aW[f]=a
ba=ba-1
end
end
end
end
end
if(not bH)and at then
t[a][#t[a]+1],at=cI
t[a][#t[a]][9]=bo
end
end
if#t[a]>0 then
t[a][#t[a]][9]=bo
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
function onDraw()aY=screen
local cj,ca,ab,cp=aY.drawTriangleF,aY.drawRectF,aY.setColor,aY.drawLine
cG={aZ,aG}if bm then
e=c[24][c[19][8][ap-3]]V,az=e[1],e[2]D=P/ceil(V*M)bY=D*1
for a=0,ceil(V*M),1 do
p=(V/2-a-1+B/90*V)%V
n=(p%1-1)*D
p=af(p)*az
for m=0,az-1,1 do
O=e[5+m+p]i=c[20][O]ab(i[1],i[2],i[3])ca(a*D+n,m*D,bY,bY)end
end
for a=#t,1,-1 do
for m=1,#t[a]do
d=t[a][m]if d[9]or d[13]then
if d[9]then
R=t[a][m+1]else
R=d
end
e=c[21][d[4]]e=c[21][d[4]+(bK%e[5])*c[19][3][2]+c[19][12][d[11]]]w=d[12]U=r(w,0)f=d[1]n=R[1]cl=d[2-U]cw=R[2-U]g=d[3+U]bw=R[3+U]if not R[9]then n=n+1 end
aJ(d[7])cA=w*(d[2]-d[3])*e[3]/d[6]cu=w*(R[2]-R[3])*e[3]/R[6]cn=w>0 and r or u
bi=0
while g*w<cl*w and(bi<e[2]or not d[14])do
cf=cn(g+cA,cl)bz=cn(bw+cu,cw)O=e[7+((U+d[8]//e[3])%e[2])+e[2]*((d[5])%e[1])]i=c[20][O]if i then
ab(i[1]*q,i[2]*q,i[3]*q)cj(f,g,f,cf,n,bz)cj(f,g,n,bw,n,bz)end
g=cf
bw=bz
U=U+w
bi=bi+1
end
end
end
for b=1,2 do
_=cG[b]ci={}aA,ao,bu=ah,-ah
for m,d in an(_[a])do
aA=r(aA,d[2])ao=u(ao,d[3])bu=d
e=c[22][d[4][b+2]]if e and not aO then
aJ(d[4][5])i=c[20][e[5]]ab(i[1]*q,i[2]*q,i[3]*q)cp(d[1],v-d[2],d[1],af(v-d[3]-1))end
end
if bu and aO then
j=bu[4]ct=(j[b]-l[2])bf=cos(B)bc=sin(B)for al=af(aA+v),ceil(ao+v)do
ac=aN*ct/(v-al)bZ=bf*ac-l[1][1]cd=bc*ac-l[1][2]bX=-bc*ac+bZ
bO=bf*ac+cd
cK=bc*ac+bZ
cL=-bf*ac+cd
cs=(cK-bX)/P
cx=(cL-bO)/P
ci[al]={cs,cx,bX,bO}end
for m,d in an(_[a])do
if j[b+2]~=0 then
f=d[1]if f%aO==0 then
aJ(j[5])o=j[b+2]e=c[22][o]e=c[22][o+(bK%e[4])]bQ=C-(C-f)*M
aA,ao=af(d[2]+v),ceil(d[3]+v)as=e[3]for al=aA,ao do
aS=ci[al]cB=(aS[3]+aS[1]*bQ)//as
cJ=(aS[4]+aS[2]*bQ)//as
O=6+(cJ%e[1])+e[1]*(cB%e[2])i=c[20][e[O]]if i then
ab(i[1]*q,i[2]*q,i[3]*q)cp(f,ah-al,f+aO+1,ah-al)end
end
end
end
end
end
end
for m=1,#aD[a]do
_=k[aD[a][m]]if _[6]~=0 then
aH=sub(_,l[1])s=_[20]if s>1 then
G=bq(aI(aH)-B)s=s*cos(G)if F(G)<90 then
p=C-am(tan(G)/M*C)bp=am((180+G+B-_[3]+bk*4)/360*8)L=c[16][_[6]][1]if L~=0 and _[6]~=1 then
e=c[17][F(L)][bp%8+1]w=e<0 and-1 or 1
e=F(e)if e>0 then
e=c[23][e+c[19][12][r(bM(s//aK+1),8)]]V,az=e[1],e[2]D=C/(M*s)aR=D*br
K=v+(l[2]-_[9])/s*aN
H=K-e[5]*aR
n=p-w*e[4]*D
D,aR=D*e[3],aR*e[3]aJ(_[8][5])q=L>0 and q or 1
c_=D
cz=c_*br
cH=_[4]and c[15][_[4]][23]&8>0
for g=0,V-1 do
p=n+g*D*w
if a<=aW[bv(am(p),0,P-1)]then
for h=0,az-1 do
O=e[7+h+g*az]if O~=0 then
if cH then
bs=bs%50+1
ab(0,0,0,r(75*c[13][2][bs],255))else
i=c[20][O]ab(i[1]*q,i[2]*q,i[3]*q)end
ca(p,H+h*aR,c_,cz)end
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
bk=bk+1
end
