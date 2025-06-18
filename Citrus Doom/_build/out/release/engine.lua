
Y=128
O=180
F=math
M=F.max
y=F.min
aO=F.floor
pi=F.pi
as=input.getNumber
ao=input.getBool
ai=output.setBool
n=true
v=false
B=ipairs
abs=F.abs
aL=table.remove
aX=string
function ab(b,g)return{(b[1]+g[1]),(b[2]+g[2])}end
function sub(b,g)return{(b[1]-g[1]),(b[2]-g[2])}end
function bi(b)return F.sin(b/O*pi)end
function af(b)return F.cos(b/O*pi)end
function K(b,g)return F.atan(g[2]-b[2],g[1]-b[1])*O/pi end
function G(b,g,af)return M(y(af,b),g)end
function w(b,g)return F.sqrt(((b[1]-g[1])^2)+((b[2]-g[2])^2))end
function V(b,g)return{af(b)*g,bi(b)*g}end
function exp(b)return b[1],b[2]end
f={}bg=1
aq=3
bd=n
am=2
aB=0
av=0
ba=0
aI=0
aa=0
aY=0
l=1
aF=0
bL=2
function aV(a,b,_)if a<2^15 then
_=f[7][a]return aV(_[_[3]*(b[2]-_[2])-_[4]*(b[1]-_[1])>0 and 8 or 7],b)else
a=f[5][f[6][a-32768][2]]return S[f[3][f[2][a[4]][a[5]+6]][6]]end
end
function an(t,bt,C,bn,_)W=h[C]d=A[W[4]]ap,al=d[18],d[19]I=ap
z=aV(#f[7],t)U,ae=exp(z)ak=sub(t,aR)L=R[2+ak[1]//Y+ak[2]//Y*br]or{}for a,_ in B(L[0]or{})do
c=h[_]if _~=C and c and W[14]~=c then
k=w(c,t)H=A[c[4]]if c[20]then
P=k-H[18]if P<I and H[23]&1>0 and(d[23]&1>0 or G(t[9],c[9]-al,c[9]+H[19])==t[9])then
aZ=c
if bt==v then
return
end
I=P
aQ=K(t,c)end
end
if C==1 then
if k<50 then
b=H[25]if b>0 then
for q,s in B(x[b])do
if s>0 and x[1][q]<x[2][q]then
c=x
h[_]=v
c[1][q]=aO(y(c[1][q]+s,c[2][q]))if G(q,5,12)==q then
am=q-4
end
end
end
end
b=H[29]if b>0 then
b=f[11][b]for q=7,8 do
e[q]=G(e[q]+b[q*2-13],e[q],b[q*2-12])end
h[_]=v
end
end
end
end
end
if ae-U<al or U>t[9]+24 then
r=(bn or 1)<8 or ba%4>0 or z[6]<18 or aA(W,10)return
end
for a=1,#L do
_=f[2][L[a]]k,bu=bM(t,Q[_[1]],Q[_[2]])if k<I then
if(_[3]&1>0 and d[23]&1>0)or _[3]&4==0 then
if C>1 or aJ>0 or _[3]&4>0 then
I=k
aQ=bu
end
else
aG,bc=y(_[9],ae),M(_[8],U)if y(t[9],ae-al)+24<bc or M(t[9],U)+al>aG or aG-bc<al then
I=k
aQ=bu
else
if bn==1 and(_[3]&512>0 or C==1)and(_[4]==2 or C>1)then
aK(_,_[5])end
ae,U=aG,bc
end
end
end
end
z,aZ={U,ae}if bt then
if I~=ap then
_=ab(t,V(aQ,I-ap))t[1]=_[1]t[2]=_[2]end
return n
end
return I==ap
end
function bM(p,u,at)N=w(u,p)bv=K(u,at)+90
bp=bv-K(p,u)bz=-N*bi(bp)aJ=N*af(bp)aT=bv
if aJ<0 then
aT=aT+O
end
if bz<0 then
return N,K(p,u)elseif bz>w(at,u)then
return w(at,p),K(p,at)else
return abs(aJ),aT
end
end
function au(p,u,aH,C,_)aU=w(p,u)az=aU
aD,r=n
P,bb=exp(p)bQ,bR=exp(u)aN,aC=exp(sub(u,p))ar,bm=p[9]+32,u[9]+32
for a,_ in B(f[2])do
bA=Q[_[1]]bD,bJ=exp(sub(Q[_[2]],bA))bB,bN=exp(sub(p,bA))bs=bJ*aN-bD*aC
X=(bD*bN-bJ*bB)/bs
bk=(aN*bN-aC*bB)/bs
if G(X,0,1)==X and G(bk,0,1)==bk then
bx={P+(X*aN),bb+(X*aC)}k=w(p,bx)E=ar+(bm-ar)*(k/aU)if G(E,_[8]+1,_[9])~=E then
aD=v
if aH==1 then
return
end
if k<az then
az=k
bP,bl=exp(bx)bh=E
bG=a
end
end
end
end
if aH>1 then
if aH==3 then
for a,_ in B(h)do
if _ and a~=C then
d=A[_[4]]if d[23]&1>0 and _[20]then
k=w(p,_)if k<az then
X=bM(_,p,u)N=(k/aU)E=ar+(bm-ar)*N
if G(E,_[9],_[9]+d[19])==E and X<d[18]then
az=k
r,aD=n
bP=P+(bQ-P)*N
bl=bb+(bR-bb)*N
bh=E
bG=a
end
end
end
end
end
end
return aD,bG,{bP,bl,bh}end
return n
end
function httpReply(b,g,af)by=av//2
av=0
end
function ad()aY=aY%256+1
return f[13][1][aY]end
function aA(_,a,c)d=A[_[4]]if d[23]&2>0 and _[7]>0 then
_[8]=_[8]-(a+1)//2
_[7]=_[7]-a//2+y(_[8],0)_[8]=M(_[8],0)_[41]=d[13]~="lost soul missile state" and c or e
if ad()<d[10]then
_[6]=d[9]_[15]=0
_[10]=n
end
end
end
function bH(b,g,ax)return g[20]and abs(((K(b,g)-b[3]+O)%360)-O)<ax and au(b,g,1)end
function aM(D,C)bC=ah and(ah[9]-D[9])*o[6]/w(ah,D)or 0
for a=1,o[12]do
b={}for a=1,30 do
b[a]=D[a]end
b[4]=o[8]b[10]=n
b[14]=D
bj=(ad()/Y-1)*o[10]aE=V(D[3]+bj,o[6])if o[7]>0 then
h[#h+1]=b
d=A[b[4]]b[6]=d[3]b[9]=D[9]+o[13]b[11]=aE[1]b[12]=aE[2]b[17]=am
b[19]=bC
else
c=ab(D,aE)c[9]=e[9]+bC
be,ay,c=au(D,c,3,C)if not be then
bI=sub(c,V(D[3]+bj,1))h[#h+1]=b
b[1]=bI[1]b[2]=bI[2]b[6]=A[b[4]][3]b[9]=c[3]b[19]=1
if r then
b=h[ay]aA(b,o[9]*((ad()&3)+2),D)end
end
end
end
end
function aK(_,c)if c>-1 then
b=f[9][c]if b[1]>0 or W[31]*_[10][2]-W[32]*_[10][1]<0 then
g=S[b[1]]ag[g and g[30]or#ag+1]={c,1,g or W}_[4]=b[7]b=b[8]>0 and aK(_,b[8])end
else
bd=n
aq=-c
m[10]=-c
end
end
function bo()bw,ah=2048
for a,_ in B(h)do
if a>1 and _ and bH(e,_,10)then
k=w(_,e)if k<bw then
if A[_[4]][23]&2>0 then
ah=_
bw=k
end
end
end
end
end
function bF(_)if _[9]~=z[1]and not bK then
_[9]=z[1]_[10]=true
end
end
function onTick()ai(9,ao(32))ai(2,ao(11))ai(3,v)for j=1,3 do
if ao(32)and(not bE)or not f[21]then
b_=property.getText(bg)a=1
i=""
_=aX.sub(b_,a,a)while _~=""do
c=aX.byte(_)if c>64 then
i=(i..c-65)+0
if l==1 then
bq=i
f[i]=f[i]or{}elseif l==2 then
E=i
aj=0
elseif l==3 then
aW=i
else
if aj==0 then
aj=E
aW=aW-1
aP={}f[bq][#f[bq]+1]=aP
end
aP[#aP+1]=i
aj=aj-1
l=M(aj,aW)>0 and l-1 or 0
end
l=l+1
i=""
else
i=i.._
end
a=a+1
_=aX.sub(b_,a,a)end
bg=bg+1
bE=b_==""
end
end
if bE then
if bd then
ag,bd={}ac=1
for a=1,10 do
f[a]=f[a+10*aq]end
h=f[1]Q=f[4]S=f[8]R=f[10]aR,R[1]=R[1]x=f[12]A=f[15]for a=14,16 do
x[1][a]=0
end
aq=aq+1
for a=#h,1,-1 do
_=h[a]for j=7,40 do
_[j]=0
end
_[7]=A[_[4]][4]_[9],_[10]=aV(#f[7],_)[1]if _[5]&bL<1 then
aL(h,a)elseif _[4]==1 then
if e then
_[7]=e[7]_[8]=e[8]end
e=_
end
end
br=aR[3]end
for a,_ in B(f[2])do
_[10]=sub(Q[_[2]],Q[_[1]])if _[3]&4>0 then
d,H=S[f[3][_[6]][6]],S[f[3][_[7]][6]]_[8]=M(d[1],H[1])_[9],d[30],H[30]=y(d[2],H[2])else
_[8],_[9]=0,0
end
end
m={}for a=1,32 do
m[a]=0
end
aI=aI+1
aa=y(aa+1/by,2/35)ai(1,aa>=0)if aa>=0 then
aa=aa-1/35
ba=ba+1
for a=2,#R do
R[a][0]={}end
for a,s in B(ag)do
_=f[9][s[1]]c=s[3]b=_[2]d=c[b]c[b]=G(_[3],d-_[4],d+_[4])+0
d=c[b]if d==_[3]then
ag[a]=s[2]==_[5]and{_[6],1,c}or{s[1],s[2]+1,c}if _[6]==0 then
aL(ag,a)end
end
c[10]=c[10]or d~=s
c[30]=a
end
for a,_ in B(h)do
if _ then
for j,s in B({1,2,9})do
_[s]=_[s]+_[s+10]end
_[15]=_[15]+1
d=A[_[4]]if _[7]<=0 and _[20]then
_[15]=0
_[6]=d[_[7]<=-d[4]and d[15]>1 and 15 or 14]_[10],_[20]=n
m[12]=d[16]if d[27]>0 then
c={}for j=1,30 do
c[j]=_[j]end
c[4]=d[27]c[6]=d[28]h[#h+1]=c
end
end
bf=f[16][_[6]]_[41]=_[41]and(_[41][20]and _[41]or e)if _[15]>=bf[2]and bf[2]~=-1 then
_[6]=bf[4]_[15]=0
T=f[16][_[6]][3]bK=d[23]&4>0
if T==1 then
for a,l in B(h)do
if l then
i=Y-w(_,l)if i>0 then
aA(l,i)end
end
end
elseif T==2 then
if bH(_,e,90)then
_[41]=e
_[6]=d[5]m[12]=d[6]end
an(_,v,a,8)bF(_)elseif T==3 then
ax,r=aO(K(_,_[41])/45+.5)*45
l=1
while l<5 and not r do
i=ab(_,V(ax+f[19][2][l],8))i[9]=_[9]r=an(i,v,a,l)and(z[1]>=i[9]-24 or bK)l=l+1
end
if r then
for j=1,2 do
_[30+j]=i[j]-_[j]_[j]=i[j]end
_[3]=ax
_[10]=n
else
an(_,v,a,8)end
bF(_)b=w(_,_[41])if d[13]>0 and au(_,_[41],1)and y(b,230)<ad()then
_[6]=d[13]end
if b<64 and d[12]>0 then
_[6]=d[12]end
elseif T==5 then
for a=1,11 do
e[3]=e[3]+f[19][9][a]o=f[14][23]bo()aM(e,1)end
e[3]=e[3]-20
elseif T>9 and _[20]then
_[3]=K(_,_[41])o=f[14][T]_[10]=n
ah=_[41]aM(_,a)end
end
if _[17]and _[17]>0 then
o=f[14][_[17]]if not an(_,v,a)or _[9]<=z[1]then
if aZ then
aA(aZ,d[21]*((ad()&7)+1),_[14])end
_[1]=_[1]-_[11]_[2]=_[2]-_[12]_[3]=0
_[6]=A[_[4]][5]_[10]=n
_[11]=0
_[12],_[17]=0
m[12]=d[16]_[19]=0
end
end
if _[6]==1 then
h[a]=v
else
ak=sub(_,aR)L=R[2+ak[1]//Y+ak[2]//Y*br]if L then
L[0][#L[0]+1]=a
end
end
end
end
for a=1,8 do
if ao(a)and x[1][a+4]>0 then
am=a
end
end
o=f[14][am]e[3]=e[3]-as(3)*(G(aF,5,6)*1.5-6)aF=abs(as(3))*aF+1
Z=e
for a=1,2 do
Z=ab(Z,V(e[3]-O+90*a,as(a)*8.33))end
Z[9]=e[9]for a=1,8 do
r=an(Z,n,1,a)end
if r then
for a=1,2 do
e[30+a]=Z[a]-e[a]e[a]=Z[a]end
if e[9]>z[1]then
e[19]=e[19]-1
else
e[9]=y(z[1],e[9]+4)e[19]=M(0,e[19])end
else
e[19]=0
e[9]=z[1]end
aS=x[1]c=o[1]if ao(31)and aB<=0 and(c==0 or aS[c]>=o[2])then
ai(3,n)aB=o[3]if c>0 then
aS[c]=aS[c]-o[2]end
bo()aM(e,1)end
aB=aB-1
if as(4)<0 then
_=ab(e,V(e[3],64))_[9]=e[9]be,ay=au(e,_,2,1)_=f[2][ay]if be==v then
m[2]=ay
c,r=_[4]for a=14,16 do
r=r or x[1][a]>0 and c==a
end
if c==1 or r then
aK(_,_[5])elseif c>3000 and c<3005 then
bL=aO(c-3000)end
end
end
end
m[1]=am
for a=3,14 do
m[a]=e[f[19][4][a]]or m[a]end
x[1][17]=by
m[11]=x[1][aI%#x[1]+1]a=ac
bO=n
J=1
aw=#h+#S
while J<3 and bO do
c=J*9+6
if a<=#h then
_=h[a]if a~=1 then
if _ then
if _[10]then
m[c],_[10]=a
for j=1,8 do
m[c+j]=_[f[19][1][j]]end
J=J+1
end
else
m[c]=-a
aL(h,a)J=J+1
aw=aw-1
end
end
else
_=S[a-#h]if _[10]then
m[c],_[10]=a-#h+2^15
for j=1,6 do
m[c+j]=_[j]end
J=J+1
end
end
a=(a-2)%aw+1
ac=y(ac,aw)bO=a~=ac
end
ac=a
for a=1,32 do
output.setNumber(a,m[a])end
end
av=av+1
async.httpGet(8,"")end
