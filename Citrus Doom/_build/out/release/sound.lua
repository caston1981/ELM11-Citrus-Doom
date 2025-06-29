
aj=152
I=131
h=255
N=180
v=math
Y=v.max
X=v.min
abs=v.abs
Q=v.floor
sqrt=v.sqrt
m=input.getNumber
ar=input.getBool
br=output.setNumber
pi=v.pi
aZ=false
R=true
an=table.remove
ah=string
function aE(c,o)return{(c[1]+o[1]),(c[2]+o[2])}end
function bI(c,o)return c[1]*o[2]-c[2]*o[1]end
function sub(c,o)return{(c[1]-o[1]),(c[2]-o[2])}end
function bd(c,o)return{c[1]*o,c[2]*o}end
function bN(c)return((c+N)%360)-N end
function sin(c)return v.sin(c/N*pi)end
function cos(c)return v.cos(c/N*pi)end
function tan(c)return v.tan(c/N*pi)end
function bP(c)return v.atan(c)*N/pi end
function bQ(c)return v.atan(c[2],c[1])*N/pi end
function bv(c,o,bz)return X(Y(o,c),bz)end
function ay(c)return Q(c+.5)end
function bE(c,o)return sqrt(((c[1]-o[1])^2)+((c[2]-o[2])^2))end
function bh(c)return{c[1],-c[2]}end
function bM(c)c=c-1
c=c|(c>>1)c=c|(c>>2)c=c|(c>>4)return c+1
end
a={}aG=1
D=3
ak=aZ
B={{0,0},0,0}ag=288
G=ag//2
F=128
ax=F//2
bn=1.2
bl={1,1}aW=1
as=1
aV=500
s=100
be=100
aY=0
M=0
aw=0
aK=0
T=0
V=0
aX=3002
bi=32768
x={}bs=.05
z={}ae={}bK=2
S=35
aH=0
au=0
aR=0
bb=0
aI=0
aB=0
L=1
b_=0
ab=0
ac=0
ai=R
ba=0
aF=0
function bq(b,c)if b<bi then
J=a[7][b]return bq(J[0<bI({J[3],J[4]},sub(c,J))and 8 or 7],c)else
return b-bi
end
end
function bm(c)J=a[5][a[6][c][2]]return a[8][a[3][a[2][J[4]][J[5]+6]][6]]end
function aC(i,r,aA,aL)local H,l=w.drawLine,w.setColor
aA=aA..""
aL=a[19][aL]for b=#aA,1,-1 do
_=aL[ah.byte(ah.sub(aA,b,b))]i=i-aL[1]if _>0 then
d=a[23][_]p,g=d[1],d[2]y=i-d[4]+1
af=r-d[5]for j=0,p-1 do
for f=0,g-1 do
k=d[7+f+j*g]if k~=0 then
e=a[20][k]l(e[1],e[2],e[3])H(y+j,af+f,y+j,af+f+1)end
end
end
end
end
end
function q(aq,am,al,n)n=n or{59,59,59}w.setColor(13,0,0)w.drawText(aq+1,am+1,al)w.setColor(n[1],n[2],n[3])w.drawText(aq,am,al)end
function onTick()b_=0
for j=1,3 do
if ar(9)and(not ak)or not a[21]then
aT=property.getText(aG)b=1
u=""
_=ah.sub(aT,b,b)while _~=""do
O=ah.byte(_)if O>64 then
u=(u..O-65)+0
if L==1 then
bg=u
a[u]=a[u]or{}elseif L==2 then
by=u
at=0
elseif L==3 then
aS=u
else
if at==0 then
at=by
aS=aS-1
aP={}a[bg][#a[bg]+1]=aP
end
aP[#aP+1]=u
at=at-1
L=Y(at,aS)>0 and L-1 or 0
end
L=L+1
u=""
else
u=u.._
end
b=b+1
_=ah.sub(aT,b,b)end
aG=aG+1
ak=aT==""
end
end
if ak then
if m(10)>0 then
ai=R
D=m(10)end
aR=aR+1
a[12][1][aR%#a[12][1]+1]=ay(m(11))ab=a[12][1][17]if s<=0 then
if(D-3)%9==0 and D>5 and ap[6]==5 then
if not av then
M=S*3600
az=((D-5)//9)+"episode end text start"
end
av=R
bb=bb+1
end
end
if s>0 and not ai then
Z={}ad[#ad+1]=Z
ao=6
_=m(ao)while _~=0 do
C={}Z[#Z+1]=C
for b=0,8 do
C[b+1]=m(ao+b)end
ao=ao+9
_=m(ao)end
end
if ar(1)then
aH=aH+1
if ai then
for b=1,10 do
a[b]=a[b+10*D]end
D=D+1
for b=#a[1],1,-1 do
_=a[1][b]_=_[5]&(aX-3000)>0 or an(a[1],b)end
for b=1,#a[8]do
a[8][b][8]={}end
for b=1,#a[6]do
_=bm(b)_[8][#_[8]+1]=b
end
ad={}end
M=M-1
if s>0 then
if aa~=m(1)and m(1)>0 then
x={}_={}_[1]=a[29][m(1)]_[2]=a[16][_[1][3]]bO=_[2][1]_[3]=0
x[1]=_
end
aa=m(1)aN=ar(3)if aN and aa==5 then
if ac<=0 then
ac=7
else
aN=false
end
end
ac=ac-1
if aN then
_=x[1]_[2]=a[16][_[1][4]]_[3]=-1
E=a[19][6][aa]if E>0 then
z[#z+1]={E,1}end
end
end
for b=#x,1,-1 do
_=x[b]if _[3]==0 then
if _[2][3]==4 then
if aa==5 and ac<5 then
bf=1
else
bf=0
end
x[#x+1]={_[1],a[16][_[1][5]+bf],2}end
end
_[3]=_[3]+1
if _[3]>=_[2][2]then
if _[2][4]>2 then
_[2]=a[16][_[2][4]]_[3]=0
else
an(x,b)end
end
end
if ai then
T=50
M=S*8
az=D-4+"map name text start"
end
ai=aZ
V=Y(V-4,0)V=bv(V+(s-m(3)+aY-m(4))*3,0,h)T=Y(T-1.5,0)aw=(a[12][1][18]>140 or aK>0 or a[12][1][18]>0 and aH%20<10)and 10 or 0
aK=aK-1
s=m(3)aY,bp,bk,bj=m(4)if m(2)>0 and s>0 then
_=a[2][m(2)]if _ then
if _[4]==3008 then
bx=_[5]>0 and Q(_[5])bj=R
elseif _[4]>3004 then
aV=Y(aV+3*(_[4]-3006),1)bk=R
elseif _[4]>3000 then
aX=_[4]bp=R
elseif _[4]>=14 and _[4]<=16 then
if a[12][1][_[4]]==0 then
M=S*4
az=_[4]-14+"door text start"
end
end
end
end
aF=aF-1
if aF<1 then
ba=0
end
for b=1,#ad do
Z=ad[b]for j=1,#Z do
C=Z[j]_=C[1]if _>(2^15)then
_=a[8][_-(2^15)]for f=1,6 do
_[f]=C[f+1]end
elseif _<0 then
O=a[1][-_]if O then
C=O[6]if a[16][C][5]>0 then
T=Y(T,15)M=S*4
az=a[16][C][5]z[#z+1]={"item pickup sound index",1}if O[4]then
aQ=a[15][O[4]]if aQ[29]=="light amp index" then
ba=1
aF=4200
end
if aQ[29]=="computer area map index" then
for f=1,#a[2]do
a[2][f][8]=a[2][f][8]or 1
end
end
if aQ[25]=="rad suit index" then
aK=20
end
end
end
end
while-_>#a[1]do
a[1][#a[1]+1]=aZ
end
an(a[1],-_)else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for f=1,8 do
_[a[19][1][f]]=C[f+1]end
_[15]=0
end
end
end
ad={}_=a[1][1]B[3]=_[3]bt=((aH%64)/64)*360
aB=aB*.8+X(bE(_,B[1])^2/4,16)*.2
bF=cos(bt)*aB
bG=-abs(sin(bt)*aB)-(s>0 and 0 or 300)B[1]={_[1],_[2]}bC=bq(#a[7],B[1])ap=bm(bC)B[2]=ap[1]+41
bA=X(ap[5]/h+ba,1)^1.3
for b=1,#ap[8]do
_=a[6][ap[8][b]]for j=_[2],_[1]+_[2]-1 do
bB=a[5][j]bJ=a[2][bB[4]]bJ[8]=2
end
end
bo=ar(2)if m(12)>0 and s>0 then
z[#z+1]={m(12),1}end
au=au-1
aI=aI-1
if not bl[aa]then
bl[aa]=1
aI=70
end
aU=(4-X(s//20,4))*8
if s<=0 then
as=41
elseif aI>0 then
as=aU+6
elseif s<be then
au=S
as=aU+7
elseif au<=0 then
au=16
aW=aW%256+1
as=aU+a[13][1][aW]%3
end
be=s
end
for b=#z,1,-1 do
E=z[b]_=a[18][E[1]]if ar(1)then
A=_[E[2]]E[2]=E[2]+4
else
A=_[E[2]+2]end
if A and A>0 then
ae[#ae+1]={A,1}end
if E[2]>=#_ then
an(z,b)end
end
for b=1,32 do
br(b,0)end
for b=#ae,1,-1 do
A=ae[b]br(b+3,bv(ay((A[1]+12)//2),1,60))A[2]=A[2]+1
if A[2]>bK then
an(ae,b)end
end
end
end
function onDraw()w=screen
local U,l,H,al=w.drawRectF,w.setColor,w.drawLine,w.drawText
b_=b_+1
if a[21]and not ak then
d=a[25][1]p,g=d[1],d[2]i,r=G-p/2,80-g/2
for f=0,p-1 do
y=i+f
for W=0,g-1 do
k=d[5+W+f*g]if k~=0 then
e=a[20][k]l(e[1],e[2],e[3])H(y,r+W,y,r+W+1)end
end
end
end
if not bo then
for b=1,#x do
d=x[b][2][1]aO=d>0 and bA or 1
d=a[17][abs(d)][1]d=a[23][d]p,g,t=d[1],d[2],d[3]*.7
bu=t*bn
i,r=G-(d[4]+160+bF)*.7,F-(d[5]+148+bG)*.7*bn
for f=0,p-1 do
y=i+f*t
for W=0,g-1 do
k=d[7+W+f*g]if k~=0 then
e=a[20][k]l(e[1]*aO,e[2]*aO,e[3]*aO)U(y,r+W*bu,t,bu)end
end
end
end
end
if ak then
if not av then
if bo then
l(0,0,0)U(0,0,ag,F)for b=1,#a[2]do
_=a[2][b]if _[8]then
K=aE(bh(bd(sub(a[4][_[1]],B[1]),bs)),{G,ax})P=aE(bh(bd(sub(a[4][_[2]],B[1]),bs)),{G,ax})if _[8]==1 then
l(0,50,0)elseif _[3]&4>0 then
if _[4]==14 then
l(0,0,h)elseif _[4]==15 then
l(h,0,0)elseif _[4]==16 then
l(h,h,0)else
l(50,50,50)end
else
l(h,h,h)end
H(K[1],K[2],P[1],P[2])end
end
l(h,h,h)_=a[19][10]for b=1,#_,4 do
aJ=sin(B[3]-90)aD=cos(B[3]-90)K={_[b]*aD+_[b+1]*aJ,_[b+1]*aD-_[b]*aJ}P={_[b+2]*aD+_[b+3]*aJ,_[b+3]*aD-_[b+2]*aJ}K=aE(K,{G,ax})P=aE(P,{G,ax})H(K[1],K[2],P[1],P[2])end
end
l((aw>0 and 0 or h),((V>0 and aw==0)and 0 or h),0,V+T+aw)U(0,0,ag,F)l(30,30,30)U(0,F,ag,32)l(5,5,5)U(G-16,F,32,32)d=a[23]["face textures start"+(as)*"number of sprite mipmap levels"]p,g=d[1],d[2]i=G-p/2
for b=0,p-1 do
for j=0,g-1 do
k=d[7+j+b*g]if k~=0 then
e=a[20][k]l(e[1],e[2],e[3])H(i+b,F+1+j,i+b,F+2+j)end
end
end
for b=1,3 do
if a[12][1][13+b]>0 then
i,r=221,125+b*8
d=a[23]["key textures start"+a[19][5][b]*"number of sprite mipmap levels"]p,g=d[1],d[2]for j=0,p-1 do
for f=0,g-1 do
k=d[7+f+j*g]if k~=0 then
e=a[20][k]l(e[1],e[2],e[3])H(i+j,r+f,i+j,r+f+1)end
end
end
end
end
else
d=a[22][a[19][3][((D-5)//9)+1]]t=d[3]p,g=d[1],d[2]for aq=0,ag+t,t do
for am=0,32*5+t,t do
k=d[6+((aq//t)%p)*g+((am//t)%g)]e=a[20][k]l(e[1],e[2],e[3])U(aq,am,t,t)end
end
end
if M>0 then
aM=a[13][az]if av then
bc=3
r=3
bw=X(#aM,bb//3)else
bc=0
r=0
bw=#aM
end
i=bc
for bH=1,bw do
_=aM[bH]if _>0 then
d=a[23][_]p,g=d[1],d[2]y=i-d[4]af=r-d[5]for b=0,p-1 do
for j=0,g-1 do
k=d[7+j+b*g]if k~=0 then
e=a[20][k]l(e[1],e[2],e[3])H(y+b,af+j,y+b,af+j+1)end
end
end
i=i+p
elseif _==0 then
i=i+4
elseif _==-1 then
i=bc
r=r+9
end
end
end
if not av then
aC(124,I,Q(s).."%",16)aC(218,I,Q(aY).."%",16)q(124-28-15,aj,"HEALTH")q(218-28-15,aj,"ARMOUR")n=(ab<S and ab>0)and{h,0,0}q(2,I,"TPS:",n)q(26,I,ab>0 and ab or "N/A",n)n=bp and{h,h,44}q(2,138,"DIF:",n)bD={"EASY","MED","HARD"}q(26,138,bD[Q(X(aX-3000,3))],n)n=bk and{h,h,44}q(2,145,"LOD:",n)q(26,145,Q(aV),n)n=bj and{h,h,44}q(2,aj,"TEX:",n)bL={"FULL","HALF"}q(26,aj,bx and bL[bx]or "OFF",n)q(232,I,"BULL")q(232,138,"SHEL")q(232,145,"ROKT")q(232,aj,"CELL")for b=1,4 do
c=124+b*7
aC(265,c,ay(a[12][1][b]),15)aC(285,c,ay(a[19][17][b]),15)q(268,c,"/")end
end
else
al(1,I,"ROM:")al(26,I,aG)end
end
