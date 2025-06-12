
z=math
u=z.max
r=z.min
D=z.abs
ag=z.floor
ceil=z.ceil
sqrt=z.sqrt
K=input.getNumber
bv=input.getBool
pi=z.pi/180
bb=false
O=true
ax=ipairs
bP=table.remove
be=string
function bg(b,p)return b[1]*p[2]-b[2]*p[1]end
function sub(b,p)return{(b[1]-p[1]),(b[2]-p[2])}end
function bw(b)return((b+180)%360)-180 end
function sin(b)return z.sin(b*pi)end
function cos(b)return z.cos(b*pi)end
function tan(b)return z.tan(b*pi)end
function cP(b)return z.atan(b)/pi end
function aT(b)return z.atan(b[2],b[1])/pi end
function bq(b,p,_)return r(u(p,b),_)end
function am(b)return ag(b+.5)end
function aU(b,p)return sqrt(((b[1]-p[1])^2)+((b[2]-p[2])^2))end
function bR(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
function aE(b)s=r(b/255+bT,1)^2.2 end
c={}bs=1
ay=3
an=O
l={{0,0},0}B=0
R=288
E=144
ak=128
w=64
aW={}aD=400
bQ=200
cf=1
cR=0
aR=2^15
ba=3002
bA=0
aK=0
aB=0
bn=1.2
M=52
N=tan(M)aL=w*bn*R/ak/N
S=1
cj={}for a=-E,E do cj[a]=aT({1,a/E*N})end
function bt(a)if a<aR then
local v,bo=c[7][a]bo=0<bg({v[3],v[4]},sub(l[1],v))and 8 or 7
bt(v[bo])bt(v[15-bo])else
ar[#ar+1]=a-aR
end
end
function aM(a,b)if a<aR then
v=c[7][a]return aM(v[0<bg({v[3],v[4]},sub(b,v))and 8 or 7],b)else
return a-aR
end
end
function br(b)v=c[5][c[6][b][2]]return aQ[c[3][c[2][v[4]][v[5]+6]][6]]end
function onTick()bu=0
for n=1,3 do
if bv(9)and(not by)or not c[21]then
bx=property.getText(bs)a=1
F=""
_=be.sub(bx,a,a)while _~=""do
bN=be.byte(_)if bN>64 then
F=(F..bN-65)+0
if S==1 then
cb=F
c[F]=c[F]or{}elseif S==2 then
cv=F
aA=0
elseif S==3 then
b_=F
else
if aA==0 then
aA=cv
b_=b_-1
bf={}c[cb][#c[cb]+1]=bf
end
bf[#bf+1]=F
aA=aA-1
S=u(aA,b_)>0 and S-1 or 0
end
S=S+1
F=""
else
F=F.._
end
a=a+1
_=be.sub(bx,a,a)end
bs=bs+1
by=bx==""
end
end
if by then
if K(9)>0 then
an=O
ay=K(9)end
if cf>0 and not an then
ac={}ao[#ao+1]=ac
at=5
_=K(at)while _~=0 do
ab={}ac[#ac+1]=ab
for a=0,8 do
ab[a+1]=K(at+a)end
at=at+9
_=K(at)end
end
if bv(1)then
cn=0
bM=K(1)cf=K(3)aB=aB+1
cl=aB//10
if an then
for a=1,10 do
c[a]=c[a+10*ay]end
k=c[1]cQ={k[1][1],k[1][2]}for a=#k,1,-1 do
_=k[a]_=_[5]&(ba-3000)>0 or bP(k,a)end
aQ=c[8]ao={}ay=ay+1
end
if K(2)>0 then
_=c[2][K(2)]if _ then
b=_[4]if b>0 then
if b==3008 then
aF=_[5]>0 and _[5]elseif b>3004 then
aD=u(aD+3*(_[4]-3006),1)bQ=aD/2
elseif b>3000 then
ba=_[4]end
cn=K(2)if b<3000 and c[9][_[5]][7]==0 then
_[8]=1
end
end
end
end
if bv(3)and bM~=1 and bM~=3 then
bT=.1
aK=5
else
aK=aK-1
if aK<1 then
bT=0
end
end
for a=1,#ao do
ac=ao[a]for n=1,#ac do
ab=ac[n]_=ab[1]if _>(2^15)then
_=aQ[_-(2^15)]for g=1,6 do
_[g]=ab[g+1]end
elseif _<0 then
while-_>#k do
k[#k+1]=bb
end
bP(k,-_)else
if not k[_]then
k[_]={}end
_=k[_]for g=1,8 do
_[c[19][1][g]]=ab[g+1]end
_[15]=0
_[7]=aM(#c[7],_)_[8]=br(_[7])end
end
end
ao={}for a=1,#c[6]do
aW[a]={}end
for a,_ in ax(k)do
if an then
_[7]=aM(#c[7],_)_[8]=br(_[7])_[9]=_[8][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
end
if _ and a>1 then
bl=0
for n,d in ax({1,2,9})do
_[d]=_[d]+_[d+10]bl=bl+_[d+10]end
if bl~=0 then
_[7]=aM(#c[7],_)_[8]=br(_[7])end
_[15]=_[15]+1
_[20]=aU(_,l[1])L=c[16][_[6]]if L~=nil then
if L[5]>0 then
_[9]=_[8][1]end
if _[15]>=L[2]and L[2]~=-1 then
_[6]=L[4]_[15]=0
end
end
aW[_[7]][#aW[_[7]]+1]=a
end
end
_,an=k[1]cD=r(aU(_,l[1])^2/4,16)l[1]={_[1],_[2]}B=_[3]cS=_[9]+1
l[2]=_[9]+41+cD*sin(aB*20)/4
ar={}bt(#c[7])aY={}q={}aJ={}aV={}T={}Z={}aS={}bc=R
for a=0,R-1 do
aY[a],T[a],Z[a]=#c[6]+2,w+1,-w
end
a=1
while a<=#ar and bc>0 do
_=c[6][ar[a]]aJ[a]={}aV[a]={}q[a]={}aS[a]=aW[ar[a]]table.sort(aS[a],function(b,p)return k[b][20]>k[p][20]end)for n=_[2],_[1]+_[2]-1 do
X=c[5][n]H=c[2][X[4]]bG,bE=c[4][X[1]],c[4][X[2]]aH,bI=sub(bG,l[1]),sub(bE,l[1])bX=aT(aH)J,aP=bw(bX-B),bw(aT(bI)-B)if D(J)<90 or D(aP)<90 then
al,aa=bq(J,-M,M),bq(aP,-M,M)if D(J)>=90 or D(aP)>=90 then
cd=bg(aH,bI)if D(J)>=90 then
if cd>0 then al=-M else al=M end
else
if cd<0 then aa=-M else aa=M end
end
end
o,m=am(tan(al)/N*E),am(tan(aa)/N*E)if o~=m then
t,aq=aU(l[1],bG),aU(l[1],bE)aG=X[3]+90
bY=aG-bX
cO=t*sin(bY)aN=(t*cos(bY))if J~=al then
t=aN/cos(aG-(al+B))end
if aP~=aa then
aq=aN/cos(aG-(aa+B))end
t,aq=t*cos(al),aq*cos(aa)g=X[5]+6
cL=(o>m)if cL and H[g]~=0 then
av=H[3]&4>0
if av then
Y=aQ[c[3][H[13-g]][6]]end
ah=c[3][H[g]]cu={ah[3],ah[4],ah[5]}j,cc,bL=aQ[ah[6]]for h,d in ax(cu)do
ae=d>0
ai=O
if(ae or(h==3 and not(cc and bL)))and(h==3 or av)then
co,ck=0
if h<3 then
ck=h==1 and u(j[4],Y[4])==0
C,y=j[3-h],(h==1 and u or r)(Y[3-h],j[h])ai=(C<y)==(h==2)and C~=y and j~=Y
ae=ai
C,y=r(C,y),u(C,y)if ai then
if h==1 then
cc=O
else
bL=O
co=H[3]&16>0 and u(j[2],Y[2])-y or 0
end
end
else
if av then
C,y=r(u(j[1],Y[1]),j[2]),u(r(j[2],Y[2]),j[1])ai=j~=Y
else
C,y=j[1],j[2]end
end
C,y=C-l[2],y-l[2]bH,bJ=C*aL,y*aL
if(ai or ae)and not ck then
bh=X[6]-ah[1]if H[4]==48 then
bh=bh-aB
end
cK,cB=bH/t,bJ/t
cJ,ct=bH/aq,bJ/aq
bW,au=0
if ae then
_=c[21][d][4]if(X[4]==cn or ba==H[4]or H[8])and _>0 then
d=_
end
aC=c[21][d][3]x=1
if(h==3 and H[3]&16>0)or(h==1 and H[3]&8==0)then
x=-1
end
end
for g=o,m,-1 do
cw=cj[g]bk=(aG-B)-cw
f,cp=E-g
if f>=0 and f<=R-1 then
if a<aY[f]then
aX=(g-o)/(m-o)I,G=(cK*(1-aX)+cJ*aX),(cB*(1-aX)+ct*aX)if D(G+I)-(G-I)<ak then
if ae then
if I~=G then
cp=O
bS=aN*tan(bk)aw=bR(r(((D(bS)+D(aN))//bQ)+1,16))bK=ag((u(bS-cO,0)-bh)/(aC*aw))bF=bK*aw
bD={f,w-I,w-G,d,bK,y-C,j[5],ah[2]+co,O,aC*aw,aw,x,not au,h==3 and av}if bF>bW or(not au)or g==m then
bW=bF-1+aw
au=O
q[a][#q[a]+1]=bD
end
cG=bD
end
end
if ai then
if h~=2 then
if G<T[f]then
aV[a][#aV[a]+1]={f,u(G,Z[f]),T[f],j}end
if h==3 then W=G else W=I end
if T[f]>W then T[f]=W end
end
if h~=1 then
if I>Z[f]then
aJ[a][#aJ[a]+1]={f,Z[f],r(I,T[f]),j}end
if h==3 then W=I else W=G end
if Z[f]<W then Z[f]=W end
end
if(T[f]<=Z[f])or(h==3 and(not av)and ae)then
aY[f]=a
bc=bc-1
end
end
end
end
end
if(not cp)and au then
q[a][#q[a]+1],au=cG
q[a][#q[a]][9]=bb
end
end
if#q[a]>0 then
q[a][#q[a]][9]=bb
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
function onDraw()aO=screen
local bO,bU,aj,bV=aO.drawTriangleF,aO.drawRectF,aO.setColor,aO.drawLine
cy={aJ,aV}if by then
e=c[24][c[19][8][ay-3]]V,az=e[1],e[2]A=R/ceil(V*N)bZ=A*1
for a=0,ceil(V*N),1 do
o=(V/2-a-1+B/90*V)%V
m=(o%1-1)*A
o=ag(o)*az
for n=0,az-1,1 do
P=e[5+n+o]i=c[20][P]aj(i[1],i[2],i[3])bU(a*A+m,n*A,bZ,bZ)end
end
for a=#q,1,-1 do
for n=1,#q[a]do
d=q[a][n]if d[9]or d[13]then
if d[9]then
Q=q[a][n+1]else
Q=d
end
e=c[21][d[4]]e=c[21][d[4]+(cl%e[5])*c[19][3][2]+c[19][12][d[11]]]x=d[12]U=r(x,0)f=d[1]m=Q[1]cm=d[2-U]cr=Q[2-U]g=d[3+U]bi=Q[3+U]if not Q[9]then m=m+1 end
aE(d[7])cH=x*(d[2]-d[3])*e[3]/d[6]cx=x*(Q[2]-Q[3])*e[3]/Q[6]ci=x>0 and r or u
bm=0
while g*x<cm*x and(bm<e[2]or not d[14])do
ch=ci(g+cH,cm)bp=ci(bi+cx,cr)P=e[7+((U+d[8]//e[3])%e[2])+e[2]*((d[5])%e[1])]i=c[20][P]if i then
aj(i[1]*s,i[2]*s,i[3]*s)bO(f,g,f,ch,m,bp)bO(f,g,m,bi,m,bp)end
g=ch
bi=bp
U=U+x
bm=bm+1
end
end
end
for b=1,2 do
_=cy[b]c_={}ap,as,bj=ak,-ak
for n,d in ax(_[a])do
ap=r(ap,d[2])as=u(as,d[3])bj=d
e=c[22][d[4][b+2]]if e and not aF then
aE(d[4][5])i=c[20][e[5]]aj(i[1]*s,i[2]*s,i[3]*s)bV(d[1],w-d[2],d[1],ag(w-d[3]-1))end
end
if bj and aF then
j=bj[4]cs=(j[b]-l[2])bd=cos(B)bz=sin(B)for ad=ag(ap+w),ceil(as+w)do
af=aL*cs/(w-ad)cg=bd*af-l[1][1]bC=bz*af-l[1][2]bB=-bz*af+cg
ce=bd*af+bC
cA=bz*af+cg
cE=-bd*af+bC
cF=(cA-bB)/R
cC=(cE-ce)/R
c_[ad]={cF,cC,bB,ce}end
for n,d in ax(_[a])do
if j[b+2]~=0 then
f=d[1]if f%aF==0 then
aE(j[5])p=j[b+2]e=c[22][p]e=c[22][p+(cl%e[4])]ca=E-(E-f)*N
ap,as=ag(d[2]+w),ceil(d[3]+w)aC=e[3]for ad=ap,as do
aZ=c_[ad]cN=(aZ[3]+aZ[1]*ca)//aC
cz=(aZ[4]+aZ[2]*ca)//aC
P=6+(cz%e[1])+e[1]*(cN%e[2])i=c[20][e[P]]if i then
aj(i[1]*s,i[2]*s,i[3]*s)bV(f,ak-ad,f+aF+1,ak-ad)end
end
end
end
end
end
end
for n=1,#aS[a]do
_=k[aS[a][n]]if _[6]~=0 then
aH=sub(_,l[1])t=_[20]if t>1 then
J=bw(aT(aH)-B)t=t*cos(J)if D(J)<90 then
o=E-am(tan(J)/N*E)bk=am((180+J+B-_[3]+bu*4)/360*8)L=c[16][_[6]][1]if L~=0 and _[6]~=1 then
e=c[17][D(L)][bk%8+1]x=e<0 and-1 or 1
e=D(e)if e>0 then
e=c[23][e+c[19][12][r(bR(t//aD+1),8)]]V,az=e[1],e[2]A=E/(N*t)aI=A*bn
I=w+(l[2]-_[9])/t*aL
G=I-e[5]*aI
m=o-x*e[4]*A
A,aI=A*e[3],aI*e[3]aE(_[8][5])s=L>0 and s or 1
cq=A
cM=cq*bn
cI=_[4]and c[15][_[4]][23]&8>0
for g=0,V-1 do
o=m+g*A*x
if a<=aY[bq(am(o),0,R-1)]then
for h=0,az-1 do
P=e[7+h+g*az]if P~=0 then
if cI then
bA=bA%50+1
aj(0,0,0,r(75*c[13][2][bA],255))else
i=c[20][P]aj(i[1]*s,i[2]*s,i[3]*s)end
bU(o,G+h*aI,cq,cM)end
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
bu=bu+1
end
