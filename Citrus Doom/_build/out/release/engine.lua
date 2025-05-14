bS=""

T=128
P=180
bH=output
bx=input
G=math
Q=G.max
v=G.min
au=G.floor
pi=G.pi
at=bx.getNumber
as=bx.getBool
ag=bH.setBool
n=true
i=false
x=ipairs
abs=G.abs
bC=table.remove
ba=string
function af(b,g)return{(b[1]+g[1]),(b[2]+g[2])}end
function sub(b,g)return{(b[1]-g[1]),(b[2]-g[2])}end
function bI(b)return G.sin(b/P*pi)end
function aj(b)return G.cos(b/P*pi)end
function L(b,g)return G.atan(g[2]-b[2],g[1]-b[1])*P/pi end
function H(b,g,aj)return Q(v(aj,b),g)end
function y(b,g)return G.sqrt(((b[1]-g[1])^2)+((b[2]-g[2])^2))end
function S(b,g)return{aj(b)*g,bI(b)*g}end
function exp(b)return b[1],b[2]end
e={}aW=1
aC=3
ap=i
aQ=n
ak=2
z=0
az=0
aw=0
X=0
aJ=0
l=1
aL=0
bD=2
function aU(a,b,_)if a<32768then
_=e[7][a]return aU(_[_[3]*(b[2]-_[2])-_[4]*(b[1]-_[1])>0 and 8 or 7],b)else
a=e[5][e[6][a-32768][2]]return aa[e[3][e[2][a[4]][a[5]+6]][6]]end
end
function aD(s,bi,A,bQ,_,a,k)ad=h[A]f=C[ad[4]]ay,ao=f[18],f[19]J=ay
E=aU(#e[7],s)Y,al=exp(E)ah=sub(s,M[1])N=M[2+ah[1]//T+ah[2]//T*bq]or{{}}for a,_ in x(N[0])do
c=h[_]if _~=A and c and ad[14]~=_ then
m=y(c,s)D=C[c[4]]if c[20]then
W=m-D[18]if W<J and D[23]&1>0 and(f[23]&1>0 or(s[9]+ao<c[9]or s[9]>c[9]+D[19])==i)then
aR=c
if bi==i then
return i
end
J=W
bb=L(s,c)end
end
if A==z and not c[10]then
if m<50then
b=D[25]if b>0then
for q,r in x(B[b])do
if r>0 and B[1][q]<B[2][q]then
c=B
h[_]=i
c[1][q]=au(v(c[1][q]+r,c[2][q]))if H(q,5,12)==q then
ak=q-4
end
end
end
end
b=D[29]if b>0 then
b=e[11][b]for q=7,8 do
d[q]=H(d[q]+b[q*2-13],d[q],b[q*2-12])end
h[_]=i
end
end
end
end
end
aR=i
if al-Y<ao or Y>s[9]+24then
return i
end
for a=1,#N do
_=e[2][N[a]]m,by=bp(s,Z[_[1]],Z[_[2]])if m<J then
if bQ==1 and(_[3]&512>0 or A==z)and(_[4]==2 or A~=z)then
aP(_,_[5])end
if(_[3]&1>0 and f[23]&1>0)or _[3]&4==0 then
J=m
bb=by
else
br,bE=v(_[9],al),Q(_[8],Y)if v(s[9],al-ao)+24<bE or Q(s[9],Y)+ao>br then
J=m
bb=by
else
al,Y=br,bE
end
end
end
end
E={Y,al}if bi then
if J~=ay then
_=af(s,S(bb,J-ay))s[1]=_[1]s[2]=_[2]end
return n
end
return J==ay
end
function bp(o,w,aB)O=y(w,o)bv=L(w,aB)+90
bo=bv-L(o,w)bl=-O*bI(bo)bB=O*aj(bo)aI=bv
if bB<0 then
aI=aI+P
end
if bl<0 then
return O,L(o,w)elseif bl>y(aB,w)then
return y(aB,o),L(o,aB)else
return abs(bB),aI
end
end
function ar(o,w,aV,A,_)aX=y(o,w)aM=aX
aY=n
W,aZ=exp(o)bP,bO=exp(w)aT,aS=exp(sub(w,o))av,bu=o[9]+32,w[9]+32
u=i
for a,_ in x(e[2])do
bM=Z[_[1]]bk,bg=exp(sub(Z[_[2]],bM))bt,bw=exp(sub(o,bM))bA=bg*aT-bk*aS
V=(bk*bw-bg*bt)/bA
bK=(aT*bw-aS*bt)/bA
if H(V,0,1)==V and H(bK,0,1)==bK then
bj={W+(V*aT),aZ+(V*aS)}m=y(o,bj)F=av+(bu-av)*(m/aX)if H(F,_[8]+1,_[9])~=F then
aY=i
if aV==1 then
return i
end
if m<aM then
aM=m
bL,bn=exp(bj)bF=F
am=a
end
end
end
end
if aV>1 then
if aV==3 then
for a,_ in x(h)do
if _ and a~=A then
f=C[_[4]]if f[23]&1>0 and _[20]then
m=y(o,_)if m<aM then
V=bp(_,o,w)O=(m/aX)F=av+(bu-av)*O
if H(F,_[9],_[9]+f[19])==F and V<f[18]then
u=n
aY=i
bL=W+(bP-W)*O
bn=aZ+(bO-aZ)*O
bF=F
am=a
end
end
end
end
end
end
return aY,am,{bL,bn,bF}end
return n
end
function httpReply(b,g,aj)be=aw//2
aw=0
end
function ai()aJ=aJ%256+1
return e[13][1][aJ]end
function aH(_,a)f=C[_[4]]if f[23]&2>0 and _[7]>0 then
_[8]=_[8]-(a+1)//2
_[7]=_[7]-a//2+v(_[8],0)_[8]=Q(_[8],0)if ai()<f[10]then
_[6]=f[9]_[15]=0
_[23]=d
_[10]=n
end
end
end
function bm(b,g,ax)return g[20]and abs(((L(b,g)-b[3]+P)%360)-P)<ax and ar(b,g,1)end
function aF(K,A)bJ=ab and(ab[9]-K[9])*p[6]/y(ab,K)or 0
for a=1,p[12]do
b={}for a=1,30 do
b[a]=K[a]end
b[4]=p[8]b[10]=n
b[14]=A
bN=(ai()/T-1)*p[10]b_=S(K[3]+bN,p[6])if p[7]>0then
h[#h+1]=b
f=C[b[4]]b[6]=f[3]b[9]=K[9]+32
b[11]=b_[1]b[12]=b_[2]b[17]=ak
b[19]=bJ
else
c=af(K,b_)c[9]=d[9]+bJ
aK,aA,c=ar(K,c,3,A)if not aK then
bf=sub(c,S(K[3]+bN,1))h[#h+1]=b
b[1]=bf[1]b[2]=bf[2]b[6]=C[b[4]][3]b[9]=c[3]b[19]=1
if u then
b=h[aA]aH(b,p[9]*((ai()&3)+2))end
end
end
end
end
function aP(_,c)if c>-1 then
b=e[9][c]if b[1]>0 or ad[31]*_[10][2]-ad[32]*_[10][1]<0 then
g=aa[b[1]]an[g and g[30]or#an+1]={c,1,g or ad}_[4]=b[7]b=b[8]>0 and aP(_,b[8])end
else
aQ=n
aC=-c
t[9]=-c
end
end
function bs()bh,ab=2048
for a,_ in x(h)do
if a~=z and _ and bm(d,_,10)then
m=y(_,d)if m<bh then
if C[_[4]][23]&2>0then
ab=_
bh=m
end
end
end
end
end
function onTick()ag(9,as(32))ag(2,i)ag(3,i)for k=1,3 do
if as(32)and(not ap)or not e[21]then
bd=property.getText(aW..bS)if bd~=bS then
a=1
j=bS
_=ba.sub(bd,a,a)while _~=bSdo
c=ba.byte(_)if c>64 or _==bSthen
j=(j..(c-65))+0
if l==1then
am=j
if e[j]==bz then
e[j]={}end
l=2
elseif l==2then
F=j
ac=0
l=3
elseif l==3then
aE=j
l=4
else
if ac==0then
ac=F
aE=aE-1
aN={}e[am][#e[am]+1]=aN
end
aN[#aN+1]=j
ac=ac-1
if Q(ac,aE)==0then
l=1
end
end
j=bS
else
j=j.._
end
a=a+1
_=ba.sub(bd,a,a)end
aW=aW+1
else
ap=n
end
end
end
if ap then
if aQ then
an,aQ={}ae=1
for a=1,10 do
e[a]=e[a+10*aC]end
h=e[1]Z=e[4]aa=e[8]M=e[10]B=e[12]C=e[15]for a=14,16 do
B[1][a]=0
end
aC=aC+1
for a,_ in x(h)do
for k=7,40 do
_[k]=0
end
bR=_[5]+1
_[7]=C[_[4]][4]_[9],_[10]=aU(#e[7],_)[1]if _[4]==1 then
if d then
_[7]=d[7]_[8]=d[8]end
z=a
d=_
elseif _[5]&bD<1then
h[a]=i
end
end
bq=M[1][3]end
for a,_ in x(e[2])do
_[10]=sub(Z[_[2]],Z[_[1]])if _[3]&4>0 then
f,D=aa[e[3][_[6]][6]],aa[e[3][_[7]][6]]_[8]=Q(f[1],D[1])_[9],f[30],D[30]=v(f[2],D[2])else
_[8],_[9]=0,0
end
end
t={}for a=1,32 do
t[a]=0
end
X=v(X+1/be,2/35)ag(1,X>=0)if X>=0 then
X=X-1/35
for a=2,#M do
M[a][0]={}end
for a,r in x(an)do
_=e[9][r[1]]c=r[3]b=_[2]f=c[b]c[b]=H(_[3],f-_[4],f+_[4])+0
f=c[b]if abs(f-_[3])<.1then
an[a]=r[2]==_[5]and{_[6],1,c}or{r[1],r[2]+1,c}if _[6]==0 then
bC(an,a)end
end
c[10]=c[10]or f~=r
c[30]=a
end
for a,_ in x(h)do
if _ then
for k,r in x({1,2,9})do
_[r]=_[r]+_[r+10]end
_[15]=_[15]+1
f=C[_[4]]if _[7]<=0 and _[20]then
_[15]=0
_[6]=f[_[7]<=-f[4]and f[15]>1 and 15or 14]_[10],_[20]=n
if f[27]>0 then
c={}for k=1,30 do
c[k]=_[k]end
c[4]=f[27]c[6]=f[28]h[#h+1]=c
end
end
aG=e[16][_[6]]if _[15]>=aG[2]and aG[2]~=-1then
_[6]=aG[4]_[15]=0
R=e[16][_[6]][3]if R==1 then
for a,l in x(h)do
if l then
j=T-y(_,l)if j>0 then
aH(l,j)end
end
end
elseif R==2then
if bm(_,d,90)then
_[23]=d
_[6]=f[5]end
elseif R==3then
ax=au(L(_,_[23])/45+.5)*45
u=i
l=1
while l<5 and not u do
j=af(_,S(ax+e[19][2][l],8))j[9]=_[9]u=aD(j,i,a,l)and E[1]>=j[9]-24
l=l+1
end
if u then
for k=1,2 do
_[30+k]=j[k]-_[k]_[k]=j[k]end
_[3]=ax
_[10]=n
else
aD(_,i,a)end
if f[23]&4<1 then
_[9]=E[1]end
b=y(_,_[23])if f[13]>0 and ar(_,_[23],1)and v(b,230)<ai()then
_[6]=f[13]end
if b<64 and f[12]>0then
_[6]=f[12]end
elseif R==5then
for a=1,11 do
d[3]=d[3]+e[19][9][a]p=e[14][23]bs()aF(d,z)end
d[3]=d[3]-20
elseif R>9then
_[3]=L(_,_[23])p=e[14][R]_[10]=n
ab=_[23]aF(_,a)end
end
if _[17]and _[17]>0then
p=e[14][_[17]]if not aD(_,i,a)or _[9]<=E[1]then
if aR then
aH(aR,f[21]*((ai()&7)+1))end
_[1]=_[1]-_[11]_[2]=_[2]-_[12]_[3]=0
_[6]=C[_[4]][9]_[10]=n
_[11]=0
_[12]=0
_[17]=bz
_[19]=0
end
end
if _[6]==1then
h[a]=i
else
ah=sub(_,M[1])N=M[2+ah[1]//T+ah[2]//T*bq]if N~=bz then
N[0][#N[0]+1]=a
end
end
end
end
for a=1,8 do
if as(a)and B[1][a+4]>0then
ak=a
end
end
p=e[14][ak]d[3]=d[3]-at(3)*(H(aL,5,6)*1.5-6)aL=abs(at(3))*aL+1
U=d
for a=1,2 do
U=af(U,S(d[3]-P+90*a,at(a)*8.33))end
U[9]=d[9]for a=1,8 do
u=aD(U,n,z,a)end
if u then
for a=1,2 do
d[30+a]=U[a]-d[a]d[a]=U[a]end
if d[9]<=E[1]then
d[9]=v(E[1],d[9]+4)d[19]=Q(0,d[19])else
if d[9]>=E[2]-56then
d[9]=E[2]-56
d[19]=v(0,d[19])end
d[19]=d[19]-1
end
else
d[19]=0
end
aO=B[1]c=p[1]if as(31)and az<=0 and(c==0 or aO[c]>=p[2])then
ag(3,n)az=p[3]if c>0then
aO[c]=aO[c]-p[2]end
bs()aF(d,z)end
az=az-1
if at(4)<0 then
_=af(d,S(d[3],64))_[9]=d[9]aK,aA=ar(d,_,2,z)_=e[2][aA]if aK==i then
t[2]=aA
c,u=_[4]for a=14,16 do
u=u or B[1][a]>0 and c==a
end
if c==1 or u then
aP(_,_[5])elseif c>3000 and c<3005then
bD=au(c-3000)end
end
end
end
t[1]=ak
for a=3,8 do
t[a]=d[e[19][4][a]]end
t[5]=z
t[13]=d[3]a=ae
bG=n
I=1
aq=#h+#aa
while I<3 and bG do
c=I*9+5
if a<=#h then
_=h[a]if a~=z then
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
bC(h,a)I=I+1
aq=aq-1
end
end
else
_=aa[a-#h]if _[10]then
_[10]=i
t[c]=a-#h+2^15
for k=1,6 do
t[c+k]=_[k]end
I=I+1
end
end
a=((a-2)%aq)+1
ae=v(ae,aq)bG=a~=ae
end
ae=a
for a=1,32 do
bH.setNumber(a,t[a])end
end
aw=aw+1
async.httpGet(8,bS)end
function onDraw()bc=screen.drawText
bc(26,137,be)if ap then
for a=1,4 do
b=124+a*7
bc(240,b,au(B[1][a]))bc(230,b,B[1][13+a])end
end
end
