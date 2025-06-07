
Z=128
O=180
bz=true
bL=output
bJ=input
E=math
L=E.max
A=E.min
b_=E.floor
pi=E.pi
as=bJ.getNumber
ad=bJ.getBool
af=bL.setBool
n=bz
i=false
w=ipairs
abs=E.abs
bq=table.remove
aF=string
function ah(b,h)return{(b[1]+h[1]),(b[2]+h[2])}end
function sub(b,h)return{(b[1]-h[1]),(b[2]-h[2])}end
function by(b)return E.sin(b/O*pi)end
function ac(b)return E.cos(b/O*pi)end
function K(b,h)return E.atan(h[2]-b[2],h[1]-b[1])*O/pi end
function D(b,h,ac)return L(A(ac,b),h)end
function y(b,h)return E.sqrt(((b[1]-h[1])^2)+((b[2]-h[2])^2))end
function aa(b,h)return{ac(b)*h,by(b)*h}end
function exp(b)return b[1],b[2]end
e={}aU=1
au=3
aG=i
aX=n
ag=2
ax=0
aA=0
aZ=0
bd=0
X=0
aN=0
m=1
aM=0
bn=2
function aI(a,b,_)if a<2^15 then
_=e[7][a]return aI(_[_[3]*(b[2]-_[2])-_[4]*(b[1]-_[1])>0 and 8 or 7],b)else
a=e[5][e[6][a-32768][2]]return P[e[3][e[2][a[4]][a[5]+6]][6]]end
end
function ab(r,bS,z,br,_)V=g[z]f=B[V[4]]at,ae=f[18],f[19]J=at
C=aI(#e[7],r)U,ai=exp(C)am=sub(r,be)N=Q[2+am[1]//Z+am[2]//Z*bk]or{}for a,_ in w(N[0]or{})do
c=g[_]if _~=z and c and V[14]~=_ then
l=y(c,r)F=B[c[4]]if c[20]then
W=l-F[18]if W<J and F[23]&1>0 and(f[23]&1>0 or D(r[9],c[9]-ae,c[9]+F[19])==r[9])then
aY=c
if bS==i then
return i
end
J=W
aR=K(r,c)end
end
if z==1 then
if l<50 then
b=F[25]if b>0 then
for q,s in w(v[b])do
if s>0 and v[1][q]<v[2][q]then
c=v
g[_]=i
c[1][q]=b_(A(c[1][q]+s,c[2][q]))if D(q,5,12)==q then
ag=q-4
end
end
end
end
b=F[29]if b>0 then
b=e[11][b]for q=7,8 do
d[q]=D(d[q]+b[q*2-13],d[q],b[q*2-12])end
g[_]=i
end
end
end
end
end
if ai-U<ae or U>r[9]+24 then
u=br<8 or aZ%4>0 or C[6]<18 or ar(V,10)return i
end
for a=1,#N do
_=e[2][N[a]]l,bp=bP(r,T[_[1]],T[_[2]])if l<J then
if(_[3]&1>0 and f[23]&1>0)or _[3]&4==0 then
if z>1 or aS>0 or _[3]&4>0 then
J=l
aR=bp
end
else
aO,bb=A(_[9],ai),L(_[8],U)if A(r[9],ai-ae)+24<bb or L(r[9],U)+ae>aO or aO-bb<ae then
J=l
aR=bp
else
if br==1 and(_[3]&512>0 or z==1)and(_[4]==2 or z>1)then
bg(_,_[5])end
ai,U=aO,bb
end
end
end
end
C,aY={U,ai}if bS then
if J~=at then
_=ah(r,aa(aR,J-at))r[1]=_[1]r[2]=_[2]end
return n
end
return J==at
end
function bP(p,x,ay)M=y(x,p)bt=K(x,ay)+90
bB=bt-K(p,x)bi=-M*by(bB)aS=M*ac(bB)aW=bt
if aS<0 then
aW=aW+O
end
if bi<0 then
return M,K(p,x)elseif bi>y(ay,x)then
return y(ay,p),K(p,ay)else
return abs(aS),aW
end
end
function av(p,x,aJ,z,_)aV=y(p,x)aw=aV
aC=n
W,aD=exp(p)bT,bU=exp(x)aP,aT=exp(sub(x,p))ap,bE=p[9]+32,x[9]+32
u=i
for a,_ in w(e[2])do
bm=T[_[1]]bv,bx=exp(sub(T[_[2]],bm))bu,bH=exp(sub(p,bm))bI=bx*aP-bv*aT
Y=(bv*bH-bx*bu)/bI
bC=(aP*bH-aT*bu)/bI
if D(Y,0,1)==Y and D(bC,0,1)==bC then
bh={W+(Y*aP),aD+(Y*aT)}l=y(p,bh)H=ap+(bE-ap)*(l/aV)if D(H,_[8]+1,_[9])~=H then
aC=i
if aJ==1 then
return i
end
if l<aw then
aw=l
bl,bj=exp(bh)bG=H
bK=a
end
end
end
end
if aJ>1 then
if aJ==3 then
for a,_ in w(g)do
if _ and a~=z then
f=B[_[4]]if f[23]&1>0 and _[20]then
l=y(p,_)if l<aw then
Y=bP(_,p,x)M=(l/aV)H=ap+(bE-ap)*M
if D(H,_[9],_[9]+f[19])==H and Y<f[18]then
aw=l
u=n
aC=i
bl=W+(bT-W)*M
bj=aD+(bU-aD)*M
bG=H
bK=a
end
end
end
end
end
end
return aC,bK,{bl,bj,bG}end
return n
end
function httpReply(b,h,ac)bF=aA//2
aA=0
end
function aj()aN=aN%256+1
return e[13][1][aN]end
function ar(_,a,c)f=B[_[4]]if f[23]&2>0 and _[7]>0 then
_[8]=_[8]-(a+1)//2
_[7]=_[7]-a//2+A(_[8],0)_[8]=L(_[8],0)if aj()<f[10]then
_[6]=f[9]_[15]=0
_[23]=c or d
_[10]=n
end
end
end
function bw(b,h,az)return h[20]and abs(((K(b,h)-b[3]+O)%360)-O)<az and av(b,h,1)end
function aH(G,z)bN=ak and(ak[9]-G[9])*o[6]/y(ak,G)or 0
for a=1,o[12]do
b={}for a=1,30 do
b[a]=G[a]end
b[4]=o[8]b[10]=n
b[14]=z
bM=(aj()/Z-1)*o[10]aE=aa(G[3]+bM,o[6])if o[7]>0 then
g[#g+1]=b
f=B[b[4]]b[6]=f[3]b[9]=G[9]+o[13]b[11]=aE[1]b[12]=aE[2]b[17]=ag
b[19]=bN
else
c=ah(G,aE)c[9]=d[9]+bN
bc,aB,c=av(G,c,3,z)if not bc then
bR=sub(c,aa(G[3]+bM,1))g[#g+1]=b
b[1]=bR[1]b[2]=bR[2]b[6]=B[b[4]][3]b[9]=c[3]b[19]=1
if u then
b=g[aB]ar(b,o[9]*((aj()&3)+2),G)end
end
end
end
end
function bg(_,c)if c>-1 then
b=e[9][c]if b[1]>0 or V[31]*_[10][2]-V[32]*_[10][1]<0 then
h=P[b[1]]al[h and h[30]or#al+1]={c,1,h or V}_[4]=b[7]b=b[8]>0 and bg(_,b[8])end
else
aX=n
au=-c
t[9]=-c
end
end
function bs()bA,ak=2048
for a,_ in w(g)do
if a>1 and _ and bw(d,_,10)then
l=y(_,d)if l<bA then
if B[_[4]][23]&2>0 then
ak=_
bA=l
end
end
end
end
end
function bQ(_)if _[9]~=C[1]and not bO then
_[9]=C[1]_[10]=bz
end
end
function onTick()af(9,ad(32))af(2,ad(11))af(3,i)for k=1,3 do
if ad(32)and(not aG)or not e[21]then
ba=property.getText(aU)a=1
j=""
_=aF.sub(ba,a,a)while _~=""do
c=aF.byte(_)if c>64 then
j=(j..c-65)+0
if m==1 then
bo=j
e[j]=e[j]or{}elseif m==2 then
H=j
ao=0
elseif m==3 then
bf=j
else
if ao==0 then
ao=H
bf=bf-1
aL={}e[bo][#e[bo]+1]=aL
end
aL[#aL+1]=j
ao=ao-1
m=L(ao,bf)>0 and m-1 or 0
end
m=m+1
j=""
else
j=j.._
end
a=a+1
_=aF.sub(ba,a,a)end
aU=aU+1
aG=ba==""
end
end
if aG then
if aX then
al,aX={}an=1
for a=1,10 do
e[a]=e[a+10*au]end
g=e[1]T=e[4]P=e[8]Q=e[10]be,Q[1]=Q[1]v=e[12]B=e[15]for a=14,16 do
v[1][a]=0
end
au=au+1
for a,_ in w(g)do
for k=7,40 do
_[k]=0
end
bV=_[5]+1
_[7]=B[_[4]][4]_[9],_[10]=aI(#e[7],_)[1]if _[4]==1 then
if d then
_[7]=d[7]_[8]=d[8]end
d=_
elseif _[5]&bn<1 then
g[a]=i
end
end
bk=be[3]end
for a,_ in w(e[2])do
_[10]=sub(T[_[2]],T[_[1]])if _[3]&4>0 then
f,F=P[e[3][_[6]][6]],P[e[3][_[7]][6]]_[8]=L(f[1],F[1])_[9],f[30],F[30]=A(f[2],F[2])else
_[8],_[9]=0,0
end
end
t={}for a=1,32 do
t[a]=0
end
bd=bd+1
X=A(X+1/bF,2/35)af(1,X>=0)if X>=0 then
X=X-1/35
aZ=aZ+1
for a=2,#Q do
Q[a][0]={}end
for a,s in w(al)do
_=e[9][s[1]]c=s[3]b=_[2]f=c[b]c[b]=D(_[3],f-_[4],f+_[4])+0
f=c[b]if f==_[3]then
al[a]=s[2]==_[5]and{_[6],1,c}or{s[1],s[2]+1,c}if _[6]==0 then
bq(al,a)end
end
c[10]=c[10]or f~=s
c[30]=a
end
for a,_ in w(g)do
if _ then
for k,s in w({1,2,9})do
_[s]=_[s]+_[s+10]end
_[15]=_[15]+1
f=B[_[4]]if _[7]<=0 and _[20]then
_[15]=0
_[6]=f[_[7]<=-f[4]and f[15]>1 and 15 or 14]_[10],_[20]=n
if f[27]>0 then
c={}for k=1,30 do
c[k]=_[k]end
c[4]=f[27]c[6]=f[28]g[#g+1]=c
end
end
aQ=e[16][_[6]]if _[15]>=aQ[2]and aQ[2]~=-1 then
_[6]=aQ[4]_[15]=0
R=e[16][_[6]][3]bO=f[23]&4>0
if R==1 then
for a,m in w(g)do
if m then
j=Z-y(_,m)if j>0 then
ar(m,j)end
end
end
elseif R==2 then
if bw(_,d,90)then
_[23]=d
_[6]=f[5]end
ab(_,i,a,8)bQ(_)elseif R==3 then
_[23]=_[23][20]and _[23]or d
az=b_(K(_,_[23])/45+.5)*45
u=i
m=1
while m<5 and not u do
j=ah(_,aa(az+e[19][2][m],8))j[9]=_[9]u=ab(j,i,a,m)and(C[1]>=j[9]-24 or bO)m=m+1
end
if u then
for k=1,2 do
_[30+k]=j[k]-_[k]_[k]=j[k]end
_[3]=az
_[10]=n
else
ab(_,i,a,8)end
bQ(_)b=y(_,_[23])if f[13]>0 and av(_,_[23],1)and A(b,230)<aj()then
_[6]=f[13]end
if b<64 and f[12]>0 then
_[6]=f[12]end
elseif R==5 then
for a=1,11 do
d[3]=d[3]+e[19][9][a]o=e[14][23]bs()aH(d,1)end
d[3]=d[3]-20
elseif R>9 and _[20]then
_[3]=K(_,_[23])o=e[14][R]_[10]=n
ak=_[23]aH(_,a)end
end
if _[17]and _[17]>0 then
o=e[14][_[17]]if not ab(_,i,a)or _[9]<=C[1]then
if aY then
ar(aY,f[21]*((aj()&7)+1),g[_[14]])end
_[1]=_[1]-_[11]_[2]=_[2]-_[12]_[3]=0
_[6]=B[_[4]][5]_[10]=n
_[11]=0
_[12],_[17]=0
_[19]=0
end
end
if _[6]==1 then
g[a]=i
else
am=sub(_,be)N=Q[2+am[1]//Z+am[2]//Z*bk]if N then
N[0][#N[0]+1]=a
end
end
end
end
for a=1,8 do
if ad(a)and v[1][a+4]>0 then
ag=a
end
end
o=e[14][ag]d[3]=d[3]-as(3)*(D(aM,5,6)*1.5-6)aM=abs(as(3))*aM+1
S=d
for a=1,2 do
S=ah(S,aa(d[3]-O+90*a,as(a)*8.33))end
S[9]=d[9]for a=1,8 do
u=ab(S,n,1,a)end
if u then
for a=1,2 do
d[30+a]=S[a]-d[a]d[a]=S[a]end
if d[9]>C[1]then
d[19]=d[19]-1
else
d[9]=A(C[1],d[9]+4)d[19]=L(0,d[19])end
else
d[19]=0
d[9]=C[1]end
aK=v[1]c=o[1]if ad(31)and ax<=0 and(c==0 or aK[c]>=o[2])then
af(3,n)ax=o[3]if c>0 then
aK[c]=aK[c]-o[2]end
bs()aH(d,1)end
ax=ax-1
if as(4)<0 then
_=ah(d,aa(d[3],64))_[9]=d[9]bc,aB=av(d,_,2,1)_=e[2][aB]if bc==i then
t[2]=aB
c,u=_[4]for a=14,16 do
u=u or v[1][a]>0 and c==a
end
if c==1 or u then
bg(_,_[5])elseif c>3000 and c<3005 then
bn=b_(c-3000)end
end
end
end
t[1]=ag
for a=3,13 do
t[a]=d[e[19][4][a]]or t[a]end
v[1][17]=bF
t[10]=v[1][bd%#v[1]+1]a=an
bD=n
I=1
aq=#g+#P
while I<3 and bD do
c=I*9+5
if a<=#g then
_=g[a]if a~=1 then
if _ then
if _[10]then
_[10]=i
t[c]=a
for k=1,8 do
t[c+k]=_[e[19][1][k]]end
I=I+1
end
else
t[c]=-a
bq(g,a)I=I+1
aq=aq-1
end
end
else
_=P[a-#g]if _[10]then
_[10]=i
t[c]=a-#g+2^15
for k=1,6 do
t[c+k]=_[k]end
I=I+1
end
end
a=(a-2)%aq+1
an=A(an,aq)bD=a~=an
end
an=a
for a=1,32 do
bL.setNumber(a,t[a])end
end
aA=aA+1
async.httpGet(8,"")end
