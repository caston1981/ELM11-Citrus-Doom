
ad=152
K=131
t=255
E=180
p=math
N=p.max
ao=p.min
abs=p.abs
aj=p.floor
sqrt=p.sqrt
l=input.getNumber
ag=input.getBool
aT=output.setNumber
pi=p.pi
aH=false
aP=true
Y=table.remove
aa=string
function au(c,k)return{(c[1]+k[1]),(c[2]+k[2])}end
function bl(c,k)return c[1]*k[2]-c[2]*k[1]end
function sub(c,k)return{(c[1]-k[1]),(c[2]-k[2])}end
function aW(c,k)return{c[1]*k,c[2]*k}end
function bu(c)return((c+E)%360)-E end
function sin(c)return p.sin(c/E*pi)end
function cos(c)return p.cos(c/E*pi)end
function tan(c)return p.tan(c/E*pi)end
function bq(c)return p.atan(c)*E/pi end
function bt(c)return p.atan(c[2],c[1])*E/pi end
function aV(c,k,bj)return ao(N(k,c),bj)end
function ap(c)return aj(c+.5)end
function bs(c,k)return sqrt(((c[1]-k[1])^2)+((c[2]-k[2])^2))end
function aU(c)return{c[1],-c[2]}end
function br(c)c=c-1
c=c|(c>>1)c=c|(c>>2)c=c|(c>>4)return c+1
end
a={}ai=1
ab=3
Z=aH
A={{0,0},0,0}an=288
D=an//2
B=128
av=B//2
b_=1.2
aX={1,1}aF=1
U=1
ab=3
az=400
w=100
aY=100
aL=0
at=0
M=0
R=0
aD=3002
V={}bd=32768
s={}aZ=.05
L={}ac={}bg=2
T=0
aA=0
al=0
F=1
aB=0
ah=0
W=aP
function aS(b,c)if b<bd then
G=a[7][b]return aS(G[0<bl({G[3],G[4]},sub(c,G))and 8 or 7],c)else
return b-bd
end
end
function aN(c)G=a[5][a[6][c][2]]return a[8][a[3][a[2][G[4]][G[5]+6]][6]]end
function as(h,r,aw,ar)local C,n=u.drawLine,u.setColor
aw=aw..""
ar=a[19][ar]for b=#aw,1,-1 do
_=ar[aa.byte(aa.sub(aw,b,b))]h=h-ar[1]if _>0 then
d=a[23][_]o,i=d[1],d[2]v=h-d[4]+1
X=r-d[5]for g=0,o-1 do
for f=0,i-1 do
j=d[7+f+g*i]if j~=0 then
e=a[20][j]n(e[1],e[2],e[3])C(v+g,X+f,v+g,X+f+1)end
end
end
end
end
end
function m(bc,aQ,ae)u.setColor(13,0,0)u.drawText(bc+1,aQ+1,ae)u.setColor(59,59,59)u.drawText(bc,aQ,ae)end
function onTick()aB=0
for g=1,3 do
if ag(9)and(not Z)or not a[21]then
aK=property.getText(ai)b=1
q=""
_=aa.sub(aK,b,b)while _~=""do
H=aa.byte(_)if H>64 then
q=(q..H-65)+0
if F==1 then
bb=q
a[q]=a[q]or{}elseif F==2 then
be=q
S=0
elseif F==3 then
aJ=q
else
if S==0 then
S=be
aJ=aJ-1
aC={}a[bb][#a[bb]+1]=aC
end
aC[#aC+1]=q
S=S-1
F=N(S,aJ)>0 and F-1 or 0
end
F=F+1
q=""
else
q=q.._
end
b=b+1
_=aa.sub(aK,b,b)end
ai=ai+1
Z=aK==""
end
end
if Z then
if l(9)>0 then
W=aP
ab=l(9)end
aA=aA+1
a[12][1][aA%#a[12][1]+1]=ap(l(10))if w>0 and not W then
Q={}V[#V+1]=Q
af=5
_=l(af)while _~=0 do
x={}Q[#Q+1]=x
for b=0,8 do
x[b+1]=l(af+b)end
af=af+9
_=l(af)end
end
if ag(1)then
if W then
for b=1,10 do
a[b]=a[b+10*ab]end
ab=ab+1
W=aH
for b=#a[1],1,-1 do
_=a[1][b]_=_[5]&(aD-3000)>0 or Y(a[1],b)end
for b=1,#a[8]do
a[8][b][8]={}end
for b=1,#a[6]do
_=aN(b)_[8][#_[8]+1]=b
end
end
at=at-1
if w>0 then
if P~=l(1)and l(1)>0 then
s={}_={}_[1]=a[29][l(1)]_[2]=a[16][_[1][3]]bp=_[2][1]_[3]=0
s[1]=_
end
P=l(1)ay=ag(3)if ay and P==5 then
if ah<=0 then
ah=7
else
ay=false
end
end
ah=ah-1
if ay then
_=s[1]_[2]=a[16][_[1][4]]_[3]=-1
y=a[19][6][P]if y>0 then
L[#L+1]={y,1}end
end
end
for b=#s,1,-1 do
_=s[b]if _[3]==0 then
if _[2][3]==4 then
if P==5 and ah<5 then
aO=1
else
aO=0
end
s[#s+1]={_[1],a[16][_[1][5]+aO],2}end
end
_[3]=_[3]+1
if _[3]>=_[2][2]then
if _[2][4]>2 then
_[2]=a[16][_[2][4]]_[3]=0
else
Y(s,b)end
end
end
if W then
M=50
end
R=N(R-4,0)R=aV(R+(w-l(3)+aL-l(4))*3,0,t)M=N(M-1.5,0)w=l(3)aL=l(4)if l(2)>0 then
_=a[2][l(2)]if _ then
if _[4]>3004 and _[4]<3008 then
az=N(az+3*(_[4]-3006),1)elseif _[4]>3000 then
aD=_[4]end
end
end
for b=1,#V do
Q=V[b]for g=1,#Q do
x=Q[g]_=x[1]if _>(2^15)then
_=a[8][_-(2^15)]for f=1,6 do
_[f]=x[f+1]end
elseif _<0 then
H=a[1][-_]if H~=nil then
x=H[6]if a[16][x][5]>0 then
M=N(M,15)at=35
bk=a[16][x][5]L[#L+1]={a[19][11][1],1}if H[4]then
bf=a[15][H[4]]if bf[29]==a[19][13][1]then
for f=1,#a[2]do
a[2][f][8]=true
end
end
end
end
end
while-_>#a[1]do
a[1][#a[1]+1]=aH
end
Y(a[1],-_)else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for f=1,8 do
_[a[19][1][f]]=x[f+1]end
_[15]=0
end
end
end
V={}_=a[1][1]A[1]={_[1],_[2]}A[3]=_[3]bi=aS(#a[7],A[1])aq=aN(bi)A[2]=aq[1]+41
bo=ao(aq[5]/t,1)^1.3
for b=1,#aq[8]do
_=a[6][aq[8][b]]for g=_[2],_[1]+_[2]-1 do
bh=a[5][g]bm=a[2][bh[4]]bm[8]=true
end
end
aM=ag(2)T=T-1
al=al-1
if not aX[P]then
aX[P]=1
al=70
end
aG=(4-ao(w//20,4))*8
if w<=0 then
U=41
elseif al>0 then
U=aG+6
elseif w<aY then
T=35
U=aG+7
elseif T<=0 then
T=16
aF=aF%256+1
U=aG+a[13][1][aF]%3
end
aY=w
end
for b=#L,1,-1 do
y=L[b]_=a[18][y[1]]if ag(1)then
z=_[y[2]]y[2]=y[2]+4
else
z=_[y[2]+2]end
if z and z>0 then
ac[#ac+1]={z,1}end
if y[2]>=#_ then
Y(L,b)end
end
for b=1,32 do
aT(b,0)end
for b=#ac,1,-1 do
z=ac[b]aT(b+3,aV(ap((z[1]+12)//2),1,60))z[2]=z[2]+1
if z[2]>bg then
Y(ac,b)end
end
end
end
function onDraw()u=screen
local ak,n,C,ae=u.drawRectF,u.setColor,u.drawLine,u.drawText
aB=aB+1
if a[21]and not Z then
d=a[25][1]o,i=d[1],d[2]h,r=D-o/2,80-i/2
for f=0,o-1 do
v=h+f
for O=0,i-1 do
j=d[5+O+f*i]if j~=0 then
e=a[20][j]n(e[1],e[2],e[3])C(v,r+O,v,r+O+1)end
end
end
end
if not aM then
for b=1,#s do
d=s[b][2][1]aE=d>0 and bo or 1
d=a[17][abs(d)][1]d=a[23][d]o,i,aI=d[1],d[2],d[3]*.7
aR=aI*b_
h,r=D-(d[4]+160)*.7,B-(d[5]+148)*.7*b_
for f=0,o-1 do
v=h+f*aI
for O=0,i-1 do
j=d[7+O+f*i]if j~=0 then
e=a[20][j]n(e[1]*aE,e[2]*aE,e[3]*aE)ak(v,r+O*aR,aI,aR)end
end
end
end
end
if Z then
if aM then
n(0,0,0)ak(0,0,an,B)for b=1,#a[2]do
_=a[2][b]if _[8]then
J=au(aU(aW(sub(a[4][_[1]],A[1]),aZ)),{D,av})I=au(aU(aW(sub(a[4][_[2]],A[1]),aZ)),{D,av})if _[3]&4>0 then
n(50,50,50)else
n(t,t,t)end
C(J[1],J[2],I[1],I[2])end
end
n(t,t,t)_=a[19][10]for b=1,#_,4 do
ax=sin(A[3]-90)am=cos(A[3]-90)J={_[b]*am+_[b+1]*ax,_[b+1]*am-_[b]*ax}I={_[b+2]*am+_[b+3]*ax,_[b+3]*am-_[b+2]*ax}J=au(J,{D,av})I=au(I,{D,av})C(J[1],J[2],I[1],I[2])end
end
n(t,R>0 and 0 or t,0,R+M)ak(0,0,an,B)n(30,30,30)ak(0,B,an,32)n(5,5,5)ak(D-16,B,32,32)d=a[23][a[19][3][1]+(U)*a[19][3][3]]o,i=d[1],d[2]h=D-o/2
for b=0,o-1 do
for g=0,i-1 do
j=d[7+g+b*i]if j~=0 then
e=a[20][j]n(e[1],e[2],e[3])C(h+b,B+1+g,h+b,B+2+g)end
end
end
for b=1,3 do
if a[12][1][13+b]>0 then
h,r=221,125+b*8
d=a[23][a[19][3][4]+a[19][5][b]*a[19][3][3]]o,i=d[1],d[2]for g=0,o-1 do
for f=0,i-1 do
j=d[7+f+g*i]if j~=0 then
e=a[20][j]n(e[1],e[2],e[3])C(h+g,r+f,h+g,r+f+1)end
end
end
end
end
if at>0 then
ba=a[13][bk]h=0
r=0
for bn=1,#ba do
_=ba[bn]if _>0 then
d=a[23][_]o,i=d[1],d[2]v=h-d[4]X=r-d[5]for b=0,o-1 do
for g=0,i-1 do
j=d[7+g+b*i]if j~=0 then
e=a[20][j]n(e[1],e[2],e[3])C(v+b,X+g,v+b,X+g+1)end
end
end
h=h+o
else
h=h+4
end
end
end
as(124,K,aj(w).."%",16)as(218,K,aj(aL).."%",16)m(124-28-15,ad,"HEALTH")m(218-28-15,ad,"ARMOUR")m(2,K,"ROM:")m(26,K,ai)m(2,138,"TPS:")m(26,138,a[12][1][17])m(2,145,"DIF:")m(26,145,aj(ao(aD-3000,3)))m(2,ad,"LOD:")m(26,ad,aj(az))m(232,K,"BULL")m(232,138,"SHEL")m(232,145,"ROKT")m(232,ad,"CELL")for b=1,4 do
c=124+b*7
as(265,c,ap(a[12][1][b]),15)as(285,c,ap(a[19][17][b]),15)m(268,c,"/")end
else
ae(1,K,"ROM:")ae(26,K,ai)end
end
