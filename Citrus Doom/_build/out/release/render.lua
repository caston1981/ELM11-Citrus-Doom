
z=math
v=z.max
s=z.min
A=z.abs
ai=z.floor
ceil=z.ceil
sqrt=z.sqrt
H=input.getNumber
by=input.getBool
pi=z.pi/180
bd=false
O=true
aB=ipairs
cf=table.remove
bj=string
function bk(b,n)return b[1]*n[2]-b[2]*n[1]end
function sub(b,n)return{(b[1]-n[1]),(b[2]-n[2])}end
function ba(b)return((b+180)%360)-180 end
function sin(b)return z.sin(b*pi)end
function cos(b)return z.cos(b*pi)end
function tan(b)return z.tan(b*pi)end
function cQ(b)return z.atan(b)/pi end
function aT(b)return z.atan(b[2],b[1])/pi end
function bt(b,n,_)return s(v(n,b),_)end
function an(b)return ai(b+.5)end
function aN(b,n)return sqrt(((b[1]-n[1])^2)+((b[2]-n[2])^2))end
function bT(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
function aZ(b)q=s(b/255+bR,1)^2.2 end
c={}be=1
ap=3
as=O
l={{0,0},0}C=0
P=288
B=144
af=128
x=64
aI={}aS=400
ce=200
bP=1
cR=0
aJ=2^15
bs=3002
bx=0
aO=0
av=0
bw=1.2
L=52
N=tan(L)aV=x*bw*P/af/N
Z=1
ch={}for a=-B,B do ch[a]=aT({1,a/B*N})end
function bz(a)if a<aJ then
local w,bq=c[7][a]bq=0<bk({w[3],w[4]},sub(l[1],w))and 8 or 7
bz(w[bq])bz(w[15-bq])else
au[#au+1]=a-aJ
end
end
function aH(a,b)if a<aJ then
w=c[7][a]return aH(w[0<bk({w[3],w[4]},sub(b,w))and 8 or 7],b)else
return a-aJ
end
end
function bh(b)w=c[5][c[6][b][2]]return aW[c[3][c[2][w[4]][w[5]+6]][6]]end
function onTick()bl=0
for o=1,3 do
if by(9)and(not bp)or not c[21]then
bv=property.getText(be)a=1
E=""
_=bj.sub(bv,a,a)while _~=""do
cj=bj.byte(_)if cj>64 then
E=(E..cj-65)+0
if Z==1 then
cg=E
c[E]=c[E]or{}elseif Z==2 then
cr=E
ax=0
elseif Z==3 then
b_=E
else
if ax==0 then
ax=cr
b_=b_-1
bn={}c[cg][#c[cg]+1]=bn
end
bn[#bn+1]=E
ax=ax-1
Z=v(ax,b_)>0 and Z-1 or 0
end
Z=Z+1
E=""
else
E=E.._
end
a=a+1
_=bj.sub(bv,a,a)end
be=be+1
bp=bv==""
end
end
if bp then
if H(10)>0 then
as=O
ap=H(10)end
if bP>0 and not as then
ab={}ao[#ao+1]=ab
aw=6
_=H(aw)while _~=0 do
ak={}ab[#ab+1]=ak
for a=0,8 do
ak[a+1]=H(aw+a)end
aw=aw+9
_=H(aw)end
end
if by(1)then
cb=0
bZ=H(1)bP=H(3)av=av+1
bL=av//10
if as then
for a=1,10 do
c[a]=c[a+10*ap]end
k=c[1]cP={k[1][1],k[1][2]}for a=#k,1,-1 do
_=k[a]_=_[5]&(bs-3000)>0 or cf(k,a)end
aW=c[8]ao={}ap=ap+1
end
if H(2)>0 then
_=c[2][H(2)]if _ then
b=_[4]if b>0 then
if b==3008 then
aM=_[5]>0 and _[5]elseif b>3004 then
aS=v(aS+3*(_[4]-3006),1)ce=aS/2
elseif b>3000 then
bs=_[4]end
cb=H(2)if b<3000 and c[9][_[5]][7]==0 then
_[8]=1
end
end
end
end
if by(3)and bZ~=1 and bZ~=3 then
bR=.1
aO=5
else
aO=aO-1
if aO<1 then
bR=0
end
end
for a=1,#ao do
ab=ao[a]for o=1,#ab do
ak=ab[o]_=ak[1]if _>(2^15)then
_=aW[_-(2^15)]for g=1,6 do
_[g]=ak[g+1]end
elseif _<0 then
while-_>#k do
k[#k+1]=bd
end
cf(k,-_)else
if not k[_]then
k[_]={}end
_=k[_]for g=1,8 do
_[c[19][1][g]]=ak[g+1]end
_[15]=0
_[7]=aH(#c[7],_)_[8]=bh(_[7])end
end
end
ao={}for a=1,#c[6]do
aI[a]={}end
for a,_ in aB(k)do
if as then
_[7]=aH(#c[7],_)_[8]=bh(_[7])_[9]=_[8][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
end
if _ and a>1 then
br=0
for o,d in aB({1,2,9})do
_[d]=_[d]+_[d+10]br=br+_[d+10]end
if br~=0 then
_[7]=aH(#c[7],_)_[8]=bh(_[7])end
_[15]=_[15]+1
_[20]=aN(_,l[1])M=c[16][_[6]]if M~=nil then
if M[5]>0 then
_[9]=_[8][1]end
if _[15]>=M[2]and M[2]~=-1 then
_[6]=M[4]_[15]=0
end
end
aI[_[7]][#aI[_[7]]+1]=a
end
end
_,as=k[1]cE=s(aN(_,l[1])^2/4,16)l[1]={_[1],_[2]}C=_[3]cS=_[9]+1
l[2]=_[9]+41+cE*sin(av*20)/4
au={}bz(#c[7])aE={}r={}aL={}aK={}S={}V={}aG={}bi=P
for a=0,P-1 do
aE[a],S[a],V[a]=#c[6]+2,x+1,-x
end
a=1
while a<=#au and bi>0 do
_=c[6][au[a]]aL[a]={}aK[a]={}r[a]={}aG[a]=aI[au[a]]table.sort(aG[a],function(b,n)return k[b][20]>k[n][20]end)for o=_[2],_[1]+_[2]-1 do
X=c[5][o]J=c[2][X[4]]bV,ci=c[4][X[1]],c[4][X[2]]aF,bJ=sub(bV,l[1]),sub(ci,l[1])bG=aT(aF)I,aP=ba(bG-C),ba(aT(bJ)-C)if A(I)<90 or A(aP)<90 then
ac,ad=bt(I,-L,L),bt(aP,-L,L)if A(I)>=90 or A(aP)>=90 then
bM=bk(aF,bJ)if A(I)>=90 then
if bM>0 then ac=-L else ac=L end
else
if bM<0 then ad=-L else ad=L end
end
end
p,m=an(tan(ac)/N*B),an(tan(ad)/N*B)if p~=m then
t,ar=aN(l[1],bV),aN(l[1],ci)aD=X[3]+90
cq=aD-bG
cu=t*sin(cq)aX=(t*cos(cq))if I~=ac then
t=aX/cos(aD-(ac+C))end
if aP~=ad then
ar=aX/cos(aD-(ad+C))end
t,ar=t*cos(ac),ar*cos(ad)g=X[5]+6
cK=(p>m)if cK and J[g]~=0 then
aC=J[3]&4>0
if aC then
W=aW[c[3][J[13-g]][6]]end
aj=c[3][J[g]]cI={aj[3],aj[4],aj[5]}j,bY,cp=aW[aj[6]]for i,d in aB(cI)do
al=d>0
aa=O
if(al or(i==3 and not(bY and cp)))and(i==3 or aC)then
ck,bE=0
if i<3 then
bE=i==1 and v(j[4],W[4])==0
D,y=j[3-i],(i==1 and v or s)(W[3-i],j[i])aa=(D<y)==(i==2)and D~=y and j~=W
al=aa
D,y=s(D,y),v(D,y)if aa then
if i==1 then
bY=O
else
cp=O
ck=J[3]&16>0 and v(j[2],W[2])-y or 0
end
end
else
if aC then
D,y=s(v(j[1],W[1]),j[2]),v(s(j[2],W[2]),j[1])aa=j~=W
else
D,y=j[1],j[2]end
end
D,y=D-l[2],y-l[2]bB,cl=D*aV,y*aV
if(aa or al)and not bE then
bf=X[6]-aj[1]if J[4]==48 then
bf=bf-av
end
cL,ct=bB/t,cl/t
cC,cO=bB/ar,cl/ar
bN,az=0
if al then
_=c[21][d][4]if(X[4]==cb or bs==J[4]or J[8])and _>0 then
d=_
end
ay=c[21][d][3]u=1
if(i==3 and J[3]&16>0)or(i==1 and J[3]&8==0)then
u=-1
end
end
for g=p,m,-1 do
cv=ch[g]bo=(aD-C)-cv
f,cc=B-g
if f>=0 and f<=P-1 then
if a<aE[f]then
aY=(g-p)/(m-p)K,G=(cL*(1-aY)+cC*aY),(ct*(1-aY)+cO*aY)if A(G+K)-(G-K)<af then
if al then
if K~=G then
cc=O
bH=aX*tan(bo)aA=bT(s(((A(bH)+A(aX))//ce)+1,16))co=ai((v(bH-cu,0)-bf)/(ay*aA))bC=co*aA
ca={f,x-K,x-G,d,co,y-D,j[5],aj[2]+ck,O,ay*aA,aA,u,not az,i==3 and aC}if bC>bN or(not az)or g==m then
bN=bC-1+aA
az=O
r[a][#r[a]+1]=ca
end
cJ=ca
end
end
if aa then
if i~=2 then
if G<S[f]then
aK[a][#aK[a]+1]={f,v(G,V[f]),S[f],j}end
if i==3 then U=G else U=K end
if S[f]>U then S[f]=U end
end
if i~=1 then
if K>V[f]then
aL[a][#aL[a]+1]={f,V[f],s(K,S[f]),j}end
if i==3 then U=K else U=G end
if V[f]<U then V[f]=U end
end
if(S[f]<=V[f])or(i==3 and(not aC)and al)then
aE[f]=a
bi=bi-1
end
end
end
end
end
if(not cc)and az then
r[a][#r[a]+1],az=cJ
r[a][#r[a]][9]=bd
end
end
if#r[a]>0 then
r[a][#r[a]][9]=bd
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
function onDraw()aU=screen
local cd,bK,ag,bF=aU.drawTriangleF,aU.drawRectF,aU.setColor,aU.drawLine
cy={aL,aK}if bp then
e=c[24][c[19][8][ap-3]]T,at=e[1],e[2]F=P/ceil(T*N)bD=F*1
for a=0,ceil(T*N),1 do
p=(T/2-a-1+C/90*T)%T
m=(p%1-1)*F
p=ai(p)*at
for o=0,at-1,1 do
Q=e[5+o+p]h=c[20][Q]ag(h[1],h[2],h[3])bK(a*F+m,o*F,bD,bD)end
end
for a=#r,1,-1 do
for o=1,#r[a]do
d=r[a][o]if d[9]or d[13]then
if d[9]then
R=r[a][o+1]else
R=d
end
e=c[21][d[4]]e=c[21][d[4]+(bL%e[5])*"number of wall mipmap levels"+c[19][12][d[11]]]u=d[12]Y=s(u,0)f=d[1]m=R[1]bU=d[2-Y]cM=R[2-Y]g=d[3+Y]bc=R[3+Y]if not R[9]then m=m+1 end
aZ(d[7])cw=u*(d[2]-d[3])*e[3]/d[6]cF=u*(R[2]-R[3])*e[3]/R[6]bI=u>0 and s or v
bg=0
while g*u<bU*u and(bg<e[2]or not d[14])do
cn=bI(g+cw,bU)bm=bI(bc+cF,cM)Q=e[7+((Y+d[8]//e[3])%e[2])+e[2]*((d[5])%e[1])]h=c[20][Q]if h then
ag(h[1]*q,h[2]*q,h[3]*q)cd(f,g,f,cn,m,bm)cd(f,g,m,bc,m,bm)end
g=cn
bc=bm
Y=Y+u
bg=bg+1
end
end
end
for b=1,2 do
_=cy[b]bS={}am,aq,bA=af,-af
for o,d in aB(_[a])do
am=s(am,d[2])aq=v(aq,d[3])bA=d
e=c[22][d[4][b+2]]if e and not aM then
aZ(d[4][5])h=c[20][e[5]]ag(h[1]*q,h[2]*q,h[3]*q)bF(d[1],x-d[2],d[1],ai(x-d[3]-1))end
end
if bA and aM then
j=bA[4]cN=(j[b]-l[2])bu=cos(C)bb=sin(C)for ae=ai(am+x),ceil(aq+x)do
ah=aV*cN/(x-ae)bO=bu*ah-l[1][1]cm=bb*ah-l[1][2]bX=-bb*ah+bO
bW=bu*ah+cm
cz=bb*ah+bO
cA=-bu*ah+cm
cH=(cz-bX)/P
cB=(cA-bW)/P
bS[ae]={cH,cB,bX,bW}end
for o,d in aB(_[a])do
if j[b+2]~=0 then
f=d[1]if f%aM==0 then
aZ(j[5])n=j[b+2]e=c[22][n]e=c[22][n+(bL%e[4])]c_=B-(B-f)*N
am,aq=ai(d[2]+x),ceil(d[3]+x)ay=e[3]for ae=am,aq do
aQ=bS[ae]cD=(aQ[3]+aQ[1]*c_)//ay
cs=(aQ[4]+aQ[2]*c_)//ay
Q=6+(cs%e[1])+e[1]*(cD%e[2])h=c[20][e[Q]]if h then
ag(h[1]*q,h[2]*q,h[3]*q)bF(f,af-ae,f+aM+1,af-ae)end
end
end
end
end
end
end
for o=1,#aG[a]do
_=k[aG[a][o]]if _[6]~=0 then
aF=sub(_,l[1])t=_[20]if t>1 then
I=ba(aT(aF)-C)t=t*cos(I)if A(I)<90 then
p=B-an(tan(I)/N*B)bo=an((180+I+C-_[3]+bl*4)/360*8)M=c[16][_[6]][1]if M~=0 and _[6]~=1 then
e=c[17][A(M)][bo%8+1]u=e<0 and-1 or 1
e=A(e)if e>0 then
e=c[23][e+c[19][12][s(bT(t//aS+1),8)]]T,at=e[1],e[2]F=B/(N*t)aR=F*bw
K=x+(l[2]-_[9])/t*aV
G=K-e[5]*aR
m=p-u*e[4]*F
F,aR=F*e[3],aR*e[3]aZ(_[8][5])q=M>0 and q or 1
bQ=F
cG=bQ*bw
cx=_[4]and c[15][_[4]][23]&8>0
for g=0,T-1 do
p=m+g*F*u
if a<=aE[bt(an(p),0,P-1)]then
for i=0,at-1 do
Q=e[7+i+g*at]if Q~=0 then
if cx then
bx=bx%50+1
ag(0,0,0,s(75*c[13][2][bx],255))else
h=c[20][Q]ag(h[1]*q,h[2]*q,h[3]*q)end
bK(p,G+i*aR,bQ,cG)end
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
bl=bl+1
end
