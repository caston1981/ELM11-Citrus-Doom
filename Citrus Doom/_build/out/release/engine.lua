
R=128
ad=180
F=math
M=F.max
B=F.min
aF=F.floor
pi=F.pi/ad
ap=input.getNumber
ah=input.getBool
ak=output.setBool
o=true
y=false
A=ipairs
abs=F.abs
aL=table.remove
aI=string
function aj(b,g)return{(b[1]+g[1]),(b[2]+g[2])}end
function sub(b,g)return{(b[1]-g[1]),(b[2]-g[2])}end
function bP(b)return F.sin(b*pi)end
function aE(b)return F.cos(b*pi)end
function K(b,g)return F.atan(g[2]-b[2],g[1]-b[1])/pi end
function G(b,g,aE)return M(B(aE,b),g)end
function u(b,g)return F.sqrt(((b[1]-g[1])^2)+((b[2]-g[2])^2))end
function O(b,g)return{aE(b)*g,bP(b)*g}end
function exp(b)return b[1],b[2]end
e={}aO=1
as=3
bf=o
Z=2
ar=0
ay=0
aq=0
aC=0
S=0
bc=0
l=1
aG=0
bD=2
function aS(a,b,_)if a<2^15 then
_=e[7][a]return aS(_[_[3]*(b[2]-_[2])-_[4]*(b[1]-_[1])>0 and 8 or 7],b)else
a=e[5][e[6][a-2^15][2]]return Q[e[3][e[2][a[4]][a[5]+6]][6]]end
end
function ai(t,bL,D,bA,_)N=h[D]d=z[N[4]]aw,an=d[18],d[19]J=aw
x=aS(#e[7],t)ao,ab=exp(x)am=sub(t,aV)L=W[2+am[1]//R+am[2]//R*bo]or{}for a,_ in A(L[0]or{})do
c=h[_]if _~=D and c and N[14]~=c then
k=u(c,t)E=z[c[4]]if c[20]then
V=k-E[18]if V<J and E[23]&1>0 and(d[23]&1>0 or G(t[9],c[9]-an,c[9]+E[19])==t[9])then
aH=c
if bL==y then
return
end
J=V
aR=K(t,c)end
end
if D==1 and k<50 then
b=E[25]if b>0 then
for q,s in A(w[b])do
if s>0 and w[1][q]<w[2][q]then
c=w
h[_]=y
c[1][q]=aF(B(c[1][q]+s,c[2][q]))if G(q,5,12)==q then
Z=q-4
end
end
end
end
b=E[29]if b>0 then
b=e[11][b]for q=7,8 do
f[q]=G(f[q]+b[q*2-13],f[q],b[q*2-12])end
h[_]=y
end
end
end
end
_=(bA or 1)<8
if ab-ao<an then
r=_ or aq%4>0 or x[6]<18 or al(N,10)return
end
r=_ or aq%32>0 or x[6]~=5 or al(N,10)for a=1,#L do
_=e[2][L[a]]k,bB=bk(t,U[_[1]],U[_[2]])if k<J then
if _[3]&1>0 and d[23]&1>0 or _[3]&4==0 then
if D>1 or be>0 or _[3]&4>0 then
J=k
aR=bB
end
else
aU,bb=B(_[9],ab),M(_[8],ao)if B(t[9],ab-an)+24<bb or M(t[9],ao)+an>aU or aU-bb<an then
J=k
aR=bB
else
if bA==1 and(_[3]&512>0 or D==1)and(_[4]==2 or D>1)then
aD(_,_[5])end
ab,ao=aU,bb
end
end
end
end
x,aH={ao,ab}if bL then
if J~=aw then
_=aj(t,O(aR,J-aw))t[1]=_[1]t[2]=_[2]end
return o
end
return J==aw
end
function bk(p,v,ax)X=u(v,p)bq=K(v,ax)+90
bO=bq-K(p,v)be,bK=exp(O(-bO,X))aT=bq
if be<0 then
aT=aT+ad
end
if bK<0 then
return X,K(p,v)elseif bK>u(ax,v)then
return u(ax,p),K(p,ax)else
return abs(be),aT
end
end
function av(p,v,bd,D)aW=u(p,v)au=aW
aM,r=o
V,aY=exp(p)bR,bQ=exp(v)aP,bg=exp(sub(v,p))aB,bH=p[9]+32,v[9]+32
for a,_ in A(e[2])do
bi=U[_[1]]bE,bn=exp(sub(U[_[2]],bi))bl,by=exp(sub(p,bi))bC=bn*aP-bE*bg
P=(bE*by-bn*bl)/bC
bj=(aP*by-bg*bl)/bC
if G(P,0,1)==P and G(bj,0,1)==bj then
bh={V+(P*aP),aY+(P*bg)}k=u(p,bh)H=aB+(bH-aB)*(k/aW)if G(H,_[8]+1,_[9])~=H then
aM=y
if bd==1 then
return
end
if k<au then
au=k
bz,bt=exp(bh)bm=H
bp=a
end
end
end
end
if bd>1 then
if bd==3 then
for a,_ in A(h)do
if _ and a~=D then
d=z[_[4]]if d[23]&1>0 and _[20]then
k=u(p,_)if k<au then
P=bk(_,p,v)X=(k/aW)H=aB+(bH-aB)*X
if G(H,_[9],_[9]+d[19])==H and P<d[18]then
au=k
r,aM=o
bz=V+(bR-V)*X
bt=aY+(bQ-aY)*X
bm=H
bp=a
end
end
end
end
end
end
return aM,bp,{bz,bt,bm}end
return o
end
function httpReply()bG=ay//2
ay=0
end
function ac()bc=bc%256+1
return e[13][1][bc]end
function al(_,a,c)d=z[_[4]]if d[23]&2>0 and _[7]>0 then
_[8]=_[8]-(a+1)//2
_[7]=_[7]-a//2+B(_[8],0)_[8]=M(_[8],0)_[33]=d[13]~="lost soul missile state" and c or f
if ac()<d[10]then
_[6]=d[9]_[15]=0
_[10]=o
end
end
end
function bJ(b,g,aA)return g[20]and abs(((K(b,g)-b[3]+ad)%360)-ad)<aA and av(b,g,1)end
function aQ(C,D)bs=ae and(ae[9]-C[9])*n[6]/u(ae,C)or 0
for a=1,n[12]do
b={}for a=1,33 do
b[a]=C[a]end
b[4]=n[8]b[10]=o
b[14]=C
bu=(ac()/R-1)*n[10]aZ=O(C[3]+bu,n[6])if n[7]>0 then
h[#h+1]=b
d=z[b[4]]b[6]=d[3]b[9]=C[9]+n[13]b[11]=aZ[1]b[12]=aZ[2]b[17]=Z
b[19]=bs
else
c=aj(C,aZ)c[9]=f[9]+bs
aX,az,c=av(C,c,3,D)if not aX then
bI=sub(c,O(C[3]+bu,1))h[#h+1]=b
b[1]=bI[1]b[2]=bI[2]b[6]=z[b[4]][3]b[9]=c[3]b[19]=1
if r then
b=h[az]al(b,n[9]*((ac()&3)+2),C)end
end
end
end
end
function aD(_,c)if c>-1 then
b=e[9][c]if b[1]>0 or N[31]*_[10][2]-N[32]*_[10][1]<0 then
g=Q[b[1]]af[g and g[30]or#af+1]={c,1,g or N}_[4]=b[7]b=b[8]>0 and aD(_,b[8])end
else
bf=o
as=-c
m[10]=-c
end
end
function bF()br,ae=2048
for a,_ in A(h)do
if a>1 and _ and bJ(f,_,10)then
k=u(_,f)if k<br then
if z[_[4]][23]&2>0 then
ae=_
br=k
end
end
end
end
end
function bM(_)if _[9]~=x[1]and not bx then
_[9]=x[1]_[10]=true
end
end
function onTick()ak(9,ah(32))ak(2,ah(11))ak(3,y)for j=1,3 do
if ah(32)and(not bN)or not e[21]then
aJ=property.getText(aO)a=1
i=""
_=aI.sub(aJ,a,a)while _~=""do
c=aI.byte(_)if c>64 then
i=(i..c-65)+0
if l==1 then
bv=i
e[i]=e[i]or{}elseif l==2 then
H=i
aa=0
elseif l==3 then
b_=i
else
if aa==0 then
aa=H
b_=b_-1
aK={}e[bv][#e[bv]+1]=aK
end
aK[#aK+1]=i
aa=aa-1
l=M(aa,b_)>0 and l-1 or 0
end
l=l+1
i=""
else
i=i.._
end
a=a+1
_=aI.sub(aJ,a,a)end
aO=aO+1
bN=aJ==""
end
end
if bN then
if bf then
af,bf={}ag=1
for a=1,10 do
e[a]=e[a+10*as]end
h=e[1]U=e[4]Q=e[8]W=e[10]aV,W[1]=W[1]w=e[12]z=e[15]for a=14,16 do
w[1][a]=0
end
as=as+1
for a=#h,1,-1 do
_=h[a]for j=7,32 do
_[j]=0
end
_[7]=z[_[4]][4]_[9],_[10]=aS(#e[7],_)[1]if _[5]&bD<1 then
aL(h,a)elseif _[4]==1 then
if f then
_[7]=f[7]_[8]=f[8]end
f=_
end
end
bo=aV[3]end
for a,_ in A(e[2])do
_[10]=sub(U[_[2]],U[_[1]])if _[3]&4>0 then
d,E=Q[e[3][_[6]][6]],Q[e[3][_[7]][6]]_[8]=M(d[1],E[1])_[9],d[30],E[30]=B(d[2],E[2])else
_[8],_[9]=0,0
end
end
m={}for a=1,32 do
m[a]=0
end
aC=aC+1
S=B(S+1/bG,2/35)ak(1,S>=0)if S>=0 then
S=S-1/35
aq=aq+1
for a=2,#W do
W[a][0]={}end
for a,s in A(af)do
_=e[9][s[1]]c=s[3]b=_[2]d=c[b]c[b]=G(_[3],d-_[4],d+_[4])+0
d=c[b]if d==_[3]then
af[a]=s[2]==_[5]and{_[6],1,c}or{s[1],s[2]+1,c}if _[6]==0 then
aL(af,a)end
end
c[10]=c[10]or d~=s
c[30]=a
end
for a,_ in A(h)do
if _ then
for j,s in A({1,2,9})do
_[s]=_[s]+_[s+10]end
_[15]=_[15]+1
d=z[_[4]]if _[7]<=0 and _[20]then
_[15]=0
_[6]=d[_[7]<=-d[4]and d[15]>1 and 15 or 14]_[10],_[20]=o
m[12]=d[16]if d[27]>0 then
c={}for j=1,30 do
c[j]=_[j]end
c[4]=d[27]c[6]=d[28]h[#h+1]=c
end
end
aN=e[16][_[6]]_[33]=_[33]and(_[33][20]and _[33]or f)if _[15]>=aN[2]and aN[2]~=-1 then
_[6]=aN[4]_[15]=0
Y=e[16][_[6]][3]bx=d[23]&4>0
if Y==1 then
for a,l in A(h)do
if l then
i=R-u(_,l)if i>0 then
al(l,i)end
end
end
elseif Y==2 then
if bJ(_,f,90)then
_[33]=f
_[6]=d[5]m[12]=d[6]end
ai(_,y,a,8)bM(_)elseif Y==3 then
aA,r=aF(K(_,_[33])/45+.5)*45
l=1
while l<5 and not r do
i=aj(_,O(aA+e[19][2][l],8))i[9]=_[9]r=ai(i,y,a,l)and(x[1]>=i[9]-24 or bx)l=l+1
end
if r then
for j=1,2 do
_[30+j]=i[j]-_[j]_[j]=i[j]end
_[3]=aA
_[10]=o
else
ai(_,y,a,8)end
bM(_)b=u(_,_[33])if d[13]>0 and av(_,_[33],1)and B(b,230)<ac()then
_[6]=d[13]end
if b<64 and d[12]>0 then
_[6]=d[12]end
elseif Y==5 then
for a=1,11 do
f[3]=f[3]+e[19][9][a]n=e[14][23]bF()aQ(f,1)end
f[3]=f[3]-20
elseif Y>9 and _[20]then
_[3]=K(_,_[33])n=e[14][Y]_[10]=o
ae=_[33]aQ(_,a)end
end
if _[17]and _[17]>0 then
n=e[14][_[17]]if not ai(_,y,a)or _[9]<=x[1]then
if aH then
al(aH,d[21]*((ac()&7)+1),_[14])end
_[1]=_[1]-_[11]_[2]=_[2]-_[12]_[3]=0
_[6]=z[_[4]][5]_[10]=o
_[11]=0
_[12],_[17]=0
m[12]=d[16]_[19]=0
end
end
if _[6]==1 then
h[a]=y
else
am=sub(_,aV)L=W[2+am[1]//R+am[2]//R*bo]if L then
L[0][#L[0]+1]=a
end
end
end
end
for a=1,8 do
if ah(a)and w[1][a+4]>0 then
Z=a
end
end
n=e[14][Z]f[3]=f[3]-ap(3)*(G(aG,5,6)*1.5-6)aG=abs(ap(3))*aG+1
T=f
for a=1,2 do
T=aj(T,O(f[3]-ad+90*a,ap(a)*8.33))end
T[9]=f[9]for a=1,8 do
r=ai(T,o,1,a)end
if r then
for a=1,2 do
f[30+a]=T[a]-f[a]f[a]=T[a]end
if f[9]>x[1]then
f[19]=f[19]-1
else
f[9]=B(x[1],f[9]+4)f[19]=M(0,f[19])end
else
f[19]=0
f[9]=x[1]end
ba=w[1]c=n[1]if ah(31)and ar<=0 and(c==0 or ba[c]>=n[2])then
ak(3,o)ar=n[3]if c>0 then
ba[c]=ba[c]-n[2]end
bF()aQ(f,1)end
ar=ar-1
if ap(4)<0 then
_=aj(f,O(f[3],64))_[9]=f[9]aX,az=av(f,_,2,1)_=e[2][az]if aX==y then
m[2]=az
c,r=_[4]for a=14,16 do
r=r or w[1][a]>0 and c==a
end
if c==1 or r then
aD(_,_[5])elseif c>3000 and c<3005 then
bD=aF(c-3000)end
end
end
end
m[1]=Z
for a=3,14 do
m[a]=f[e[19][4][a]]or m[a]end
w[1][17]=bG
m[11]=w[1][aC%#w[1]+1]a=ag
bw=o
I=1
at=#h+#Q
while I<3 and bw do
c=I*9+6
if a<=#e[1]then
_=h[a]if _ then
if _[10]and a>1 then
m[c],_[10]=a
for j=1,8 do
m[c+j]=_[e[19][1][j]]end
I=I+1
end
else
m[c]=-a
aL(h,a)I=I+1
at=at-1
end
else
_=Q[a-#h]if _[10]then
m[c],_[10]=a-#h+2^15
for j=1,6 do
m[c+j]=_[j]end
I=I+1
end
end
a=(a-2)%at+1
ag=B(ag,at)bw=a~=ag
end
ag=a
for a=1,32 do
output.setNumber(a,m[a])end
end
ay=ay+1
async.httpGet(8,"")end
