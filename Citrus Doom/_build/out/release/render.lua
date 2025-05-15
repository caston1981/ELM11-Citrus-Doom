cR=""

Q=180
bF=screen
aT=ipairs
cc=table
bT=input
w=math
z=w.max
x=w.min
A=w.abs
Y=w.floor
ceil=w.ceil
sqrt=w.sqrt
H=bT.getNumber
bs=bT.getBool
pi=w.pi
N=false
M=true
bE=string
function by(b,k)return b[1]*k[2]-b[2]*k[1]end
function sub(b,k)return{(b[1]-k[1]),(b[2]-k[2])}end
function bu(b)return((b+Q)%360)-Q end
function sin(b)return w.sin(b/Q*pi)end
function cos(b)return w.cos(b/Q*pi)end
function tan(b)return w.tan(b/Q*pi)end
function cO(b)return w.atan(b)*Q/pi end
function aV(b)return w.atan(b[2],b[1])*Q/pi end
function bx(b,k,_)return x(z(k,b),_)end
function ax(b)return Y(b+.5)end
function bD(b,k)return sqrt(((b[1]-k[1])^2)+((b[2]-k[2])^2))end
function bz(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
function aF(b)p=x(b/255+ce,1)^2.2 end
c={}bC=1
au=3
aP=N
aE=M
g={{0,0},0,0}L=288
D=L//2
af=128
u=af//2
aH={}aY=400
cp=100
cP=0
aC={}aG=32768
bM=3002
bj=0
aZ=0
aK=0
bt=1.2
P=52
K=tan(P)aL=u*bt*L/af/K
V=1
ca={}for a=-D,D do ca[a]=aV({1,a/D*K})end
function bp(a)if a<aG then
local r,bB=c[7][a]bB=0<by({r[3],r[4]},sub(g[1],r))and 8 or 7
bp(r[bB])bp(r[15-bB])else
aw[#aw+1]=a-aG
end
end
function b_(a,b)if a<aG then
r=c[7][a]return b_(r[0<by({r[3],r[4]},sub(b,r))and 8 or 7],b)else
return a-aG
end
end
function bA(b)r=c[5][c[6][b][2]]return c[3][c[2][r[4]][r[5]+6]][6]end
function onTick()bv=0
for n=1,3 do
if bs(9)and(not aP)or not c[21]then
bl=property.getText(bC..cR)if bl~=cR then
a=1
B=cR
_=bE.sub(bl,a,a)while _~=cRdo
k=bE.byte(_)if k>64 or _==cRthen
B=(B..(k-65))+0
if V==1then
bV=B
if c[B]==cN then
c[B]={}end
V=2
elseif V==2then
cL=B
aD=0
V=3
elseif V==3then
bw=B
V=4
else
if aD==0then
aD=cL
bw=bw-1
ai={}c[bV][#c[bV]+1]=ai
end
ai[#ai+1]=B
aD=aD-1
if z(aD,bw)==0then
V=1
end
end
B=cR
else
B=B.._
end
a=a+1
_=bE.sub(bl,a,a)end
bC=bC+1
else
aP=M
end
end
end
if aP then
if H(9)>0 then
aE=M
au=H(9)end
if cp>0 and not aE then
ah={}aC[#aC+1]=ah
aB=5
_=H(aB)while _~=0 do
ak={}ah[#ah+1]=ak
for a=0,8 do
ak[a+1]=H(aB+a)end
aB=aB+9
_=H(aB)end
end
if bs(1)then
cm=0
bn=H(1)cp=H(3)aK=aK+1
bH=aK//10
if aE then
for a=1,10 do
c[a]=c[a+10*au]end
s=c[1]an=c[8]au=au+1
end
if H(2)>0 then
_=c[2][H(2)]if _ then
b=_[4]if b==3008 then
bK=_[5]==1
elseif b>3004 then
aY=z(aY+3*(_[4]-3006),1)elseif b>3000 then
bM=_[4]end
cm=H(2)end
end
if bs(3)and bn~=1 and bn~=3 then
ce=.1
aZ=bn==5 and 5 or 3
else
aZ=aZ-1
if aZ<1then
ce=0
end
end
for a=1,#aC do
ah=aC[a]for n=1,#ah do
ak=ah[n]_=ak[1]if _>(2^15)then
_=an[_-(2^15)]for h=1,6 do
_[h]=ak[h+1]end
elseif _<0 then
while-_>#s do
s[#s+1]=N
end
cc.remove(s,-_)else
if not s[_]then
s[_]={}end
_=s[_]for h=1,8 do
_[c[19][1][h]]=ak[h+1]end
_[15]=0
_[7]=b_(#c[7],_)_[8]=bA(_[7])end
end
end
aC={}for a=1,#c[6]do
aH[a]={}end
for a=1,#s do
_=s[a]if _ then
if aE then
_[7]=b_(#c[7],_)_[8]=bA(_[7])_[9]=an[_[8]][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
end
bd=0
for n,d in aT({1,2,9})do
_[d]=_[d]+_[d+10]bd=bd+_[d+10]end
if bd~=0then
_[7]=b_(#c[7],_)_[8]=bA(_[7])end
_[15]=_[15]+1
_[20]=bD(_,g[1])T=c[16][_[6]]if T~=nil then
if _[15]>=T[2]and T[2]~=-1 then
_[6]=T[4]_[15]=0
end
end
aH[_[7]][#aH[_[7]]+1]=a
end
end
aE=N
_=s[1]g[1]={_[1],_[2]}g[2]=_[9]+41
g[3]=_[3]aw={}bp(#c[7])ba={}q={}aU={}aJ={}ab={}Z={}bb={}bo=L
for a=0,L-1 do
ba[a],ab[a],Z[a]=#c[6]+2,u+1,-u
end
a=1
while a<=#aw and bo>0 do
_=c[6][aw[a]]aU[a]={}aJ[a]={}q[a]={}bb[a]=aH[aw[a]]cc.sort(bb[a],function(b,k)return s[b][20]>s[k][20]end)for n=_[2],_[1]+_[2]-1 do
X=c[5][n]G=c[2][X[4]]bG,bO=c[4][X[1]],c[4][X[2]]aQ,cl=sub(bG,g[1]),sub(bO,g[1])bI=aV(aQ)F,aW=bu(bI-g[3]),bu(aV(cl)-g[3])if A(F)<90 or A(aW)<90 then
aj,am=bx(F,-P,P),bx(aW,-P,P)if A(F)>=90 or A(aW)>=90 then
c_=by(aQ,cl)if A(F)>=90 then
if c_>0 then aj=-P else aj=P end
else
if c_<0 then am=-P else am=P end
end
end
m,l=ax(tan(aj)/K*D),ax(tan(am)/K*D)if m~=l then
o,ay=bD(g[1],bG),bD(g[1],bO)aS=X[3]+90
ck=aS-bI
cM=o*sin(ck)aO=(o*cos(ck))if F~=aj then
o=aO/cos(aS-(aj+g[3]))end
if aW~=am then
ay=aO/cos(aS-(am+g[3]))end
o,ay=o*cos(aj),ay*cos(am)h=X[5]+6
cI=(m>l)if cI and G[h]~=0 then
ar=G[3]&4>0
if ar then
ad,W=an[c[3][G[6]][6]],an[c[3][G[7]][6]]end
ae=c[3][G[h]]cF={ae[3],ae[4],ae[5]}I,bP,bW=an[ae[6]]for j,d in aT(cF)do
at=d>0
av=M
if(at or(j==3 and not(bP and bW)))and(j==3 or ar)then
co=N
cf=0
if j<3 then
co=j==1 and z(ad[4],W[4])==0
C,v=ad[3-j],W[3-j]av=(C<v)~=(j==2)~=(h==6)and C~=v and ad~=W
C,v=x(C,v),z(C,v)if av then
if j==1then
bP=M
else
bW=M
cf=G[3]&16>0 and z(ad[2],W[2])-v or 0
end
end
else
if ar then
C,v=z(ad[1],W[1]),x(ad[2],W[2])av=ad~=W
else
C,v=I[1],I[2]end
end
C,v=C-g[2],v-g[2]bQ,bN=C*aL,v*aL
if(av or at)and not co then
bi=X[6]-ae[1]if G[4]==48 then
bi=bi-aK
end
cK,cs=bQ/o,bN/o
cG,cu=bQ/ay,bN/ay
bS=0
aq=N
if at then
_=c[21][d][4]if(X[4]==cm or bM==G[4])and _>0then
d=_
end
aA=c[21][d][3]t=1
if(j==3 and G[3]&16>0)or(j==1 and G[3]&8==0)then
t=-1
end
end
for h=m,l,-1 do
cJ=ca[h]aM=(aS-g[3])-cJ
f=D-h
bR=N
if f>=0 and f<=L-1 then
if a<ba[f]then
aR=(h-m)/(l-m)E,J=(cK*(1-aR)+cG*aR),(cs*(1-aR)+cu*aR)if A(J+E)-(J-E)<af then
if at then
if E~=J then
bR=M
bZ=aO*tan(aM)O=x(((A(bZ)+A(aO))//aY)+1,4)bq=x(bz(Y(O/cos(aM))),16)O=bz(O)bc=Y((z(bZ-cM,0)-bi)/(aA*bq))*bq
ci={f,u-E,u-J,d,bc,v-C,I[5],ae[2]+cf,M,aA*O,O,t,not aq,j==3 and ar}if bc>bS or(not aq)or h==l then
bS=bc-1+bq
aq=M
q[a][#q[a]+1]=ci
end
cx=ci
end
end
if av then
if j~=2 then
if J<ab[f]then
aJ[a][#aJ[a]+1]={f,z(J,Z[f]),ab[f],I}end
if j==3then U=J else U=E end
if ab[f]>U then ab[f]=U end
end
if j~=1 then
if E>Z[f]then
aU[a][#aU[a]+1]={f,Z[f],x(E,ab[f]),I}end
if j==3then U=E else U=J end
if Z[f]<U then Z[f]=U end
end
if(ab[f]<=Z[f])or(j==3 and(not ar)and at)then
ba[f]=a
bo=bo-1
end
end
end
end
end
if(not bR)and aq then
aq=N
q[a][#q[a]+1]=cx
q[a][#q[a]][9]=N
end
end
if#q[a]>0 then
q[a][#q[a]][9]=N
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
function onDraw()aX=bF
local bL,br,ag,cQ=aX.drawTriangleF,aX.drawRectF,aX.setColor,aX.drawText
bv=bv+1
cC={aU,aJ}if bv<=1 then
if aP then
e=c[24][c[19][8][au-3]]ac,ao=e[1],e[2]y=L/ceil(ac*K)cb=y*1
for a=0,ceil(ac*K),1 do
m=(ac/2-a-1+g[3]/90*ac)%ac
l=(m%1-1)*y
m=Y(m)*ao
for n=0,ao-1,1 do
R=e[5+n+m]i=c[20][R]ag(i[1],i[2],i[3])br(a*y+l,n*y,cb,cb)end
end
for a=#q,1,-1 do
for n=1,#q[a]do
d=q[a][n]if d[9]or d[13]then
if d[9]then
S=q[a][n+1]else
S=d
end
e=c[21][d[4]]e=c[21][d[4]+(bH%e[5])]t=d[12]aa=x(t,0)f=d[1]l=S[1]bJ=d[2-aa]cv=S[2-aa]h=d[3+aa]bk=S[3+aa]if not S[9]then l=l+1 end
aF(d[7])cq=t*(d[2]-d[3])*d[10]/d[6]cA=t*(S[2]-S[3])*d[10]/S[6]ai=t>0 and x or z
be=0
while h*t<bJ*t and(be<e[2]or not d[14])do
bY=ai(h+cq,bJ)bg=ai(bk+cA,cv)R=e[7+((aa*d[11]+d[8]//e[3])%e[2])+e[2]*(d[5]%e[1])]i=c[20][R]if i then
ag(i[1]*p,i[2]*p,i[3]*p)bL(f,h,f,bY,l,bg)bL(f,h,l,bk,l,bg)end
h=bY
bk=bg
aa=aa+t
be=be+d[11]end
end
end
for b=1,2 do
_=cC[b]bX={}az,as,bf=af,-af
for n,d in aT(_[a])do
az=x(az,d[2])as=z(as,d[3])bf=d
e=c[22][d[4][b+2]]if e and not bK then
aF(d[4][5])i=c[20][e[5]]ag(i[1]*p,i[2]*p,i[3]*p)bF.drawLine(d[1],u-d[2],d[1],Y(u-d[3]-1))end
end
if bf and bK then
I=bf[4]cy=(I[b]-g[2])bh=cos(g[3])bm=sin(g[3])for ap=Y(az+u),ceil(as+u)do
al=aL*cy/(u-ap)cg=bh*al-g[1][1]ch=bm*al-g[1][2]cj=-bm*al+cg
bU=bh*al+ch
ct=bm*al+cg
cw=-bh*al+ch
cH=(ct-cj)/L
cD=(cw-bU)/L
bX[ap]={cH,cD,cj,bU}end
for n,d in aT(_[a])do
if I[b+2]~=0 then
aF(I[5])k=I[b+2]e=c[22][k]e=c[22][k+(bH%e[4])]f=d[1]cn=D-(D-f)*K
az,as=Y(d[2]+u),ceil(d[3]+u)aA=e[3]for ap=az,as do
aI=bX[ap]cz=(aI[3]+aI[1]*cn)//aA
cr=(aI[4]+aI[2]*cn)//aA
R=6+(cr%e[1])+e[1]*(cz%e[2])i=c[20][e[R]]if i then
ag(i[1]*p,i[2]*p,i[3]*p)br(f,-ap+af,1,1)end
end
end
end
end
end
for n=1,#bb[a]do
_=s[bb[a][n]]if _[6]~=0 then
aQ=sub(_,g[1])o=_[20]if o>1 then
F=bu(aV(aQ)-g[3])o=o*cos(F)if A(F)<90 then
m=D-ax(tan(F)/K*D)aM=ax((Q+F+g[3]-_[3])/360*8)T=c[16][_[6]][1]if T~=0 and _[6]~=1 then
e=c[17][A(T)][aM%8+1]t=e<0 and-1 or 1
e=A(e)if e>0 then
e=c[23][e]ac,ao=e[1],e[2]O=x(bz(o//aY+1),8)y=D/(K*o)aN=y*bt
E=u+(g[2]-_[9])/o*aL
J=E-e[5]*aN
l=m-t*e[4]*y
y,aN=y*e[3],aN*e[3]aF(an[_[8]][5])p=T>0 and p or 1
cd=y*O
cB=cd*bt
cE=_[4]and c[15][_[4]][23]&8>0
for h=0,ac-1,O do
m=l+h*y*t
if a<=ba[bx(ax(m),0,L-1)]then
for j=0,ao-1,O do
R=e[7+j+h*ao]if R~=0 then
if cE then
bj=bj%50+1
ag(0,0,0,x(75*c[13][2][bj],255))else
i=c[20][R]ag(i[1]*p,i[2]*p,i[3]*p)end
br(m,J+j*aN,cd,cB)end
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
