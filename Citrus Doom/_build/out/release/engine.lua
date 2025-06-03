
Q=128
L=180
bs=output
bC=input
F=math
M=F.max
z=F.min
bg=F.floor
pi=F.pi
ay=bC.getNumber
ac=bC.getBool
ae=bs.setBool
n=true
i=false
v=ipairs
abs=F.abs
bz=table.remove
aM=string
function aa(b,g)return{(b[1]+g[1]),(b[2]+g[2])}end
function sub(b,g)return{(b[1]-g[1]),(b[2]-g[2])}end
function bu(b)return F.sin(b/L*pi)end
function ab(b)return F.cos(b/L*pi)end
function J(b,g)return F.atan(g[2]-b[2],g[1]-b[1])*L/pi end
function G(b,g,ab)return M(z(ab,b),g)end
function x(b,g)return F.sqrt(((b[1]-g[1])^2)+((b[2]-g[2])^2))end
function V(b,g)return{ab(b)*g,bu(b)*g}end
function exp(b)return b[1],b[2]end
e={}aU=1
aA=3
aJ=i
aT=n
ah=2
ap=0
ax=0
aH=0
aN=0
S=0
aD=0
l=1
b_=0
bI=2
function aV(a,b,_)if a<2^15 then
_=e[7][a]return aV(_[_[3]*(b[2]-_[2])-_[4]*(b[1]-_[1])>0 and 8 or 7],b)else
a=e[5][e[6][a-32768][2]]return R[e[3][e[2][a[4]][a[5]+6]][6]]end
end
function az(s,bK,w,bQ,_)af=h[w]f=B[af[4]]ar,ai=f[18],f[19]H=ar
E=aV(#e[7],s)X,am=exp(E)an=sub(s,aI)O=U[2+an[1]//Q+an[2]//Q*bM]or{}for a,_ in v(O[0]or{})do
c=h[_]if _~=w and c and af[14]~=_ then
m=x(c,s)D=B[c[4]]if c[20]then
Y=m-D[18]if Y<H and D[23]&1>0 and(f[23]&1>0 or G(s[9],c[9]-ai,c[9]+D[19])==s[9])then
be=c
if bK==i then
return i
end
H=Y
aW=J(s,c)end
end
if w==1 then
if m<50 then
b=D[25]if b>0 then
for q,t in v(A[b])do
if t>0 and A[1][q]<A[2][q]then
c=A
h[_]=i
c[1][q]=bg(z(c[1][q]+t,c[2][q]))if G(q,5,12)==q then
ah=q-4
end
end
end
end
b=D[29]if b>0 then
b=e[11][b]for q=7,8 do
d[q]=G(d[q]+b[q*2-13],d[q],b[q*2-12])end
h[_]=i
end
end
end
end
end
if am-X<ai or X>s[9]+24 then
return i
end
for a=1,#O do
_=e[2][O[a]]m,bG=bH(s,W[_[1]],W[_[2]])if m<H then
if(_[3]&1>0 and f[23]&1>0)or _[3]&4==0 then
if w>1 or aS>0 or _[3]&4>0 then
H=m
aW=bG
end
else
aK,aO=z(_[9],am),M(_[8],X)if z(s[9],am-ai)+24<aO or M(s[9],X)+ai>aK or aK-aO<ai then
H=m
aW=bG
else
if bQ==1 and(_[3]&512>0 or w==1)and(_[4]==2 or w>1)then
aQ(_,_[5])end
am,X=aK,aO
end
end
end
end
E,be={X,am}if bK then
if H~=ar then
_=aa(s,V(aW,H-ar))s[1]=_[1]s[2]=_[2]end
return n
end
return H==ar
end
function bH(p,y,at)N=x(y,p)bv=J(y,at)+90
bA=bv-J(p,y)bw=-N*bu(bA)aS=N*ab(bA)bd=bv
if aS<0 then
bd=bd+L
end
if bw<0 then
return N,J(p,y)elseif bw>x(at,y)then
return x(at,p),J(p,at)else
return abs(aS),bd
end
end
function aB(p,y,aY,w,_)aC=x(p,y)as=aC
bf=n
Y,aG=exp(p)bR,bS=exp(y)bb,aF=exp(sub(y,p))aw,bP=p[9]+32,y[9]+32
r=i
for a,_ in v(e[2])do
bB=W[_[1]]bo,bl=exp(sub(W[_[2]],bB))bm,bx=exp(sub(p,bB))bj=bl*bb-bo*aF
P=(bo*bx-bl*bm)/bj
bF=(bb*bx-aF*bm)/bj
if G(P,0,1)==P and G(bF,0,1)==bF then
bq={Y+(P*bb),aG+(P*aF)}m=x(p,bq)C=aw+(bP-aw)*(m/aC)if G(C,_[8]+1,_[9])~=C then
bf=i
if aY==1 then
return i
end
if m<as then
as=m
bL,bi=exp(bq)bN=C
bJ=a
end
end
end
end
if aY>1 then
if aY==3 then
for a,_ in v(h)do
if _ and a~=w then
f=B[_[4]]if f[23]&1>0 and _[20]then
m=x(p,_)if m<as then
P=bH(_,p,y)N=(m/aC)C=aw+(bP-aw)*N
if G(C,_[9],_[9]+f[19])==C and P<f[18]then
as=m
r=n
bf=i
bL=Y+(bR-Y)*N
bi=aG+(bS-aG)*N
bN=C
bJ=a
end
end
end
end
end
end
return bf,bJ,{bL,bi,bN}end
return n
end
function httpReply(b,g,ab)bO=ax//2
ax=0
end
function aj()aD=aD%256+1
return e[13][1][aD]end
function aq(_,a)f=B[_[4]]if f[23]&2>0 and _[7]>0 then
_[8]=_[8]-(a+1)//2
_[7]=_[7]-a//2+z(_[8],0)_[8]=M(_[8],0)if aj()<f[10]then
_[6]=f[9]_[15]=0
_[23]=d
_[10]=n
end
end
end
function br(b,g,av)return g[20]and abs(((J(b,g)-b[3]+L)%360)-L)<av and aB(b,g,1)end
function aE(K,w)bD=ak and(ak[9]-K[9])*o[6]/x(ak,K)or 0
for a=1,o[12]do
b={}for a=1,30 do
b[a]=K[a]end
b[4]=o[8]b[10]=n
b[14]=w
bE=(aj()/Q-1)*o[10]aP=V(K[3]+bE,o[6])if o[7]>0 then
h[#h+1]=b
f=B[b[4]]b[6]=f[3]b[9]=K[9]+o[13]b[11]=aP[1]b[12]=aP[2]b[17]=ah
b[19]=bD
else
c=aa(K,aP)c[9]=d[9]+bD
aL,ao,c=aB(K,c,3,w)if not aL then
bh=sub(c,V(K[3]+bE,1))h[#h+1]=b
b[1]=bh[1]b[2]=bh[2]b[6]=B[b[4]][3]b[9]=c[3]b[19]=1
if r then
b=h[ao]aq(b,o[9]*((aj()&3)+2))end
end
end
end
end
function aQ(_,c)if c>-1 then
b=e[9][c]if b[1]>0 or af[31]*_[10][2]-af[32]*_[10][1]<0 then
g=R[b[1]]ad[g and g[30]or#ad+1]={c,1,g or af}_[4]=b[7]b=b[8]>0 and aQ(_,b[8])end
else
aT=n
aA=-c
u[9]=-c
end
end
function bk()by,ak=2048
for a,_ in v(h)do
if a>1 and _ and br(d,_,10)then
m=x(_,d)if m<by then
if B[_[4]][23]&2>0 then
ak=_
by=m
end
end
end
end
end
function onTick()ae(9,ac(32))ae(2,ac(11))ae(3,i)for k=1,3 do
if ac(32)and(not aJ)or not e[21]then
aX=property.getText(aU)a=1
j=""
_=aM.sub(aX,a,a)while _~=""do
c=aM.byte(_)if c>64 then
j=(j..c-65)+0
if l==1 then
bt=j
e[j]=e[j]or{}elseif l==2 then
C=j
al=0
elseif l==3 then
bc=j
else
if al==0 then
al=C
bc=bc-1
aR={}e[bt][#e[bt]+1]=aR
end
aR[#aR+1]=j
al=al-1
l=M(al,bc)>0 and l-1 or 0
end
l=l+1
j=""
else
j=j.._
end
a=a+1
_=aM.sub(aX,a,a)end
aU=aU+1
aJ=aX==""
end
end
if aJ then
if aT then
ad,aT={}ag=1
for a=1,10 do
e[a]=e[a+10*aA]end
h=e[1]W=e[4]R=e[8]U=e[10]aI,U[1]=U[1]A=e[12]B=e[15]for a=14,16 do
A[1][a]=0
end
aA=aA+1
for a,_ in v(h)do
for k=7,40 do
_[k]=0
end
bU=_[5]+1
_[7]=B[_[4]][4]_[9],_[10]=aV(#e[7],_)[1]if _[4]==1 then
if d then
_[7]=d[7]_[8]=d[8]end
d=_
elseif _[5]&bI<1 then
h[a]=i
end
end
bM=aI[3]end
for a,_ in v(e[2])do
_[10]=sub(W[_[2]],W[_[1]])if _[3]&4>0 then
f,D=R[e[3][_[6]][6]],R[e[3][_[7]][6]]_[8]=M(f[1],D[1])_[9],f[30],D[30]=z(f[2],D[2])else
_[8],_[9]=0,0
end
end
u={}for a=1,32 do
u[a]=0
end
aN=aN+1
S=z(S+1/bO,2/35)ae(1,S>=0)if S>=0 then
S=S-1/35
aH=aH+1
for a=2,#U do
U[a][0]={}end
for a,t in v(ad)do
_=e[9][t[1]]c=t[3]b=_[2]f=c[b]c[b]=G(_[3],f-_[4],f+_[4])+0
f=c[b]if f==_[3]then
ad[a]=t[2]==_[5]and{_[6],1,c}or{t[1],t[2]+1,c}if _[6]==0 then
bz(ad,a)end
end
c[10]=c[10]or f~=t
c[30]=a
end
for a,_ in v(h)do
if _ then
for k,t in v({1,2,9})do
_[t]=_[t]+_[t+10]end
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
aZ=e[16][_[6]]if _[15]>=aZ[2]and aZ[2]~=-1 then
_[6]=aZ[4]_[15]=0
Z=e[16][_[6]][3]if Z==1 then
for a,l in v(h)do
if l then
j=Q-x(_,l)if j>0 then
aq(l,j)end
end
end
elseif Z==2 then
if br(_,d,90)then
_[23]=d
_[6]=f[5]end
elseif Z==3 then
av=bg(J(_,_[23])/45+.5)*45
r=i
l=1
bp=f[23]&4>0
while l<5 and not r do
j=aa(_,V(av+e[19][2][l],8))j[9]=_[9]r=az(j,i,a,l)and(E[1]>=j[9]-24 or bp)l=l+1
end
if r then
for k=1,2 do
_[30+k]=j[k]-_[k]_[k]=j[k]end
_[3]=av
_[10]=n
else
az(_,i,a)end
_[9]=bp and _[9]or E[1]b=x(_,_[23])if f[13]>0 and aB(_,_[23],1)and z(b,230)<aj()then
_[6]=f[13]end
if b<64 and f[12]>0 then
_[6]=f[12]end
elseif Z==5 then
for a=1,11 do
d[3]=d[3]+e[19][9][a]o=e[14][23]bk()aE(d,1)end
d[3]=d[3]-20
elseif Z>9 and _[20]then
_[3]=J(_,_[23])o=e[14][Z]_[10]=n
ak=_[23]aE(_,a)end
end
if _[17]and _[17]>0 then
o=e[14][_[17]]if not az(_,i,a)or _[9]<=E[1]then
if be then
aq(be,f[21]*((aj()&7)+1))end
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
an=sub(_,aI)O=U[2+an[1]//Q+an[2]//Q*bM]if O then
O[0][#O[0]+1]=a
end
end
end
end
for a=1,8 do
if ac(a)and A[1][a+4]>0 then
ah=a
end
end
o=e[14][ah]d[3]=d[3]-ay(3)*(G(b_,5,6)*1.5-6)b_=abs(ay(3))*b_+1
T=d
for a=1,2 do
T=aa(T,V(d[3]-L+90*a,ay(a)*8.33))end
T[9]=d[9]for a=1,8 do
r=az(T,n,1,a)end
if r then
for a=1,2 do
d[30+a]=T[a]-d[a]d[a]=T[a]end
if d[9]>E[1]then
d[19]=d[19]-1
else
d[9]=z(E[1],d[9]+4)d[19]=M(0,d[19])end
else
d[19]=0
d[9]=E[1]r=aH%4>0 or E[6]<18 or aq(d,10)end
ba=A[1]c=o[1]if ac(31)and ap<=0 and(c==0 or ba[c]>=o[2])then
ae(3,n)ap=o[3]if c>0 then
ba[c]=ba[c]-o[2]end
bk()aE(d,1)end
ap=ap-1
if ay(4)<0 then
_=aa(d,V(d[3],64))_[9]=d[9]aL,ao=aB(d,_,2,1)_=e[2][ao]if aL==i then
u[2]=ao
c,r=_[4]for a=14,16 do
r=r or A[1][a]>0 and c==a
end
if c==1 or r then
aQ(_,_[5])elseif c>3000 and c<3005 then
bI=bg(c-3000)end
end
end
end
u[1]=ah
for a=3,13 do
u[a]=d[e[19][4][a]]or u[a]end
u[10]=A[1][aN%#A[1]+1]a=ag
bn=n
I=1
au=#h+#R
while I<3 and bn do
c=I*9+5
if a<=#h then
_=h[a]if a~=1 then
if _ then
if _[10]then
_[10]=i
u[c]=a
for k=1,8 do
u[c+k]=_[e[19][1][k]]end
I=I+1
end
else
u[c]=-a
bz(h,a)I=I+1
au=au-1
end
end
else
_=R[a-#h]if _[10]then
_[10]=i
u[c]=a-#h+2^15
for k=1,6 do
u[c+k]=_[k]end
I=I+1
end
end
a=(a-2)%au+1
ag=z(ag,au)bn=a~=ag
end
ag=a
for a=1,32 do
bs.setNumber(a,u[a])end
end
ax=ax+1
async.httpGet(8,"")end
function onDraw()bT=screen.drawText
bT(26,137,bO)end
