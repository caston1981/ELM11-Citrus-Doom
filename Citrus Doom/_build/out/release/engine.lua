bU=""

X=128
N=180
bj=output
bh=input
F=math
M=F.max
A=F.min
au=F.floor
pi=F.pi
ap=bh.getNumber
ad=bh.getBool
an=bj.setBool
n=true
i=false
y=ipairs
abs=F.abs
bC=table.remove
aO=string
function al(b,g)return{(b[1]+g[1]),(b[2]+g[2])}end
function sub(b,g)return{(b[1]-g[1]),(b[2]-g[2])}end
function bu(b)return F.sin(b/N*pi)end
function ak(b)return F.cos(b/N*pi)end
function K(b,g)return F.atan(g[2]-b[2],g[1]-b[1])*N/pi end
function G(b,g,ak)return M(A(ak,b),g)end
function v(b,g)return F.sqrt(((b[1]-g[1])^2)+((b[2]-g[2])^2))end
function W(b,g)return{ak(b)*g,bu(b)*g}end
function exp(b)return b[1],b[2]end
e={}aI=1
ar=3
as=i
bc=n
ab=2
aC=0
ao=0
aN=0
T=0
aS=0
l=1
be=0
bo=2
function aH(a,b,_)if a<32768then
_=e[7][a]return aH(_[_[3]*(b[2]-_[2])-_[4]*(b[1]-_[1])>0 and 8 or 7],b)else
a=e[5][e[6][a-32768][2]]return Y[e[3][e[2][a[4]][a[5]+6]][6]]end
end
function az(s,bs,w,bR,_,a,k)af=h[w]f=B[af[4]]aq,ae=f[18],f[19]J=aq
C=aH(#e[7],s)Q,ag=exp(C)aj=sub(s,aK)O=P[2+aj[1]//X+aj[2]//X*bB]or{}for a,_ in y(O[0]or{})do
c=h[_]if _~=w and c and af[14]~=_ then
m=v(c,s)E=B[c[4]]if c[20]then
U=m-E[18]if U<J and E[23]&1>0 and(f[23]&1>0 or(s[9]+ae<c[9]or s[9]>c[9]+E[19])==i)then
aY=c
if bs==i then
return i
end
J=U
bg=K(s,c)end
end
if w==1 and not c[10]then
if m<50then
b=E[25]if b>0then
for q,u in y(z[b])do
if u>0 and z[1][q]<z[2][q]then
c=z
h[_]=i
c[1][q]=au(A(c[1][q]+u,c[2][q]))if G(q,5,12)==q then
ab=q-4
end
end
end
end
b=E[29]if b>0 then
b=e[11][b]for q=7,8 do
d[q]=G(d[q]+b[q*2-13],d[q],b[q*2-12])end
h[_]=i
end
end
end
end
end
aY=i
if ag-Q<ae or Q>s[9]+24then
return i
end
for a=1,#O do
_=e[2][O[a]]m,bG=bL(s,V[_[1]],V[_[2]])if m<J then
if(_[3]&1>0 and f[23]&1>0)or _[3]&4==0 then
if w>1 or aQ>0 or _[3]&4>0 then
J=m
bg=bG
end
else
bb,aU=A(_[9],ag),M(_[8],Q)if A(s[9],ag-ae)+24<aU or M(s[9],Q)+ae>bb or bb-aU<ae then
J=m
bg=bG
else
if bR==1 and(_[3]&512>0 or w==1)and(_[4]==2 or w>1)then
aR(_,_[5])end
ag,Q=bb,aU
end
end
end
end
C={Q,ag}if bs then
if J~=aq then
_=al(s,W(bg,J-aq))s[1]=_[1]s[2]=_[2]end
return n
end
return J==aq
end
function bL(p,x,aB)L=v(x,p)bO=K(x,aB)+90
bJ=bO-K(p,x)bi=-L*bu(bJ)aQ=L*ak(bJ)aV=bO
if aQ<0 then
aV=aV+N
end
if bi<0 then
return L,K(p,x)elseif bi>v(aB,x)then
return v(aB,p),K(p,aB)else
return abs(aQ),aV
end
end
function at(p,x,aX,w,_)bf=v(p,x)aw=bf
aG=n
U,b_=exp(p)bQ,bS=exp(x)aF,aT=exp(sub(x,p))aD,bn=p[9]+32,x[9]+32
t=i
for a,_ in y(e[2])do
bx=V[_[1]]br,bM=exp(sub(V[_[2]],bx))bI,bp=exp(sub(p,bx))bP=bM*aF-br*aT
R=(br*bp-bM*bI)/bP
bw=(aF*bp-aT*bI)/bP
if G(R,0,1)==R and G(bw,0,1)==bw then
bm={U+(R*aF),b_+(R*aT)}m=v(p,bm)D=aD+(bn-aD)*(m/bf)if G(D,_[8]+1,_[9])~=D then
aG=i
if aX==1 then
return i
end
if m<aw then
aw=m
bq,bk=exp(bm)bD=D
bt=a
end
end
end
end
if aX>1 then
if aX==3 then
for a,_ in y(h)do
if _ and a~=w then
f=B[_[4]]if f[23]&1>0 and _[20]then
m=v(p,_)if m<aw then
R=bL(_,p,x)L=(m/bf)D=aD+(bn-aD)*L
if G(D,_[9],_[9]+f[19])==D and R<f[18]then
aw=m
t=n
aG=i
bq=U+(bQ-U)*L
bk=b_+(bS-b_)*L
bD=D
bt=a
end
end
end
end
end
end
return aG,bt,{bq,bk,bD}end
return n
end
function httpReply(b,g,ak)by=ao//2
ao=0
end
function aa()aS=aS%256+1
return e[13][1][aS]end
function av(_,a)f=B[_[4]]if f[23]&2>0 and _[7]>0 then
_[8]=_[8]-(a+1)//2
_[7]=_[7]-a//2+A(_[8],0)_[8]=M(_[8],0)if aa()<f[10]then
_[6]=f[9]_[15]=0
_[23]=d
_[10]=n
end
end
end
function bF(b,g,aA)return g[20]and abs(((K(b,g)-b[3]+N)%360)-N)<aA and at(b,g,1)end
function ba(H,w)bv=ai and(ai[9]-H[9])*o[6]/v(ai,H)or 0
for a=1,o[12]do
b={}for a=1,30 do
b[a]=H[a]end
b[4]=o[8]b[10]=n
b[14]=w
bz=(aa()/X-1)*o[10]aJ=W(H[3]+bz,o[6])if o[7]>0then
h[#h+1]=b
f=B[b[4]]b[6]=f[3]b[9]=H[9]+o[13]b[11]=aJ[1]b[12]=aJ[2]b[17]=ab
b[19]=bv
else
c=al(H,aJ)c[9]=d[9]+bv
aZ,ax,c=at(H,c,3,w)if not aZ then
bN=sub(c,W(H[3]+bz,1))h[#h+1]=b
b[1]=bN[1]b[2]=bN[2]b[6]=B[b[4]][3]b[9]=c[3]b[19]=1
if t then
b=h[ax]av(b,o[9]*((aa()&3)+2))end
end
end
end
end
function aR(_,c)if c>-1 then
b=e[9][c]if b[1]>0 or af[31]*_[10][2]-af[32]*_[10][1]<0 then
g=Y[b[1]]ac[g and g[30]or#ac+1]={c,1,g or af}_[4]=b[7]b=b[8]>0 and aR(_,b[8])end
else
bc=n
ar=-c
r[9]=-c
end
end
function bl()bH,ai=2048
for a,_ in y(h)do
if a>1 and _ and bF(d,_,10)then
m=v(_,d)if m<bH then
if B[_[4]][23]&2>0then
ai=_
bH=m
end
end
end
end
end
function onTick()an(9,ad(32))an(2,ad(11))an(3,i)for k=1,3 do
if ad(32)and(not as)or not e[21]then
aW=property.getText(aI)a=1
j=bU
_=aO.sub(aW,a,a)while _~=bUdo
c=aO.byte(_)if c>64then
j=(j..c-65)+0
if l==1then
bK=j
e[j]=e[j]or{}elseif l==2then
D=j
ah=0
elseif l==3then
aM=j
else
if ah==0then
ah=D
aM=aM-1
aL={}e[bK][#e[bK]+1]=aL
end
aL[#aL+1]=j
ah=ah-1
l=M(ah,aM)>0 and l-1 or 0
end
l=l+1
j=bU
else
j=j.._
end
a=a+1
_=aO.sub(aW,a,a)end
aI=aI+1
as=aW==bU
end
end
if as then
if bc then
ac,bc={}am=1
for a=1,10 do
e[a]=e[a+10*ar]end
h=e[1]V=e[4]Y=e[8]P=e[10]aK,P[1]=P[1]z=e[12]B=e[15]for a=14,16 do
z[1][a]=0
end
ar=ar+1
for a,_ in y(h)do
for k=7,40 do
_[k]=0
end
bT=_[5]+1
_[7]=B[_[4]][4]_[9],_[10]=aH(#e[7],_)[1]if _[4]==1 then
if d then
_[7]=d[7]_[8]=d[8]end
d=_
elseif _[5]&bo<1then
h[a]=i
end
end
bB=aK[3]end
for a,_ in y(e[2])do
_[10]=sub(V[_[2]],V[_[1]])if _[3]&4>0 then
f,E=Y[e[3][_[6]][6]],Y[e[3][_[7]][6]]_[8]=M(f[1],E[1])_[9],f[30],E[30]=A(f[2],E[2])else
_[8],_[9]=0,0
end
end
r={}for a=1,32 do
r[a]=0
end
T=A(T+1/by,2/35)an(1,T>=0)if T>=0 then
T=T-1/35
aN=aN+1
for a=2,#P do
P[a][0]={}end
for a,u in y(ac)do
_=e[9][u[1]]c=u[3]b=_[2]f=c[b]c[b]=G(_[3],f-_[4],f+_[4])+0
f=c[b]if f==_[3]then
ac[a]=u[2]==_[5]and{_[6],1,c}or{u[1],u[2]+1,c}if _[6]==0 then
bC(ac,a)end
end
c[10]=c[10]or f~=u
c[30]=a
end
for a,_ in y(h)do
if _ then
for k,u in y({1,2,9})do
_[u]=_[u]+_[u+10]end
_[15]=_[15]+1
f=B[_[4]]if _[7]<=0 and _[20]then
_[15]=0
_[6]=f[_[7]<=-f[4]and f[15]>1 and 15or 14]_[10],_[20]=n
if f[27]>0 then
c={}for k=1,30 do
c[k]=_[k]end
c[4]=f[27]c[6]=f[28]h[#h+1]=c
end
end
aE=e[16][_[6]]if _[15]>=aE[2]and aE[2]~=-1then
_[6]=aE[4]_[15]=0
S=e[16][_[6]][3]if S==1 then
for a,l in y(h)do
if l then
j=X-v(_,l)if j>0 then
av(l,j)end
end
end
elseif S==2then
if bF(_,d,90)then
_[23]=d
_[6]=f[5]end
elseif S==3then
aA=au(K(_,_[23])/45+.5)*45
t=i
l=1
bA=f[23]&4>0
while l<5 and not t do
j=al(_,W(aA+e[19][2][l],8))j[9]=_[9]t=az(j,i,a,l)and(C[1]>=j[9]-24 or bA)l=l+1
end
if t then
for k=1,2 do
_[30+k]=j[k]-_[k]_[k]=j[k]end
_[3]=aA
_[10]=n
else
az(_,i,a)end
_[9]=bA and _[9]or C[1]b=v(_,_[23])if f[13]>0 and at(_,_[23],1)and A(b,230)<aa()then
_[6]=f[13]end
if b<64 and f[12]>0then
_[6]=f[12]end
elseif S==5then
for a=1,11 do
d[3]=d[3]+e[19][9][a]o=e[14][23]bl()ba(d,1)end
d[3]=d[3]-20
elseif S>9 and _[20]then
_[3]=K(_,_[23])o=e[14][S]_[10]=n
ai=_[23]ba(_,a)end
end
if _[17]and _[17]>0then
o=e[14][_[17]]if not az(_,i,a)or _[9]<=C[1]then
if aY then
av(aY,f[21]*((aa()&7)+1))end
_[1]=_[1]-_[11]_[2]=_[2]-_[12]_[3]=0
_[6]=B[_[4]][5]_[10]=n
_[11]=0
_[12],_[17]=0
_[19]=0
end
end
if _[6]==1then
h[a]=i
else
aj=sub(_,aK)O=P[2+aj[1]//X+aj[2]//X*bB]if O then
O[0][#O[0]+1]=a
end
end
end
end
for a=1,8 do
if ad(a)and z[1][a+4]>0then
ab=a
end
end
o=e[14][ab]d[3]=d[3]-ap(3)*(G(be,5,6)*1.5-6)be=abs(ap(3))*be+1
Z=d
for a=1,2 do
Z=al(Z,W(d[3]-N+90*a,ap(a)*8.33))end
Z[9]=d[9]for a=1,8 do
t=az(Z,n,1,a)end
if t then
for a=1,2 do
d[30+a]=Z[a]-d[a]d[a]=Z[a]end
if d[9]>C[1]then
d[19]=d[19]-1
else
d[9]=A(C[1],d[9]+4)d[19]=M(0,d[19])end
else
d[19]=0
d[9]=C[1]t=aN%4>0 or C[6]<18 or av(d,10)end
aP=z[1]c=o[1]if ad(31)and aC<=0 and(c==0 or aP[c]>=o[2])then
an(3,n)aC=o[3]if c>0then
aP[c]=aP[c]-o[2]end
bl()ba(d,1)end
aC=aC-1
if ap(4)<0 then
_=al(d,W(d[3],64))_[9]=d[9]aZ,ax=at(d,_,2,1)_=e[2][ax]if aZ==i then
r[2]=ax
c,t=_[4]for a=14,16 do
t=t or z[1][a]>0 and c==a
end
if c==1 or t then
aR(_,_[5])elseif c>3000 and c<3005then
bo=au(c-3000)end
end
end
end
r[1]=ab
for a=3,8 do
r[a]=d[e[19][4][a]]end
r[5]=1
r[13]=d[3]a=am
bE=n
I=1
ay=#h+#Y
while I<3 and bE do
c=I*9+5
if a<=#h then
_=h[a]if a~=1 then
if _ then
if _[10]then
_[10]=i
r[c]=a
for k=1,8 do
r[c+k]=_[e[19][1][k]]end
I=I+1
end
else
r[c]=-a
bC(h,a)I=I+1
ay=ay-1
end
end
else
_=Y[a-#h]if _[10]then
_[10]=i
r[c]=a-#h+2^15
for k=1,6 do
r[c+k]=_[k]end
I=I+1
end
end
a=((a-2)%ay)+1
am=A(am,ay)bE=a~=am
end
am=a
for a=1,32 do
bj.setNumber(a,r[a])end
end
ao=ao+1
async.httpGet(8,bU)end
function onDraw()bd=screen.drawText
bd(26,137,by)if as then
for a=1,4 do
b=124+a*7
bd(240,b,au(z[1][a]))bd(200,b,z[1][13+a])end
end
end
