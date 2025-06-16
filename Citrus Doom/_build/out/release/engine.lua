
T=128
O=180
E=math
M=E.max
C=E.min
be=E.floor
pi=E.pi
ar=input.getNumber
af=input.getBool
ae=output.setBool
o=true
x=false
D=ipairs
abs=E.abs
aQ=table.remove
bf=string
function ab(b,g)return{(b[1]+g[1]),(b[2]+g[2])}end
function sub(b,g)return{(b[1]-g[1]),(b[2]-g[2])}end
function bI(b)return E.sin(b/O*pi)end
function aj(b)return E.cos(b/O*pi)end
function J(b,g)return E.atan(g[2]-b[2],g[1]-b[1])*O/pi end
function G(b,g,aj)return M(C(aj,b),g)end
function u(b,g)return E.sqrt(((b[1]-g[1])^2)+((b[2]-g[2])^2))end
function S(b,g)return{aj(b)*g,bI(b)*g}end
function exp(b)return b[1],b[2]end
f={}aG=1
at=3
ba=o
ao=2
ay=0
aB=0
aX=0
aU=0
W=0
aT=0
l=1
aZ=0
bj=2
function aN(a,b,_)if a<2^15 then
_=f[7][a]return aN(_[_[3]*(b[2]-_[2])-_[4]*(b[1]-_[1])>0 and 8 or 7],b)else
a=f[5][f[6][a-32768][2]]return Y[f[3][f[2][a[4]][a[5]+6]][6]]end
end
function an(s,bk,y,bl,_)aa=h[y]d=z[aa[4]]av,ak=d[18],d[19]K=av
A=aN(#f[7],s)P,ag=exp(A)ad=sub(s,bb)L=U[2+ad[1]//T+ad[2]//T*bn]or{}for a,_ in D(L[0]or{})do
c=h[_]if _~=y and c and aa[14]~=c then
k=u(c,s)F=z[c[4]]if c[20]then
X=k-F[18]if X<K and F[23]&1>0 and(d[23]&1>0 or G(s[9],c[9]-ak,c[9]+F[19])==s[9])then
aD=c
if bk==x then
return
end
K=X
aS=J(s,c)end
end
if y==1 then
if k<50 then
b=F[25]if b>0 then
for q,t in D(w[b])do
if t>0 and w[1][q]<w[2][q]then
c=w
h[_]=x
c[1][q]=be(C(c[1][q]+t,c[2][q]))if G(q,5,12)==q then
ao=q-4
end
end
end
end
b=F[29]if b>0 then
b=f[11][b]for q=7,8 do
e[q]=G(e[q]+b[q*2-13],e[q],b[q*2-12])end
h[_]=x
end
end
end
end
end
if ag-P<ak or P>s[9]+24 then
r=(bl or 1)<8 or aX%4>0 or A[6]<18 or aw(aa,10)return
end
for a=1,#L do
_=f[2][L[a]]k,bu=by(s,R[_[1]],R[_[2]])if k<K then
if(_[3]&1>0 and d[23]&1>0)or _[3]&4==0 then
if y>1 or aR>0 or _[3]&4>0 then
K=k
aS=bu
end
else
aY,bd=C(_[9],ag),M(_[8],P)if C(s[9],ag-ak)+24<bd or M(s[9],P)+ak>aY or aY-bd<ak then
K=k
aS=bu
else
if bl==1 and(_[3]&512>0 or y==1)and(_[4]==2 or y>1)then
aE(_,_[5])end
ag,P=aY,bd
end
end
end
end
A,aD={P,ag}if bk then
if K~=av then
_=ab(s,S(aS,K-av))s[1]=_[1]s[2]=_[2]end
return o
end
return K==av
end
function by(p,v,az)N=u(v,p)bB=J(v,az)+90
bA=bB-J(p,v)bs=-N*bI(bA)aR=N*aj(bA)aO=bB
if aR<0 then
aO=aO+O
end
if bs<0 then
return N,J(p,v)elseif bs>u(az,v)then
return u(az,p),J(p,az)else
return abs(aR),aO
end
end
function aA(p,v,aM,y,_)b_=u(p,v)au=b_
aK,r=o
X,aP=exp(p)bQ,bR=exp(v)bg,aH=exp(sub(v,p))ax,bE=p[9]+32,v[9]+32
for a,_ in D(f[2])do
bN=R[_[1]]bh,bG=exp(sub(R[_[2]],bN))bi,bt=exp(sub(p,bN))br=bG*bg-bh*aH
Z=(bh*bt-bG*bi)/br
bx=(bg*bt-aH*bi)/br
if G(Z,0,1)==Z and G(bx,0,1)==bx then
bF={X+(Z*bg),aP+(Z*aH)}k=u(p,bF)H=ax+(bE-ax)*(k/b_)if G(H,_[8]+1,_[9])~=H then
aK=x
if aM==1 then
return
end
if k<au then
au=k
bD,bP=exp(bF)bo=H
bH=a
end
end
end
end
if aM>1 then
if aM==3 then
for a,_ in D(h)do
if _ and a~=y then
d=z[_[4]]if d[23]&1>0 and _[20]then
k=u(p,_)if k<au then
Z=by(_,p,v)N=(k/b_)H=ax+(bE-ax)*N
if G(H,_[9],_[9]+d[19])==H and Z<d[18]then
au=k
r,aK=o
bD=X+(bQ-X)*N
bP=aP+(bR-aP)*N
bo=H
bH=a
end
end
end
end
end
end
return aK,bH,{bD,bP,bo}end
return o
end
function httpReply(b,g,aj)bK=aB//2
aB=0
end
function al()aT=aT%256+1
return f[13][1][aT]end
function aw(_,a,c)d=z[_[4]]if d[23]&2>0 and _[7]>0 then
_[8]=_[8]-(a+1)//2
_[7]=_[7]-a//2+C(_[8],0)_[8]=M(_[8],0)if al()<d[10]then
_[6]=d[9]_[15]=0
_[23]=d[13]~="lost soul missile state" and c or e
_[10]=o
end
end
end
function bp(b,g,ap)return g[20]and abs(((J(b,g)-b[3]+O)%360)-O)<ap and aA(b,g,1)end
function aF(B,y)bM=ai and(ai[9]-B[9])*n[6]/u(ai,B)or 0
for a=1,n[12]do
b={}for a=1,30 do
b[a]=B[a]end
b[4]=n[8]b[10]=o
b[14]=B
bq=(al()/T-1)*n[10]bc=S(B[3]+bq,n[6])if n[7]>0 then
h[#h+1]=b
d=z[b[4]]b[6]=d[3]b[9]=B[9]+n[13]b[11]=bc[1]b[12]=bc[2]b[17]=ao
b[19]=bM
else
c=ab(B,bc)c[9]=e[9]+bM
aI,as,c=aA(B,c,3,y)if not aI then
bm=sub(c,S(B[3]+bq,1))h[#h+1]=b
b[1]=bm[1]b[2]=bm[2]b[6]=z[b[4]][3]b[9]=c[3]b[19]=1
if r then
b=h[as]aw(b,n[9]*((al()&3)+2),B)end
end
end
end
end
function aE(_,c)if c>-1 then
b=f[9][c]if b[1]>0 or aa[31]*_[10][2]-aa[32]*_[10][1]<0 then
g=Y[b[1]]ac[g and g[30]or#ac+1]={c,1,g or aa}_[4]=b[7]b=b[8]>0 and aE(_,b[8])end
else
ba=o
at=-c
m[10]=-c
end
end
function bz()bC,ai=2048
for a,_ in D(h)do
if a>1 and _ and bp(e,_,10)then
k=u(_,e)if k<bC then
if z[_[4]][23]&2>0 then
ai=_
bC=k
end
end
end
end
end
function bw(_)if _[9]~=A[1]and not bJ then
_[9]=A[1]_[10]=true
end
end
function onTick()ae(9,af(32))ae(2,af(11))ae(3,x)for j=1,3 do
if af(32)and(not bL)or not f[21]then
aJ=property.getText(aG)a=1
i=""
_=bf.sub(aJ,a,a)while _~=""do
c=bf.byte(_)if c>64 then
i=(i..c-65)+0
if l==1 then
bO=i
f[i]=f[i]or{}elseif l==2 then
H=i
am=0
elseif l==3 then
aV=i
else
if am==0 then
am=H
aV=aV-1
aC={}f[bO][#f[bO]+1]=aC
end
aC[#aC+1]=i
am=am-1
l=M(am,aV)>0 and l-1 or 0
end
l=l+1
i=""
else
i=i.._
end
a=a+1
_=bf.sub(aJ,a,a)end
aG=aG+1
bL=aJ==""
end
end
if bL then
if ba then
ac,ba={}ah=1
for a=1,10 do
f[a]=f[a+10*at]end
h=f[1]R=f[4]Y=f[8]U=f[10]bb,U[1]=U[1]w=f[12]z=f[15]for a=14,16 do
w[1][a]=0
end
at=at+1
for a=#h,1,-1 do
_=h[a]for j=7,40 do
_[j]=0
end
_[7]=z[_[4]][4]_[9],_[10]=aN(#f[7],_)[1]if _[5]&bj<1 then
aQ(h,a)elseif _[4]==1 then
if e then
_[7]=e[7]_[8]=e[8]end
e=_
end
end
bn=bb[3]end
for a,_ in D(f[2])do
_[10]=sub(R[_[2]],R[_[1]])if _[3]&4>0 then
d,F=Y[f[3][_[6]][6]],Y[f[3][_[7]][6]]_[8]=M(d[1],F[1])_[9],d[30],F[30]=C(d[2],F[2])else
_[8],_[9]=0,0
end
end
m={}for a=1,32 do
m[a]=0
end
aU=aU+1
W=C(W+1/bK,2/35)ae(1,W>=0)if W>=0 then
W=W-1/35
aX=aX+1
for a=2,#U do
U[a][0]={}end
for a,t in D(ac)do
_=f[9][t[1]]c=t[3]b=_[2]d=c[b]c[b]=G(_[3],d-_[4],d+_[4])+0
d=c[b]if d==_[3]then
ac[a]=t[2]==_[5]and{_[6],1,c}or{t[1],t[2]+1,c}if _[6]==0 then
aQ(ac,a)end
end
c[10]=c[10]or d~=t
c[30]=a
end
for a,_ in D(h)do
if _ then
for j,t in D({1,2,9})do
_[t]=_[t]+_[t+10]end
_[15]=_[15]+1
d=z[_[4]]if _[7]<=0 and _[20]then
_[15]=0
_[6]=d[_[7]<=-d[4]and d[15]>1 and 15 or 14]_[10],_[20]=o
m[12]=d[16]if d[27]>0 then
c={}for j=1,30 do
c[j]=_[j]end
c[4]=d[27]c[6]=d[28]h[#h+1]=c
end
end
aL=f[16][_[6]]if _[15]>=aL[2]and aL[2]~=-1 then
_[6]=aL[4]_[15]=0
V=f[16][_[6]][3]bJ=d[23]&4>0
if V==1 then
for a,l in D(h)do
if l then
i=T-u(_,l)if i>0 then
aw(l,i)end
end
end
elseif V==2 then
if bp(_,e,90)then
_[23]=e
_[6]=d[5]m[12]=d[6]end
an(_,x,a,8)bw(_)elseif V==3 then
_[23]=_[23][20]and _[23]or e
ap,r=be(J(_,_[23])/45+.5)*45
l=1
while l<5 and not r do
i=ab(_,S(ap+f[19][2][l],8))i[9]=_[9]r=an(i,x,a,l)and(A[1]>=i[9]-24 or bJ)l=l+1
end
if r then
for j=1,2 do
_[30+j]=i[j]-_[j]_[j]=i[j]end
_[3]=ap
_[10]=o
else
an(_,x,a,8)end
bw(_)b=u(_,_[23])if d[13]>0 and aA(_,_[23],1)and C(b,230)<al()then
_[6]=d[13]end
if b<64 and d[12]>0 then
_[6]=d[12]end
elseif V==5 then
for a=1,11 do
e[3]=e[3]+f[19][9][a]n=f[14][23]bz()aF(e,1)end
e[3]=e[3]-20
elseif V>9 and _[20]then
_[3]=J(_,_[23])n=f[14][V]_[10]=o
ai=_[23]aF(_,a)end
end
if _[17]and _[17]>0 then
n=f[14][_[17]]if not an(_,x,a)or _[9]<=A[1]then
if aD then
aw(aD,d[21]*((al()&7)+1),_[14])end
_[1]=_[1]-_[11]_[2]=_[2]-_[12]_[3]=0
_[6]=z[_[4]][5]_[10]=o
_[11]=0
_[12],_[17]=0
m[12]=d[16]_[19]=0
end
end
if _[6]==1 then
h[a]=x
else
ad=sub(_,bb)L=U[2+ad[1]//T+ad[2]//T*bn]if L then
L[0][#L[0]+1]=a
end
end
end
end
for a=1,8 do
if af(a)and w[1][a+4]>0 then
ao=a
end
end
n=f[14][ao]e[3]=e[3]-ar(3)*(G(aZ,5,6)*1.5-6)aZ=abs(ar(3))*aZ+1
Q=e
for a=1,2 do
Q=ab(Q,S(e[3]-O+90*a,ar(a)*8.33))end
Q[9]=e[9]for a=1,8 do
r=an(Q,o,1,a)end
if r then
for a=1,2 do
e[30+a]=Q[a]-e[a]e[a]=Q[a]end
if e[9]>A[1]then
e[19]=e[19]-1
else
e[9]=C(A[1],e[9]+4)e[19]=M(0,e[19])end
else
e[19]=0
e[9]=A[1]end
aW=w[1]c=n[1]if af(31)and ay<=0 and(c==0 or aW[c]>=n[2])then
ae(3,o)ay=n[3]if c>0 then
aW[c]=aW[c]-n[2]end
bz()aF(e,1)end
ay=ay-1
if ar(4)<0 then
_=ab(e,S(e[3],64))_[9]=e[9]aI,as=aA(e,_,2,1)_=f[2][as]if aI==x then
m[2]=as
c,r=_[4]for a=14,16 do
r=r or w[1][a]>0 and c==a
end
if c==1 or r then
aE(_,_[5])elseif c>3000 and c<3005 then
bj=be(c-3000)end
end
end
end
m[1]=ao
for a=3,14 do
m[a]=e[f[19][4][a]]or m[a]end
w[1][17]=bK
m[11]=w[1][aU%#w[1]+1]a=ah
bv=o
I=1
aq=#h+#Y
while I<3 and bv do
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
aQ(h,a)I=I+1
aq=aq-1
end
end
else
_=Y[a-#h]if _[10]then
m[c],_[10]=a-#h+2^15
for j=1,6 do
m[c+j]=_[j]end
I=I+1
end
end
a=(a-2)%aq+1
ah=C(ah,aq)bv=a~=ah
end
ah=a
for a=1,32 do
output.setNumber(a,m[a])end
end
aB=aB+1
async.httpGet(8,"")end
