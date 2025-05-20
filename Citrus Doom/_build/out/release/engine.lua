bU=""

S=128
O=180
bi=output
bu=input
F=math
M=F.max
v=F.min
aw=F.floor
pi=F.pi
ap=bu.getNumber
ak=bu.getBool
ae=bi.setBool
n=true
i=false
y=ipairs
abs=F.abs
bN=table.remove
aJ=string
function af(b,g)return{(b[1]+g[1]),(b[2]+g[2])}end
function sub(b,g)return{(b[1]-g[1]),(b[2]-g[2])}end
function bo(b)return F.sin(b/O*pi)end
function am(b)return F.cos(b/O*pi)end
function I(b,g)return F.atan(g[2]-b[2],g[1]-b[1])*O/pi end
function K(b,g,am)return M(v(am,b),g)end
function w(b,g)return F.sqrt(((b[1]-g[1])^2)+((b[2]-g[2])^2))end
function P(b,g)return{am(b)*g,bo(b)*g}end
function exp(b)return b[1],b[2]end
e={}aR=1
ar=3
as=i
bc=n
ad=2
au=0
at=0
Z=0
aK=0
l=1
aI=0
bp=2
function aM(a,b,_)if a<32768then
_=e[7][a]return aM(_[_[3]*(b[2]-_[2])-_[4]*(b[1]-_[1])>0 and 8 or 7],b)else
a=e[5][e[6][a-32768][2]]return Y[e[3][e[2][a[4]][a[5]+6]][6]]end
end
function ay(t,bw,x,bR,_,a,k)an=h[x]f=A[an[4]]az,ai=f[18],f[19]H=az
D=aM(#e[7],t)R,ac=exp(D)ab=sub(t,bb)L=X[2+ab[1]//S+ab[2]//S*bM]or{}for a,_ in y(L[0]or{})do
c=h[_]if _~=x and c and an[14]~=_ then
m=w(c,t)E=A[c[4]]if c[20]then
T=m-E[18]if T<H and E[23]&1>0 and(f[23]&1>0 or(t[9]+ai<c[9]or t[9]>c[9]+E[19])==i)then
aW=c
if bw==i then
return i
end
H=T
bd=I(t,c)end
end
if x==1 and not c[10]then
if m<50then
b=E[25]if b>0then
for q,r in y(B[b])do
if r>0 and B[1][q]<B[2][q]then
c=B
h[_]=i
c[1][q]=aw(v(c[1][q]+r,c[2][q]))if K(q,5,12)==q then
ad=q-4
end
end
end
end
b=E[29]if b>0 then
b=e[11][b]for q=7,8 do
d[q]=K(d[q]+b[q*2-13],d[q],b[q*2-12])end
h[_]=i
end
end
end
end
end
aW=i
if ac-R<ai or R>t[9]+24then
return i
end
for a=1,#L do
_=e[2][L[a]]m,bH=bj(t,V[_[1]],V[_[2]])if m<H then
if bR==1 and(_[3]&512>0 or x==1)and(_[4]==2 or x>1)then
ba(_,_[5])end
if(_[3]&1>0 and f[23]&1>0)or _[3]&4==0 then
if x>1 or bf>0then
H=m
bd=bH
end
else
aZ,aD=v(_[9],ac),M(_[8],R)if v(t[9],ac-ai)+24<aD or M(t[9],R)+ai>aZ or aZ-aD<ai then
H=m
bd=bH
else
ac,R=aZ,aD
end
end
end
end
D={R,ac}if bw then
if H~=az then
_=af(t,P(bd,H-az))t[1]=_[1]t[2]=_[2]end
return n
end
return H==az
end
function bj(p,z,aA)N=w(z,p)bl=I(z,aA)+90
bI=bl-I(p,z)bO=-N*bo(bI)bf=N*am(bI)aE=bl
if bf<0 then
aE=aE+O
end
if bO<0 then
return N,I(p,z)elseif bO>w(aA,z)then
return w(aA,p),I(p,aA)else
return abs(bf),aE
end
end
function aC(p,z,b_,x,_)aX=w(p,z)ao=aX
aS=n
T,aF=exp(p)bQ,bP=exp(z)be,aG=exp(sub(z,p))ax,bs=p[9]+32,z[9]+32
u=i
for a,_ in y(e[2])do
bk=V[_[1]]bm,br=exp(sub(V[_[2]],bk))bx,bn=exp(sub(p,bk))bA=br*be-bm*aG
Q=(bm*bn-br*bx)/bA
bL=(be*bn-aG*bx)/bA
if K(Q,0,1)==Q and K(bL,0,1)==bL then
bF={T+(Q*be),aF+(Q*aG)}m=w(p,bF)C=ax+(bs-ax)*(m/aX)if K(C,_[8]+1,_[9])~=C then
aS=i
if b_==1 then
return i
end
if m<ao then
ao=m
bt,bK=exp(bF)bJ=C
by=a
end
end
end
end
if b_>1 then
if b_==3 then
for a,_ in y(h)do
if _ and a~=x then
f=A[_[4]]if f[23]&1>0 and _[20]then
m=w(p,_)if m<ao then
Q=bj(_,p,z)N=(m/aX)C=ax+(bs-ax)*N
if K(C,_[9],_[9]+f[19])==C and Q<f[18]then
ao=m
u=n
aS=i
bt=T+(bQ-T)*N
bK=aF+(bP-aF)*N
bJ=C
by=a
end
end
end
end
end
end
return aS,by,{bt,bK,bJ}end
return n
end
function httpReply(b,g,am)bD=at//2
at=0
end
function al()aK=aK%256+1
return e[13][1][aK]end
function aH(_,a)f=A[_[4]]if f[23]&2>0 and _[7]>0 then
_[8]=_[8]-(a+1)//2
_[7]=_[7]-a//2+v(_[8],0)_[8]=M(_[8],0)if al()<f[10]then
_[6]=f[9]_[15]=0
_[23]=d
_[10]=n
end
end
end
function bC(b,g,aq)return g[20]and abs(((I(b,g)-b[3]+O)%360)-O)<aq and aC(b,g,1)end
function aN(G,x)bv=ag and(ag[9]-G[9])*o[6]/w(ag,G)or 0
for a=1,o[12]do
b={}for a=1,30 do
b[a]=G[a]end
b[4]=o[8]b[10]=n
b[14]=x
bG=(al()/S-1)*o[10]aL=P(G[3]+bG,o[6])if o[7]>0then
h[#h+1]=b
f=A[b[4]]b[6]=f[3]b[9]=G[9]+o[13]b[11]=aL[1]b[12]=aL[2]b[17]=ad
b[19]=bv
else
c=af(G,aL)c[9]=d[9]+bv
aY,av,c=aC(G,c,3,x)if not aY then
bB=sub(c,P(G[3]+bG,1))h[#h+1]=b
b[1]=bB[1]b[2]=bB[2]b[6]=A[b[4]][3]b[9]=c[3]b[19]=1
if u then
b=h[av]aH(b,o[9]*((al()&3)+2))end
end
end
end
end
function ba(_,c)if c>-1 then
b=e[9][c]if b[1]>0 or an[31]*_[10][2]-an[32]*_[10][1]<0 then
g=Y[b[1]]aj[g and g[30]or#aj+1]={c,1,g or an}_[4]=b[7]b=b[8]>0 and ba(_,b[8])end
else
bc=n
ar=-c
s[9]=-c
end
end
function bE()bh,ag=2048
for a,_ in y(h)do
if a>1 and _ and bC(d,_,10)then
m=w(_,d)if m<bh then
if A[_[4]][23]&2>0then
ag=_
bh=m
end
end
end
end
end
function onTick()ae(9,ak(32))ae(2,ak(11))ae(3,i)for k=1,3 do
if ak(32)and(not as)or not e[21]then
aU=property.getText(aR)a=1
j=bU
_=aJ.sub(aU,a,a)while _~=bUdo
c=aJ.byte(_)if c>64then
j=(j..c-65)+0
if l==1then
bq=j
e[j]=e[j]or{}elseif l==2then
C=j
ah=0
elseif l==3then
aV=j
else
if ah==0then
ah=C
aV=aV-1
aP={}e[bq][#e[bq]+1]=aP
end
aP[#aP+1]=j
ah=ah-1
l=M(ah,aV)>0 and l-1 or 0
end
l=l+1
j=bU
else
j=j.._
end
a=a+1
_=aJ.sub(aU,a,a)end
aR=aR+1
as=aU==bU
end
end
if as then
if bc then
aj,bc={}aa=1
for a=1,10 do
e[a]=e[a+10*ar]end
h=e[1]V=e[4]Y=e[8]X=e[10]bb,X[1]=X[1]B=e[12]A=e[15]for a=14,16 do
B[1][a]=0
end
ar=ar+1
for a,_ in y(h)do
for k=7,40 do
_[k]=0
end
bS=_[5]+1
_[7]=A[_[4]][4]_[9],_[10]=aM(#e[7],_)[1]if _[4]==1 then
if d then
_[7]=d[7]_[8]=d[8]end
d=_
elseif _[5]&bp<1then
h[a]=i
end
end
bM=bb[3]end
for a,_ in y(e[2])do
_[10]=sub(V[_[2]],V[_[1]])if _[3]&4>0 then
f,E=Y[e[3][_[6]][6]],Y[e[3][_[7]][6]]_[8]=M(f[1],E[1])_[9],f[30],E[30]=v(f[2],E[2])else
_[8],_[9]=0,0
end
end
s={}for a=1,32 do
s[a]=0
end
Z=v(Z+1/bD,2/35)ae(1,Z>=0)if Z>=0 then
Z=Z-1/35
for a=2,#X do
X[a][0]={}end
for a,r in y(aj)do
_=e[9][r[1]]c=r[3]b=_[2]f=c[b]c[b]=K(_[3],f-_[4],f+_[4])+0
f=c[b]if abs(f-_[3])<.1then
aj[a]=r[2]==_[5]and{_[6],1,c}or{r[1],r[2]+1,c}if _[6]==0 then
bN(aj,a)end
end
c[10]=c[10]or f~=r
c[30]=a
end
for a,_ in y(h)do
if _ then
for k,r in y({1,2,9})do
_[r]=_[r]+_[r+10]end
_[15]=_[15]+1
f=A[_[4]]if _[7]<=0 and _[20]then
_[15]=0
_[6]=f[_[7]<=-f[4]and f[15]>1 and 15or 14]_[10],_[20]=n
if f[27]>0 then
c={}for k=1,30 do
c[k]=_[k]end
c[4]=f[27]c[6]=f[28]h[#h+1]=c
end
end
aO=e[16][_[6]]if _[15]>=aO[2]and aO[2]~=-1then
_[6]=aO[4]_[15]=0
W=e[16][_[6]][3]if W==1 then
for a,l in y(h)do
if l then
j=S-w(_,l)if j>0 then
aH(l,j)end
end
end
elseif W==2then
if bC(_,d,90)then
_[23]=d
_[6]=f[5]end
elseif W==3then
aq=aw(I(_,_[23])/45+.5)*45
u=i
l=1
bg=f[23]&4>0
while l<5 and not u do
j=af(_,P(aq+e[19][2][l],8))j[9]=_[9]u=ay(j,i,a,l)and(D[1]>=j[9]-24 or bg)l=l+1
end
if u then
for k=1,2 do
_[30+k]=j[k]-_[k]_[k]=j[k]end
_[3]=aq
_[10]=n
else
ay(_,i,a)end
_[9]=bg and _[9]or D[1]b=w(_,_[23])if f[13]>0 and aC(_,_[23],1)and v(b,230)<al()then
_[6]=f[13]end
if b<64 and f[12]>0then
_[6]=f[12]end
elseif W==5then
for a=1,11 do
d[3]=d[3]+e[19][9][a]o=e[14][23]bE()aN(d,1)end
d[3]=d[3]-20
elseif W>9 and _[20]then
_[3]=I(_,_[23])o=e[14][W]_[10]=n
ag=_[23]aN(_,a)end
end
if _[17]and _[17]>0then
o=e[14][_[17]]if not ay(_,i,a)or _[9]<=D[1]then
if aW then
aH(aW,f[21]*((al()&7)+1))end
_[1]=_[1]-_[11]_[2]=_[2]-_[12]_[3]=0
_[6]=A[_[4]][5]_[10]=n
_[11]=0
_[12]=0
_[17]=bT
_[19]=0
end
end
if _[6]==1then
h[a]=i
else
ab=sub(_,bb)L=X[2+ab[1]//S+ab[2]//S*bM]if L then
L[0][#L[0]+1]=a
end
end
end
end
for a=1,8 do
if ak(a)and B[1][a+4]>0then
ad=a
end
end
o=e[14][ad]d[3]=d[3]-ap(3)*(K(aI,5,6)*1.5-6)aI=abs(ap(3))*aI+1
U=d
for a=1,2 do
U=af(U,P(d[3]-O+90*a,ap(a)*8.33))end
U[9]=d[9]for a=1,8 do
u=ay(U,n,1,a)end
if u then
for a=1,2 do
d[30+a]=U[a]-d[a]d[a]=U[a]end
if d[9]<=D[1]then
d[9]=v(D[1],d[9]+4)d[19]=M(0,d[19])else
if d[9]>=D[2]-56then
d[9]=D[2]-56
d[19]=v(0,d[19])end
d[19]=d[19]-1
end
else
d[19]=0
end
aQ=B[1]c=o[1]if ak(31)and au<=0 and(c==0 or aQ[c]>=o[2])then
ae(3,n)au=o[3]if c>0then
aQ[c]=aQ[c]-o[2]end
bE()aN(d,1)end
au=au-1
if ap(4)<0 then
_=af(d,P(d[3],64))_[9]=d[9]aY,av=aC(d,_,2,1)_=e[2][av]if aY==i then
s[2]=av
c,u=_[4]for a=14,16 do
u=u or B[1][a]>0 and c==a
end
if c==1 or u then
ba(_,_[5])elseif c>3000 and c<3005then
bp=aw(c-3000)end
end
end
end
s[1]=ad
for a=3,8 do
s[a]=d[e[19][4][a]]end
s[5]=1
s[13]=d[3]a=aa
bz=n
J=1
aB=#h+#Y
while J<3 and bz do
c=J*9+5
if a<=#h then
_=h[a]if a~=1 then
if _ then
if _[10]then
_[10]=i
s[c]=a
for k=1,8 do
s[c+k]=_[e[19][1][k]]end
J=J+1
end
else
s[c]=-a
bN(h,a)J=J+1
aB=aB-1
end
end
else
_=Y[a-#h]if _[10]then
_[10]=i
s[c]=a-#h+2^15
for k=1,6 do
s[c+k]=_[k]end
J=J+1
end
end
a=((a-2)%aB)+1
aa=v(aa,aB)bz=a~=aa
end
aa=a
for a=1,32 do
bi.setNumber(a,s[a])end
end
at=at+1
async.httpGet(8,bU)end
function onDraw()aT=screen.drawText
aT(26,137,bD)if as then
for a=1,4 do
b=124+a*7
aT(240,b,aw(B[1][a]))aT(230,b,B[1][13+a])end
end
end
