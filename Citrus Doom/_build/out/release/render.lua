
x=math
u=x.max
s=x.min
E=x.abs
ak=x.floor
ceil=x.ceil
sqrt=x.sqrt
J=input.getNumber
bt=input.getBool
pi=x.pi/180
bq=false
Q=true
av=ipairs
cb=table.remove
bj=string
function bf(b,n)return b[1]*n[2]-b[2]*n[1]end
function sub(b,n)return{(b[1]-n[1]),(b[2]-n[2])}end
function bg(b)return((b+180)%360)-180 end
function sin(b)return x.sin(b*pi)end
function cos(b)return x.cos(b*pi)end
function tan(b)return x.tan(b*pi)end
function cP(b)return x.atan(b)/pi end
function aQ(b)return x.atan(b[2],b[1])/pi end
function ba(b,n,_)return s(u(n,b),_)end
function ar(b)return ak(b+.5)end
function aO(b,n)return sqrt(((b[1]-n[1])^2)+((b[2]-n[2])^2))end
function bF(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
function aG(b)r=s(b/255+ce,1)^2.2 end
c={}bA=1
aD=3
as=Q
l={{0,0},0}C=0
O=288
B=144
aa=128
w=64
aP={}aY=500
bG=250
bC=1
ae=2^15
bv=3002
bc=0
aZ=0
ax=0
bn=1.2
L=52
N=tan(L)aJ=w*bn*O/aa/N
T=1
bZ={}for a=-B,B do bZ[a]=aQ({1,a/B*N})end
function bo(a)if a<ae then
local t,bp=c[7][a]bp=0<bf({t[3],t[4]},sub(l[1],t))and 8 or 7
bo(t[bp])bo(t[15-bp])else
aC[#aC+1]=a-ae
end
end
function aI(a,b)if a<ae then
t=c[7][a]return aI(t[0<bf({t[3],t[4]},sub(b,t))and 8 or 7],b)else
return a-ae
end
end
function bx(b)t=c[5][c[6][b][2]]return aK[c[3][c[2][t[4]][t[5]+6]][6]]end
function onTick()bw=0
for p=1,3 do
if bt(9)and(not bl)or not c[21]then
b_=property.getText(bA)a=1
D=""
_=bj.sub(b_,a,a)while _~=""do
bB=bj.byte(_)if bB>64 then
D=(D..bB-65)+0
if T==1 then
cp=D
c[D]=c[D]or{}elseif T==2 then
cI=D
aq=0
elseif T==3 then
bh=D
else
if aq==0 then
aq=cI
bh=bh-1
bi={}c[cp][#c[cp]+1]=bi
end
bi[#bi+1]=D
aq=aq-1
T=u(aq,bh)>0 and T-1 or 0
end
T=T+1
D=""
else
D=D.._
end
a=a+1
_=bj.sub(b_,a,a)end
bA=bA+1
bl=b_==""
end
end
if bl then
if J(10)>0 then
as=Q
aD=J(10)end
if bC>0 and not as then
ad={}az[#az+1]=ad
ao=6
_=J(ao)while _~=0 do
ac={}ad[#ad+1]=ac
for a=0,8 do
ac[a+1]=J(ao+a)end
ao=ao+9
_=J(ao)end
end
if bt(1)then
ck=0
co=J(1)bC=J(3)ax=ax+1
cd=ax//10
if as then
for a=1,10 do
c[a]=c[a+10*aD]end
k=c[1]cO={k[1][1],k[1][2]}for a=#k,1,-1 do
_=k[a]_=_[5]&(bv-3000)>0 or cb(k,a)end
aK=c[8]az={}aD=aD+1
end
if J(2)>0 then
_=c[2][J(2)]if _ then
b=_[4]if b>0 then
if b==3008 then
aR=_[5]>0 and _[5]elseif b>3004 then
aY=u(aY+3*(_[4]-3006),1)bG=aY/2
elseif b>3000 then
bv=_[4]end
ck=J(2)if b<3000 and c[9][_[5]][7]==0 then
_[8]=1
end
end
end
end
if bt(3)and co~=1 and co~=3 then
ce=.1
aZ=5
else
aZ=aZ-1
if aZ<1 then
ce=0
end
end
for a=1,#az do
ad=az[a]for p=1,#ad do
ac=ad[p]_=ac[1]if _>ae then
_=aK[_-ae]for g=1,6 do
_[g]=ac[g+1]end
elseif _<0 then
while-_>#k do
k[#k+1]=bq
end
cb(k,-_)else
if not k[_]then
k[_]={}end
_=k[_]for g=1,8 do
_[c[19][1][g]]=ac[g+1]end
_[15]=0
_[7]=aI(#c[7],_)_[8]=bx(_[7])end
end
end
az={}for a=1,#c[6]do
aP[a]={}end
for a,_ in av(k)do
if as then
_[7]=aI(#c[7],_)_[8]=bx(_[7])_[9]=_[8][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
end
if _ and a>1 then
bb=0
for p,d in av({1,2,9})do
_[d]=_[d]+_[d+10]bb=bb+_[d+10]end
if bb~=0 then
_[7]=aI(#c[7],_)_[8]=bx(_[7])end
_[15]=_[15]+1
_[20]=aO(_,l[1])M=c[16][_[6]]if M~=nil then
if M[5]>0 then
_[9]=_[8][1]end
if _[15]>=M[2]and M[2]~=-1 then
_[6]=M[4]_[15]=0
end
end
aP[_[7]][#aP[_[7]]+1]=a
end
end
_,as=k[1]cv=s(aO(_,l[1])^2/4,16)l[1]={_[1],_[2]}C=_[3]l[2]=_[9]+41+cv*sin(ax*20)/4
aC={}bo(#c[7])aX={}z={}aV={}aF={}W={}Y={}aW={}bk=O
for a=0,O-1 do
aX[a],W[a],Y[a]=#c[6]+2,w+1,-w
end
a=1
while a<=#aC and bk>0 do
_=c[6][aC[a]]aV[a]={}aF[a]={}z[a]={}aW[a]=aP[aC[a]]table.sort(aW[a],function(b,n)return k[b][20]>k[n][20]end)for p=_[2],_[1]+_[2]-1 do
Z=c[5][p]G=c[2][Z[4]]ca,bU=c[4][Z[1]],c[4][Z[2]]aN,bR=sub(ca,l[1]),sub(bU,l[1])bY=aQ(aN)K,aS=bg(bY-C),bg(aQ(bR)-C)if E(K)<90 or E(aS)<90 then
aj,ab=ba(K,-L,L),ba(aS,-L,L)if E(K)>=90 or E(aS)>=90 then
bM=bf(aN,bR)if E(K)>=90 then
if bM>0 then aj=-L else aj=L end
else
if bM<0 then ab=-L else ab=L end
end
end
m,o=ar(tan(aj)/N*B),ar(tan(ab)/N*B)if m~=o then
q,ay=aO(l[1],ca),aO(l[1],bU)aU=Z[3]+90
cn=aU-bY
cE=q*sin(cn)aT=(q*cos(cn))if K~=aj then
q=aT/cos(aU-(aj+C))end
if aS~=ab then
ay=aT/cos(aU-(ab+C))end
q,ay=q*cos(aj),ay*cos(ab)g=Z[5]+6
cF=(m>o)if cF and G[g]~=0 then
ap=G[3]&4>0
if ap then
X=aK[c[3][G[13-g]][6]]end
ai=c[3][G[g]]cz={ai[3],ai[4],ai[5]}j,bV,bT=aK[ai[6]]for h,d in av(cz)do
ag=d>0
af=Q
if(ag or(h==3 and not(bV and bT)))and(h==3 or ap)then
c_,bE=0
if h<3 then
bE=h==1 and u(j[4],X[4])==0
F,A=j[3-h],(h==1 and u or s)(X[3-h],j[h])af=(F<A)==(h==2)and F~=A and j~=X
ag=af
F,A=s(F,A),u(F,A)if af then
if h==1 then
bV=Q
else
bT=Q
c_=G[3]&16>0 and u(j[2],X[2])-A or 0
end
end
else
if ap then
F,A=s(u(j[1],X[1]),j[2]),u(s(j[2],X[2]),j[1])af=j~=X
else
F,A=j[1],j[2]end
end
F,A=F-l[2],A-l[2]bO,bX=F*aJ,A*aJ
if(af or ag)and not bE then
bs=Z[6]-ai[1]if G[4]==48 then
bs=bs-ax
end
cA,cu=bO/q,bX/q
cG,cs=bO/ay,bX/ay
bP,aw=0
if ag then
_=c[21][d][4]if(Z[4]==ck or bv==G[4]or G[8])and _>0 then
d=_
end
aB=c[21][d][3]v=1
if(h==3 and G[3]&16>0)or(h==1 and G[3]&8==0)then
v=-1
end
end
for g=m,o,-1 do
cN=bZ[g]bz=(aU-C)-cN
f,cc=B-g
if f>=0 and f<=O-1 then
if a<aX[f]then
aM=(g-m)/(o-m)H,I=(cA*(1-aM)+cG*aM),(cu*(1-aM)+cs*aM)if E(I+H)-(I-H)<aa then
if ag then
if H~=I then
cc=Q
cg=aT*tan(bz)an=bF(s(((E(cg)+E(aT))//bG)+1,16))bK=ak((u(cg-cE,0)-bs)/(aB*an))ci=bK*an
bI={f,w-H,w-I,d,bK,A-F,j[5],ai[2]+c_,Q,aB*an,an,v,not aw,h==3 and ap}if ci>bP or(not aw)or g==o then
bP=ci-1+an
aw=Q
z[a][#z[a]+1]=bI
end
bN=bI
end
end
if af then
if h~=2 then
if I<W[f]then
aF[a][#aF[a]+1]={f,u(I,Y[f]),W[f],j}end
if h==3 then V=I else V=H end
if W[f]>V then W[f]=V end
end
if h~=1 then
if H>Y[f]then
aV[a][#aV[a]+1]={f,Y[f],s(H,W[f]),j}end
if h==3 then V=H else V=I end
if Y[f]<V then Y[f]=V end
end
if(W[f]<=Y[f])or(h==3 and(not ap)and ag)then
aX[f]=a
bk=bk-1
end
end
end
end
end
if(not cc)and aw then
bN[9]=bq
z[a][#z[a]+1],aw=bN
end
end
if#z[a]>0 then
z[a][#z[a]][9]=bq
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
function onDraw()aL=screen
local bJ,bD,am,bS=aL.drawTriangleF,aL.drawRectF,aL.setColor,aL.drawLine
cL={aV,aF}if bl then
e=c[24][c[19][8][aD-3]]U,au=e[1],e[2]y=O/ceil(U*N)for a=0,ceil(U*N),1 do
m=(U/2-a-1+C/90*U)%U
o=(m%1-1)*y
m=ak(m)*au
for p=0,au-1,1 do
R=e[5+p+m]i=c[20][R]am(i[1],i[2],i[3])bD(a*y+o,p*y,y,y)end
end
for a=#z,1,-1 do
for p=1,#z[a]do
d=z[a][p]if d[9]or d[13]then
if d[9]then
P=z[a][p+1]else
P=d
end
e=c[21][d[4]]e=c[21][d[4]+(cd%e[5])*"number of wall mipmap levels"+c[19][12][d[11]]]v=d[12]S=s(v,0)f=d[1]o=P[1]cm=d[2-S]cx=P[2-S]g=d[3+S]be=P[3+S]if not P[9]then o=o+1 end
aG(d[7])cC=v*(d[2]-d[3])*e[3]/d[6]cy=v*(P[2]-P[3])*e[3]/P[6]bQ=v>0 and s or u
bm=0
while g*v<cm*v and(bm<e[2]or not d[14])do
bH=bQ(g+cC,cm)by=bQ(be+cy,cx)R=e[7+((S+d[8]//e[3])%e[2])+e[2]*((d[5])%e[1])]i=c[20][R]if i then
am(i[1]*r,i[2]*r,i[3]*r)bJ(f,g,f,bH,o,by)bJ(f,g,o,be,o,by)end
g=bH
be=by
S=S+v
bm=bm+1
end
end
end
for b=1,2 do
_=cL[b]bL={}at,aA,bu=aa,-aa
for p,d in av(_[a])do
at=s(at,d[2])aA=u(aA,d[3])bu=d
e=c[22][d[4][b+2]]if e and not aR then
aG(d[4][5])i=c[20][e[5]]am(i[1]*r,i[2]*r,i[3]*r)bS(d[1],w-d[2],d[1],ak(w-d[3]-1))end
end
if bu and aR then
j=bu[4]cK=(j[b]-l[2])bd=cos(C)br=sin(C)for al=ak(at+w),ceil(aA+w)do
ah=aJ*cK/(w-al)cf=bd*ah-l[1][1]cl=br*ah-l[1][2]cj=-br*ah+cf
bW=bd*ah+cl
cH=br*ah+cf
cD=-bd*ah+cl
cr=(cH-cj)/O
cB=(cD-bW)/O
bL[al]={cr,cB,cj,bW}end
for p,d in av(_[a])do
if j[b+2]~=0 then
f=d[1]if f%aR==0 then
aG(j[5])n=j[b+2]e=c[22][n]e=c[22][n+(cd%e[4])]ch=B-(B-f)*N
at,aA=ak(d[2]+w),ceil(d[3]+w)aB=e[3]for al=at,aA do
aE=bL[al]cJ=(aE[3]+aE[1]*ch)//aB
cM=(aE[4]+aE[2]*ch)//aB
R=6+(cM%e[1])+e[1]*(cJ%e[2])i=c[20][e[R]]if i then
am(i[1]*r,i[2]*r,i[3]*r)bS(f,aa-al,f+aR+1,aa-al)end
end
end
end
end
end
end
for p=1,#aW[a]do
_=k[aW[a][p]]if _[6]~=0 then
aN=sub(_,l[1])q=_[20]if q>1 then
K=bg(aQ(aN)-C)q=q*cos(K)if E(K)<90 then
m=B-ar(tan(K)/N*B)bz=ar((180+K+C-_[3]+bw*4)/360*8)M=c[16][_[6]][1]if M~=0 and _[6]~=1 then
e=c[17][E(M)][bz%8+1]v=e<0 and-1 or 1
e=E(e)if e>0 then
e=c[23][e+c[19][12][s(bF(q//aY+1),8)]]U,au=e[1],e[2]y=B/(N*q)aH=y*bn
H=w+(l[2]-_[9])/q*aJ
I=H-e[5]*aH
o=m-v*e[4]*y
y,aH=y*e[3],aH*e[3]aG(_[8][5])r=M>0 and r or 1
cq=y
cw=cq*bn
ct=_[4]and c[15][_[4]][23]&8>0
for g=0,U-1 do
m=o+g*y*v
if a<=aX[ba(ar(m),0,O-1)]then
for h=0,au-1 do
R=e[7+h+g*au]if R~=0 then
if ct then
bc=bc%50+1
am(0,0,0,s(75*c[13][2][bc],255))else
i=c[20][R]am(i[1]*r,i[2]*r,i[3]*r)end
bD(m,I+h*aH,cq,cw)end
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
bw=bw+1
end
