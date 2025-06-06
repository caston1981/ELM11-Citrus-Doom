
Z=128
N=180
bw=output
bN=input
C=math
L=C.max
A=C.min
aQ=C.floor
pi=C.pi
aB=bN.getNumber
ag=bN.getBool
ai=bw.setBool
n=true
i=false
z=ipairs
abs=C.abs
bt=table.remove
bc=string
function an(b,g)return{(b[1]+g[1]),(b[2]+g[2])}end
function sub(b,g)return{(b[1]-g[1]),(b[2]-g[2])}end
function bC(b)return C.sin(b/N*pi)end
function af(b)return C.cos(b/N*pi)end
function K(b,g)return C.atan(g[2]-b[2],g[1]-b[1])*N/pi end
function E(b,g,af)return L(A(af,b),g)end
function w(b,g)return C.sqrt(((b[1]-g[1])^2)+((b[2]-g[2])^2))end
function T(b,g)return{af(b)*g,bC(b)*g}end
function exp(b)return b[1],b[2]end
e={}aH=1
ay=3
aZ=i
aE=n
am=2
aA=0
as=0
aY=0
aU=0
S=0
ba=0
l=1
bf=0
bP=2
function bb(a,b,_)if a<2^15 then
_=e[7][a]return bb(_[_[3]*(b[2]-_[2])-_[4]*(b[1]-_[1])>0 and 8 or 7],b)else
a=e[5][e[6][a-32768][2]]return Q[e[3][e[2][a[4]][a[5]+6]][6]]end
end
function ax(r,bF,v,bR,_)ak=h[v]f=B[ak[4]]ap,aj=f[18],f[19]J=ap
D=bb(#e[7],r)Y,ac=exp(D)ae=sub(r,aC)O=V[2+ae[1]//Z+ae[2]//Z*bu]or{}for a,_ in z(O[0]or{})do
c=h[_]if _~=v and c and ak[14]~=_ then
m=w(c,r)G=B[c[4]]if c[20]then
P=m-G[18]if P<J and G[23]&1>0 and(f[23]&1>0 or E(r[9],c[9]-aj,c[9]+G[19])==r[9])then
bg=c
if bF==i then
return i
end
J=P
be=K(r,c)end
end
if v==1 then
if m<50 then
b=G[25]if b>0 then
for q,s in z(y[b])do
if s>0 and y[1][q]<y[2][q]then
c=y
h[_]=i
c[1][q]=aQ(A(c[1][q]+s,c[2][q]))if E(q,5,12)==q then
am=q-4
end
end
end
end
b=G[29]if b>0 then
b=e[11][b]for q=7,8 do
d[q]=E(d[q]+b[q*2-13],d[q],b[q*2-12])end
h[_]=i
end
end
end
end
end
if ac-Y<aj or Y>r[9]+24 then
return i
end
for a=1,#O do
_=e[2][O[a]]m,bG=bo(r,R[_[1]],R[_[2]])if m<J then
if(_[3]&1>0 and f[23]&1>0)or _[3]&4==0 then
if v>1 or aN>0 or _[3]&4>0 then
J=m
be=bG
end
else
aO,bd=A(_[9],ac),L(_[8],Y)if A(r[9],ac-aj)+24<bd or L(r[9],Y)+aj>aO or aO-bd<aj then
J=m
be=bG
else
if bR==1 and(_[3]&512>0 or v==1)and(_[4]==2 or v>1)then
aT(_,_[5])end
ac,Y=aO,bd
end
end
end
end
D,bg={Y,ac}if bF then
if J~=ap then
_=an(r,T(be,J-ap))r[1]=_[1]r[2]=_[2]end
return n
end
return J==ap
end
function bo(p,x,at)M=w(x,p)bH=K(x,at)+90
bO=bH-K(p,x)bi=-M*bC(bO)aN=M*af(bO)aI=bH
if aN<0 then
aI=aI+N
end
if bi<0 then
return M,K(p,x)elseif bi>w(at,x)then
return w(at,p),K(p,at)else
return abs(aN),aI
end
end
function ar(p,x,aL,v,_)aX=w(p,x)ao=aX
aR=n
P,b_=exp(p)bS,bQ=exp(x)aK,aG=exp(sub(x,p))az,bk=p[9]+32,x[9]+32
t=i
for a,_ in z(e[2])do
bs=R[_[1]]bD,bB=exp(sub(R[_[2]],bs))bl,bh=exp(sub(p,bs))bx=bB*aK-bD*aG
W=(bD*bh-bB*bl)/bx
bJ=(aK*bh-aG*bl)/bx
if E(W,0,1)==W and E(bJ,0,1)==bJ then
bz={P+(W*aK),b_+(W*aG)}m=w(p,bz)F=az+(bk-az)*(m/aX)if E(F,_[8]+1,_[9])~=F then
aR=i
if aL==1 then
return i
end
if m<ao then
ao=m
bj,bA=exp(bz)bq=F
bL=a
end
end
end
end
if aL>1 then
if aL==3 then
for a,_ in z(h)do
if _ and a~=v then
f=B[_[4]]if f[23]&1>0 and _[20]then
m=w(p,_)if m<ao then
W=bo(_,p,x)M=(m/aX)F=az+(bk-az)*M
if E(F,_[9],_[9]+f[19])==F and W<f[18]then
ao=m
t=n
aR=i
bj=P+(bS-P)*M
bA=b_+(bQ-b_)*M
bq=F
bL=a
end
end
end
end
end
end
return aR,bL,{bj,bA,bq}end
return n
end
function httpReply(b,g,af)bn=as//2
as=0
end
function ab()ba=ba%256+1
return e[13][1][ba]end
function aq(_,a)f=B[_[4]]if f[23]&2>0 and _[7]>0 then
_[8]=_[8]-(a+1)//2
_[7]=_[7]-a//2+A(_[8],0)_[8]=L(_[8],0)if ab()<f[10]then
_[6]=f[9]_[15]=0
_[23]=d
_[10]=n
end
end
end
function bp(b,g,av)return g[20]and abs(((K(b,g)-b[3]+N)%360)-N)<av and ar(b,g,1)end
function aD(I,v)bI=aa and(aa[9]-I[9])*o[6]/w(aa,I)or 0
for a=1,o[12]do
b={}for a=1,30 do
b[a]=I[a]end
b[4]=o[8]b[10]=n
b[14]=v
bm=(ab()/Z-1)*o[10]aM=T(I[3]+bm,o[6])if o[7]>0 then
h[#h+1]=b
f=B[b[4]]b[6]=f[3]b[9]=I[9]+o[13]b[11]=aM[1]b[12]=aM[2]b[17]=am
b[19]=bI
else
c=an(I,aM)c[9]=d[9]+bI
aF,aw,c=ar(I,c,3,v)if not aF then
br=sub(c,T(I[3]+bm,1))h[#h+1]=b
b[1]=br[1]b[2]=br[2]b[6]=B[b[4]][3]b[9]=c[3]b[19]=1
if t then
b=h[aw]aq(b,o[9]*((ab()&3)+2))end
end
end
end
end
function aT(_,c)if c>-1 then
b=e[9][c]if b[1]>0 or ak[31]*_[10][2]-ak[32]*_[10][1]<0 then
g=Q[b[1]]al[g and g[30]or#al+1]={c,1,g or ak}_[4]=b[7]b=b[8]>0 and aT(_,b[8])end
else
aE=n
ay=-c
u[9]=-c
end
end
function bE()bM,aa=2048
for a,_ in z(h)do
if a>1 and _ and bp(d,_,10)then
m=w(_,d)if m<bM then
if B[_[4]][23]&2>0 then
aa=_
bM=m
end
end
end
end
end
function onTick()ai(9,ag(32))ai(2,ag(11))ai(3,i)for k=1,3 do
if ag(32)and(not aZ)or not e[21]then
aP=property.getText(aH)a=1
j=""
_=bc.sub(aP,a,a)while _~=""do
c=bc.byte(_)if c>64 then
j=(j..c-65)+0
if l==1 then
by=j
e[j]=e[j]or{}elseif l==2 then
F=j
ah=0
elseif l==3 then
aS=j
else
if ah==0 then
ah=F
aS=aS-1
aV={}e[by][#e[by]+1]=aV
end
aV[#aV+1]=j
ah=ah-1
l=L(ah,aS)>0 and l-1 or 0
end
l=l+1
j=""
else
j=j.._
end
a=a+1
_=bc.sub(aP,a,a)end
aH=aH+1
aZ=aP==""
end
end
if aZ then
if aE then
al,aE={}ad=1
for a=1,10 do
e[a]=e[a+10*ay]end
h=e[1]R=e[4]Q=e[8]V=e[10]aC,V[1]=V[1]y=e[12]B=e[15]for a=14,16 do
y[1][a]=0
end
ay=ay+1
for a,_ in z(h)do
for k=7,40 do
_[k]=0
end
bT=_[5]+1
_[7]=B[_[4]][4]_[9],_[10]=bb(#e[7],_)[1]if _[4]==1 then
if d then
_[7]=d[7]_[8]=d[8]end
d=_
elseif _[5]&bP<1 then
h[a]=i
end
end
bu=aC[3]end
for a,_ in z(e[2])do
_[10]=sub(R[_[2]],R[_[1]])if _[3]&4>0 then
f,G=Q[e[3][_[6]][6]],Q[e[3][_[7]][6]]_[8]=L(f[1],G[1])_[9],f[30],G[30]=A(f[2],G[2])else
_[8],_[9]=0,0
end
end
u={}for a=1,32 do
u[a]=0
end
aU=aU+1
S=A(S+1/bn,2/35)ai(1,S>=0)if S>=0 then
S=S-1/35
aY=aY+1
for a=2,#V do
V[a][0]={}end
for a,s in z(al)do
_=e[9][s[1]]c=s[3]b=_[2]f=c[b]c[b]=E(_[3],f-_[4],f+_[4])+0
f=c[b]if f==_[3]then
al[a]=s[2]==_[5]and{_[6],1,c}or{s[1],s[2]+1,c}if _[6]==0 then
bt(al,a)end
end
c[10]=c[10]or f~=s
c[30]=a
end
for a,_ in z(h)do
if _ then
for k,s in z({1,2,9})do
_[s]=_[s]+_[s+10]end
_[15]=_[15]+1
f=B[_[4]]if _[7]<=0 and _[20]then
_[15]=0
_[6]=f[_[7]<=-f[4]and f[15]>1 and 15 or 14]_[10],_[20]=n
if f[27]>0 then
c={}for k=1,30 do
c[k]=_[k]end
c[4]=f[27]c[6]=f[28]h[#h+1]=c
end
end
aJ=e[16][_[6]]if _[15]>=aJ[2]and aJ[2]~=-1 then
_[6]=aJ[4]_[15]=0
U=e[16][_[6]][3]if U==1 then
for a,l in z(h)do
if l then
j=Z-w(_,l)if j>0 then
aq(l,j)end
end
end
elseif U==2 then
if bp(_,d,90)then
_[23]=d
_[6]=f[5]end
elseif U==3 then
av=aQ(K(_,_[23])/45+.5)*45
t=i
l=1
bK=f[23]&4>0
while l<5 and not t do
j=an(_,T(av+e[19][2][l],8))j[9]=_[9]t=ax(j,i,a,l)and(D[1]>=j[9]-24 or bK)l=l+1
end
if t then
for k=1,2 do
_[30+k]=j[k]-_[k]_[k]=j[k]end
_[3]=av
_[10]=n
else
ax(_,i,a)end
_[9]=bK and _[9]or D[1]b=w(_,_[23])if f[13]>0 and ar(_,_[23],1)and A(b,230)<ab()then
_[6]=f[13]end
if b<64 and f[12]>0 then
_[6]=f[12]end
elseif U==5 then
for a=1,11 do
d[3]=d[3]+e[19][9][a]o=e[14][23]bE()aD(d,1)end
d[3]=d[3]-20
elseif U>9 and _[20]then
_[3]=K(_,_[23])o=e[14][U]_[10]=n
aa=_[23]aD(_,a)end
end
if _[17]and _[17]>0 then
o=e[14][_[17]]if not ax(_,i,a)or _[9]<=D[1]then
if bg then
aq(bg,f[21]*((ab()&7)+1))end
_[1]=_[1]-_[11]_[2]=_[2]-_[12]_[3]=0
_[6]=B[_[4]][5]_[10]=n
_[11]=0
_[12],_[17]=0
_[19]=0
end
end
if _[6]==1 then
h[a]=i
else
ae=sub(_,aC)O=V[2+ae[1]//Z+ae[2]//Z*bu]if O then
O[0][#O[0]+1]=a
end
end
end
end
for a=1,8 do
if ag(a)and y[1][a+4]>0 then
am=a
end
end
o=e[14][am]d[3]=d[3]-aB(3)*(E(bf,5,6)*1.5-6)bf=abs(aB(3))*bf+1
X=d
for a=1,2 do
X=an(X,T(d[3]-N+90*a,aB(a)*8.33))end
X[9]=d[9]for a=1,8 do
t=ax(X,n,1,a)end
if t then
for a=1,2 do
d[30+a]=X[a]-d[a]d[a]=X[a]end
if d[9]>D[1]then
d[19]=d[19]-1
else
d[9]=A(D[1],d[9]+4)d[19]=L(0,d[19])end
else
d[19]=0
d[9]=D[1]t=aY%4>0 or D[6]<18 or aq(d,10)end
aW=y[1]c=o[1]if ag(31)and aA<=0 and(c==0 or aW[c]>=o[2])then
ai(3,n)aA=o[3]if c>0 then
aW[c]=aW[c]-o[2]end
bE()aD(d,1)end
aA=aA-1
if aB(4)<0 then
_=an(d,T(d[3],64))_[9]=d[9]aF,aw=ar(d,_,2,1)_=e[2][aw]if aF==i then
u[2]=aw
c,t=_[4]for a=14,16 do
t=t or y[1][a]>0 and c==a
end
if c==1 or t then
aT(_,_[5])elseif c>3000 and c<3005 then
bP=aQ(c-3000)end
end
end
end
u[1]=am
for a=3,13 do
u[a]=d[e[19][4][a]]or u[a]end
y[1][17]=bn
u[10]=y[1][aU%#y[1]+1]a=ad
bv=n
H=1
au=#h+#Q
while H<3 and bv do
c=H*9+5
if a<=#h then
_=h[a]if a~=1 then
if _ then
if _[10]then
_[10]=i
u[c]=a
for k=1,8 do
u[c+k]=_[e[19][1][k]]end
H=H+1
end
else
u[c]=-a
bt(h,a)H=H+1
au=au-1
end
end
else
_=Q[a-#h]if _[10]then
_[10]=i
u[c]=a-#h+2^15
for k=1,6 do
u[c+k]=_[k]end
H=H+1
end
end
a=(a-2)%au+1
ad=A(ad,au)bv=a~=ad
end
ad=a
for a=1,32 do
bw.setNumber(a,u[a])end
end
as=as+1
async.httpGet(8,"")end
