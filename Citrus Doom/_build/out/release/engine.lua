
Q=128
L=180
F=math
O=F.max
B=F.min
b_=F.floor
pi=F.pi
aq=input.getNumber
al=input.getBool
ao=output.setBool
n=true
w=false
D=ipairs
abs=F.abs
bb=table.remove
aN=string
function ak(b,h)return{(b[1]+h[1]),(b[2]+h[2])}end
function sub(b,h)return{(b[1]-h[1]),(b[2]-h[2])}end
function bn(b)return F.sin(b/L*pi)end
function ac(b)return F.cos(b/L*pi)end
function I(b,h)return F.atan(h[2]-b[2],h[1]-b[1])*L/pi end
function E(b,h,ac)return O(B(ac,b),h)end
function x(b,h)return F.sqrt(((b[1]-h[1])^2)+((b[2]-h[2])^2))end
function U(b,h)return{ac(b)*h,bn(b)*h}end
function exp(b)return b[1],b[2]end
f={}aR=1
au=3
aC=n
af=2
av=0
ap=0
aW=0
ba=0
Z=0
aI=0
k=1
aH=0
bx=2
function aY(a,b,_)if a<2^15 then
_=f[7][a]return aY(_[_[3]*(b[2]-_[2])-_[4]*(b[1]-_[1])>0 and 8 or 7],b)else
a=f[5][f[6][a-32768][2]]return X[f[3][f[2][a[4]][a[5]+6]][6]]end
end
function an(r,bw,A,bI,_)S=g[A]e=y[S[4]]aA,ai=e[18],e[19]J=aA
C=aY(#f[7],r)T,am=exp(C)ad=sub(r,aZ)N=R[2+ad[1]//Q+ad[2]//Q*bM]or{}for a,_ in D(N[0]or{})do
c=g[_]if _~=A and c and S[14]~=c then
l=x(c,r)H=y[c[4]]if c[20]then
Y=l-H[18]if Y<J and H[23]&1>0 and(e[23]&1>0 or E(r[9],c[9]-ai,c[9]+H[19])==r[9])then
be=c
if bw==w then
return
end
J=Y
bf=I(r,c)end
end
if A==1 then
if l<50 then
b=H[25]if b>0 then
for q,s in D(u[b])do
if s>0 and u[1][q]<u[2][q]then
c=u
g[_]=w
c[1][q]=b_(B(c[1][q]+s,c[2][q]))if E(q,5,12)==q then
af=q-4
end
end
end
end
b=H[29]if b>0 then
b=f[11][b]for q=7,8 do
d[q]=E(d[q]+b[q*2-13],d[q],b[q*2-12])end
g[_]=w
end
end
end
end
end
if am-T<ai or T>r[9]+24 then
t=(bI or 1)<8 or aW%4>0 or C[6]<18 or as(S,10)return
end
for a=1,#N do
_=f[2][N[a]]l,bB=bh(r,W[_[1]],W[_[2]])if l<J then
if(_[3]&1>0 and e[23]&1>0)or _[3]&4==0 then
if A>1 or aU>0 or _[3]&4>0 then
J=l
bf=bB
end
else
aT,aD=B(_[9],am),O(_[8],T)if B(r[9],am-ai)+24<aD or O(r[9],T)+ai>aT or aT-aD<ai then
J=l
bf=bB
else
if bI==1 and(_[3]&512>0 or A==1)and(_[4]==2 or A>1)then
aF(_,_[5])end
am,T=aT,aD
end
end
end
end
C,be={T,am}if bw then
if J~=aA then
_=ak(r,U(bf,J-aA))r[1]=_[1]r[2]=_[2]end
return n
end
return J==aA
end
function bh(p,v,ax)M=x(v,p)bm=I(v,ax)+90
bi=bm-I(p,v)bu=-M*bn(bi)aU=M*ac(bi)aK=bm
if aU<0 then
aK=aK+L
end
if bu<0 then
return M,I(p,v)elseif bu>x(ax,v)then
return x(ax,p),I(p,ax)else
return abs(aU),aK
end
end
function az(p,v,aV,A,_)bg=x(p,v)ar=bg
aQ,t=n
Y,aM=exp(p)bQ,bR=exp(v)aE,aX=exp(sub(v,p))aB,bt=p[9]+32,v[9]+32
for a,_ in D(f[2])do
bz=W[_[1]]br,by=exp(sub(W[_[2]],bz))bl,bD=exp(sub(p,bz))bP=by*aE-br*aX
aa=(br*bD-by*bl)/bP
bv=(aE*bD-aX*bl)/bP
if E(aa,0,1)==aa and E(bv,0,1)==bv then
bC={Y+(aa*aE),aM+(aa*aX)}l=x(p,bC)G=aB+(bt-aB)*(l/bg)if E(G,_[8]+1,_[9])~=G then
aQ=w
if aV==1 then
return
end
if l<ar then
ar=l
bJ,bp=exp(bC)bO=G
bN=a
end
end
end
end
if aV>1 then
if aV==3 then
for a,_ in D(g)do
if _ and a~=A then
e=y[_[4]]if e[23]&1>0 and _[20]then
l=x(p,_)if l<ar then
aa=bh(_,p,v)M=(l/bg)G=aB+(bt-aB)*M
if E(G,_[9],_[9]+e[19])==G and aa<e[18]then
ar=l
t,aQ=n
bJ=Y+(bQ-Y)*M
bp=aM+(bR-aM)*M
bO=G
bN=a
end
end
end
end
end
end
return aQ,bN,{bJ,bp,bO}end
return n
end
function httpReply(b,h,ac)bK=ap//2
ap=0
end
function aj()aI=aI%256+1
return f[13][1][aI]end
function as(_,a,c)e=y[_[4]]if e[23]&2>0 and _[7]>0 then
_[8]=_[8]-(a+1)//2
_[7]=_[7]-a//2+B(_[8],0)_[8]=O(_[8],0)if aj()<e[10]then
_[6]=e[9]_[15]=0
_[23]=e[13]~="lost soul missile state" and c or d
_[10]=n
end
end
end
function bH(b,h,ay)return h[20]and abs(((I(b,h)-b[3]+L)%360)-L)<ay and az(b,h,1)end
function bd(z,A)bs=ah and(ah[9]-z[9])*m[6]/x(ah,z)or 0
for a=1,m[12]do
b={}for a=1,30 do
b[a]=z[a]end
b[4]=m[8]b[10]=n
b[14]=z
bA=(aj()/Q-1)*m[10]aJ=U(z[3]+bA,m[6])if m[7]>0 then
g[#g+1]=b
e=y[b[4]]b[6]=e[3]b[9]=z[9]+m[13]b[11]=aJ[1]b[12]=aJ[2]b[17]=af
b[19]=bs
else
c=ak(z,aJ)c[9]=d[9]+bs
aG,aw,c=az(z,c,3,A)if not aG then
bG=sub(c,U(z[3]+bA,1))g[#g+1]=b
b[1]=bG[1]b[2]=bG[2]b[6]=y[b[4]][3]b[9]=c[3]b[19]=1
if t then
b=g[aw]as(b,m[9]*((aj()&3)+2),z)end
end
end
end
end
function aF(_,c)if c>-1 then
b=f[9][c]if b[1]>0 or S[31]*_[10][2]-S[32]*_[10][1]<0 then
h=X[b[1]]ae[h and h[30]or#ae+1]={c,1,h or S}_[4]=b[7]b=b[8]>0 and aF(_,b[8])end
else
aC=n
au=-c
o[10]=-c
end
end
function bq()bo,ah=2048
for a,_ in D(g)do
if a>1 and _ and bH(d,_,10)then
l=x(_,d)if l<bo then
if y[_[4]][23]&2>0 then
ah=_
bo=l
end
end
end
end
end
function bL(_)if _[9]~=C[1]and not bE then
_[9]=C[1]_[10]=true
end
end
function onTick()ao(9,al(32))ao(2,al(11))ao(3,w)for j=1,3 do
if al(32)and(not bj)or not f[21]then
bc=property.getText(aR)a=1
i=""
_=aN.sub(bc,a,a)while _~=""do
c=aN.byte(_)if c>64 then
i=(i..c-65)+0
if k==1 then
bk=i
f[i]=f[i]or{}elseif k==2 then
G=i
ag=0
elseif k==3 then
aS=i
else
if ag==0 then
ag=G
aS=aS-1
aO={}f[bk][#f[bk]+1]=aO
end
aO[#aO+1]=i
ag=ag-1
k=O(ag,aS)>0 and k-1 or 0
end
k=k+1
i=""
else
i=i.._
end
a=a+1
_=aN.sub(bc,a,a)end
aR=aR+1
bj=bc==""
end
end
if bj then
if aC then
ae,aC={}ab=1
for a=1,10 do
f[a]=f[a+10*au]end
g=f[1]W=f[4]X=f[8]R=f[10]aZ,R[1]=R[1]u=f[12]y=f[15]for a=14,16 do
u[1][a]=0
end
au=au+1
for a=#g,1,-1 do
_=g[a]for j=7,40 do
_[j]=0
end
_[7]=y[_[4]][4]_[9],_[10]=aY(#f[7],_)[1]if _[5]&bx<1 then
bb(g,a)elseif _[4]==1 then
if d then
_[7]=d[7]_[8]=d[8]end
d=_
end
end
bM=aZ[3]end
for a,_ in D(f[2])do
_[10]=sub(W[_[2]],W[_[1]])if _[3]&4>0 then
e,H=X[f[3][_[6]][6]],X[f[3][_[7]][6]]_[8]=O(e[1],H[1])_[9],e[30],H[30]=B(e[2],H[2])else
_[8],_[9]=0,0
end
end
o={}for a=1,32 do
o[a]=0
end
ba=ba+1
Z=B(Z+1/bK,2/35)ao(1,Z>=0)if Z>=0 then
Z=Z-1/35
aW=aW+1
for a=2,#R do
R[a][0]={}end
for a,s in D(ae)do
_=f[9][s[1]]c=s[3]b=_[2]e=c[b]c[b]=E(_[3],e-_[4],e+_[4])+0
e=c[b]if e==_[3]then
ae[a]=s[2]==_[5]and{_[6],1,c}or{s[1],s[2]+1,c}if _[6]==0 then
bb(ae,a)end
end
c[10]=c[10]or e~=s
c[30]=a
end
for a,_ in D(g)do
if _ then
for j,s in D({1,2,9})do
_[s]=_[s]+_[s+10]end
_[15]=_[15]+1
e=y[_[4]]if _[7]<=0 and _[20]then
_[15]=0
_[6]=e[_[7]<=-e[4]and e[15]>1 and 15 or 14]_[10],_[20]=n
if e[27]>0 then
c={}for j=1,30 do
c[j]=_[j]end
c[4]=e[27]c[6]=e[28]g[#g+1]=c
end
end
aL=f[16][_[6]]if _[15]>=aL[2]and aL[2]~=-1 then
_[6]=aL[4]_[15]=0
V=f[16][_[6]][3]bE=e[23]&4>0
if V==1 then
for a,k in D(g)do
if k then
i=Q-x(_,k)if i>0 then
as(k,i)end
end
end
elseif V==2 then
if bH(_,d,90)then
_[23]=d
_[6]=e[5]o[12]=e[6]end
an(_,w,a,8)bL(_)elseif V==3 then
_[23]=_[23][20]and _[23]or d
ay,t=b_(I(_,_[23])/45+.5)*45
k=1
while k<5 and not t do
i=ak(_,U(ay+f[19][2][k],8))i[9]=_[9]t=an(i,w,a,k)and(C[1]>=i[9]-24 or bE)k=k+1
end
if t then
for j=1,2 do
_[30+j]=i[j]-_[j]_[j]=i[j]end
_[3]=ay
_[10]=n
else
an(_,w,a,8)end
bL(_)b=x(_,_[23])if e[13]>0 and az(_,_[23],1)and B(b,230)<aj()then
_[6]=e[13]end
if b<64 and e[12]>0 then
_[6]=e[12]end
elseif V==5 then
for a=1,11 do
d[3]=d[3]+f[19][9][a]m=f[14][23]bq()bd(d,1)end
d[3]=d[3]-20
elseif V>9 and _[20]then
_[3]=I(_,_[23])m=f[14][V]_[10]=n
ah=_[23]bd(_,a)end
end
if _[17]and _[17]>0 then
m=f[14][_[17]]if not an(_,w,a)or _[9]<=C[1]then
if be then
as(be,e[21]*((aj()&7)+1),_[14])end
_[1]=_[1]-_[11]_[2]=_[2]-_[12]_[3]=0
_[6]=y[_[4]][5]_[10]=n
_[11]=0
_[12],_[17]=0
_[19]=0
end
end
if _[6]==1 then
g[a]=w
else
ad=sub(_,aZ)N=R[2+ad[1]//Q+ad[2]//Q*bM]if N then
N[0][#N[0]+1]=a
end
end
end
end
for a=1,8 do
if al(a)and u[1][a+4]>0 then
af=a
end
end
m=f[14][af]d[3]=d[3]-aq(3)*(E(aH,5,6)*1.5-6)aH=abs(aq(3))*aH+1
P=d
for a=1,2 do
P=ak(P,U(d[3]-L+90*a,aq(a)*8.33))end
P[9]=d[9]for a=1,8 do
t=an(P,n,1,a)end
if t then
for a=1,2 do
d[30+a]=P[a]-d[a]d[a]=P[a]end
if d[9]>C[1]then
d[19]=d[19]-1
else
d[9]=B(C[1],d[9]+4)d[19]=O(0,d[19])end
else
d[19]=0
d[9]=C[1]end
aP=u[1]c=m[1]if al(31)and av<=0 and(c==0 or aP[c]>=m[2])then
ao(3,n)av=m[3]if c>0 then
aP[c]=aP[c]-m[2]end
bq()bd(d,1)end
av=av-1
if aq(4)<0 then
_=ak(d,U(d[3],64))_[9]=d[9]aG,aw=az(d,_,2,1)_=f[2][aw]if aG==w then
o[2]=aw
c,t=_[4]for a=14,16 do
t=t or u[1][a]>0 and c==a
end
if c==1 or t then
aF(_,_[5])elseif c>3000 and c<3005 then
bx=b_(c-3000)end
end
end
end
o[1]=af
for a=3,14 do
o[a]=d[f[19][4][a]]or o[a]end
u[1][17]=bK
o[11]=u[1][ba%#u[1]+1]a=ab
bF=n
K=1
at=#g+#X
while K<3 and bF do
c=K*9+6
if a<=#g then
_=g[a]if a~=1 then
if _ then
if _[10]then
o[c],_[10]=a
for j=1,8 do
o[c+j]=_[f[19][1][j]]end
K=K+1
end
else
o[c]=-a
bb(g,a)K=K+1
at=at-1
end
end
else
_=X[a-#g]if _[10]then
o[c],_[10]=a-#g+2^15
for j=1,6 do
o[c+j]=_[j]end
K=K+1
end
end
a=(a-2)%at+1
ab=B(ab,at)bF=a~=ab
end
ab=a
for a=1,32 do
output.setNumber(a,o[a])end
end
ap=ap+1
async.httpGet(8,"")end
