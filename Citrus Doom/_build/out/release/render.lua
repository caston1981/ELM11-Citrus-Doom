
z=math
x=z.max
r=z.min
E=z.abs
ak=z.floor
ceil=z.ceil
sqrt=z.sqrt
K=input.getNumber
bz=input.getBool
pi=z.pi/180
bo=false
R=true
az=ipairs
cg=table.remove
be=string
function bl(b,p)return b[1]*p[2]-b[2]*p[1]end
function sub(b,p)return{(b[1]-p[1]),(b[2]-p[2])}end
function bh(b)return((b+180)%360)-180 end
function sin(b)return z.sin(b*pi)end
function cos(b)return z.cos(b*pi)end
function tan(b)return z.tan(b*pi)end
function cR(b)return z.atan(b)/pi end
function aK(b)return z.atan(b[2],b[1])/pi end
function by(b,p,_)return r(x(p,b),_)end
function ar(b)return ak(b+.5)end
function aS(b,p)return sqrt(((b[1]-p[1])^2)+((b[2]-p[2])^2))end
function bW(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
function aL(b)t=r(b/255+ce,1)^2.2 end
c={}bA=1
am=3
aA=R
l={{0,0},0}D=0
P=288
C=144
af=128
v=64
aV={}aF=500
cn=250
cd=1
cQ=0
aJ=2^15
bk=3002
bx=0
aY=0
ao=0
bt=1.2
N=52
L=tan(N)aN=v*bt*P/af/L
S=1
bM={}for a=-C,C do bM[a]=aK({1,a/C*L})end
function ba(a)if a<aJ then
local u,bv=c[7][a]bv=0<bl({u[3],u[4]},sub(l[1],u))and 8 or 7
ba(u[bv])ba(u[15-bv])else
aw[#aw+1]=a-aJ
end
end
function aW(a,b)if a<aJ then
u=c[7][a]return aW(u[0<bl({u[3],u[4]},sub(b,u))and 8 or 7],b)else
return a-aJ
end
end
function bp(b)u=c[5][c[6][b][2]]return aI[c[3][c[2][u[4]][u[5]+6]][6]]end
function onTick()bg=0
for n=1,3 do
if bz(9)and(not bb)or not c[21]then
bq=property.getText(bA)a=1
A=""
_=be.sub(bq,a,a)while _~=""do
cp=be.byte(_)if cp>64 then
A=(A..cp-65)+0
if S==1 then
cl=A
c[A]=c[A]or{}elseif S==2 then
cC=A
ax=0
elseif S==3 then
bj=A
else
if ax==0 then
ax=cC
bj=bj-1
bw={}c[cl][#c[cl]+1]=bw
end
bw[#bw+1]=A
ax=ax-1
S=x(ax,bj)>0 and S-1 or 0
end
S=S+1
A=""
else
A=A.._
end
a=a+1
_=be.sub(bq,a,a)end
bA=bA+1
bb=bq==""
end
end
if bb then
if K(10)>0 then
aA=R
am=K(10)end
if cd>0 and not aA then
ae={}av[#av+1]=ae
au=6
_=K(au)while _~=0 do
aj={}ae[#ae+1]=aj
for a=0,8 do
aj[a+1]=K(au+a)end
au=au+9
_=K(au)end
end
if bz(1)then
cj=0
bE=K(1)cd=K(3)ao=ao+1
bF=ao//10
if aA then
for a=1,10 do
c[a]=c[a+10*am]end
k=c[1]cP={k[1][1],k[1][2]}for a=#k,1,-1 do
_=k[a]_=_[5]&(bk-3000)>0 or cg(k,a)end
aI=c[8]av={}am=am+1
end
if K(2)>0 then
_=c[2][K(2)]if _ then
b=_[4]if b>0 then
if b==3008 then
aD=_[5]>0 and _[5]elseif b>3004 then
aF=x(aF+3*(_[4]-3006),1)cn=aF/2
elseif b>3000 then
bk=_[4]end
cj=K(2)if b<3000 and c[9][_[5]][7]==0 then
_[8]=1
end
end
end
end
if bz(3)and bE~=1 and bE~=3 then
ce=.1
aY=5
else
aY=aY-1
if aY<1 then
ce=0
end
end
for a=1,#av do
ae=av[a]for n=1,#ae do
aj=ae[n]_=aj[1]if _>(2^15)then
_=aI[_-(2^15)]for g=1,6 do
_[g]=aj[g+1]end
elseif _<0 then
while-_>#k do
k[#k+1]=bo
end
cg(k,-_)else
if not k[_]then
k[_]={}end
_=k[_]for g=1,8 do
_[c[19][1][g]]=aj[g+1]end
_[15]=0
_[7]=aW(#c[7],_)_[8]=bp(_[7])end
end
end
av={}for a=1,#c[6]do
aV[a]={}end
for a,_ in az(k)do
if aA then
_[7]=aW(#c[7],_)_[8]=bp(_[7])_[9]=_[8][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
end
if _ and a>1 then
bs=0
for n,d in az({1,2,9})do
_[d]=_[d]+_[d+10]bs=bs+_[d+10]end
if bs~=0 then
_[7]=aW(#c[7],_)_[8]=bp(_[7])end
_[15]=_[15]+1
_[20]=aS(_,l[1])M=c[16][_[6]]if M~=nil then
if M[5]>0 then
_[9]=_[8][1]end
if _[15]>=M[2]and M[2]~=-1 then
_[6]=M[4]_[15]=0
end
end
aV[_[7]][#aV[_[7]]+1]=a
end
end
_,aA=k[1]ct=r(aS(_,l[1])^2/4,16)l[1]={_[1],_[2]}D=_[3]cS=_[9]+1
l[2]=_[9]+41+ct*sin(ao*20)/4
aw={}ba(#c[7])aG={}s={}aE={}aR={}X={}Y={}aO={}bn=P
for a=0,P-1 do
aG[a],X[a],Y[a]=#c[6]+2,v+1,-v
end
a=1
while a<=#aw and bn>0 do
_=c[6][aw[a]]aE[a]={}aR[a]={}s[a]={}aO[a]=aV[aw[a]]table.sort(aO[a],function(b,p)return k[b][20]>k[p][20]end)for n=_[2],_[1]+_[2]-1 do
V=c[5][n]H=c[2][V[4]]bT,ck=c[4][V[1]],c[4][V[2]]aM,ci=sub(bT,l[1]),sub(ck,l[1])bR=aK(aM)I,aQ=bh(bR-D),bh(aK(ci)-D)if E(I)<90 or E(aQ)<90 then
ac,al=by(I,-N,N),by(aQ,-N,N)if E(I)>=90 or E(aQ)>=90 then
c_=bl(aM,ci)if E(I)>=90 then
if c_>0 then ac=-N else ac=N end
else
if c_<0 then al=-N else al=N end
end
end
o,m=ar(tan(ac)/L*C),ar(tan(al)/L*C)if o~=m then
q,ay=aS(l[1],bT),aS(l[1],ck)aU=V[3]+90
cm=aU-bR
cH=q*sin(cm)aZ=(q*cos(cm))if I~=ac then
q=aZ/cos(aU-(ac+D))end
if aQ~=al then
ay=aZ/cos(aU-(al+D))end
q,ay=q*cos(ac),ay*cos(al)g=V[5]+6
cx=(o>m)if cx and H[g]~=0 then
aq=H[3]&4>0
if aq then
T=aI[c[3][H[13-g]][6]]end
ag=c[3][H[g]]cN={ag[3],ag[4],ag[5]}j,bN,cf=aI[ag[6]]for h,d in az(cN)do
ah=d>0
ai=R
if(ah or(h==3 and not(bN and cf)))and(h==3 or aq)then
bZ,bQ=0
if h<3 then
bQ=h==1 and x(j[4],T[4])==0
F,y=j[3-h],(h==1 and x or r)(T[3-h],j[h])ai=(F<y)==(h==2)and F~=y and j~=T
ah=ai
F,y=r(F,y),x(F,y)if ai then
if h==1 then
bN=R
else
cf=R
bZ=H[3]&16>0 and x(j[2],T[2])-y or 0
end
end
else
if aq then
F,y=r(x(j[1],T[1]),j[2]),x(r(j[2],T[2]),j[1])ai=j~=T
else
F,y=j[1],j[2]end
end
F,y=F-l[2],y-l[2]ca,bV=F*aN,y*aN
if(ai or ah)and not bQ then
bu=V[6]-ag[1]if H[4]==48 then
bu=bu-ao
end
cO,cM=ca/q,bV/q
cJ,cK=ca/ay,bV/ay
bD,aB=0
if ah then
_=c[21][d][4]if(V[4]==cj or bk==H[4]or H[8])and _>0 then
d=_
end
aC=c[21][d][3]w=1
if(h==3 and H[3]&16>0)or(h==1 and H[3]&8==0)then
w=-1
end
end
for g=o,m,-1 do
cu=bM[g]br=(aU-D)-cu
f,bS=C-g
if f>=0 and f<=P-1 then
if a<aG[f]then
aT=(g-o)/(m-o)J,G=(cO*(1-aT)+cJ*aT),(cM*(1-aT)+cK*aT)if E(G+J)-(G-J)<af then
if ah then
if J~=G then
bS=R
bJ=aZ*tan(br)ap=bW(r(((E(bJ)+E(aZ))//cn)+1,16))cq=ak((x(bJ-cH,0)-bu)/(aC*ap))bI=cq*ap
bG={f,v-J,v-G,d,cq,y-F,j[5],ag[2]+bZ,R,aC*ap,ap,w,not aB,h==3 and aq}if bI>bD or(not aB)or g==m then
bD=bI-1+ap
aB=R
s[a][#s[a]+1]=bG
end
cy=bG
end
end
if ai then
if h~=2 then
if G<X[f]then
aR[a][#aR[a]+1]={f,x(G,Y[f]),X[f],j}end
if h==3 then Z=G else Z=J end
if X[f]>Z then X[f]=Z end
end
if h~=1 then
if J>Y[f]then
aE[a][#aE[a]+1]={f,Y[f],r(J,X[f]),j}end
if h==3 then Z=J else Z=G end
if Y[f]<Z then Y[f]=Z end
end
if(X[f]<=Y[f])or(h==3 and(not aq)and ah)then
aG[f]=a
bn=bn-1
end
end
end
end
end
if(not bS)and aB then
s[a][#s[a]+1],aB=cy
s[a][#s[a]][9]=bo
end
end
if#s[a]>0 then
s[a][#s[a]][9]=bo
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
function onDraw()aH=screen
local bL,bH,ab,bU=aH.drawTriangleF,aH.drawRectF,aH.setColor,aH.drawLine
cA={aE,aR}if bb then
e=c[24][c[19][8][am-3]]U,as=e[1],e[2]B=P/ceil(U*L)bX=B*1
for a=0,ceil(U*L),1 do
o=(U/2-a-1+D/90*U)%U
m=(o%1-1)*B
o=ak(o)*as
for n=0,as-1,1 do
O=e[5+n+o]i=c[20][O]ab(i[1],i[2],i[3])bH(a*B+m,n*B,bX,bX)end
end
for a=#s,1,-1 do
for n=1,#s[a]do
d=s[a][n]if d[9]or d[13]then
if d[9]then
Q=s[a][n+1]else
Q=d
end
e=c[21][d[4]]e=c[21][d[4]+(bF%e[5])*"number of wall mipmap levels"+c[19][12][d[11]]]w=d[12]W=r(w,0)f=d[1]m=Q[1]bB=d[2-W]cr=Q[2-W]g=d[3+W]bc=Q[3+W]if not Q[9]then m=m+1 end
aL(d[7])cI=w*(d[2]-d[3])*e[3]/d[6]cs=w*(Q[2]-Q[3])*e[3]/Q[6]bC=w>0 and r or x
bd=0
while g*w<bB*w and(bd<e[2]or not d[14])do
cb=bC(g+cI,bB)bi=bC(bc+cs,cr)O=e[7+((W+d[8]//e[3])%e[2])+e[2]*((d[5])%e[1])]i=c[20][O]if i then
ab(i[1]*t,i[2]*t,i[3]*t)bL(f,g,f,cb,m,bi)bL(f,g,m,bc,m,bi)end
g=cb
bc=bi
W=W+w
bd=bd+1
end
end
end
for b=1,2 do
_=cA[b]bP={}at,an,bm=af,-af
for n,d in az(_[a])do
at=r(at,d[2])an=x(an,d[3])bm=d
e=c[22][d[4][b+2]]if e and not aD then
aL(d[4][5])i=c[20][e[5]]ab(i[1]*t,i[2]*t,i[3]*t)bU(d[1],v-d[2],d[1],ak(v-d[3]-1))end
end
if bm and aD then
j=bm[4]cD=(j[b]-l[2])b_=cos(D)bf=sin(D)for aa=ak(at+v),ceil(an+v)do
ad=aN*cD/(v-aa)bK=b_*ad-l[1][1]bY=bf*ad-l[1][2]bO=-bf*ad+bK
ch=b_*ad+bY
cw=bf*ad+bK
cv=-b_*ad+bY
cz=(cw-bO)/P
cL=(cv-ch)/P
bP[aa]={cz,cL,bO,ch}end
for n,d in az(_[a])do
if j[b+2]~=0 then
f=d[1]if f%aD==0 then
aL(j[5])p=j[b+2]e=c[22][p]e=c[22][p+(bF%e[4])]co=C-(C-f)*L
at,an=ak(d[2]+v),ceil(d[3]+v)aC=e[3]for aa=at,an do
aX=bP[aa]cE=(aX[3]+aX[1]*co)//aC
cF=(aX[4]+aX[2]*co)//aC
O=6+(cF%e[1])+e[1]*(cE%e[2])i=c[20][e[O]]if i then
ab(i[1]*t,i[2]*t,i[3]*t)bU(f,af-aa,f+aD+1,af-aa)end
end
end
end
end
end
end
for n=1,#aO[a]do
_=k[aO[a][n]]if _[6]~=0 then
aM=sub(_,l[1])q=_[20]if q>1 then
I=bh(aK(aM)-D)q=q*cos(I)if E(I)<90 then
o=C-ar(tan(I)/L*C)br=ar((180+I+D-_[3]+bg*4)/360*8)M=c[16][_[6]][1]if M~=0 and _[6]~=1 then
e=c[17][E(M)][br%8+1]w=e<0 and-1 or 1
e=E(e)if e>0 then
e=c[23][e+c[19][12][r(bW(q//aF+1),8)]]U,as=e[1],e[2]B=C/(L*q)aP=B*bt
J=v+(l[2]-_[9])/q*aN
G=J-e[5]*aP
m=o-w*e[4]*B
B,aP=B*e[3],aP*e[3]aL(_[8][5])t=M>0 and t or 1
cc=B
cG=cc*bt
cB=_[4]and c[15][_[4]][23]&8>0
for g=0,U-1 do
o=m+g*B*w
if a<=aG[by(ar(o),0,P-1)]then
for h=0,as-1 do
O=e[7+h+g*as]if O~=0 then
if cB then
bx=bx%50+1
ab(0,0,0,r(75*c[13][2][bx],255))else
i=c[20][O]ab(i[1]*t,i[2]*t,i[3]*t)end
bH(o,G+h*aP,cc,cG)end
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
bg=bg+1
end
