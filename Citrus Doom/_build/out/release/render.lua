cN=""

R=180
aO=ipairs
bX=table
bK=input
u=math
B=u.max
p=u.min
t=u.abs
aj=u.floor
ceil=u.ceil
sqrt=u.sqrt
L=bK.getNumber
by=bK.getBool
pi=u.pi
P=false
H=true
bo=string
function bC(c,s)return c[1]*s[2]-c[2]*s[1]end
function sub(c,s)return{(c[1]-s[1]),(c[2]-s[2])}end
function bk(c)return((c+R)%360)-R end
function sin(c)return u.sin(c/R*pi)end
function cos(c)return u.cos(c/R*pi)end
function tan(c)return u.tan(c/R*pi)end
function cJ(c)return u.atan(c)*R/pi end
function aG(c)return u.atan(c[2],c[1])*R/pi end
function aX(c,s,_)return p(B(s,c),_)end
function am(c)return aj(c+.5)end
function bj(c,s)return sqrt(((c[1]-s[1])^2)+((c[2]-s[2])^2))end
function bD(c)c=c-1
c=c|(c>>1)c=c|(c>>2)c=c|(c>>4)return c+1
end
b={}bn=1
aA=3
aI=P
as=H
f={{0,0},0,0}I=288
z=I//2
al=128
x=al//2
aN={}aP=400
bW=100
cL=0
aw={}aK=32768
bL=3002
bp=0
aJ=0
cn=H
be=0
bd=1.2
N=52
O=tan(N)aT=x*bd*I/al/O
ab=1
bN={}for a=-z,z do bN[a]=aG({1,a/z*O})end
function bi(a)if a<aK then
local r,bB=b[7][a]bB=0<bC({r[3],r[4]},sub(f[1],r))and 8 or 7
bi(r[bB])bi(r[15-bB])else
an[#an+1]=a-aK
end
end
function aU(a,c)if a<aK then
r=b[7][a]return aU(r[0<bC({r[3],r[4]},sub(c,r))and 8 or 7],c)else
return a-aK
end
end
function bt(c)r=b[5][b[6][c][2]]return b[3][b[2][r[4]][r[5]+6]][6]end
function onTick()bz=0
for m=1,3 do
if by(9)and(not aI)or not b[21]then
bl=property.getText(bn..cN)if bl~=cN then
a=1
E=cN
_=bo.sub(bl,a,a)while _~=cNdo
bY=bo.byte(_)if bY>64 or _==cNthen
E=(E..(bY-65))+0
if ab==1then
cg=E
if b[E]==cM then
b[E]={}end
ab=2
elseif ab==2then
cs=E
aq=0
ab=3
elseif ab==3then
bc=E
ab=4
else
if aq==0then
aq=cs
bc=bc-1
ae={}b[cg][#b[cg]+1]=ae
end
ae[#ae+1]=E
aq=aq-1
if B(aq,bc)==0then
ab=1
end
end
E=cN
else
E=E.._
end
a=a+1
_=bo.sub(bl,a,a)end
bn=bn+1
else
aI=H
end
end
end
if aI then
if L(9)>0 then
as=H
aA=L(9)end
if bW>0 and not as then
ai={}aw[#aw+1]=ai
ao=5
_=L(ao)while _~=0 do
W={}ai[#ai+1]=W
for a=0,8 do
W[a+1]=L(ao+a)end
ao=ao+9
_=L(ao)end
end
if by(1)then
bS=0
bg=L(1)bW=L(3)be=be+1
if as then
for a=1,10 do
b[a]=b[a+10*aA]end
for a=1,#b[8]do
b[8][a][5]=b[8][a][5]/255
end
aA=aA+1
end
if L(2)>0 then
_=b[2][L(2)]if _ then
if _[4]>3004 then
aP=B(aP+3*(_[4]-3006),1)elseif _[4]>3000 then
bL=_[4]end
bS=L(2)end
end
if by(3)and bg~=1 and bg~=3 then
aV=.1
aJ=bg==5 and 5 or 3
else
aJ=aJ-1
if aJ<1then
aV=0
end
end
for a=1,#aw do
ai=aw[a]for m=1,#ai do
W=ai[m]_=W[1]if _>(2^15)then
_=b[8][_-(2^15)]_[1]=W[2]_[2]=W[3]elseif _<0 then
while-_>#b[1]do
b[1][#b[1]+1]=P
end
bX.remove(b[1],-_)else
if not b[1][_]then
b[1][_]={}end
_=b[1][_]for h=1,8 do
_[b[19][1][h]]=W[h+1]end
_[15]=0
_[7]=aU(#b[7],_)_[8]=bt(_[7])end
end
end
aw={}for a=1,#b[6]do
aN[a]={}end
for a=1,#b[1]do
_=b[1][a]if _ then
if as then
_[7]=aU(#b[7],_)_[8]=bt(_[7])_[9]=b[8][_[8]][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
if _[4]==1 then
cI=a
end
end
bq=0
for m,d in aO({1,2,9})do
_[d]=_[d]+_[d+10]bq=bq+_[d+10]end
if bq~=0then
_[7]=aU(#b[7],_)_[8]=bt(_[7])end
_[15]=_[15]+1
_[20]=bj(_,f[1])Q=b[16][_[6]]if Q~=nil then
if _[15]>=Q[2]and Q[2]~=-1 then
_[6]=Q[4]_[15]=0
end
end
aN[_[7]][#aN[_[7]]+1]=a
end
end
as=P
_=b[1][cI]f[1]={_[1],_[2]}f[2]=_[9]+41
f[3]=_[3]an={}bi(#b[7])ar={}n={}aF={}aL={}V={}X={}bb={}bs=I
for a=0,I-1 do
ar[a],V[a],X[a]=#b[6]+2,x+1,-x
end
a=1
while a<=#an and bs>0 do
_=b[6][an[a]]aF[a]={}aL[a]={}n[a]={}bb[a]=aN[an[a]]bX.sort(bb[a],function(c,s)return b[1][c][20]>b[1][s][20]end)for m=_[2],_[1]+_[2]-1 do
ad=b[5][m]F=b[2][ad[4]]ck,ce=b[4][ad[1]],b[4][ad[2]]aQ,bQ=sub(ck,f[1]),sub(ce,f[1])bH=aG(aQ)J,ba=bk(bH-f[3]),bk(aG(bQ)-f[3])if t(J)<90 or t(ba)<90 then
ag,ah=aX(J,-N,N),aX(ba,-N,N)if t(J)>=90 or t(ba)>=90 then
bO=bC(aQ,bQ)if t(J)>=90 then
if bO>0 then ag=-N else ag=N end
else
if bO<0 then ah=-N else ah=N end
end
end
j,l=am(tan(ag)/O*z),am(tan(ah)/O*z)if j~=l then
o,ax=bj(f[1],ck),bj(f[1],ce)b_=ad[3]+90
bG=b_-bH
cE=o*sin(bG)aZ=(o*cos(bG))if J~=ag then
o=aZ/cos(b_-(ag+f[3]))end
if ba~=ah then
ax=aZ/cos(b_-(ah+f[3]))end
o,ax=o*cos(ag),ax*cos(ah)h=ad[5]+6
cm=(j>l)if cm and F[h]~=0 then
ap=F[3]&4>0
if ap then
aa,Y=b[8][b[3][F[6]][6]],b[8][b[3][F[7]][6]]end
af=b[3][F[h]]cF={af[3],af[4],af[5]}K,bM,bV=b[8][af[6]]for i,d in aO(cF)do
aC=d>0
az=H
if(aC or(i==3 and not(bM and bV)))and(i==3 or ap)then
bJ=P
cj=0
if i<3 then
bJ=i==1 and B(aa[4],Y[4])==0
C,v=aa[3-i],Y[3-i]az=(C<v)~=(i==2)~=(h==6)and C~=v and aa~=Y
C,v=p(C,v),B(C,v)if az then
if i==1then
bM=H
else
bV=H
cj=F[3]&16>0 and B(aa[2],Y[2])-v or 0
end
end
else
if ap then
C,v=B(aa[1],Y[1]),p(aa[2],Y[2])az=aa~=Y
else
C,v=K[1],K[2]end
end
C,v=C-f[2],v-f[2]cb,bI=C*aT,v*aT
if(az or aC)and not bJ then
bx=ad[6]-af[1]if F[4]==48 then
bx=bx-be
end
cH,cw=cb/o,bI/o
cD,cG=cb/ax,bI/ax
bF=0
av=P
if aC then
_=b[21][d][4]if(ad[4]==bS or bL==F[4])and _>0then
d=_
end
au=b[21][d][3]q=1
if(i==3 and F[3]&16>0)or(i==1 and F[3]&8==0)then
q=-1
end
end
for h=j,l,-1 do
co=bN[h]aM=(b_-f[3])-co
g=z-h
bE=P
if g>=0 and g<=I-1 then
if a<ar[g]then
aS=(h-j)/(l-j)G,D=(cH*(1-aS)+cD*aS),(cw*(1-aS)+cG*aS)if t(D+G)-(D-G)<al then
if aC then
if G~=D then
bE=H
bT=aZ*tan(aM)A=p(((t(bT)+t(aZ))//aP)+1,4)br=p(bD(aj(A/cos(aM))),16)A=bD(A)bf=aj((B(bT-cE,0)-bx)/(au*br))*br
bP={g,x-G,x-D,d,bf,v-C,K[5],af[2]+cj,H,au*A,A,q,not av,i==3 and ap}if bf>bF or(not av)or h==l then
bF=bf-1+br
av=H
n[a][#n[a]+1]=bP
end
cA=bP
end
end
if az then
if i~=2 then
if D<V[g]then
aL[a][#aL[a]+1]={g,B(D,X[g]),V[g],K,2}end
if i==3then U=D else U=G end
if V[g]>U then V[g]=U end
end
if i~=1 then
if G>X[g]then
aF[a][#aF[a]+1]={g,X[g],p(G,V[g]),K,1}end
if i==3then U=G else U=D end
if X[g]<U then X[g]=U end
end
if(V[g]<=X[g])or(i==3 and(not ap)and aC)then
ar[g]=a
bs=bs-1
end
end
end
end
end
if(not bE)and av then
av=P
n[a][#n[a]+1]=cA
n[a][#n[a]][9]=P
end
end
if#n[a]>0 then
n[a][#n[a]][9]=P
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
local ci,aH,at,cK=aR.drawTriangleF,aR.drawRectF,aR.setColor,aR.drawText
bz=bz+1
ct={aF,aL}if bz<=1 then
if aI then
e=b[24][b[19][8][aA-3]]T,ac=e[1],e[2]w=I/ceil(T*O)cl=w*1
for a=0,ceil(T*O),1 do
j=(T/2-a-1+f[3]/90*T)%T
l=(j%1-1)*w
j=aj(j)*ac
for m=0,ac-1,1 do
M=e[5+m+j]k=b[20][M]at(k[1],k[2],k[3])aH(a*w+l,m*w,cl,cl)end
end
for a=#n,1,-1 do
for m=1,#n[a]do
d=n[a][m]if d[9]or d[13]then
if d[9]then
S=n[a][m+1]else
S=d
end
e=b[21][d[4]]q=d[12]Z=p(q,0)g=d[1]l=S[1]bU=d[2-Z]cp=S[2-Z]h=d[3+Z]bh=S[3+Z]if not S[9]then l=l+1 end
y=p(d[7]+aV,1)^2.2
cr=q*(d[2]-d[3])*d[10]/d[6]cz=q*(S[2]-S[3])*d[10]/S[6]ae=q>0 and p or B
bw=0
while h*q<bU*q and(bw<e[2]or not d[14])do
cc=ae(h+cr,bU)bA=ae(bh+cz,cp)M=e[6+((Z*d[11]+d[8]//e[3])%e[2])+e[2]*(d[5]%e[1])]k=b[20][M]if k then
at(k[1]*y,k[2]*y,k[3]*y)ci(g,h,g,cc,l,bA)ci(g,h,l,bh,l,bA)end
h=cc
bh=bA
Z=Z+q
bw=bw+d[11]end
end
end
for c=1,2 do
_=ct[c]cf={}aD,aB,aW=al,-al
for m,d in aO(_[a])do
aD=p(aD,d[2])aB=B(aB,d[3])aW=d
end
if aW then
K=aW[4]cu=(K[aW[5]]-f[2])bm=cos(f[3])bu=sin(f[3])for aE=aj(aD+x),ceil(aB+x)do
ak=aT*cu/(x-aE)c_=bm*ak-f[1][1]ch=bu*ak-f[1][2]ca=-bu*ak+c_
bZ=bm*ak+ch
cy=bu*ak+c_
cq=-bm*ak+ch
cC=(cy-ca)/I
cv=(cq-bZ)/I
cf[aE]={cC,cv,ca,bZ}end
for m,d in aO(_[a])do
if K[d[5]+2]~=0 then
y=p(K[5]+aV,1)^2.2
e=b[22][K[d[5]+2]]g=d[1]if cn then
cd=z-(z-g)*O
aD,aB=aj(d[2]+x),ceil(d[3]+x)au=e[3]for aE=aD,aB do
aY=cf[aE]cx=(aY[3]+aY[1]*cd)//au
cB=(aY[4]+aY[2]*cd+8)//au
M=3+(cB%e[1])+e[1]*(cx%e[2])k=b[20][e[M]]if k then
at(k[1]*y,k[2]*y,k[3]*y)aH(g,-aE+al,1,1)end
end
end
end
end
end
end
for m=1,#bb[a]do
_=b[1][bb[a][m]]if _[6]~=0 then
aQ=sub(_,f[1])o=_[20]if o>1 then
J=bk(aG(aQ)-f[3])o=o*cos(J)if t(J)<90 then
j=z-am(tan(J)/O*z)aM=am((R+J+f[3]-_[3])/360*8)Q=b[16][_[6]][1]if Q~=0 and _[6]~=1 then
e=b[17][t(Q)][aM%8+1]if e==0 then
e=b[17][t(Q)][1]end
q=e<0 and-1 or 1
e=t(e)if e>0 then
e=b[23][e]T,ac=e[1],e[2]A=p(bD(o//aP+1),8)w=z/(O*o)ay=w*bd
G=x+(f[2]-_[9])/o*aT
D=G-e[5]*ay
l=j-q*e[4]*w
w,ay=w*e[3],ay*e[3]y=Q>0 and p(b[8][_[8]][5]+aV,1)^2.2 or 1
bv=w*A
bR=bv*bd
if _[4]and b[15][_[4]][23]&8>0 then
for h=0,T-1,A do
j=l+h*w*q
if a<=ar[aX(am(j),0,I-1)]then
for i=0,ac-1,A do
M=e[7+i+h*ac]if M~=0 then
bp=bp%50+1
at(0,0,0,p(75*b[13][2][bp],255))aH(j,D+i*ay,bv,bR)end
end
end
end
else
for h=0,T-1,A do
j=l+h*w*q
if a<=ar[aX(am(j),0,I-1)]then
for i=0,ac-1,A do
M=e[7+i+h*ac]if M~=0 then
k=b[20][M]at(k[1]*y,k[2]*y,k[3]*y)aH(j,D+i*ay,bv,bR)end
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
end
end
end
