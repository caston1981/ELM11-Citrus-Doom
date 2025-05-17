cS=""

P=180
bO=screen
aU=ipairs
bS=table
ck=input
x=math
A=x.max
v=x.min
C=x.abs
aa=x.floor
ceil=x.ceil
sqrt=x.sqrt
G=ck.getNumber
bq=ck.getBool
pi=x.pi
M=false
S=true
bu=string
function by(b,k)return b[1]*k[2]-b[2]*k[1]end
function sub(b,k)return{(b[1]-k[1]),(b[2]-k[2])}end
function bi(b)return((b+P)%360)-P end
function sin(b)return x.sin(b/P*pi)end
function cos(b)return x.cos(b/P*pi)end
function tan(b)return x.tan(b/P*pi)end
function cR(b)return x.atan(b)*P/pi end
function aE(b)return x.atan(b[2],b[1])*P/pi end
function bt(b,k,_)return v(A(k,b),_)end
function as(b)return aa(b+.5)end
function bo(b,k)return sqrt(((b[1]-k[1])^2)+((b[2]-k[2])^2))end
function bs(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
function aM(b)q=v(b/255+bL,1)^2.2 end
c={}bx=1
aC=3
aL=M
aB=S
f={{0,0},0,0}N=288
y=N//2
al=128
s=al//2
aS={}ba=400
c_=100
cQ=0
az={}aZ=32768
bN=3002
bc=0
aW=0
aP=0
bh=1.2
L=52
K=tan(L)aR=s*bh*N/al/K
X=1
bQ={}for a=-y,y do bQ[a]=aE({1,a/y*K})end
function bD(a)if a<aZ then
local u,bw=c[7][a]bw=0<by({u[3],u[4]},sub(f[1],u))and 8 or 7
bD(u[bw])bD(u[15-bw])else
ao[#ao+1]=a-aZ
end
end
function aN(a,b)if a<aZ then
u=c[7][a]return aN(u[0<by({u[3],u[4]},sub(b,u))and 8 or 7],b)else
return a-aZ
end
end
function bB(b)u=c[5][c[6][b][2]]return c[3][c[2][u[4]][u[5]+6]][6]end
function onTick()bm=0
for m=1,3 do
if bq(9)and(not aL)or not c[21]then
bp=property.getText(bx)a=1
B=cS
_=bu.sub(bp,a,a)while _~=cSdo
bI=bu.byte(_)if bI>64then
B=(B..bI-65)+0
if X==1then
bG=B
c[B]=c[B]or{}elseif X==2then
cK=B
au=0
elseif X==3then
br=B
else
if au==0then
au=cK
br=br-1
bk={}c[bG][#c[bG]+1]=bk
end
bk[#bk+1]=B
au=au-1
X=A(au,br)>0 and X-1 or 0
end
X=X+1
B=cS
else
B=B.._
end
a=a+1
_=bu.sub(bp,a,a)end
bx=bx+1
aL=bp==cS
end
end
if aL then
if G(9)>0 then
aB=S
aC=G(9)end
if c_>0 and not aB then
ai={}az[#az+1]=ai
ap=5
_=G(ap)while _~=0 do
ae={}ai[#ai+1]=ae
for a=0,8 do
ae[a+1]=G(ap+a)end
ap=ap+9
_=G(ap)end
end
if bq(1)then
cr=0
bE=G(1)c_=G(3)aP=aP+1
cc=aP//10
if aB then
for a=1,10 do
c[a]=c[a+10*aC]end
t=c[1]am=c[8]aC=aC+1
end
if G(2)>0 then
_=c[2][G(2)]if _ then
b=_[4]if b>0 then
if b==3008 then
bU=_[5]==1
elseif b>3004 then
ba=A(ba+3*(_[4]-3006),1)elseif b>3000 then
bN=_[4]end
cr=G(2)if b<3000 and c[9][_[5]][7]==0then
_[8]=1
end
end
end
end
if bq(3)and bE~=1 and bE~=3 then
bL=.1
aW=bE==5 and 5 or 3
else
aW=aW-1
if aW<1then
bL=0
end
end
for a=1,#az do
ai=az[a]for m=1,#ai do
ae=ai[m]_=ae[1]if _>(2^15)then
_=am[_-(2^15)]for h=1,6 do
_[h]=ae[h+1]end
elseif _<0 then
while-_>#t do
t[#t+1]=M
end
bS.remove(t,-_)else
if not t[_]then
t[_]={}end
_=t[_]for h=1,8 do
_[c[19][1][h]]=ae[h+1]end
_[15]=0
_[7]=aN(#c[7],_)_[8]=bB(_[7])end
end
end
az={}for a=1,#c[6]do
aS[a]={}end
for a=1,#t do
_=t[a]if _ then
if aB then
_[7]=aN(#c[7],_)_[8]=bB(_[7])_[9]=am[_[8]][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
end
bn=0
for m,d in aU({1,2,9})do
_[d]=_[d]+_[d+10]bn=bn+_[d+10]end
if bn~=0then
_[7]=aN(#c[7],_)_[8]=bB(_[7])end
_[15]=_[15]+1
_[20]=bo(_,f[1])T=c[16][_[6]]if T~=nil then
if _[15]>=T[2]and T[2]~=-1 then
_[6]=T[4]_[15]=0
end
end
aS[_[7]][#aS[_[7]]+1]=a
end
end
aB=M
_=t[1]f[1]={_[1],_[2]}f[2]=_[9]+41
f[3]=_[3]ao={}bD(#c[7])aG={}p={}aK={}aF={}ab={}V={}aQ={}bv=N
for a=0,N-1 do
aG[a],ab[a],V[a]=#c[6]+2,s+1,-s
end
a=1
while a<=#ao and bv>0 do
_=c[6][ao[a]]aK[a]={}aF[a]={}p[a]={}aQ[a]=aS[ao[a]]bS.sort(aQ[a],function(b,k)return t[b][20]>t[k][20]end)for m=_[2],_[1]+_[2]-1 do
ad=c[5][m]z=c[2][ad[4]]cg,cb=c[4][ad[1]],c[4][ad[2]]aJ,cm=sub(cg,f[1]),sub(cb,f[1])cq=aE(aJ)F,aO=bi(cq-f[3]),bi(aE(cm)-f[3])if C(F)<90 or C(aO)<90 then
af,ah=bt(F,-L,L),bt(aO,-L,L)if C(F)>=90 or C(aO)>=90 then
bF=by(aJ,cm)if C(F)>=90 then
if bF>0 then af=-L else af=L end
else
if bF<0 then ah=-L else ah=L end
end
end
n,l=as(tan(af)/K*y),as(tan(ah)/K*y)if n~=l then
o,ay=bo(f[1],cg),bo(f[1],cb)aX=ad[3]+90
bT=aX-cq
cH=o*sin(bT)aT=(o*cos(bT))if F~=af then
o=aT/cos(aX-(af+f[3]))end
if aO~=ah then
ay=aT/cos(aX-(ah+f[3]))end
o,ay=o*cos(af),ay*cos(ah)h=ad[5]+6
cs=(n>l)if cs and z[h]~=0 then
aD=z[3]&4>0
if aD then
W,Z=am[c[3][z[6]][6]],am[c[3][z[7]][6]]end
aj=c[3][z[h]]cD={aj[3],aj[4],aj[5]}I,bP,bY=am[aj[6]]for j,d in aU(cD)do
ax=d>0
av=S
if(ax or(j==3 and not(bP and bY)))and(j==3 or aD)then
cl=M
bM=0
if j<3 then
cl=j==1 and A(W[4],Z[4])==0
D,w=W[3-j],Z[3-j]av=(D<w)~=(j==2)~=(h==6)and D~=w and W~=Z
D,w=v(D,w),A(D,w)if av then
if j==1then
bP=S
else
bY=S
bM=z[3]&16>0 and A(W[2],Z[2])-w or 0
end
end
else
if aD then
D,w=A(W[1],Z[1]),v(W[2],Z[2])av=W~=Z
else
D,w=I[1],I[2]end
end
D,w=D-f[2],w-f[2]ca,cj=D*aR,w*aR
if(av or ax)and not cl then
bz=ad[6]-aj[1]if z[4]==48 then
bz=bz-aP
end
cy,cu=ca/o,cj/o
cI,cz=ca/ay,cj/ay
bW=0
aq=M
if ax then
_=c[21][d][4]if(ad[4]==cr or bN==z[4]or z[8])and _>0then
d=_
end
an=c[21][d][3]r=1
if(j==3 and z[3]&16>0)or(j==1 and z[3]&8==0)then
r=-1
end
end
for h=n,l,-1 do
cG=bQ[h]aY=(aX-f[3])-cG
g=y-h
bR=M
if g>=0 and g<=N-1 then
if a<aG[g]then
aV=(h-n)/(l-n)H,J=(cy*(1-aV)+cI*aV),(cu*(1-aV)+cz*aV)if C(J+H)-(J-H)<al then
if ax then
if H~=J then
bR=S
bH=aT*tan(aY)O=v(((C(bH)+C(aT))//ba)+1,4)bf=v(bs(aa(O/cos(aY))),16)O=bs(O)bC=aa((A(bH-cH,0)-bz)/(an*bf))*bf
bK={g,s-H,s-J,d,bC,w-D,I[5],aj[2]+bM,S,an*O,O,r,not aq,j==3 and aD}if bC>bW or(not aq)or h==l then
bW=bC-1+bf
aq=S
p[a][#p[a]+1]=bK
end
cF=bK
end
end
if av then
if j~=2 then
if J<ab[g]then
aF[a][#aF[a]+1]={g,A(J,V[g]),ab[g],I}end
if j==3then U=J else U=H end
if ab[g]>U then ab[g]=U end
end
if j~=1 then
if H>V[g]then
aK[a][#aK[a]+1]={g,V[g],v(H,ab[g]),I}end
if j==3then U=H else U=J end
if V[g]<U then V[g]=U end
end
if(ab[g]<=V[g])or(j==3 and(not aD)and ax)then
aG[g]=a
bv=bv-1
end
end
end
end
end
if(not bR)and aq then
aq=M
p[a][#p[a]+1]=cF
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
function onDraw()b_=bO
local cn,bb,ak,cP=b_.drawTriangleF,b_.drawRectF,b_.setColor,b_.drawText
bm=bm+1
cO={aK,aF}if bm<=1 then
if aL then
e=c[24][c[19][8][aC-3]]Y,aw=e[1],e[2]E=N/ceil(Y*K)cd=E*1
for a=0,ceil(Y*K),1 do
n=(Y/2-a-1+f[3]/90*Y)%Y
l=(n%1-1)*E
n=aa(n)*aw
for m=0,aw-1,1 do
Q=e[5+m+n]i=c[20][Q]ak(i[1],i[2],i[3])bb(a*E+l,m*E,cd,cd)end
end
for a=#p,1,-1 do
for m=1,#p[a]do
d=p[a][m]if d[9]or d[13]then
if d[9]then
R=p[a][m+1]else
R=d
end
e=c[21][d[4]]e=c[21][d[4]+(cc%e[5])]r=d[12]ac=v(r,0)g=d[1]l=R[1]ci=d[2-ac]cB=R[2-ac]h=d[3+ac]bl=R[3+ac]if not R[9]then l=l+1 end
aM(d[7])cC=r*(d[2]-d[3])*d[10]/d[6]cx=r*(R[2]-R[3])*d[10]/R[6]cp=r>0 and v or A
be=0
while h*r<ci*r and(be<e[2]or not d[14])do
bZ=cp(h+cC,ci)bj=cp(bl+cx,cB)Q=e[7+((ac*d[11]+d[8]//e[3])%e[2])+e[2]*(d[5]%e[1])]i=c[20][Q]if i then
ak(i[1]*q,i[2]*q,i[3]*q)cn(g,h,g,bZ,l,bj)cn(g,h,l,bl,l,bj)end
h=bZ
bl=bj
ac=ac+r
be=be+d[11]end
end
end
for b=1,2 do
_=cO[b]bX={}at,ar,bd=al,-al
for m,d in aU(_[a])do
at=v(at,d[2])ar=A(ar,d[3])bd=d
e=c[22][d[4][b+2]]if e and not bU then
aM(d[4][5])i=c[20][e[5]]ak(i[1]*q,i[2]*q,i[3]*q)bO.drawLine(d[1],s-d[2],d[1],aa(s-d[3]-1))end
end
if bd and bU then
I=bd[4]cM=(I[b]-f[2])bg=cos(f[3])bA=sin(f[3])for aA=aa(at+s),ceil(ar+s)do
ag=aR*cM/(s-aA)cf=bg*ag-f[1][1]ce=bA*ag-f[1][2]bJ=-bA*ag+cf
co=bg*ag+ce
ct=bA*ag+cf
cA=-bg*ag+ce
cL=(ct-bJ)/N
cv=(cA-co)/N
bX[aA]={cL,cv,bJ,co}end
for m,d in aU(_[a])do
if I[b+2]~=0 then
aM(I[5])k=I[b+2]e=c[22][k]e=c[22][k+(cc%e[4])]g=d[1]ch=y-(y-g)*K
at,ar=aa(d[2]+s),ceil(d[3]+s)an=e[3]for aA=at,ar do
aH=bX[aA]cJ=(aH[3]+aH[1]*ch)//an
cE=(aH[4]+aH[2]*ch)//an
Q=6+(cE%e[1])+e[1]*(cJ%e[2])i=c[20][e[Q]]if i then
ak(i[1]*q,i[2]*q,i[3]*q)bb(g,-aA+al,1,1)end
end
end
end
end
end
for m=1,#aQ[a]do
_=t[aQ[a][m]]if _[6]~=0 then
aJ=sub(_,f[1])o=_[20]if o>1 then
F=bi(aE(aJ)-f[3])o=o*cos(F)if C(F)<90 then
n=y-as(tan(F)/K*y)aY=as((P+F+f[3]-_[3])/360*8)T=c[16][_[6]][1]if T~=0 and _[6]~=1 then
e=c[17][C(T)][aY%8+1]r=e<0 and-1 or 1
e=C(e)if e>0 then
e=c[23][e]Y,aw=e[1],e[2]O=v(bs(o//ba+1),8)E=y/(K*o)aI=E*bh
H=s+(f[2]-_[9])/o*aR
J=H-e[5]*aI
l=n-r*e[4]*E
E,aI=E*e[3],aI*e[3]aM(am[_[8]][5])q=T>0 and q or 1
bV=E*O
cN=bV*bh
cw=_[4]and c[15][_[4]][23]&8>0
for h=0,Y-1,O do
n=l+h*E*r
if a<=aG[bt(as(n),0,N-1)]then
for j=0,aw-1,O do
Q=e[7+j+h*aw]if Q~=0 then
if cw then
bc=bc%50+1
ak(0,0,0,v(75*c[13][2][bc],255))else
i=c[20][Q]ak(i[1]*q,i[2]*q,i[3]*q)end
bb(n,J+j*aI,bV,cN)end
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
