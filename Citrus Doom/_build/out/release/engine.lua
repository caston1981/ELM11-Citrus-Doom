
W=128
L=180
F=math
O=F.max
y=F.min
aW=F.floor
pi=F.pi
ap=input.getNumber
aj=input.getBool
ac=output.setBool
n=true
u=false
B=ipairs
abs=F.abs
bc=table.remove
aY=string
function al(b,g)return{(b[1]+g[1]),(b[2]+g[2])}end
function sub(b,g)return{(b[1]-g[1]),(b[2]-g[2])}end
function bs(b)return F.sin(b/L*pi)end
function af(b)return F.cos(b/L*pi)end
function K(b,g)return F.atan(g[2]-b[2],g[1]-b[1])*L/pi end
function G(b,g,af)return O(y(af,b),g)end
function x(b,g)return F.sqrt(((b[1]-g[1])^2)+((b[2]-g[2])^2))end
function Q(b,g)return{af(b)*g,bs(b)*g}end
function exp(b)return b[1],b[2]end
f={}aC=1
au=3
aS=n
am=2
az=0
ay=0
aJ=0
bd=0
T=0
aD=0
l=1
aE=0
bM=2
function aZ(a,b,_)if a<2^15 then
_=f[7][a]return aZ(_[_[3]*(b[2]-_[2])-_[4]*(b[1]-_[1])>0 and 8 or 7],b)else
a=f[5][f[6][a-32768][2]]return X[f[3][f[2][a[4]][a[5]+6]][6]]end
end
function ai(r,bh,D,br,_)S=h[D]d=A[S[4]]aA,an=d[18],d[19]I=aA
z=aZ(#f[7],r)R,ab=exp(z)ad=sub(r,aK)M=P[2+ad[1]//W+ad[2]//W*bn]or{}for a,_ in B(M[0]or{})do
c=h[_]if _~=D and c and S[14]~=c then
k=x(c,r)H=A[c[4]]if c[20]then
Y=k-H[18]if Y<I and H[23]&1>0 and(d[23]&1>0 or G(r[9],c[9]-an,c[9]+H[19])==r[9])then
aN=c
if bh==u then
return
end
I=Y
aP=K(r,c)end
end
if D==1 then
if k<50 then
b=H[25]if b>0 then
for q,s in B(v[b])do
if s>0 and v[1][q]<v[2][q]then
c=v
h[_]=u
c[1][q]=aW(y(c[1][q]+s,c[2][q]))if G(q,5,12)==q then
am=q-4
end
end
end
end
b=H[29]if b>0 then
b=f[11][b]for q=7,8 do
e[q]=G(e[q]+b[q*2-13],e[q],b[q*2-12])end
h[_]=u
end
end
end
end
end
if ab-R<an or R>r[9]+24 then
t=(br or 1)<8 or aJ%4>0 or z[6]<18 or aw(S,10)return
end
for a=1,#M do
_=f[2][M[a]]k,bq=bz(r,aa[_[1]],aa[_[2]])if k<I then
if(_[3]&1>0 and d[23]&1>0)or _[3]&4==0 then
if D>1 or bg>0 or _[3]&4>0 then
I=k
aP=bq
end
else
aO,be=y(_[9],ab),O(_[8],R)if y(r[9],ab-an)+24<be or O(r[9],R)+an>aO or aO-be<an then
I=k
aP=bq
else
if br==1 and(_[3]&512>0 or D==1)and(_[4]==2 or D>1)then
aQ(_,_[5])end
ab,R=aO,be
end
end
end
end
z,aN={R,ab}if bh then
if I~=aA then
_=al(r,Q(aP,I-aA))r[1]=_[1]r[2]=_[2]end
return n
end
return I==aA
end
function bz(p,w,as)N=x(w,p)bP=K(w,as)+90
bJ=bP-K(p,w)bE=-N*bs(bJ)bg=N*af(bJ)aU=bP
if bg<0 then
aU=aU+L
end
if bE<0 then
return N,K(p,w)elseif bE>x(as,w)then
return x(as,p),K(p,as)else
return abs(bg),aU
end
end
function ax(p,w,aR,D,_)aX=x(p,w)aB=aX
aL,t=n
Y,aF=exp(p)bR,bQ=exp(w)aG,aT=exp(sub(w,p))at,bK=p[9]+32,w[9]+32
for a,_ in B(f[2])do
bH=aa[_[1]]bl,bm=exp(sub(aa[_[2]],bH))bO,bI=exp(sub(p,bH))bF=bm*aG-bl*aT
V=(bl*bI-bm*bO)/bF
bN=(aG*bI-aT*bO)/bF
if G(V,0,1)==V and G(bN,0,1)==bN then
by={Y+(V*aG),aF+(V*aT)}k=x(p,by)E=at+(bK-at)*(k/aX)if G(E,_[8]+1,_[9])~=E then
aL=u
if aR==1 then
return
end
if k<aB then
aB=k
bo,bA=exp(by)bu=E
bp=a
end
end
end
end
if aR>1 then
if aR==3 then
for a,_ in B(h)do
if _ and a~=D then
d=A[_[4]]if d[23]&1>0 and _[20]then
k=x(p,_)if k<aB then
V=bz(_,p,w)N=(k/aX)E=at+(bK-at)*N
if G(E,_[9],_[9]+d[19])==E and V<d[18]then
aB=k
t,aL=n
bo=Y+(bR-Y)*N
bA=aF+(bQ-aF)*N
bu=E
bp=a
end
end
end
end
end
end
return aL,bp,{bo,bA,bu}end
return n
end
function httpReply(b,g,af)bG=ay//2
ay=0
end
function ae()aD=aD%256+1
return f[13][1][aD]end
function aw(_,a,c)d=A[_[4]]if d[23]&2>0 and _[7]>0 then
_[8]=_[8]-(a+1)//2
_[7]=_[7]-a//2+y(_[8],0)_[8]=O(_[8],0)_[41]=d[13]~="lost soul missile state" and c or e
if ae()<d[10]then
_[6]=d[9]_[15]=0
_[10]=n
end
end
end
function bv(b,g,ar)return g[20]and abs(((K(b,g)-b[3]+L)%360)-L)<ar and ax(b,g,1)end
function aI(C,D)bt=ah and(ah[9]-C[9])*o[6]/x(ah,C)or 0
for a=1,o[12]do
b={}for a=1,30 do
b[a]=C[a]end
b[4]=o[8]b[10]=n
b[14]=C
bL=(ae()/W-1)*o[10]ba=Q(C[3]+bL,o[6])if o[7]>0 then
h[#h+1]=b
d=A[b[4]]b[6]=d[3]b[9]=C[9]+o[13]b[11]=ba[1]b[12]=ba[2]b[17]=am
b[19]=bt
else
c=al(C,ba)c[9]=e[9]+bt
bf,av,c=ax(C,c,3,D)if not bf then
bD=sub(c,Q(C[3]+bL,1))h[#h+1]=b
b[1]=bD[1]b[2]=bD[2]b[6]=A[b[4]][3]b[9]=c[3]b[19]=1
if t then
b=h[av]aw(b,o[9]*((ae()&3)+2),C)end
end
end
end
end
function aQ(_,c)if c>-1 then
b=f[9][c]if b[1]>0 or S[31]*_[10][2]-S[32]*_[10][1]<0 then
g=X[b[1]]ag[g and g[30]or#ag+1]={c,1,g or S}_[4]=b[7]b=b[8]>0 and aQ(_,b[8])end
else
aS=n
au=-c
m[10]=-c
end
end
function bB()bx,ah=2048
for a,_ in B(h)do
if a>1 and _ and bv(e,_,10)then
k=x(_,e)if k<bx then
if A[_[4]][23]&2>0 then
ah=_
bx=k
end
end
end
end
end
function bC(_)if _[9]~=z[1]and not bj then
_[9]=z[1]_[10]=true
end
end
function onTick()ac(9,aj(32))ac(2,aj(11))ac(3,u)for j=1,3 do
if aj(32)and(not bi)or not f[21]then
aH=property.getText(aC)a=1
i=""
_=aY.sub(aH,a,a)while _~=""do
c=aY.byte(_)if c>64 then
i=(i..c-65)+0
if l==1 then
bw=i
f[i]=f[i]or{}elseif l==2 then
E=i
ao=0
elseif l==3 then
aM=i
else
if ao==0 then
ao=E
aM=aM-1
b_={}f[bw][#f[bw]+1]=b_
end
b_[#b_+1]=i
ao=ao-1
l=O(ao,aM)>0 and l-1 or 0
end
l=l+1
i=""
else
i=i.._
end
a=a+1
_=aY.sub(aH,a,a)end
aC=aC+1
bi=aH==""
end
end
if bi then
if aS then
ag,aS={}ak=1
for a=1,10 do
f[a]=f[a+10*au]end
h=f[1]aa=f[4]X=f[8]P=f[10]aK,P[1]=P[1]v=f[12]A=f[15]for a=14,16 do
v[1][a]=0
end
au=au+1
for a=#h,1,-1 do
_=h[a]for j=7,40 do
_[j]=0
end
_[7]=A[_[4]][4]_[9],_[10]=aZ(#f[7],_)[1]if _[5]&bM<1 then
bc(h,a)elseif _[4]==1 then
if e then
_[7]=e[7]_[8]=e[8]end
e=_
end
end
bn=aK[3]end
for a,_ in B(f[2])do
_[10]=sub(aa[_[2]],aa[_[1]])if _[3]&4>0 then
d,H=X[f[3][_[6]][6]],X[f[3][_[7]][6]]_[8]=O(d[1],H[1])_[9],d[30],H[30]=y(d[2],H[2])else
_[8],_[9]=0,0
end
end
m={}for a=1,32 do
m[a]=0
end
bd=bd+1
T=y(T+1/bG,2/35)ac(1,T>=0)if T>=0 then
T=T-1/35
aJ=aJ+1
for a=2,#P do
P[a][0]={}end
for a,s in B(ag)do
_=f[9][s[1]]c=s[3]b=_[2]d=c[b]c[b]=G(_[3],d-_[4],d+_[4])+0
d=c[b]if d==_[3]then
ag[a]=s[2]==_[5]and{_[6],1,c}or{s[1],s[2]+1,c}if _[6]==0 then
bc(ag,a)end
end
c[10]=c[10]or d~=s
c[30]=a
end
for a,_ in B(h)do
if _ then
for j,s in B({1,2,9})do
_[s]=_[s]+_[s+10]end
_[15]=_[15]+1
d=A[_[4]]if _[7]<=0 and _[20]then
_[15]=0
_[6]=d[_[7]<=-d[4]and d[15]>1 and 15 or 14]_[10],_[20]=n
m[12]=d[16]if d[27]>0 then
c={}for j=1,30 do
c[j]=_[j]end
c[4]=d[27]c[6]=d[28]h[#h+1]=c
end
end
aV=f[16][_[6]]_[41]=_[41]and(_[41][20]and _[41]or e)if _[15]>=aV[2]and aV[2]~=-1 then
_[6]=aV[4]_[15]=0
U=f[16][_[6]][3]bj=d[23]&4>0
if U==1 then
for a,l in B(h)do
if l then
i=W-x(_,l)if i>0 then
aw(l,i)end
end
end
elseif U==2 then
if bv(_,e,90)then
_[41]=e
_[6]=d[5]m[12]=d[6]end
ai(_,u,a,8)bC(_)elseif U==3 then
ar,t=aW(K(_,_[41])/45+.5)*45
l=1
while l<5 and not t do
i=al(_,Q(ar+f[19][2][l],8))i[9]=_[9]t=ai(i,u,a,l)and(z[1]>=i[9]-24 or bj)l=l+1
end
if t then
for j=1,2 do
_[30+j]=i[j]-_[j]_[j]=i[j]end
_[3]=ar
_[10]=n
else
ai(_,u,a,8)end
bC(_)b=x(_,_[41])if d[13]>0 and ax(_,_[41],1)and y(b,230)<ae()then
_[6]=d[13]end
if b<64 and d[12]>0 then
_[6]=d[12]end
elseif U==5 then
for a=1,11 do
e[3]=e[3]+f[19][9][a]o=f[14][23]bB()aI(e,1)end
e[3]=e[3]-20
elseif U>9 and _[20]then
_[3]=K(_,_[41])o=f[14][U]_[10]=n
ah=_[41]aI(_,a)end
end
if _[17]and _[17]>0 then
o=f[14][_[17]]if not ai(_,u,a)or _[9]<=z[1]then
if aN then
aw(aN,d[21]*((ae()&7)+1),_[14])end
_[1]=_[1]-_[11]_[2]=_[2]-_[12]_[3]=0
_[6]=A[_[4]][5]_[10]=n
_[11]=0
_[12],_[17]=0
m[12]=d[16]_[19]=0
end
end
if _[6]==1 then
h[a]=u
else
ad=sub(_,aK)M=P[2+ad[1]//W+ad[2]//W*bn]if M then
M[0][#M[0]+1]=a
end
end
end
end
for a=1,8 do
if aj(a)and v[1][a+4]>0 then
am=a
end
end
o=f[14][am]e[3]=e[3]-ap(3)*(G(aE,5,6)*1.5-6)aE=abs(ap(3))*aE+1
Z=e
for a=1,2 do
Z=al(Z,Q(e[3]-L+90*a,ap(a)*8.33))end
Z[9]=e[9]for a=1,8 do
t=ai(Z,n,1,a)end
if t then
for a=1,2 do
e[30+a]=Z[a]-e[a]e[a]=Z[a]end
if e[9]>z[1]then
e[19]=e[19]-1
else
e[9]=y(z[1],e[9]+4)e[19]=O(0,e[19])end
else
e[19]=0
e[9]=z[1]end
bb=v[1]c=o[1]if aj(31)and az<=0 and(c==0 or bb[c]>=o[2])then
ac(3,n)az=o[3]if c>0 then
bb[c]=bb[c]-o[2]end
bB()aI(e,1)end
az=az-1
if ap(4)<0 then
_=al(e,Q(e[3],64))_[9]=e[9]bf,av=ax(e,_,2,1)_=f[2][av]if bf==u then
m[2]=av
c,t=_[4]for a=14,16 do
t=t or v[1][a]>0 and c==a
end
if c==1 or t then
aQ(_,_[5])elseif c>3000 and c<3005 then
bM=aW(c-3000)end
end
end
end
m[1]=am
for a=3,14 do
m[a]=e[f[19][4][a]]or m[a]end
v[1][17]=bG
m[11]=v[1][bd%#v[1]+1]a=ak
bk=n
J=1
aq=#h+#X
while J<3 and bk do
c=J*9+6
if a<=#h then
_=h[a]if a~=1 then
if _ then
if _[10]then
m[c],_[10]=a
for j=1,8 do
m[c+j]=_[f[19][1][j]]end
J=J+1
end
else
m[c]=-a
bc(h,a)J=J+1
aq=aq-1
end
end
else
_=X[a-#h]if _[10]then
m[c],_[10]=a-#h+2^15
for j=1,6 do
m[c+j]=_[j]end
J=J+1
end
end
a=(a-2)%aq+1
ak=y(ak,aq)bk=a~=ak
end
ak=a
for a=1,32 do
output.setNumber(a,m[a])end
end
ay=ay+1
async.httpGet(8,"")end
