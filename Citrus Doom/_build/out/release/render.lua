
y=math
u=y.max
s=y.min
A=y.abs
al=y.floor
ceil=y.ceil
sqrt=y.sqrt
J=input.getNumber
bm=input.getBool
pi=y.pi/180
bw=false
Q=true
av=ipairs
cl=table.remove
bj=string
function bz(b,n)return b[1]*n[2]-b[2]*n[1]end
function sub(b,n)return{(b[1]-n[1]),(b[2]-n[2])}end
function bl(b)return((b+180)%360)-180 end
function sin(b)return y.sin(b*pi)end
function cos(b)return y.cos(b*pi)end
function tan(b)return y.tan(b*pi)end
function cQ(b)return y.atan(b)/pi end
function aS(b)return y.atan(b[2],b[1])/pi end
function by(b,n,_)return s(u(n,b),_)end
function at(b)return al(b+.5)end
function aK(b,n)return sqrt(((b[1]-n[1])^2)+((b[2]-n[2])^2))end
function cg(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
function aF(b)q=s(b/255+co,1)^2.2 end
c={}bs=1
aC=3
aA=Q
l={{0,0},0}B=0
R=288
F=144
ah=128
v=64
aG={}aX=400
cf=200
ch=1
cR=0
aL=2^15
bx=3002
ba=0
aT=0
aB=0
bv=1.2
L=52
N=tan(L)aN=v*bv*R/ah/N
W=1
ce={}for a=-F,F do ce[a]=aS({1,a/F*N})end
function bd(a)if a<aL then
local w,bo=c[7][a]bo=0<bz({w[3],w[4]},sub(l[1],w))and 8 or 7
bd(w[bo])bd(w[15-bo])else
an[#an+1]=a-aL
end
end
function aD(a,b)if a<aL then
w=c[7][a]return aD(w[0<bz({w[3],w[4]},sub(b,w))and 8 or 7],b)else
return a-aL
end
end
function bn(b)w=c[5][c[6][b][2]]return aV[c[3][c[2][w[4]][w[5]+6]][6]]end
function onTick()bp=0
for p=1,3 do
if bm(9)and(not bu)or not c[21]then
bk=property.getText(bs)a=1
C=""
_=bj.sub(bk,a,a)while _~=""do
bO=bj.byte(_)if bO>64 then
C=(C..bO-65)+0
if W==1 then
cp=C
c[C]=c[C]or{}elseif W==2 then
cM=C
aw=0
elseif W==3 then
bb=C
else
if aw==0 then
aw=cM
bb=bb-1
be={}c[cp][#c[cp]+1]=be
end
be[#be+1]=C
aw=aw-1
W=u(aw,bb)>0 and W-1 or 0
end
W=W+1
C=""
else
C=C.._
end
a=a+1
_=bj.sub(bk,a,a)end
bs=bs+1
bu=bk==""
end
end
if bu then
if J(10)>0 then
aA=Q
aC=J(10)end
if ch>0 and not aA then
ak={}au[#au+1]=ak
as=6
_=J(as)while _~=0 do
aj={}ak[#ak+1]=aj
for a=0,8 do
aj[a+1]=J(as+a)end
as=as+9
_=J(as)end
end
if bm(1)then
bU=0
bD=J(1)ch=J(3)aB=aB+1
cn=aB//10
if aA then
for a=1,10 do
c[a]=c[a+10*aC]end
k=c[1]cS={k[1][1],k[1][2]}for a=#k,1,-1 do
_=k[a]_=_[5]&(bx-3000)>0 or cl(k,a)end
aV=c[8]au={}aC=aC+1
end
if J(2)>0 then
_=c[2][J(2)]if _ then
b=_[4]if b>0 then
if b==3008 then
aO=_[5]>0 and _[5]elseif b>3004 then
aX=u(aX+3*(_[4]-3006),1)cf=aX/2
elseif b>3000 then
bx=_[4]end
bU=J(2)if b<3000 and c[9][_[5]][7]==0 then
_[8]=1
end
end
end
end
if bm(3)and bD~=1 and bD~=3 then
co=.1
aT=5
else
aT=aT-1
if aT<1 then
co=0
end
end
for a=1,#au do
ak=au[a]for p=1,#ak do
aj=ak[p]_=aj[1]if _>(2^15)then
_=aV[_-(2^15)]for g=1,6 do
_[g]=aj[g+1]end
elseif _<0 then
while-_>#k do
k[#k+1]=bw
end
cl(k,-_)else
if not k[_]then
k[_]={}end
_=k[_]for g=1,8 do
_[c[19][1][g]]=aj[g+1]end
_[15]=0
_[7]=aD(#c[7],_)_[8]=bn(_[7])end
end
end
au={}for a=1,#c[6]do
aG[a]={}end
for a,_ in av(k)do
if aA then
_[7]=aD(#c[7],_)_[8]=bn(_[7])_[9]=_[8][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
end
if _ and a>1 then
bf=0
for p,d in av({1,2,9})do
_[d]=_[d]+_[d+10]bf=bf+_[d+10]end
if bf~=0 then
_[7]=aD(#c[7],_)_[8]=bn(_[7])end
_[15]=_[15]+1
_[20]=aK(_,l[1])M=c[16][_[6]]if M~=nil then
if M[5]>0 then
_[9]=_[8][1]end
if _[15]>=M[2]and M[2]~=-1 then
_[6]=M[4]_[15]=0
end
end
aG[_[7]][#aG[_[7]]+1]=a
end
end
_,aA=k[1]cG=s(aK(_,l[1])^2/4,16)l[1]={_[1],_[2]}B=_[3]cP=_[9]+1
l[2]=_[9]+41+cG*sin(aB*20)/4
an={}bd(#c[7])aW={}t={}aU={}aJ={}X={}Z={}aP={}b_=R
for a=0,R-1 do
aW[a],X[a],Z[a]=#c[6]+2,v+1,-v
end
a=1
while a<=#an and b_>0 do
_=c[6][an[a]]aU[a]={}aJ[a]={}t[a]={}aP[a]=aG[an[a]]table.sort(aP[a],function(b,n)return k[b][20]>k[n][20]end)for p=_[2],_[1]+_[2]-1 do
V=c[5][p]G=c[2][V[4]]bJ,bT=c[4][V[1]],c[4][V[2]]aY,bG=sub(bJ,l[1]),sub(bT,l[1])bK=aS(aY)I,aH=bl(bK-B),bl(aS(bG)-B)if A(I)<90 or A(aH)<90 then
ag,ae=by(I,-L,L),by(aH,-L,L)if A(I)>=90 or A(aH)>=90 then
bH=bz(aY,bG)if A(I)>=90 then
if bH>0 then ag=-L else ag=L end
else
if bH<0 then ae=-L else ae=L end
end
end
o,m=at(tan(ag)/N*F),at(tan(ae)/N*F)if o~=m then
r,aq=aK(l[1],bJ),aK(l[1],bT)aR=V[3]+90
bW=aR-bK
cD=r*sin(bW)aM=(r*cos(bW))if I~=ag then
r=aM/cos(aR-(ag+B))end
if aH~=ae then
aq=aM/cos(aR-(ae+B))end
r,aq=r*cos(ag),aq*cos(ae)g=V[5]+6
cE=(o>m)if cE and G[g]~=0 then
ay=G[3]&4>0
if ay then
S=aV[c[3][G[13-g]][6]]end
af=c[3][G[g]]cK={af[3],af[4],af[5]}j,bF,bM=aV[af[6]]for i,d in av(cK)do
ac=d>0
aa=Q
if(ac or(i==3 and not(bF and bM)))and(i==3 or ay)then
cd,bQ=0
if i<3 then
bQ=i==1 and u(j[4],S[4])==0
E,z=j[3-i],(i==1 and u or s)(S[3-i],j[i])aa=(E<z)==(i==2)and E~=z and j~=S
ac=aa
E,z=s(E,z),u(E,z)if aa then
if i==1 then
bF=Q
else
bM=Q
cd=G[3]&16>0 and u(j[2],S[2])-z or 0
end
end
else
if ay then
E,z=s(u(j[1],S[1]),j[2]),u(s(j[2],S[2]),j[1])aa=j~=S
else
E,z=j[1],j[2]end
end
E,z=E-l[2],z-l[2]bC,ci=E*aN,z*aN
if(aa or ac)and not bQ then
bA=V[6]-af[1]if G[4]==48 then
bA=bA-aB
end
cy,cu=bC/r,ci/r
cJ,cx=bC/aq,ci/aq
bI,ar=0
if ac then
_=c[21][d][4]if(V[4]==bU or bx==G[4]or G[8])and _>0 then
d=_
end
ax=c[21][d][3]x=1
if(i==3 and G[3]&16>0)or(i==1 and G[3]&8==0)then
x=-1
end
end
for g=o,m,-1 do
cC=ce[g]bc=(aR-B)-cC
f,bB=F-g
if f>=0 and f<=R-1 then
if a<aW[f]then
aZ=(g-o)/(m-o)K,H=(cy*(1-aZ)+cJ*aZ),(cu*(1-aZ)+cx*aZ)if A(H+K)-(H-K)<ah then
if ac then
if K~=H then
bB=Q
cq=aM*tan(bc)ap=cg(s(((A(cq)+A(aM))//cf)+1,16))bE=al((u(cq-cD,0)-bA)/(ax*ap))bY=bE*ap
ck={f,v-K,v-H,d,bE,z-E,j[5],af[2]+cd,Q,ax*ap,ap,x,not ar,i==3 and ay}if bY>bI or(not ar)or g==m then
bI=bY-1+ap
ar=Q
t[a][#t[a]+1]=ck
end
ct=ck
end
end
if aa then
if i~=2 then
if H<X[f]then
aJ[a][#aJ[a]+1]={f,u(H,Z[f]),X[f],j}end
if i==3 then Y=H else Y=K end
if X[f]>Y then X[f]=Y end
end
if i~=1 then
if K>Z[f]then
aU[a][#aU[a]+1]={f,Z[f],s(K,X[f]),j}end
if i==3 then Y=K else Y=H end
if Z[f]<Y then Z[f]=Y end
end
if(X[f]<=Z[f])or(i==3 and(not ay)and ac)then
aW[f]=a
b_=b_-1
end
end
end
end
end
if(not bB)and ar then
t[a][#t[a]+1],ar=ct
t[a][#t[a]][9]=bw
end
end
if#t[a]>0 then
t[a][#t[a]][9]=bw
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
local bS,bN,ai,cm=aI.drawTriangleF,aI.drawRectF,aI.setColor,aI.drawLine
cw={aU,aJ}if bu then
e=c[24][c[19][8][aC-3]]U,am=e[1],e[2]D=R/ceil(U*N)cc=D*1
for a=0,ceil(U*N),1 do
o=(U/2-a-1+B/90*U)%U
m=(o%1-1)*D
o=al(o)*am
for p=0,am-1,1 do
P=e[5+p+o]h=c[20][P]ai(h[1],h[2],h[3])bN(a*D+m,p*D,cc,cc)end
end
for a=#t,1,-1 do
for p=1,#t[a]do
d=t[a][p]if d[9]or d[13]then
if d[9]then
O=t[a][p+1]else
O=d
end
e=c[21][d[4]]e=c[21][d[4]+(cn%e[5])*"number of wall mipmap levels"+c[19][12][d[11]]]x=d[12]T=s(x,0)f=d[1]m=O[1]bZ=d[2-T]cL=O[2-T]g=d[3+T]br=O[3+T]if not O[9]then m=m+1 end
aF(d[7])cF=x*(d[2]-d[3])*e[3]/d[6]cO=x*(O[2]-O[3])*e[3]/O[6]bX=x>0 and s or u
bt=0
while g*x<bZ*x and(bt<e[2]or not d[14])do
cb=bX(g+cF,bZ)bq=bX(br+cO,cL)P=e[7+((T+d[8]//e[3])%e[2])+e[2]*((d[5])%e[1])]h=c[20][P]if h then
ai(h[1]*q,h[2]*q,h[3]*q)bS(f,g,f,cb,m,bq)bS(f,g,m,br,m,bq)end
g=cb
br=bq
T=T+x
bt=bt+1
end
end
end
for b=1,2 do
_=cw[b]bR={}az,ao,bh=ah,-ah
for p,d in av(_[a])do
az=s(az,d[2])ao=u(ao,d[3])bh=d
e=c[22][d[4][b+2]]if e and not aO then
aF(d[4][5])h=c[20][e[5]]ai(h[1]*q,h[2]*q,h[3]*q)cm(d[1],v-d[2],d[1],al(v-d[3]-1))end
end
if bh and aO then
j=bh[4]cz=(j[b]-l[2])bi=cos(B)bg=sin(B)for ad=al(az+v),ceil(ao+v)do
ab=aN*cz/(v-ad)bV=bi*ab-l[1][1]bL=bg*ab-l[1][2]c_=-bg*ab+bV
ca=bi*ab+bL
cI=bg*ab+bV
cB=-bi*ab+bL
cv=(cI-c_)/R
cH=(cB-ca)/R
bR[ad]={cv,cH,c_,ca}end
for p,d in av(_[a])do
if j[b+2]~=0 then
f=d[1]if f%aO==0 then
aF(j[5])n=j[b+2]e=c[22][n]e=c[22][n+(cn%e[4])]cj=F-(F-f)*N
az,ao=al(d[2]+v),ceil(d[3]+v)ax=e[3]for ad=az,ao do
aQ=bR[ad]cs=(aQ[3]+aQ[1]*cj)//ax
cr=(aQ[4]+aQ[2]*cj)//ax
P=6+(cr%e[1])+e[1]*(cs%e[2])h=c[20][e[P]]if h then
ai(h[1]*q,h[2]*q,h[3]*q)cm(f,ah-ad,f+aO+1,ah-ad)end
end
end
end
end
end
end
for p=1,#aP[a]do
_=k[aP[a][p]]if _[6]~=0 then
aY=sub(_,l[1])r=_[20]if r>1 then
I=bl(aS(aY)-B)r=r*cos(I)if A(I)<90 then
o=F-at(tan(I)/N*F)bc=at((180+I+B-_[3]+bp*4)/360*8)M=c[16][_[6]][1]if M~=0 and _[6]~=1 then
e=c[17][A(M)][bc%8+1]x=e<0 and-1 or 1
e=A(e)if e>0 then
e=c[23][e+c[19][12][s(cg(r//aX+1),8)]]U,am=e[1],e[2]D=F/(N*r)aE=D*bv
K=v+(l[2]-_[9])/r*aN
H=K-e[5]*aE
m=o-x*e[4]*D
D,aE=D*e[3],aE*e[3]aF(_[8][5])q=M>0 and q or 1
bP=D
cA=bP*bv
cN=_[4]and c[15][_[4]][23]&8>0
for g=0,U-1 do
o=m+g*D*x
if a<=aW[by(at(o),0,R-1)]then
for i=0,am-1 do
P=e[7+i+g*am]if P~=0 then
if cN then
ba=ba%50+1
ai(0,0,0,s(75*c[13][2][ba],255))else
h=c[20][P]ai(h[1]*q,h[2]*q,h[3]*q)end
bN(o,H+i*aE,bP,cA)end
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
