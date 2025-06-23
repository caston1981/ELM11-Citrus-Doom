
X=128
ah=180
F=math
N=F.max
A=F.min
ba=F.floor
pi=F.pi/ah
as=input.getNumber
ac=input.getBool
aj=output.setBool
n=true
x=false
C=ipairs
abs=F.abs
aI=table.remove
aX=string
function ab(b,h)return{(b[1]+h[1]),(b[2]+h[2])}end
function sub(b,h)return{(b[1]-h[1]),(b[2]-h[2])}end
function bR(b)return F.sin(b*pi)end
function aY(b)return F.cos(b*pi)end
function K(b,h)return F.atan(h[2]-b[2],h[1]-b[1])/pi end
function H(b,h,aY)return N(A(aY,b),h)end
function w(b,h)return F.sqrt(((b[1]-h[1])^2)+((b[2]-h[2])^2))end
function M(b,h)return{aY(b)*h,bR(b)*h}end
function exp(b)return b[1],b[2]end
e={}aO=1
aB=3
bg=n
am=2
az=0
ax=0
aA=0
aU=0
Y=0
b_=0
l=1
aS=0
bn=2
function aD(a,b,_)if a<2^15 then
_=e[7][a]return aD(_[_[3]*(b[2]-_[2])-_[4]*(b[1]-_[1])>0 and 8 or 7],b)else
a=e[5][e[6][a-2^15][2]]return Q[e[3][e[2][a[4]][a[5]+6]][6]]end
end
function aa(t,bJ,B,bj,_)L=g[B]d=z[L[4]]aq,al=d[18],d[19]I=aq
u=aD(#e[7],t)ad,ak=exp(u)Z=sub(t,aT)O=T[2+Z[1]//X+Z[2]//X*bG]or{}for a,_ in C(O[0]or{})do
c=g[_]if _~=B and c and L[14]~=c then
k=w(c,t)E=z[c[4]]if c[20]then
S=k-E[18]if S<I and E[23]&1>0 and(d[23]&1>0 or H(t[9],c[9]-al,c[9]+E[19])==t[9])then
aN=c
if bJ==x then
return
end
I=S
bd=K(t,c)end
end
if B==1 and k<50 then
b=E[25]if b>0 then
for p,s in C(y[b])do
if s>0 and y[1][p]<y[2][p]then
c=y
g[_]=x
c[1][p]=ba(A(c[1][p]+s,c[2][p]))if H(p,5,12)==p then
am=p-4
end
end
end
end
b=E[29]if b>0 then
b=e[11][b]for p=7,8 do
f[p]=H(f[p]+b[p*2-13],f[p],b[p*2-12])end
g[_]=x
end
end
end
end
_=(bj or 1)<8
if ak-ad<al then
q=_ or aA%4>0 or u[6]<18 or ai(L,10)return
end
q=_ or aA%32>0 or u[6]~=5 or ai(L,10)for a=1,#O do
_=e[2][O[a]]k,bz=bE(t,V[_[1]],V[_[2]])if k<I then
if _[3]&1>0 and d[23]&1>0 or _[3]&4==0 then
if B>1 or aF>0 or _[3]&4>0 then
I=k
bd=bz
end
else
aG,bb=A(_[9],ak),N(_[8],ad)if A(t[9],ak-al)+24<bb or N(t[9],ad)+al>aG or aG-bb<al then
I=k
bd=bz
else
if bj==1 and(_[3]&512>0 or B==1)and(_[4]==2 or B>1)then
aJ(_,_[5])end
ak,ad=aG,bb
end
end
end
end
u,aN={ad,ak}if bJ then
if I~=aq then
_=ab(t,M(bd,I-aq))t[1]=_[1]t[2]=_[2]end
return n
end
return I==aq
end
function bE(r,v,aw)P=w(v,r)bN=K(v,aw)+90
bQ=bN-K(r,v)aF,bF=exp(M(-bQ,P))aE=bN
if aF<0 then
aE=aE+ah
end
if bF<0 then
return P,K(r,v)elseif bF>w(aw,v)then
return w(aw,r),K(r,aw)else
return abs(aF),aE
end
end
function ar(r,v,be,B)aH=w(r,v)au=aH
aM,q=n
S,aL=exp(r)bP,bO=exp(v)bc,aZ=exp(sub(v,r))at,bI=r[9]+32,v[9]+32
for a,_ in C(e[2])do
bl=V[_[1]]bi,bk=exp(sub(V[_[2]],bl))bH,bv=exp(sub(r,bl))by=bk*bc-bi*aZ
U=(bi*bv-bk*bH)/by
bt=(bc*bv-aZ*bH)/by
if H(U,0,1)==U and H(bt,0,1)==bt then
bm={S+(U*bc),aL+(U*aZ)}k=w(r,bm)G=at+(bI-at)*(k/aH)if H(G,_[8]+1,_[9])~=G then
aM=x
if be==1 then
return
end
if k<au then
au=k
bC,bu=exp(bm)br=G
bx=a
end
end
end
end
if be>1 then
if be==3 then
for a,_ in C(g)do
if _ and a~=B then
d=z[_[4]]if d[23]&1>0 and _[20]then
k=w(r,_)if k<au then
U=bE(_,r,v)P=(k/aH)G=at+(bI-at)*P
if H(G,_[9],_[9]+d[19])==G and U<d[18]then
au=k
q,aM=n
bC=S+(bP-S)*P
bu=aL+(bO-aL)*P
br=G
bx=a
end
end
end
end
end
end
return aM,bx,{bC,bu,br}end
return n
end
function httpReply()bD=ax//2
ax=0
end
function an()b_=b_%256+1
return e[13][1][b_]end
function ai(_,a,c)d=z[_[4]]if d[23]&2>0 and _[7]>0 then
_[8]=_[8]-(a+1)//2
_[7]=_[7]-a//2+A(_[8],0)_[8]=N(_[8],0)_[33]=d[13]~="lost soul missile state" and c or f
if an()<d[10]then
_[6]=d[9]_[15]=0
_[10]=n
end
end
end
function bo(b,h,ay)return h[20]and abs(((K(b,h)-b[3]+ah)%360)-ah)<ay and ar(b,h,1)end
function aC(D,B)bh=ao and(ao[9]-D[9])*o[6]/w(ao,D)or 0
for a=1,o[12]do
b={}for a=1,33 do
b[a]=D[a]end
b[4]=o[8]b[10]=n
b[14]=D
bK=(an()/X-1)*o[10]bf=M(D[3]+bK,o[6])if o[7]>0 then
g[#g+1]=b
d=z[b[4]]b[6]=d[3]b[9]=D[9]+o[13]b[11]=bf[1]b[12]=bf[2]b[17]=am
b[19]=bh
else
c=ab(D,bf)c[9]=f[9]+bh
aK,av,c=ar(D,c,3,B)if not aK then
bs=sub(c,M(D[3]+bK,1))g[#g+1]=b
b[1]=bs[1]b[2]=bs[2]b[6]=z[b[4]][3]b[9]=c[3]b[19]=1
if q then
b=g[av]ai(b,o[9]*((an()&3)+2),D)end
end
end
end
end
function aJ(_,c)if c>-1 then
b=e[9][c]if b[1]>0 or L[31]*_[10][2]-L[32]*_[10][1]<0 then
h=Q[b[1]]ag[h and h[30]or#ag+1]={c,1,h or L}_[4]=b[7]b=b[8]>0 and aJ(_,b[8])end
else
bg=n
aB=-c
m[10]=-c
end
end
function bL()bB,ao=2048
for a,_ in C(g)do
if a>1 and _ and bo(f,_,10)then
k=w(_,f)if k<bB then
if z[_[4]][23]&2>0 then
ao=_
bB=k
end
end
end
end
end
function bp(_)if _[9]~=u[1]and not bw then
_[9]=u[1]_[10]=true
end
end
function onTick()aj(9,ac(32))aj(2,ac(11))aj(3,x)for j=1,3 do
if ac(32)and(not bA)or not e[21]then
aQ=property.getText(aO)a=1
i=""
_=aX.sub(aQ,a,a)while _~=""do
c=aX.byte(_)if c>64 then
i=(i..c-65)+0
if l==1 then
bq=i
e[i]=e[i]or{}elseif l==2 then
G=i
ae=0
elseif l==3 then
aP=i
else
if ae==0 then
ae=G
aP=aP-1
aV={}e[bq][#e[bq]+1]=aV
end
aV[#aV+1]=i
ae=ae-1
l=N(ae,aP)>0 and l-1 or 0
end
l=l+1
i=""
else
i=i.._
end
a=a+1
_=aX.sub(aQ,a,a)end
aO=aO+1
bA=aQ==""
end
end
if bA then
if bg then
ag,bg={}af=1
for a=1,10 do
e[a]=e[a+10*aB]end
g=e[1]V=e[4]Q=e[8]T=e[10]aT,T[1]=T[1]y=e[12]z=e[15]for a=14,16 do
y[1][a]=0
end
aB=aB+1
for a=#g,1,-1 do
_=g[a]for j=7,32 do
_[j]=0
end
_[7]=z[_[4]][4]_[9],_[10]=aD(#e[7],_)[1]if _[5]&bn<1 then
aI(g,a)elseif _[4]==1 then
if f then
_[7]=f[7]_[8]=f[8]end
f=_
end
end
bG=aT[3]end
for a,_ in C(e[2])do
_[10]=sub(V[_[2]],V[_[1]])if _[3]&4>0 then
d,E=Q[e[3][_[6]][6]],Q[e[3][_[7]][6]]_[8]=N(d[1],E[1])_[9],d[30],E[30]=A(d[2],E[2])else
_[8],_[9]=0,0
end
end
m={}for a=1,32 do
m[a]=0
end
aU=aU+1
Y=A(Y+1/bD,2/35)aj(1,Y>=0)if Y>=0 then
Y=Y-1/35
aA=aA+1
for a=2,#T do
T[a][0]={}end
for a,s in C(ag)do
_=e[9][s[1]]c=s[3]b=_[2]d=c[b]c[b]=H(_[3],d-_[4],d+_[4])+0
d=c[b]if d==_[3]then
ag[a]=s[2]==_[5]and{_[6],1,c}or{s[1],s[2]+1,c}if _[6]==0 then
aI(ag,a)end
end
c[10]=c[10]or d~=s
c[30]=a
end
for a,_ in C(g)do
if _ then
for j,s in C({1,2,9})do
_[s]=_[s]+_[s+10]end
_[15]=_[15]+1
d=z[_[4]]if _[7]<=0 and _[20]then
_[15]=0
_[6]=d[_[7]<=-d[4]and d[15]>1 and 15 or 14]_[10],_[20]=n
m[12]=d[16]if d[27]>0 then
c={}for j=1,30 do
c[j]=_[j]end
c[4]=d[27]c[6]=d[28]g[#g+1]=c
end
end
aW=e[16][_[6]]_[33]=_[33]and(_[33][20]and _[33]or f)if _[15]>=aW[2]and aW[2]~=-1 then
_[6]=aW[4]_[15]=0
W=e[16][_[6]][3]bw=d[23]&4>0
if W==1 then
for a,l in C(g)do
if l then
i=X-w(_,l)if i>0 then
ai(l,i)end
end
end
elseif W==2 then
if bo(_,f,90)then
_[33]=f
_[6]=d[5]m[12]=d[6]end
aa(_,x,a,8)bp(_)elseif W==3 then
ay,q=ba(K(_,_[33])/45+.5)*45
l=1
while l<5 and not q do
i=ab(_,M(ay+e[19][2][l],8))i[9]=_[9]q=aa(i,x,a,l)and(u[1]>=i[9]-24 or bw)l=l+1
end
if q then
for j=1,2 do
_[30+j]=i[j]-_[j]_[j]=i[j]end
_[3]=ay
_[10]=n
else
aa(_,x,a,8)end
bp(_)b=w(_,_[33])if d[13]>0 and ar(_,_[33],1)and A(b,230)<an()then
_[6]=d[13]end
if b<64 and d[12]>0 then
_[6]=d[12]end
elseif W==5 then
for a=1,11 do
f[3]=f[3]+e[19][9][a]o=e[14][23]bL()aC(f,1)end
f[3]=f[3]-20
elseif W>9 and _[20]then
_[3]=K(_,_[33])o=e[14][W]_[10]=n
ao=_[33]aC(_,a)end
end
if _[17]and _[17]>0 then
o=e[14][_[17]]if not aa(_,x,a)or _[9]<=u[1]then
if aN then
ai(aN,d[21]*((an()&7)+1),_[14])end
_[1]=_[1]-_[11]_[2]=_[2]-_[12]_[3]=0
_[6]=z[_[4]][5]_[10]=n
_[11]=0
_[12],_[17]=0
m[12]=d[16]_[19]=0
end
end
if _[6]==1 then
g[a]=x
else
Z=sub(_,aT)O=T[2+Z[1]//X+Z[2]//X*bG]if O then
O[0][#O[0]+1]=a
end
end
end
end
for a=1,8 do
if ac(a)and y[1][a+4]>0 then
am=a
end
end
o=e[14][am]f[3]=f[3]-as(3)*(H(aS,5,6)*1.5-6)aS=abs(as(3))*aS+1
R=f
for a=1,2 do
R=ab(R,M(f[3]-ah+90*a,as(a)*8.33))end
R[9]=f[9]for a=1,8 do
q=aa(R,n,1,a)end
if q then
for a=1,2 do
f[30+a]=R[a]-f[a]f[a]=R[a]end
if f[9]>u[1]then
f[19]=f[19]-1
else
f[9]=A(u[1],f[9]+4)f[19]=N(0,f[19])end
else
f[19]=0
f[9]=u[1]end
aR=y[1]c=o[1]if ac(31)and az<=0 and(c==0 or aR[c]>=o[2])then
aj(3,n)az=o[3]if c>0 then
aR[c]=aR[c]-o[2]end
bL()aC(f,1)end
az=az-1
if as(4)<0 then
_=ab(f,M(f[3],64))_[9]=f[9]aK,av=ar(f,_,2,1)_=e[2][av]if aK==x then
m[2]=av
c,q=_[4]for a=14,16 do
q=q or y[1][a]>0 and c==a
end
if c==1 or q then
aJ(_,_[5])elseif c>3000 and c<3005 then
bn=ba(c-3000)end
end
end
end
m[1]=am
for a=3,14 do
m[a]=f[e[19][4][a]]or m[a]end
y[1][17]=bD
m[11]=y[1][aU%#y[1]+1]a=af
bM=n
J=1
ap=#g+#Q
while J<3 and bM do
c=J*9+6
if a<=#e[1]then
_=g[a]if _ then
if _[10]and a>1 then
m[c],_[10]=a
for j=1,8 do
m[c+j]=_[e[19][1][j]]end
J=J+1
end
else
m[c]=-a
aI(g,a)J=J+1
ap=ap-1
end
else
_=Q[a-#g]if _[10]then
m[c],_[10]=a-#g+2^15
for j=1,6 do
m[c+j]=_[j]end
J=J+1
end
end
a=(a-2)%ap+1
af=A(af,ap)bM=a~=af
end
af=a
for a=1,32 do
output.setNumber(a,m[a])end
end
ax=ax+1
async.httpGet(8,"")end
