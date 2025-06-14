
S=128
N=180
E=math
L=E.max
z=E.min
aG=E.floor
pi=E.pi
as=input.getNumber
ao=input.getBool
ah=output.setBool
m=true
x=false
C=ipairs
abs=E.abs
aR=table.remove
aT=string
function an(b,h)return{(b[1]+h[1]),(b[2]+h[2])}end
function sub(b,h)return{(b[1]-h[1]),(b[2]-h[2])}end
function bJ(b)return E.sin(b/N*pi)end
function al(b)return E.cos(b/N*pi)end
function K(b,h)return E.atan(h[2]-b[2],h[1]-b[1])*N/pi end
function G(b,h,al)return L(z(al,b),h)end
function w(b,h)return E.sqrt(((b[1]-h[1])^2)+((b[2]-h[2])^2))end
function U(b,h)return{al(b)*h,bJ(b)*h}end
function exp(b)return b[1],b[2]end
e={}bb=1
at=3
aQ=m
ac=2
aB=0
aA=0
aI=0
aN=0
Y=0
aX=0
k=1
aF=0
bO=2
function aW(a,b,_)if a<2^15 then
_=e[7][a]return aW(_[_[3]*(b[2]-_[2])-_[4]*(b[1]-_[1])>0 and 8 or 7],b)else
a=e[5][e[6][a-32768][2]]return aa[e[3][e[2][a[4]][a[5]+6]][6]]end
end
function ad(t,bB,u,bL,_)X=g[u]f=B[X[4]]au,aj=f[18],f[19]I=au
A=aW(#e[7],t)Z,ae=exp(A)am=sub(t,bc)O=T[2+am[1]//S+am[2]//S*bu]or{}for a,_ in C(O[0]or{})do
c=g[_]if _~=u and c and X[14]~=_ then
l=w(c,t)D=B[c[4]]if c[20]then
W=l-D[18]if W<I and D[23]&1>0 and(f[23]&1>0 or G(t[9],c[9]-aj,c[9]+D[19])==t[9])then
bd=c
if bB==x then
return
end
I=W
bf=K(t,c)end
end
if u==1 then
if l<50 then
b=D[25]if b>0 then
for q,s in C(y[b])do
if s>0 and y[1][q]<y[2][q]then
c=y
g[_]=x
c[1][q]=aG(z(c[1][q]+s,c[2][q]))if G(q,5,12)==q then
ac=q-4
end
end
end
end
b=D[29]if b>0 then
b=e[11][b]for q=7,8 do
d[q]=G(d[q]+b[q*2-13],d[q],b[q*2-12])end
g[_]=x
end
end
end
end
end
if ae-Z<aj or Z>t[9]+24 then
r=(bL or 1)<8 or aI%4>0 or A[6]<18 or aw(X,10)return
end
for a=1,#O do
_=e[2][O[a]]l,bP=by(t,P[_[1]],P[_[2]])if l<I then
if(_[3]&1>0 and f[23]&1>0)or _[3]&4==0 then
if u>1 or aD>0 or _[3]&4>0 then
I=l
bf=bP
end
else
aV,aM=z(_[9],ae),L(_[8],Z)if z(t[9],ae-aj)+24<aM or L(t[9],Z)+aj>aV or aV-aM<aj then
I=l
bf=bP
else
if bL==1 and(_[3]&512>0 or u==1)and(_[4]==2 or u>1)then
aC(_,_[5])end
ae,Z=aV,aM
end
end
end
end
A,bd={Z,ae}if bB then
if I~=au then
_=an(t,U(bf,I-au))t[1]=_[1]t[2]=_[2]end
return m
end
return I==au
end
function by(p,v,ax)M=w(v,p)bw=K(v,ax)+90
bq=bw-K(p,v)bj=-M*bJ(bq)aD=M*al(bq)aY=bw
if aD<0 then
aY=aY+N
end
if bj<0 then
return M,K(p,v)elseif bj>w(ax,v)then
return w(ax,p),K(p,ax)else
return abs(aD),aY
end
end
function aq(p,v,aJ,u,_)aE=w(p,v)ay=aE
aH,r=m
W,aO=exp(p)bQ,bR=exp(v)aK,be=exp(sub(v,p))ar,bm=p[9]+32,v[9]+32
for a,_ in C(e[2])do
bA=P[_[1]]bz,bD=exp(sub(P[_[2]],bA))bx,bh=exp(sub(p,bA))bv=bD*aK-bz*be
Q=(bz*bh-bD*bx)/bv
bt=(aK*bh-be*bx)/bv
if G(Q,0,1)==Q and G(bt,0,1)==bt then
bi={W+(Q*aK),aO+(Q*be)}l=w(p,bi)H=ar+(bm-ar)*(l/aE)if G(H,_[8]+1,_[9])~=H then
aH=x
if aJ==1 then
return
end
if l<ay then
ay=l
bk,bl=exp(bi)bC=H
bp=a
end
end
end
end
if aJ>1 then
if aJ==3 then
for a,_ in C(g)do
if _ and a~=u then
f=B[_[4]]if f[23]&1>0 and _[20]then
l=w(p,_)if l<ay then
Q=by(_,p,v)M=(l/aE)H=ar+(bm-ar)*M
if G(H,_[9],_[9]+f[19])==H and Q<f[18]then
ay=l
r,aH=m
bk=W+(bQ-W)*M
bl=aO+(bR-aO)*M
bC=H
bp=a
end
end
end
end
end
end
return aH,bp,{bk,bl,bC}end
return m
end
function httpReply(b,h,al)bF=aA//2
aA=0
end
function ag()aX=aX%256+1
return e[13][1][aX]end
function aw(_,a,c)f=B[_[4]]if f[23]&2>0 and _[7]>0 then
_[8]=_[8]-(a+1)//2
_[7]=_[7]-a//2+z(_[8],0)_[8]=L(_[8],0)if ag()<f[10]then
_[6]=f[9]_[15]=0
_[23]=f[13]~="lost soul missile state" and c or d
_[10]=m
end
end
end
function bI(b,h,az)return h[20]and abs(((K(b,h)-b[3]+N)%360)-N)<az and aq(b,h,1)end
function aS(F,u)bH=ab and(ab[9]-F[9])*n[6]/w(ab,F)or 0
for a=1,n[12]do
b={}for a=1,30 do
b[a]=F[a]end
b[4]=n[8]b[10]=m
b[14]=u
bn=(ag()/S-1)*n[10]aU=U(F[3]+bn,n[6])if n[7]>0 then
g[#g+1]=b
f=B[b[4]]b[6]=f[3]b[9]=F[9]+n[13]b[11]=aU[1]b[12]=aU[2]b[17]=ac
b[19]=bH
else
c=an(F,aU)c[9]=d[9]+bH
aL,av,c=aq(F,c,3,u)if not aL then
bs=sub(c,U(F[3]+bn,1))g[#g+1]=b
b[1]=bs[1]b[2]=bs[2]b[6]=B[b[4]][3]b[9]=c[3]b[19]=1
if r then
b=g[av]aw(b,n[9]*((ag()&3)+2),F)end
end
end
end
end
function aC(_,c)if c>-1 then
b=e[9][c]if b[1]>0 or X[31]*_[10][2]-X[32]*_[10][1]<0 then
h=aa[b[1]]af[h and h[30]or#af+1]={c,1,h or X}_[4]=b[7]b=b[8]>0 and aC(_,b[8])end
else
aQ=m
at=-c
o[10]=-c
end
end
function bM()bN,ab=2048
for a,_ in C(g)do
if a>1 and _ and bI(d,_,10)then
l=w(_,d)if l<bN then
if B[_[4]][23]&2>0 then
ab=_
bN=l
end
end
end
end
end
function bG(_)if _[9]~=A[1]and not bo then
_[9]=A[1]_[10]=true
end
end
function onTick()ah(9,ao(32))ah(2,ao(11))ah(3,x)for j=1,3 do
if ao(32)and(not bE)or not e[21]then
b_=property.getText(bb)a=1
i=""
_=aT.sub(b_,a,a)while _~=""do
c=aT.byte(_)if c>64 then
i=(i..c-65)+0
if k==1 then
br=i
e[i]=e[i]or{}elseif k==2 then
H=i
ak=0
elseif k==3 then
aZ=i
else
if ak==0 then
ak=H
aZ=aZ-1
aP={}e[br][#e[br]+1]=aP
end
aP[#aP+1]=i
ak=ak-1
k=L(ak,aZ)>0 and k-1 or 0
end
k=k+1
i=""
else
i=i.._
end
a=a+1
_=aT.sub(b_,a,a)end
bb=bb+1
bE=b_==""
end
end
if bE then
if aQ then
af,aQ={}ai=1
for a=1,10 do
e[a]=e[a+10*at]end
g=e[1]P=e[4]aa=e[8]T=e[10]bc,T[1]=T[1]y=e[12]B=e[15]for a=14,16 do
y[1][a]=0
end
at=at+1
for a=#g,1,-1 do
_=g[a]for j=7,40 do
_[j]=0
end
_[7]=B[_[4]][4]_[9],_[10]=aW(#e[7],_)[1]if _[5]&bO<1 then
aR(g,a)elseif _[4]==1 then
if d then
_[7]=d[7]_[8]=d[8]end
d=_
end
end
bu=bc[3]end
for a,_ in C(e[2])do
_[10]=sub(P[_[2]],P[_[1]])if _[3]&4>0 then
f,D=aa[e[3][_[6]][6]],aa[e[3][_[7]][6]]_[8]=L(f[1],D[1])_[9],f[30],D[30]=z(f[2],D[2])else
_[8],_[9]=0,0
end
end
o={}for a=1,32 do
o[a]=0
end
aN=aN+1
Y=z(Y+1/bF,2/35)ah(1,Y>=0)if Y>=0 then
Y=Y-1/35
aI=aI+1
for a=2,#T do
T[a][0]={}end
for a,s in C(af)do
_=e[9][s[1]]c=s[3]b=_[2]f=c[b]c[b]=G(_[3],f-_[4],f+_[4])+0
f=c[b]if f==_[3]then
af[a]=s[2]==_[5]and{_[6],1,c}or{s[1],s[2]+1,c}if _[6]==0 then
aR(af,a)end
end
c[10]=c[10]or f~=s
c[30]=a
end
for a,_ in C(g)do
if _ then
for j,s in C({1,2,9})do
_[s]=_[s]+_[s+10]end
_[15]=_[15]+1
f=B[_[4]]if _[7]<=0 and _[20]then
_[15]=0
_[6]=f[_[7]<=-f[4]and f[15]>1 and 15 or 14]_[10],_[20]=m
if f[27]>0 then
c={}for j=1,30 do
c[j]=_[j]end
c[4]=f[27]c[6]=f[28]g[#g+1]=c
end
end
bg=e[16][_[6]]if _[15]>=bg[2]and bg[2]~=-1 then
_[6]=bg[4]_[15]=0
V=e[16][_[6]][3]bo=f[23]&4>0
if V==1 then
for a,k in C(g)do
if k then
i=S-w(_,k)if i>0 then
aw(k,i)end
end
end
elseif V==2 then
if bI(_,d,90)then
_[23]=d
_[6]=f[5]o[12]=f[6]end
ad(_,x,a,8)bG(_)elseif V==3 then
_[23]=_[23][20]and _[23]or d
az,r=aG(K(_,_[23])/45+.5)*45
k=1
while k<5 and not r do
i=an(_,U(az+e[19][2][k],8))i[9]=_[9]r=ad(i,x,a,k)and(A[1]>=i[9]-24 or bo)k=k+1
end
if r then
for j=1,2 do
_[30+j]=i[j]-_[j]_[j]=i[j]end
_[3]=az
_[10]=m
else
ad(_,x,a,8)end
bG(_)b=w(_,_[23])if f[13]>0 and aq(_,_[23],1)and z(b,230)<ag()then
_[6]=f[13]end
if b<64 and f[12]>0 then
_[6]=f[12]end
elseif V==5 then
for a=1,11 do
d[3]=d[3]+e[19][9][a]n=e[14][23]bM()aS(d,1)end
d[3]=d[3]-20
elseif V>9 and _[20]then
_[3]=K(_,_[23])n=e[14][V]_[10]=m
ab=_[23]aS(_,a)end
end
if _[17]and _[17]>0 then
n=e[14][_[17]]if not ad(_,x,a)or _[9]<=A[1]then
if bd then
aw(bd,f[21]*((ag()&7)+1),g[_[14]])end
_[1]=_[1]-_[11]_[2]=_[2]-_[12]_[3]=0
_[6]=B[_[4]][5]_[10]=m
_[11]=0
_[12],_[17]=0
_[19]=0
end
end
if _[6]==1 then
g[a]=x
else
am=sub(_,bc)O=T[2+am[1]//S+am[2]//S*bu]if O then
O[0][#O[0]+1]=a
end
end
end
end
for a=1,8 do
if ao(a)and y[1][a+4]>0 then
ac=a
end
end
n=e[14][ac]d[3]=d[3]-as(3)*(G(aF,5,6)*1.5-6)aF=abs(as(3))*aF+1
R=d
for a=1,2 do
R=an(R,U(d[3]-N+90*a,as(a)*8.33))end
R[9]=d[9]for a=1,8 do
r=ad(R,m,1,a)end
if r then
for a=1,2 do
d[30+a]=R[a]-d[a]d[a]=R[a]end
if d[9]>A[1]then
d[19]=d[19]-1
else
d[9]=z(A[1],d[9]+4)d[19]=L(0,d[19])end
else
d[19]=0
d[9]=A[1]end
ba=y[1]c=n[1]if ao(31)and aB<=0 and(c==0 or ba[c]>=n[2])then
ah(3,m)aB=n[3]if c>0 then
ba[c]=ba[c]-n[2]end
bM()aS(d,1)end
aB=aB-1
if as(4)<0 then
_=an(d,U(d[3],64))_[9]=d[9]aL,av=aq(d,_,2,1)_=e[2][av]if aL==x then
o[2]=av
c,r=_[4]for a=14,16 do
r=r or y[1][a]>0 and c==a
end
if c==1 or r then
aC(_,_[5])elseif c>3000 and c<3005 then
bO=aG(c-3000)end
end
end
end
o[1]=ac
for a=3,14 do
o[a]=d[e[19][4][a]]or o[a]end
y[1][17]=bF
o[11]=y[1][aN%#y[1]+1]a=ai
bK=m
J=1
ap=#g+#aa
while J<3 and bK do
c=J*9+6
if a<=#g then
_=g[a]if a~=1 then
if _ then
if _[10]then
o[c],_[10]=a
for j=1,8 do
o[c+j]=_[e[19][1][j]]end
J=J+1
end
else
o[c]=-a
aR(g,a)J=J+1
ap=ap-1
end
end
else
_=aa[a-#g]if _[10]then
o[c],_[10]=a-#g+2^15
for j=1,6 do
o[c+j]=_[j]end
J=J+1
end
end
a=(a-2)%ap+1
ai=z(ai,ap)bK=a~=ai
end
ai=a
for a=1,32 do
output.setNumber(a,o[a])end
end
aA=aA+1
async.httpGet(8,"")end
