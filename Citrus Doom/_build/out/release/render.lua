cS=""

P=180
bK=screen
aR=ipairs
cc=table
bH=input
x=math
C=x.max
v=x.min
B=x.abs
Y=x.floor
ceil=x.ceil
sqrt=x.sqrt
F=bH.getNumber
bl=bH.getBool
pi=x.pi
M=false
T=true
bv=string
function bk(b,n)return b[1]*n[2]-b[2]*n[1]end
function sub(b,n)return{(b[1]-n[1]),(b[2]-n[2])}end
function by(b)return((b+P)%360)-P end
function sin(b)return x.sin(b/P*pi)end
function cos(b)return x.cos(b/P*pi)end
function tan(b)return x.tan(b/P*pi)end
function cR(b)return x.atan(b)*P/pi end
function aF(b)return x.atan(b[2],b[1])*P/pi end
function bh(b,n,_)return v(C(n,b),_)end
function aB(b)return Y(b+.5)end
function bs(b,n)return sqrt(((b[1]-n[1])^2)+((b[2]-n[2])^2))end
function bC(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
function aJ(b)q=v(b/255+bP,1)^2.2 end
c={}bD=1
as=3
aO=M
au=T
f={{0,0},0,0}L=288
A=L//2
ae=128
s=ae//2
aQ={}aU=400
bL=100
cQ=0
ao={}aS=32768
bT=3002
bj=0
b_=0
aZ=0
bB=1.2
N=52
O=tan(N)aK=s*bB*L/ae/O
U=1
bR={}for a=-A,A do bR[a]=aF({1,a/A*O})end
function bt(a)if a<aS then
local u,bw=c[7][a]bw=0<bk({u[3],u[4]},sub(f[1],u))and 8 or 7
bt(u[bw])bt(u[15-bw])else
av[#av+1]=a-aS
end
end
function aL(a,b)if a<aS then
u=c[7][a]return aL(u[0<bk({u[3],u[4]},sub(b,u))and 8 or 7],b)else
return a-aS
end
end
function br(b)u=c[5][c[6][b][2]]return c[3][c[2][u[4]][u[5]+6]][6]end
function onTick()bb=0
for m=1,3 do
if bl(9)and(not aO)or not c[21]then
bq=property.getText(bD)a=1
z=cS
_=bv.sub(bq,a,a)while _~=cSdo
cr=bv.byte(_)if cr>64then
z=(z..cr-65)+0
if U==1then
bQ=z
c[z]=c[z]or{}elseif U==2then
cy=z
aw=0
elseif U==3then
be=z
else
if aw==0then
aw=cy
be=be-1
bd={}c[bQ][#c[bQ]+1]=bd
end
bd[#bd+1]=z
aw=aw-1
U=C(aw,be)>0 and U-1 or 0
end
U=U+1
z=cS
else
z=z.._
end
a=a+1
_=bv.sub(bq,a,a)end
bD=bD+1
aO=bq==cS
end
end
if aO then
if F(9)>0 then
au=T
as=F(9)end
if bL>0 and not au then
ag={}ao[#ao+1]=ag
aC=5
_=F(aC)while _~=0 do
ak={}ag[#ag+1]=ak
for a=0,8 do
ak[a+1]=F(aC+a)end
aC=aC+9
_=F(aC)end
end
if bl(1)then
cn=0
bc=F(1)bL=F(3)aZ=aZ+1
cp=aZ//10
if au then
for a=1,10 do
c[a]=c[a+10*as]end
t=c[1]ai=c[8]as=as+1
end
if F(2)>0 then
_=c[2][F(2)]if _ then
b=_[4]if b>0 then
if b==3008 then
co=_[5]==1
elseif b>3004 then
aU=C(aU+3*(_[4]-3006),1)elseif b>3000 then
bT=_[4]end
cn=F(2)if b<3000 and c[9][_[5]][7]==0then
_[8]=1
end
end
end
end
if bl(3)and bc~=1 and bc~=3 then
bP=.1
b_=bc==5 and 5 or 3
else
b_=b_-1
if b_<1then
bP=0
end
end
for a=1,#ao do
ag=ao[a]for m=1,#ag do
ak=ag[m]_=ak[1]if _>(2^15)then
_=ai[_-(2^15)]for h=1,6 do
_[h]=ak[h+1]end
elseif _<0 then
while-_>#t do
t[#t+1]=M
end
cc.remove(t,-_)else
if not t[_]then
t[_]={}end
_=t[_]for h=1,8 do
_[c[19][1][h]]=ak[h+1]end
_[15]=0
_[7]=aL(#c[7],_)_[8]=br(_[7])end
end
end
ao={}for a=1,#c[6]do
aQ[a]={}end
for a=1,#t do
_=t[a]if _ then
if au then
_[7]=aL(#c[7],_)_[8]=br(_[7])_[9]=ai[_[8]][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
end
bo=0
for m,d in aR({1,2,9})do
_[d]=_[d]+_[d+10]bo=bo+_[d+10]end
if bo~=0then
_[7]=aL(#c[7],_)_[8]=br(_[7])end
_[15]=_[15]+1
_[20]=bs(_,f[1])R=c[16][_[6]]if R~=nil then
if _[15]>=R[2]and R[2]~=-1 then
_[6]=R[4]_[15]=0
end
end
aQ[_[7]][#aQ[_[7]]+1]=a
end
end
au=M
_=t[1]f[1]={_[1],_[2]}f[2]=_[9]+41
f[3]=_[3]av={}bt(#c[7])aE={}p={}aH={}aX={}W={}Z={}aP={}bi=L
for a=0,L-1 do
aE[a],W[a],Z[a]=#c[6]+2,s+1,-s
end
a=1
while a<=#av and bi>0 do
_=c[6][av[a]]aH[a]={}aX[a]={}p[a]={}aP[a]=aQ[av[a]]cc.sort(aP[a],function(b,n)return t[b][20]>t[n][20]end)for m=_[2],_[1]+_[2]-1 do
aa=c[5][m]E=c[2][aa[4]]cm,cd=c[4][aa[1]],c[4][aa[2]]aV,bM=sub(cm,f[1]),sub(cd,f[1])cf=aF(aV)H,ba=by(cf-f[3]),by(aF(bM)-f[3])if B(H)<90 or B(ba)<90 then
al,af=bh(H,-N,N),bh(ba,-N,N)if B(H)>=90 or B(ba)>=90 then
bI=bk(aV,bM)if B(H)>=90 then
if bI>0 then al=-N else al=N end
else
if bI<0 then af=-N else af=N end
end
end
k,l=aB(tan(al)/O*A),aB(tan(af)/O*A)if k~=l then
o,az=bs(f[1],cm),bs(f[1],cd)aT=aa[3]+90
bG=aT-cf
cN=o*sin(bG)aM=(o*cos(bG))if H~=al then
o=aM/cos(aT-(al+f[3]))end
if ba~=af then
az=aM/cos(aT-(af+f[3]))end
o,az=o*cos(al),az*cos(af)h=aa[5]+6
cw=(k>l)if cw and E[h]~=0 then
ay=E[3]&4>0
if ay then
ac,ab=ai[c[3][E[6]][6]],ai[c[3][E[7]][6]]end
aj=c[3][E[h]]cO={aj[3],aj[4],aj[5]}I,ch,bF=ai[aj[6]]for j,d in aR(cO)do
an=d>0
at=T
if(an or(j==3 and not(ch and bF)))and(j==3 or ay)then
cg=M
bY=0
if j<3 then
cg=j==1 and C(ac[4],ab[4])==0
D,w=ac[3-j],ab[3-j]at=(D<w)~=(j==2)~=(h==6)and D~=w and ac~=ab
D,w=v(D,w),C(D,w)if at then
if j==1then
ch=T
else
bF=T
bY=E[3]&16>0 and C(ac[2],ab[2])-w or 0
end
end
else
if ay then
D,w=C(ac[1],ab[1]),v(ac[2],ab[2])at=ac~=ab
else
D,w=I[1],I[2]end
end
D,w=D-f[2],w-f[2]bO,bV=D*aK,w*aK
if(at or an)and not cg then
bA=aa[6]-aj[1]if E[4]==48 then
bA=bA-aZ
end
cK,cs=bO/o,bV/o
cz,cG=bO/az,bV/az
bW=0
ap=M
if an then
_=c[21][d][4]if(aa[4]==cn or bT==E[4]or E[8])and _>0then
d=_
end
ar=c[21][d][3]r=1
if(j==3 and E[3]&16>0)or(j==1 and E[3]&8==0)then
r=-1
end
end
for h=k,l,-1 do
cH=bR[h]aI=(aT-f[3])-cH
g=A-h
cq=M
if g>=0 and g<=L-1 then
if a<aE[g]then
aG=(h-k)/(l-k)G,J=(cK*(1-aG)+cz*aG),(cs*(1-aG)+cG*aG)if B(J+G)-(J-G)<ae then
if an then
if G~=J then
cq=T
ca=aM*tan(aI)K=v(((B(ca)+B(aM))//aU)+1,4)bE=v(bC(Y(K/cos(aI))),16)K=bC(K)bn=Y((C(ca-cN,0)-bA)/(ar*bE))*bE
ck={g,s-G,s-J,d,bn,w-D,I[5],aj[2]+bY,T,ar*K,K,r,not ap,j==3 and ay}if bn>bW or(not ap)or h==l then
bW=bn-1+bE
ap=T
p[a][#p[a]+1]=ck
end
cJ=ck
end
end
if at then
if j~=2 then
if J<W[g]then
aX[a][#aX[a]+1]={g,C(J,Z[g]),W[g],I}end
if j==3then ad=J else ad=G end
if W[g]>ad then W[g]=ad end
end
if j~=1 then
if G>Z[g]then
aH[a][#aH[a]+1]={g,Z[g],v(G,W[g]),I}end
if j==3then ad=G else ad=J end
if Z[g]<ad then Z[g]=ad end
end
if(W[g]<=Z[g])or(j==3 and(not ay)and an)then
aE[g]=a
bi=bi-1
end
end
end
end
end
if(not cq)and ap then
ap=M
p[a][#p[a]+1]=cJ
p[a][#p[a]][9]=M
end
end
if#p[a]>0 then
p[a][#p[a]][9]=M
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
function onDraw()aN=bK
local cl,bx,ah,cP=aN.drawTriangleF,aN.drawRectF,aN.setColor,aN.drawText
bb=bb+1
cI={aH,aX}if bb<=1 then
if aO then
e=c[24][c[19][8][as-3]]V,aA=e[1],e[2]y=L/ceil(V*O)cb=y*1
for a=0,ceil(V*O),1 do
k=(V/2-a-1+f[3]/90*V)%V
l=(k%1-1)*y
k=Y(k)*aA
for m=0,aA-1,1 do
Q=e[5+m+k]i=c[20][Q]ah(i[1],i[2],i[3])bx(a*y+l,m*y,cb,cb)end
end
for a=#p,1,-1 do
for m=1,#p[a]do
d=p[a][m]if d[9]or d[13]then
if d[9]then
S=p[a][m+1]else
S=d
end
e=c[21][d[4]]e=c[21][d[4]+(cp%e[5])]r=d[12]X=v(r,0)g=d[1]l=S[1]bJ=d[2-X]ct=S[2-X]h=d[3+X]bg=S[3+X]if not S[9]then l=l+1 end
aJ(d[7])cB=r*(d[2]-d[3])*d[10]/d[6]cE=r*(S[2]-S[3])*d[10]/S[6]bU=r>0 and v or C
bf=0
while h*r<bJ*r and(bf<e[2]or not d[14])do
bX=bU(h+cB,bJ)bp=bU(bg+cE,ct)Q=e[7+((X*d[11]+d[8]//e[3])%e[2])+e[2]*(d[5]%e[1])]i=c[20][Q]if i then
ah(i[1]*q,i[2]*q,i[3]*q)cl(g,h,g,bX,l,bp)cl(g,h,l,bg,l,bp)end
h=bX
bg=bp
X=X+r
bf=bf+d[11]end
end
end
for b=1,2 do
_=cI[b]ce={}aq,aD,bu=ae,-ae
for m,d in aR(_[a])do
aq=v(aq,d[2])aD=C(aD,d[3])bu=d
e=c[22][d[4][b+2]]if e and not co then
aJ(d[4][5])i=c[20][e[5]]ah(i[1]*q,i[2]*q,i[3]*q)bK.drawLine(d[1],s-d[2],d[1],Y(s-d[3]-1))end
end
if bu and co then
I=bu[4]cF=(I[b]-f[2])bm=cos(f[3])bz=sin(f[3])for ax=Y(aq+s),ceil(aD+s)do
am=aK*cF/(s-ax)bZ=bm*am-f[1][1]cj=bz*am-f[1][2]bS=-bz*am+bZ
ci=bm*am+cj
cx=bz*am+bZ
cu=-bm*am+cj
cv=(cx-bS)/L
cA=(cu-ci)/L
ce[ax]={cv,cA,bS,ci}end
for m,d in aR(_[a])do
if I[b+2]~=0 then
aJ(I[5])n=I[b+2]e=c[22][n]e=c[22][n+(cp%e[4])]g=d[1]bN=A-(A-g)*O
aq,aD=Y(d[2]+s),ceil(d[3]+s)ar=e[3]for ax=aq,aD do
aY=ce[ax]cC=(aY[3]+aY[1]*bN)//ar
cL=(aY[4]+aY[2]*bN)//ar
Q=6+(cL%e[1])+e[1]*(cC%e[2])i=c[20][e[Q]]if i then
ah(i[1]*q,i[2]*q,i[3]*q)bx(g,-ax+ae,1,1)end
end
end
end
end
end
for m=1,#aP[a]do
_=t[aP[a][m]]if _[6]~=0 then
aV=sub(_,f[1])o=_[20]if o>1 then
H=by(aF(aV)-f[3])o=o*cos(H)if B(H)<90 then
k=A-aB(tan(H)/O*A)aI=aB((P+H+f[3]-_[3])/360*8)R=c[16][_[6]][1]if R~=0 and _[6]~=1 then
e=c[17][B(R)][aI%8+1]r=e<0 and-1 or 1
e=B(e)if e>0 then
e=c[23][e]V,aA=e[1],e[2]K=v(bC(o//aU+1),8)y=A/(O*o)aW=y*bB
G=s+(f[2]-_[9])/o*aK
J=G-e[5]*aW
l=k-r*e[4]*y
y,aW=y*e[3],aW*e[3]aJ(ai[_[8]][5])q=R>0 and q or 1
c_=y*K
cD=c_*bB
cM=_[4]and c[15][_[4]][23]&8>0
for h=0,V-1,K do
k=l+h*y*r
if a<=aE[bh(aB(k),0,L-1)]then
for j=0,aA-1,K do
Q=e[7+j+h*aA]if Q~=0 then
if cM then
bj=bj%50+1
ah(0,0,0,v(75*c[13][2][bj],255))else
i=c[20][Q]ah(i[1]*q,i[2]*q,i[3]*q)end
bx(k,J+j*aW,c_,cD)end
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
