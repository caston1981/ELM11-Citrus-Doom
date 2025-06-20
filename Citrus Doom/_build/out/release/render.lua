
x=math
t=x.max
q=x.min
B=x.abs
ab=x.floor
ceil=x.ceil
sqrt=x.sqrt
J=input.getNumber
bw=input.getBool
pi=x.pi/180
be=false
M=true
au=ipairs
ch=table.remove
bC=string
function bo(b,n)return b[1]*n[2]-b[2]*n[1]end
function sub(b,n)return{(b[1]-n[1]),(b[2]-n[2])}end
function bm(b)return((b+180)%360)-180 end
function sin(b)return x.sin(b*pi)end
function cos(b)return x.cos(b*pi)end
function tan(b)return x.tan(b*pi)end
function cO(b)return x.atan(b)/pi end
function aT(b)return x.atan(b[2],b[1])/pi end
function bj(b,n,_)return q(t(n,b),_)end
function ax(b)return ab(b+.5)end
function aO(b,n)return sqrt(((b[1]-n[1])^2)+((b[2]-n[2])^2))end
function bM(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
function aY(b)s=q(b/255+aU,1)^2.2 end
c={}bp=1
aA=3
ay=M
l={{0,0},0}C=0
Q=288
D=144
am=128
w=64
aP={}b_=500
cc=250
cm=1
ae=2^15
bz=3002
bt=0
aE=0
aD=0
bx=1.2
N=52
O=tan(N)aQ=w*bx*Q/am/O
X=1
bN={}for a=-D,D do bN[a]=aT({1,a/D*O})end
function bn(a)if a<ae then
local u,bu=c[7][a]bu=0<bo({u[3],u[4]},sub(l[1],u))and 8 or 7
bn(u[bu])bn(u[15-bu])else
ap[#ap+1]=a-ae
end
end
function aX(a,b)if a<ae then
u=c[7][a]return aX(u[0<bo({u[3],u[4]},sub(b,u))and 8 or 7],b)else
return a-ae
end
end
function by(b)u=c[5][c[6][b][2]]return aI[c[3][c[2][u[4]][u[5]+6]][6]]end
function onTick()bB=0
for p=1,3 do
if bw(9)and(not bl)or not c[21]then
bq=property.getText(bp)a=1
E=""
_=bC.sub(bq,a,a)while _~=""do
at=bC.byte(_)if at>64 then
E=(E..at-65)+0
if X==1 then
bF=E
c[E]=c[E]or{}elseif X==2 then
cN=E
aC=0
elseif X==3 then
bk=E
else
if aC==0 then
aC=cN
bk=bk-1
bc={}c[bF][#c[bF]+1]=bc
end
bc[#bc+1]=E
aC=aC-1
X=t(aC,bk)>0 and X-1 or 0
end
X=X+1
E=""
else
E=E.._
end
a=a+1
_=bC.sub(bq,a,a)end
bp=bp+1
bl=bq==""
end
end
if bl then
if J(10)>0 then
ay=M
aA=J(10)end
if cm>0 and not ay then
aj={}ao[#ao+1]=aj
az=6
_=J(az)while _~=0 do
ag={}aj[#aj+1]=ag
for a=0,8 do
ag[a+1]=J(az+a)end
az=az+9
_=J(az)end
end
if bw(1)then
bD=0
bP=J(1)cm=J(3)aD=aD+1
bJ=aD//10
if ay then
for a=1,10 do
c[a]=c[a+10*aA]end
k=c[1]cP={k[1][1],k[1][2]}for a=#k,1,-1 do
_=k[a]_=_[5]&(bz-3000)>0 or ch(k,a)end
aI=c[8]ao={}aA=aA+1
end
if J(2)>0 then
_=c[2][J(2)]if _ then
b=_[4]if b>0 then
if b==3008 then
aW=_[5]>0 and _[5]elseif b>3004 then
b_=t(b_+3*(_[4]-3006),1)cc=b_/2
elseif b>3000 then
bz=_[4]end
bD=J(2)if b<3000 and c[9][_[5]][7]==0 then
_[8]=1
end
end
end
end
if bw(3)and bP~=1 and bP~=3 and aU<1 then
aU=.1
aE=5
else
aE=aE-1
if aE<1 then
aU=0
end
end
for a=1,#ao do
aj=ao[a]for p=1,#aj do
ag=aj[p]_=ag[1]if _>ae then
_=aI[_-ae]for g=1,6 do
_[g]=ag[g+1]end
elseif _<0 then
at=c[1][-_]if at and c[15][at[4]or 1][29]=="light amp index" then
aU=1
aE=4200
end
while-_>#k do
k[#k+1]=be
end
ch(k,-_)else
k[_]=k[_]or{}_=k[_]for g=1,8 do
_[c[19][1][g]]=ag[g+1]end
_[15]=0
_[7]=aX(#c[7],_)_[8]=by(_[7])end
end
end
ao={}for a=1,#c[6]do
aP[a]={}end
for a,_ in au(k)do
if ay then
_[7]=aX(#c[7],_)_[8]=by(_[7])_[9]=_[8][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
end
if _ and a>1 then
bA=0
for p,d in au({1,2,9})do
_[d]=_[d]+_[d+10]bA=bA+_[d+10]end
if bA~=0 then
_[7]=aX(#c[7],_)_[8]=by(_[7])end
_[15]=_[15]+1
_[20]=aO(_,l[1])L=c[16][_[6]]if L then
if L[5]>0 then
_[9]=_[8][1]end
if _[15]>=L[2]and L[2]~=-1 then
_[6]=L[4]_[15]=0
end
end
aP[_[7]][#aP[_[7]]+1]=a
end
end
_,ay=k[1]cA=q(aO(_,l[1])^2/4,16)l[1]={_[1],_[2]}C=_[3]l[2]=_[9]+41+cA*sin(aD*20)/4
ap={}bn(#c[7])aV={}A={}aH={}aM={}U={}Z={}aN={}br=Q
for a=0,Q-1 do
aV[a],U[a],Z[a]=#c[6]+2,w+1,-w
end
a=1
while a<=#ap and br>0 do
_=c[6][ap[a]]aH[a]={}aM[a]={}A[a]={}aN[a]=aP[ap[a]]table.sort(aN[a],function(b,n)return k[b][20]>k[n][20]end)for p=_[2],_[1]+_[2]-1 do
S=c[5][p]I=c[2][S[4]]bH,bU=c[4][S[1]],c[4][S[2]]aZ,bX=sub(bH,l[1]),sub(bU,l[1])bR=aT(aZ)G,aL=bm(bR-C),bm(aT(bX)-C)if B(G)<90 or B(aL)<90 then
ai,ac=bj(G,-N,N),bj(aL,-N,N)if B(G)>=90 or B(aL)>=90 then
bK=bo(aZ,bX)if B(G)>=90 then
if bK>0 then ai=-N else ai=N end
else
if bK<0 then ac=-N else ac=N end
end
end
o,m=ax(tan(ai)/O*D),ax(tan(ac)/O*D)if o~=m then
r,aq=aO(l[1],bH),aO(l[1],bU)aG=S[3]+90
cl=aG-bR
cL=r*sin(cl)aJ=(r*cos(cl))if G~=ai then
r=aJ/cos(aG-(ai+C))end
if aL~=ac then
aq=aJ/cos(aG-(ac+C))end
r,aq=r*cos(ai),aq*cos(ac)g=S[5]+6
ct=(o>m)if ct and I[g]~=0 then
aF=I[3]&4>0
if aF then
W=aI[c[3][I[13-g]][6]]end
al=c[3][I[g]]cz={al[3],al[4],al[5]}j,ca,cd=aI[al[6]]for i,d in au(cz)do
aa=d>0
ak=M
if(aa or(i==3 and not(ca and cd)))and(i==3 or aF)then
bQ=0
c_=M
if i<3 then
c_=i~=1 or t(j[4],W[4])~=0
F,z=j[3-i],(i==1 and t or q)(W[3-i],j[i])ak=(F<z)==(i==2)and F~=z and j~=W
aa=ak
F,z=q(F,z),t(F,z)if ak then
if i==1 then
ca=M
else
cd=M
bQ=I[3]&16>0 and t(j[2],W[2])-z or 0
end
end
else
if aF then
F,z=q(t(j[1],W[1]),j[2]),t(q(j[2],W[2]),j[1])ak=j~=W
else
F,z=j[1],j[2]end
end
F,z=F-l[2],z-l[2]bG,cp=F*aQ,z*aQ
if(ak or aa)and c_ then
bi=S[6]-al[1]if I[4]==48 then
bi=bi-aD
end
cx,cs=bG/r,cp/r
cF,cK=bG/aq,cp/aq
bS,as=0
if aa then
_=c[21][d][4]if(S[4]==bD or bz==I[4]or I[8])and _>0 then
d=_
end
aw=c[21][d][3]v=1
if(i==3 and I[3]&16>0)or(i==1 and I[3]&8==0)then
v=-1
end
end
for g=o,m,-1 do
cH=bN[g]bb=(aG-C)-cH
f,ck=D-g
if f>=0 and f<=Q-1 then
if a<aV[f]then
ba=(g-o)/(m-o)H,K=(cx*(1-ba)+cF*ba),(cs*(1-ba)+cK*ba)if B(K+H)-(K-H)<am then
if aa then
if H~=K then
ck=M
co=aJ*tan(bb)aB=bM(q(((B(co)+B(aJ))//cc)+1,16))bE=ab((t(co-cL,0)-bi)/(aw*aB))bT=bE*aB
bW={f,w-H,w-K,d,bE,z-F,j[5],al[2]+bQ,M,aw*aB,aB,v,not as,i==3 and aF}if bT>bS or(not as)or g==m then
bS=bT-1+aB
as=M
A[a][#A[a]+1]=bW
end
cq=bW
end
end
if ak then
if i~=2 then
if K<U[f]then
aM[a][#aM[a]+1]={f,t(K,Z[f]),U[f],j}end
if i==3 then Y=K else Y=H end
if U[f]>Y then U[f]=Y end
end
if i~=1 then
if H>Z[f]then
aH[a][#aH[a]+1]={f,Z[f],q(H,U[f]),j}end
if i==3 then Y=H else Y=K end
if Z[f]<Y then Z[f]=Y end
end
if(U[f]<=Z[f])or(i==3 and(not aF)and aa)then
aV[f]=a
br=br-1
end
end
end
end
end
if(not ck)and as then
cq[9]=be
A[a][#A[a]+1],as=cq
end
end
if#A[a]>0 then
A[a][#A[a]][9]=be
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
function onDraw()aK=screen
local cj,cn,ah,bL=aK.drawTriangleF,aK.drawRectF,aK.setColor,aK.drawLine
cr={aH,aM}if bl then
e=c[24][c[19][8][aA-3]]T,av=e[1],e[2]y=Q/ceil(T*O)for a=0,ceil(T*O),1 do
o=(T/2-a-1+C/90*T)%T
m=(o%1-1)*y
o=ab(o)*av
for p=0,av-1,1 do
P=e[5+p+o]h=c[20][P]ah(h[1],h[2],h[3])cn(a*y+m,p*y,y,y)end
end
for a=#A,1,-1 do
for p=1,#A[a]do
d=A[a][p]if d[9]or d[13]then
if d[9]then
R=A[a][p+1]else
R=d
end
e=c[21][d[4]]e=c[21][d[4]+(bJ%e[5])*"number of wall mipmap levels"+c[19][12][d[11]]]v=d[12]V=q(v,0)f=d[1]m=R[1]bV=d[2-V]cB=R[2-V]g=d[3+V]bh=R[3+V]if not R[9]then m=m+1 end
aY(d[7])cG=v*(d[2]-d[3])*e[3]/d[6]cy=v*(R[2]-R[3])*e[3]/R[6]cb=v>0 and q or t
bd=0
while g*v<bV*v and(bd<e[2]or not d[14])do
bO=cb(g+cG,bV)bg=cb(bh+cy,cB)P=e[7+((V+d[8]//e[3])%e[2])+e[2]*((d[5])%e[1])]h=c[20][P]if h then
ah(h[1]*s,h[2]*s,h[3]*s)cj(f,g,f,bO,m,bg)cj(f,g,m,bh,m,bg)end
g=bO
bh=bg
V=V+v
bd=bd+1
end
end
end
for b=1,2 do
_=cr[b]cf={}ar,an,bv=am,-am
for p,d in au(_[a])do
ar=q(ar,d[2])an=t(an,d[3])bv=d
e=c[22][d[4][b+2]]if e and not aW then
aY(d[4][5])h=c[20][e[5]]ah(h[1]*s,h[2]*s,h[3]*s)bL(d[1],w-d[2],d[1],ab(w-d[3]-1))end
end
if bv and aW then
j=bv[4]cM=(j[b]-l[2])bf=cos(C)bs=sin(C)for ad=ab(ar+w),ceil(an+w)do
af=aQ*cM/(w-ad)bY=bf*af-l[1][1]cg=bs*af-l[1][2]bZ=-bs*af+bY
bI=bf*af+cg
cD=bs*af+bY
cu=-bf*af+cg
cw=(cD-bZ)/Q
cJ=(cu-bI)/Q
cf[ad]={cw,cJ,bZ,bI}end
for p,d in au(_[a])do
if j[b+2]~=0 then
f=d[1]if f%aW==0 then
aY(j[5])n=j[b+2]e=c[22][n]e=c[22][n+(bJ%e[4])]ci=D-(D-f)*O
ar,an=ab(d[2]+w),ceil(d[3]+w)aw=e[3]for ad=ar,an do
aS=cf[ad]cC=(aS[3]+aS[1]*ci)//aw
cI=(aS[4]+aS[2]*ci)//aw
P=6+(cI%e[1])+e[1]*(cC%e[2])h=c[20][e[P]]if h then
ah(h[1]*s,h[2]*s,h[3]*s)bL(f,am-ad,f+aW+1,am-ad)end
end
end
end
end
end
end
for p=1,#aN[a]do
_=k[aN[a][p]]if _[6]~=0 then
aZ=sub(_,l[1])r=_[20]if r>1 then
G=bm(aT(aZ)-C)r=r*cos(G)if B(G)<90 then
o=D-ax(tan(G)/O*D)bb=ax((180+G+C-_[3]+bB*4)/360*8)L=c[16][_[6]][1]if L~=0 and _[6]~=1 then
e=c[17][B(L)][bb%8+1]v=e<0 and-1 or 1
e=B(e)if e>0 then
e=c[23][e+c[19][12][q(bM(r//b_+1),8)]]T,av=e[1],e[2]y=D/(O*r)aR=y*bx
H=w+(l[2]-_[9])/r*aQ
K=H-e[5]*aR
m=o-v*e[4]*y
y,aR=y*e[3],aR*e[3]aY(_[8][5])s=L>0 and s or 1
ce=y
cv=ce*bx
cE=c[15][_[4]or 1][23]&8>0
for g=0,T-1 do
o=m+g*y*v
if a<=aV[bj(ax(o),0,Q-1)]then
for i=0,av-1 do
P=e[7+i+g*av]if P~=0 then
if cE then
bt=bt%50+1
ah(0,0,0,q(75*c[13][2][bt],255))else
h=c[20][P]ah(h[1]*s,h[2]*s,h[3]*s)end
cn(o,K+i*aR,ce,cv)end
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
bB=bB+1
end
