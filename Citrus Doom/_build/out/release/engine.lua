
R=128
M=180
E=math
N=E.max
A=E.min
aQ=E.floor
pi=E.pi
ax=input.getNumber
al=input.getBool
ab=output.setBool
n=true
j=false
B=ipairs
abs=E.abs
aF=table.remove
aI=string
function ae(b,h)return{(b[1]+h[1]),(b[2]+h[2])}end
function sub(b,h)return{(b[1]-h[1]),(b[2]-h[2])}end
function bt(b)return E.sin(b/M*pi)end
function ac(b)return E.cos(b/M*pi)end
function K(b,h)return E.atan(h[2]-b[2],h[1]-b[1])*M/pi end
function F(b,h,ac)return N(A(ac,b),h)end
function y(b,h)return E.sqrt(((b[1]-h[1])^2)+((b[2]-h[2])^2))end
function T(b,h)return{ac(b)*h,bt(b)*h}end
function exp(b)return b[1],b[2]end
e={}ba=1
aw=3
aY=j
aM=n
aj=2
ay=0
aq=0
aE=0
bh=0
X=0
bd=0
m=1
aL=0
bP=2
function bc(a,b,_)if a<2^15 then
_=e[7][a]return bc(_[_[3]*(b[2]-_[2])-_[4]*(b[1]-_[1])>0 and 8 or 7],b)else
a=e[5][e[6][a-32768][2]]return W[e[3][e[2][a[4]][a[5]+6]][6]]end
end
function ag(u,bx,v,bp,_)U=g[v]f=z[U[4]]as,ah=f[18],f[19]I=as
C=bc(#e[7],u)P,af=exp(C)an=sub(u,b_)L=Y[2+an[1]//R+an[2]//R*bo]or{}for a,_ in B(L[0]or{})do
c=g[_]if _~=v and c and U[14]~=_ then
l=y(c,u)H=z[c[4]]if c[20]then
Z=l-H[18]if Z<I and H[23]&1>0 and(f[23]&1>0 or F(u[9],c[9]-ah,c[9]+H[19])==u[9])then
aT=c
if bx==j then
return j
end
I=Z
aO=K(u,c)end
end
if v==1 then
if l<50 then
b=H[25]if b>0 then
for q,s in B(x[b])do
if s>0 and x[1][q]<x[2][q]then
c=x
g[_]=j
c[1][q]=aQ(A(c[1][q]+s,c[2][q]))if F(q,5,12)==q then
aj=q-4
end
end
end
end
b=H[29]if b>0 then
b=e[11][b]for q=7,8 do
d[q]=F(d[q]+b[q*2-13],d[q],b[q*2-12])end
g[_]=j
end
end
end
end
end
if af-P<ah or P>u[9]+24 then
t=(bp or 1)<8 or aE%4>0 or C[6]<18 or at(U,10)return j
end
for a=1,#L do
_=e[2][L[a]]l,bu=bF(u,S[_[1]],S[_[2]])if l<I then
if(_[3]&1>0 and f[23]&1>0)or _[3]&4==0 then
if v>1 or aK>0 or _[3]&4>0 then
I=l
aO=bu
end
else
aC,aR=A(_[9],af),N(_[8],P)if A(u[9],af-ah)+24<aR or N(u[9],P)+ah>aC or aC-aR<ah then
I=l
aO=bu
else
if bp==1 and(_[3]&512>0 or v==1)and(_[4]==2 or v>1)then
aZ(_,_[5])end
af,P=aC,aR
end
end
end
end
C,aT={P,af}if bx then
if I~=as then
_=ae(u,T(aO,I-as))u[1]=_[1]u[2]=_[2]end
return n
end
return I==as
end
function bF(p,w,ar)O=y(w,p)bj=K(w,ar)+90
bH=bj-K(p,w)bK=-O*bt(bH)aK=O*ac(bH)bf=bj
if aK<0 then
bf=bf+M
end
if bK<0 then
return O,K(p,w)elseif bK>y(ar,w)then
return y(ar,p),K(p,ar)else
return abs(aK),bf
end
end
function au(p,w,aU,v,_)bb=y(p,w)av=bb
aV=n
Z,aX=exp(p)bR,bQ=exp(w)aD,aJ=exp(sub(w,p))az,bw=p[9]+32,w[9]+32
t=j
for a,_ in B(e[2])do
bq=S[_[1]]bC,bI=exp(sub(S[_[2]],bq))bG,bn=exp(sub(p,bq))bz=bI*aD-bC*aJ
Q=(bC*bn-bI*bG)/bz
bA=(aD*bn-aJ*bG)/bz
if F(Q,0,1)==Q and F(bA,0,1)==bA then
bL={Z+(Q*aD),aX+(Q*aJ)}l=y(p,bL)D=az+(bw-az)*(l/bb)if F(D,_[8]+1,_[9])~=D then
aV=j
if aU==1 then
return j
end
if l<av then
av=l
br,bJ=exp(bL)bs=D
bE=a
end
end
end
end
if aU>1 then
if aU==3 then
for a,_ in B(g)do
if _ and a~=v then
f=z[_[4]]if f[23]&1>0 and _[20]then
l=y(p,_)if l<av then
Q=bF(_,p,w)O=(l/bb)D=az+(bw-az)*O
if F(D,_[9],_[9]+f[19])==D and Q<f[18]then
av=l
t=n
aV=j
br=Z+(bR-Z)*O
bJ=aX+(bQ-aX)*O
bs=D
bE=a
end
end
end
end
end
end
return aV,bE,{br,bJ,bs}end
return n
end
function httpReply(b,h,ac)bN=aq//2
aq=0
end
function ao()bd=bd%256+1
return e[13][1][bd]end
function at(_,a,c)f=z[_[4]]if f[23]&2>0 and _[7]>0 then
_[8]=_[8]-(a+1)//2
_[7]=_[7]-a//2+A(_[8],0)_[8]=N(_[8],0)if ao()<f[10]then
_[6]=f[9]_[15]=0
_[23]=c or d
_[10]=n
end
end
end
function bv(b,h,aA)return h[20]and abs(((K(b,h)-b[3]+M)%360)-M)<aA and au(b,h,1)end
function aH(G,v)bm=ad and(ad[9]-G[9])*o[6]/y(ad,G)or 0
for a=1,o[12]do
b={}for a=1,30 do
b[a]=G[a]end
b[4]=o[8]b[10]=n
b[14]=v
bM=(ao()/R-1)*o[10]be=T(G[3]+bM,o[6])if o[7]>0 then
g[#g+1]=b
f=z[b[4]]b[6]=f[3]b[9]=G[9]+o[13]b[11]=be[1]b[12]=be[2]b[17]=aj
b[19]=bm
else
c=ae(G,be)c[9]=d[9]+bm
aG,aB,c=au(G,c,3,v)if not aG then
bk=sub(c,T(G[3]+bM,1))g[#g+1]=b
b[1]=bk[1]b[2]=bk[2]b[6]=z[b[4]][3]b[9]=c[3]b[19]=1
if t then
b=g[aB]at(b,o[9]*((ao()&3)+2),G)end
end
end
end
end
function aZ(_,c)if c>-1 then
b=e[9][c]if b[1]>0 or U[31]*_[10][2]-U[32]*_[10][1]<0 then
h=W[b[1]]ak[h and h[30]or#ak+1]={c,1,h or U}_[4]=b[7]b=b[8]>0 and aZ(_,b[8])end
else
aM=n
aw=-c
r[9]=-c
end
end
function bB()bO,ad=2048
for a,_ in B(g)do
if a>1 and _ and bv(d,_,10)then
l=y(_,d)if l<bO then
if z[_[4]][23]&2>0 then
ad=_
bO=l
end
end
end
end
end
function bD(_)if _[9]~=C[1]and not bl then
_[9]=C[1]_[10]=true
end
end
function onTick()ab(9,al(32))ab(2,al(11))ab(3,j)for k=1,3 do
if al(32)and(not aY)or not e[21]then
aW=property.getText(ba)a=1
i=""
_=aI.sub(aW,a,a)while _~=""do
c=aI.byte(_)if c>64 then
i=(i..c-65)+0
if m==1 then
bi=i
e[i]=e[i]or{}elseif m==2 then
D=i
am=0
elseif m==3 then
bg=i
else
if am==0 then
am=D
bg=bg-1
aP={}e[bi][#e[bi]+1]=aP
end
aP[#aP+1]=i
am=am-1
m=N(am,bg)>0 and m-1 or 0
end
m=m+1
i=""
else
i=i.._
end
a=a+1
_=aI.sub(aW,a,a)end
ba=ba+1
aY=aW==""
end
end
if aY then
if aM then
ak,aM={}ai=1
for a=1,10 do
e[a]=e[a+10*aw]end
g=e[1]S=e[4]W=e[8]Y=e[10]b_,Y[1]=Y[1]x=e[12]z=e[15]for a=14,16 do
x[1][a]=0
end
aw=aw+1
for a=#g,1,-1 do
_=g[a]for k=7,40 do
_[k]=0
end
_[7]=z[_[4]][4]_[9],_[10]=bc(#e[7],_)[1]if _[5]&bP<1 then
aF(g,a)elseif _[4]==1 then
if d then
_[7]=d[7]_[8]=d[8]end
d=_
end
end
bo=b_[3]end
for a,_ in B(e[2])do
_[10]=sub(S[_[2]],S[_[1]])if _[3]&4>0 then
f,H=W[e[3][_[6]][6]],W[e[3][_[7]][6]]_[8]=N(f[1],H[1])_[9],f[30],H[30]=A(f[2],H[2])else
_[8],_[9]=0,0
end
end
r={}for a=1,32 do
r[a]=0
end
bh=bh+1
X=A(X+1/bN,2/35)ab(1,X>=0)if X>=0 then
X=X-1/35
aE=aE+1
for a=2,#Y do
Y[a][0]={}end
for a,s in B(ak)do
_=e[9][s[1]]c=s[3]b=_[2]f=c[b]c[b]=F(_[3],f-_[4],f+_[4])+0
f=c[b]if f==_[3]then
ak[a]=s[2]==_[5]and{_[6],1,c}or{s[1],s[2]+1,c}if _[6]==0 then
aF(ak,a)end
end
c[10]=c[10]or f~=s
c[30]=a
end
for a,_ in B(g)do
if _ then
for k,s in B({1,2,9})do
_[s]=_[s]+_[s+10]end
_[15]=_[15]+1
f=z[_[4]]if _[7]<=0 and _[20]then
_[15]=0
_[6]=f[_[7]<=-f[4]and f[15]>1 and 15 or 14]_[10],_[20]=n
if f[27]>0 then
c={}for k=1,30 do
c[k]=_[k]end
c[4]=f[27]c[6]=f[28]g[#g+1]=c
end
end
aN=e[16][_[6]]if _[15]>=aN[2]and aN[2]~=-1 then
_[6]=aN[4]_[15]=0
aa=e[16][_[6]][3]bl=f[23]&4>0
if aa==1 then
for a,m in B(g)do
if m then
i=R-y(_,m)if i>0 then
at(m,i)end
end
end
elseif aa==2 then
if bv(_,d,90)then
_[23]=d
_[6]=f[5]end
ag(_,j,a,8)bD(_)elseif aa==3 then
_[23]=_[23][20]and _[23]or d
aA=aQ(K(_,_[23])/45+.5)*45
t=j
m=1
while m<5 and not t do
i=ae(_,T(aA+e[19][2][m],8))i[9]=_[9]t=ag(i,j,a,m)and(C[1]>=i[9]-24 or bl)m=m+1
end
if t then
for k=1,2 do
_[30+k]=i[k]-_[k]_[k]=i[k]end
_[3]=aA
_[10]=n
else
ag(_,j,a,8)end
bD(_)b=y(_,_[23])if f[13]>0 and au(_,_[23],1)and A(b,230)<ao()then
_[6]=f[13]end
if b<64 and f[12]>0 then
_[6]=f[12]end
elseif aa==5 then
for a=1,11 do
d[3]=d[3]+e[19][9][a]o=e[14][23]bB()aH(d,1)end
d[3]=d[3]-20
elseif aa>9 and _[20]then
_[3]=K(_,_[23])o=e[14][aa]_[10]=n
ad=_[23]aH(_,a)end
end
if _[17]and _[17]>0 then
o=e[14][_[17]]if not ag(_,j,a)or _[9]<=C[1]then
if aT then
at(aT,f[21]*((ao()&7)+1),g[_[14]])end
_[1]=_[1]-_[11]_[2]=_[2]-_[12]_[3]=0
_[6]=z[_[4]][5]_[10]=n
_[11]=0
_[12],_[17]=0
_[19]=0
end
end
if _[6]==1 then
g[a]=j
else
an=sub(_,b_)L=Y[2+an[1]//R+an[2]//R*bo]if L then
L[0][#L[0]+1]=a
end
end
end
end
for a=1,8 do
if al(a)and x[1][a+4]>0 then
aj=a
end
end
o=e[14][aj]d[3]=d[3]-ax(3)*(F(aL,5,6)*1.5-6)aL=abs(ax(3))*aL+1
V=d
for a=1,2 do
V=ae(V,T(d[3]-M+90*a,ax(a)*8.33))end
V[9]=d[9]for a=1,8 do
t=ag(V,n,1,a)end
if t then
for a=1,2 do
d[30+a]=V[a]-d[a]d[a]=V[a]end
if d[9]>C[1]then
d[19]=d[19]-1
else
d[9]=A(C[1],d[9]+4)d[19]=N(0,d[19])end
else
d[19]=0
d[9]=C[1]end
aS=x[1]c=o[1]if al(31)and ay<=0 and(c==0 or aS[c]>=o[2])then
ab(3,n)ay=o[3]if c>0 then
aS[c]=aS[c]-o[2]end
bB()aH(d,1)end
ay=ay-1
if ax(4)<0 then
_=ae(d,T(d[3],64))_[9]=d[9]aG,aB=au(d,_,2,1)_=e[2][aB]if aG==j then
r[2]=aB
c,t=_[4]for a=14,16 do
t=t or x[1][a]>0 and c==a
end
if c==1 or t then
aZ(_,_[5])elseif c>3000 and c<3005 then
bP=aQ(c-3000)end
end
end
end
r[1]=aj
for a=3,13 do
r[a]=d[e[19][4][a]]or r[a]end
x[1][17]=bN
r[10]=x[1][bh%#x[1]+1]a=ai
by=n
J=1
ap=#g+#W
while J<3 and by do
c=J*9+5
if a<=#g then
_=g[a]if a~=1 then
if _ then
if _[10]then
_[10]=j
r[c]=a
for k=1,8 do
r[c+k]=_[e[19][1][k]]end
J=J+1
end
else
r[c]=-a
aF(g,a)J=J+1
ap=ap-1
end
end
else
_=W[a-#g]if _[10]then
_[10]=j
r[c]=a-#g+2^15
for k=1,6 do
r[c+k]=_[k]end
J=J+1
end
end
a=(a-2)%ap+1
ai=A(ai,ap)by=a~=ai
end
ai=a
for a=1,32 do
output.setNumber(a,r[a])end
end
aq=aq+1
async.httpGet(8,"")end
