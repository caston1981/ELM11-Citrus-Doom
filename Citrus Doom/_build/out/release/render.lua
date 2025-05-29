cS=""

Q=180
bM=screen
aX=ipairs
ch=table
cg=input
v=math
A=v.max
x=v.min
B=v.abs
V=v.floor
ceil=v.ceil
sqrt=v.sqrt
I=cg.getNumber
bE=cg.getBool
pi=v.pi
K=false
S=true
bx=string
function bb(b,l)return b[1]*l[2]-b[2]*l[1]end
function sub(b,l)return{(b[1]-l[1]),(b[2]-l[2])}end
function bi(b)return((b+Q)%360)-Q end
function sin(b)return v.sin(b/Q*pi)end
function cos(b)return v.cos(b/Q*pi)end
function tan(b)return v.tan(b/Q*pi)end
function cR(b)return v.atan(b)*Q/pi end
function aE(b)return v.atan(b[2],b[1])*Q/pi end
function bn(b,l,_)return x(A(l,b),_)end
function aw(b)return V(b+.5)end
function bC(b,l)return sqrt(((b[1]-l[1])^2)+((b[2]-l[2])^2))end
function br(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
function aW(b)q=x(b/255+bK,1)^2.2 end
c={}bp=1
ar=3
aU=K
ao=S
f={{0,0},0,0}M=288
z=M//2
ak=128
u=ak//2
b_={}ba=400
bT=100
cP=0
as={}aG=32768
ci=3002
bu=0
aV=0
aZ=0
bg=1.2
O=52
N=tan(O)aM=u*bg*M/ak/N
W=1
bU={}for a=-z,z do bU[a]=aE({1,a/z*N})end
function bs(a)if a<aG then
local s,bj=c[7][a]bj=0<bb({s[3],s[4]},sub(f[1],s))and 8 or 7
bs(s[bj])bs(s[15-bj])else
ax[#ax+1]=a-aG
end
end
function aH(a,b)if a<aG then
s=c[7][a]return aH(s[0<bb({s[3],s[4]},sub(b,s))and 8 or 7],b)else
return a-aG
end
end
function bo(b)s=c[5][c[6][b][2]]return c[3][c[2][s[4]][s[5]+6]][6]end
function onTick()bw=0
for n=1,3 do
if bE(9)and(not aU)or not c[21]then
bd=property.getText(bp)a=1
E=cS
_=bx.sub(bd,a,a)while _~=cSdo
cn=bx.byte(_)if cn>64then
E=(E..cn-65)+0
if W==1then
cp=E
c[E]=c[E]or{}elseif W==2then
cO=E
at=0
elseif W==3then
be=E
else
if at==0then
at=cO
be=be-1
bD={}c[cp][#c[cp]+1]=bD
end
bD[#bD+1]=E
at=at-1
W=A(at,be)>0 and W-1 or 0
end
W=W+1
E=cS
else
E=E.._
end
a=a+1
_=bx.sub(bd,a,a)end
bp=bp+1
aU=bd==cS
end
end
if aU then
if I(9)>0 then
ao=S
ar=I(9)end
if bT>0 and not ao then
al={}as[#as+1]=al
an=5
_=I(an)while _~=0 do
am={}al[#al+1]=am
for a=0,8 do
am[a+1]=I(an+a)end
an=an+9
_=I(an)end
end
if bE(1)then
cb=0
bk=I(1)bT=I(3)aZ=aZ+1
bJ=aZ//10
if ao then
for a=1,10 do
c[a]=c[a+10*ar]end
r=c[1]ah=c[8]ar=ar+1
end
if I(2)>0 then
_=c[2][I(2)]if _ then
b=_[4]if b>0 then
if b==3008 then
bR=_[5]==1
elseif b>3004 then
ba=A(ba+3*(_[4]-3006),1)elseif b>3000 then
ci=_[4]end
cb=I(2)if b<3000 and c[9][_[5]][7]==0then
_[8]=1
end
end
end
end
if bE(3)and bk~=1 and bk~=3 then
bK=.1
aV=bk==5 and 5 or 3
else
aV=aV-1
if aV<1then
bK=0
end
end
for a=1,#as do
al=as[a]for n=1,#al do
am=al[n]_=am[1]if _>(2^15)then
_=ah[_-(2^15)]for h=1,6 do
_[h]=am[h+1]end
elseif _<0 then
while-_>#r do
r[#r+1]=K
end
ch.remove(r,-_)else
if not r[_]then
r[_]={}end
_=r[_]for h=1,8 do
_[c[19][1][h]]=am[h+1]end
_[15]=0
_[7]=aH(#c[7],_)_[8]=bo(_[7])end
end
end
as={}for a=1,#c[6]do
b_[a]={}end
for a=1,#r do
_=r[a]if _ then
if ao then
_[7]=aH(#c[7],_)_[8]=bo(_[7])_[9]=ah[_[8]][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
end
bB=0
for n,d in aX({1,2,9})do
_[d]=_[d]+_[d+10]bB=bB+_[d+10]end
if bB~=0then
_[7]=aH(#c[7],_)_[8]=bo(_[7])end
_[15]=_[15]+1
_[20]=bC(_,f[1])R=c[16][_[6]]if R~=nil then
if _[15]>=R[2]and R[2]~=-1 then
_[6]=R[4]_[15]=0
end
end
b_[_[7]][#b_[_[7]]+1]=a
end
end
ao=K
_=r[1]f[1]={_[1],_[2]}f[2]=_[9]+41
f[3]=_[3]ax={}bs(#c[7])aY={}p={}aN={}aO={}ab={}ad={}aP={}bc=M
for a=0,M-1 do
aY[a],ab[a],ad[a]=#c[6]+2,u+1,-u
end
a=1
while a<=#ax and bc>0 do
_=c[6][ax[a]]aN[a]={}aO[a]={}p[a]={}aP[a]=b_[ax[a]]ch.sort(aP[a],function(b,l)return r[b][20]>r[l][20]end)for n=_[2],_[1]+_[2]-1 do
X=c[5][n]y=c[2][X[4]]bG,ce=c[4][X[1]],c[4][X[2]]aS,bQ=sub(bG,f[1]),sub(ce,f[1])bP=aE(aS)G,aL=bi(bP-f[3]),bi(aE(bQ)-f[3])if B(G)<90 or B(aL)<90 then
aj,af=bn(G,-O,O),bn(aL,-O,O)if B(G)>=90 or B(aL)>=90 then
bW=bb(aS,bQ)if B(G)>=90 then
if bW>0 then aj=-O else aj=O end
else
if bW<0 then af=-O else af=O end
end
end
k,m=aw(tan(aj)/N*z),aw(tan(af)/N*z)if k~=m then
o,aB=bC(f[1],bG),bC(f[1],ce)aJ=X[3]+90
cq=aJ-bP
cE=o*sin(cq)aF=(o*cos(cq))if G~=aj then
o=aF/cos(aJ-(aj+f[3]))end
if aL~=af then
aB=aF/cos(aJ-(af+f[3]))end
o,aB=o*cos(aj),aB*cos(af)h=X[5]+6
cM=(k>m)if cM and y[h]~=0 then
aq=y[3]&4>0
if aq then
ac,Z=ah[c[3][y[6]][6]],ah[c[3][y[7]][6]]end
ag=c[3][y[h]]cI={ag[3],ag[4],ag[5]}H,bS,bX=ah[ag[6]]for j,d in aX(cI)do
az=d>0
ay=S
if(az or(j==3 and not(bS and bX)))and(j==3 or aq)then
cl=K
bL=0
if j<3 then
cl=j==1 and A(ac[4],Z[4])==0
C,w=ac[3-j],Z[3-j]ay=(C<w)~=(j==2)~=(h==6)and C~=w and ac~=Z
C,w=x(C,w),A(C,w)if ay then
if j==1then
bS=S
else
bX=S
bL=y[3]&16>0 and A(ac[2],Z[2])-w or 0
end
end
else
if aq then
C,w=A(ac[1],Z[1]),x(ac[2],Z[2])ay=ac~=Z
else
C,w=H[1],H[2]end
end
C,w=C-f[2],w-f[2]bO,bY=C*aM,w*aM
if(ay or az)and not cl then
bq=X[6]-ag[1]if y[4]==48 then
bq=bq-aZ
end
cL,cJ=bO/o,bY/o
cw,cx=bO/aB,bY/aB
bI=0
au=K
if az then
_=c[21][d][4]if(X[4]==cb or ci==y[4]or y[8])and _>0then
d=_
end
av=c[21][d][3]t=1
if(j==3 and y[3]&16>0)or(j==1 and y[3]&8==0)then
t=-1
end
end
for h=k,m,-1 do
cu=bU[h]aQ=(aJ-f[3])-cu
g=z-h
bF=K
if g>=0 and g<=M-1 then
if a<aY[g]then
aK=(h-k)/(m-k)J,F=(cL*(1-aK)+cw*aK),(cJ*(1-aK)+cx*aK)if B(F+J)-(F-J)<ak then
if az then
if J~=F then
bF=S
cm=aF*tan(aQ)L=x(((B(cm)+B(aF))//ba)+1,4)bl=x(br(V(L/cos(aQ))),16)L=br(L)bf=V((A(cm-cE,0)-bq)/(av*bl))*bl
ca={g,u-J,u-F,d,bf,w-C,H[5],ag[2]+bL,S,av*L,L,t,not au,j==3 and aq}if bf>bI or(not au)or h==m then
bI=bf-1+bl
au=S
p[a][#p[a]+1]=ca
end
cC=ca
end
end
if ay then
if j~=2 then
if F<ab[g]then
aO[a][#aO[a]+1]={g,A(F,ad[g]),ab[g],H}end
if j==3then aa=F else aa=J end
if ab[g]>aa then ab[g]=aa end
end
if j~=1 then
if J>ad[g]then
aN[a][#aN[a]+1]={g,ad[g],x(J,ab[g]),H}end
if j==3then aa=J else aa=F end
if ad[g]<aa then ad[g]=aa end
end
if(ab[g]<=ad[g])or(j==3 and(not aq)and az)then
aY[g]=a
bc=bc-1
end
end
end
end
end
if(not bF)and au then
au=K
p[a][#p[a]+1]=cC
p[a][#p[a]][9]=K
end
end
if#p[a]>0 then
p[a][#p[a]][9]=K
end
end
end
end
end
end
end
end
a=a+1
end
end
end
end
function onDraw()aR=bM
local bV,bh,ae,cQ=aR.drawTriangleF,aR.drawRectF,aR.setColor,aR.drawText
cN={aN,aO}if aU then
e=c[24][c[19][8][ar-3]]Y,aC=e[1],e[2]D=M/ceil(Y*N)c_=D*1
for a=0,ceil(Y*N),1 do
k=(Y/2-a-1+f[3]/90*Y)%Y
m=(k%1-1)*D
k=V(k)*aC
for n=0,aC-1,1 do
P=e[5+n+k]i=c[20][P]ae(i[1],i[2],i[3])bh(a*D+m,n*D,c_,c_)end
end
for a=#p,1,-1 do
for n=1,#p[a]do
d=p[a][n]if d[9]or d[13]then
if d[9]then
T=p[a][n+1]else
T=d
end
e=c[21][d[4]]e=c[21][d[4]+(bJ%e[5])]t=d[12]U=x(t,0)g=d[1]m=T[1]bZ=d[2-U]cs=T[2-U]h=d[3+U]bm=T[3+U]if not T[9]then m=m+1 end
aW(d[7])cy=t*(d[2]-d[3])*d[10]/d[6]cF=t*(T[2]-T[3])*d[10]/T[6]cj=t>0 and x or A
bt=0
while h*t<bZ*t and(bt<e[2]or not d[14])do
bH=cj(h+cy,bZ)by=cj(bm+cF,cs)P=e[7+((U*d[11]+d[8]//e[3])%e[2])+e[2]*(d[5]%e[1])]i=c[20][P]if i then
ae(i[1]*q,i[2]*q,i[3]*q)bV(g,h,g,bH,m,by)bV(g,h,m,bm,m,by)end
h=bH
bm=by
U=U+t
bt=bt+d[11]end
end
end
for b=1,2 do
_=cN[b]ck={}aD,ap,bv=ak,-ak
for n,d in aX(_[a])do
aD=x(aD,d[2])ap=A(ap,d[3])bv=d
e=c[22][d[4][b+2]]if e and not bR then
aW(d[4][5])i=c[20][e[5]]ae(i[1]*q,i[2]*q,i[3]*q)bM.drawLine(d[1],u-d[2],d[1],V(u-d[3]-1))end
end
if bv and bR then
H=bv[4]ct=(H[b]-f[2])bz=cos(f[3])bA=sin(f[3])for aA=V(aD+u),ceil(ap+u)do
ai=aM*ct/(u-aA)cr=bz*ai-f[1][1]cd=bA*ai-f[1][2]cf=-bA*ai+cr
bN=bz*ai+cd
cD=bA*ai+cr
cz=-bz*ai+cd
cG=(cD-cf)/M
cB=(cz-bN)/M
ck[aA]={cG,cB,cf,bN}end
for n,d in aX(_[a])do
if H[b+2]~=0 then
aW(H[5])l=H[b+2]e=c[22][l]e=c[22][l+(bJ%e[4])]g=d[1]co=z-(z-g)*N
aD,ap=V(d[2]+u),ceil(d[3]+u)av=e[3]for aA=aD,ap do
aI=ck[aA]cK=(aI[3]+aI[1]*co)//av
cv=(aI[4]+aI[2]*co)//av
P=6+(cv%e[1])+e[1]*(cK%e[2])i=c[20][e[P]]if i then
ae(i[1]*q,i[2]*q,i[3]*q)bh(g,-aA+ak,1,1)end
end
end
end
end
end
for n=1,#aP[a]do
_=r[aP[a][n]]if _[6]~=0 then
aS=sub(_,f[1])o=_[20]if o>1 then
G=bi(aE(aS)-f[3])o=o*cos(G)if B(G)<90 then
k=z-aw(tan(G)/N*z)aQ=aw((Q+G+f[3]-_[3]+bw*4)/360*8)R=c[16][_[6]][1]if R~=0 and _[6]~=1 then
e=c[17][B(R)][aQ%8+1]t=e<0 and-1 or 1
e=B(e)if e>0 then
e=c[23][e]Y,aC=e[1],e[2]L=x(br(o//ba+1),8)D=z/(N*o)aT=D*bg
J=u+(f[2]-_[9])/o*aM
F=J-e[5]*aT
m=k-t*e[4]*D
D,aT=D*e[3],aT*e[3]aW(ah[_[8]][5])q=R>0 and q or 1
cc=D*L
cA=cc*bg
cH=_[4]and c[15][_[4]][23]&8>0
for h=0,Y-1,L do
k=m+h*D*t
if a<=aY[bn(aw(k),0,M-1)]then
for j=0,aC-1,L do
P=e[7+j+h*aC]if P~=0 then
if cH then
bu=bu%50+1
ae(0,0,0,x(75*c[13][2][bu],255))else
i=c[20][P]ae(i[1]*q,i[2]*q,i[3]*q)end
bh(k,F+j*aT,cc,cA)end
end
end
end
end
end
end
end
end
end
end
end
bw=bw+1
end
