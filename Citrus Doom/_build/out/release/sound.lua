
ae=152
J=131
t=255
A=180
av=true
aM=false
aY=input
aE=table.remove
r=math
N=r.max
as=r.min
abs=r.abs
Q=r.floor
sqrt=r.sqrt
k=aY.getNumber
an=aY.getBool
aV=output.setNumber
pi=r.pi
aD=aM
aT=av
W=string
function am(c,l)return{(c[1]+l[1]),(c[2]+l[2])}end
function bl(c,l)return c[1]*l[2]-c[2]*l[1]end
function sub(c,l)return{(c[1]-l[1]),(c[2]-l[2])}end
function bc(c,l)return{c[1]*l,c[2]*l}end
function bw(c)return((c+A)%360)-A end
function sin(c)return r.sin(c/A*pi)end
function cos(c)return r.cos(c/A*pi)end
function tan(c)return r.tan(c/A*pi)end
function bv(c)return r.atan(c)*A/pi end
function bt(c)return r.atan(c[2],c[1])*A/pi end
function aS(c,l,bk)return as(N(l,c),bk)end
function ag(c)return Q(c+.5)end
function br(c,l)return sqrt(((c[1]-l[1])^2)+((c[2]-l[2])^2))end
function aR(c)return{c[1],-c[2]}end
function bu(c)c=c-1
c=c|(c>>1)c=c|(c>>2)c=c|(c>>4)return c+1
end
a={}O=1
Y=3
T=aD
z={{0,0},0,0}aq=288
y=aq//2
B=128
ap=B//2
aZ=1.2
aN={1,1}at=1
V=1
Y=3
au=400
v=100
aW=100
aH=0
al=0
M=0
K=0
aP=3002
Z={}aX=32768
u={}aQ=.05
E={}ax=3
X=0
aw=0
ak=0
D=1
aK=0
R=0
aa=aT
function aO(b,c)if b<aX then
G=a[7][b]return aO(G[0<bl({G[3],G[4]},sub(c,G))and 8 or 7],c)else
return b-aX
end
end
function be(c)G=a[5][a[6][c][2]]return a[8][a[3][a[2][G[4]][G[5]+6]][6]]end
function ar(j,w,ai,ao)local q,o=s.drawRectF,s.setColor
ai=ai..""
ao=a[19][ao]for b=#ai,1,-1 do
_=ao[W.byte(W.sub(ai,b,b))]j=j-ao[1]if _>0 then
d=a[23][_]n,h=d[1],d[2]I=j-d[4]+1
aC=w-d[5]for g=0,n-1 do
for f=0,h-1 do
i=d[7+f+g*h]if i~=0 then
e=a[20][i]o(e[1],e[2],e[3])q(I+g,aC+f,1,1)end
end
end
end
end
end
function m(bg,aU,U)s.setColor(13,0,0)s.drawText(bg+1,aU+1,U)s.setColor(59,59,59)s.drawText(bg,aU,U)end
function onTick()aK=0
for g=1,3 do
if an(9)and(not T)or not a[21]then
aJ=property.getText(O)b=1
p=""
_=W.sub(aJ,b,b)while _~=""do
F=W.byte(_)if F>64 then
p=(p..F-65)+0
if D==1 then
b_=p
a[p]=a[p]or{}elseif D==2 then
bp=p
ac=0
elseif D==3 then
aB=p
else
if ac==0 then
ac=bp
aB=aB-1
aA={}a[b_][#a[b_]+1]=aA
end
aA[#aA+1]=p
ac=ac-1
D=N(ac,aB)>0 and D-1 or 0
end
D=D+1
p=""
else
p=p.._
end
b=b+1
_=W.sub(aJ,b,b)end
O=O+1
T=aJ==""
end
end
if T then
if k(9)>0 then
aa=aT
Y=k(9)end
aw=aw+1
a[12][1][aw%#a[12][1]+1]=ag(k(10))if v>0 and not aa then
L={}Z[#Z+1]=L
S=5
_=k(S)while _~=0 do
x={}L[#L+1]=x
for b=0,8 do
x[b+1]=k(S+b)end
S=S+9
_=k(S)end
end
if an(1)then
if aa then
for b=1,10 do
a[b]=a[b+10*Y]end
Y=Y+1
aa=aD
for b=1,#a[1]do
_=a[1][b]end
for b=1,#a[8]do
a[8][b][8]={}end
for b=1,#a[6]do
_=be(b)_[8][#_[8]+1]=b
end
end
al=al-1
if v>0 then
if ad~=k(1)and k(1)>0 then
u={}_={}_[1]=a[29][k(1)]_[2]=a[16][_[1][3]]bs=_[2][1]_[3]=0
u[1]=_
end
ad=k(1)aF=an(3)if aF and ad==5 then
if R<=0 then
R=7
else
aF=aM
end
end
R=R-1
if aF then
_=u[1]_[2]=a[16][_[1][4]]_[3]=-1
E[#E+1]={1,1}end
end
for b=#u,1,-1 do
_=u[b]if _[3]==0 then
if _[2][3]==4 then
if ad==5 and R<5 then
bf=1
else
bf=0
end
u[#u+1]={_[1],a[16][_[1][5]+bf],2}end
end
_[3]=_[3]+1
if _[3]>=_[2][2]then
if _[2][4]>2 then
_[2]=a[16][_[2][4]]_[3]=0
else
aE(u,b)end
end
end
for b=1,32 do
aV(b,0)end
for b=#E,1,-1 do
ab=E[b]_=a[18][ab[1]]for g=0,ax-1 do
aI=_[(ab[2]+g)*2-1]if aI and aI>0 then
aV(2+(b-1)*ax+g,aS(ag((aI+12)//2),1,60))end
end
ab[2]=ab[2]+2
if ab[2]>=ax+#_ then
aE(E,b)end
end
if aa then
M=50
end
K=N(K-4,0)K=aS(K+(v-k(3)+aH-k(4))*3,0,t)M=N(M-1.5,0)v=k(3)aH=k(4)if k(2)>0 then
_=a[2][k(2)]if _ then
if _[4]>3004 and _[4]<3008 then
au=N(au+3*(_[4]-3006),1)elseif _[4]>3000 then
aP=_[4]end
end
end
for b=1,#Z do
L=Z[b]for g=1,#L do
x=L[g]_=x[1]if _>(2^15)then
_=a[8][_-(2^15)]for f=1,6 do
_[f]=x[f+1]end
elseif _<0 then
F=a[1][-_]if F~=nil then
x=F[6]if a[16][x][5]>0 then
M=N(M,15)al=35
bo=a[16][x][5]E[#E+1]={a[19][11][1],1}if F[4]then
bn=a[15][F[4]]if bn[29]==a[19][13][1]then
for f=1,#a[2]do
a[2][f][8]=av
end
end
end
end
end
while-_>#a[1]do
a[1][#a[1]+1]=aD
end
aE(a[1],-_)else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for f=1,8 do
_[a[19][1][f]]=x[f+1]end
_[15]=0
end
end
end
Z={}_=a[1][1]z[1]={_[1],_[2]}z[3]=_[3]bi=aO(#a[7],z[1])aj=be(bi)z[2]=aj[1]+41
bm=as(aj[5]/t,1)^1.3
for b=1,#aj[8]do
_=a[6][aj[8][b]]for g=_[2],_[1]+_[2]-1 do
bq=a[5][g]bj=a[2][bq[4]]bj[8]=av
end
end
bb=an(2)X=X-1
ak=ak-1
if not aN[ad]then
aN[ad]=1
ak=70
end
ay=(4-as(v//20,4))*8
if v<=0 then
V=41
elseif ak>0 then
V=ay+6
elseif v<aW then
X=35
V=ay+7
elseif X<=0 then
X=16
at=at%256+1
V=ay+a[13][1][at]%3
end
aW=v
end
end
end
function onDraw()s=screen
local q,o,bd,U=s.drawRectF,s.setColor,s.drawLine,s.drawText
aK=aK+1
if a[21]and not T then
d=a[25][1]n,h=d[1],d[2]j,w=y-n/2,80-h/2
for f=0,n-1 do
I=j+f
for P=0,h-1 do
i=d[5+P+f*h]if i~=0 then
e=a[20][i]o(e[1],e[2],e[3])q(I,w+P,1,1)end
end
end
end
if not bb then
for b=1,#u do
d=u[b][2][1]az=d>0 and bm or 1
d=a[17][abs(d)][1]d=a[23][d]n,h,aG=d[1],d[2],d[3]*.7
aL=aG*aZ
j,w=y-(d[4]+160)*.7,B-(d[5]+148)*.7*aZ
for f=0,n-1 do
I=j+f*aG
for P=0,h-1 do
i=d[7+P+f*h]if i~=0 then
e=a[20][i]o(e[1]*az,e[2]*az,e[3]*az)q(I,w+P*aL,aG,aL)end
end
end
end
end
if T then
if bb then
o(0,0,0)q(0,0,aq,B)for b=1,#a[2]do
_=a[2][b]if _[8]then
H=am(aR(bc(sub(a[4][_[1]],z[1]),aQ)),{y,ap})C=am(aR(bc(sub(a[4][_[2]],z[1]),aQ)),{y,ap})if _[3]&4>0 then
o(50,50,50)else
o(t,t,t)end
bd(H[1],H[2],C[1],C[2])end
end
o(t,t,t)_=a[19][10]for b=1,#_,4 do
ah=sin(z[3]-90)af=cos(z[3]-90)H={_[b]*af+_[b+1]*ah,_[b+1]*af-_[b]*ah}C={_[b+2]*af+_[b+3]*ah,_[b+3]*af-_[b+2]*ah}H=am(H,{y,ap})C=am(C,{y,ap})bd(H[1],H[2],C[1],C[2])end
end
o(t,K>0 and 0 or t,0,K+M)q(0,0,aq,B)o(30,30,30)q(0,B,aq,32)o(5,5,5)q(y-16,B,32,32)d=a[23][a[19][3][1]+(V)*a[19][3][3]]n,h=d[1],d[2]j=y-n/2
for b=0,n-1 do
for g=0,h-1 do
i=d[7+g+b*h]if i~=0 then
e=a[20][i]o(e[1],e[2],e[3])q(j+b,B+1+g,1,1)end
end
end
for b=1,3 do
if a[12][1][13+b]>0 then
j,w=221,125+b*8
d=a[23][a[19][3][4]+a[19][5][b]*a[19][3][3]]n,h=d[1],d[2]for g=0,n-1 do
for f=0,h-1 do
i=d[7+f+g*h]if i~=0 then
e=a[20][i]o(e[1],e[2],e[3])q(j+g,w+f,1,1)end
end
end
end
end
if al>0 then
ba=a[13][bo]j=0
w=0
for bh=1,#ba do
_=ba[bh]if _>0 then
d=a[23][_]n,h=d[1],d[2]I=j-d[4]aC=w-d[5]for b=0,n-1 do
for g=0,h-1 do
i=d[7+g+b*h]if i~=0 then
e=a[20][i]o(e[1],e[2],e[3])q(I+b,aC+g,1,1)end
end
end
j=j+n
else
j=j+4
end
end
end
ar(124,J,Q(v).."%",16)ar(218,J,Q(aH).."%",16)m(124-28-15,ae,"HEALTH")m(218-28-15,ae,"ARMOUR")m(2,J,"ROM:")m(26,J,O)m(2,138,"TPS:")m(26,138,a[12][1][17])m(2,145,"DIF:")m(26,145,Q(as(aP-3000,3)))m(2,ae,"LOD:")m(26,ae,Q(au))m(232,J,"BULL")m(232,138,"SHEL")m(232,145,"ROKT")m(232,ae,"CELL")for b=1,4 do
c=124+b*7
ar(265,c,ag(a[12][1][b]),15)ar(285,c,ag(a[19][17][b]),15)m(268,c,"/")end
else
U(1,J,"ROM:")U(26,J,O)end
end
