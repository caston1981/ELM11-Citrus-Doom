
y=math
v=y.max
s=y.min
A=y.abs
al=y.floor
ceil=y.ceil
sqrt=y.sqrt
K=input.getNumber
bu=input.getBool
pi=y.pi/180
bt=false
O=true
aC=ipairs
bW=table.remove
bl=string
function bs(b,o)return b[1]*o[2]-b[2]*o[1]end
function sub(b,o)return{(b[1]-o[1]),(b[2]-o[2])}end
function by(b)return((b+180)%360)-180 end
function sin(b)return y.sin(b*pi)end
function cos(b)return y.cos(b*pi)end
function tan(b)return y.tan(b*pi)end
function cP(b)return y.atan(b)/pi end
function aQ(b)return y.atan(b[2],b[1])/pi end
function bk(b,o,_)return s(v(o,b),_)end
function aB(b)return al(b+.5)end
function aN(b,o)return sqrt(((b[1]-o[1])^2)+((b[2]-o[2])^2))end
function cd(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
function aJ(b)q=s(b/255+ca,1)^2.2 end
c={}bd=1
ay=3
aA=O
l={{0,0},0}E=0
Q=288
D=144
aa=128
x=64
aE={}aK=400
bY=200
bM=1
cS=0
aU=2^15
bj=3002
bf=0
aM=0
aw=0
bi=1.2
M=52
L=tan(M)aL=x*bi*Q/aa/L
Z=1
bP={}for a=-D,D do bP[a]=aQ({1,a/D*L})end
function ba(a)if a<aU then
local w,br=c[7][a]br=0<bs({w[3],w[4]},sub(l[1],w))and 8 or 7
ba(w[br])ba(w[15-br])else
av[#av+1]=a-aU
end
end
function aR(a,b)if a<aU then
w=c[7][a]return aR(w[0<bs({w[3],w[4]},sub(b,w))and 8 or 7],b)else
return a-aU
end
end
function bn(b)w=c[5][c[6][b][2]]return aF[c[3][c[2][w[4]][w[5]+6]][6]]end
function onTick()bc=0
for m=1,3 do
if bu(9)and(not bm)or not c[21]then
be=property.getText(bd)a=1
B=""
_=bl.sub(be,a,a)while _~=""do
bZ=bl.byte(_)if bZ>64 then
B=(B..bZ-65)+0
if Z==1 then
bL=B
c[B]=c[B]or{}elseif Z==2 then
cv=B
an=0
elseif Z==3 then
b_=B
else
if an==0 then
an=cv
b_=b_-1
bx={}c[bL][#c[bL]+1]=bx
end
bx[#bx+1]=B
an=an-1
Z=v(an,b_)>0 and Z-1 or 0
end
Z=Z+1
B=""
else
B=B.._
end
a=a+1
_=bl.sub(be,a,a)end
bd=bd+1
bm=be==""
end
end
if bm then
if K(9)>0 then
aA=O
ay=K(9)end
if bM>0 and not aA then
ai={}az[#az+1]=ai
ao=5
_=K(ao)while _~=0 do
ad={}ai[#ai+1]=ad
for a=0,8 do
ad[a+1]=K(ao+a)end
ao=ao+9
_=K(ao)end
end
if bu(1)then
bC=0
bV=K(1)bM=K(3)aw=aw+1
bR=aw//10
if aA then
for a=1,10 do
c[a]=c[a+10*ay]end
k=c[1]cR={k[1][1],k[1][2]}for a=#k,1,-1 do
_=k[a]_=_[5]&(bj-3000)>0 or bW(k,a)end
aF=c[8]az={}ay=ay+1
end
if K(2)>0 then
_=c[2][K(2)]if _ then
b=_[4]if b>0 then
if b==3008 then
aX=_[5]>0 and _[5]elseif b>3004 then
aK=v(aK+3*(_[4]-3006),1)bY=aK/2
elseif b>3000 then
bj=_[4]end
bC=K(2)if b<3000 and c[9][_[5]][7]==0 then
_[8]=1
end
end
end
end
if bu(3)and bV~=1 and bV~=3 then
ca=.1
aM=5
else
aM=aM-1
if aM<1 then
ca=0
end
end
for a=1,#az do
ai=az[a]for m=1,#ai do
ad=ai[m]_=ad[1]if _>(2^15)then
_=aF[_-(2^15)]for g=1,6 do
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
_[7]=aR(#c[7],_)_[8]=bn(_[7])end
end
end
az={}for a=1,#c[6]do
aE[a]={}end
for a,_ in aC(k)do
if aA then
_[7]=aR(#c[7],_)_[8]=bn(_[7])_[9]=_[8][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
end
if _ and a>1 then
bg=0
for m,d in aC({1,2,9})do
_[d]=_[d]+_[d+10]bg=bg+_[d+10]end
if bg~=0 then
_[7]=aR(#c[7],_)_[8]=bn(_[7])end
_[15]=_[15]+1
_[20]=aN(_,l[1])N=c[16][_[6]]if N~=nil then
if N[5]>0 then
_[9]=_[8][1]end
if _[15]>=N[2]and N[2]~=-1 then
_[6]=N[4]_[15]=0
end
end
aE[_[7]][#aE[_[7]]+1]=a
end
end
_,aA=k[1]cL=s(aN(_,l[1])^2/4,16)l[1]={_[1],_[2]}E=_[3]cQ=_[9]+1
l[2]=_[9]+41+cL*sin(aw*20)/4
av={}ba(#c[7])aO={}t={}aH={}aI={}W={}S={}aD={}bA=Q
for a=0,Q-1 do
aO[a],W[a],S[a]=#c[6]+2,x+1,-x
end
a=1
while a<=#av and bA>0 do
_=c[6][av[a]]aH[a]={}aI[a]={}t[a]={}aD[a]=aE[av[a]]table.sort(aD[a],function(b,o)return k[b][20]>k[o][20]end)for m=_[2],_[1]+_[2]-1 do
Y=c[5][m]G=c[2][Y[4]]bN,bS=c[4][Y[1]],c[4][Y[2]]aP,cj=sub(bN,l[1]),sub(bS,l[1])cp=aQ(aP)J,aW=by(cp-E),by(aQ(cj)-E)if A(J)<90 or A(aW)<90 then
aj,ag=bk(J,-M,M),bk(aW,-M,M)if A(J)>=90 or A(aW)>=90 then
bX=bs(aP,cj)if A(J)>=90 then
if bX>0 then aj=-M else aj=M end
else
if bX<0 then ag=-M else ag=M end
end
end
p,n=aB(tan(aj)/L*D),aB(tan(ag)/L*D)if p~=n then
r,as=aN(l[1],bN),aN(l[1],bS)aG=Y[3]+90
ci=aG-cp
cF=r*sin(ci)aZ=(r*cos(ci))if J~=aj then
r=aZ/cos(aG-(aj+E))end
if aW~=ag then
as=aZ/cos(aG-(ag+E))end
r,as=r*cos(aj),as*cos(ag)g=Y[5]+6
cE=(p>n)if cE and G[g]~=0 then
ax=G[3]&4>0
if ax then
T=aF[c[3][G[13-g]][6]]end
af=c[3][G[g]]cH={af[3],af[4],af[5]}j,cc,ch=aF[af[6]]for h,d in aC(cH)do
ac=d>0
ae=O
if(ac or(h==3 and not(cc and ch)))and(h==3 or ax)then
bE,c_=0
if h<3 then
c_=h==1 and v(j[4],T[4])==0
F,z=j[3-h],(h==1 and v or s)(T[3-h],j[h])ae=(F<z)==(h==2)and F~=z and j~=T
ac=ae
F,z=s(F,z),v(F,z)if ae then
if h==1 then
cc=O
else
ch=O
bE=G[3]&16>0 and v(j[2],T[2])-z or 0
end
end
else
if ax then
F,z=s(v(j[1],T[1]),j[2]),v(s(j[2],T[2]),j[1])ae=j~=T
else
F,z=j[1],j[2]end
end
F,z=F-l[2],z-l[2]ce,bI=F*aL,z*aL
if(ae or ac)and not c_ then
bp=Y[6]-af[1]if G[4]==48 then
bp=bp-aw
end
cJ,cN=ce/r,bI/r
cK,cA=ce/as,bI/as
bF,aq=0
if ac then
_=c[21][d][4]if(Y[4]==bC or bj==G[4]or G[8])and _>0 then
d=_
end
ar=c[21][d][3]u=1
if(h==3 and G[3]&16>0)or(h==1 and G[3]&8==0)then
u=-1
end
end
for g=p,n,-1 do
cu=bP[g]bq=(aG-E)-cu
f,co=D-g
if f>=0 and f<=Q-1 then
if a<aO[f]then
aS=(g-p)/(n-p)I,H=(cJ*(1-aS)+cK*aS),(cN*(1-aS)+cA*aS)if A(H+I)-(H-I)<aa then
if ac then
if I~=H then
co=O
bH=aZ*tan(bq)ap=cd(s(((A(bH)+A(aZ))//bY)+1,16))bQ=al((v(bH-cF,0)-bp)/(ar*ap))bO=bQ*ap
bU={f,x-I,x-H,d,bQ,z-F,j[5],af[2]+bE,O,ar*ap,ap,u,not aq,h==3 and ax}if bO>bF or(not aq)or g==n then
bF=bO-1+ap
aq=O
t[a][#t[a]+1]=bU
end
cr=bU
end
end
if ae then
if h~=2 then
if H<W[f]then
aI[a][#aI[a]+1]={f,v(H,S[f]),W[f],j}end
if h==3 then V=H else V=I end
if W[f]>V then W[f]=V end
end
if h~=1 then
if I>S[f]then
aH[a][#aH[a]+1]={f,S[f],s(I,W[f]),j}end
if h==3 then V=I else V=H end
if S[f]<V then S[f]=V end
end
if(W[f]<=S[f])or(h==3 and(not ax)and ac)then
aO[f]=a
bA=bA-1
end
end
end
end
end
if(not co)and aq then
t[a][#t[a]+1],aq=cr
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
function onDraw()aY=screen
local cm,ck,ab,cf=aY.drawTriangleF,aY.drawRectF,aY.setColor,aY.drawLine
cz={aH,aI}if bm then
e=c[24][c[19][8][ay-3]]U,at=e[1],e[2]C=Q/ceil(U*L)bK=C*1
for a=0,ceil(U*L),1 do
p=(U/2-a-1+E/90*U)%U
n=(p%1-1)*C
p=al(p)*at
for m=0,at-1,1 do
R=e[5+m+p]i=c[20][R]ab(i[1],i[2],i[3])ck(a*C+n,m*C,bK,bK)end
end
for a=#t,1,-1 do
for m=1,#t[a]do
d=t[a][m]if d[9]or d[13]then
if d[9]then
P=t[a][m+1]else
P=d
end
e=c[21][d[4]]e=c[21][d[4]+(bR%e[5])*c[19][3][2]+c[19][12][d[11]]]u=d[12]X=s(u,0)f=d[1]n=P[1]bT=d[2-X]cy=P[2-X]g=d[3+X]bz=P[3+X]if not P[9]then n=n+1 end
aJ(d[7])ct=u*(d[2]-d[3])*e[3]/d[6]cO=u*(P[2]-P[3])*e[3]/P[6]bJ=u>0 and s or v
bv=0
while g*u<bT*u and(bv<e[2]or not d[14])do
cg=bJ(g+ct,bT)bb=bJ(bz+cO,cy)R=e[7+((X+d[8]//e[3])%e[2])+e[2]*((d[5])%e[1])]i=c[20][R]if i then
ab(i[1]*q,i[2]*q,i[3]*q)cm(f,g,f,cg,n,bb)cm(f,g,n,bz,n,bb)end
g=cg
bz=bb
X=X+u
bv=bv+1
end
end
end
for b=1,2 do
_=cz[b]bG={}am,au,bw=aa,-aa
for m,d in aC(_[a])do
am=s(am,d[2])au=v(au,d[3])bw=d
e=c[22][d[4][b+2]]if e and not aX then
aJ(d[4][5])i=c[20][e[5]]ab(i[1]*q,i[2]*q,i[3]*q)cf(d[1],x-d[2],d[1],al(x-d[3]-1))end
end
if bw and aX then
j=bw[4]cG=(j[b]-l[2])bh=cos(E)bo=sin(E)for ah=al(am+x),ceil(au+x)do
ak=aL*cG/(x-ah)bD=bh*ak-l[1][1]cn=bo*ak-l[1][2]cb=-bo*ak+bD
bB=bh*ak+cn
cI=bo*ak+bD
cw=-bh*ak+cn
cD=(cI-cb)/Q
cM=(cw-bB)/Q
bG[ah]={cD,cM,cb,bB}end
for m,d in aC(_[a])do
if j[b+2]~=0 then
f=d[1]if f%aX==0 then
aJ(j[5])o=j[b+2]e=c[22][o]e=c[22][o+(bR%e[4])]cq=D-(D-f)*L
am,au=al(d[2]+x),ceil(d[3]+x)ar=e[3]for ah=am,au do
aT=bG[ah]cB=(aT[3]+aT[1]*cq)//ar
cx=(aT[4]+aT[2]*cq)//ar
R=6+(cx%e[1])+e[1]*(cB%e[2])i=c[20][e[R]]if i then
ab(i[1]*q,i[2]*q,i[3]*q)cf(f,aa-ah,f+aX+1,aa-ah)end
end
end
end
end
end
end
for m=1,#aD[a]do
_=k[aD[a][m]]if _[6]~=0 then
aP=sub(_,l[1])r=_[20]if r>1 then
J=by(aQ(aP)-E)r=r*cos(J)if A(J)<90 then
p=D-aB(tan(J)/L*D)bq=aB((180+J+E-_[3]+bc*4)/360*8)N=c[16][_[6]][1]if N~=0 and _[6]~=1 then
e=c[17][A(N)][bq%8+1]u=e<0 and-1 or 1
e=A(e)if e>0 then
e=c[23][e+c[19][12][s(cd(r//aK+1),8)]]U,at=e[1],e[2]C=D/(L*r)aV=C*bi
I=x+(l[2]-_[9])/r*aL
H=I-e[5]*aV
n=p-u*e[4]*C
C,aV=C*e[3],aV*e[3]aJ(_[8][5])q=N>0 and q or 1
cl=C
cC=cl*bi
cs=_[4]and c[15][_[4]][23]&8>0
for g=0,U-1 do
p=n+g*C*u
if a<=aO[bk(aB(p),0,Q-1)]then
for h=0,at-1 do
R=e[7+h+g*at]if R~=0 then
if cs then
bf=bf%50+1
ab(0,0,0,s(75*c[13][2][bf],255))else
i=c[20][R]ab(i[1]*q,i[2]*q,i[3]*q)end
ck(p,H+h*aV,cl,cC)end
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
bc=bc+1
end
