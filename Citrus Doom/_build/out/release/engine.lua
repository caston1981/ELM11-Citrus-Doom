
R=128
L=180
bp=output
bq=input
F=math
M=F.max
A=F.min
aT=F.floor
pi=F.pi
as=bq.getNumber
ai=bq.getBool
af=bp.setBool
n=true
j=false
x=ipairs
abs=F.abs
bi=table.remove
aV=string
function ab(b,g)return{(b[1]+g[1]),(b[2]+g[2])}end
function sub(b,g)return{(b[1]-g[1]),(b[2]-g[2])}end
function bJ(b)return F.sin(b/L*pi)end
function ak(b)return F.cos(b/L*pi)end
function I(b,g)return F.atan(g[2]-b[2],g[1]-b[1])*L/pi end
function G(b,g,ak)return M(A(ak,b),g)end
function w(b,g)return F.sqrt(((b[1]-g[1])^2)+((b[2]-g[2])^2))end
function W(b,g)return{ak(b)*g,bJ(b)*g}end
function exp(b)return b[1],b[2]end
e={}aZ=1
ap=3
aH=j
aK=n
an=2
aB=0
aw=0
aF=0
bd=0
Y=0
ba=0
m=1
bg=0
bN=2
function aW(a,b,_)if a<2^15 then
_=e[7][a]return aW(_[_[3]*(b[2]-_[2])-_[4]*(b[1]-_[1])>0 and 8 or 7],b)else
a=e[5][e[6][a-32768][2]]return Z[e[3][e[2][a[4]][a[5]+6]][6]]end
end
function ax(t,by,v,bT,_)aj=h[v]f=z[aj[4]]at,ah=f[18],f[19]K=at
C=aW(#e[7],t)S,am=exp(C)ac=sub(t,bc)O=U[2+ac[1]//R+ac[2]//R*bl]or{}for a,_ in x(O[0]or{})do
c=h[_]if _~=v and c and aj[14]~=_ then
l=w(c,t)D=z[c[4]]if c[20]then
Q=l-D[18]if Q<K and D[23]&1>0 and(f[23]&1>0 or G(t[9],c[9]-ah,c[9]+D[19])==t[9])then
aJ=c
if by==j then
return j
end
K=Q
aD=I(t,c)end
end
if v==1 then
if l<50 then
b=D[25]if b>0 then
for p,u in x(B[b])do
if u>0 and B[1][p]<B[2][p]then
c=B
h[_]=j
c[1][p]=aT(A(c[1][p]+u,c[2][p]))if G(p,5,12)==p then
an=p-4
end
end
end
end
b=D[29]if b>0 then
b=e[11][b]for p=7,8 do
d[p]=G(d[p]+b[p*2-13],d[p],b[p*2-12])end
h[_]=j
end
end
end
end
end
if am-S<ah or S>t[9]+24 then
return j
end
for a=1,#O do
_=e[2][O[a]]l,br=bO(t,T[_[1]],T[_[2]])if l<K then
if(_[3]&1>0 and f[23]&1>0)or _[3]&4==0 then
if v>1 or aG>0 or _[3]&4>0 then
K=l
aD=br
end
else
aM,aO=A(_[9],am),M(_[8],S)if A(t[9],am-ah)+24<aO or M(t[9],S)+ah>aM or aM-aO<ah then
K=l
aD=br
else
if bT==1 and(_[3]&512>0 or v==1)and(_[4]==2 or v>1)then
aC(_,_[5])end
am,S=aM,aO
end
end
end
end
C,aJ={S,am}if by then
if K~=at then
_=ab(t,W(aD,K-at))t[1]=_[1]t[2]=_[2]end
return n
end
return K==at
end
function bO(q,y,au)N=w(y,q)bD=I(y,au)+90
bz=bD-I(q,y)bk=-N*bJ(bz)aG=N*ak(bz)bf=bD
if aG<0 then
bf=bf+L
end
if bk<0 then
return N,I(q,y)elseif bk>w(au,y)then
return w(au,q),I(q,au)else
return abs(aG),bf
end
end
function ao(q,y,b_,v,_)aU=w(q,y)ay=aU
aY=n
Q,aQ=exp(q)bQ,bS=exp(y)aI,aX=exp(sub(y,q))aA,bG=q[9]+32,y[9]+32
r=j
for a,_ in x(e[2])do
bw=T[_[1]]bC,bL=exp(sub(T[_[2]],bw))bx,bs=exp(sub(q,bw))bo=bL*aI-bC*aX
P=(bC*bs-bL*bx)/bo
bh=(aI*bs-aX*bx)/bo
if G(P,0,1)==P and G(bh,0,1)==bh then
bu={Q+(P*aI),aQ+(P*aX)}l=w(q,bu)E=aA+(bG-aA)*(l/aU)if G(E,_[8]+1,_[9])~=E then
aY=j
if b_==1 then
return j
end
if l<ay then
ay=l
bj,bH=exp(bu)bP=E
bv=a
end
end
end
end
if b_>1 then
if b_==3 then
for a,_ in x(h)do
if _ and a~=v then
f=z[_[4]]if f[23]&1>0 and _[20]then
l=w(q,_)if l<ay then
P=bO(_,q,y)N=(l/aU)E=aA+(bG-aA)*N
if G(E,_[9],_[9]+f[19])==E and P<f[18]then
ay=l
r=n
aY=j
bj=Q+(bQ-Q)*N
bH=aQ+(bS-aQ)*N
bP=E
bv=a
end
end
end
end
end
end
return aY,bv,{bj,bH,bP}end
return n
end
function httpReply(b,g,ak)bn=aw//2
aw=0
end
function ad()ba=ba%256+1
return e[13][1][ba]end
function aq(_,a)f=z[_[4]]if f[23]&2>0 and _[7]>0 then
_[8]=_[8]-(a+1)//2
_[7]=_[7]-a//2+A(_[8],0)_[8]=M(_[8],0)if ad()<f[10]then
_[6]=f[9]_[15]=0
_[23]=d
_[10]=n
end
end
end
function bt(b,g,az)return g[20]and abs(((I(b,g)-b[3]+L)%360)-L)<az and ao(b,g,1)end
function aE(H,v)bm=ae and(ae[9]-H[9])*o[6]/w(ae,H)or 0
for a=1,o[12]do
b={}for a=1,30 do
b[a]=H[a]end
b[4]=o[8]b[10]=n
b[14]=v
bA=(ad()/R-1)*o[10]aP=W(H[3]+bA,o[6])if o[7]>0 then
h[#h+1]=b
f=z[b[4]]b[6]=f[3]b[9]=H[9]+o[13]b[11]=aP[1]b[12]=aP[2]b[17]=an
b[19]=bm
else
c=ab(H,aP)c[9]=d[9]+bm
aN,av,c=ao(H,c,3,v)if not aN then
bB=sub(c,W(H[3]+bA,1))h[#h+1]=b
b[1]=bB[1]b[2]=bB[2]b[6]=z[b[4]][3]b[9]=c[3]b[19]=1
if r then
b=h[av]aq(b,o[9]*((ad()&3)+2))end
end
end
end
end
function aC(_,c)if c>-1 then
b=e[9][c]if b[1]>0 or aj[31]*_[10][2]-aj[32]*_[10][1]<0 then
g=Z[b[1]]aa[g and g[30]or#aa+1]={c,1,g or aj}_[4]=b[7]b=b[8]>0 and aC(_,b[8])end
else
aK=n
ap=-c
s[9]=-c
end
end
function bM()bI,ae=2048
for a,_ in x(h)do
if a>1 and _ and bt(d,_,10)then
l=w(_,d)if l<bI then
if z[_[4]][23]&2>0 then
ae=_
bI=l
end
end
end
end
end
function onTick()af(9,ai(32))af(2,ai(11))af(3,j)for k=1,3 do
if ai(32)and(not aH)or not e[21]then
aR=property.getText(aZ)a=1
i=""
_=aV.sub(aR,a,a)while _~=""do
c=aV.byte(_)if c>64 then
i=(i..c-65)+0
if m==1 then
bE=i
e[i]=e[i]or{}elseif m==2 then
E=i
al=0
elseif m==3 then
aS=i
else
if al==0 then
al=E
aS=aS-1
bb={}e[bE][#e[bE]+1]=bb
end
bb[#bb+1]=i
al=al-1
m=M(al,aS)>0 and m-1 or 0
end
m=m+1
i=""
else
i=i.._
end
a=a+1
_=aV.sub(aR,a,a)end
aZ=aZ+1
aH=aR==""
end
end
if aH then
if aK then
aa,aK={}ag=1
for a=1,10 do
e[a]=e[a+10*ap]end
h=e[1]T=e[4]Z=e[8]U=e[10]bc,U[1]=U[1]B=e[12]z=e[15]for a=14,16 do
B[1][a]=0
end
ap=ap+1
for a,_ in x(h)do
for k=7,40 do
_[k]=0
end
bU=_[5]+1
_[7]=z[_[4]][4]_[9],_[10]=aW(#e[7],_)[1]if _[4]==1 then
if d then
_[7]=d[7]_[8]=d[8]end
d=_
elseif _[5]&bN<1 then
h[a]=j
end
end
bl=bc[3]end
for a,_ in x(e[2])do
_[10]=sub(T[_[2]],T[_[1]])if _[3]&4>0 then
f,D=Z[e[3][_[6]][6]],Z[e[3][_[7]][6]]_[8]=M(f[1],D[1])_[9],f[30],D[30]=A(f[2],D[2])else
_[8],_[9]=0,0
end
end
s={}for a=1,32 do
s[a]=0
end
bd=bd+1
Y=A(Y+1/bn,2/35)af(1,Y>=0)if Y>=0 then
Y=Y-1/35
aF=aF+1
for a=2,#U do
U[a][0]={}end
for a,u in x(aa)do
_=e[9][u[1]]c=u[3]b=_[2]f=c[b]c[b]=G(_[3],f-_[4],f+_[4])+0
f=c[b]if f==_[3]then
aa[a]=u[2]==_[5]and{_[6],1,c}or{u[1],u[2]+1,c}if _[6]==0 then
bi(aa,a)end
end
c[10]=c[10]or f~=u
c[30]=a
end
for a,_ in x(h)do
if _ then
for k,u in x({1,2,9})do
_[u]=_[u]+_[u+10]end
_[15]=_[15]+1
f=z[_[4]]if _[7]<=0 and _[20]then
_[15]=0
_[6]=f[_[7]<=-f[4]and f[15]>1 and 15 or 14]_[10],_[20]=n
if f[27]>0 then
c={}for k=1,30 do
c[k]=_[k]end
c[4]=f[27]c[6]=f[28]h[#h+1]=c
end
end
aL=e[16][_[6]]if _[15]>=aL[2]and aL[2]~=-1 then
_[6]=aL[4]_[15]=0
X=e[16][_[6]][3]if X==1 then
for a,m in x(h)do
if m then
i=R-w(_,m)if i>0 then
aq(m,i)end
end
end
elseif X==2 then
if bt(_,d,90)then
_[23]=d
_[6]=f[5]end
elseif X==3 then
az=aT(I(_,_[23])/45+.5)*45
r=j
m=1
bK=f[23]&4>0
while m<5 and not r do
i=ab(_,W(az+e[19][2][m],8))i[9]=_[9]r=ax(i,j,a,m)and(C[1]>=i[9]-24 or bK)m=m+1
end
if r then
for k=1,2 do
_[30+k]=i[k]-_[k]_[k]=i[k]end
_[3]=az
_[10]=n
else
ax(_,j,a)end
_[9]=bK and _[9]or C[1]b=w(_,_[23])if f[13]>0 and ao(_,_[23],1)and A(b,230)<ad()then
_[6]=f[13]end
if b<64 and f[12]>0 then
_[6]=f[12]end
elseif X==5 then
for a=1,11 do
d[3]=d[3]+e[19][9][a]o=e[14][23]bM()aE(d,1)end
d[3]=d[3]-20
elseif X>9 and _[20]then
_[3]=I(_,_[23])o=e[14][X]_[10]=n
ae=_[23]aE(_,a)end
end
if _[17]and _[17]>0 then
o=e[14][_[17]]if not ax(_,j,a)or _[9]<=C[1]then
if aJ then
aq(aJ,f[21]*((ad()&7)+1))end
_[1]=_[1]-_[11]_[2]=_[2]-_[12]_[3]=0
_[6]=z[_[4]][5]_[10]=n
_[11]=0
_[12],_[17]=0
_[19]=0
end
end
if _[6]==1 then
h[a]=j
else
ac=sub(_,bc)O=U[2+ac[1]//R+ac[2]//R*bl]if O then
O[0][#O[0]+1]=a
end
end
end
end
for a=1,8 do
if ai(a)and B[1][a+4]>0 then
an=a
end
end
o=e[14][an]d[3]=d[3]-as(3)*(G(bg,5,6)*1.5-6)bg=abs(as(3))*bg+1
V=d
for a=1,2 do
V=ab(V,W(d[3]-L+90*a,as(a)*8.33))end
V[9]=d[9]for a=1,8 do
r=ax(V,n,1,a)end
if r then
for a=1,2 do
d[30+a]=V[a]-d[a]d[a]=V[a]end
if d[9]>C[1]then
d[19]=d[19]-1
else
d[9]=A(C[1],d[9]+4)d[19]=M(0,d[19])end
else
d[19]=0
d[9]=C[1]r=aF%4>0 or C[6]<18 or aq(d,10)end
be=B[1]c=o[1]if ai(31)and aB<=0 and(c==0 or be[c]>=o[2])then
af(3,n)aB=o[3]if c>0 then
be[c]=be[c]-o[2]end
bM()aE(d,1)end
aB=aB-1
if as(4)<0 then
_=ab(d,W(d[3],64))_[9]=d[9]aN,av=ao(d,_,2,1)_=e[2][av]if aN==j then
s[2]=av
c,r=_[4]for a=14,16 do
r=r or B[1][a]>0 and c==a
end
if c==1 or r then
aC(_,_[5])elseif c>3000 and c<3005 then
bN=aT(c-3000)end
end
end
end
s[1]=an
for a=3,13 do
s[a]=d[e[19][4][a]]or s[a]end
s[10]=B[1][bd%#B[1]+1]a=ag
bF=n
J=1
ar=#h+#Z
while J<3 and bF do
c=J*9+5
if a<=#h then
_=h[a]if a~=1 then
if _ then
if _[10]then
_[10]=j
s[c]=a
for k=1,8 do
s[c+k]=_[e[19][1][k]]end
J=J+1
end
else
s[c]=-a
bi(h,a)J=J+1
ar=ar-1
end
end
else
_=Z[a-#h]if _[10]then
_[10]=j
s[c]=a-#h+2^15
for k=1,6 do
s[c+k]=_[k]end
J=J+1
end
end
a=(a-2)%ar+1
ag=A(ag,ar)bF=a~=ag
end
ag=a
for a=1,32 do
bp.setNumber(a,s[a])end
end
aw=aw+1
async.httpGet(8,"")end
function onDraw()bR=screen.drawText
bR(26,137,bn)end
