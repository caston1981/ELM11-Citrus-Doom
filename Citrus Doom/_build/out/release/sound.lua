
ak=152
J=131
g=255
N=180
u=math
S=u.max
X=u.min
abs=u.abs
Y=u.floor
sqrt=u.sqrt
m=input.getNumber
ai=input.getBool
bi=output.setNumber
pi=u.pi
aY=false
U=true
aj=table.remove
am=string
function aI(c,o)return{(c[1]+o[1]),(c[2]+o[2])}end
function bB(c,o)return c[1]*o[2]-c[2]*o[1]end
function sub(c,o)return{(c[1]-o[1]),(c[2]-o[2])}end
function bh(c,o)return{c[1]*o,c[2]*o}end
function bP(c)return((c+N)%360)-N end
function sin(c)return u.sin(c/N*pi)end
function cos(c)return u.cos(c/N*pi)end
function tan(c)return u.tan(c/N*pi)end
function bM(c)return u.atan(c)*N/pi end
function bN(c)return u.atan(c[2],c[1])*N/pi end
function be(c,o,bK)return X(S(o,c),bK)end
function aJ(c)return Y(c+.5)end
function bE(c,o)return sqrt(((c[1]-o[1])^2)+((c[2]-o[2])^2))end
function bw(c)return{c[1],-c[2]}end
function bO(c)c=c-1
c=c|(c>>1)c=c|(c>>2)c=c|(c>>4)return c+1
end
a={}aw=1
D=3
an=aY
B={{0,0},0,0}ar=288
H=ar//2
G=128
aK=G//2
bq=1.2
bt={1,1}aV=1
ad=1
aR=500
s=100
bm=100
aZ=0
M=0
az=0
W=0
R=0
aT=3002
bo=32768
w={}bv=.05
C={}ap={}by=2
aa=35
ay=0
ae=0
aX=0
aM=0
aF=0
aB=0
L=1
aP=0
af=0
ao=0
ac=U
aL=0
aG=0
function bj(b,c)if b<bo then
P=a[7][b]return bj(P[0<bB({P[3],P[4]},sub(c,P))and 8 or 7],c)else
return b-bo
end
end
function bk(c)P=a[5][a[6][c][2]]return a[8][a[3][a[2][P[4]][P[5]+6]][6]]end
function aE(i,r,aD,aA)local F,k=y.drawLine,y.setColor
aD=aD..""
aA=a[19][aA]for b=#aD,1,-1 do
_=aA[am.byte(am.sub(aD,b,b))]i=i-aA[1]if _>0 then
d=a[23][_]p,h=d[1],d[2]x=i-d[4]+1
ah=r-d[5]for j=0,p-1 do
for f=0,h-1 do
l=d[7+f+j*h]if l~=0 then
e=a[20][l]k(e[1],e[2],e[3])F(x+j,ah+f,x+j,ah+f+1)end
end
end
end
end
end
function q(aq,as,au,n)n=n or{59,59,59}y.setColor(13,0,0)y.drawText(aq+1,as+1,au)y.setColor(n[1],n[2],n[3])y.drawText(aq,as,au)end
function onTick()aP=0
for j=1,3 do
if ai(9)and(not an)or not a[21]then
aO=property.getText(aw)b=1
v=""
_=am.sub(aO,b,b)while _~=""do
I=am.byte(_)if I>64 then
v=(v..I-65)+0
if L==1 then
bc=v
a[v]=a[v]or{}elseif L==2 then
bH=v
al=0
elseif L==3 then
aN=v
else
if al==0 then
al=bH
aN=aN-1
aW={}a[bc][#a[bc]+1]=aW
end
aW[#aW+1]=v
al=al-1
L=S(al,aN)>0 and L-1 or 0
end
L=L+1
v=""
else
v=v.._
end
b=b+1
_=am.sub(aO,b,b)end
aw=aw+1
an=aO==""
end
end
if an then
if m(10)>0 then
ac=U
D=m(10)end
aX=aX+1
a[12][1][aX%#a[12][1]+1]=aJ(m(11))af=a[12][1][17]if s<=0 then
if(D-3)%9==0 and D>5 and at[6]==5 then
if not aH then
M=aa*3600
av=((D-5)//9)+"episode end text start"
end
aH=U
aM=aM+1
end
end
if s>0 and not ac then
T={}ag[#ag+1]=T
ab=6
_=m(ab)while _~=0 do
z={}T[#T+1]=z
for b=0,8 do
z[b+1]=m(ab+b)end
ab=ab+9
_=m(ab)end
end
if ai(1)then
ay=ay+1
if ac then
for b=1,10 do
a[b]=a[b+10*D]end
D=D+1
for b=#a[1],1,-1 do
_=a[1][b]_=_[5]&(aT-3000)>0 or aj(a[1],b)end
for b=1,#a[8]do
a[8][b][8]={}end
for b=1,#a[6]do
_=bk(b)_[8][#_[8]+1]=b
end
ag={}end
M=M-1
if s>0 then
if Z~=m(1)and m(1)>0 then
w={}_={}_[1]=a[29][m(1)]_[2]=a[16][_[1][3]]bL=_[2][1]_[3]=0
w[1]=_
end
Z=m(1)ba=ai(3)if ba and Z==5 then
if ao<=0 then
ao=7
else
ba=false
end
end
ao=ao-1
if ba then
_=w[1]_[2]=a[16][_[1][4]]_[3]=-1
A=a[19][6][Z]if A>0 then
C[#C+1]={A,1}end
end
end
for b=#w,1,-1 do
_=w[b]if _[3]==0 then
if _[2][3]==4 then
if Z==5 and ao<5 then
bf=1
else
bf=0
end
w[#w+1]={_[1],a[16][_[1][5]+bf],2}end
end
_[3]=_[3]+1
if _[3]>=_[2][2]then
if _[2][4]>2 then
_[2]=a[16][_[2][4]]_[3]=0
else
aj(w,b)end
end
end
if ac then
W=50
M=aa*8
av=D-4+"map name text start"
end
ac=aY
R=S(R-4,0)R=be(R+(s-m(3)+aZ-m(4))*3,0,g)W=S(W-1.5,0)az=(a[12][1][18]>140 or a[12][1][18]>0 and ay%20<10)and 15 or 0
s=m(3)aZ,bg,bb,bn=m(4)if m(2)>0 and s>0 then
_=a[2][m(2)]if _ then
if _[4]==3008 then
bl=_[5]>0 and Y(_[5])bn=U
elseif _[4]>3004 then
aR=S(aR+3*(_[4]-3006),1)bb=U
elseif _[4]>3000 then
aT=_[4]bg=U
elseif _[4]>=14 and _[4]<=16 then
if a[12][1][_[4]]==0 then
M=aa*4
av=_[4]-14+"door text start"
end
end
end
end
aG=aG-1
if aG<1 then
aL=0
end
for b=1,#ag do
T=ag[b]for j=1,#T do
z=T[j]_=z[1]if _>(2^15)then
_=a[8][_-(2^15)]for f=1,6 do
_[f]=z[f+1]end
elseif _<0 then
I=a[1][-_]if I then
z=I[6]if a[16][z][5]>0 then
W=S(W,15)M=aa*4
av=a[16][z][5]C[#C+1]={"item pickup sound index",1}if I[4]then
bu=a[15][I[4]]if bu[29]=="light amp index" then
aL=1
aG=4200
end
if bu[29]=="computer area map index" then
for f=1,#a[2]do
a[2][f][8]=a[2][f][8]or 1
end
end
end
end
end
while-_>#a[1]do
a[1][#a[1]+1]=aY
end
aj(a[1],-_)else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for f=1,8 do
_[a[19][1][f]]=z[f+1]end
_[15]=0
end
end
end
ag={}_=a[1][1]B[3]=_[3]bd=((ay%64)/64)*360
aB=aB*.8+X(bE(_,B[1])^2/4,16)*.2
bx=cos(bd)*aB
bD=-abs(sin(bd)*aB)-(s>0 and 0 or 300)B[1]={_[1],_[2]}bG=bj(#a[7],B[1])at=bk(bG)B[2]=at[1]+41
bC=X(at[5]/g+aL,1)^1.3
for b=1,#at[8]do
_=a[6][at[8][b]]for j=_[2],_[1]+_[2]-1 do
bF=a[5][j]bA=a[2][bF[4]]bA[8]=2
end
end
bs=ai(2)if m(12)>0 and s>0 then
C[#C+1]={m(12),1}end
ae=ae-1
aF=aF-1
if not bt[Z]then
bt[Z]=1
aF=70
end
aQ=(4-X(s//20,4))*8
if s<=0 then
ad=41
elseif aF>0 then
ad=aQ+6
elseif s<bm then
ae=aa
ad=aQ+7
elseif ae<=0 then
ae=16
aV=aV%256+1
ad=aQ+a[13][1][aV]%3
end
bm=s
end
for b=#C,1,-1 do
A=C[b]_=a[18][A[1]]if ai(1)then
E=_[A[2]]A[2]=A[2]+4
else
E=_[A[2]+2]end
if E and E>0 then
ap[#ap+1]={E,1}end
if A[2]>=#_ then
aj(C,b)end
end
for b=1,32 do
bi(b,0)end
for b=#ap,1,-1 do
E=ap[b]bi(b+3,be(aJ((E[1]+12)//2),1,60))E[2]=E[2]+1
if E[2]>by then
aj(ap,b)end
end
end
end
function onDraw()y=screen
local V,k,F,au=y.drawRectF,y.setColor,y.drawLine,y.drawText
aP=aP+1
if a[21]and not an then
d=a[25][1]p,h=d[1],d[2]i,r=H-p/2,80-h/2
for f=0,p-1 do
x=i+f
for Q=0,h-1 do
l=d[5+Q+f*h]if l~=0 then
e=a[20][l]k(e[1],e[2],e[3])F(x,r+Q,x,r+Q+1)end
end
end
end
if not bs then
for b=1,#w do
d=w[b][2][1]aS=d>0 and bC or 1
d=a[17][abs(d)][1]d=a[23][d]p,h,t=d[1],d[2],d[3]*.7
bp=t*bq
i,r=H-(d[4]+160+bx)*.7,G-(d[5]+148+bD)*.7*bq
for f=0,p-1 do
x=i+f*t
for Q=0,h-1 do
l=d[7+Q+f*h]if l~=0 then
e=a[20][l]k(e[1]*aS,e[2]*aS,e[3]*aS)V(x,r+Q*bp,t,bp)end
end
end
end
end
if an then
if not aH then
if bs then
k(0,0,0)V(0,0,ar,G)for b=1,#a[2]do
_=a[2][b]if _[8]then
O=aI(bw(bh(sub(a[4][_[1]],B[1]),bv)),{H,aK})K=aI(bw(bh(sub(a[4][_[2]],B[1]),bv)),{H,aK})if _[8]==1 then
k(0,50,0)elseif _[3]&4>0 then
if _[4]==14 then
k(0,0,g)elseif _[4]==15 then
k(g,0,0)elseif _[4]==16 then
k(g,g,0)else
k(50,50,50)end
else
k(g,g,g)end
F(O[1],O[2],K[1],K[2])end
end
k(g,g,g)_=a[19][10]for b=1,#_,4 do
ax=sin(B[3]-90)aC=cos(B[3]-90)O={_[b]*aC+_[b+1]*ax,_[b+1]*aC-_[b]*ax}K={_[b+2]*aC+_[b+3]*ax,_[b+3]*aC-_[b+2]*ax}O=aI(O,{H,aK})K=aI(K,{H,aK})F(O[1],O[2],K[1],K[2])end
end
k((az>0 and 0 or g),((R>0 and az==0)and 0 or g),0,R+W+az)V(0,0,ar,G)k(30,30,30)V(0,G,ar,32)k(5,5,5)V(H-16,G,32,32)d=a[23]["face textures start"+(ad)*"number of sprite mipmap levels"]p,h=d[1],d[2]i=H-p/2
for b=0,p-1 do
for j=0,h-1 do
l=d[7+j+b*h]if l~=0 then
e=a[20][l]k(e[1],e[2],e[3])F(i+b,G+1+j,i+b,G+2+j)end
end
end
for b=1,3 do
if a[12][1][13+b]>0 then
i,r=221,125+b*8
d=a[23]["key textures start"+a[19][5][b]*"number of sprite mipmap levels"]p,h=d[1],d[2]for j=0,p-1 do
for f=0,h-1 do
l=d[7+f+j*h]if l~=0 then
e=a[20][l]k(e[1],e[2],e[3])F(i+j,r+f,i+j,r+f+1)end
end
end
end
end
else
d=a[22][a[19][3][((D-5)//9)+1]]t=d[3]p,h=d[1],d[2]for aq=0,ar+t,t do
for as=0,32*5+t,t do
l=d[6+((aq//t)%p)*h+((as//t)%h)]e=a[20][l]k(e[1],e[2],e[3])V(aq,as,t,t)end
end
end
if M>0 then
aU=a[13][av]if aH then
b_=3
r=3
br=X(#aU,aM//3)else
b_=0
r=0
br=#aU
end
i=b_
for bI=1,br do
_=aU[bI]if _>0 then
d=a[23][_]p,h=d[1],d[2]x=i-d[4]ah=r-d[5]for b=0,p-1 do
for j=0,h-1 do
l=d[7+j+b*h]if l~=0 then
e=a[20][l]k(e[1],e[2],e[3])F(x+b,ah+j,x+b,ah+j+1)end
end
end
i=i+p
elseif _==0 then
i=i+4
elseif _==-1 then
i=b_
r=r+9
end
end
end
if not aH then
aE(124,J,Y(s).."%",16)aE(218,J,Y(aZ).."%",16)q(124-28-15,ak,"HEALTH")q(218-28-15,ak,"ARMOUR")n=(af<aa and af>0)and{g,0,0}q(2,J,"TPS:",n)q(26,J,af>0 and af or "N/A",n)n=bg and{g,g,44}q(2,138,"DIF:",n)bJ={"EASY","MED","HARD"}q(26,138,bJ[Y(X(aT-3000,3))],n)n=bb and{g,g,44}q(2,145,"LOD:",n)q(26,145,Y(aR),n)n=bn and{g,g,44}q(2,ak,"TEX:",n)bz={"FULL","HALF"}q(26,ak,bl and bz[bl]or "OFF",n)q(232,J,"BULL")q(232,138,"SHEL")q(232,145,"ROKT")q(232,ak,"CELL")for b=1,4 do
c=124+b*7
aE(265,c,aJ(a[12][1][b]),15)aE(285,c,aJ(a[19][17][b]),15)q(268,c,"/")end
end
else
au(1,J,"ROM:")au(26,J,aw)end
end
