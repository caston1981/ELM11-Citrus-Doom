
A=math
t=A.max
q=A.min
B=A.abs
ab=A.floor
ceil=A.ceil
sqrt=A.sqrt
G=input.getNumber
bA=input.getBool
pi=A.pi/180
bt=false
O=true
aA=ipairs
bH=table.remove
bC=string
function bd(b,m)return b[1]*m[2]-b[2]*m[1]end
function sub(b,m)return{(b[1]-m[1]),(b[2]-m[2])}end
function bz(b)return((b+180)%360)-180 end
function sin(b)return A.sin(b*pi)end
function cos(b)return A.cos(b*pi)end
function tan(b)return A.tan(b*pi)end
function cO(b)return A.atan(b)/pi end
function aO(b)return A.atan(b[2],b[1])/pi end
function bp(b,m,_)return q(t(m,b),_)end
function ap(b)return ab(b+.5)end
function aU(b,m)return sqrt(((b[1]-m[1])^2)+((b[2]-m[2])^2))end
function bF(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
function aT(b)r=q(b/255+b_,1)^2.2 end
c={}bw=1
an=3
at=O
l={{0,0},0}C=0
P=288
F=144
ah=128
u=64
aK={}aI=500
cl=250
cg=1
ak=2^15
bl=3002
br=0
au=0
ay=0
bv=1.2
N=52
L=tan(N)aR=u*bv*P/ah/L
X=1
bN={}for a=-F,F do bN[a]=aO({1,a/F*L})end
function bc(a)if a<ak then
local w,bB=c[7][a]bB=0<bd({w[3],w[4]},sub(l[1],w))and 8 or 7
bc(w[bB])bc(w[15-bB])else
az[#az+1]=a-ak
end
end
function aM(a,b)if a<ak then
w=c[7][a]return aM(w[0<bd({w[3],w[4]},sub(b,w))and 8 or 7],b)else
return a-ak
end
end
function bg(b)w=c[5][c[6][b][2]]return ba[c[3][c[2][w[4]][w[5]+6]][6]]end
function onTick()bq=0
for p=1,3 do
if bA(9)and(not bj)or not c[21]then
bs=property.getText(bw)a=1
D=""
_=bC.sub(bs,a,a)while _~=""do
as=bC.byte(_)if as>64 then
D=(D..as-65)+0
if X==1 then
co=D
c[D]=c[D]or{}elseif X==2 then
cw=D
aE=0
elseif X==3 then
bi=D
else
if aE==0 then
aE=cw
bi=bi-1
bo={}c[co][#c[co]+1]=bo
end
bo[#bo+1]=D
aE=aE-1
X=t(aE,bi)>0 and X-1 or 0
end
X=X+1
D=""
else
D=D.._
end
a=a+1
_=bC.sub(bs,a,a)end
bw=bw+1
bj=bs==""
end
end
if bj then
if G(10)>0 then
at=O
an=G(10)end
if cg>0 and not at then
aj={}ar[#ar+1]=aj
aF=6
_=G(aF)while _~=0 do
aa={}aj[#aj+1]=aa
for a=0,8 do
aa[a+1]=G(aF+a)end
aF=aF+9
_=G(aF)end
end
if bA(1)then
cf=0
bZ=G(1)cg=G(3)ay=ay+1
bI=ay//10
if at then
for a=1,10 do
c[a]=c[a+10*an]end
k=c[1]cP={k[1][1],k[1][2]}for a=#k,1,-1 do
_=k[a]_=_[5]&(bl-3000)>0 or bH(k,a)end
ba=c[8]ar={}an=an+1
end
if G(2)>0 then
_=c[2][G(2)]if _ then
b=_[4]if b>0 then
if b==3008 then
aZ=_[5]>0 and _[5]elseif b>3004 then
aI=t(aI+3*(_[4]-3006),1)cl=aI/2
elseif b>3000 then
bl=_[4]end
cf=G(2)if b<3000 and c[9][_[5]][7]==0 then
_[8]=1
end
end
end
end
if bA(3)and bZ~=1 and bZ~=3 and b_<1 then
b_=.1
au=5
else
au=au-1
if au<1 then
b_=0
end
end
for a=1,#ar do
aj=ar[a]for p=1,#aj do
aa=aj[p]_=aa[1]if _>ak then
_=ba[_-ak]for g=1,6 do
_[g]=aa[g+1]end
elseif _<0 then
as=c[1][-_]if as and c[15][as[4]or 1][29]=="light amp index" then
b_=1
au=4200
end
while-_>#k do
k[#k+1]=bt
end
bH(k,-_)else
k[_]=k[_]or{}_=k[_]for g=1,8 do
_[c[19][1][g]]=aa[g+1]end
_[15]=0
_[7]=aM(#c[7],_)_[8]=bg(_[7])end
end
end
ar={}for a=1,#c[6]do
aK[a]={}end
for a,_ in aA(k)do
if at then
_[7]=aM(#c[7],_)_[8]=bg(_[7])_[9]=_[8][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
end
if _ and a>1 then
bu=0
for p,d in aA({1,2,9})do
_[d]=_[d]+_[d+10]bu=bu+_[d+10]end
if bu~=0 then
_[7]=aM(#c[7],_)_[8]=bg(_[7])end
_[15]=_[15]+1
_[20]=aU(_,l[1])M=c[16][_[6]]if M then
if M[5]>0 then
_[9]=_[8][1]end
if _[15]>=M[2]and M[2]~=-1 then
_[6]=M[4]_[15]=0
end
end
aK[_[7]][#aK[_[7]]+1]=a
end
end
_,at=k[1]cx=q(aU(_,l[1])^2/4,16)l[1]={_[1],_[2]}C=_[3]l[2]=_[9]+41+cx*sin(ay*20)/4
az={}bc(#c[7])aJ={}y={}aL={}aP={}Z={}U={}aV={}bf=P
for a=0,P-1 do
aJ[a],Z[a],U[a]=#c[6]+2,u+1,-u
end
a=1
while a<=#az and bf>0 do
_=c[6][az[a]]aL[a]={}aP[a]={}y[a]={}aV[a]=aK[az[a]]table.sort(aV[a],function(b,m)return k[b][20]>k[m][20]end)for p=_[2],_[1]+_[2]-1 do
S=c[5][p]K=c[2][S[4]]cq,ck=c[4][S[1]],c[4][S[2]]aN,bK=sub(cq,l[1]),sub(ck,l[1])bP=aO(aN)I,aS=bz(bP-C),bz(aO(bK)-C)if B(I)<90 or B(aS)<90 then
am,ad=bp(I,-N,N),bp(aS,-N,N)if B(I)>=90 or B(aS)>=90 then
ci=bd(aN,bK)if B(I)>=90 then
if ci>0 then am=-N else am=N end
else
if ci<0 then ad=-N else ad=N end
end
end
o,n=ap(tan(am)/L*F),ap(tan(ad)/L*F)if o~=n then
s,aw=aU(l[1],cq),aU(l[1],ck)aQ=S[3]+90
bT=aQ-bP
cv=s*sin(bT)aY=(s*cos(bT))if I~=am then
s=aY/cos(aQ-(am+C))end
if aS~=ad then
aw=aY/cos(aQ-(ad+C))end
s,aw=s*cos(am),aw*cos(ad)g=S[5]+6
cz=(o>n)if cz and K[g]~=0 then
av=K[3]&4>0
if av then
Y=ba[c[3][K[13-g]][6]]end
ac=c[3][K[g]]ct={ac[3],ac[4],ac[5]}j,bV,bG=ba[ac[6]]for i,d in aA(ct)do
ag=d>0
ae=O
if(ag or(i==3 and not(bV and bG)))and(i==3 or av)then
bX=0
ca=O
if i<3 then
ca=i~=1 or t(j[4],Y[4])~=0
E,x=j[3-i],(i==1 and t or q)(Y[3-i],j[i])ae=(E<x)==(i==2)and E~=x and j~=Y
ag=ae
E,x=q(E,x),t(E,x)if ae then
if i==1 then
bV=O
else
bG=O
bX=K[3]&16>0 and t(j[2],Y[2])-x or 0
end
end
else
if av then
E,x=q(t(j[1],Y[1]),j[2]),t(q(j[2],Y[2]),j[1])ae=j~=Y
else
E,x=j[1],j[2]end
end
E,x=E-l[2],x-l[2]bQ,bW=E*aR,x*aR
if(ae or ag)and ca then
be=S[6]-ac[1]if K[4]==48 then
be=be-ay
end
cN,cI=bQ/s,bW/s
cr,cH=bQ/aw,bW/aw
ch,aB=0
if ag then
_=c[21][d][4]if(S[4]==cf or bl==K[4]or K[8])and _>0 then
d=_
end
aq=c[21][d][3]v=1
if(i==3 and K[3]&16>0)or(i==1 and K[3]&8==0)then
v=-1
end
end
for g=o,n,-1 do
cD=bN[g]bn=(aQ-C)-cD
f,c_=F-g
if f>=0 and f<=P-1 then
if a<aJ[f]then
aH=(g-o)/(n-o)H,J=(cN*(1-aH)+cr*aH),(cI*(1-aH)+cH*aH)if B(J+H)-(J-H)<ah then
if ag then
if H~=J then
c_=O
cb=aY*tan(bn)ax=bF(q(((B(cb)+B(aY))//cl)+1,16))bJ=ab((t(cb-cv,0)-be)/(aq*ax))bD=bJ*ax
bU={f,u-H,u-J,d,bJ,x-E,j[5],ac[2]+bX,O,aq*ax,ax,v,not aB,i==3 and av}if bD>ch or(not aB)or g==n then
ch=bD-1+ax
aB=O
y[a][#y[a]+1]=bU
end
bR=bU
end
end
if ae then
if i~=2 then
if J<Z[f]then
aP[a][#aP[a]+1]={f,t(J,U[f]),Z[f],j}end
if i==3 then V=J else V=H end
if Z[f]>V then Z[f]=V end
end
if i~=1 then
if H>U[f]then
aL[a][#aL[a]+1]={f,U[f],q(H,Z[f]),j}end
if i==3 then V=H else V=J end
if U[f]<V then U[f]=V end
end
if(Z[f]<=U[f])or(i==3 and(not av)and ag)then
aJ[f]=a
bf=bf-1
end
end
end
end
end
if(not c_)and aB then
bR[9]=bt
y[a][#y[a]+1],aB=bR
end
end
if#y[a]>0 then
y[a][#y[a]][9]=bt
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
function onDraw()aW=screen
local bE,bY,ai,bS=aW.drawTriangleF,aW.drawRectF,aW.setColor,aW.drawLine
cL={aL,aP}if bj then
e=c[24][c[19][8][an-3]]T,ao=e[1],e[2]z=P/ceil(T*L)for a=0,ceil(T*L),1 do
o=(T/2-a-1+C/90*T)%T
n=(o%1-1)*z
o=ab(o)*ao
for p=0,ao-1,1 do
R=e[5+p+o]h=c[20][R]ai(h[1],h[2],h[3])bY(a*z+n,p*z,z,z)end
end
for a=#y,1,-1 do
for p=1,#y[a]do
d=y[a][p]if d[9]or d[13]then
if d[9]then
Q=y[a][p+1]else
Q=d
end
e=c[21][d[4]]e=c[21][d[4]+(bI%e[5])*"number of wall mipmap levels"+c[19][12][d[11]]]v=d[12]W=q(v,0)f=d[1]n=Q[1]cj=d[2-W]cC=Q[2-W]g=d[3+W]bx=Q[3+W]if not Q[9]then n=n+1 end
aT(d[7])cJ=v*(d[2]-d[3])*e[3]/d[6]cB=v*(Q[2]-Q[3])*e[3]/Q[6]ce=v>0 and q or t
bb=0
while g*v<cj*v and(bb<e[2]or not d[14])do
bL=ce(g+cJ,cj)bk=ce(bx+cB,cC)R=e[7+((W+d[8]//e[3])%e[2])+e[2]*((d[5])%e[1])]h=c[20][R]if h then
ai(h[1]*r,h[2]*r,h[3]*r)bE(f,g,f,bL,n,bk)bE(f,g,n,bx,n,bk)end
g=bL
bx=bk
W=W+v
bb=bb+1
end
end
end
for b=1,2 do
_=cL[b]cn={}aD,aC,by=ah,-ah
for p,d in aA(_[a])do
aD=q(aD,d[2])aC=t(aC,d[3])by=d
e=c[22][d[4][b+2]]if e and not aZ then
aT(d[4][5])h=c[20][e[5]]ai(h[1]*r,h[2]*r,h[3]*r)bS(d[1],u-d[2],d[1],ab(u-d[3]-1))end
end
if by and aZ then
j=by[4]cu=(j[b]-l[2])bm=cos(C)bh=sin(C)for af=ab(aD+u),ceil(aC+u)do
al=aR*cu/(u-af)cd=bm*al-l[1][1]cc=bh*al-l[1][2]cm=-bh*al+cd
cp=bm*al+cc
cK=bh*al+cd
cG=-bm*al+cc
cM=(cK-cm)/P
cs=(cG-cp)/P
cn[af]={cM,cs,cm,cp}end
for p,d in aA(_[a])do
if j[b+2]~=0 then
f=d[1]if f%aZ==0 then
aT(j[5])m=j[b+2]e=c[22][m]e=c[22][m+(bI%e[4])]bO=F-(F-f)*L
aD,aC=ab(d[2]+u),ceil(d[3]+u)aq=e[3]for af=aD,aC do
aG=cn[af]cF=(aG[3]+aG[1]*bO)//aq
cE=(aG[4]+aG[2]*bO)//aq
R=6+(cE%e[1])+e[1]*(cF%e[2])h=c[20][e[R]]if h then
ai(h[1]*r,h[2]*r,h[3]*r)bS(f,ah-af,f+aZ+1,ah-af)end
end
end
end
end
end
end
for p=1,#aV[a]do
_=k[aV[a][p]]if _[6]~=0 then
aN=sub(_,l[1])s=_[20]if s>1 then
I=bz(aO(aN)-C)s=s*cos(I)if B(I)<90 then
o=F-ap(tan(I)/L*F)bn=ap((180+I+C-_[3]+bq*4)/360*8)M=c[16][_[6]][1]if M~=0 and _[6]~=1 then
e=c[17][B(M)][bn%8+1]v=e<0 and-1 or 1
e=B(e)if e>0 then
e=c[23][e+c[19][12][q(bF(s//aI+1),8)]]T,ao=e[1],e[2]z=F/(L*s)aX=z*bv
H=u+(l[2]-_[9])/s*aR
J=H-e[5]*aX
n=o-v*e[4]*z
z,aX=z*e[3],aX*e[3]aT(_[8][5])r=M>0 and r or 1
bM=z
cA=bM*bv
cy=c[15][_[4]or 1][23]&8>0
for g=0,T-1 do
o=n+g*z*v
if a<=aJ[bp(ap(o),0,P-1)]then
for i=0,ao-1 do
R=e[7+i+g*ao]if R~=0 then
if cy then
br=br%50+1
ai(0,0,0,q(75*c[13][2][br],255))else
h=c[20][R]ai(h[1]*r,h[2]*r,h[3]*r)end
bY(o,J+i*aX,bM,cA)end
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
bq=bq+1
end
