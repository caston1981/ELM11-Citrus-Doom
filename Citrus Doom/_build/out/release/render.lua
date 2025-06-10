
z=math
w=z.max
r=z.min
B=z.abs
af=z.floor
ceil=z.ceil
sqrt=z.sqrt
K=input.getNumber
ba=input.getBool
pi=z.pi/180
bt=false
P=true
aw=ipairs
bW=table.remove
bm=string
function bp(b,m)return b[1]*m[2]-b[2]*m[1]end
function sub(b,m)return{(b[1]-m[1]),(b[2]-m[2])}end
function bg(b)return((b+180)%360)-180 end
function sin(b)return z.sin(b*pi)end
function cos(b)return z.cos(b*pi)end
function tan(b)return z.tan(b*pi)end
function cP(b)return z.atan(b)/pi end
function aK(b)return z.atan(b[2],b[1])/pi end
function bx(b,m,_)return r(w(m,b),_)end
function aA(b)return af(b+.5)end
function aZ(b,m)return sqrt(((b[1]-m[1])^2)+((b[2]-m[2])^2))end
function bI(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
function aL(b)s=r(b/255+ce,1)^2.2 end
c={}br=1
ap=3
ak=P
l={{0,0},0}C=0
Q=288
D=144
ac=128
u=64
aM={}aW=400
bU=200
c_=1
cS=0
ax={}aP=2^15
bv=3002
bb=0
aV=0
ay=0
bh=1.2
N=52
M=tan(N)aO=u*bh*Q/ac/M
Y=1
cc={}for a=-D,D do cc[a]=aK({1,a/D*M})end
function bf(a)if a<aP then
local v,bc=c[7][a]bc=0<bp({v[3],v[4]},sub(l[1],v))and 8 or 7
bf(v[bc])bf(v[15-bc])else
ao[#ao+1]=a-aP
end
end
function aR(a,b)if a<aP then
v=c[7][a]return aR(v[0<bp({v[3],v[4]},sub(b,v))and 8 or 7],b)else
return a-aP
end
end
function bs(b)v=c[5][c[6][b][2]]return aY[c[3][c[2][v[4]][v[5]+6]][6]]end
function onTick()b_=0
for n=1,3 do
if ba(9)and(not bl)or not c[21]then
bi=property.getText(br)a=1
E=""
_=bm.sub(bi,a,a)while _~=""do
bX=bm.byte(_)if bX>64 then
E=(E..bX-65)+0
if Y==1 then
bK=E
c[E]=c[E]or{}elseif Y==2 then
cs=E
at=0
elseif Y==3 then
bz=E
else
if at==0 then
at=cs
bz=bz-1
bw={}c[bK][#c[bK]+1]=bw
end
bw[#bw+1]=E
at=at-1
Y=w(at,bz)>0 and Y-1 or 0
end
Y=Y+1
E=""
else
E=E.._
end
a=a+1
_=bm.sub(bi,a,a)end
br=br+1
bl=bi==""
end
end
if bl then
if K(9)>0 then
ak=P
ap=K(9)end
if c_>0 and not ak then
ab={}ax[#ax+1]=ab
aB=5
_=K(aB)while _~=0 do
ad={}ab[#ab+1]=ad
for a=0,8 do
ad[a+1]=K(aB+a)end
aB=aB+9
_=K(aB)end
end
if ba(1)then
bN=0
bM=K(1)c_=K(3)ay=ay+1
cf=ay//10
if ak then
for a=1,10 do
c[a]=c[a+10*ap]end
k=c[1]cQ={k[1][1],k[1][2]}for a=#k,1,-1 do
_=k[a]_=_[5]&(bv-3000)>0 or bW(k,a)end
aY=c[8]ap=ap+1
end
if K(2)>0 then
_=c[2][K(2)]if _ then
b=_[4]if b>0 then
if b==3008 then
aN=_[5]>0 and _[5]elseif b>3004 then
aW=w(aW+3*(_[4]-3006),1)bU=aW/2
elseif b>3000 then
bv=_[4]end
bN=K(2)if b<3000 and c[9][_[5]][7]==0 then
_[8]=1
end
end
end
end
if ba(3)and bM~=1 and bM~=3 then
ce=.1
aV=5
else
aV=aV-1
if aV<1 then
ce=0
end
end
for a=1,#ax do
ab=ax[a]for n=1,#ab do
ad=ab[n]_=ad[1]if _>(2^15)then
_=aY[_-(2^15)]for g=1,6 do
_[g]=ad[g+1]end
elseif _<0 then
while-_>#k do
k[#k+1]=bt
end
bW(k,-_)else
if not k[_]then
k[_]={}end
_=k[_]for g=1,8 do
_[c[19][1][g]]=ad[g+1]end
_[15]=0
_[7]=aR(#c[7],_)_[8]=bs(_[7])end
end
end
ax={}for a=1,#c[6]do
aM[a]={}end
for a,_ in aw(k)do
if ak then
_[7]=aR(#c[7],_)_[8]=bs(_[7])_[9]=_[8][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
end
if _ and a>1 then
bu=0
for n,d in aw({1,2,9})do
_[d]=_[d]+_[d+10]bu=bu+_[d+10]end
if bu~=0 then
_[7]=aR(#c[7],_)_[8]=bs(_[7])end
_[15]=_[15]+1
_[20]=aZ(_,l[1])L=c[16][_[6]]if L~=nil then
if L[5]>0 then
_[9]=_[8][1]end
if _[15]>=L[2]and L[2]~=-1 then
_[6]=L[4]_[15]=0
end
end
aM[_[7]][#aM[_[7]]+1]=a
end
end
_,ak=k[1]cN=r(aZ(_,l[1])^2/4,16)l[1]={_[1],_[2]}C=_[3]cR=_[9]+1
l[2]=_[9]+41+cN*sin(ay*20)/4
ao={}bf(#c[7])aU={}t={}aF={}aS={}T={}Z={}aX={}by=Q
for a=0,Q-1 do
aU[a],T[a],Z[a]=#c[6]+2,u+1,-u
end
a=1
while a<=#ao and by>0 do
_=c[6][ao[a]]aF[a]={}aS[a]={}t[a]={}aX[a]=aM[ao[a]]table.sort(aX[a],function(b,m)return k[b][20]>k[m][20]end)for n=_[2],_[1]+_[2]-1 do
X=c[5][n]J=c[2][X[4]]ch,bQ=c[4][X[1]],c[4][X[2]]aH,bF=sub(ch,l[1]),sub(bQ,l[1])cj=aK(aH)G,aT=bg(cj-C),bg(aK(bF)-C)if B(G)<90 or B(aT)<90 then
ag,aj=bx(G,-N,N),bx(aT,-N,N)if B(G)>=90 or B(aT)>=90 then
bC=bp(aH,bF)if B(G)>=90 then
if bC>0 then ag=-N else ag=N end
else
if bC<0 then aj=-N else aj=N end
end
end
o,p=aA(tan(ag)/M*D),aA(tan(aj)/M*D)if o~=p then
q,au=aZ(l[1],ch),aZ(l[1],bQ)aD=X[3]+90
cm=aD-cj
ct=q*sin(cm)aJ=(q*cos(cm))if G~=ag then
q=aJ/cos(aD-(ag+C))end
if aT~=aj then
au=aJ/cos(aD-(aj+C))end
q,au=q*cos(ag),au*cos(aj)g=X[5]+6
cH=(o>p)if cH and J[g]~=0 then
an=J[3]&4>0
if an then
U=aY[c[3][J[13-g]][6]]end
ah=c[3][J[g]]cL={ah[3],ah[4],ah[5]}j,bL,cg=aY[ah[6]]for i,d in aw(cL)do
az=d>0
al=P
if(az or(i==3 and not(bL and cg)))and(i==3 or an)then
ck,bT=0
if i<3 then
bT=i==1 and w(j[4],U[4])==0
F,y=j[3-i],(i==1 and w or r)(U[3-i],j[i])al=(F<y)~=(i==2)~=(g==6)and F~=y and j~=U
F,y=r(F,y),w(F,y)if al then
if i==1 then
bL=P
else
cg=P
ck=J[3]&16>0 and w(j[2],U[2])-y or 0
end
end
else
if an then
F,y=r(w(j[1],U[1]),j[2]),w(r(j[2],U[2]),j[1])al=j~=U
else
F,y=j[1],j[2]end
end
F,y=F-l[2],y-l[2]co,cd=F*aO,y*aO
if(al or az)and not bT then
bn=X[6]-ah[1]if J[4]==48 then
bn=bn-ay
end
cr,cG=co/q,cd/q
cu,cJ=co/au,cd/au
cn,av=0
if az then
_=c[21][d][4]if(X[4]==bN or bv==J[4]or J[8])and _>0 then
d=_
end
ar=c[21][d][3]x=1
if(i==3 and J[3]&16>0)or(i==1 and J[3]&8==0)then
x=-1
end
end
for g=o,p,-1 do
cK=cc[g]bd=(aD-C)-cK
f,ca=D-g
if f>=0 and f<=Q-1 then
if a<aU[f]then
aG=(g-o)/(p-o)H,I=(cr*(1-aG)+cu*aG),(cG*(1-aG)+cJ*aG)if B(I+H)-(I-H)<ac then
if az then
if H~=I then
ca=P
bB=aJ*tan(bd)aq=bI(r(((B(bB)+B(aJ))//bU)+1,16))bE=af((w(bB-ct,0)-bn)/(ar*aq))ci=bE*aq
bP={f,u-H,u-I,d,bE,y-F,j[5],ah[2]+ck,P,ar*aq,aq,x,not av,i==3 and an}if ci>cn or(not av)or g==p then
cn=ci-1+aq
av=P
t[a][#t[a]+1]=bP
end
cA=bP
end
end
if al then
if i~=2 then
if I<T[f]then
aS[a][#aS[a]+1]={f,w(I,Z[f]),T[f],j}end
if i==3 then V=I else V=H end
if T[f]>V then T[f]=V end
end
if i~=1 then
if H>Z[f]then
aF[a][#aF[a]+1]={f,Z[f],r(H,T[f]),j}end
if i==3 then V=H else V=I end
if Z[f]<V then Z[f]=V end
end
if(T[f]<=Z[f])or(i==3 and(not an)and az)then
aU[f]=a
by=by-1
end
end
end
end
end
if(not ca)and av then
t[a][#t[a]+1],av=cA
t[a][#t[a]][9]=bt
end
end
if#t[a]>0 then
t[a][#t[a]][9]=bt
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
local bV,cl,ae,bO=aI.drawTriangleF,aI.drawRectF,aI.setColor,aI.drawLine
cO={aF,aS}if bl then
e=c[24][c[19][8][ap-3]]W,am=e[1],e[2]A=Q/ceil(W*M)bG=A*1
for a=0,ceil(W*M),1 do
o=(W/2-a-1+C/90*W)%W
p=(o%1-1)*A
o=af(o)*am
for n=0,am-1,1 do
O=e[5+n+o]h=c[20][O]ae(h[1],h[2],h[3])cl(a*A+p,n*A,bG,bG)end
end
for a=#t,1,-1 do
for n=1,#t[a]do
d=t[a][n]if d[9]or d[13]then
if d[9]then
R=t[a][n+1]else
R=d
end
e=c[21][d[4]]e=c[21][d[4]+(cf%e[5])*c[19][3][2]+c[19][12][d[11]]]x=d[12]S=r(x,0)f=d[1]p=R[1]cq=d[2-S]cE=R[2-S]g=d[3+S]bj=R[3+S]if not R[9]then p=p+1 end
aL(d[7])cM=x*(d[2]-d[3])*e[3]/d[6]cC=x*(R[2]-R[3])*e[3]/R[6]bJ=x>0 and r or w
be=0
while g*x<cq*x and(be<e[2]or not d[14])do
bD=bJ(g+cM,cq)bq=bJ(bj+cC,cE)O=e[7+((S+d[8]//e[3])%e[2])+e[2]*((d[5])%e[1])]h=c[20][O]if h then
ae(h[1]*s,h[2]*s,h[3]*s)bV(f,g,f,bD,p,bq)bV(f,g,p,bj,p,bq)end
g=bD
bj=bq
S=S+x
be=be+1
end
end
end
for b=1,2 do
_=cO[b]bY={}as,aC,bA=ac,-ac
for n,d in aw(_[a])do
as=r(as,d[2])aC=w(aC,d[3])bA=d
e=c[22][d[4][b+2]]if e and not aN then
aL(d[4][5])h=c[20][e[5]]ae(h[1]*s,h[2]*s,h[3]*s)bO(d[1],u-d[2],d[1],af(u-d[3]-1))end
end
if bA and aN then
j=bA[4]cI=(j[b]-l[2])bk=cos(C)bo=sin(C)for aa=af(as+u),ceil(aC+u)do
ai=aO*cI/(u-aa)bH=bk*ai-l[1][1]bS=bo*ai-l[1][2]cp=-bo*ai+bH
cb=bk*ai+bS
cB=bo*ai+bH
cx=-bk*ai+bS
cz=(cB-cp)/Q
cy=(cx-cb)/Q
bY[aa]={cz,cy,cp,cb}end
for n,d in aw(_[a])do
if j[b+2]~=0 then
f=d[1]if f%aN==0 then
aL(j[5])m=j[b+2]e=c[22][m]e=c[22][m+(cf%e[4])]bR=D-(D-f)*M
as,aC=af(d[2]+u),ceil(d[3]+u)ar=e[3]for aa=as,aC do
aE=bY[aa]cF=(aE[3]+aE[1]*bR)//ar
cw=(aE[4]+aE[2]*bR)//ar
O=6+(cw%e[1])+e[1]*(cF%e[2])h=c[20][e[O]]if h then
ae(h[1]*s,h[2]*s,h[3]*s)bO(f,ac-aa,f+aN+1,ac-aa)end
end
end
end
end
end
end
for n=1,#aX[a]do
_=k[aX[a][n]]if _[6]~=0 then
aH=sub(_,l[1])q=_[20]if q>1 then
G=bg(aK(aH)-C)q=q*cos(G)if B(G)<90 then
o=D-aA(tan(G)/M*D)bd=aA((180+G+C-_[3]+b_*4)/360*8)L=c[16][_[6]][1]if L~=0 and _[6]~=1 then
e=c[17][B(L)][bd%8+1]x=e<0 and-1 or 1
e=B(e)if e>0 then
e=c[23][e+c[19][12][r(bI(q//aW+1),8)]]W,am=e[1],e[2]A=D/(M*q)aQ=A*bh
H=u+(l[2]-_[9])/q*aO
I=H-e[5]*aQ
p=o-x*e[4]*A
A,aQ=A*e[3],aQ*e[3]aL(_[8][5])s=L>0 and s or 1
bZ=A
cv=bZ*bh
cD=_[4]and c[15][_[4]][23]&8>0
for g=0,W-1 do
o=p+g*A*x
if a<=aU[bx(aA(o),0,Q-1)]then
for i=0,am-1 do
O=e[7+i+g*am]if O~=0 then
if cD then
bb=bb%50+1
ae(0,0,0,r(75*c[13][2][bb],255))else
h=c[20][O]ae(h[1]*s,h[2]*s,h[3]*s)end
cl(o,I+i*aQ,bZ,cv)end
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
b_=b_+1
end
