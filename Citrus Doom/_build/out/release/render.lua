cp=""

R=180
bQ=screen
bh=ipairs
bO=table
bS=nil
bX=input
bH=string.sub
w=math
E=w.max
q=w.min
x=w.abs
aG=w.floor
ceil=w.ceil
sqrt=w.sqrt
M=bX.getNumber
aM=bX.getBool
pi=w.pi
I=false
S=true
function aW(c,t)return c[1]*t[2]-c[2]*t[1]end
function sub(c,t)return{(c[1]-t[1]),(c[2]-t[2])}end
function bq(c)return((c+R)%360)-R end
function cos(c)return w.cos(c/R*pi)end
function tan(c)return w.tan(c/R*pi)end
function co(c)return w.atan(c)*R/pi end
function aK(c)return w.atan(c[2],c[1])*R/pi end
function az(c,t,_)return q(E(t,c),_)end
function al(c)return aG(c+.5)end
function br(c,t)return sqrt(((c[1]-t[1])^2)+((c[2]-t[2])^2))end
function bj(c)c=c-1
c=c|(c>>1)c=c|(c>>2)c=c|(c>>4)return c+1
end
b={}bi=1
aB=3
aO=I
ah=S
i={{0,0},0,0}L=288
H=L//2
bl=128
N=bl//2
aD={}ay=400
bC=100
cm=0
au={}aP=32768
by=3002
b_=0
aE=0
aU=0
bd=1.2
G=52
T=tan(G)aZ=N*bd*L/bl/T
U=1
bL={}for a=-H,H do bL[a]=aK({1,a/H*T})end
function bb(a)if a<aP then
local r,bf=b[7][a]bf=0<aW({r[3],r[4]},sub(i[1],r))and 8 or 7
bb(r[bf])bb(r[15-bf])else
aw[#aw+1]=a-aP
end
end
function aH(a,c)if a<aP then
r=b[7][a]return aH(r[0<aW({r[3],r[4]},sub(c,r))and 8 or 7],c)else
return a-aP
end
end
function bk(c)r=b[5][b[6][c][2]]return b[3][b[2][r[4]][r[5]+6]][6]end
function onTick()bo=0
for m=1,3 do
if aM(9)and(not aO)or not b[21]then
be=property.getText(bi..cp)if be~=cp then
a=1
s=cp
_=bH(be,a,a)while _~=cpor s~=cpdo
if _==","or _==cpthen
s=s+0
if U==1 then
bE=s
if b[s]==bS then
b[s]={}end
U=2
elseif U==2 then
ci=s
am=0
U=3
elseif U==3 then
bp=s
U=4
else
if am==0 then
am=ci
bp=bp-1
ai={}b[bE][#b[bE]+1]=ai
end
ai[#ai+1]=s
am=am-1
if E(am,bp)==0 then
U=1
end
end
s=cp
else
s=s.._
end
a=a+1
_=bH(be,a,a)end
bi=bi+1
else
aO=S
end
end
end
if aO then
ah=ah or aM(2)if bC>0 and not ah then
ae={}au[#au+1]=ae
as=5
_=M(as)while _~=0 do
X={}ae[#ae+1]=X
for a=0,8 do
X[a+1]=M(as+a)end
as=as+9
_=M(as)end
end
if aM(1)then
bI=0
bc=M(1)bC=M(3)aU=aU+1
if ah then
for a=1,10 do
b[a]=b[a+10*aB]end
aB=aB+1
end
if M(2)>0 then
_=b[2][M(2)]if _ then
if _[4]>3004 then
ay=E(ay+3*(_[4]-3006),1)elseif _[4]>3000 then
by=_[4]end
bI=M(2)end
end
if aM(3)and bc~=1 and bc~=3 then
aR=.1
aE=bc==5 and 5 or 3
else
aE=aE-1
if aE<1then
aR=0
end
end
for a=1,#au do
ae=au[a]for m=1,#ae do
X=ae[m]_=X[1]if _>(2^15)then
_=b[8][_-(2^15)]_[1]=X[2]_[2]=X[3]elseif _<0 then
while-_>#b[1]do
b[1][#b[1]+1]=I
end
bO.remove(b[1],-_)else
if not b[1][_]then
b[1][_]={}end
_=b[1][_]for g=1,8 do
_[b[19][1][g]]=X[g+1]end
_[15]=0
_[7]=aH(#b[7],_)_[8]=bk(_[7])end
end
end
au={}for a=1,#b[6]do
aD[a]={}end
for a=1,#b[1]do
_=b[1][a]if _ then
if ah then
_[7]=aH(#b[7],_)_[8]=bk(_[7])_[9]=b[8][_[8]][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
if _[4]==1 then
ce=a
end
end
bn=0
for m,d in bh({1,2,9})do
_[d]=_[d]+_[d+10]bn=bn+_[d+10]end
if bn~=0then
_[7]=aH(#b[7],_)_[8]=bk(_[7])end
_[15]=_[15]+1
_[20]=br(_,i[1])J=b[16][_[6]]if J~=bS then
if _[15]>=J[2]and J[2]~=-1 then
_[6]=J[4]_[15]=0
end
end
aD[_[7]][#aD[_[7]]+1]=a
end
end
ah=I
_=b[1][ce]i[1]={_[1],_[2]}i[2]=_[9]+41
i[3]=_[3]aw={}bb(#b[7])at={}n={}aj={}ac={}W={}aI={}aV=L
for a=0,L-1 do
at[a],ac[a],W[a]=#b[6]+2,N+1,-N
end
a=1
while a<=#aw and aV>0 do
_=b[6][aw[a]]aj[a]={}n[a]={}aI[a]=aD[aw[a]]bO.sort(aI[a],function(c,t)return b[1][c][20]>b[1][t][20]end)for m=_[2],_[1]+_[2]-1 do
V=b[5][m]F=b[2][V[4]]bD,bG=b[4][V[1]],b[4][V[2]]aN,bB=sub(bD,i[1]),sub(bG,i[1])bt=aK(aN)D,aQ=bq(bt-i[3]),bq(aK(bB)-i[3])if x(D)<90 or x(aQ)<90 then
ak,af=az(D,-G,G),az(aQ,-G,G)if x(D)>=90 or x(aQ)>=90 then
bN=aW(aN,bB)if x(D)>=90 then
if bN>0 then ak=-G else ak=G end
else
if bN<0 then af=-G else af=G end
end
end
j,k=al(tan(ak)/T*H),al(tan(af)/T*H)if j~=k then
p,ax=br(i[1],bD),br(i[1],bG)aJ=V[3]+90
bM=aJ-bt
cd=p*w.sin(bM/R*pi)aL=(p*cos(bM))if D~=ak then
p=aL/cos(aJ-(ak+i[3]))end
if aQ~=af then
ax=aL/cos(aJ-(af+i[3]))end
p,ax=p*cos(ak),ax*cos(af)g=V[5]+6
c_=(j>k)if c_ and F[g]~=0 then
aq=F[3]&4>0
if aq then
ad,Z=b[8][b[3][F[6]][6]],b[8][b[3][F[7]][6]]end
ag=b[3][F[g]]ca={ag[3],ag[4],ag[5]}K,bW,bT=b[8][ag[6]]for h,d in bh(ca)do
an=d>0
ao=S
if(an or(h==3 and not(bW and bT)))and(h==3 or aq)then
bK=I
bx=0
if h<3 then
bK=h==1 and E(ad[4],Z[4])==0
y,v=ad[3-h],Z[3-h]ao=(y<v)~=(h==2)~=(g==6)and y~=v and ad~=Z
y,v=q(y,v),E(y,v)if ao then
if h==1then
bW=S
else
bT=S
bx=F[3]&16>0 and E(ad[2],Z[2])-v or 0
end
end
else
if aq then
y,v=E(ad[1],Z[1]),q(ad[2],Z[2])ao=ad~=Z
else
y,v=K[1],K[2]end
end
y,v=y-i[2],v-i[2]bF,bw=y*aZ,v*aZ
if(ao or an)and not bK then
aS=V[6]-ag[1]if F[4]==48 then
aS=aS-aU
end
cl,cc=bF/p,bw/p
bZ,cj=bF/ax,bw/ax
bv=0
av=I
if an then
_=b[21][d][4]if(V[4]==bI or by==F[4])and _>0then
d=_
end
bu=b[21][d][3]o=1
if(h==3 and F[3]&16>0)or(h==1 and F[3]&8==0)then
o=-1
end
end
for g=j,k,-1 do
cf=bL[g]aA=(aJ-i[3])-cf
f=H-g
bJ=I
if f>=0 and f<=L-1 then
if a<at[f]then
aF=(g-j)/(k-j)C,A=(cl*(1-aF)+bZ*aF),(cc*(1-aF)+cj*aF)if x(A+C)-(A-C)<bl then
if an then
if C~=A then
bJ=S
bY=aL*tan(aA)B=q(((x(bY)+x(aL))//ay)+1,4)bs=q(bj(aG(B/cos(aA))),16)B=bj(B)aT=aG((E(bY-cd,0)-aS)/(bu*bs))*bs
bA={f,N-C,N-A,d,aT,v-y,K[5],ag[2]+bx,S,bu*B,B,o,not av,h==3 and aq}if aT>bv or(not av)or g==k then
bv=aT-1+bs
av=S
n[a][#n[a]+1]=bA
end
cb=bA
end
end
if ao then
if h~=2 then
if A<ac[f]then
aj[a][#aj[a]+1]={f,E(A,W[f]),ac[f],K,2}end
if h==3then ab=A else ab=C end
if ac[f]>ab then ac[f]=ab end
end
if h~=1 then
if C>W[f]then
aj[a][#aj[a]+1]={f,W[f],q(C,ac[f]),K,1}end
if h==3then ab=C else ab=A end
if W[f]<ab then W[f]=ab end
end
if(ac[f]<=W[f])or(h==3 and(not aq)and an)then
at[f]=a
aV=aV-1
end
end
end
end
end
if(not bJ)and av then
av=I
n[a][#n[a]+1]=cb
n[a][#n[a]][9]=I
end
end
if#n[a]>0 then
n[a][#n[a]][9]=I
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
function onDraw()aC=bQ
local bV,ba,ap,cn=aC.drawTriangleF,aC.drawRectF,aC.setColor,aC.drawText
bo=bo+1
if bo<=1 then
if aO then
e=b[24][b[19][8][aB-3]]Q,aa=e[1],e[2]u=L/ceil(Q*T)bP=u*1
for a=0,ceil(Q*T),1 do
j=(Q/2-a-1+i[3]/90*Q)%Q
k=(j%1-1)*u
j=aG(j)*aa
for m=0,aa-1,1 do
P=e[5+m+j]l=b[20][P]ap(l[1],l[2],l[3])ba(a*u+k,m*u,bP,bP)end
end
for a=#n,1,-1 do
for m=1,#n[a]do
d=n[a][m]if d[9]or d[13]then
if d[9]then
O=n[a][m+1]else
O=d
end
e=b[21][d[4]]o=d[12]Y=q(o,0)f=d[1]k=O[1]bR=d[2-Y]ch=O[2-Y]g=d[3+Y]bg=O[3+Y]if not O[9]then k=k+1 end
z=q(d[7]+aR,1)^2.2
ck=o*(d[2]-d[3])*d[10]/d[6]cg=o*(O[2]-O[3])*d[10]/O[6]ai=o>0 and q or E
bm=0
while g*o<bR*o and(bm<e[2]or not d[14])do
bz=ai(g+ck,bR)aX=ai(bg+cg,ch)P=e[6+((Y*d[11]+d[8]//e[3])%e[2])+e[2]*(d[5]%e[1])]l=b[20][P]if l then
ap(l[1]*z,l[2]*z,l[3]*z)bV(f,g,f,bz,k,aX)bV(f,g,k,bg,k,aX)end
g=bz
bg=aX
Y=Y+o
bm=bm+d[11]end
end
end
for m,d in bh(aj[a])do
K=d[4]if K[d[5]+2]~=0 then
e=b[22][K[d[5]+2]]f=d[1]z=q(K[5]+aR,1)^2.2
l=b[20][e[4]]ap(l[1]*z,l[2]*z,l[3]*z)bQ.drawLine(f,-d[3]+N-1,f,-d[2]+N)end
end
for m=1,#aI[a]do
_=b[1][aI[a][m]]if _[6]~=0 then
aN=sub(_,i[1])p=_[20]if p>1 then
D=bq(aK(aN)-i[3])p=p*cos(D)if x(D)<90 then
j=H-al(tan(D)/T*H)aA=al((R+D+i[3]-_[3])/360*8)J=b[16][_[6]][1]if J~=0 and _[6]~=1 then
e=b[17][x(J)][aA%8+1]if e==0 then
e=b[17][x(J)][1]end
o=e<0 and-1 or 1
e=x(e)if e>0 then
e=b[23][e]Q,aa=e[1],e[2]B=q(bj(p//ay+1),8)u=H/(T*p)ar=u*bd
C=N+(i[2]-_[9])/p*aZ
A=C-e[5]*ar
k=j-o*e[4]*u
u,ar=u*e[3],ar*e[3]z=J>0 and q(b[8][_[8]][5]+aR,1)^2.2 or 1
aY=u*B
bU=aY*bd
if _[4]and b[15][_[4]][23]&8>0 then
for g=0,Q-1,B do
j=k+g*u*o
if a<=at[az(al(j),0,L-1)]then
for h=0,aa-1,B do
P=e[7+h+g*aa]if P~=0 then
b_=b_%50+1
ap(0,0,0,q(75*b[13][2][b_],255))ba(j,A+h*ar,aY,bU)end
end
end
end
else
for g=0,Q-1,B do
j=k+g*u*o
if a<=at[az(al(j),0,L-1)]then
for h=0,aa-1,B do
P=e[7+h+g*aa]if P~=0 then
l=b[20][P]ap(l[1]*z,l[2]*z,l[3]*z)ba(j,A+h*ar,aY,bU)end
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
end
end
end
