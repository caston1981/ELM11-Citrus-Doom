
P=128
ao=180
G=math
N=G.max
B=G.min
aO=G.floor
pi=G.pi/ao
at=input.getNumber
ag=input.getBool
ac=output.setBool
o=true
w=false
z=ipairs
abs=G.abs
bg=table.remove
aH=string
function af(b,h)return{(b[1]+h[1]),(b[2]+h[2])}end
function sub(b,h)return{(b[1]-h[1]),(b[2]-h[2])}end
function bP(b)return G.sin(b*pi)end
function aP(b)return G.cos(b*pi)end
function J(b,h)return G.atan(h[2]-b[2],h[1]-b[1])/pi end
function E(b,h,aP)return N(B(aP,b),h)end
function v(b,h)return G.sqrt(((b[1]-h[1])^2)+((b[2]-h[2])^2))end
function O(b,h)return{aP(b)*h,bP(b)*h}end
function exp(b)return b[1],b[2]end
e={}ba=1
av=3
aE=o
ab=2
aB=0
az=0
aq=0
aI=0
R=0
aC=0
k=1
aS=0
bv=2
function aM(a,b,_)if a<2^15 then
_=e[7][a]return aM(_[_[3]*(b[2]-_[2])-_[4]*(b[1]-_[1])>0 and 8 or 7],b)else
a=e[5][e[6][a-2^15][2]]return V[e[3][e[2][a[4]][a[5]+6]][6]]end
end
function am(t,bo,A,bB,_)L=g[A]d=D[L[4]]aw,aj=d[18],d[19]I=aw
u=aM(#e[7],t)ah,ad=exp(u)ak=sub(t,aX)M=Y[2+ak[1]//P+ak[2]//P*bw]or{}for a,_ in z(M[0]or{})do
c=g[_]if _~=A and c and L[14]~=c then
l=v(c,t)H=D[c[4]]if c[20]then
U=l-H[18]if U<I and H[23]&1>0 and(d[23]&1>0 or E(t[9],c[9]-aj,c[9]+H[19])==t[9])then
bb=c
if bo==w then
return
end
I=U
b_=J(t,c)end
end
if A==1 and l<50 then
b=H[25]if b>0 then
for p,s in z(y[b])do
if s>0 and y[1][p]<y[2][p]then
c=y
g[_]=w
c[1][p]=aO(B(c[1][p]+s,c[2][p]))if E(p,5,12)==p then
ab=p-4
end
end
end
end
b=H[29]if b>0 then
b=e[11][b]for p=7,8 do
f[p]=E(f[p]+b[p*2-13],f[p],b[p*2-12])end
g[_]=w
end
end
end
end
_=(bB or 1)<8
if ad-ah<aj then
q=_ or aq%4>0 or u[6]<18 or aa(L,10)return
end
q=_ or aq%32>0 or u[6]~=5 or aa(L,10)for a=1,#M do
_=e[2][M[a]]l,bz=by(t,T[_[1]],T[_[2]])if l<I then
if _[3]&1>0 and d[23]&1>0 or _[3]&4==0 then
if A>1 or aG>0 or _[3]&4>0 then
I=l
b_=bz
end
else
aY,bd=B(_[9],ad),N(_[8],ah)if B(t[9],ad-aj)+24<bd or N(t[9],ah)+aj>aY or aY-bd<aj then
I=l
b_=bz
else
if bB==1 and(_[3]&512>0 or A==1)and(_[4]==2 or A>1)then
aW(_,_[5])end
ad,ah=aY,bd
end
end
end
end
u,bb={ah,ad}if bo then
if I~=aw then
_=af(t,O(b_,I-aw))t[1]=_[1]t[2]=_[2]end
return o
end
return I==aw
end
function by(r,x,ap)S=v(x,r)bD=J(x,ap)+90
bR=bD-J(r,x)aG,bh=exp(O(-bR,S))aD=bD
if aG<0 then
aD=aD+ao
end
if bh<0 then
return S,J(r,x)elseif bh>v(ap,x)then
return v(ap,r),J(r,ap)else
return abs(aG),aD
end
end
function ay(r,x,aN,A)aJ=v(r,x)au=aJ
aZ,q=o
U,aQ=exp(r)bQ,bO=exp(x)aK,aF=exp(sub(x,r))as,br=r[9]+32,x[9]+32
for a,_ in z(e[2])do
bF=T[_[1]]bu,bq=exp(sub(T[_[2]],bF))bk,bN=exp(sub(r,bF))bI=bq*aK-bu*aF
X=(bu*bN-bq*bk)/bI
bt=(aK*bN-aF*bk)/bI
if E(X,0,1)==X and E(bt,0,1)==bt then
bL={U+(X*aK),aQ+(X*aF)}l=v(r,bL)F=as+(br-as)*(l/aJ)if E(F,_[8]+1,_[9])~=F then
aZ=w
if aN==1 then
return
end
if l<au then
au=l
bH,bl=exp(bL)bi=F
bM=a
end
end
end
end
if aN>1 then
if aN==3 then
for a,_ in z(g)do
if _ and a~=A then
d=D[_[4]]if d[23]&1>0 and _[20]then
l=v(r,_)if l<au then
X=by(_,r,x)S=(l/aJ)F=as+(br-as)*S
if E(F,_[9],_[9]+d[19])==F and X<d[18]then
au=l
q,aZ=o
bH=U+(bQ-U)*S
bl=aQ+(bO-aQ)*S
bi=F
bM=a
end
end
end
end
end
end
return aZ,bM,{bH,bl,bi}end
return o
end
function httpReply()bn=az//2
az=0
end
function an()aC=aC%256+1
return e[13][1][aC]end
function aa(_,a,c)d=D[_[4]]if d[23]&2>0 and _[7]>0 then
_[8]=_[8]-(a+1)//2
_[7]=_[7]-a//2+B(_[8],0)_[8]=N(_[8],0)_[33]=d[13]~="lost soul missile state" and c or f
if an()<d[10]then
_[6]=d[9]_[15]=0
_[10]=o
end
end
end
function bm(b,h,ax)return h[20]and abs(((J(b,h)-b[3]+ao)%360)-ao)<ax and ay(b,h,1)end
function aL(C,A)bs=ae and(ae[9]-C[9])*n[6]/v(ae,C)or 0
for a=1,n[12]do
b={}for a=1,33 do
b[a]=C[a]end
b[4]=n[8]b[10]=o
b[14]=C
bJ=(an()/P-1)*n[10]bc=O(C[3]+bJ,n[6])if n[7]>0 then
g[#g+1]=b
d=D[b[4]]b[6]=d[3]b[9]=C[9]+n[13]b[11]=bc[1]b[12]=bc[2]b[17]=ab
b[19]=bs
else
c=af(C,bc)c[9]=f[9]+bs
aV,ar,c=ay(C,c,3,A)if not aV then
bA=sub(c,O(C[3]+bJ,1))g[#g+1]=b
b[1]=bA[1]b[2]=bA[2]b[6]=D[b[4]][3]b[9]=c[3]b[19]=1
if q then
b=g[ar]aa(b,n[9]*((an()&3)+2),C)end
end
end
end
end
function aW(_,c)if c>-1 then
b=e[9][c]if b[1]>0 or L[31]*_[10][2]-L[32]*_[10][1]<0 then
h=V[b[1]]ai[h and h[30]or#ai+1]={c,1,h or L}_[4]=b[7]b=b[8]>0 and aW(_,b[8])end
else
aE=o
av=-c
m[10]=-c
end
end
function bK()bj,ae=2048
for a,_ in z(g)do
if a>1 and _ and bm(f,_,10)then
l=v(_,f)if l<bj then
if D[_[4]][23]&2>0 then
ae=_
bj=l
end
end
end
end
end
function bx(_)if _[9]~=u[1]and not bp then
_[9]=u[1]_[10]=true
end
end
function onTick()ac(9,ag(32))ac(2,ag(11))ac(3,w)for j=1,3 do
if ag(32)and(not bC)or not e[21]then
bf=property.getText(ba)a=1
i=""
_=aH.sub(bf,a,a)while _~=""do
c=aH.byte(_)if c>64 then
i=(i..c-65)+0
if k==1 then
bG=i
e[i]=e[i]or{}elseif k==2 then
F=i
al=0
elseif k==3 then
aU=i
else
if al==0 then
al=F
aU=aU-1
aT={}e[bG][#e[bG]+1]=aT
end
aT[#aT+1]=i
al=al-1
k=N(al,aU)>0 and k-1 or 0
end
k=k+1
i=""
else
i=i.._
end
a=a+1
_=aH.sub(bf,a,a)end
ba=ba+1
bC=bf==""
end
end
if bC then
if aE then
ai,aE={}Z=1
for a=1,10 do
e[a]=e[a+10*av]end
g=e[1]T=e[4]V=e[8]Y=e[10]aX,Y[1]=Y[1]y=e[12]D=e[15]for a=14,16 do
y[1][a]=0
end
av=av+1
for a=#g,1,-1 do
_=g[a]for j=7,32 do
_[j]=0
end
_[7]=D[_[4]][4]_[9],_[10]=aM(#e[7],_)[1]if _[5]&bv<1 then
bg(g,a)elseif _[4]==1 then
if f then
_[7]=f[7]_[8]=f[8]end
f=_
end
end
bw=aX[3]end
for a,_ in z(e[2])do
_[10]=sub(T[_[2]],T[_[1]])if _[3]&4>0 then
d,H=V[e[3][_[6]][6]],V[e[3][_[7]][6]]_[8]=N(d[1],H[1])_[9],d[30],H[30]=B(d[2],H[2])else
_[8],_[9]=0,0
end
end
m={}for a=1,32 do
m[a]=0
end
aI=aI+1
R=B(R+1/bn,2/35)ac(1,R>=0)if R>=0 then
R=R-1/35
aq=aq+1
for a=2,#Y do
Y[a][0]={}end
for a,s in z(ai)do
_=e[9][s[1]]c=s[3]b=_[2]d=c[b]c[b]=E(_[3],d-_[4],d+_[4])+0
d=c[b]if d==_[3]then
ai[a]=s[2]==_[5]and{_[6],1,c}or{s[1],s[2]+1,c}if _[6]==0 then
bg(ai,a)end
end
c[10]=c[10]or d~=s
c[30]=a
end
for a,_ in z(g)do
if _ then
for j,s in z({1,2,9})do
_[s]=_[s]+_[s+10]end
_[15]=_[15]+1
d=D[_[4]]if _[7]<=0 and _[20]then
_[15]=0
_[6]=d[_[7]<=-d[4]and d[15]>1 and 15 or 14]_[10],_[20]=o
m[12]=d[16]if d[27]>0 then
c={}for j=1,30 do
c[j]=_[j]end
c[4]=d[27]c[6]=d[28]g[#g+1]=c
end
end
aR=e[16][_[6]]_[33]=_[33]and(_[33][20]and _[33]or f)if _[15]>=aR[2]and aR[2]~=-1 then
_[6]=aR[4]_[15]=0
W=e[16][_[6]][3]bp=d[23]&4>0
if W==1 then
for a,k in z(g)do
if k then
i=P-v(_,k)if i>0 then
aa(k,i)end
end
end
elseif W==2 then
if bm(_,f,90)then
_[33]=f
_[6]=d[5]m[12]=d[6]end
am(_,w,a,8)bx(_)elseif W==3 then
ax,q=aO(J(_,_[33])/45+.5)*45
k=1
while k<5 and not q do
i=af(_,O(ax+e[19][2][k],8))i[9]=_[9]q=am(i,w,a,k)and(u[1]>=i[9]-24 or bp)k=k+1
end
if q then
for j=1,2 do
_[30+j]=i[j]-_[j]_[j]=i[j]end
_[3]=ax
_[10]=o
else
am(_,w,a,8)end
bx(_)b=v(_,_[33])if d[13]>0 and ay(_,_[33],1)and B(b,230)<an()then
_[6]=d[13]end
if b<64 and d[12]>0 then
_[6]=d[12]end
elseif W==5 then
for a=1,11 do
f[3]=f[3]+e[19][9][a]n=e[14][23]bK()aL(f,1)end
f[3]=f[3]-20
elseif W>9 and _[20]then
_[3]=J(_,_[33])n=e[14][W]_[10]=o
ae=_[33]aL(_,a)end
end
if _[17]and _[17]>0 then
n=e[14][_[17]]if not am(_,w,a)or _[9]<=u[1]then
if bb then
aa(bb,d[21]*((an()&7)+1),_[14])end
_[1]=_[1]-_[11]_[2]=_[2]-_[12]_[3]=0
_[6]=D[_[4]][5]_[10]=o
_[11]=0
_[12],_[17]=0
m[12]=d[16]_[19]=0
end
end
if _[6]==1 then
g[a]=w
else
ak=sub(_,aX)M=Y[2+ak[1]//P+ak[2]//P*bw]if M then
M[0][#M[0]+1]=a
end
end
end
end
for a=1,8 do
if ag(a)and y[1][a+4]>0 then
ab=a
end
end
n=e[14][ab]f[3]=f[3]-at(3)*(E(aS,5,6)*1.5-6)aS=abs(at(3))*aS+1
Q=f
for a=1,2 do
Q=af(Q,O(f[3]-ao+90*a,at(a)*8.33))end
Q[9]=f[9]for a=1,8 do
q=am(Q,o,1,a)end
if q then
for a=1,2 do
f[30+a]=Q[a]-f[a]f[a]=Q[a]end
if f[9]>u[1]then
f[19]=f[19]-1
else
f[9]=B(u[1],f[9]+4)f[19]=N(0,f[19])end
else
f[19]=0
f[9]=u[1]end
be=y[1]c=n[1]if ag(31)and aB<=0 and(c==0 or be[c]>=n[2])then
ac(3,o)aB=n[3]if c>0 then
be[c]=be[c]-n[2]end
bK()aL(f,1)end
aB=aB-1
if at(4)<0 then
_=af(f,O(f[3],64))_[9]=f[9]aV,ar=ay(f,_,2,1)_=e[2][ar]if aV==w then
m[2]=ar
c,q=_[4]for a=14,16 do
q=q or y[1][a]>0 and c==a
end
if c==1 or q then
aW(_,_[5])elseif c>3000 and c<3005 then
bv=aO(c-3000)end
end
end
end
m[1]=ab
for a=3,14 do
m[a]=f[e[19][4][a]]or m[a]end
y[1][17]=bn
m[11]=y[1][aI%#y[1]+1]a=Z
bE=o
K=1
aA=#g+#V
while K<3 and bE do
c=K*9+6
if a<=#e[1]then
_=g[a]if _ then
if _[10]and a>1 then
m[c],_[10]=a
for j=1,8 do
m[c+j]=_[e[19][1][j]]end
K=K+1
end
else
m[c]=-a
bg(g,a)K=K+1
aA=aA-1
end
else
_=V[a-#g]if _[10]then
m[c],_[10]=a-#g+2^15
for j=1,6 do
m[c+j]=_[j]end
K=K+1
end
end
a=(a-2)%aA+1
Z=B(Z,aA)bE=a~=Z
end
Z=a
for a=1,32 do
output.setNumber(a,m[a])end
end
az=az+1
async.httpGet(8,"")end
