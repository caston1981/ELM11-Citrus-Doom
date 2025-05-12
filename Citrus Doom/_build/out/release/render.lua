cR=""

U=180
bZ=screen
aX=ipairs
bL=table
ca=input
x=math
B=x.max
n=x.min
z=x.abs
ag=x.floor
ceil=x.ceil
sqrt=x.sqrt
H=ca.getNumber
bk=ca.getBool
pi=x.pi
P=false
N=true
bv=string
function bw(b,k)return b[1]*k[2]-b[2]*k[1]end
function sub(b,k)return{(b[1]-k[1]),(b[2]-k[2])}end
function bD(b)return((b+U)%360)-U end
function sin(b)return x.sin(b/U*pi)end
function cos(b)return x.cos(b/U*pi)end
function tan(b)return x.tan(b/U*pi)end
function cQ(b)return x.atan(b)*U/pi end
function ba(b)return x.atan(b[2],b[1])*U/pi end
function bz(b,k,_)return n(B(k,b),_)end
function az(b)return ag(b+.5)end
function bu(b,k)return sqrt(((b[1]-k[1])^2)+((b[2]-k[2])^2))end
function bA(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
c={}bC=1
ay=3
aV=P
aA=N
f={{0,0},0,0}K=288
D=K//2
al=128
t=al//2
aQ={}aJ=400
bH=100
cP=0
at={}aM=32768
bF=3002
bs=0
aI=0
b_=0
bg=1.2
O=52
L=tan(O)aU=t*bg*K/al/L
ae=1
c_={}for a=-D,D do c_[a]=ba({1,a/D*L})end
function bi(a)if a<aM then
local v,bj=c[7][a]bj=0<bw({v[3],v[4]},sub(f[1],v))and 8 or 7
bi(v[bj])bi(v[15-bj])else
aE[#aE+1]=a-aM
end
end
function aR(a,b)if a<aM then
v=c[7][a]return aR(v[0<bw({v[3],v[4]},sub(b,v))and 8 or 7],b)else
return a-aM
end
end
function br(b)v=c[5][c[6][b][2]]return c[3][c[2][v[4]][v[5]+6]][6]end
function onTick()by=0
for l=1,3 do
if bk(9)and(not aV)or not c[21]then
bf=property.getText(bC..cR)if bf~=cR then
a=1
C=cR
_=bv.sub(bf,a,a)while _~=cRdo
k=bv.byte(_)if k>64 or _==cRthen
C=(C..(k-65))+0
if ae==1then
ci=C
if c[C]==cO then
c[C]={}end
ae=2
elseif ae==2then
cz=C
au=0
ae=3
elseif ae==3then
bc=C
ae=4
else
if au==0then
au=cz
bc=bc-1
am={}c[ci][#c[ci]+1]=am
end
am[#am+1]=C
au=au-1
if B(au,bc)==0then
ae=1
end
end
C=cR
else
C=C.._
end
a=a+1
_=bv.sub(bf,a,a)end
bC=bC+1
else
aV=N
end
end
end
if aV then
if H(9)>0 then
aA=N
ay=H(9)end
if bH>0 and not aA then
an={}at[#at+1]=an
ax=5
_=H(ax)while _~=0 do
Z={}an[#an+1]=Z
for a=0,8 do
Z[a+1]=H(ax+a)end
ax=ax+9
_=H(ax)end
end
if bk(1)then
bO=0
bq=H(1)bH=H(3)b_=b_+1
cd=b_//10
if aA then
for a=1,10 do
c[a]=c[a+10*ay]end
u=c[1]M=c[8]for a=1,#M do
M[a][5]=M[a][5]/255
end
ay=ay+1
end
if H(2)>0 then
_=c[2][H(2)]if _ then
b=_[4]if b==3008 then
cc=_[5]==1
elseif b>3004 then
aJ=B(aJ+3*(_[4]-3006),1)elseif b>3000 then
bF=_[4]end
bO=H(2)end
end
if bk(3)and bq~=1 and bq~=3 then
ap=.1
aI=bq==5 and 5 or 3
else
aI=aI-1
if aI<1then
ap=0
end
end
for a=1,#at do
an=at[a]for l=1,#an do
Z=an[l]_=Z[1]if _>(2^15)then
_=M[_-(2^15)]_[1]=Z[2]_[2]=Z[3]elseif _<0 then
while-_>#u do
u[#u+1]=P
end
bL.remove(u,-_)else
if not u[_]then
u[_]={}end
_=u[_]for i=1,8 do
_[c[19][1][i]]=Z[i+1]end
_[15]=0
_[7]=aR(#c[7],_)_[8]=br(_[7])end
end
end
at={}for a=1,#c[6]do
aQ[a]={}end
for a=1,#u do
_=u[a]if _ then
if aA then
_[7]=aR(#c[7],_)_[8]=br(_[7])_[9]=M[_[8]][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
if _[4]==1 then
cJ=a
end
end
bx=0
for l,d in aX({1,2,9})do
_[d]=_[d]+_[d+10]bx=bx+_[d+10]end
if bx~=0then
_[7]=aR(#c[7],_)_[8]=br(_[7])end
_[15]=_[15]+1
_[20]=bu(_,f[1])R=c[16][_[6]]if R~=nil then
if _[15]>=R[2]and R[2]~=-1 then
_[6]=R[4]_[15]=0
end
end
aQ[_[7]][#aQ[_[7]]+1]=a
end
end
aA=P
_=u[cJ]f[1]={_[1],_[2]}f[2]=_[9]+41
f[3]=_[3]aE={}bi(#c[7])aW={}q={}aZ={}aP={}aa={}ac={}aH={}bB=K
for a=0,K-1 do
aW[a],aa[a],ac[a]=#c[6]+2,t+1,-t
end
a=1
while a<=#aE and bB>0 do
_=c[6][aE[a]]aZ[a]={}aP[a]={}q[a]={}aH[a]=aQ[aE[a]]bL.sort(aH[a],function(b,k)return u[b][20]>u[k][20]end)for l=_[2],_[1]+_[2]-1 do
V=c[5][l]I=c[2][V[4]]cg,bT=c[4][V[1]],c[4][V[2]]aT,bU=sub(cg,f[1]),sub(bT,f[1])bX=ba(aT)G,aN=bD(bX-f[3]),bD(ba(bU)-f[3])if z(G)<90 or z(aN)<90 then
af,ai=bz(G,-O,O),bz(aN,-O,O)if z(G)>=90 or z(aN)>=90 then
bW=bw(aT,bU)if z(G)>=90 then
if bW>0 then af=-O else af=O end
else
if bW<0 then ai=-O else ai=O end
end
end
p,m=az(tan(af)/L*D),az(tan(ai)/L*D)if p~=m then
r,aC=bu(f[1],cg),bu(f[1],bT)aO=V[3]+90
bS=aO-bX
cB=r*sin(bS)aL=(r*cos(bS))if G~=af then
r=aL/cos(aO-(af+f[3]))end
if aN~=ai then
aC=aL/cos(aO-(ai+f[3]))end
r,aC=r*cos(af),aC*cos(ai)i=V[5]+6
ct=(p>m)if ct and I[i]~=0 then
aF=I[3]&4>0
if aF then
ad,Y=M[c[3][I[6]][6]],M[c[3][I[7]][6]]end
ak=c[3][I[i]]cv={ak[3],ak[4],ak[5]}F,bI,cl=M[ak[6]]for j,d in aX(cv)do
ar=d>0
aB=N
if(ar or(j==3 and not(bI and cl)))and(j==3 or aF)then
bQ=P
bV=0
if j<3 then
bQ=j==1 and B(ad[4],Y[4])==0
A,w=ad[3-j],Y[3-j]aB=(A<w)~=(j==2)~=(i==6)and A~=w and ad~=Y
A,w=n(A,w),B(A,w)if aB then
if j==1then
bI=N
else
cl=N
bV=I[3]&16>0 and B(ad[2],Y[2])-w or 0
end
end
else
if aF then
A,w=B(ad[1],Y[1]),n(ad[2],Y[2])aB=ad~=Y
else
A,w=F[1],F[2]end
end
A,w=A-f[2],w-f[2]bP,bG=A*aU,w*aU
if(aB or ar)and not bQ then
bh=V[6]-ak[1]if I[4]==48 then
bh=bh-b_
end
cF,cp=bP/r,bG/r
cw,cy=bP/aC,bG/aC
ck=0
aw=P
if ar then
_=c[21][d][4]if(V[4]==bO or bF==I[4])and _>0then
d=_
end
aD=c[21][d][3]s=1
if(j==3 and I[3]&16>0)or(j==1 and I[3]&8==0)then
s=-1
end
end
for i=p,m,-1 do
cK=c_[i]aG=(aO-f[3])-cK
g=D-i
bY=P
if g>=0 and g<=K-1 then
if a<aW[g]then
bb=(i-p)/(m-p)J,E=(cF*(1-bb)+cw*bb),(cp*(1-bb)+cy*bb)if z(E+J)-(E-J)<al then
if ar then
if J~=E then
bY=N
cj=aL*tan(aG)Q=n(((z(cj)+z(aL))//aJ)+1,4)bm=n(bA(ag(Q/cos(aG))),16)Q=bA(Q)bE=ag((B(cj-cB,0)-bh)/(aD*bm))*bm
bK={g,t-J,t-E,d,bE,w-A,F[5],ak[2]+bV,N,aD*Q,Q,s,not aw,j==3 and aF}if bE>ck or(not aw)or i==m then
ck=bE-1+bm
aw=N
q[a][#q[a]+1]=bK
end
cE=bK
end
end
if aB then
if j~=2 then
if E<aa[g]then
aP[a][#aP[a]+1]={g,B(E,ac[g]),aa[g],F}end
if j==3then ab=E else ab=J end
if aa[g]>ab then aa[g]=ab end
end
if j~=1 then
if J>ac[g]then
aZ[a][#aZ[a]+1]={g,ac[g],n(J,aa[g]),F}end
if j==3then ab=J else ab=E end
if ac[g]<ab then ac[g]=ab end
end
if(aa[g]<=ac[g])or(j==3 and(not aF)and ar)then
aW[g]=a
bB=bB-1
end
end
end
end
end
if(not bY)and aw then
aw=P
q[a][#q[a]+1]=cE
q[a][#q[a]][9]=P
end
end
if#q[a]>0 then
q[a][#q[a]][9]=P
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
function onDraw()aS=bZ
local bR,bt,ah,cN=aS.drawTriangleF,aS.drawRectF,aS.setColor,aS.drawText
by=by+1
cL={aZ,aP}if by<=1 then
if aV then
e=c[24][c[19][8][ay-3]]W,ao=e[1],e[2]y=K/ceil(W*L)cm=y*1
for a=0,ceil(W*L),1 do
p=(W/2-a-1+f[3]/90*W)%W
m=(p%1-1)*y
p=ag(p)*ao
for l=0,ao-1,1 do
T=e[5+l+p]h=c[20][T]ah(h[1],h[2],h[3])bt(a*y+m,l*y,cm,cm)end
end
for a=#q,1,-1 do
for l=1,#q[a]do
d=q[a][l]if d[9]or d[13]then
if d[9]then
S=q[a][l+1]else
S=d
end
e=c[21][d[4]]e=c[21][d[4]+(cd%e[5])]s=d[12]X=n(s,0)g=d[1]m=S[1]cb=d[2-X]cG=S[2-X]i=d[3+X]bo=S[3+X]if not S[9]then m=m+1 end
o=n(d[7]+ap,1)^2.2
cM=s*(d[2]-d[3])*d[10]/d[6]cI=s*(S[2]-S[3])*d[10]/S[6]am=s>0 and n or B
bd=0
while i*s<cb*s and(bd<e[2]or not d[14])do
ce=am(i+cM,cb)bl=am(bo+cI,cG)T=e[7+((X*d[11]+d[8]//e[3])%e[2])+e[2]*(d[5]%e[1])]h=c[20][T]if h then
ah(h[1]*o,h[2]*o,h[3]*o)bR(g,i,g,ce,m,bl)bR(g,i,m,bo,m,bl)end
i=ce
bo=bl
X=X+s
bd=bd+d[11]end
end
end
for b=1,2 do
_=cL[b]bM={}av,as,bp=al,-al
for l,d in aX(_[a])do
av=n(av,d[2])as=B(as,d[3])bp=d
e=c[22][d[4][b+2]]if e and not cc then
o=n(d[4][5]+ap,1)^2.2
h=c[20][e[5]]ah(h[1]*o,h[2]*o,h[3]*o)bZ.drawLine(d[1],t-d[2],d[1],t-d[3]-1.5)end
end
if bp and cc then
F=bp[4]cH=(F[b]-f[2])bn=cos(f[3])be=sin(f[3])for aq=ag(av+t),ceil(as+t)do
aj=aU*cH/(t-aq)co=bn*aj-f[1][1]cf=be*aj-f[1][2]ch=-be*aj+co
bN=bn*aj+cf
cx=be*aj+co
cs=-bn*aj+cf
cA=(cx-ch)/K
cq=(cs-bN)/K
bM[aq]={cA,cq,ch,bN}end
for l,d in aX(_[a])do
if F[b+2]~=0 then
o=n(F[5]+ap,1)^2.2
k=F[b+2]e=c[22][k]e=c[22][k+(cd%e[4])]g=d[1]bJ=D-(D-g)*L
av,as=ag(d[2]+t),ceil(d[3]+t)aD=e[3]for aq=av,as do
aK=bM[aq]cu=(aK[3]+aK[1]*bJ)//aD
cD=(aK[4]+aK[2]*bJ)//aD
T=6+(cD%e[1])+e[1]*(cu%e[2])h=c[20][e[T]]if h then
ah(h[1]*o,h[2]*o,h[3]*o)bt(g,-aq+al,1,1)end
end
end
end
end
end
for l=1,#aH[a]do
_=u[aH[a][l]]if _[6]~=0 then
aT=sub(_,f[1])r=_[20]if r>1 then
G=bD(ba(aT)-f[3])r=r*cos(G)if z(G)<90 then
p=D-az(tan(G)/L*D)aG=az((U+G+f[3]-_[3])/360*8)R=c[16][_[6]][1]if R~=0 and _[6]~=1 then
e=c[17][z(R)][aG%8+1]s=e<0 and-1 or 1
e=z(e)if e>0 then
e=c[23][e]W,ao=e[1],e[2]Q=n(bA(r//aJ+1),8)y=D/(L*r)aY=y*bg
J=t+(f[2]-_[9])/r*aU
E=J-e[5]*aY
m=p-s*e[4]*y
y,aY=y*e[3],aY*e[3]o=R>0 and n(M[_[8]][5]+ap,1)^2.2 or 1
cn=y*Q
cC=cn*bg
cr=_[4]and c[15][_[4]][23]&8>0
for i=0,W-1,Q do
p=m+i*y*s
if a<=aW[bz(az(p),0,K-1)]then
for j=0,ao-1,Q do
T=e[7+j+i*ao]if T~=0 then
if cr then
bs=bs%50+1
ah(0,0,0,n(75*c[13][2][bs],255))else
h=c[20][T]ah(h[1]*o,h[2]*o,h[3]*o)end
bt(p,E+j*aY,cn,cC)end
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
