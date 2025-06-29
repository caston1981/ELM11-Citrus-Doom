
Q=128
aa=180
G=math
M=G.max
C=G.min
aE=G.floor
pi=G.pi/aa
aq=input.getNumber
ai=input.getBool
ab=output.setBool
n=true
z=false
w=ipairs
abs=G.abs
bf=table.remove
exp=table.unpack
b_=string
function am(b,h)return{(b[1]+h[1]),(b[2]+h[2])}end
function sub(b,h)return{(b[1]-h[1]),(b[2]-h[2])}end
function bO(b)return G.sin(b*pi)end
function aM(b)return G.cos(b*pi)end
function I(b,h)return G.atan(h[2]-b[2],h[1]-b[1])/pi end
function F(b,h,aM)return M(C(aM,b),h)end
function y(b,h)return G.sqrt(((b[1]-h[1])^2)+((b[2]-h[2])^2))end
function L(b,h)return{aM(b)*h,bO(b)*h}end
e={}bg=1
at=3
aJ=n
aj=2
aB=0
aw=0
aA=0
aX=0
S=0
aO=0
k=1
be=0
bu=2
function aD(a,b,_)if a<2^15 then
_=e[7][a]return aD(_[_[3]*(b[2]-_[2])-_[4]*(b[1]-_[1])>0 and 8 or 7],b)else
a=e[5][e[6][a-2^15][2]]return X[e[3][e[2][a[4]][a[5]+6]][6]]end
end
function ac(u,bR,B,bB,_)O=g[B]d=D[O[4]]az,ae=d[18],d[19]J,aG=az
x=aD(#e[7],u)al,ag=exp(x)Z=sub(u,aC)N=P[2+Z[1]//Q+Z[2]//Q*bJ]or{}for a,_ in w(N[0]or{})do
c=g[_]if _~=B and c and O[14]~=c then
l=y(c,u)H=D[c[4]]if c[20]then
V=l-H[18]if V<J and H[23]&1>0 and(d[23]&1>0 or F(u[9],c[9]-ae,c[9]+H[19])==u[9])then
aG=c
J=V
aP=I(u,c)end
end
if B<2 and l<50 then
b=H[25]if b>0 then
for p,t in w(s[b])do
if t>0 and s[1][p]<s[2][p]then
c=s
g[_]=z
c[1][p]=aE(C(c[1][p]+t,c[2][p]))if F(p,5,12)==p then
aj=p-4
end
end
end
end
b=H[29]if b>0 then
b=e[11][b]for p=7,8 do
f[p]=F(f[p]+b[p*2-13],f[p],b[p*2-12])end
g[_]=z
end
end
end
end
_=bB<8
if ag-al<ae then
r=_ or aA%4>0 or x[6]<18 or ak(O,10)return
end
r=_ or aA%32>0 or x[6]~=5 or s[1][18]>0 or ak(O,5)for a=1,#N do
_=e[2][N[a]]l,bD=bq(u,W[_[1]],W[_[2]])if l<J then
if _[3]&1>0 and d[23]&1>0 or _[3]&4<1 then
if B>1 or aL>0 or _[3]&4>0 then
J=l
aP=bD
end
else
aK,aY=C(_[9],ag),M(_[8],al)if C(u[9],ag-ae)+24<aY or M(u[9],al)+ae>aK or aK-aY<ae then
J=l
aP=bD
else
if bB<2 and(_[3]&512>0 or B<2)and(_[4]==2 or B>1)then
aH(_,_[5])end
ag,al=aK,aY
end
end
end
end
x={al,ag}if bR then
if J~=az then
_=am(u,L(aP,J-az))u[1]=_[1]u[2]=_[2]end
return n
end
return J==az
end
function bq(q,v,ay)R=y(v,q)bj=I(v,ay)+90
bN=bj-I(q,v)aL,bC=exp(L(-bN,R))aU=bj
if aL<0 then
aU=aU+aa
end
if bC<0 then
return R,I(q,v)elseif bC>y(ay,v)then
return y(ay,q),I(q,ay)else
return abs(aL),aU
end
end
function ar(q,v,aI,B)bd=y(q,v)ap=bd
aT,r=n
V,ba=exp(q)bP,bQ=exp(v)bc,aR=exp(sub(v,q))au,bn=q[9]+32,v[9]+32
for a,_ in w(e[2])do
bH=W[_[1]]bp,bG=exp(sub(W[_[2]],bH))by,bo=exp(sub(q,bH))bE=bG*bc-bp*aR
U=(bp*bo-bG*by)/bE
bl=(bc*bo-aR*by)/bE
if F(U,0,1)==U and F(bl,0,1)==bl then
bw={V+(U*bc),ba+(U*aR)}l=y(q,bw)E=au+(bn-au)*(l/bd)if F(E,_[8]+1,_[9])~=E then
if l<ap then
aT=z
if aI==1 then
return
end
ap=l
bK,bM=exp(bw)bv=E
br=a
end
end
end
end
if aI>1 then
if aI>2 then
for a,_ in w(g)do
if _ and a~=B then
d=D[_[4]]if d[23]&1>0 and _[20]then
l=y(q,_)if l<ap then
U=bq(_,q,v)R=(l/bd)E=au+(bn-au)*R
if F(E,_[9],_[9]+d[19])==E and U<d[18]then
ap=l
r,aT=n
bK=V+(bP-V)*R
bM=ba+(bQ-ba)*R
bv=E
br=a
end
end
end
end
end
end
return aT,br,{bK,bM,bv}end
return n
end
function httpReply()bh=aw//2
aw=0
end
function af()aO=aO%256+1
return e[13][1][aO]end
function ak(_,a,c)d=D[_[4]]if d[23]&2>0 and _[7]>0 then
_[8]=_[8]-(a+1)//2
_[7]=_[7]-a//2+C(_[8],0)_[8]=M(_[8],0)_[33]=d[13]~="lost soul missile state" and c or f
if af()<d[10]then
_[6]=d[9]_[15]=0
_[10]=n
end
end
end
function bk(b,h,ax)return h[20]and abs(((I(b,h)-b[3]+aa)%360)-aa)<ax and ar(b,h,1)end
function bb(A,B)bi=ah and(ah[9]-A[9])*o[6]/y(ah,A)or 0
for a=1,o[12]do
b={}for a=1,33 do
b[a]=A[a]end
b[4]=o[8]b[10]=n
b[14]=A
bm=(af()/Q-1)*o[10]aN=L(A[3]+bm,o[6])if o[7]>0 then
g[#g+1]=b
d=D[b[4]]b[6]=d[3]b[9]=A[9]+o[13]b[11]=aN[1]b[12]=aN[2]b[17]=aj
b[19]=bi
else
c=am(A,aN)c[9]=f[9]+bi
aW,as,c=ar(A,c,3,B)if not aW then
bF=sub(c,L(A[3]+bm,1))g[#g+1]=b
b[1]=bF[1]b[2]=bF[2]b[6]=D[b[4]][3]b[9]=c[3]b[19]=1
if r then
b=g[as]ak(b,o[9]*((af()&3)+2),A)end
end
end
end
end
function aH(_,c)if c>-1 then
b=e[9][c]if b[1]>0 or O[31]*_[10][2]-O[32]*_[10][1]<0 then
h=X[b[1]]an[h and h[30]or#an+1]={c,1,h or O}_[4]=b[7]b=b[8]>0 and aH(_,b[8])end
else
aJ=n
at=-c
m[10]=-c
end
end
function bI()bt,ah=2048
for a,_ in w(g)do
if a>1 and _ and bk(f,_,10)then
l=y(_,f)if l<bt then
if D[_[4]][23]&2>0 then
ah=_
bt=l
end
end
end
end
end
function bL(_)if _[9]~=x[1]and not bz then
_[9]=x[1]_[10]=true
end
end
function onTick()ab(9,ai(32))ab(2,ai(11))ab(3,z)for i=1,3 do
if ai(32)and(not bs)or not e[21]then
aV=property.getText(bg)a=1
j=""
_=b_.sub(aV,a,a)while _~=""do
c=b_.byte(_)if c>64 then
j=(j..c-65)+0
if k==1 then
bx=j
e[j]=e[j]or{}elseif k==2 then
E=j
ad=0
elseif k==3 then
aZ=j
else
if ad==0 then
ad=E
aZ=aZ-1
aQ={}e[bx][#e[bx]+1]=aQ
end
aQ[#aQ+1]=j
ad=ad-1
k=M(ad,aZ)>0 and k-1 or 0
end
k=k+1
j=""
else
j=j.._
end
a=a+1
_=b_.sub(aV,a,a)end
bg=bg+1
bs=aV==""
end
end
if bs then
if aJ then
an,aJ={}ao=1
for a=1,10 do
e[a]=e[a+10*at]end
g=e[1]W=e[4]X=e[8]P=e[10]aC,P[1]=P[1]s=e[12]D=e[15]for a=14,16 do
s[1][a]=0
end
at=at+1
for a=#g,1,-1 do
_=g[a]for i=7,32 do
_[i]=0
end
_[7]=D[_[4]][4]_[9],_[10]=aD(#e[7],_)[1]if _[5]&bu<1 then
bf(g,a)elseif _[4]==1 then
if f then
_[7]=f[7]_[8]=f[8]end
f=_
end
end
bJ=aC[3]end
for a,_ in w(e[2])do
_[10]=sub(W[_[2]],W[_[1]])if _[3]&4>0 then
d,H=X[e[3][_[6]][6]],X[e[3][_[7]][6]]_[8]=M(d[1],H[1])_[9],d[30],H[30]=C(d[2],H[2])else
_[8],_[9]=0,0
end
end
m={}for a=1,32 do
m[a]=0
end
aX=aX+1
S=C(S+1/bh,2/35)ab(1,S>=0)if S>=0 then
S=S-1/35
aA=aA+1
for a=2,#P do
P[a][0]={}end
for a,t in w(an)do
_=e[9][t[1]]c=t[3]b=_[2]d=c[b]c[b]=F(_[3],d-_[4],d+_[4])+0
d=c[b]if d==_[3]then
an[a]=t[2]==_[5]and{_[6],1,c}or{t[1],t[2]+1,c}if _[6]==0 then
bf(an,a)end
end
c[10]=c[10]or d~=t
c[30]=a
end
for a,_ in w(g)do
if _ then
Z=sub(_,aC)N=P[2+Z[1]//Q+Z[2]//Q*bJ]if N then
N[0][#N[0]+1]=a
end
end
end
for a,_ in w(g)do
if _ then
for i,t in w({1,2,9})do
_[t]=_[t]+_[t+10]end
_[15]=_[15]+1
d=D[_[4]]if _[7]<=0 and _[20]then
_[15]=0
_[6]=d[_[7]<=-d[4]and d[15]>1 and 15 or 14]_[10],_[20]=n
m[12]=d[16]if d[27]>0 then
c={}for i=1,30 do
c[i]=_[i]end
c[4]=d[27]c[6]=d[28]g[#g+1]=c
end
end
aS=e[16][_[6]]_[33]=_[33]and(_[33][20]and _[33]or f)if _[15]>=aS[2]and aS[2]~=-1 then
_[6]=aS[4]_[15]=0
T=e[16][_[6]][3]bz=d[23]&4>0
if T==1 then
for i,k in w(g)do
if k then
j=Q-y(_,k)if j>0 then
ak(k,j)end
end
end
elseif T==2 then
if bk(_,f,90)then
_[33]=f
_[6]=d[5]m[12]=d[6]end
ac(_,z,a,8)bL(_)elseif T==3 then
ax,r=aE(I(_,_[33])/45+.5)*45
k=1
while k<5 and not r do
j=am(_,L(ax+e[19][2][k],8))j[9]=_[9]r=ac(j,z,a,k)and(x[1]>=j[9]-24 or bz)k=k+1
end
if r then
for i=1,2 do
_[30+i]=j[i]-_[i]_[i]=j[i]end
_[3]=ax
_[10]=n
else
ac(_,z,a,8)end
bL(_)b=y(_,_[33])if d[13]>0 and ar(_,_[33],1)and C(b,230)<af()then
_[6]=d[13]end
if b<64 and d[12]>0 then
_[6]=d[12]end
elseif T==5 then
for i=1,11 do
f[3]=f[3]+e[19][9][i]o=e[14][23]bI()bb(f,1)end
f[3]=f[3]-20
elseif T>9 and _[20]then
_[3]=I(_,_[33])o=e[14][T]_[10]=n
ah=_[33]bb(_,a)end
end
if _[17]and _[17]>0 then
o=e[14][_[17]]if not ac(_,z,a,2)or _[9]<=x[1]then
if aG then
ak(aG,d[21]*((af()&7)+1),_[14])end
_[1]=_[1]-_[11]_[2]=_[2]-_[12]_[3]=0
_[6]=D[_[4]][5]_[10]=n
_[11]=0
_[12],_[17]=0
m[12]=d[16]_[19]=0
end
end
if _[6]==1 then
g[a]=z
end
end
end
for a=1,8 do
if ai(a)and s[1][a+4]>0 then
aj=a
end
end
o=e[14][aj]s[1][18]=s[1][18]-1
f[3]=f[3]-aq(3)*(F(be,5,6)*1.5-6)be=abs(aq(3))*be+1
Y=f
for a=1,2 do
Y=am(Y,L(f[3]-aa+90*a,aq(a)*8.33))end
Y[9]=f[9]for a=1,8 do
r=ac(Y,n,1,a)end
if r then
for a=1,2 do
f[30+a]=Y[a]-f[a]f[a]=Y[a]end
if f[9]>x[1]then
f[19]=f[19]-1
else
f[9]=C(x[1],f[9]+4)f[19]=M(0,f[19])end
else
f[19]=0
f[9]=x[1]end
aF=s[1]c=o[1]if ai(31)and aB<=0 and aF[c]>=o[2]then
ab(3,n)aB=o[3]if c>0 then
aF[c]=aF[c]-o[2]end
bI()bb(f,1)end
aB=aB-1
if aq(4)<0 then
_=am(f,L(f[3],64))_[9]=f[9]aW,as=ar(f,_,2,1)_=e[2][as]if aW==z then
m[2]=as
c,r=_[4]for a=14,16 do
r=r or s[1][a]>0 and c==a
end
if c==1 or r then
aH(_,_[5])elseif c>3000 and c<3005 then
bu=aE(c-3000)end
end
end
end
m[1]=aj
for a=3,14 do
m[a]=f[e[19][4][a]]or m[a]end
s[1][17]=bh
m[11]=s[1][aX%#s[1]+1]a=ao
bA=n
K=1
av=#g+#X
while K<3 and bA do
c=K*9+6
if a<=#e[1]then
_=g[a]if _ then
if _[10]and a>1 then
m[c],_[10]=a
for i=1,8 do
m[c+i]=_[e[19][1][i]]end
K=K+1
end
else
m[c]=-a
bf(g,a)K=K+1
av=av-1
end
else
_=X[a-#g]if _[10]then
m[c],_[10]=a-#g+2^15
for i=1,6 do
m[c+i]=_[i]end
K=K+1
end
end
a=(a-2)%av+1
ao=C(ao,av)bA=a~=ao
end
ao=a
for a=1,32 do
output.setNumber(a,m[a])end
end
aw=aw+1
async.httpGet(8,"")end
