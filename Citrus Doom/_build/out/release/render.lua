
y=math
x=y.max
r=y.min
F=y.abs
aj=y.floor
ceil=y.ceil
sqrt=y.sqrt
J=input.getNumber
bc=input.getBool
pi=y.pi/180
b_=false
P=true
aw=ipairs
cn=table.remove
be=string
function bA(b,n)return b[1]*n[2]-b[2]*n[1]end
function sub(b,n)return{(b[1]-n[1]),(b[2]-n[2])}end
function br(b)return((b+180)%360)-180 end
function sin(b)return y.sin(b*pi)end
function cos(b)return y.cos(b*pi)end
function tan(b)return y.tan(b*pi)end
function cS(b)return y.atan(b)/pi end
function aT(b)return y.atan(b[2],b[1])/pi end
function bu(b,n,_)return r(x(n,b),_)end
function aC(b)return aj(b+.5)end
function aN(b,n)return sqrt(((b[1]-n[1])^2)+((b[2]-n[2])^2))end
function bG(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
function aY(b)t=r(b/255+ci,1)^2.2 end
c={}bw=1
aB=3
az=P
l={{0,0},0}A=0
R=288
D=144
ak=128
v=64
aD={}aW=500
cc=250
bS=1
cP=0
aF=2^15
bx=3002
bv=0
aG=0
av=0
bi=1.2
L=52
N=tan(L)aP=v*bi*R/ak/N
X=1
bT={}for a=-D,D do bT[a]=aT({1,a/D*N})end
function bq(a)if a<aF then
local u,bd=c[7][a]bd=0<bA({u[3],u[4]},sub(l[1],u))and 8 or 7
bq(u[bd])bq(u[15-bd])else
ay[#ay+1]=a-aF
end
end
function aE(a,b)if a<aF then
u=c[7][a]return aE(u[0<bA({u[3],u[4]},sub(b,u))and 8 or 7],b)else
return a-aF
end
end
function by(b)u=c[5][c[6][b][2]]return aX[c[3][c[2][u[4]][u[5]+6]][6]]end
function onTick()bl=0
for p=1,3 do
if bc(9)and(not bh)or not c[21]then
bj=property.getText(bw)a=1
E=""
_=be.sub(bj,a,a)while _~=""do
bV=be.byte(_)if bV>64 then
E=(E..bV-65)+0
if X==1 then
cj=E
c[E]=c[E]or{}elseif X==2 then
cr=E
ax=0
elseif X==3 then
bg=E
else
if ax==0 then
ax=cr
bg=bg-1
bn={}c[cj][#c[cj]+1]=bn
end
bn[#bn+1]=E
ax=ax-1
X=x(ax,bg)>0 and X-1 or 0
end
X=X+1
E=""
else
E=E.._
end
a=a+1
_=be.sub(bj,a,a)end
bw=bw+1
bh=bj==""
end
end
if bh then
if J(10)>0 then
az=P
aB=J(10)end
if bS>0 and not az then
af={}au[#au+1]=af
at=6
_=J(at)while _~=0 do
ae={}af[#af+1]=ae
for a=0,8 do
ae[a+1]=J(at+a)end
at=at+9
_=J(at)end
end
if bc(1)then
cg=0
bH=J(1)bS=J(3)av=av+1
bR=av//10
if az then
for a=1,10 do
c[a]=c[a+10*aB]end
k=c[1]cQ={k[1][1],k[1][2]}for a=#k,1,-1 do
_=k[a]_=_[5]&(bx-3000)>0 or cn(k,a)end
aX=c[8]au={}aB=aB+1
end
if J(2)>0 then
_=c[2][J(2)]if _ then
b=_[4]if b>0 then
if b==3008 then
aS=_[5]>0 and _[5]elseif b>3004 then
aW=x(aW+3*(_[4]-3006),1)cc=aW/2
elseif b>3000 then
bx=_[4]end
cg=J(2)if b<3000 and c[9][_[5]][7]==0 then
_[8]=1
end
end
end
end
if bc(3)and bH~=1 and bH~=3 then
ci=.1
aG=5
else
aG=aG-1
if aG<1 then
ci=0
end
end
for a=1,#au do
af=au[a]for p=1,#af do
ae=af[p]_=ae[1]if _>(2^15)then
_=aX[_-(2^15)]for g=1,6 do
_[g]=ae[g+1]end
elseif _<0 then
while-_>#k do
k[#k+1]=b_
end
cn(k,-_)else
if not k[_]then
k[_]={}end
_=k[_]for g=1,8 do
_[c[19][1][g]]=ae[g+1]end
_[15]=0
_[7]=aE(#c[7],_)_[8]=by(_[7])end
end
end
au={}for a=1,#c[6]do
aD[a]={}end
for a,_ in aw(k)do
if az then
_[7]=aE(#c[7],_)_[8]=by(_[7])_[9]=_[8][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
end
if _ and a>1 then
bm=0
for p,d in aw({1,2,9})do
_[d]=_[d]+_[d+10]bm=bm+_[d+10]end
if bm~=0 then
_[7]=aE(#c[7],_)_[8]=by(_[7])end
_[15]=_[15]+1
_[20]=aN(_,l[1])M=c[16][_[6]]if M~=nil then
if M[5]>0 then
_[9]=_[8][1]end
if _[15]>=M[2]and M[2]~=-1 then
_[6]=M[4]_[15]=0
end
end
aD[_[7]][#aD[_[7]]+1]=a
end
end
_,az=k[1]cJ=r(aN(_,l[1])^2/4,16)l[1]={_[1],_[2]}A=_[3]cR=_[9]+1
l[2]=_[9]+41+cJ*sin(av*20)/4
ay={}bq(#c[7])aQ={}s={}aZ={}aI={}U={}Z={}aV={}ba=R
for a=0,R-1 do
aQ[a],U[a],Z[a]=#c[6]+2,v+1,-v
end
a=1
while a<=#ay and ba>0 do
_=c[6][ay[a]]aZ[a]={}aI[a]={}s[a]={}aV[a]=aD[ay[a]]table.sort(aV[a],function(b,n)return k[b][20]>k[n][20]end)for p=_[2],_[1]+_[2]-1 do
W=c[5][p]I=c[2][W[4]]cd,bX=c[4][W[1]],c[4][W[2]]aL,bI=sub(cd,l[1]),sub(bX,l[1])cf=aT(aL)G,aK=br(cf-A),br(aT(bI)-A)if F(G)<90 or F(aK)<90 then
ac,aa=bu(G,-L,L),bu(aK,-L,L)if F(G)>=90 or F(aK)>=90 then
bE=bA(aL,bI)if F(G)>=90 then
if bE>0 then ac=-L else ac=L end
else
if bE<0 then aa=-L else aa=L end
end
end
m,o=aC(tan(ac)/N*D),aC(tan(aa)/N*D)if m~=o then
q,an=aN(l[1],cd),aN(l[1],bX)aJ=W[3]+90
bB=aJ-cf
cE=q*sin(bB)aO=(q*cos(bB))if G~=ac then
q=aO/cos(aJ-(ac+A))end
if aK~=aa then
an=aO/cos(aJ-(aa+A))end
q,an=q*cos(ac),an*cos(aa)g=W[5]+6
cB=(m>o)if cB and I[g]~=0 then
as=I[3]&4>0
if as then
V=aX[c[3][I[13-g]][6]]end
ai=c[3][I[g]]cA={ai[3],ai[4],ai[5]}j,bP,cm=aX[ai[6]]for i,d in aw(cA)do
ah=d>0
ag=P
if(ah or(i==3 and not(bP and cm)))and(i==3 or as)then
bF,cp=0
if i<3 then
cp=i==1 and x(j[4],V[4])==0
C,z=j[3-i],(i==1 and x or r)(V[3-i],j[i])ag=(C<z)==(i==2)and C~=z and j~=V
ah=ag
C,z=r(C,z),x(C,z)if ag then
if i==1 then
bP=P
else
cm=P
bF=I[3]&16>0 and x(j[2],V[2])-z or 0
end
end
else
if as then
C,z=r(x(j[1],V[1]),j[2]),x(r(j[2],V[2]),j[1])ag=j~=V
else
C,z=j[1],j[2]end
end
C,z=C-l[2],z-l[2]bO,bQ=C*aP,z*aP
if(ag or ah)and not cp then
bb=W[6]-ai[1]if I[4]==48 then
bb=bb-av
end
cN,cF=bO/q,bQ/q
cI,cu=bO/an,bQ/an
bZ,ar=0
if ah then
_=c[21][d][4]if(W[4]==cg or bx==I[4]or I[8])and _>0 then
d=_
end
ao=c[21][d][3]w=1
if(i==3 and I[3]&16>0)or(i==1 and I[3]&8==0)then
w=-1
end
end
for g=m,o,-1 do
cM=bT[g]bz=(aJ-A)-cM
f,bJ=D-g
if f>=0 and f<=R-1 then
if a<aQ[f]then
aH=(g-m)/(o-m)H,K=(cN*(1-aH)+cI*aH),(cF*(1-aH)+cu*aH)if F(K+H)-(K-H)<ak then
if ah then
if H~=K then
bJ=P
bW=aO*tan(bz)ap=bG(r(((F(bW)+F(aO))//cc)+1,16))bY=aj((x(bW-cE,0)-bb)/(ao*ap))bN=bY*ap
cq={f,v-H,v-K,d,bY,z-C,j[5],ai[2]+bF,P,ao*ap,ap,w,not ar,i==3 and as}if bN>bZ or(not ar)or g==o then
bZ=bN-1+ap
ar=P
s[a][#s[a]+1]=cq
end
cG=cq
end
end
if ag then
if i~=2 then
if K<U[f]then
aI[a][#aI[a]+1]={f,x(K,Z[f]),U[f],j}end
if i==3 then S=K else S=H end
if U[f]>S then U[f]=S end
end
if i~=1 then
if H>Z[f]then
aZ[a][#aZ[a]+1]={f,Z[f],r(H,U[f]),j}end
if i==3 then S=H else S=K end
if Z[f]<S then Z[f]=S end
end
if(U[f]<=Z[f])or(i==3 and(not as)and ah)then
aQ[f]=a
ba=ba-1
end
end
end
end
end
if(not bJ)and ar then
s[a][#s[a]+1],ar=cG
s[a][#s[a]][9]=b_
end
end
if#s[a]>0 then
s[a][#s[a]][9]=b_
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
function onDraw()aR=screen
local ch,ck,ab,cb=aR.drawTriangleF,aR.drawRectF,aR.setColor,aR.drawLine
cx={aZ,aI}if bh then
e=c[24][c[19][8][aB-3]]Y,aq=e[1],e[2]B=R/ceil(Y*N)bC=B*1
for a=0,ceil(Y*N),1 do
m=(Y/2-a-1+A/90*Y)%Y
o=(m%1-1)*B
m=aj(m)*aq
for p=0,aq-1,1 do
O=e[5+p+m]h=c[20][O]ab(h[1],h[2],h[3])ck(a*B+o,p*B,bC,bC)end
end
for a=#s,1,-1 do
for p=1,#s[a]do
d=s[a][p]if d[9]or d[13]then
if d[9]then
Q=s[a][p+1]else
Q=d
end
e=c[21][d[4]]e=c[21][d[4]+(bR%e[5])*"number of wall mipmap levels"+c[19][12][d[11]]]w=d[12]T=r(w,0)f=d[1]o=Q[1]co=d[2-T]cy=Q[2-T]g=d[3+T]bf=Q[3+T]if not Q[9]then o=o+1 end
aY(d[7])cC=w*(d[2]-d[3])*e[3]/d[6]cz=w*(Q[2]-Q[3])*e[3]/Q[6]ce=w>0 and r or x
bk=0
while g*w<co*w and(bk<e[2]or not d[14])do
ca=ce(g+cC,co)bp=ce(bf+cz,cy)O=e[7+((T+d[8]//e[3])%e[2])+e[2]*((d[5])%e[1])]h=c[20][O]if h then
ab(h[1]*t,h[2]*t,h[3]*t)ch(f,g,f,ca,o,bp)ch(f,g,o,bf,o,bp)end
g=ca
bf=bp
T=T+w
bk=bk+1
end
end
end
for b=1,2 do
_=cx[b]cl={}aA,am,bt=ak,-ak
for p,d in aw(_[a])do
aA=r(aA,d[2])am=x(am,d[3])bt=d
e=c[22][d[4][b+2]]if e and not aS then
aY(d[4][5])h=c[20][e[5]]ab(h[1]*t,h[2]*t,h[3]*t)cb(d[1],v-d[2],d[1],aj(v-d[3]-1))end
end
if bt and aS then
j=bt[4]cH=(j[b]-l[2])bo=cos(A)bs=sin(A)for al=aj(aA+v),ceil(am+v)do
ad=aP*cH/(v-al)bD=bo*ad-l[1][1]bL=bs*ad-l[1][2]bK=-bs*ad+bD
bU=bo*ad+bL
cv=bs*ad+bD
ct=-bo*ad+bL
cD=(cv-bK)/R
cw=(ct-bU)/R
cl[al]={cD,cw,bK,bU}end
for p,d in aw(_[a])do
if j[b+2]~=0 then
f=d[1]if f%aS==0 then
aY(j[5])n=j[b+2]e=c[22][n]e=c[22][n+(bR%e[4])]bM=D-(D-f)*N
aA,am=aj(d[2]+v),ceil(d[3]+v)ao=e[3]for al=aA,am do
aU=cl[al]cK=(aU[3]+aU[1]*bM)//ao
cO=(aU[4]+aU[2]*bM)//ao
O=6+(cO%e[1])+e[1]*(cK%e[2])h=c[20][e[O]]if h then
ab(h[1]*t,h[2]*t,h[3]*t)cb(f,ak-al,f+aS+1,ak-al)end
end
end
end
end
end
end
for p=1,#aV[a]do
_=k[aV[a][p]]if _[6]~=0 then
aL=sub(_,l[1])q=_[20]if q>1 then
G=br(aT(aL)-A)q=q*cos(G)if F(G)<90 then
m=D-aC(tan(G)/N*D)bz=aC((180+G+A-_[3]+bl*4)/360*8)M=c[16][_[6]][1]if M~=0 and _[6]~=1 then
e=c[17][F(M)][bz%8+1]w=e<0 and-1 or 1
e=F(e)if e>0 then
e=c[23][e+c[19][12][r(bG(q//aW+1),8)]]Y,aq=e[1],e[2]B=D/(N*q)aM=B*bi
H=v+(l[2]-_[9])/q*aP
K=H-e[5]*aM
o=m-w*e[4]*B
B,aM=B*e[3],aM*e[3]aY(_[8][5])t=M>0 and t or 1
c_=B
cs=c_*bi
cL=_[4]and c[15][_[4]][23]&8>0
for g=0,Y-1 do
m=o+g*B*w
if a<=aQ[bu(aC(m),0,R-1)]then
for i=0,aq-1 do
O=e[7+i+g*aq]if O~=0 then
if cL then
bv=bv%50+1
ab(0,0,0,r(75*c[13][2][bv],255))else
h=c[20][O]ab(h[1]*t,h[2]*t,h[3]*t)end
ck(m,K+i*aM,c_,cs)end
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
