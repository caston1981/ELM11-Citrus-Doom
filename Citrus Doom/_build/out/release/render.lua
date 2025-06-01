cT=""

Q=180
cg=screen
aG=ipairs
cs=table
bO=input
w=math
z=w.max
x=w.min
D=w.abs
ah=w.floor
ceil=w.ceil
sqrt=w.sqrt
F=bO.getNumber
bz=bO.getBool
pi=w.pi
O=false
S=true
bB=string
function br(b,n)return b[1]*n[2]-b[2]*n[1]end
function sub(b,n)return{(b[1]-n[1]),(b[2]-n[2])}end
function bk(b)return((b+Q)%360)-Q end
function sin(b)return w.sin(b/Q*pi)end
function cos(b)return w.cos(b/Q*pi)end
function tan(b)return w.tan(b/Q*pi)end
function cR(b)return w.atan(b)*Q/pi end
function aO(b)return w.atan(b[2],b[1])*Q/pi end
function bf(b,n,_)return x(z(n,b),_)end
function aq(b)return ah(b+.5)end
function bn(b,n)return sqrt(((b[1]-n[1])^2)+((b[2]-n[2])^2))end
function bI(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
function aK(b)q=x(b/255+bP,1)^2.2 end
c={}bs=1
ay=3
aQ=O
aw=S
f={{0,0},0,0}N=288
B=N//2
ad=128
t=ad//2
aY={}aH=400
cf=200
ca=100
cS=0
al={}aL=32768
cj=3002
bt=0
aX=0
b_=0
bh=1.2
K=52
M=tan(K)aM=t*bh*N/ad/M
ab=1
bC={}for a=-B,B do bC[a]=aO({1,a/B*M})end
function bl(a)if a<aL then
local r,bb=c[7][a]bb=0<br({r[3],r[4]},sub(f[1],r))and 8 or 7
bl(r[bb])bl(r[15-bb])else
at[#at+1]=a-aL
end
end
function aP(a,b)if a<aL then
r=c[7][a]return aP(r[0<br({r[3],r[4]},sub(b,r))and 8 or 7],b)else
return a-aL
end
end
function be(b)r=c[5][c[6][b][2]]return aD[c[3][c[2][r[4]][r[5]+6]][6]]end
function onTick()bv=0
for k=1,3 do
if bz(9)and(not aQ)or not c[21]then
ba=property.getText(bs)a=1
C=cT
_=bB.sub(ba,a,a)while _~=cTdo
bM=bB.byte(_)if bM>64then
C=(C..bM-65)+0
if ab==1then
ck=C
c[C]=c[C]or{}elseif ab==2then
cA=C
ap=0
elseif ab==3then
bd=C
else
if ap==0then
ap=cA
bd=bd-1
by={}c[ck][#c[ck]+1]=by
end
by[#by+1]=C
ap=ap-1
ab=z(ap,bd)>0 and ab-1 or 0
end
ab=ab+1
C=cT
else
C=C.._
end
a=a+1
_=bB.sub(ba,a,a)end
bs=bs+1
aQ=ba==cT
end
end
if aQ then
if F(9)>0 then
aw=S
ay=F(9)end
if ca>0 and not aw then
ae={}al[#al+1]=ae
ao=5
_=F(ao)while _~=0 do
ak={}ae[#ae+1]=ak
for a=0,8 do
ak[a+1]=F(ao+a)end
ao=ao+9
_=F(ao)end
end
if bz(1)then
bY=0
bo=F(1)ca=F(3)b_=b_+1
bV=b_//10
if aw then
for a=1,10 do
c[a]=c[a+10*ay]end
s=c[1]aD=c[8]ay=ay+1
end
if F(2)>0 then
_=c[2][F(2)]if _ then
b=_[4]if b>0 then
if b==3008 then
cn=_[5]==1
elseif b>3004 then
aH=z(aH+3*(_[4]-3006),1)cf=aH/2
elseif b>3000 then
cj=_[4]end
bY=F(2)if b<3000 and c[9][_[5]][7]==0then
_[8]=1
end
end
end
end
if bz(3)and bo~=1 and bo~=3 then
bP=.1
aX=bo==5 and 5 or 3
else
aX=aX-1
if aX<1then
bP=0
end
end
for a=1,#al do
ae=al[a]for k=1,#ae do
ak=ae[k]_=ak[1]if _>(2^15)then
_=aD[_-(2^15)]for h=1,6 do
_[h]=ak[h+1]end
elseif _<0 then
while-_>#s do
s[#s+1]=O
end
cs.remove(s,-_)else
if not s[_]then
s[_]={}end
_=s[_]for h=1,8 do
_[c[19][1][h]]=ak[h+1]end
_[15]=0
_[7]=aP(#c[7],_)_[8]=be(_[7])end
end
end
al={}for a=1,#c[6]do
aY[a]={}end
for a=1,#s do
_=s[a]if _ then
if aw then
_[7]=aP(#c[7],_)_[8]=be(_[7])_[9]=_[8][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
end
bj=0
for k,d in aG({1,2,9})do
_[d]=_[d]+_[d+10]bj=bj+_[d+10]end
if bj~=0then
_[7]=aP(#c[7],_)_[8]=be(_[7])end
_[15]=_[15]+1
_[20]=bn(_,f[1])L=c[16][_[6]]if L~=nil then
if L[5]>0 then
_[9]=_[8][1]end
if _[15]>=L[2]and L[2]~=-1 then
_[6]=L[4]_[15]=0
end
end
aY[_[7]][#aY[_[7]]+1]=a
end
end
aw=O
_=s[1]f[1]={_[1],_[2]}f[2]=_[9]+41
f[3]=_[3]at={}bl(#c[7])aT={}o={}aW={}aI={}aa={}Y={}aF={}bu=N
for a=0,N-1 do
aT[a],aa[a],Y[a]=#c[6]+2,t+1,-t
end
a=1
while a<=#at and bu>0 do
_=c[6][at[a]]aW[a]={}aI[a]={}o[a]={}aF[a]=aY[at[a]]cs.sort(aF[a],function(b,n)return s[b][20]>s[n][20]end)for k=_[2],_[1]+_[2]-1 do
U=c[5][k]A=c[2][U[4]]bK,bW=c[4][U[1]],c[4][U[2]]aV,bU=sub(bK,f[1]),sub(bW,f[1])bZ=aO(aV)H,aJ=bk(bZ-f[3]),bk(aO(bU)-f[3])if D(H)<90 or D(aJ)<90 then
ac,af=bf(H,-K,K),bf(aJ,-K,K)if D(H)>=90 or D(aJ)>=90 then
bJ=br(aV,bU)if D(H)>=90 then
if bJ>0 then ac=-K else ac=K end
else
if bJ<0 then af=-K else af=K end
end
end
l,m=aq(tan(ac)/M*B),aq(tan(af)/M*B)if l~=m then
p,aC=bn(f[1],bK),bn(f[1],bW)aE=U[3]+90
cd=aE-bZ
cy=p*sin(cd)aN=(p*cos(cd))if H~=ac then
p=aN/cos(aE-(ac+f[3]))end
if aJ~=af then
aC=aN/cos(aE-(af+f[3]))end
p,aC=p*cos(ac),aC*cos(af)h=U[5]+6
cP=(l>m)if cP and A[h]~=0 then
au=A[3]&4>0
if au then
Z,V=aD[c[3][A[6]][6]],aD[c[3][A[7]][6]]end
ai=c[3][A[h]]cv={ai[3],ai[4],ai[5]}I,cm,bG=aD[ai[6]]for j,d in aG(cv)do
ax=d>0
aA=S
if(ax or(j==3 and not(cm and bG)))and(j==3 or au)then
co=O
bR=0
if j<3 then
co=j==1 and z(Z[4],V[4])==0
y,v=Z[3-j],V[3-j]aA=(y<v)~=(j==2)~=(h==6)and y~=v and Z~=V
y,v=x(y,v),z(y,v)if aA then
if j==1then
cm=S
else
bG=S
bR=A[3]&16>0 and z(Z[2],V[2])-v or 0
end
end
else
if au then
y,v=z(Z[1],V[1]),x(Z[2],V[2])aA=Z~=V
else
y,v=I[1],I[2]end
end
y,v=y-f[2],v-f[2]bN,cc=y*aM,v*aM
if(aA or ax)and not co then
bA=U[6]-ai[1]if A[4]==48 then
bA=bA-b_
end
cN,cM=bN/p,cc/p
cu,cE=bN/aC,cc/aC
bF=0
az=O
if ax then
_=c[21][d][4]if(U[4]==bY or cj==A[4]or A[8])and _>0then
d=_
end
as=c[21][d][3]u=1
if(j==3 and A[3]&16>0)or(j==1 and A[3]&8==0)then
u=-1
end
end
for h=l,m,-1 do
cH=bC[h]bx=(aE-f[3])-cH
g=B-h
bQ=O
if g>=0 and g<=N-1 then
if a<aT[g]then
aR=(h-l)/(m-l)J,G=(cN*(1-aR)+cu*aR),(cM*(1-aR)+cE*aR)if D(G+J)-(G-J)<ad then
if ax then
if J~=G then
bQ=S
c_=aN*tan(bx)aB=bI(x(((D(c_)+D(aN))//cf)+1,16))bL=ah((z(c_-cy,0)-bA)/(as*aB))cr=bL*aB
bX={g,t-J,t-G,d,bL,v-y,I[5],ai[2]+bR,S,as*aB,aB,u,not az,j==3 and au}if cr>bF or(not az)or h==m then
bF=cr-1+aB
az=S
o[a][#o[a]+1]=bX
end
cK=bX
end
end
if aA then
if j~=2 then
if G<aa[g]then
aI[a][#aI[a]+1]={g,z(G,Y[g]),aa[g],I}end
if j==3then T=G else T=J end
if aa[g]>T then aa[g]=T end
end
if j~=1 then
if J>Y[g]then
aW[a][#aW[a]+1]={g,Y[g],x(J,aa[g]),I}end
if j==3then T=J else T=G end
if Y[g]<T then Y[g]=T end
end
if(aa[g]<=Y[g])or(j==3 and(not au)and ax)then
aT[g]=a
bu=bu-1
end
end
end
end
end
if(not bQ)and az then
az=O
o[a][#o[a]+1]=cK
o[a][#o[a]][9]=O
end
end
if#o[a]>0 then
o[a][#o[a]][9]=O
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
function onDraw()aZ=cg
local bS,bm,aj,cQ=aZ.drawTriangleF,aZ.drawRectF,aZ.setColor,aZ.drawText
cB={aW,aI}if aQ then
e=c[24][c[19][8][ay-3]]W,ar=e[1],e[2]E=N/ceil(W*M)ch=E*1
for a=0,ceil(W*M),1 do
l=(W/2-a-1+f[3]/90*W)%W
m=(l%1-1)*E
l=ah(l)*ar
for k=0,ar-1,1 do
P=e[5+k+l]i=c[20][P]aj(i[1],i[2],i[3])bm(a*E+m,k*E,ch,ch)end
end
for a=#o,1,-1 do
for k=1,#o[a]do
d=o[a][k]if d[9]or d[13]then
if d[9]then
R=o[a][k+1]else
R=d
end
e=c[21][d[4]]e=c[21][d[4]+(bV%e[5])*c[19][3][2]+c[19][12][d[11]]]u=d[12]X=x(u,0)g=d[1]m=R[1]bE=d[2-X]cz=R[2-X]h=d[3+X]bi=R[3+X]if not R[9]then m=m+1 end
aK(d[7])cC=u*(d[2]-d[3])*e[3]/d[6]cF=u*(R[2]-R[3])*e[3]/R[6]ci=u>0 and x or z
bw=0
while h*u<bE*u and(bw<e[2]or not d[14])do
bT=ci(h+cC,bE)bq=ci(bi+cF,cz)P=e[7+((X+d[8]//e[3])%e[2])+e[2]*((d[5])%e[1])]i=c[20][P]if i then
aj(i[1]*q,i[2]*q,i[3]*q)bS(g,h,g,bT,m,bq)bS(g,h,m,bi,m,bq)end
h=bT
bi=bq
X=X+u
bw=bw+1
end
end
end
for b=1,2 do
_=cB[b]bH={}av,am,bg=ad,-ad
for k,d in aG(_[a])do
av=x(av,d[2])am=z(am,d[3])bg=d
e=c[22][d[4][b+2]]if e and not cn then
aK(d[4][5])i=c[20][e[5]]aj(i[1]*q,i[2]*q,i[3]*q)cg.drawLine(d[1],t-d[2],d[1],ah(t-d[3]-1))end
end
if bg and cn then
I=bg[4]ct=(I[b]-f[2])bp=cos(f[3])bc=sin(f[3])for an=ah(av+t),ceil(am+t)do
ag=aM*ct/(t-an)cb=bp*ag-f[1][1]bD=bc*ag-f[1][2]cl=-bc*ag+cb
cp=bp*ag+bD
cO=bc*ag+cb
cJ=-bp*ag+bD
cL=(cO-cl)/N
cI=(cJ-cp)/N
bH[an]={cL,cI,cl,cp}end
for k,d in aG(_[a])do
if I[b+2]~=0 then
g=d[1]aK(I[5])n=I[b+2]e=c[22][n]e=c[22][n+(bV%e[4])]cq=B-(B-g)*M
av,am=ah(d[2]+t),ceil(d[3]+t)as=e[3]for an=av,am do
aU=bH[an]cG=(aU[3]+aU[1]*cq)//as
cD=(aU[4]+aU[2]*cq)//as
P=6+(cD%e[1])+e[1]*(cG%e[2])i=c[20][e[P]]if i then
aj(i[1]*q,i[2]*q,i[3]*q)bm(g,-an+ad,1,1)end
end
end
end
end
end
for k=1,#aF[a]do
_=s[aF[a][k]]if _[6]~=0 then
aV=sub(_,f[1])p=_[20]if p>1 then
H=bk(aO(aV)-f[3])p=p*cos(H)if D(H)<90 then
l=B-aq(tan(H)/M*B)bx=aq((Q+H+f[3]-_[3]+bv*4)/360*8)L=c[16][_[6]][1]if L~=0 and _[6]~=1 then
e=c[17][D(L)][bx%8+1]u=e<0 and-1 or 1
e=D(e)if e>0 then
e=c[23][e+c[19][12][x(bI(p//aH+1),8)]]W,ar=e[1],e[2]E=B/(M*p)aS=E*bh
J=t+(f[2]-_[9])/p*aM
G=J-e[5]*aS
m=l-u*e[4]*E
E,aS=E*e[3],aS*e[3]aK(_[8][5])q=L>0 and q or 1
ce=E
cw=ce*bh
cx=_[4]and c[15][_[4]][23]&8>0
for h=0,W-1 do
l=m+h*E*u
if a<=aT[bf(aq(l),0,N-1)]then
for j=0,ar-1 do
P=e[7+j+h*ar]if P~=0 then
if cx then
bt=bt%50+1
aj(0,0,0,x(75*c[13][2][bt],255))else
i=c[20][P]aj(i[1]*q,i[2]*q,i[3]*q)end
bm(l,G+j*aS,ce,cw)end
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
bv=bv+1
end
