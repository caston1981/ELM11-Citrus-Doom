
Y=128
O=180
F=math
L=F.max
z=F.min
aO=F.floor
pi=F.pi
au=input.getNumber
am=input.getBool
an=output.setBool
n=true
i=false
B=ipairs
abs=F.abs
aZ=table.remove
aM=string
function ad(b,h)return{(b[1]+h[1]),(b[2]+h[2])}end
function sub(b,h)return{(b[1]-h[1]),(b[2]-h[2])}end
function bC(b)return F.sin(b/O*pi)end
function ak(b)return F.cos(b/O*pi)end
function I(b,h)return F.atan(h[2]-b[2],h[1]-b[1])*O/pi end
function G(b,h,ak)return L(z(ak,b),h)end
function v(b,h)return F.sqrt(((b[1]-h[1])^2)+((b[2]-h[2])^2))end
function Q(b,h)return{ak(b)*h,bC(b)*h}end
function exp(b)return b[1],b[2]end
e={}aJ=1
ar=3
aN=i
aL=n
ai=2
ay=0
at=0
be=0
aF=0
aa=0
bf=0
l=1
aU=0
bH=2
function aY(a,b,_)if a<2^15 then
_=e[7][a]return aY(_[_[3]*(b[2]-_[2])-_[4]*(b[1]-_[1])>0 and 8 or 7],b)else
a=e[5][e[6][a-32768][2]]return X[e[3][e[2][a[4]][a[5]+6]][6]]end
end
function af(s,bz,y,bO,_)Z=g[y]f=A[Z[4]]az,ae=f[18],f[19]K=az
C=aY(#e[7],s)V,ab=exp(C)aj=sub(s,b_)N=P[2+aj[1]//Y+aj[2]//Y*bu]or{}for a,_ in B(N[0]or{})do
c=g[_]if _~=y and c and Z[14]~=_ then
m=v(c,s)E=A[c[4]]if c[20]then
R=m-E[18]if R<K and E[23]&1>0 and(f[23]&1>0 or G(s[9],c[9]-ae,c[9]+E[19])==s[9])then
aC=c
if bz==i then
return i
end
K=R
aE=I(s,c)end
end
if y==1 then
if m<50 then
b=E[25]if b>0 then
for q,t in B(x[b])do
if t>0 and x[1][q]<x[2][q]then
c=x
g[_]=i
c[1][q]=aO(z(c[1][q]+t,c[2][q]))if G(q,5,12)==q then
ai=q-4
end
end
end
end
b=E[29]if b>0 then
b=e[11][b]for q=7,8 do
d[q]=G(d[q]+b[q*2-13],d[q],b[q*2-12])end
g[_]=i
end
end
end
end
end
if ab-V<ae or V>s[9]+24 then
u=(bO or 1)<8 or be%4>0 or C[6]<18 or av(Z,10)return i
end
for a=1,#N do
_=e[2][N[a]]m,bo=bK(s,W[_[1]],W[_[2]])if m<K then
if(_[3]&1>0 and f[23]&1>0)or _[3]&4==0 then
if y>1 or aD>0 or _[3]&4>0 then
K=m
aE=bo
end
else
bd,bb=z(_[9],ab),L(_[8],V)if z(s[9],ab-ae)+24<bb or L(s[9],V)+ae>bd or bd-bb<ae then
K=m
aE=bo
else
if bO==1 and(_[3]&512>0 or y==1)and(_[4]==2 or y>1)then
aS(_,_[5])end
ab,V=bd,bb
end
end
end
end
C,aC={V,ab}if bz then
if K~=az then
_=ad(s,Q(aE,K-az))s[1]=_[1]s[2]=_[2]end
return n
end
return K==az
end
function bK(r,w,aB)M=v(w,r)bp=I(w,aB)+90
bL=bp-I(r,w)bF=-M*bC(bL)aD=M*ak(bL)aQ=bp
if aD<0 then
aQ=aQ+O
end
if bF<0 then
return M,I(r,w)elseif bF>v(aB,w)then
return v(aB,r),I(r,aB)else
return abs(aD),aQ
end
end
function aq(r,w,aW,y,_)aI=v(r,w)aw=aI
aP=n
R,aX=exp(r)bR,bQ=exp(w)bc,aH=exp(sub(w,r))ap,bm=r[9]+32,w[9]+32
u=i
for a,_ in B(e[2])do
bl=W[_[1]]bj,bv=exp(sub(W[_[2]],bl))bx,bD=exp(sub(r,bl))bP=bv*bc-bj*aH
S=(bj*bD-bv*bx)/bP
bB=(bc*bD-aH*bx)/bP
if G(S,0,1)==S and G(bB,0,1)==bB then
bN={R+(S*bc),aX+(S*aH)}m=v(r,bN)H=ap+(bm-ap)*(m/aI)if G(H,_[8]+1,_[9])~=H then
aP=i
if aW==1 then
return i
end
if m<aw then
aw=m
bs,bw=exp(bN)bt=H
bJ=a
end
end
end
end
if aW>1 then
if aW==3 then
for a,_ in B(g)do
if _ and a~=y then
f=A[_[4]]if f[23]&1>0 and _[20]then
m=v(r,_)if m<aw then
S=bK(_,r,w)M=(m/aI)H=ap+(bm-ap)*M
if G(H,_[9],_[9]+f[19])==H and S<f[18]then
aw=m
u=n
aP=i
bs=R+(bR-R)*M
bw=aX+(bQ-aX)*M
bt=H
bJ=a
end
end
end
end
end
end
return aP,bJ,{bs,bw,bt}end
return n
end
function httpReply(b,h,ak)bi=at//2
at=0
end
function ac()bf=bf%256+1
return e[13][1][bf]end
function av(_,a,c)f=A[_[4]]if f[23]&2>0 and _[7]>0 then
_[8]=_[8]-(a+1)//2
_[7]=_[7]-a//2+z(_[8],0)_[8]=L(_[8],0)if ac()<f[10]then
_[6]=f[9]_[15]=0
_[23]=f[13]~=e[19][7][1]and c or d
_[10]=n
end
end
end
function bn(b,h,as)return h[20]and abs(((I(b,h)-b[3]+O)%360)-O)<as and aq(b,h,1)end
function ba(D,y)bk=ah and(ah[9]-D[9])*o[6]/v(ah,D)or 0
for a=1,o[12]do
b={}for a=1,30 do
b[a]=D[a]end
b[4]=o[8]b[10]=n
b[14]=y
bG=(ac()/Y-1)*o[10]bg=Q(D[3]+bG,o[6])if o[7]>0 then
g[#g+1]=b
f=A[b[4]]b[6]=f[3]b[9]=D[9]+o[13]b[11]=bg[1]b[12]=bg[2]b[17]=ai
b[19]=bk
else
c=ad(D,bg)c[9]=d[9]+bk
aK,ax,c=aq(D,c,3,y)if not aK then
bE=sub(c,Q(D[3]+bG,1))g[#g+1]=b
b[1]=bE[1]b[2]=bE[2]b[6]=A[b[4]][3]b[9]=c[3]b[19]=1
if u then
b=g[ax]av(b,o[9]*((ac()&3)+2),D)end
end
end
end
end
function aS(_,c)if c>-1 then
b=e[9][c]if b[1]>0 or Z[31]*_[10][2]-Z[32]*_[10][1]<0 then
h=X[b[1]]al[h and h[30]or#al+1]={c,1,h or Z}_[4]=b[7]b=b[8]>0 and aS(_,b[8])end
else
aL=n
ar=-c
p[10]=-c
end
end
function br()bM,ah=2048
for a,_ in B(g)do
if a>1 and _ and bn(d,_,10)then
m=v(_,d)if m<bM then
if A[_[4]][23]&2>0 then
ah=_
bM=m
end
end
end
end
end
function bI(_)if _[9]~=C[1]and not bq then
_[9]=C[1]_[10]=true
end
end
function onTick()an(9,am(32))an(2,am(11))an(3,i)for k=1,3 do
if am(32)and(not aN)or not e[21]then
aR=property.getText(aJ)a=1
j=""
_=aM.sub(aR,a,a)while _~=""do
c=aM.byte(_)if c>64 then
j=(j..c-65)+0
if l==1 then
bA=j
e[j]=e[j]or{}elseif l==2 then
H=j
ag=0
elseif l==3 then
aV=j
else
if ag==0 then
ag=H
aV=aV-1
aG={}e[bA][#e[bA]+1]=aG
end
aG[#aG+1]=j
ag=ag-1
l=L(ag,aV)>0 and l-1 or 0
end
l=l+1
j=""
else
j=j.._
end
a=a+1
_=aM.sub(aR,a,a)end
aJ=aJ+1
aN=aR==""
end
end
if aN then
if aL then
al,aL={}ao=1
for a=1,10 do
e[a]=e[a+10*ar]end
g=e[1]W=e[4]X=e[8]P=e[10]b_,P[1]=P[1]x=e[12]A=e[15]for a=14,16 do
x[1][a]=0
end
ar=ar+1
for a=#g,1,-1 do
_=g[a]for k=7,40 do
_[k]=0
end
_[7]=A[_[4]][4]_[9],_[10]=aY(#e[7],_)[1]if _[5]&bH<1 then
aZ(g,a)elseif _[4]==1 then
if d then
_[7]=d[7]_[8]=d[8]end
d=_
end
end
bu=b_[3]end
for a,_ in B(e[2])do
_[10]=sub(W[_[2]],W[_[1]])if _[3]&4>0 then
f,E=X[e[3][_[6]][6]],X[e[3][_[7]][6]]_[8]=L(f[1],E[1])_[9],f[30],E[30]=z(f[2],E[2])else
_[8],_[9]=0,0
end
end
p={}for a=1,32 do
p[a]=0
end
aF=aF+1
aa=z(aa+1/bi,2/35)an(1,aa>=0)if aa>=0 then
aa=aa-1/35
be=be+1
for a=2,#P do
P[a][0]={}end
for a,t in B(al)do
_=e[9][t[1]]c=t[3]b=_[2]f=c[b]c[b]=G(_[3],f-_[4],f+_[4])+0
f=c[b]if f==_[3]then
al[a]=t[2]==_[5]and{_[6],1,c}or{t[1],t[2]+1,c}if _[6]==0 then
aZ(al,a)end
end
c[10]=c[10]or f~=t
c[30]=a
end
for a,_ in B(g)do
if _ then
for k,t in B({1,2,9})do
_[t]=_[t]+_[t+10]end
_[15]=_[15]+1
f=A[_[4]]if _[7]<=0 and _[20]then
_[15]=0
_[6]=f[_[7]<=-f[4]and f[15]>1 and 15 or 14]_[10],_[20]=n
if f[27]>0 then
c={}for k=1,30 do
c[k]=_[k]end
c[4]=f[27]c[6]=f[28]g[#g+1]=c
end
end
aT=e[16][_[6]]if _[15]>=aT[2]and aT[2]~=-1 then
_[6]=aT[4]_[15]=0
U=e[16][_[6]][3]bq=f[23]&4>0
if U==1 then
for a,l in B(g)do
if l then
j=Y-v(_,l)if j>0 then
av(l,j)end
end
end
elseif U==2 then
if bn(_,d,90)then
_[23]=d
_[6]=f[5]p[12]=f[6]end
af(_,i,a,8)bI(_)elseif U==3 then
_[23]=_[23][20]and _[23]or d
as=aO(I(_,_[23])/45+.5)*45
u=i
l=1
while l<5 and not u do
j=ad(_,Q(as+e[19][2][l],8))j[9]=_[9]u=af(j,i,a,l)and(C[1]>=j[9]-24 or bq)l=l+1
end
if u then
for k=1,2 do
_[30+k]=j[k]-_[k]_[k]=j[k]end
_[3]=as
_[10]=n
else
af(_,i,a,8)end
bI(_)b=v(_,_[23])if f[13]>0 and aq(_,_[23],1)and z(b,230)<ac()then
_[6]=f[13]end
if b<64 and f[12]>0 then
_[6]=f[12]end
elseif U==5 then
for a=1,11 do
d[3]=d[3]+e[19][9][a]o=e[14][23]br()ba(d,1)end
d[3]=d[3]-20
elseif U>9 and _[20]then
_[3]=I(_,_[23])o=e[14][U]_[10]=n
ah=_[23]ba(_,a)end
end
if _[17]and _[17]>0 then
o=e[14][_[17]]if not af(_,i,a)or _[9]<=C[1]then
if aC then
av(aC,f[21]*((ac()&7)+1),g[_[14]])end
_[1]=_[1]-_[11]_[2]=_[2]-_[12]_[3]=0
_[6]=A[_[4]][5]_[10]=n
_[11]=0
_[12],_[17]=0
_[19]=0
end
end
if _[6]==1 then
g[a]=i
else
aj=sub(_,b_)N=P[2+aj[1]//Y+aj[2]//Y*bu]if N then
N[0][#N[0]+1]=a
end
end
end
end
for a=1,8 do
if am(a)and x[1][a+4]>0 then
ai=a
end
end
o=e[14][ai]d[3]=d[3]-au(3)*(G(aU,5,6)*1.5-6)aU=abs(au(3))*aU+1
T=d
for a=1,2 do
T=ad(T,Q(d[3]-O+90*a,au(a)*8.33))end
T[9]=d[9]for a=1,8 do
u=af(T,n,1,a)end
if u then
for a=1,2 do
d[30+a]=T[a]-d[a]d[a]=T[a]end
if d[9]>C[1]then
d[19]=d[19]-1
else
d[9]=z(C[1],d[9]+4)d[19]=L(0,d[19])end
else
d[19]=0
d[9]=C[1]end
bh=x[1]c=o[1]if am(31)and ay<=0 and(c==0 or bh[c]>=o[2])then
an(3,n)ay=o[3]if c>0 then
bh[c]=bh[c]-o[2]end
br()ba(d,1)end
ay=ay-1
if au(4)<0 then
_=ad(d,Q(d[3],64))_[9]=d[9]aK,ax=aq(d,_,2,1)_=e[2][ax]if aK==i then
p[2]=ax
c,u=_[4]for a=14,16 do
u=u or x[1][a]>0 and c==a
end
if c==1 or u then
aS(_,_[5])elseif c>3000 and c<3005 then
bH=aO(c-3000)end
end
end
end
p[1]=ai
for a=3,14 do
p[a]=d[e[19][4][a]]or p[a]end
x[1][17]=bi
p[11]=x[1][aF%#x[1]+1]a=ao
by=n
J=1
aA=#g+#X
while J<3 and by do
c=J*9+6
if a<=#g then
_=g[a]if a~=1 then
if _ then
if _[10]then
_[10]=i
p[c]=a
for k=1,8 do
p[c+k]=_[e[19][1][k]]end
J=J+1
end
else
p[c]=-a
aZ(g,a)J=J+1
aA=aA-1
end
end
else
_=X[a-#g]if _[10]then
_[10]=i
p[c]=a-#g+2^15
for k=1,6 do
p[c+k]=_[k]end
J=J+1
end
end
a=(a-2)%aA+1
ao=z(ao,aA)by=a~=ao
end
ao=a
for a=1,32 do
output.setNumber(a,p[a])end
end
at=at+1
async.httpGet(8,"")end
