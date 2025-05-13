cS=""

T=180
co=screen
aO=ipairs
bI=table
bF=input
v=math
B=v.max
x=v.min
z=v.abs
W=v.floor
ceil=v.ceil
sqrt=v.sqrt
E=bF.getNumber
bE=bF.getBool
pi=v.pi
M=false
K=true
bn=string
function bm(b,k)return b[1]*k[2]-b[2]*k[1]end
function sub(b,k)return{(b[1]-k[1]),(b[2]-k[2])}end
function bq(b)return((b+T)%360)-T end
function sin(b)return v.sin(b/T*pi)end
function cos(b)return v.cos(b/T*pi)end
function tan(b)return v.tan(b/T*pi)end
function cQ(b)return v.atan(b)*T/pi end
function aW(b)return v.atan(b[2],b[1])*T/pi end
function bl(b,k,_)return x(B(k,b),_)end
function aq(b)return W(b+.5)end
function bu(b,k)return sqrt(((b[1]-k[1])^2)+((b[2]-k[2])^2))end
function bD(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
function aX(b)q=x(b/255+bM,1)^2.2 end
c={}bx=1
at=3
aZ=M
ay=K
f={{0,0},0,0}N=288
C=N//2
ag=128
r=ag//2
aQ={}aY=400
cf=100
cO=0
aC={}aG=32768
cp=3002
bg=0
aH=0
aT=0
bc=1.2
P=52
O=tan(P)aP=r*bc*N/ag/O
V=1
cj={}for a=-C,C do cj[a]=aW({1,a/C*O})end
function bw(a)if a<aG then
local u,bk=c[7][a]bk=0<bm({u[3],u[4]},sub(f[1],u))and 8 or 7
bw(u[bk])bw(u[15-bk])else
av[#av+1]=a-aG
end
end
function bb(a,b)if a<aG then
u=c[7][a]return bb(u[0<bm({u[3],u[4]},sub(b,u))and 8 or 7],b)else
return a-aG
end
end
function bo(b)u=c[5][c[6][b][2]]return c[3][c[2][u[4]][u[5]+6]][6]end
function onTick()bB=0
for n=1,3 do
if bE(9)and(not aZ)or not c[21]then
bC=property.getText(bx..cS)if bC~=cS then
a=1
y=cS
_=bn.sub(bC,a,a)while _~=cSdo
k=bn.byte(_)if k>64 or _==cSthen
y=(y..(k-65))+0
if V==1then
bL=y
if c[y]==cP then
c[y]={}end
V=2
elseif V==2then
cK=y
ar=0
V=3
elseif V==3then
bf=y
V=4
else
if ar==0then
ar=cK
bf=bf-1
aj={}c[bL][#c[bL]+1]=aj
end
aj[#aj+1]=y
ar=ar-1
if B(ar,bf)==0then
V=1
end
end
y=cS
else
y=y.._
end
a=a+1
_=bn.sub(bC,a,a)end
bx=bx+1
else
aZ=K
end
end
end
if aZ then
if E(9)>0 then
ay=K
at=E(9)end
if cf>0 and not ay then
ai={}aC[#aC+1]=ai
ap=5
_=E(ap)while _~=0 do
ae={}ai[#ai+1]=ae
for a=0,8 do
ae[a+1]=E(ap+a)end
ap=ap+9
_=E(ap)end
end
if bE(1)then
bQ=0
bA=E(1)cf=E(3)aT=aT+1
cb=aT//10
if ay then
for a=1,10 do
c[a]=c[a+10*at]end
t=c[1]ak=c[8]at=at+1
end
if E(2)>0 then
_=c[2][E(2)]if _ then
b=_[4]if b==3008 then
bT=_[5]==1
elseif b>3004 then
aY=B(aY+3*(_[4]-3006),1)elseif b>3000 then
cp=_[4]end
bQ=E(2)end
end
if bE(3)and bA~=1 and bA~=3 then
bM=.1
aH=bA==5 and 5 or 3
else
aH=aH-1
if aH<1then
bM=0
end
end
for a=1,#aC do
ai=aC[a]for n=1,#ai do
ae=ai[n]_=ae[1]if _>(2^15)then
_=ak[_-(2^15)]for h=1,6 do
_[h]=ae[h+1]end
elseif _<0 then
while-_>#t do
t[#t+1]=M
end
bI.remove(t,-_)else
if not t[_]then
t[_]={}end
_=t[_]for h=1,8 do
_[c[19][1][h]]=ae[h+1]end
_[15]=0
_[7]=bb(#c[7],_)_[8]=bo(_[7])end
end
end
aC={}for a=1,#c[6]do
aQ[a]={}end
for a=1,#t do
_=t[a]if _ then
if ay then
_[7]=bb(#c[7],_)_[8]=bo(_[7])_[9]=ak[_[8]][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
if _[4]==1 then
cI=a
end
end
bj=0
for n,d in aO({1,2,9})do
_[d]=_[d]+_[d+10]bj=bj+_[d+10]end
if bj~=0then
_[7]=bb(#c[7],_)_[8]=bo(_[7])end
_[15]=_[15]+1
_[20]=bu(_,f[1])Q=c[16][_[6]]if Q~=nil then
if _[15]>=Q[2]and Q[2]~=-1 then
_[6]=Q[4]_[15]=0
end
end
aQ[_[7]][#aQ[_[7]]+1]=a
end
end
ay=M
_=t[cI]f[1]={_[1],_[2]}f[2]=_[9]+41
f[3]=_[3]av={}bw(#c[7])aV={}p={}aR={}aN={}Y={}ac={}b_={}bp=N
for a=0,N-1 do
aV[a],Y[a],ac[a]=#c[6]+2,r+1,-r
end
a=1
while a<=#av and bp>0 do
_=c[6][av[a]]aR[a]={}aN[a]={}p[a]={}b_[a]=aQ[av[a]]bI.sort(b_[a],function(b,k)return t[b][20]>t[k][20]end)for n=_[2],_[1]+_[2]-1 do
ab=c[5][n]I=c[2][ab[4]]ck,cg=c[4][ab[1]],c[4][ab[2]]aJ,cd=sub(ck,f[1]),sub(cg,f[1])cm=aW(aJ)F,aU=bq(cm-f[3]),bq(aW(cd)-f[3])if z(F)<90 or z(aU)<90 then
an,am=bl(F,-P,P),bl(aU,-P,P)if z(F)>=90 or z(aU)>=90 then
cc=bm(aJ,cd)if z(F)>=90 then
if cc>0 then an=-P else an=P end
else
if cc<0 then am=-P else am=P end
end
end
l,m=aq(tan(an)/O*C),aq(tan(am)/O*C)if l~=m then
o,as=bu(f[1],ck),bu(f[1],cg)ba=ab[3]+90
bU=ba-cm
cL=o*sin(bU)aM=(o*cos(bU))if F~=an then
o=aM/cos(ba-(an+f[3]))end
if aU~=am then
as=aM/cos(ba-(am+f[3]))end
o,as=o*cos(an),as*cos(am)h=ab[5]+6
cH=(l>m)if cH and I[h]~=0 then
au=I[3]&4>0
if au then
Z,aa=ak[c[3][I[6]][6]],ak[c[3][I[7]][6]]end
al=c[3][I[h]]cq={al[3],al[4],al[5]}H,bZ,ch=ak[al[6]]for j,d in aO(cq)do
ao=d>0
aD=K
if(ao or(j==3 and not(bZ and ch)))and(j==3 or au)then
bW=M
bK=0
if j<3 then
bW=j==1 and B(Z[4],aa[4])==0
A,w=Z[3-j],aa[3-j]aD=(A<w)~=(j==2)~=(h==6)and A~=w and Z~=aa
A,w=x(A,w),B(A,w)if aD then
if j==1then
bZ=K
else
ch=K
bK=I[3]&16>0 and B(Z[2],aa[2])-w or 0
end
end
else
if au then
A,w=B(Z[1],aa[1]),x(Z[2],aa[2])aD=Z~=aa
else
A,w=H[1],H[2]end
end
A,w=A-f[2],w-f[2]ca,bS=A*aP,w*aP
if(aD or ao)and not bW then
by=ab[6]-al[1]if I[4]==48 then
by=by-aT
end
cs,cE=ca/o,bS/o
cJ,cN=ca/as,bS/as
c_=0
aA=M
if ao then
_=c[21][d][4]if(ab[4]==bQ or cp==I[4])and _>0then
d=_
end
aE=c[21][d][3]s=1
if(j==3 and I[3]&16>0)or(j==1 and I[3]&8==0)then
s=-1
end
end
for h=l,m,-1 do
cG=cj[h]aI=(ba-f[3])-cG
g=C-h
bG=M
if g>=0 and g<=N-1 then
if a<aV[g]then
aF=(h-l)/(m-l)G,J=(cs*(1-aF)+cJ*aF),(cE*(1-aF)+cN*aF)if z(J+G)-(J-G)<ag then
if ao then
if G~=J then
bG=K
ci=aM*tan(aI)L=x(((z(ci)+z(aM))//aY)+1,4)be=x(bD(W(L/cos(aI))),16)L=bD(L)bv=W((B(ci-cL,0)-by)/(aE*be))*be
bH={g,r-G,r-J,d,bv,w-A,H[5],al[2]+bK,K,aE*L,L,s,not aA,j==3 and au}if bv>c_ or(not aA)or h==m then
c_=bv-1+be
aA=K
p[a][#p[a]+1]=bH
end
cC=bH
end
end
if aD then
if j~=2 then
if J<Y[g]then
aN[a][#aN[a]+1]={g,B(J,ac[g]),Y[g],H}end
if j==3then X=J else X=G end
if Y[g]>X then Y[g]=X end
end
if j~=1 then
if G>ac[g]then
aR[a][#aR[a]+1]={g,ac[g],x(G,Y[g]),H}end
if j==3then X=G else X=J end
if ac[g]<X then ac[g]=X end
end
if(Y[g]<=ac[g])or(j==3 and(not au)and ao)then
aV[g]=a
bp=bp-1
end
end
end
end
end
if(not bG)and aA then
aA=M
p[a][#p[a]+1]=cC
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
function onDraw()aS=co
local bN,bs,af,cR=aS.drawTriangleF,aS.drawRectF,aS.setColor,aS.drawText
bB=bB+1
cB={aR,aN}if bB<=1 then
if aZ then
e=c[24][c[19][8][at-3]]ad,az=e[1],e[2]D=N/ceil(ad*O)cn=D*1
for a=0,ceil(ad*O),1 do
l=(ad/2-a-1+f[3]/90*ad)%ad
m=(l%1-1)*D
l=W(l)*az
for n=0,az-1,1 do
R=e[5+n+l]i=c[20][R]af(i[1],i[2],i[3])bs(a*D+m,n*D,cn,cn)end
end
for a=#p,1,-1 do
for n=1,#p[a]do
d=p[a][n]if d[9]or d[13]then
if d[9]then
S=p[a][n+1]else
S=d
end
e=c[21][d[4]]e=c[21][d[4]+(cb%e[5])]s=d[12]U=x(s,0)g=d[1]m=S[1]bX=d[2-U]cw=S[2-U]h=d[3+U]bz=S[3+U]if not S[9]then m=m+1 end
aX(d[7])cM=s*(d[2]-d[3])*d[10]/d[6]cF=s*(S[2]-S[3])*d[10]/S[6]aj=s>0 and x or B
br=0
while h*s<bX*s and(br<e[2]or not d[14])do
cl=aj(h+cM,bX)bi=aj(bz+cF,cw)R=e[7+((U*d[11]+d[8]//e[3])%e[2])+e[2]*(d[5]%e[1])]i=c[20][R]if i then
af(i[1]*q,i[2]*q,i[3]*q)bN(g,h,g,cl,m,bi)bN(g,h,m,bz,m,bi)end
h=cl
bz=bi
U=U+s
br=br+d[11]end
end
end
for b=1,2 do
_=cB[b]bP={}aB,ax,bt=ag,-ag
for n,d in aO(_[a])do
aB=x(aB,d[2])ax=B(ax,d[3])bt=d
e=c[22][d[4][b+2]]if e and not bT then
aX(d[4][5])i=c[20][e[5]]af(i[1]*q,i[2]*q,i[3]*q)co.drawLine(d[1],r-d[2],d[1],W(r-d[3]-1))end
end
if bt and bT then
H=bt[4]cD=(H[b]-f[2])bh=cos(f[3])bd=sin(f[3])for aw=W(aB+r),ceil(ax+r)do
ah=aP*cD/(r-aw)ce=bh*ah-f[1][1]bR=bd*ah-f[1][2]bV=-bd*ah+ce
bJ=bh*ah+bR
cA=bd*ah+ce
cv=-bh*ah+bR
cu=(cA-bV)/N
cy=(cv-bJ)/N
bP[aw]={cu,cy,bV,bJ}end
for n,d in aO(_[a])do
if H[b+2]~=0 then
aX(H[5])k=H[b+2]e=c[22][k]e=c[22][k+(cb%e[4])]g=d[1]bY=C-(C-g)*O
aB,ax=W(d[2]+r),ceil(d[3]+r)aE=e[3]for aw=aB,ax do
aL=bP[aw]cr=(aL[3]+aL[1]*bY)//aE
cz=(aL[4]+aL[2]*bY)//aE
R=6+(cz%e[1])+e[1]*(cr%e[2])i=c[20][e[R]]if i then
af(i[1]*q,i[2]*q,i[3]*q)bs(g,-aw+ag,1,1)end
end
end
end
end
end
for n=1,#b_[a]do
_=t[b_[a][n]]if _[6]~=0 then
aJ=sub(_,f[1])o=_[20]if o>1 then
F=bq(aW(aJ)-f[3])o=o*cos(F)if z(F)<90 then
l=C-aq(tan(F)/O*C)aI=aq((T+F+f[3]-_[3])/360*8)Q=c[16][_[6]][1]if Q~=0 and _[6]~=1 then
e=c[17][z(Q)][aI%8+1]s=e<0 and-1 or 1
e=z(e)if e>0 then
e=c[23][e]ad,az=e[1],e[2]L=x(bD(o//aY+1),8)D=C/(O*o)aK=D*bc
G=r+(f[2]-_[9])/o*aP
J=G-e[5]*aK
m=l-s*e[4]*D
D,aK=D*e[3],aK*e[3]aX(ak[_[8]][5])q=Q>0 and q or 1
bO=D*L
cx=bO*bc
ct=_[4]and c[15][_[4]][23]&8>0
for h=0,ad-1,L do
l=m+h*D*s
if a<=aV[bl(aq(l),0,N-1)]then
for j=0,az-1,L do
R=e[7+j+h*az]if R~=0 then
if ct then
bg=bg%50+1
af(0,0,0,x(75*c[13][2][bg],255))else
i=c[20][R]af(i[1]*q,i[2]*q,i[3]*q)end
bs(l,J+j*aK,bO,cx)end
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
