
bV=screen
aG=ipairs
bM=table
bH=input
x=math
y=x.max
w=x.min
B=x.abs
ag=x.floor
ceil=x.ceil
sqrt=x.sqrt
J=bH.getNumber
bw=bH.getBool
pi=x.pi/180
K=false
P=true
bv=string
function ba(b,o)return b[1]*o[2]-b[2]*o[1]end
function sub(b,o)return{(b[1]-o[1]),(b[2]-o[2])}end
function bm(b)return((b+180)%360)-180 end
function sin(b)return x.sin(b*pi)end
function cos(b)return x.cos(b*pi)end
function tan(b)return x.tan(b*pi)end
function cS(b)return x.atan(b)/pi end
function aE(b)return x.atan(b[2],b[1])/pi end
function bx(b,o,_)return w(y(o,b),_)end
function ay(b)return ag(b+.5)end
function aY(b,o)return sqrt(((b[1]-o[1])^2)+((b[2]-o[2])^2))end
function bK(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
function b_(b)q=w(b/255+bQ,1)^2.2 end
c={}bz=1
az=3
aO=K
au=P
g={{0,0},0,0}M=288
D=M//2
aj=128
s=aj//2
aP={}aS=400
bD=200
bC=100
cR=0
ao={}aL=2^15
bX=3002
bi=0
aN=0
aw=0
br=1.2
L=52
O=tan(L)aJ=s*br*M/aj/O
V=1
ci={}for a=-D,D do ci[a]=aE({1,a/D*O})end
function bc(a)if a<aL then
local t,bd=c[7][a]bd=0<ba({t[3],t[4]},sub(g[1],t))and 8 or 7
bc(t[bd])bc(t[15-bd])else
as[#as+1]=a-aL
end
end
function aT(a,b)if a<aL then
t=c[7][a]return aT(t[0<ba({t[3],t[4]},sub(b,t))and 8 or 7],b)else
return a-aL
end
end
function bb(b)t=c[5][c[6][b][2]]return ap[c[3][c[2][t[4]][t[5]+6]][6]]end
function onTick()bp=0
for m=1,3 do
if bw(9)and(not aO)or not c[21]then
bt=property.getText(bz)a=1
A=""
_=bv.sub(bt,a,a)while _~=""do
cd=bv.byte(_)if cd>64 then
A=(A..cd-65)+0
if V==1 then
ce=A
c[A]=c[A]or{}elseif V==2 then
cC=A
aq=0
elseif V==3 then
bB=A
else
if aq==0 then
aq=cC
bB=bB-1
by={}c[ce][#c[ce]+1]=by
end
by[#by+1]=A
aq=aq-1
V=y(aq,bB)>0 and V-1 or 0
end
V=V+1
A=""
else
A=A.._
end
a=a+1
_=bv.sub(bt,a,a)end
bz=bz+1
aO=bt==""
end
end
if aO then
if J(9)>0 then
au=P
az=J(9)end
if bC>0 and not au then
ab={}ao[#ao+1]=ab
am=5
_=J(am)while _~=0 do
ad={}ab[#ab+1]=ad
for a=0,8 do
ad[a+1]=J(am+a)end
am=am+9
_=J(am)end
end
if bw(1)then
bS=0
bo=J(1)bC=J(3)aw=aw+1
cr=aw//10
if au then
for a=1,10 do
c[a]=c[a+10*az]end
l=c[1]bU={l[1][1],l[1][2]}ap=c[8]az=az+1
end
if J(2)>0 then
_=c[2][J(2)]if _ then
b=_[4]if b>0 then
if b==3008 then
aR=_[5]>0 and _[5]elseif b>3004 then
aS=y(aS+3*(_[4]-3006),1)bD=aS/2
elseif b>3000 then
bX=_[4]end
bS=J(2)if b<3000 and c[9][_[5]][7]==0 then
_[8]=1
end
end
end
end
if bw(3)and bo~=1 and bo~=3 then
bQ=.1
aN=bo==5 and 5 or 3
else
aN=aN-1
if aN<1 then
bQ=0
end
end
for a=1,#ao do
ab=ao[a]for m=1,#ab do
ad=ab[m]_=ad[1]if _>(2^15)then
_=ap[_-(2^15)]for h=1,6 do
_[h]=ad[h+1]end
elseif _<0 then
while-_>#l do
l[#l+1]=K
end
bM.remove(l,-_)else
if not l[_]then
l[_]={}end
_=l[_]for h=1,8 do
_[c[19][1][h]]=ad[h+1]end
_[15]=0
_[7]=aT(#c[7],_)_[8]=bb(_[7])end
end
end
ao={}for a=1,#c[6]do
aP[a]={}end
for a=1,#l do
_=l[a]if au then
_[7]=aT(#c[7],_)_[8]=bb(_[7])_[9]=_[8][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
end
if _ and a>1 then
bq=0
for m,d in aG({1,2,9})do
_[d]=_[d]+_[d+10]bq=bq+_[d+10]end
if bq~=0 then
_[7]=aT(#c[7],_)_[8]=bb(_[7])end
_[15]=_[15]+1
_[20]=aY(_,g[1])N=c[16][_[6]]if N~=nil then
if N[5]>0 then
_[9]=_[8][1]end
if _[15]>=N[2]and N[2]~=-1 then
_[6]=N[4]_[15]=0
end
end
aP[_[7]][#aP[_[7]]+1]=a
end
end
au=K
_=l[1]g[1]={_[1],_[2]}g[3]=_[3]cz=w(aY(g[1],bU)^2/4,16)bU={_[1],_[2]}g[2]=_[9]+41+cz*sin(aw*20)/4
as={}bc(#c[7])aH={}r={}aI={}aM={}X={}Z={}aW={}bh=M
for a=0,M-1 do
aH[a],X[a],Z[a]=#c[6]+2,s+1,-s
end
a=1
while a<=#as and bh>0 do
_=c[6][as[a]]aI[a]={}aM[a]={}r[a]={}aW[a]=aP[as[a]]bM.sort(aW[a],function(b,o)return l[b][20]>l[o][20]end)for m=_[2],_[1]+_[2]-1 do
Y=c[5][m]E=c[2][Y[4]]bP,bJ=c[4][Y[1]],c[4][Y[2]]aZ,cf=sub(bP,g[1]),sub(bJ,g[1])cg=aE(aZ)G,aK=bm(cg-g[3]),bm(aE(cf)-g[3])if B(G)<90 or B(aK)<90 then
ah,af=bx(G,-L,L),bx(aK,-L,L)if B(G)>=90 or B(aK)>=90 then
bL=ba(aZ,cf)if B(G)>=90 then
if bL>0 then ah=-L else ah=L end
else
if bL<0 then af=-L else af=L end
end
end
n,k=ay(tan(ah)/O*D),ay(tan(af)/O*D)if n~=k then
p,ax=aY(g[1],bP),aY(g[1],bJ)aX=Y[3]+90
cj=aX-cg
cO=p*sin(cj)aV=(p*cos(cj))if G~=ah then
p=aV/cos(aX-(ah+g[3]))end
if aK~=af then
ax=aV/cos(aX-(af+g[3]))end
p,ax=p*cos(ah),ax*cos(af)h=Y[5]+6
cF=(n>k)if cF and E[h]~=0 then
aB=E[3]&4>0
if aB then
aa,U=ap[c[3][E[6]][6]],ap[c[3][E[7]][6]]end
ae=c[3][E[h]]cD={ae[3],ae[4],ae[5]}I,cl,bN=ap[ae[6]]for j,d in aG(cD)do
al=d>0
aC=P
if(al or(j==3 and not(cl and bN)))and(j==3 or aB)then
ca=K
ch=0
if j<3 then
ca=j==1 and y(aa[4],U[4])==0
C,v=aa[3-j],U[3-j]aC=(C<v)~=(j==2)~=(h==6)and C~=v and aa~=U
C,v=w(C,v),y(C,v)if aC then
if j==1 then
cl=P
else
bN=P
ch=E[3]&16>0 and y(aa[2],U[2])-v or 0
end
end
else
if aB then
C,v=y(aa[1],U[1]),w(aa[2],U[2])aC=aa~=U
else
C,v=I[1],I[2]end
end
C,v=C-g[2],v-g[2]bO,bF=C*aJ,v*aJ
if(aC or al)and not ca then
bs=Y[6]-ae[1]if E[4]==48 then
bs=bs-aw
end
cB,cK=bO/p,bF/p
cE,cy=bO/ax,bF/ax
bY=0
aD=K
if al then
_=c[21][d][4]if(Y[4]==bS or bX==E[4]or E[8])and _>0 then
d=_
end
an=c[21][d][3]u=1
if(j==3 and E[3]&16>0)or(j==1 and E[3]&8==0)then
u=-1
end
end
for h=n,k,-1 do
cP=ci[h]bj=(aX-g[3])-cP
f=D-h
bE=K
if f>=0 and f<=M-1 then
if a<aH[f]then
aQ=(h-n)/(k-n)H,F=(cB*(1-aQ)+cE*aQ),(cK*(1-aQ)+cy*aQ)if B(F+H)-(F-H)<aj then
if al then
if H~=F then
bE=P
cn=aV*tan(bj)aA=bK(w(((B(cn)+B(aV))//bD)+1,16))c_=ag((y(cn-cO,0)-bs)/(an*aA))cm=c_*aA
cc={f,s-H,s-F,d,c_,v-C,I[5],ae[2]+ch,P,an*aA,aA,u,not aD,j==3 and aB}if cm>bY or(not aD)or h==k then
bY=cm-1+aA
aD=P
r[a][#r[a]+1]=cc
end
cI=cc
end
end
if aC then
if j~=2 then
if F<X[f]then
aM[a][#aM[a]+1]={f,y(F,Z[f]),X[f],I}end
if j==3 then T=F else T=H end
if X[f]>T then X[f]=T end
end
if j~=1 then
if H>Z[f]then
aI[a][#aI[a]+1]={f,Z[f],w(H,X[f]),I}end
if j==3 then T=H else T=F end
if Z[f]<T then Z[f]=T end
end
if(X[f]<=Z[f])or(j==3 and(not aB)and al)then
aH[f]=a
bh=bh-1
end
end
end
end
end
if(not bE)and aD then
aD=K
r[a][#r[a]+1]=cI
r[a][#r[a]][9]=K
end
end
if#r[a]>0 then
r[a][#r[a]][9]=K
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
function onDraw()bg=bV
local bR,bu,ai=bg.drawTriangleF,bg.drawRectF,bg.setColor
cN={aI,aM}if aO then
e=c[24][c[19][8][az-3]]S,ar=e[1],e[2]z=M/ceil(S*O)bZ=z*1
for a=0,ceil(S*O),1 do
n=(S/2-a-1+g[3]/90*S)%S
k=(n%1-1)*z
n=ag(n)*ar
for m=0,ar-1,1 do
R=e[5+m+n]i=c[20][R]ai(i[1],i[2],i[3])bu(a*z+k,m*z,bZ,bZ)end
end
for a=#r,1,-1 do
for m=1,#r[a]do
d=r[a][m]if d[9]or d[13]then
if d[9]then
Q=r[a][m+1]else
Q=d
end
e=c[21][d[4]]e=c[21][d[4]+(cr%e[5])*c[19][3][2]+c[19][12][d[11]]]u=d[12]W=w(u,0)f=d[1]k=Q[1]bT=d[2-W]cw=Q[2-W]h=d[3+W]be=Q[3+W]if not Q[9]then k=k+1 end
b_(d[7])cL=u*(d[2]-d[3])*e[3]/d[6]cu=u*(Q[2]-Q[3])*e[3]/Q[6]cs=u>0 and w or y
bk=0
while h*u<bT*u and(bk<e[2]or not d[14])do
bG=cs(h+cL,bT)bA=cs(be+cu,cw)R=e[7+((W+d[8]//e[3])%e[2])+e[2]*((d[5])%e[1])]i=c[20][R]if i then
ai(i[1]*q,i[2]*q,i[3]*q)bR(f,h,f,bG,k,bA)bR(f,h,k,be,k,bA)end
h=bG
be=bA
W=W+u
bk=bk+1
end
end
end
for b=1,2 do
_=cN[b]bI={}at,ak,bf=aj,-aj
for m,d in aG(_[a])do
at=w(at,d[2])ak=y(ak,d[3])bf=d
e=c[22][d[4][b+2]]if e and not aR then
b_(d[4][5])i=c[20][e[5]]ai(i[1]*q,i[2]*q,i[3]*q)bV.drawLine(d[1],s-d[2],d[1],ag(s-d[3]-1))end
end
if bf and aR then
I=bf[4]cv=(I[b]-g[2])bl=cos(g[3])bn=sin(g[3])for av=ag(at+s),ceil(ak+s)do
ac=aJ*cv/(s-av)cp=bl*ac-g[1][1]cb=bn*ac-g[1][2]cq=-bn*ac+cp
co=bl*ac+cb
cA=bn*ac+cp
cM=-bl*ac+cb
cQ=(cA-cq)/M
cx=(cM-co)/M
bI[av]={cQ,cx,cq,co}end
for m,d in aG(_[a])do
if I[b+2]~=0 then
f=d[1]if f%aR==0 then
b_(I[5])o=I[b+2]e=c[22][o]e=c[22][o+(cr%e[4])]ck=D-(D-f)*O
at,ak=ag(d[2]+s),ceil(d[3]+s)an=e[3]for av=at,ak do
aF=bI[av]cJ=(aF[3]+aF[1]*ck)//an
ct=(aF[4]+aF[2]*ck)//an
R=6+(ct%e[1])+e[1]*(cJ%e[2])i=c[20][e[R]]if i then
ai(i[1]*q,i[2]*q,i[3]*q)bu(f,-av+aj,aR,1)end
end
end
end
end
end
end
for m=1,#aW[a]do
_=l[aW[a][m]]if _[6]~=0 then
aZ=sub(_,g[1])p=_[20]if p>1 then
G=bm(aE(aZ)-g[3])p=p*cos(G)if B(G)<90 then
n=D-ay(tan(G)/O*D)bj=ay((180+G+g[3]-_[3]+bp*4)/360*8)N=c[16][_[6]][1]if N~=0 and _[6]~=1 then
e=c[17][B(N)][bj%8+1]u=e<0 and-1 or 1
e=B(e)if e>0 then
e=c[23][e+c[19][12][w(bK(p//aS+1),8)]]S,ar=e[1],e[2]z=D/(O*p)aU=z*br
H=s+(g[2]-_[9])/p*aJ
F=H-e[5]*aU
k=n-u*e[4]*z
z,aU=z*e[3],aU*e[3]b_(_[8][5])q=N>0 and q or 1
bW=z
cG=bW*br
cH=_[4]and c[15][_[4]][23]&8>0
for h=0,S-1 do
n=k+h*z*u
if a<=aH[bx(ay(n),0,M-1)]then
for j=0,ar-1 do
R=e[7+j+h*ar]if R~=0 then
if cH then
bi=bi%50+1
ai(0,0,0,w(75*c[13][2][bi],255))else
i=c[20][R]ai(i[1]*q,i[2]*q,i[3]*q)end
bu(n,F+j*aU,bW,cG)end
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
bp=bp+1
end
