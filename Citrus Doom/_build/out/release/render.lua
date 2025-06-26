
x=math
w=x.max
s=x.min
D=x.abs
am=x.floor
ceil=x.ceil
sqrt=x.sqrt
J=input.getNumber
bq=input.getBool
pi=x.pi/180
bt=false
M=true
aB=ipairs
bE=table.remove
bh=string
function bp(b,p)return b[1]*p[2]-b[2]*p[1]end
function sub(b,p)return{(b[1]-p[1]),(b[2]-p[2])}end
function bC(b)return((b+180)%360)-180 end
function sin(b)return x.sin(b*pi)end
function cos(b)return x.cos(b*pi)end
function tan(b)return x.tan(b*pi)end
function cO(b)return x.atan(b)/pi end
function aZ(b)return x.atan(b[2],b[1])/pi end
function bj(b,p,_)return s(w(p,b),_)end
function at(b)return am(b+.5)end
function aH(b,p)return sqrt(((b[1]-p[1])^2)+((b[2]-p[2])^2))end
function bQ(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
function ba(b)r=s(b/255+b_,1)^2.2 end
c={}bg=1
ap=3
aw=M
l={{0,0},0}C=0
P=288
F=144
ae=128
u=64
aP={}aM=500
bT=250
ce=1
ac=2^15
bb=3002
bB=0
aE=0
aF=0
by=1.2
L=52
O=tan(L)aK=u*by*P/ae/O
S=1
bM={}for a=-F,F do bM[a]=aZ({1,a/F*O})end
function bl(a)if a<ac then
local v,bo=c[7][a]bo=0<bp({v[3],v[4]},sub(l[1],v))and 8 or 7
bl(v[bo])bl(v[15-bo])else
an[#an+1]=a-ac
end
end
function aT(a,b)if a<ac then
v=c[7][a]return aT(v[0<bp({v[3],v[4]},sub(b,v))and 8 or 7],b)else
return a-ac
end
end
function bu(b)v=c[5][c[6][b][2]]return aN[c[3][c[2][v[4]][v[5]+6]][6]]end
function onTick()bn=0
for n=1,3 do
if bq(9)and(not bs)or not c[21]then
bi=property.getText(bg)a=1
B=""
_=bh.sub(bi,a,a)while _~=""do
ar=bh.byte(_)if ar>64 then
B=(B..ar-65)+0
if S==1 then
bU=B
c[B]=c[B]or{}elseif S==2 then
cI=B
ay=0
elseif S==3 then
bx=B
else
if ay==0 then
ay=cI
bx=bx-1
br={}c[bU][#c[bU]+1]=br
end
br[#br+1]=B
ay=ay-1
S=w(ay,bx)>0 and S-1 or 0
end
S=S+1
B=""
else
B=B.._
end
a=a+1
_=bh.sub(bi,a,a)end
bg=bg+1
bs=bi==""
end
end
if bs then
if J(10)>0 then
aw=M
ap=J(10)end
if ce>0 and not aw then
ak={}ao[#ao+1]=ak
ax=6
_=J(ax)while _~=0 do
al={}ak[#ak+1]=al
for a=0,8 do
al[a+1]=J(ax+a)end
ax=ax+9
_=J(ax)end
end
if bq(1)then
cg=0
cj=J(1)ce=J(3)aF=aF+1
bF=aF//10
if aw then
for a=1,10 do
c[a]=c[a+10*ap]end
k=c[1]cP={k[1][1],k[1][2]}for a=#k,1,-1 do
_=k[a]_=_[5]&(bb-3000)>0 or bE(k,a)end
aN=c[8]ao={}ap=ap+1
end
if J(2)>0 then
_=c[2][J(2)]if _ then
b=_[4]if b>0 then
if b==3008 then
aW=_[5]>0 and _[5]elseif b>3004 then
aM=w(aM+3*(_[4]-3006),1)bT=aM/2
elseif b>3000 then
bb=_[4]end
cg=J(2)if b<3000 and c[9][_[5]][7]==0 then
_[8]=1
end
end
end
end
if bq(3)and cj~=1 and cj~=3 and b_<1 then
b_=.1
aE=5
else
aE=aE-1
if aE<1 then
b_=0
end
end
for a=1,#ao do
ak=ao[a]for n=1,#ak do
al=ak[n]_=al[1]if _>ac then
_=aN[_-ac]for g=1,6 do
_[g]=al[g+1]end
elseif _<0 then
ar=c[1][-_]if ar and c[15][ar[4]or 1][29]=="light amp index" then
b_=1
aE=4200
end
while-_>#k do
k[#k+1]=bt
end
bE(k,-_)else
k[_]=k[_]or{}_=k[_]for g=1,8 do
_[c[19][1][g]]=al[g+1]end
_[15]=0
_[7]=aT(#c[7],_)_[8]=bu(_[7])end
end
end
ao={}for a=1,#c[6]do
aP[a]={}end
for a,_ in aB(k)do
if aw then
_[7]=aT(#c[7],_)_[8]=bu(_[7])_[9]=_[8][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
end
if _ and a>1 then
bz=0
for n,d in aB({1,2,9})do
_[d]=_[d]+_[d+10]bz=bz+_[d+10]end
if bz~=0 then
_[7]=aT(#c[7],_)_[8]=bu(_[7])end
_[15]=_[15]+1
_[20]=aH(_,l[1])N=c[16][_[6]]if N then
if N[5]>0 then
_[9]=_[8][1]end
if _[15]>=N[2]and N[2]~=-1 then
_[6]=N[4]_[15]=0
end
end
aP[_[7]][#aP[_[7]]+1]=a
end
end
_,aw=k[1]cN=s(aH(_,l[1])^2/4,16)l[1]={_[1],_[2]}C=_[3]l[2]=_[9]+41+cN*sin(aF*20)/4
an={}bl(#c[7])aI={}y={}aY={}aQ={}W={}U={}aS={}bm=P
for a=0,P-1 do
aI[a],W[a],U[a]=#c[6]+2,u+1,-u
end
a=1
while a<=#an and bm>0 do
_=c[6][an[a]]aY[a]={}aQ[a]={}y[a]={}aS[a]=aP[an[a]]table.sort(aS[a],function(b,p)return k[b][20]>k[p][20]end)for n=_[2],_[1]+_[2]-1 do
V=c[5][n]H=c[2][V[4]]cq,cm=c[4][V[1]],c[4][V[2]]aL,bI=sub(cq,l[1]),sub(cm,l[1])bH=aZ(aL)I,aG=bC(bH-C),bC(aZ(bI)-C)if D(I)<90 or D(aG)<90 then
ab,ad=bj(I,-L,L),bj(aG,-L,L)if D(I)>=90 or D(aG)>=90 then
cf=bp(aL,bI)if D(I)>=90 then
if cf>0 then ab=-L else ab=L end
else
if cf<0 then ad=-L else ad=L end
end
end
m,o=at(tan(ab)/O*F),at(tan(ad)/O*F)if m~=o then
q,aq=aH(l[1],cq),aH(l[1],cm)aV=V[3]+90
bL=aV-bH
cA=q*sin(bL)aR=(q*cos(bL))if I~=ab then
q=aR/cos(aV-(ab+C))end
if aG~=ad then
aq=aR/cos(aV-(ad+C))end
q,aq=q*cos(ab),aq*cos(ad)g=V[5]+6
ct=(m>o)if ct and H[g]~=0 then
aC=H[3]&4>0
if aC then
Z=aN[c[3][H[13-g]][6]]end
ag=c[3][H[g]]cr={ag[3],ag[4],ag[5]}j,bX,bO=aN[ag[6]]for i,d in aB(cr)do
aj=d>0
ai=M
if(aj or(i==3 and not(bX and bO)))and(i==3 or aC)then
ca=0
cp=M
if i<3 then
cp=i~=1 or w(j[4],Z[4])~=0
E,A=j[3-i],(i==1 and w or s)(Z[3-i],j[i])ai=(E<A)==(i==2)and E~=A and j~=Z
aj=ai
E,A=s(E,A),w(E,A)if ai then
if i==1 then
bX=M
else
bO=M
ca=H[3]&16>0 and w(j[2],Z[2])-A or 0
end
end
else
if aC then
E,A=s(w(j[1],Z[1]),j[2]),w(s(j[2],Z[2]),j[1])ai=j~=Z
else
E,A=j[1],j[2]end
end
E,A=E-l[2],A-l[2]co,ck=E*aK,A*aK
if(ai or aj)and cp then
be=V[6]-ag[1]if H[4]==48 then
be=be-aF
end
cD,cw=co/q,ck/q
cv,cF=co/aq,ck/aq
bP,au=0
if aj then
_=c[21][d][4]if(V[4]==cg or bb==H[4]or H[8])and _>0 then
d=_
end
aD=c[21][d][3]t=1
if(i==3 and H[3]&16>0)or(i==1 and H[3]&8==0)then
t=-1
end
end
for g=m,o,-1 do
cs=bM[g]bA=(aV-C)-cs
f,bS=F-g
if f>=0 and f<=P-1 then
if a<aI[f]then
aU=(g-m)/(o-m)G,K=(cD*(1-aU)+cv*aU),(cw*(1-aU)+cF*aU)if D(K+G)-(K-G)<ae then
if aj then
if G~=K then
bS=M
ch=aR*tan(bA)as=bQ(s(((D(ch)+D(aR))//bT)+1,16))bZ=am((w(ch-cA,0)-be)/(aD*as))cl=bZ*as
bR={f,u-G,u-K,d,bZ,A-E,j[5],ag[2]+ca,M,aD*as,as,t,not au,i==3 and aC}if cl>bP or(not au)or g==o then
bP=cl-1+as
au=M
y[a][#y[a]+1]=bR
end
bG=bR
end
end
if ai then
if i~=2 then
if K<W[f]then
aQ[a][#aQ[a]+1]={f,w(K,U[f]),W[f],j}end
if i==3 then T=K else T=G end
if W[f]>T then W[f]=T end
end
if i~=1 then
if G>U[f]then
aY[a][#aY[a]+1]={f,U[f],s(G,W[f]),j}end
if i==3 then T=G else T=K end
if U[f]<T then U[f]=T end
end
if(W[f]<=U[f])or(i==3 and(not aC)and aj)then
aI[f]=a
bm=bm-1
end
end
end
end
end
if(not bS)and au then
bG[9]=bt
y[a][#y[a]+1],au=bG
end
end
if#y[a]>0 then
y[a][#y[a]][9]=bt
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
function onDraw()aO=screen
local c_,bD,aa,bV=aO.drawTriangleF,aO.drawRectF,aO.setColor,aO.drawLine
cJ={aY,aQ}if bs then
e=c[24][c[19][8][ap-3]]X,az=e[1],e[2]z=P/ceil(X*O)for a=0,ceil(X*O),1 do
m=(X/2-a-1+C/90*X)%X
o=(m%1-1)*z
m=am(m)*az
for n=0,az-1,1 do
R=e[5+n+m]h=c[20][R]aa(h[1],h[2],h[3])bD(a*z+o,n*z,z,z)end
end
for a=#y,1,-1 do
for n=1,#y[a]do
d=y[a][n]if d[9]or d[13]then
if d[9]then
Q=y[a][n+1]else
Q=d
end
e=c[21][d[4]]e=c[21][d[4]+(bF%e[5])*"number of wall mipmap levels"+c[19][12][d[11]]]t=d[12]Y=s(t,0)f=d[1]o=Q[1]cd=d[2-Y]cM=Q[2-Y]g=d[3+Y]bk=Q[3+Y]if not Q[9]then o=o+1 end
ba(d[7])cE=t*(d[2]-d[3])*e[3]/d[6]cL=t*(Q[2]-Q[3])*e[3]/Q[6]bN=t>0 and s or w
bw=0
while g*t<cd*t and(bw<e[2]or not d[14])do
bK=bN(g+cE,cd)bd=bN(bk+cL,cM)R=e[7+((Y+d[8]//e[3])%e[2])+e[2]*((d[5])%e[1])]h=c[20][R]if h then
aa(h[1]*r,h[2]*r,h[3]*r)c_(f,g,f,bK,o,bd)c_(f,g,o,bk,o,bd)end
g=bK
bk=bd
Y=Y+t
bw=bw+1
end
end
end
for b=1,2 do
_=cJ[b]cn={}aA,av,bc=ae,-ae
for n,d in aB(_[a])do
aA=s(aA,d[2])av=w(av,d[3])bc=d
e=c[22][d[4][b+2]]if e and not aW then
ba(d[4][5])h=c[20][e[5]]aa(h[1]*r,h[2]*r,h[3]*r)bV(d[1],u-d[2],d[1],am(u-d[3]-1))end
end
if bc and aW then
j=bc[4]cG=(j[b]-l[2])bf=cos(C)bv=sin(C)for ah=am(aA+u),ceil(av+u)do
af=aK*cG/(u-ah)cc=bf*af-l[1][1]bJ=bv*af-l[1][2]bY=-bv*af+cc
bW=bf*af+bJ
cB=bv*af+cc
cx=-bf*af+bJ
cy=(cB-bY)/P
cK=(cx-bW)/P
cn[ah]={cy,cK,bY,bW}end
for n,d in aB(_[a])do
if j[b+2]~=0 then
f=d[1]if f%aW==0 then
ba(j[5])p=j[b+2]e=c[22][p]e=c[22][p+(bF%e[4])]cb=F-(F-f)*O
aA,av=am(d[2]+u),ceil(d[3]+u)aD=e[3]for ah=aA,av do
aJ=cn[ah]cC=(aJ[3]+aJ[1]*cb)//aD
cH=(aJ[4]+aJ[2]*cb)//aD
R=6+(cH%e[1])+e[1]*(cC%e[2])h=c[20][e[R]]if h then
aa(h[1]*r,h[2]*r,h[3]*r)bV(f,ae-ah,f+aW+1,ae-ah)end
end
end
end
end
end
end
for n=1,#aS[a]do
_=k[aS[a][n]]if _[6]~=0 then
aL=sub(_,l[1])q=_[20]if q>1 then
I=bC(aZ(aL)-C)q=q*cos(I)if D(I)<90 then
m=F-at(tan(I)/O*F)bA=at((180+I+C-_[3]+bn*4)/360*8)N=c[16][_[6]][1]if N~=0 and _[6]~=1 then
e=c[17][D(N)][bA%8+1]t=e<0 and-1 or 1
e=D(e)if e>0 then
e=c[23][e+c[19][12][s(bQ(q//aM+1),8)]]X,az=e[1],e[2]z=F/(O*q)aX=z*by
G=u+(l[2]-_[9])/q*aK
K=G-e[5]*aX
o=m-t*e[4]*z
z,aX=z*e[3],aX*e[3]ba(_[8][5])r=N>0 and r or 1
ci=z
cu=ci*by
cz=c[15][_[4]or 1][23]&8>0
for g=0,X-1 do
m=o+g*z*t
if a<=aI[bj(at(m),0,P-1)]then
for i=0,az-1 do
R=e[7+i+g*az]if R~=0 then
if cz then
bB=bB%50+1
aa(0,0,0,s(75*c[13][2][bB],255))else
h=c[20][R]aa(h[1]*r,h[2]*r,h[3]*r)end
bD(m,K+i*aX,ci,cu)end
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
bn=bn+1
end
