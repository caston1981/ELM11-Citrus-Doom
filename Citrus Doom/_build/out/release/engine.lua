
R=128
L=180
G=math
N=G.max
C=G.min
aE=G.floor
pi=G.pi
av=input.getNumber
an=input.getBool
am=output.setBool
o=true
x=false
z=ipairs
abs=G.abs
aO=table.remove
bf=string
function ab(b,g)return{(b[1]+g[1]),(b[2]+g[2])}end
function sub(b,g)return{(b[1]-g[1]),(b[2]-g[2])}end
function bG(b)return G.sin(b/L*pi)end
function al(b)return G.cos(b/L*pi)end
function K(b,g)return G.atan(g[2]-b[2],g[1]-b[1])*L/pi end
function H(b,g,al)return N(C(al,b),g)end
function w(b,g)return G.sqrt(((b[1]-g[1])^2)+((b[2]-g[2])^2))end
function U(b,g)return{al(b)*g,bG(b)*g}end
function exp(b)return b[1],b[2]end
f={}aJ=1
aw=3
aM=o
ak=2
aA=0
aq=0
aI=0
b_=0
W=0
aR=0
l=1
aH=0
bJ=2
function be(a,b,_)if a<2^15 then
_=f[7][a]return be(_[_[3]*(b[2]-_[2])-_[4]*(b[1]-_[1])>0 and 8 or 7],b)else
a=f[5][f[6][a-32768][2]]return T[f[3][f[2][a[4]][a[5]+6]][6]]end
end
function aj(t,br,D,bl,_)Q=h[D]d=A[Q[4]]ay,af=d[18],d[19]J=ay
y=be(#f[7],t)X,ah=exp(y)ag=sub(t,aN)O=Y[2+ag[1]//R+ag[2]//R*bi]or{}for a,_ in z(O[0]or{})do
c=h[_]if _~=D and c and Q[14]~=c then
k=w(c,t)F=A[c[4]]if c[20]then
V=k-F[18]if V<J and F[23]&1>0 and(d[23]&1>0 or H(t[9],c[9]-af,c[9]+F[19])==t[9])then
aX=c
if br==x then
return
end
J=V
aS=K(t,c)end
end
if D==1 then
if k<50 then
b=F[25]if b>0 then
for p,r in z(u[b])do
if r>0 and u[1][p]<u[2][p]then
c=u
h[_]=x
c[1][p]=aE(C(c[1][p]+r,c[2][p]))if H(p,5,12)==p then
ak=p-4
end
end
end
end
b=F[29]if b>0 then
b=f[11][b]for p=7,8 do
e[p]=H(e[p]+b[p*2-13],e[p],b[p*2-12])end
h[_]=x
end
end
end
end
end
if ah-X<af or X>t[9]+24 then
s=(bl or 1)<8 or aI%4>0 or y[6]<18 or ax(Q,10)return
end
for a=1,#O do
_=f[2][O[a]]k,bA=by(t,P[_[1]],P[_[2]])if k<J then
if(_[3]&1>0 and d[23]&1>0)or _[3]&4==0 then
if D>1 or aU>0 or _[3]&4>0 then
J=k
aS=bA
end
else
bg,ba=C(_[9],ah),N(_[8],X)if C(t[9],ah-af)+24<ba or N(t[9],X)+af>bg or bg-ba<af then
J=k
aS=bA
else
if bl==1 and(_[3]&512>0 or D==1)and(_[4]==2 or D>1)then
aV(_,_[5])end
ah,X=bg,ba
end
end
end
end
y,aX={X,ah}if br then
if J~=ay then
_=ab(t,U(aS,J-ay))t[1]=_[1]t[2]=_[2]end
return o
end
return J==ay
end
function by(q,v,ar)M=w(v,q)bw=K(v,ar)+90
bD=bw-K(q,v)bj=-M*bG(bD)aU=M*al(bD)aF=bw
if aU<0 then
aF=aF+L
end
if bj<0 then
return M,K(q,v)elseif bj>w(ar,v)then
return w(ar,q),K(q,ar)else
return abs(aU),aF
end
end
function az(q,v,aY,D,_)aQ=w(q,v)ap=aQ
aW,s=o
V,aK=exp(q)bR,bQ=exp(v)aT,bb=exp(sub(v,q))au,bH=q[9]+32,v[9]+32
for a,_ in z(f[2])do
bo=P[_[1]]bP,bM=exp(sub(P[_[2]],bo))bE,bu=exp(sub(q,bo))bq=bM*aT-bP*bb
S=(bP*bu-bM*bE)/bq
bv=(aT*bu-bb*bE)/bq
if H(S,0,1)==S and H(bv,0,1)==bv then
bm={V+(S*aT),aK+(S*bb)}k=w(q,bm)E=au+(bH-au)*(k/aQ)if H(E,_[8]+1,_[9])~=E then
aW=x
if aY==1 then
return
end
if k<ap then
ap=k
bt,bk=exp(bm)bK=E
bz=a
end
end
end
end
if aY>1 then
if aY==3 then
for a,_ in z(h)do
if _ and a~=D then
d=A[_[4]]if d[23]&1>0 and _[20]then
k=w(q,_)if k<ap then
S=by(_,q,v)M=(k/aQ)E=au+(bH-au)*M
if H(E,_[9],_[9]+d[19])==E and S<d[18]then
ap=k
s,aW=o
bt=V+(bR-V)*M
bk=aK+(bQ-aK)*M
bK=E
bz=a
end
end
end
end
end
end
return aW,bz,{bt,bk,bK}end
return o
end
function httpReply(b,g,al)bs=aq//2
aq=0
end
function ai()aR=aR%256+1
return f[13][1][aR]end
function ax(_,a,c)d=A[_[4]]if d[23]&2>0 and _[7]>0 then
_[8]=_[8]-(a+1)//2
_[7]=_[7]-a//2+C(_[8],0)_[8]=N(_[8],0)_[33]=d[13]~="lost soul missile state" and c or e
if ai()<d[10]then
_[6]=d[9]_[15]=0
_[10]=o
end
end
end
function bp(b,g,at)return g[20]and abs(((K(b,g)-b[3]+L)%360)-L)<at and az(b,g,1)end
function aC(B,D)bx=ao and(ao[9]-B[9])*n[6]/w(ao,B)or 0
for a=1,n[12]do
b={}for a=1,33 do
b[a]=B[a]end
b[4]=n[8]b[10]=o
b[14]=B
bF=(ai()/R-1)*n[10]aL=U(B[3]+bF,n[6])if n[7]>0 then
h[#h+1]=b
d=A[b[4]]b[6]=d[3]b[9]=B[9]+n[13]b[11]=aL[1]b[12]=aL[2]b[17]=ak
b[19]=bx
else
c=ab(B,aL)c[9]=e[9]+bx
aD,aB,c=az(B,c,3,D)if not aD then
bI=sub(c,U(B[3]+bF,1))h[#h+1]=b
b[1]=bI[1]b[2]=bI[2]b[6]=A[b[4]][3]b[9]=c[3]b[19]=1
if s then
b=h[aB]ax(b,n[9]*((ai()&3)+2),B)end
end
end
end
end
function aV(_,c)if c>-1 then
b=f[9][c]if b[1]>0 or Q[31]*_[10][2]-Q[32]*_[10][1]<0 then
g=T[b[1]]ae[g and g[30]or#ae+1]={c,1,g or Q}_[4]=b[7]b=b[8]>0 and aV(_,b[8])end
else
aM=o
aw=-c
m[10]=-c
end
end
function bL()bC,ao=2048
for a,_ in z(h)do
if a>1 and _ and bp(e,_,10)then
k=w(_,e)if k<bC then
if A[_[4]][23]&2>0 then
ao=_
bC=k
end
end
end
end
end
function bN(_)if _[9]~=y[1]and not bh then
_[9]=y[1]_[10]=true
end
end
function onTick()am(9,an(32))am(2,an(11))am(3,x)for j=1,3 do
if an(32)and(not bO)or not f[21]then
bc=property.getText(aJ)a=1
i=""
_=bf.sub(bc,a,a)while _~=""do
c=bf.byte(_)if c>64 then
i=(i..c-65)+0
if l==1 then
bn=i
f[i]=f[i]or{}elseif l==2 then
E=i
ac=0
elseif l==3 then
bd=i
else
if ac==0 then
ac=E
bd=bd-1
aZ={}f[bn][#f[bn]+1]=aZ
end
aZ[#aZ+1]=i
ac=ac-1
l=N(ac,bd)>0 and l-1 or 0
end
l=l+1
i=""
else
i=i.._
end
a=a+1
_=bf.sub(bc,a,a)end
aJ=aJ+1
bO=bc==""
end
end
if bO then
if aM then
ae,aM={}ad=1
for a=1,10 do
f[a]=f[a+10*aw]end
h=f[1]P=f[4]T=f[8]Y=f[10]aN,Y[1]=Y[1]u=f[12]A=f[15]for a=14,16 do
u[1][a]=0
end
aw=aw+1
for a=#h,1,-1 do
_=h[a]for j=7,32 do
_[j]=0
end
_[7]=A[_[4]][4]_[9],_[10]=be(#f[7],_)[1]if _[5]&bJ<1 then
aO(h,a)elseif _[4]==1 then
if e then
_[7]=e[7]_[8]=e[8]end
e=_
end
end
bi=aN[3]end
for a,_ in z(f[2])do
_[10]=sub(P[_[2]],P[_[1]])if _[3]&4>0 then
d,F=T[f[3][_[6]][6]],T[f[3][_[7]][6]]_[8]=N(d[1],F[1])_[9],d[30],F[30]=C(d[2],F[2])else
_[8],_[9]=0,0
end
end
m={}for a=1,32 do
m[a]=0
end
b_=b_+1
W=C(W+1/bs,2/35)am(1,W>=0)if W>=0 then
W=W-1/35
aI=aI+1
for a=2,#Y do
Y[a][0]={}end
for a,r in z(ae)do
_=f[9][r[1]]c=r[3]b=_[2]d=c[b]c[b]=H(_[3],d-_[4],d+_[4])+0
d=c[b]if d==_[3]then
ae[a]=r[2]==_[5]and{_[6],1,c}or{r[1],r[2]+1,c}if _[6]==0 then
aO(ae,a)end
end
c[10]=c[10]or d~=r
c[30]=a
end
for a,_ in z(h)do
if _ then
for j,r in z({1,2,9})do
_[r]=_[r]+_[r+10]end
_[15]=_[15]+1
d=A[_[4]]if _[7]<=0 and _[20]then
_[15]=0
_[6]=d[_[7]<=-d[4]and d[15]>1 and 15 or 14]_[10],_[20]=o
m[12]=d[16]if d[27]>0 then
c={}for j=1,30 do
c[j]=_[j]end
c[4]=d[27]c[6]=d[28]h[#h+1]=c
end
end
aG=f[16][_[6]]_[33]=_[33]and(_[33][20]and _[33]or e)if _[15]>=aG[2]and aG[2]~=-1 then
_[6]=aG[4]_[15]=0
aa=f[16][_[6]][3]bh=d[23]&4>0
if aa==1 then
for a,l in z(h)do
if l then
i=R-w(_,l)if i>0 then
ax(l,i)end
end
end
elseif aa==2 then
if bp(_,e,90)then
_[33]=e
_[6]=d[5]m[12]=d[6]end
aj(_,x,a,8)bN(_)elseif aa==3 then
at,s=aE(K(_,_[33])/45+.5)*45
l=1
while l<5 and not s do
i=ab(_,U(at+f[19][2][l],8))i[9]=_[9]s=aj(i,x,a,l)and(y[1]>=i[9]-24 or bh)l=l+1
end
if s then
for j=1,2 do
_[30+j]=i[j]-_[j]_[j]=i[j]end
_[3]=at
_[10]=o
else
aj(_,x,a,8)end
bN(_)b=w(_,_[33])if d[13]>0 and az(_,_[33],1)and C(b,230)<ai()then
_[6]=d[13]end
if b<64 and d[12]>0 then
_[6]=d[12]end
elseif aa==5 then
for a=1,11 do
e[3]=e[3]+f[19][9][a]n=f[14][23]bL()aC(e,1)end
e[3]=e[3]-20
elseif aa>9 and _[20]then
_[3]=K(_,_[33])n=f[14][aa]_[10]=o
ao=_[33]aC(_,a)end
end
if _[17]and _[17]>0 then
n=f[14][_[17]]if not aj(_,x,a)or _[9]<=y[1]then
if aX then
ax(aX,d[21]*((ai()&7)+1),_[14])end
_[1]=_[1]-_[11]_[2]=_[2]-_[12]_[3]=0
_[6]=A[_[4]][5]_[10]=o
_[11]=0
_[12],_[17]=0
m[12]=d[16]_[19]=0
end
end
if _[6]==1 then
h[a]=x
else
ag=sub(_,aN)O=Y[2+ag[1]//R+ag[2]//R*bi]if O then
O[0][#O[0]+1]=a
end
end
end
end
for a=1,8 do
if an(a)and u[1][a+4]>0 then
ak=a
end
end
n=f[14][ak]e[3]=e[3]-av(3)*(H(aH,5,6)*1.5-6)aH=abs(av(3))*aH+1
Z=e
for a=1,2 do
Z=ab(Z,U(e[3]-L+90*a,av(a)*8.33))end
Z[9]=e[9]for a=1,8 do
s=aj(Z,o,1,a)end
if s then
for a=1,2 do
e[30+a]=Z[a]-e[a]e[a]=Z[a]end
if e[9]>y[1]then
e[19]=e[19]-1
else
e[9]=C(y[1],e[9]+4)e[19]=N(0,e[19])end
else
e[19]=0
e[9]=y[1]end
aP=u[1]c=n[1]if an(31)and aA<=0 and(c==0 or aP[c]>=n[2])then
am(3,o)aA=n[3]if c>0 then
aP[c]=aP[c]-n[2]end
bL()aC(e,1)end
aA=aA-1
if av(4)<0 then
_=ab(e,U(e[3],64))_[9]=e[9]aD,aB=az(e,_,2,1)_=f[2][aB]if aD==x then
m[2]=aB
c,s=_[4]for a=14,16 do
s=s or u[1][a]>0 and c==a
end
if c==1 or s then
aV(_,_[5])elseif c>3000 and c<3005 then
bJ=aE(c-3000)end
end
end
end
m[1]=ak
for a=3,14 do
m[a]=e[f[19][4][a]]or m[a]end
u[1][17]=bs
m[11]=u[1][b_%#u[1]+1]a=ad
bB=o
I=1
as=#h+#T
while I<3 and bB do
c=I*9+6
if a<=#h then
_=h[a]if a~=1 then
if _ then
if _[10]then
m[c],_[10]=a
for j=1,8 do
m[c+j]=_[f[19][1][j]]end
I=I+1
end
else
m[c]=-a
aO(h,a)I=I+1
as=as-1
end
end
else
_=T[a-#h]if _[10]then
m[c],_[10]=a-#h+2^15
for j=1,6 do
m[c+j]=_[j]end
I=I+1
end
end
a=(a-2)%as+1
ad=C(ad,as)bB=a~=ad
end
ad=a
for a=1,32 do
output.setNumber(a,m[a])end
end
aq=aq+1
async.httpGet(8,"")end
