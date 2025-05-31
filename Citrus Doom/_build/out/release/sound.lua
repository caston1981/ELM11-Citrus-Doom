bp=""

U=131
j=255
D=180
aG=true
aJ=false
aE=input
aA=table.remove
o=math
I=o.max
ae=o.min
abs=o.abs
Y=o.floor
sqrt=o.sqrt
g=aE.getNumber
aj=aE.getBool
aH=output.setNumber
pi=o.pi
az=aJ
aN=aG
ap=string
function ad(c,e)return{(c[1]+e[1]),(c[2]+e[2])}end
function bg(c,e)return c[1]*e[2]-c[2]*e[1]end
function sub(c,e)return{(c[1]-e[1]),(c[2]-e[2])}end
function aD(c,e)return{c[1]*e,c[2]*e}end
function bo(c)return((c+D)%360)-D end
function sin(c)return o.sin(c/D*pi)end
function cos(c)return o.cos(c/D*pi)end
function tan(c)return o.tan(c/D*pi)end
function bl(c)return o.atan(c)*D/pi end
function bj(c)return o.atan(c[2],c[1])*D/pi end
function aT(c,e,bf)return ae(I(e,c),bf)end
function bc(c)return Y(c+.5)end
function bm(c,e)return sqrt(((c[1]-e[1])^2)+((c[2]-e[2])^2))end
function aW(c)return{c[1],-c[2]}end
function bn(c)c=c-1
c=c|(c>>1)c=c|(c>>2)c=c|(c>>4)return c+1
end
a={}ah=1
S=3
J=az
w={{0,0},0,0}aa=288
x=aa//2
y=128
af=y//2
aM=1.2
aX={1,1}aw=1
R=1
S=3
al=400
u=100
aR=100
am=0
ab=0
H=0
F=0
aK=3002
W={}aP=32768
s={}aQ=.05
B={}ao=3
V=0
ag=0
A=1
ax=0
Q=0
T=aN
function aI(b,c)if b<aP then
E=a[7][b]return aI(E[0<bg({E[3],E[4]},sub(c,E))and 8 or 7],c)else
return b-aP
end
end
function aL(c)E=a[5][a[6][c][2]]return a[8][a[3][a[2][E[4]][E[5]+6]][6]]end
function onTick()ax=0
for i=1,3 do
if aj(9)and(not J)or not a[21]then
as=property.getText(ah)b=1
q=bp
_=ap.sub(as,b,b)while _~=bpdo
aS=ap.byte(_)if aS>64then
q=(q..aS-65)+0
if A==1then
aU=q
a[q]=a[q]or{}elseif A==2then
aY=q
X=0
elseif A==3then
au=q
else
if X==0then
X=aY
au=au-1
av={}a[aU][#a[aU]+1]=av
end
av[#av+1]=q
X=X-1
A=I(X,au)>0 and A-1 or 0
end
A=A+1
q=bp
else
q=q.._
end
b=b+1
_=ap.sub(as,b,b)end
ah=ah+1
J=as==bp
end
end
if J then
if u>0 and not T then
G={}W[#W+1]=G
Z=5
_=g(Z)while _~=0 do
t={}G[#G+1]=t
for b=0,8 do
t[b+1]=g(Z+b)end
Z=Z+9
_=g(Z)end
end
if aj(1)then
if T then
for b=1,10 do
a[b]=a[b+10*S]end
S=S+1
T=az
for b=1,#a[1]do
_=a[1][b]end
for b=1,#a[8]do
a[8][b][8]={}end
for b=1,#a[6]do
_=aL(b)_[8][#_[8]+1]=b
end
end
if g(9)>0 then
T=aN
S=g(9)end
ab=ab-1
if u>0 then
if M~=g(1)and g(1)>0then
s={}_={}_[1]=a[29][g(1)]_[2]=a[16][_[1][3]]bk=_[2][1]_[3]=0
s[1]=_
end
M=g(1)ay=aj(3)if ay and M==5 then
if Q<=0 then
Q=7
else
ay=aJ
end
end
Q=Q-1
if ay then
_=s[1]_[2]=a[16][_[1][4]]_[3]=-1
B[#B+1]={1,1}end
end
for b=#s,1,-1 do
_=s[b]if _[3]==0 then
if _[2][3]==4 then
if M==5 and Q<5 then
aB=1
else
aB=0
end
s[#s+1]={_[1],a[16][_[1][5]+aB],2}end
end
_[3]=_[3]+1
if _[3]>=_[2][2]then
if _[2][4]>2 then
_[2]=a[16][_[2][4]]_[3]=0
else
aA(s,b)end
end
end
for b=1,32 do
aH(b,0)end
for b=#B,1,-1 do
O=B[b]_=a[18][O[1]]for i=0,ao-1 do
aq=_[(O[2]+i)*2-1]if aq and aq>0 then
aH(2+(b-1)*ao+i,aT(bc((aq+12)//2),1,60))end
end
O[2]=O[2]+2
if O[2]>=ao+#_ then
aA(B,b)end
end
if T then
H=50
end
F=I(F-4,0)F=aT(F+(u-g(3)+am-g(4))*3,0,j)H=I(H-1.5,0)u=g(3)am=g(4)if g(2)>0 then
_=a[2][g(2)]if _ then
if _[4]>3004 and _[4]<3008 then
al=I(al+3*(_[4]-3006),1)elseif _[4]>3000 then
aK=_[4]end
end
end
for b=1,#W do
G=W[b]for i=1,#G do
t=G[i]_=t[1]if _>(2^15)then
_=a[8][_-(2^15)]for p=1,6 do
_[p]=t[p+1]end
elseif _<0 then
if-_<=#a[1]then
if a[1][-_]~=nil then
t=a[1][-_][6]if a[16][t][5]>0 then
H=I(H,15)ab=35
ba=a[16][t][5]B[#B+1]={a[19][11][1],1}end
else
a[1][-_]={}end
while-_>#a[1]do
a[1][#a[1]+1]=az
end
aA(a[1],-_)end
else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for p=1,8 do
_[a[19][1][p]]=t[p+1]end
_[15]=0
end
end
end
W={}_=a[1][1]w[1]={_[1],_[2]}w[3]=_[3]bd=aI(#a[7],w[1])ac=aL(bd)w[2]=ac[1]+41
aZ=ae(ac[5]/j,1)^1.3
for b=1,#ac[8]do
_=a[6][ac[8][b]]for i=_[2],_[1]+_[2]-1 do
b_=a[5][i]bb=a[2][b_[4]]bb[8]=aG
end
end
aC=aj(2)V=V-1
ag=ag-1
if not aX[M]then
aX[M]=1
ag=70
end
an=(4-ae(u//20,4))*8
if u<=0 then
R=41
elseif ag>0 then
R=an+6
elseif u<aR then
V=35
R=an+7
elseif V<=0 then
V=16
aw=aw%256+1
R=an+a[13][1][aw]%3
end
aR=u
end
end
end
function onDraw()P=screen
local bi,v,k,h,aV=P.drawTriangleF,P.drawRectF,P.setColor,P.drawText,P.drawLine
ax=ax+1
if a[21]and not J then
d=a[25][1]r,l=d[1],d[2]m,K=x-r/2,80-l/2
for p=0,r-1 do
N=m+p
for L=0,l-1 do
n=d[5+L+p*l]if n~=0 then
f=a[20][n]k(f[1],f[2],f[3])v(N,K+L,1,1)end
end
end
end
if not aC then
for b=1,#s do
d=s[b][2][1]at=d>0 and aZ or 1
d=a[17][abs(d)][1]d=a[23][d]r,l,ar=d[1],d[2],d[3]*.7
aO=ar*aM
m,K=x-(d[4]+160)*.7,y-(d[5]+148)*.7*aM
for p=0,r-1 do
N=m+p*ar
for L=0,l-1 do
n=d[7+L+p*l]if n~=0 then
f=a[20][n]k(f[1]*at,f[2]*at,f[3]*at)v(N,K+L*aO,ar,aO)end
end
end
end
end
if J then
if aC then
k(0,0,0)v(0,0,aa,y)for b=1,#a[2]do
_=a[2][b]if _[8]then
C=ad(aW(aD(sub(a[4][_[1]],w[1]),aQ)),{x,af})z=ad(aW(aD(sub(a[4][_[2]],w[1]),aQ)),{x,af})if _[3]&4>0 then
k(50,50,50)else
k(j,j,j)end
aV(C[1],C[2],z[1],z[2])end
end
k(j,j,j)_=a[19][10]for b=1,#_,4 do
ai=sin(w[3]-90)ak=cos(w[3]-90)C={_[b]*ak+_[b+1]*ai,_[b+1]*ak-_[b]*ai}z={_[b+2]*ak+_[b+3]*ai,_[b+3]*ak-_[b+2]*ai}C=ad(C,{x,af})z=ad(z,{x,af})aV(C[1],C[2],z[1],z[2])end
end
k(j,F>0 and 0 or j,0,F+H)v(0,0,aa,y)k(50,50,50)v(0,y,aa,32)k(25,25,25)v(x-16,y,32,32)d=a[23][a[19][3][1]+(R)*a[19][3][3]]r,l=d[1],d[2]m=x-r/2
for b=0,r-1 do
for i=0,l-1 do
n=d[7+i+b*l]if n~=0 then
f=a[20][n]k(f[1],f[2],f[3])v(m+b,y+1+i,1,1)end
end
end
for b=5,7 do
_=a[19][b]k(_[1],_[2],_[3])v(199,95+b*7,6,7)end
if ab>0 then
aF=a[13][ba]m=0
K=0
for be=1,#aF do
_=aF[be]if _>0 then
d=a[23][_]r,l=d[1],d[2]N=m+d[4]bh=K-d[5]for b=0,r-1 do
for i=0,l-1 do
n=d[7+i+b*l]if n~=0 then
f=a[20][n]k(f[1],f[2],f[3])v(N+b,bh+i,1,1)end
end
end
m=m+r
else
m=m+4
end
end
end
k(j,j,j)h(100,U,Y(u))h(100,137,Y(am))h(67,U,"HEALTH")h(67,137,"ARMOUR")h(1,143,"DIF:")h(1,149,"LOD:")h(217,U,"BULL")h(217,138,"SHEL")h(217,145,"ROKT")h(217,152,"CELL")h(26,149,Y(al))h(26,143,Y(ae(aK-3000,3)))end
h(1,U,"ROM:")h(26,U,ah)h(1,137,"TPS:")end
