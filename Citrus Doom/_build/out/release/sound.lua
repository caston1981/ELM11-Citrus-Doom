
ag=152
K=131
h=255
O=180
u=math
S=u.max
aa=u.min
abs=u.abs
W=u.floor
sqrt=u.sqrt
m=input.getNumber
ar=input.getBool
bu=output.setNumber
pi=u.pi
aT=false
Z=true
am=table.remove
ad=string
function aI(c,p)return{(c[1]+p[1]),(c[2]+p[2])}end
function bF(c,p)return c[1]*p[2]-c[2]*p[1]end
function sub(c,p)return{(c[1]-p[1]),(c[2]-p[2])}end
function be(c,p)return{c[1]*p,c[2]*p}end
function bN(c)return((c+O)%360)-O end
function sin(c)return u.sin(c/O*pi)end
function cos(c)return u.cos(c/O*pi)end
function tan(c)return u.tan(c/O*pi)end
function bQ(c)return u.atan(c)*O/pi end
function bO(c)return u.atan(c[2],c[1])*O/pi end
function bv(c,p,bD)return aa(S(p,c),bD)end
function ax(c)return W(c+.5)end
function bz(c,p)return sqrt(((c[1]-p[1])^2)+((c[2]-p[2])^2))end
function bo(c)return{c[1],-c[2]}end
function bM(c)c=c-1
c=c|(c>>1)c=c|(c>>2)c=c|(c>>4)return c+1
end
a={}aK=1
A=3
ai=aT
E={{0,0},0,0}al=288
H=al//2
G=128
aB=G//2
bt=1.2
bx={1,1}aO=1
aj=1
b_=500
s=100
bh=100
bb=0
N=0
aL=0
ay=0
T=0
R=0
aS=3002
bm=32768
y={}bf=.05
B={}ap={}bI=2
X=35
aJ=0
af=0
aW=0
aP=0
aA=0
aF=0
P=1
ba=0
an=0
au=0
ao=Z
aV=0
aE=0
function bp(b,c)if b<bm then
J=a[7][b]return bp(J[0<bF({J[3],J[4]},sub(c,J))and 8 or 7],c)else
return b-bm
end
end
function bq(c)J=a[5][a[6][c][2]]return a[8][a[3][a[2][J[4]][J[5]+6]][6]]end
function aG(i,r,aw,aC)local F,l=x.drawLine,x.setColor
aw=aw..""
aC=a[19][aC]for b=#aw,1,-1 do
_=aC[ad.byte(ad.sub(aw,b,b))]i=i-aC[1]if _>0 then
d=a[23][_]o,g=d[1],d[2]w=i-d[4]+1
ac=r-d[5]for j=0,o-1 do
for f=0,g-1 do
k=d[7+f+j*g]if k~=0 then
e=a[20][k]l(e[1],e[2],e[3])F(w+j,ac+f,w+j,ac+f+1)end
end
end
end
end
end
function q(at,as,aq,n)n=n or{59,59,59}x.setColor(13,0,0)x.drawText(at+1,as+1,aq)x.setColor(n[1],n[2],n[3])x.drawText(at,as,aq)end
function onTick()ba=0
for j=1,3 do
if ar(9)and(not ai)or not a[21]then
aM=property.getText(aK)b=1
v=""
_=ad.sub(aM,b,b)while _~=""do
M=ad.byte(_)if M>64 then
v=(v..M-65)+0
if P==1 then
bj=v
a[v]=a[v]or{}elseif P==2 then
bJ=v
ak=0
elseif P==3 then
aY=v
else
if ak==0 then
ak=bJ
aY=aY-1
bc={}a[bj][#a[bj]+1]=bc
end
bc[#bc+1]=v
ak=ak-1
P=S(ak,aY)>0 and P-1 or 0
end
P=P+1
v=""
else
v=v.._
end
b=b+1
_=ad.sub(aM,b,b)end
aK=aK+1
ai=aM==""
end
end
if ai then
if m(10)>0 then
ao=Z
A=m(10)end
aW=aW+1
a[12][1][aW%#a[12][1]+1]=ax(m(11))an=a[12][1][17]if s<=0 then
if(A-3)%9==0 and A>5 and ab[6]==5 then
if not aH then
N=X*3600
aD=((A-5)//9)+"episode end text start"
end
aH=Z
aP=aP+1
end
end
if s>0 and not ao then
V={}ah[#ah+1]=V
ae=6
_=m(ae)while _~=0 do
z={}V[#V+1]=z
for b=0,8 do
z[b+1]=m(ae+b)end
ae=ae+9
_=m(ae)end
end
if ar(1)then
aJ=aJ+1
if ao then
for b=1,10 do
a[b]=a[b+10*A]end
A=A+1
for b=#a[1],1,-1 do
_=a[1][b]_=_[5]&(aS-3000)>0 or am(a[1],b)end
for b=1,#a[8]do
a[8][b][8]={}end
for b=1,#a[6]do
_=bq(b)_[8][#_[8]+1]=b
end
ah={}end
N=N-1
if s>0 then
if Q~=m(1)and m(1)>0 then
y={}_={}_[1]=a[29][m(1)]_[2]=a[16][_[1][3]]bP=_[2][1]_[3]=0
y[1]=_
end
Q=m(1)aR=ar(3)if aR and Q==5 then
if au<=0 then
au=7
else
aR=false
end
end
au=au-1
if aR then
_=y[1]_[2]=a[16][_[1][4]]_[3]=-1
D=a[19][6][Q]if D>0 then
B[#B+1]={D,1}end
end
end
for b=#y,1,-1 do
_=y[b]if _[3]==0 then
if _[2][3]==4 then
if Q==5 and au<5 then
bd=1
else
bd=0
end
y[#y+1]={_[1],a[16][_[1][5]+bd],2}end
end
_[3]=_[3]+1
if _[3]>=_[2][2]then
if _[2][4]>2 then
_[2]=a[16][_[2][4]]_[3]=0
else
am(y,b)end
end
end
if ao then
T=50
N=X*8
aD=A-4+"map name text start"
end
ao=aT
R=S(R-4,0)R=bv(R+(s-m(3)+bb-m(4))*3,0,h)T=S(T-1.5,0)aL=(a[12][1][18]>140 or ay>0 or a[12][1][18]>0 and aJ%20<10)and 10 or 0
ay=ay-1
s=m(3)bb,br,bs,bw=m(4)if m(2)>0 and s>0 then
_=a[2][m(2)]if _ then
if _[4]==3008 then
bi=_[5]>0 and W(_[5])bw=Z
elseif _[4]>3004 then
b_=S(b_+3*(_[4]-3006),1)bs=Z
elseif _[4]>3000 then
aS=_[4]br=Z
elseif _[4]>=14 and _[4]<=16 then
if a[12][1][_[4]]==0 then
N=X*4
aD=_[4]-14+"door text start"
end
end
end
end
aE=aE-1
if aE<1 then
aV=0
end
for b=1,#ah do
V=ah[b]for j=1,#V do
z=V[j]_=z[1]if _>(2^15)then
_=a[8][_-(2^15)]for f=1,6 do
_[f]=z[f+1]end
elseif _<0 then
M=a[1][-_]if M then
z=M[6]if a[16][z][5]>0 then
T=S(T,15)N=X*4
aD=a[16][z][5]B[#B+1]={"item pickup sound index",1}if M[4]then
aU=a[15][M[4]]if aU[29]=="light amp index" then
aV=1
aE=4200
end
if aU[29]=="computer area map index" then
for f=1,#a[2]do
a[2][f][8]=a[2][f][8]or 1
end
end
if aU[25]=="rad suit index" then
ay=20
end
end
end
end
while-_>#a[1]do
a[1][#a[1]+1]=aT
end
am(a[1],-_)else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for f=1,8 do
_[a[19][1][f]]=z[f+1]end
_[15]=0
end
end
end
ah={}_=a[1][1]E[3]=_[3]bk=((aJ%64)/64)*360
aF=aF*.8+aa(bz(_,E[1])^2/4,16)*.2
by=cos(bk)*aF
bH=-abs(sin(bk)*aF)-(s>0 and 0 or 300)E[1]={_[1],_[2]}bE=bp(#a[7],E[1])ab=bq(bE)E[2]=ab[1]+41
bL=aa(ab[5]/h+aV,1)^1.3
for b=1,#ab[8]do
_=a[6][ab[8][b]]for j=_[2],_[1]+_[2]-1 do
bB=a[5][j]bA=a[2][bB[4]]bA[8]=2
end
end
bn=ar(2)if m(12)>0 and s>0 then
B[#B+1]={m(12),1}end
af=af-1
aA=aA-1
if not bx[Q]then
bx[Q]=1
aA=70
end
aX=(4-aa(s//20,4))*8
if s<=0 then
aj=41
elseif aA>0 then
aj=aX+6
elseif s<bh then
af=X
aj=aX+7
elseif af<=0 then
af=16
aO=aO%256+1
aj=aX+a[13][1][aO]%3
end
bh=s
end
for b=#B,1,-1 do
D=B[b]_=a[18][D[1]]if ar(1)then
C=_[D[2]]D[2]=D[2]+4
else
C=_[D[2]+2]end
if C and C>0 then
ap[#ap+1]={C,1}end
if D[2]>=#_ then
am(B,b)end
end
for b=1,32 do
bu(b,0)end
for b=#ap,1,-1 do
C=ap[b]bu(b+3,bv(ax((C[1]+12)//2),1,60))C[2]=C[2]+1
if C[2]>bI then
am(ap,b)end
end
end
end
function onDraw()x=screen
local U,l,F,aq=x.drawRectF,x.setColor,x.drawLine,x.drawText
ba=ba+1
if a[21]and not ai then
d=a[25][1]o,g=d[1],d[2]i,r=H-o/2,80-g/2
for f=0,o-1 do
w=i+f
for Y=0,g-1 do
k=d[5+Y+f*g]if k~=0 then
e=a[20][k]l(e[1],e[2],e[3])F(w,r+Y,w,r+Y+1)end
end
end
end
if not bn then
for b=1,#y do
d=y[b][2][1]aZ=d>0 and bL or 1
d=a[17][abs(d)][1]d=a[23][d]o,g,t=d[1],d[2],d[3]*.7
bg=t*bt
i,r=H-(d[4]+160+by)*.7,G-(d[5]+148+bH)*.7*bt
for f=0,o-1 do
w=i+f*t
for Y=0,g-1 do
k=d[7+Y+f*g]if k~=0 then
e=a[20][k]l(e[1]*aZ,e[2]*aZ,e[3]*aZ)U(w,r+Y*bg,t,bg)end
end
end
end
end
if ai then
if not aH then
if bn then
l(0,0,0)U(0,0,al,G)for b=1,#a[2]do
_=a[2][b]if _[8]then
I=aI(bo(be(sub(a[4][_[1]],E[1]),bf)),{H,aB})L=aI(bo(be(sub(a[4][_[2]],E[1]),bf)),{H,aB})if _[8]==1 then
l(0,50,0)elseif _[3]&4>0 then
if _[4]==14 then
l(0,0,h)elseif _[4]==15 then
l(h,0,0)elseif _[4]==16 then
l(h,h,0)else
l(50,50,50)end
else
l(h,h,h)end
F(I[1],I[2],L[1],L[2])end
end
l(h,h,h)_=a[19][10]for b=1,#_,4 do
az=sin(E[3]-90)av=cos(E[3]-90)I={_[b]*av+_[b+1]*az,_[b+1]*av-_[b]*az}L={_[b+2]*av+_[b+3]*az,_[b+3]*av-_[b+2]*az}I=aI(I,{H,aB})L=aI(L,{H,aB})F(I[1],I[2],L[1],L[2])end
end
l((aL>0 and 0 or h),((R>0 and aL==0)and 0 or h),0,R+T+aL)U(0,0,al,G)l(30,30,30)U(0,G,al,32)l(5,5,5)U(H-16,G,32,32)d=a[23]["face textures start"+(aj)*"number of sprite mipmap levels"]o,g=d[1],d[2]i=H-o/2
for b=0,o-1 do
for j=0,g-1 do
k=d[7+j+b*g]if k~=0 then
e=a[20][k]l(e[1],e[2],e[3])F(i+b,G+1+j,i+b,G+2+j)end
end
end
for b=1,3 do
if a[12][1][13+b]>0 then
i,r=221,125+b*8
d=a[23]["key textures start"+a[19][5][b]*"number of sprite mipmap levels"]o,g=d[1],d[2]for j=0,o-1 do
for f=0,g-1 do
k=d[7+f+j*g]if k~=0 then
e=a[20][k]l(e[1],e[2],e[3])F(i+j,r+f,i+j,r+f+1)end
end
end
end
end
else
d=a[22][a[19][3][((A-5)//9)+1]]t=d[3]o,g=d[1],d[2]for at=0,al+t,t do
for as=0,32*5+t,t do
k=d[6+((at//t)%o)*g+((as//t)%g)]e=a[20][k]l(e[1],e[2],e[3])U(at,as,t,t)end
end
end
if N>0 then
aN=a[13][aD]if aH then
aQ=3
r=3
bl=aa(#aN,aP//3)else
aQ=0
r=0
bl=#aN
end
i=aQ
for bC=1,bl do
_=aN[bC]if _>0 then
d=a[23][_]o,g=d[1],d[2]w=i-d[4]ac=r-d[5]for b=0,o-1 do
for j=0,g-1 do
k=d[7+j+b*g]if k~=0 then
e=a[20][k]l(e[1],e[2],e[3])F(w+b,ac+j,w+b,ac+j+1)end
end
end
i=i+o
elseif _==0 then
i=i+4
elseif _==-1 then
i=aQ
r=r+9
end
end
end
if not aH then
aG(124,K,W(s).."%",16)aG(218,K,W(bb).."%",16)q(124-28-15,ag,"HEALTH")q(218-28-15,ag,"ARMOUR")n=(an<X and an>0)and{h,0,0}q(2,K,"TPS:",n)q(26,K,an>0 and an or "N/A",n)n=br and{h,h,44}q(2,138,"DIF:",n)bG={"EASY","MED","HARD"}q(26,138,bG[W(aa(aS-3000,3))],n)n=bs and{h,h,44}q(2,145,"LOD:",n)q(26,145,W(b_),n)n=bw and{h,h,44}q(2,ag,"TEX:",n)bK={"FULL","HALF"}q(26,ag,bi and bK[bi]or "OFF",n)q(232,K,"BULL")q(232,138,"SHEL")q(232,145,"ROKT")q(232,ag,"CELL")for b=1,4 do
c=124+b*7
aG(265,c,ax(a[12][1][b]),15)aG(285,c,ax(a[19][17][b]),15)q(268,c,"/")end
end
else
aq(1,K,"ROM:")aq(26,K,aK)end
end
