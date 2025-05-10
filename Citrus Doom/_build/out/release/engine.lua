bK=""

Q=128
M=180
bE=output
by=input
y=math
K=y.max
s=y.min
ak=y.floor
pi=y.pi
al=by.getNumber
at=by.getBool
ad=bE.setBool
j=true
h=false
w=ipairs
abs=y.abs
bp=table.remove
aA=string
function Z(c,g)return{(c[1]+g[1]),(c[2]+g[2])}end
function sub(c,g)return{(c[1]-g[1]),(c[2]-g[2])}end
function bC(c)return y.sin(c/M*pi)end
function ae(c)return y.cos(c/M*pi)end
function H(c,g)return y.atan(g[2]-c[2],g[1]-c[1])*M/pi end
function D(c,g,ae)return K(s(ae,c),g)end
function u(c,g)return y.sqrt(((c[1]-g[1])^2)+((c[2]-g[2])^2))end
function O(c,g)return{ae(c)*g,bC(c)*g}end
function exp(c)return c[1],c[2]end
b={}aS=1
ao=3
ap=h
aG=j
ac=2
G=0
ai=0
as=0
S=0
aN=0
k=1
aF=0
aC=2
function aO(a,c,_)if a<32768then
_=b[7][a]return aO(_[_[3]*(c[2]-_[2])-_[4]*(c[1]-_[1])>0 and 8 or 7],c)else
a=b[5][b[6][a-32768][2]]return b[8][b[3][b[2][a[4]][a[5]+6]][6]]end
end
function ax(p,be,A,bI,_,a,x)f=b[15][b[1][A][4]]aq,au=f[18],f[19]I=aq
C=aO(#b[7],p)T,X=exp(C)ag=sub(p,b[10][1])L=b[10][2+ag[1]//Q+ag[2]//Q*bl]for a,_ in w(L[0])do
d=b[1][_]if _~=A and d and b[1][A][14]~=_ then
l=u(d,p)B=b[15][d[4]]if d[20]then
P=l-B[18]if P<I and B[23]&1>0 and(f[23]&1>0 or(p[9]+au<d[9]or p[9]>d[9]+B[19])==h)then
aQ=d
if be==h then
return h
end
I=P
aI=H(p,d)end
end
if A==G and not d[10]then
if l<50then
c=B[25]if c>0then
for o,r in w(b[12][c])do
if r>0 and b[12][1][o]<b[12][2][o]then
d=b[12]b[1][_]=h
d[1][o]=ak(s(d[1][o]+r,d[2][o]))if D(o,5,11)==o then
ac=o-4
end
end
end
end
c=B[29]if c>0 then
c=b[11][c]for o=7,8 do
e[o]=D(e[o]+c[o*2-13],e[o],c[o*2-12])end
b[1][_]=h
end
end
end
end
end
aQ=h
if X-T<au or T>p[9]+24then
return h
end
for a=1,#L do
_=b[2][L[a]]l,aZ=bA(p,b[4][_[1]],b[4][_[2]])if l<I then
if bI==1 and _[4]==2 then
az(_,_[5])end
if(_[3]&1>0 and f[23]&1>0)or _[3]&4==0 then
I=l
aI=aZ
else
bn,bz=s(_[9],X),K(_[8],T)if s(p[9],X-au)+24<bz or K(p[9],T)+au>bn then
I=l
aI=aZ
else
X,T=bn,bz
end
end
end
end
C={T,X}if be then
if I~=aq then
_=Z(p,O(aI,I-aq))p[1]=_[1]p[2]=_[2]end
return j
end
return I==aq
end
function bA(n,v,an)J=u(v,n)bF=H(v,an)+90
bg=bF-H(n,v)bD=-J*bC(bg)bm=J*ae(bg)aX=bF
if bm<0 then
aX=aX+M
end
if bD<0 then
return J,H(n,v)elseif bD>u(an,v)then
return u(an,n),H(n,an)else
return abs(bm),aX
end
end
function av(n,v,aU,A,_)aH=u(n,v)ay=aH
aM=j
P,aL=exp(n)bG,bH=exp(v)aT,aD=exp(sub(v,n))ah,bd=n[9]+32,v[9]+32
t=h
for a,_ in w(b[2])do
bi=b[4][_[1]]bs,bu=exp(sub(b[4][_[2]],bi))bh,bb=exp(sub(n,bi))bj=bu*aT-bs*aD
R=(bs*bb-bu*bh)/bj
ba=(aT*bb-aD*bh)/bj
if D(R,0,1)==R and D(ba,0,1)==ba then
aY={P+(R*aT),aL+(R*aD)}l=u(n,aY)z=ah+(bd-ah)*(l/aH)if D(z,_[8],_[9])~=z then
aM=h
if aU==1 then
return h
end
if l<ay then
ay=l
bc,bB=exp(aY)b_=z
Y=a
end
end
end
end
if aU>1 then
if aU==3 then
for a,_ in w(b[1])do
if _ and a~=A then
f=b[15][_[4]]if f[23]&1>0 and _[20]then
l=u(n,_)if l<ay then
R=bA(_,n,v)J=(l/aH)z=ah+(bd-ah)*J
if D(z,_[9],_[9]+f[19])==z and R<f[18]then
t=j
aM=h
bc=P+(bG-P)*J
bB=aL+(bH-aL)*J
b_=z
Y=a
end
end
end
end
end
end
return aM,Y,{bc,bB,b_}end
return j
end
function httpReply(c,g,ae)bk=as//2
as=0
end
function af()aN=aN%256+1
return b[13][1][aN]end
function aB(_,a)f=b[15][_[4]]if f[23]&2>0 and _[7]>0 then
_[8]=_[8]-(a+1)//2
_[7]=_[7]-a//2+s(_[8],0)_[8]=K(_[8],0)if af()<f[10]then
_[6]=f[9]_[15]=0
_[23]=e
_[10]=j
end
end
end
function bq(c,g,am)return g[20]and abs(((H(c,g)-c[3]+M)%360)-M)<am and av(c,g,1)end
function bw(F,A)bf=W and(W[9]-F[9])*q[6]/u(W,F)or 0
for a=1,q[12]do
c={}for a=1,30 do
c[a]=F[a]end
c[4]=q[8]c[10]=j
c[14]=A
bo=(af()/Q-1)*q[10]aE=O(F[3]+bo,q[6])if q[7]>0then
b[1][#b[1]+1]=c
f=b[15][c[4]]c[6]=f[3]c[9]=F[9]+32
c[11]=aE[1]c[12]=aE[2]c[17]=ac
c[19]=bf
else
d=Z(F,aE)d[9]=e[9]+bf
aP,ar,d=av(F,d,3,A)if not aP then
bt=sub(d,O(F[3]+bo,1))b[1][#b[1]+1]=c
c[1]=bt[1]c[2]=bt[2]c[6]=b[15][c[4]][3]c[9]=d[3]c[19]=1
if t then
c=b[1][ar]aB(c,q[9]*((af()&3)+2))end
end
end
end
end
function az(_,d)if d>-1 then
c=b[9][d]if c[1]>0 or e[31]*_[10][2]-e[32]*_[10][1]<0 then
g=b[8][c[1]]V[g and g[30]or#V+1]={d,1}_[4]=c[7]c=c[8]>0 and az(_,c[8])end
else
aG=j
ao=-d
m[9]=-d
end
end
function onTick()ad(9,at(32))ad(2,h)ad(3,h)for x=1,3 do
if at(32)and(not ap)or not b[21]then
aJ=property.getText(aS..bK)if aJ~=bK then
a=1
i=bK
_=aA.sub(aJ,a,a)while _~=bKdo
d=aA.byte(_)if d>64 or _==bKthen
i=(i..(d-65))+0
if k==1then
Y=i
if b[i]==br then
b[i]={}end
k=2
elseif k==2then
z=i
U=0
k=3
elseif k==3then
aR=i
k=4
else
if U==0then
U=z
aR=aR-1
aV={}b[Y][#b[Y]+1]=aV
end
aV[#aV+1]=i
U=U-1
if K(U,aR)==0then
k=1
end
end
i=bK
else
i=i.._
end
a=a+1
_=aA.sub(aJ,a,a)end
aS=aS+1
else
ap=j
end
end
end
if ap then
if aG then
V,aG={}ab=1
for a=1,10 do
b[a]=b[a+10*ao]end
for a=14,16 do
b[12][1][a]=0
end
ao=ao+1
for a,_ in w(b[1])do
for x=7,20 do
_[x]=0
end
bJ=_[5]+1
_[7]=b[15][_[4]][4]_[9],_[10]=aO(#b[7],_)[1]if _[4]==1 then
if e then
_[7]=e[7]_[8]=e[8]end
G=a
e=_
elseif _[5]&aC<1then
b[1][a]=h
end
end
bl=b[10][1][3]end
for a,_ in w(b[2])do
_[10]=sub(b[4][_[2]],b[4][_[1]])if _[3]&4>0 then
f,B=b[8][b[3][_[6]][6]],b[8][b[3][_[7]][6]]_[8]=K(f[1],B[1])_[9],f[30],B[30]=s(f[2],B[2])else
_[8],_[9]=0,0
end
end
m={}for a=1,32 do
m[a]=0
end
S=s(S+1/bk,2/35)ad(1,S>=0)if S>=0 then
S=S-1/35
for a=2,#b[10]do
b[10][a][0]={}end
for a,r in w(V)do
_=b[9][r[1]]d=b[8][_[1]]or e
c=_[2]f=d[c]d[c]=D(_[3],f-_[4],f+_[4])f=d[c]if abs(f-_[3])<.1then
V[a]=r[2]==_[5]and{_[6],1}or{r[1],r[2]+1}if _[6]==0 then
bp(V,a)end
else
d[8]=d[8]or f~=r
end
d[30]=a
end
for a,_ in w(b[1])do
if _ then
for x,r in w({1,2,9})do
_[r]=_[r]+_[r+10]end
_[15]=_[15]+1
f=b[15][_[4]]if _[7]<=0 and _[20]then
_[15]=0
_[6]=f[_[7]<=-f[4]and f[15]>1 and 15or 14]_[10],_[20]=j
if f[27]>0 then
d={}for x=1,30 do
d[x]=_[x]end
d[4]=f[27]d[6]=f[28]b[1][#b[1]+1]=d
end
end
aK=b[16][_[6]]if _[15]>=aK[2]and aK[2]~=-1then
_[6]=aK[4]_[15]=0
aa=b[16][_[6]][3]if aa==1 then
for a,k in w(b[1])do
if k then
i=Q-u(_,k)if i>0 then
aB(k,i)end
end
end
elseif aa==2then
if bq(_,e,90)then
_[23]=e
_[6]=f[5]end
elseif aa==3then
am=ak(H(_,_[23])/45+.5)*45
t=h
k=1
while k<5 and not t do
i=Z(_,O(am+b[19][2][k],8))i[9]=_[9]k=k+1
t=ax(i,h,a)and C[1]>=i[9]-24
end
if t then
_[1]=i[1]_[2]=i[2]_[3]=am
_[10]=j
else
ax(_,h,a)end
if f[23]&4<1 then
_[9]=C[1]end
c=u(_,_[23])if f[13]>0 and av(_,_[23],1)and s(c,230)<af()then
_[6]=f[13]end
if c<64 and f[12]>0then
_[6]=f[12]end
elseif aa>9then
_[3]=H(_,_[23])q=b[14][aa]_[10]=j
W=_[23]bw(_,a)end
end
if _[17]and _[17]>0then
q=b[14][_[17]]if not ax(_,h,a)or _[9]<=C[1]then
if aQ then
aB(aQ,f[21]*((af()&7)+1))end
_[1]=_[1]-_[11]_[2]=_[2]-_[12]_[3]=0
_[6]=b[15][_[4]][9]_[10]=j
_[11]=0
_[12]=0
_[17]=br
_[19]=0
end
end
if _[6]==1then
b[1][a]=h
else
ag=sub(_,b[10][1])L=b[10][2+ag[1]//Q+ag[2]//Q*bl]if L~=br then
L[0][#L[0]+1]=a
end
end
end
end
for a=1,8 do
if at(a)and b[12][1][a+4]>0then
ac=a
end
end
q=b[14][ac]e[3]=e[3]-al(3)*(D(aF,5,6)*1.5-6)aF=abs(al(3))*aF+1
N=e
for a=1,2 do
N=Z(N,O(e[3]-M+90*a,al(a)*8.33))end
N[9]=e[9]for a=1,8 do
t=ax(N,j,G,a)end
if t then
for a=1,2 do
e[30+a]=N[a]-e[a]e[a]=N[a]end
if e[9]<=C[1]then
e[9]=s(C[1],e[9]+4)e[19]=K(0,e[19])else
if e[9]>=C[2]-56then
e[9]=C[2]-56
e[19]=s(0,e[19])end
e[19]=e[19]-1
end
end
aW=b[12][1]d=q[1]if at(31)and ai<=0 and(d==0 or aW[d]>=q[2])then
ad(3,j)ai=q[3]if d>0then
aW[d]=aW[d]-q[2]end
bx,W=2048
for a,_ in w(b[1])do
if a~=G and _ and bq(e,_,10)then
l=u(_,e)if l<bx then
if b[15][_[4]][23]&2>0then
W=_
bx=l
end
end
end
end
bw(e,G)end
ai=ai-1
if al(4)<0 then
_=Z(e,O(e[3],64))_[9]=e[9]aP,ar=av(e,_,2,G)_=b[2][ar]if aP==h then
m[2]=ar
d,t=_[4]for a=14,16 do
t=t or b[12][1][a]>0 and d==a
end
if d==1 or t then
az(_,_[5])elseif d>3000 and d<3005then
aC=ak(d-3000)end
end
end
end
m[1]=ac
for a=3,8 do
m[a]=e[b[19][4][a]]end
m[5]=G
m[13]=e[3]a=ab
bv=j
E=1
aj=#b[1]+#b[8]while E<3 and bv do
d=E*9+5
if a<=#b[1]then
_=b[1][a]if a~=G then
if _ then
if _[10]then
_[10]=h
m[d]=a
for x=1,8 do
m[d+x]=_[b[19][1][x]]end
E=E+1
end
else
m[d]=-a
bp(b[1],a)E=E+1
aj=aj-1
end
end
else
_=b[8][a-#b[1]]if _[8]then
_[8]=h
m[d]=a-#b[1]+2^15
m[d+1]=_[1]m[d+2]=_[2]E=E+1
end
end
a=((a-2)%aj)+1
ab=s(ab,aj)bv=a~=ab
end
ab=a
for a=1,32 do
bE.setNumber(a,m[a])end
end
as=as+1
async.httpGet(8,bK)end
function onDraw()aw=screen.drawText
aw(26,137,bk)if ap then
for a=1,4 do
c=124+a*7
aw(240,c,ak(b[12][1][a]))aw(230,c,b[12][1][13+a])end
aw(26,143,s(aC,3))end
end
