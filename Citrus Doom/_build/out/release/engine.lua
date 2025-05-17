bT=""

X=128
O=180
bu=output
bi=input
F=math
P=F.max
w=F.min
as=F.floor
pi=F.pi
au=bi.getNumber
ag=bi.getBool
af=bu.setBool
n=true
i=false
y=ipairs
abs=F.abs
bA=table.remove
aS=string
function aj(b,g)return{(b[1]+g[1]),(b[2]+g[2])}end
function sub(b,g)return{(b[1]-g[1]),(b[2]-g[2])}end
function bN(b)return F.sin(b/O*pi)end
function ah(b)return F.cos(b/O*pi)end
function J(b,g)return F.atan(g[2]-b[2],g[1]-b[1])*O/pi end
function G(b,g,ah)return P(w(ah,b),g)end
function v(b,g)return F.sqrt(((b[1]-g[1])^2)+((b[2]-g[2])^2))end
function W(b,g)return{ah(b)*g,bN(b)*g}end
function exp(b)return b[1],b[2]end
e={}aU=1
aw=3
aA=i
aL=n
aa=2
av=0
ap=0
Z=0
aV=0
l=1
aW=0
bh=2
function aP(a,b,_)if a<32768then
_=e[7][a]return aP(_[_[3]*(b[2]-_[2])-_[4]*(b[1]-_[1])>0 and 8 or 7],b)else
a=e[5][e[6][a-32768][2]]return S[e[3][e[2][a[4]][a[5]+6]][6]]end
end
function ay(s,bf,B,bQ,_,a,k)ac=h[B]f=A[ac[4]]aq,ad=f[18],f[19]H=aq
D=aP(#e[7],s)U,ak=exp(D)ai=sub(s,L[1])N=L[2+ai[1]//X+ai[2]//X*br]or{{}}for a,_ in y(N[0])do
c=h[_]if _~=B and c and ac[14]~=_ then
m=v(c,s)C=A[c[4]]if c[20]then
Y=m-C[18]if Y<H and C[23]&1>0 and(f[23]&1>0 or(s[9]+ad<c[9]or s[9]>c[9]+C[19])==i)then
aI=c
if bf==i then
return i
end
H=Y
aO=J(s,c)end
end
if B==1 and not c[10]then
if m<50then
b=C[25]if b>0then
for p,t in y(z[b])do
if t>0 and z[1][p]<z[2][p]then
c=z
h[_]=i
c[1][p]=as(w(c[1][p]+t,c[2][p]))if G(p,5,12)==p then
aa=p-4
end
end
end
end
b=C[29]if b>0 then
b=e[11][b]for p=7,8 do
d[p]=G(d[p]+b[p*2-13],d[p],b[p*2-12])end
h[_]=i
end
end
end
end
end
aI=i
if ak-U<ad or U>s[9]+24then
return i
end
for a=1,#N do
_=e[2][N[a]]m,bB=bt(s,R[_[1]],R[_[2]])if m<H then
if bQ==1 and(_[3]&512>0 or B==1)and(_[4]==2 or B>1)then
bb(_,_[5])end
if(_[3]&1>0 and f[23]&1>0)or _[3]&4==0 then
if aM>0then
H=m
aO=bB
end
else
bc,b_=w(_[9],ak),P(_[8],U)if w(s[9],ak-ad)+24<b_ or P(s[9],U)+ad>bc or bc-b_<ad then
H=m
aO=bB
else
ak,U=bc,b_
end
end
end
end
D={U,ak}if bf then
if H~=aq then
_=aj(s,W(aO,H-aq))s[1]=_[1]s[2]=_[2]end
return n
end
return H==aq
end
function bt(q,x,az)M=v(x,q)bn=J(x,az)+90
bJ=bn-J(q,x)bk=-M*bN(bJ)aM=M*ah(bJ)be=bn
if aM<0 then
be=be+O
end
if bk<0 then
return M,J(q,x)elseif bk>v(az,x)then
return v(az,q),J(q,az)else
return abs(aM),be
end
end
function aC(q,x,aQ,B,_)aD=v(q,x)at=aD
aR=n
Y,bd=exp(q)bR,bO=exp(x)aK,aN=exp(sub(x,q))ar,bg=q[9]+32,x[9]+32
u=i
for a,_ in y(e[2])do
bs=R[_[1]]bM,bz=exp(sub(R[_[2]],bs))bD,bl=exp(sub(q,bs))bE=bz*aK-bM*aN
T=(bM*bl-bz*bD)/bE
bI=(aK*bl-aN*bD)/bE
if G(T,0,1)==T and G(bI,0,1)==bI then
bw={Y+(T*aK),bd+(T*aN)}m=v(q,bw)E=ar+(bg-ar)*(m/aD)if G(E,_[8]+1,_[9])~=E then
aR=i
if aQ==1 then
return i
end
if m<at then
at=m
bG,bm=exp(bw)bH=E
bL=a
end
end
end
end
if aQ>1 then
if aQ==3 then
for a,_ in y(h)do
if _ and a~=B then
f=A[_[4]]if f[23]&1>0 and _[20]then
m=v(q,_)if m<at then
T=bt(_,q,x)M=(m/aD)E=ar+(bg-ar)*M
if G(E,_[9],_[9]+f[19])==E and T<f[18]then
at=m
u=n
aR=i
bG=Y+(bR-Y)*M
bm=bd+(bO-bd)*M
bH=E
bL=a
end
end
end
end
end
end
return aR,bL,{bG,bm,bH}end
return n
end
function httpReply(b,g,ah)bK=ap//2
ap=0
end
function ab()aV=aV%256+1
return e[13][1][aV]end
function aJ(_,a)f=A[_[4]]if f[23]&2>0 and _[7]>0 then
_[8]=_[8]-(a+1)//2
_[7]=_[7]-a//2+w(_[8],0)_[8]=P(_[8],0)if ab()<f[10]then
_[6]=f[9]_[15]=0
_[23]=d
_[10]=n
end
end
end
function bq(b,g,aB)return g[20]and abs(((J(b,g)-b[3]+O)%360)-O)<aB and aC(b,g,1)end
function aE(I,B)bF=al and(al[9]-I[9])*o[6]/v(al,I)or 0
for a=1,o[12]do
b={}for a=1,30 do
b[a]=I[a]end
b[4]=o[8]b[10]=n
b[14]=B
bC=(ab()/X-1)*o[10]aT=W(I[3]+bC,o[6])if o[7]>0then
h[#h+1]=b
f=A[b[4]]b[6]=f[3]b[9]=I[9]+o[13]b[11]=aT[1]b[12]=aT[2]b[17]=aa
b[19]=bF
else
c=aj(I,aT)c[9]=d[9]+bF
aZ,ao,c=aC(I,c,3,B)if not aZ then
by=sub(c,W(I[3]+bC,1))h[#h+1]=b
b[1]=by[1]b[2]=by[2]b[6]=A[b[4]][3]b[9]=c[3]b[19]=1
if u then
b=h[ao]aJ(b,o[9]*((ab()&3)+2))end
end
end
end
end
function bb(_,c)if c>-1 then
b=e[9][c]if b[1]>0 or ac[31]*_[10][2]-ac[32]*_[10][1]<0 then
g=S[b[1]]an[g and g[30]or#an+1]={c,1,g or ac}_[4]=b[7]b=b[8]>0 and bb(_,b[8])end
else
aL=n
aw=-c
r[9]=-c
end
end
function bj()bp,al=2048
for a,_ in y(h)do
if a>1 and _ and bq(d,_,10)then
m=v(_,d)if m<bp then
if A[_[4]][23]&2>0then
al=_
bp=m
end
end
end
end
end
function onTick()af(9,ag(32))af(2,ag(11))af(3,i)for k=1,3 do
if ag(32)and(not aA)or not e[21]then
aH=property.getText(aU)a=1
j=bT
_=aS.sub(aH,a,a)while _~=bTdo
c=aS.byte(_)if c>64then
j=(j..c-65)+0
if l==1then
bo=j
e[j]=e[j]or{}elseif l==2then
E=j
ae=0
elseif l==3then
ba=j
else
if ae==0then
ae=E
ba=ba-1
aY={}e[bo][#e[bo]+1]=aY
end
aY[#aY+1]=j
ae=ae-1
l=P(ae,ba)>0 and l-1 or 0
end
l=l+1
j=bT
else
j=j.._
end
a=a+1
_=aS.sub(aH,a,a)end
aU=aU+1
aA=aH==bT
end
end
if aA then
if aL then
an,aL={}am=1
for a=1,10 do
e[a]=e[a+10*aw]end
h=e[1]R=e[4]S=e[8]L=e[10]z=e[12]A=e[15]for a=14,16 do
z[1][a]=0
end
aw=aw+1
for a,_ in y(h)do
for k=7,40 do
_[k]=0
end
bS=_[5]+1
_[7]=A[_[4]][4]_[9],_[10]=aP(#e[7],_)[1]if _[4]==1 then
if d then
_[7]=d[7]_[8]=d[8]end
d=_
elseif _[5]&bh<1then
h[a]=i
end
end
br=L[1][3]end
for a,_ in y(e[2])do
_[10]=sub(R[_[2]],R[_[1]])if _[3]&4>0 then
f,C=S[e[3][_[6]][6]],S[e[3][_[7]][6]]_[8]=P(f[1],C[1])_[9],f[30],C[30]=w(f[2],C[2])else
_[8],_[9]=0,0
end
end
r={}for a=1,32 do
r[a]=0
end
Z=w(Z+1/bK,2/35)af(1,Z>=0)if Z>=0 then
Z=Z-1/35
for a=2,#L do
L[a][0]={}end
for a,t in y(an)do
_=e[9][t[1]]c=t[3]b=_[2]f=c[b]c[b]=G(_[3],f-_[4],f+_[4])+0
f=c[b]if abs(f-_[3])<.1then
an[a]=t[2]==_[5]and{_[6],1,c}or{t[1],t[2]+1,c}if _[6]==0 then
bA(an,a)end
end
c[10]=c[10]or f~=t
c[30]=a
end
for a,_ in y(h)do
if _ then
for k,t in y({1,2,9})do
_[t]=_[t]+_[t+10]end
_[15]=_[15]+1
f=A[_[4]]if _[7]<=0 and _[20]then
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
V=e[16][_[6]][3]if V==1 then
for a,l in y(h)do
if l then
j=X-v(_,l)if j>0 then
aJ(l,j)end
end
end
elseif V==2then
if bq(_,d,90)then
_[23]=d
_[6]=f[5]end
elseif V==3then
aB=as(J(_,_[23])/45+.5)*45
u=i
l=1
bv=f[23]&4>0
while l<5 and not u do
j=aj(_,W(aB+e[19][2][l],8))j[9]=_[9]u=ay(j,i,a,l)and(D[1]>=j[9]-24 or bv)l=l+1
end
if u then
for k=1,2 do
_[30+k]=j[k]-_[k]_[k]=j[k]end
_[3]=aB
_[10]=n
else
ay(_,i,a)end
_[9]=bv and _[9]or D[1]b=v(_,_[23])if f[13]>0 and aC(_,_[23],1)and w(b,230)<ab()then
_[6]=f[13]end
if b<64 and f[12]>0then
_[6]=f[12]end
elseif V==5then
for a=1,11 do
d[3]=d[3]+e[19][9][a]o=e[14][23]bj()aE(d,1)end
d[3]=d[3]-20
elseif V>9 and _[20]then
_[3]=J(_,_[23])o=e[14][V]_[10]=n
al=_[23]aE(_,a)end
end
if _[17]and _[17]>0then
o=e[14][_[17]]if not ay(_,i,a)or _[9]<=D[1]then
if aI then
aJ(aI,f[21]*((ab()&7)+1))end
_[1]=_[1]-_[11]_[2]=_[2]-_[12]_[3]=0
_[6]=A[_[4]][5]_[10]=n
_[11]=0
_[12]=0
_[17]=bP
_[19]=0
end
end
if _[6]==1then
h[a]=i
else
ai=sub(_,L[1])N=L[2+ai[1]//X+ai[2]//X*br]if N~=bP then
N[0][#N[0]+1]=a
end
end
end
end
for a=1,8 do
if ag(a)and z[1][a+4]>0then
aa=a
end
end
o=e[14][aa]d[3]=d[3]-au(3)*(G(aW,5,6)*1.5-6)aW=abs(au(3))*aW+1
Q=d
for a=1,2 do
Q=aj(Q,W(d[3]-O+90*a,au(a)*8.33))end
Q[9]=d[9]for a=1,8 do
u=ay(Q,n,1,a)end
if u then
for a=1,2 do
d[30+a]=Q[a]-d[a]d[a]=Q[a]end
if d[9]<=D[1]then
d[9]=w(D[1],d[9]+4)d[19]=P(0,d[19])else
if d[9]>=D[2]-56then
d[9]=D[2]-56
d[19]=w(0,d[19])end
d[19]=d[19]-1
end
else
d[19]=0
end
aX=z[1]c=o[1]if ag(31)and av<=0 and(c==0 or aX[c]>=o[2])then
af(3,n)av=o[3]if c>0then
aX[c]=aX[c]-o[2]end
bj()aE(d,1)end
av=av-1
if au(4)<0 then
_=aj(d,W(d[3],64))_[9]=d[9]aZ,ao=aC(d,_,2,1)_=e[2][ao]if aZ==i then
r[2]=ao
c,u=_[4]for a=14,16 do
u=u or z[1][a]>0 and c==a
end
if c==1 or u then
bb(_,_[5])elseif c>3000 and c<3005then
bh=as(c-3000)end
end
end
end
r[1]=aa
for a=3,8 do
r[a]=d[e[19][4][a]]end
r[5]=1
r[13]=d[3]a=am
bx=n
K=1
ax=#h+#S
while K<3 and bx do
c=K*9+5
if a<=#h then
_=h[a]if a~=1 then
if _ then
if _[10]then
_[10]=i
r[c]=a
for k=1,8 do
r[c+k]=_[e[19][1][k]]end
K=K+1
end
else
r[c]=-a
bA(h,a)K=K+1
ax=ax-1
end
end
else
_=S[a-#h]if _[10]then
_[10]=i
r[c]=a-#h+2^15
for k=1,6 do
r[c+k]=_[k]end
K=K+1
end
end
a=((a-2)%ax)+1
am=w(am,ax)bx=a~=am
end
am=a
for a=1,32 do
bu.setNumber(a,r[a])end
end
ap=ap+1
async.httpGet(8,bT)end
function onDraw()aF=screen.drawText
aF(26,137,bK)if aA then
for a=1,4 do
b=124+a*7
aF(240,b,as(z[1][a]))aF(230,b,z[1][13+a])end
end
end
