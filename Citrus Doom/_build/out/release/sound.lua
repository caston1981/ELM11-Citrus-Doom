
T=131
e=255
I=180
at=true
aK=false
aT=input
aC=table.remove
s=math
L=s.max
ag=s.min
abs=s.abs
N=s.floor
sqrt=s.sqrt
i=aT.getNumber
ad=aT.getBool
bc=output.setNumber
pi=s.pi
aG=aK
b_=at
Y=string
function ac(c,k)return{(c[1]+k[1]),(c[2]+k[2])}end
function bm(c,k)return c[1]*k[2]-c[2]*k[1]end
function sub(c,k)return{(c[1]-k[1]),(c[2]-k[2])}end
function aP(c,k)return{c[1]*k,c[2]*k}end
function bt(c)return((c+I)%360)-I end
function sin(c)return s.sin(c/I*pi)end
function cos(c)return s.cos(c/I*pi)end
function tan(c)return s.tan(c/I*pi)end
function br(c)return s.atan(c)*I/pi end
function bp(c)return s.atan(c[2],c[1])*I/pi end
function aN(c,k,bf)return ag(L(k,c),bf)end
function an(c)return N(c+.5)end
function bo(c,k)return sqrt(((c[1]-k[1])^2)+((c[2]-k[2])^2))end
function aM(c)return{c[1],-c[2]}end
function bn(c)c=c-1
c=c|(c>>1)c=c|(c>>2)c=c|(c>>4)return c+1
end
a={}ah=1
W=3
ab=aG
w={{0,0},0,0}al=288
x=al//2
H=128
ai=H//2
aO=1.2
aU={1,1}aF=1
aa=1
W=3
aH=400
v=100
bb=100
aA=0
af=0
J=0
M=0
ba=3002
U={}aV=32768
t={}aJ=.05
B={}aB=3
Z=0
az=0
am=0
E=1
aD=0
O=0
Q=b_
function aR(b,c)if b<aV then
G=a[7][b]return aR(G[0<bm({G[3],G[4]},sub(c,G))and 8 or 7],c)else
return b-aV
end
end
function aS(c)G=a[5][a[6][c][2]]return a[8][a[3][a[2][G[4]][G[5]+6]][6]]end
function aQ(m,z,ae,aj)local r,g=C.drawRectF,C.setColor
ae=ae..""
aj=a[19][aj]for b=#ae,1,-1 do
_=aj[Y.byte(Y.sub(ae,b,b))]m=m-aj[1]if _>0 then
d=a[23][_]p,n=d[1],d[2]A=m-d[4]+1
aq=z-d[5]for j=0,p-1 do
for h=0,n-1 do
o=d[7+h+j*n]if o~=0 then
f=a[20][o]g(f[1],f[2],f[3])r(A+j,aq+h,1,1)end
end
end
end
end
end
function onTick()aD=0
for j=1,3 do
if ad(9)and(not ab)or not a[21]then
as=property.getText(ah)b=1
q=""
_=Y.sub(as,b,b)while _~=""do
y=Y.byte(_)if y>64 then
q=(q..y-65)+0
if E==1 then
aI=q
a[q]=a[q]or{}elseif E==2 then
be=q
R=0
elseif E==3 then
ay=q
else
if R==0 then
R=be
ay=ay-1
ar={}a[aI][#a[aI]+1]=ar
end
ar[#ar+1]=q
R=R-1
E=L(R,ay)>0 and E-1 or 0
end
E=E+1
q=""
else
q=q.._
end
b=b+1
_=Y.sub(as,b,b)end
ah=ah+1
ab=as==""
end
end
if ab then
if i(9)>0 then
Q=b_
W=i(9)end
az=az+1
a[12][1][az%#a[12][1]+1]=an(i(10))if v>0 and not Q then
K={}U[#U+1]=K
X=5
_=i(X)while _~=0 do
u={}K[#K+1]=u
for b=0,8 do
u[b+1]=i(X+b)end
X=X+9
_=i(X)end
end
if ad(1)then
if Q then
for b=1,10 do
a[b]=a[b+10*W]end
W=W+1
Q=aG
for b=1,#a[1]do
_=a[1][b]end
for b=1,#a[8]do
a[8][b][8]={}end
for b=1,#a[6]do
_=aS(b)_[8][#_[8]+1]=b
end
end
af=af-1
if v>0 then
if S~=i(1)and i(1)>0 then
t={}_={}_[1]=a[29][i(1)]_[2]=a[16][_[1][3]]bs=_[2][1]_[3]=0
t[1]=_
end
S=i(1)av=ad(3)if av and S==5 then
if O<=0 then
O=7
else
av=aK
end
end
O=O-1
if av then
_=t[1]_[2]=a[16][_[1][4]]_[3]=-1
B[#B+1]={1,1}end
end
for b=#t,1,-1 do
_=t[b]if _[3]==0 then
if _[2][3]==4 then
if S==5 and O<5 then
aL=1
else
aL=0
end
t[#t+1]={_[1],a[16][_[1][5]+aL],2}end
end
_[3]=_[3]+1
if _[3]>=_[2][2]then
if _[2][4]>2 then
_[2]=a[16][_[2][4]]_[3]=0
else
aC(t,b)end
end
end
for b=1,32 do
bc(b,0)end
for b=#B,1,-1 do
V=B[b]_=a[18][V[1]]for j=0,aB-1 do
au=_[(V[2]+j)*2-1]if au and au>0 then
bc(2+(b-1)*aB+j,aN(an((au+12)//2),1,60))end
end
V[2]=V[2]+2
if V[2]>=aB+#_ then
aC(B,b)end
end
if Q then
J=50
end
M=L(M-4,0)M=aN(M+(v-i(3)+aA-i(4))*3,0,e)J=L(J-1.5,0)v=i(3)aA=i(4)if i(2)>0 then
_=a[2][i(2)]if _ then
if _[4]>3004 and _[4]<3008 then
aH=L(aH+3*(_[4]-3006),1)elseif _[4]>3000 then
ba=_[4]end
end
end
for b=1,#U do
K=U[b]for j=1,#K do
u=K[j]_=u[1]if _>(2^15)then
_=a[8][_-(2^15)]for h=1,6 do
_[h]=u[h+1]end
elseif _<0 then
y=a[1][-_]if y~=nil then
u=y[6]if a[16][u][5]>0 then
J=L(J,15)af=35
bk=a[16][u][5]B[#B+1]={a[19][11][1],1}if y[4]then
bj=a[15][y[4]]if bj[29]==a[19][13][1]then
for h=1,#a[2]do
a[2][h][8]=at
end
end
end
end
end
while-_>#a[1]do
a[1][#a[1]+1]=aG
end
aC(a[1],-_)else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for h=1,8 do
_[a[19][1][h]]=u[h+1]end
_[15]=0
end
end
end
U={}_=a[1][1]w[1]={_[1],_[2]}w[3]=_[3]bl=aR(#a[7],w[1])ap=aS(bl)w[2]=ap[1]+41
bg=ag(ap[5]/e,1)^1.3
for b=1,#ap[8]do
_=a[6][ap[8][b]]for j=_[2],_[1]+_[2]-1 do
bh=a[5][j]bi=a[2][bh[4]]bi[8]=at
end
end
aZ=ad(2)Z=Z-1
am=am-1
if not aU[S]then
aU[S]=1
am=70
end
aE=(4-ag(v//20,4))*8
if v<=0 then
aa=41
elseif am>0 then
aa=aE+6
elseif v<bb then
Z=35
aa=aE+7
elseif Z<=0 then
Z=16
aF=aF%256+1
aa=aE+a[13][1][aF]%3
end
bb=v
end
end
end
function onDraw()C=screen
local bq,r,g,l,aW=C.drawTriangleF,C.drawRectF,C.setColor,C.drawText,C.drawLine
aD=aD+1
if a[21]and not ab then
d=a[25][1]p,n=d[1],d[2]m,z=x-p/2,80-n/2
for h=0,p-1 do
A=m+h
for P=0,n-1 do
o=d[5+P+h*n]if o~=0 then
f=a[20][o]g(f[1],f[2],f[3])r(A,z+P,1,1)end
end
end
end
if not aZ then
for b=1,#t do
d=t[b][2][1]ax=d>0 and bg or 1
d=a[17][abs(d)][1]d=a[23][d]p,n,aw=d[1],d[2],d[3]*.7
aX=aw*aO
m,z=x-(d[4]+160)*.7,H-(d[5]+148)*.7*aO
for h=0,p-1 do
A=m+h*aw
for P=0,n-1 do
o=d[7+P+h*n]if o~=0 then
f=a[20][o]g(f[1]*ax,f[2]*ax,f[3]*ax)r(A,z+P*aX,aw,aX)end
end
end
end
end
if ab then
if aZ then
g(0,0,0)r(0,0,al,H)for b=1,#a[2]do
_=a[2][b]if _[8]then
F=ac(aM(aP(sub(a[4][_[1]],w[1]),aJ)),{x,ai})D=ac(aM(aP(sub(a[4][_[2]],w[1]),aJ)),{x,ai})if _[3]&4>0 then
g(50,50,50)else
g(e,e,e)end
aW(F[1],F[2],D[1],D[2])end
end
g(e,e,e)_=a[19][10]for b=1,#_,4 do
ao=sin(w[3]-90)ak=cos(w[3]-90)F={_[b]*ak+_[b+1]*ao,_[b+1]*ak-_[b]*ao}D={_[b+2]*ak+_[b+3]*ao,_[b+3]*ak-_[b+2]*ao}F=ac(F,{x,ai})D=ac(D,{x,ai})aW(F[1],F[2],D[1],D[2])end
end
g(e,M>0 and 0 or e,0,M+J)r(0,0,al,H)g(50,50,50)r(0,H,al,32)g(25,25,25)r(x-16,H,32,32)d=a[23][a[19][3][1]+(aa)*a[19][3][3]]p,n=d[1],d[2]m=x-p/2
for b=0,p-1 do
for j=0,n-1 do
o=d[7+j+b*n]if o~=0 then
f=a[20][o]g(f[1],f[2],f[3])r(m+b,H+1+j,1,1)end
end
end
for b=5,7 do
if a[12][1][9+b]>0 then
_=a[19][b]g(_[1],_[2],_[3])r(199,95+b*7,6,7)end
end
if af>0 then
aY=a[13][bk]m=0
z=0
for bd=1,#aY do
_=aY[bd]if _>0 then
d=a[23][_]p,n=d[1],d[2]A=m-d[4]aq=z-d[5]for b=0,p-1 do
for j=0,n-1 do
o=d[7+j+b*n]if o~=0 then
f=a[20][o]g(f[1],f[2],f[3])r(A+b,aq+j,1,1)end
end
end
m=m+p
else
m=m+4
end
end
end
g(e,e,e)l(100,T,N(v))l(100,137,N(aA))l(67,T,"HEALTH")l(67,137,"ARMOUR")l(1,143,"DIF:")l(1,149,"LOD:")l(217,T,"BULL")l(217,138,"SHEL")l(217,145,"ROKT")l(217,152,"CELL")l(26,149,N(aH))l(26,143,N(ag(ba-3000,3)))for b=1,4 do
c=124+b*7
aQ(250,c,an(a[12][1][b]),15)aQ(271,c,an(a[19][17][b]),15)g(e,e,e)l(254,c,"/")end
g(e,e,e)end
l(1,T,"ROM:")l(26,T,ah)l(1,137,"TPS:")end
