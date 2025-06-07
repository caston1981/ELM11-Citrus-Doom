
cf=screen
aY=ipairs
bW=table
ca=input
w=math
E=w.max
x=w.min
A=w.abs
ai=w.floor
ceil=w.ceil
sqrt=w.sqrt
I=ca.getNumber
bc=ca.getBool
pi=w.pi/180
K=false
P=true
bp=string
function ba(b,o)return b[1]*o[2]-b[2]*o[1]end
function sub(b,o)return{(b[1]-o[1]),(b[2]-o[2])}end
function bw(b)return((b+180)%360)-180 end
function sin(b)return w.sin(b*pi)end
function cos(b)return w.cos(b*pi)end
function tan(b)return w.tan(b*pi)end
function cS(b)return w.atan(b)/pi end
function aO(b)return w.atan(b[2],b[1])/pi end
function by(b,o,_)return x(E(o,b),_)end
function al(b)return ai(b+.5)end
function aX(b,o)return sqrt(((b[1]-o[1])^2)+((b[2]-o[2])^2))end
function cc(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
function aS(b)r=x(b/255+cd,1)^2.2 end
c={}bn=1
ay=3
aT=K
ar=P
f={{0,0},0,0}O=288
z=O//2
ab=128
u=ab//2
aK={}aE=400
cl=200
bC=100
cR=0
at={}aU=2^15
bO=3002
bb=0
aR=0
aA=0
bj=1.2
M=52
N=tan(M)aP=u*bj*O/ab/N
Y=1
c_={}for a=-z,z do c_[a]=aO({1,a/z*N})end
function bh(a)if a<aU then
local t,bq=c[7][a]bq=0<ba({t[3],t[4]},sub(f[1],t))and 8 or 7
bh(t[bq])bh(t[15-bq])else
aD[#aD+1]=a-aU
end
end
function aW(a,b)if a<aU then
t=c[7][a]return aW(t[0<ba({t[3],t[4]},sub(b,t))and 8 or 7],b)else
return a-aU
end
end
function bz(b)t=c[5][c[6][b][2]]return aq[c[3][c[2][t[4]][t[5]+6]][6]]end
function onTick()bB=0
for k=1,3 do
if bc(9)and(not aT)or not c[21]then
bd=property.getText(bn)a=1
C=""
_=bp.sub(bd,a,a)while _~=""do
ck=bp.byte(_)if ck>64 then
C=(C..ck-65)+0
if Y==1 then
cr=C
c[C]=c[C]or{}elseif Y==2 then
cw=C
ak=0
elseif Y==3 then
bs=C
else
if ak==0 then
ak=cw
bs=bs-1
bA={}c[cr][#c[cr]+1]=bA
end
bA[#bA+1]=C
ak=ak-1
Y=E(ak,bs)>0 and Y-1 or 0
end
Y=Y+1
C=""
else
C=C.._
end
a=a+1
_=bp.sub(bd,a,a)end
bn=bn+1
aT=bd==""
end
end
if aT then
if I(9)>0 then
ar=P
ay=I(9)end
if bC>0 and not ar then
ag={}at[#at+1]=ag
aB=5
_=I(aB)while _~=0 do
ad={}ag[#ag+1]=ad
for a=0,8 do
ad[a+1]=I(aB+a)end
aB=aB+9
_=I(aB)end
end
if bc(1)then
cj=0
bu=I(1)bC=I(3)aA=aA+1
bD=aA//10
if ar then
for a=1,10 do
c[a]=c[a+10*ay]end
n=c[1]bM={n[1][1],n[1][2]}aq=c[8]ay=ay+1
end
if I(2)>0 then
_=c[2][I(2)]if _ then
b=_[4]if b>0 then
if b==3008 then
aJ=_[5]>0 and _[5]elseif b>3004 then
aE=E(aE+3*(_[4]-3006),1)cl=aE/2
elseif b>3000 then
bO=_[4]end
cj=I(2)if b<3000 and c[9][_[5]][7]==0 then
_[8]=1
end
end
end
end
if bc(3)and bu~=1 and bu~=3 then
cd=.1
aR=bu==5 and 5 or 3
else
aR=aR-1
if aR<1 then
cd=0
end
end
for a=1,#at do
ag=at[a]for k=1,#ag do
ad=ag[k]_=ad[1]if _>(2^15)then
_=aq[_-(2^15)]for h=1,6 do
_[h]=ad[h+1]end
elseif _<0 then
while-_>#n do
n[#n+1]=K
end
bW.remove(n,-_)else
if not n[_]then
n[_]={}end
_=n[_]for h=1,8 do
_[c[19][1][h]]=ad[h+1]end
_[15]=0
_[7]=aW(#c[7],_)_[8]=bz(_[7])end
end
end
at={}for a=1,#c[6]do
aK[a]={}end
for a=1,#n do
_=n[a]if ar then
_[7]=aW(#c[7],_)_[8]=bz(_[7])_[9]=_[8][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
end
if _ and a>1 then
bo=0
for k,d in aY({1,2,9})do
_[d]=_[d]+_[d+10]bo=bo+_[d+10]end
if bo~=0 then
_[7]=aW(#c[7],_)_[8]=bz(_[7])end
_[15]=_[15]+1
_[20]=aX(_,f[1])L=c[16][_[6]]if L~=nil then
if L[5]>0 then
_[9]=_[8][1]end
if _[15]>=L[2]and L[2]~=-1 then
_[6]=L[4]_[15]=0
end
end
aK[_[7]][#aK[_[7]]+1]=a
end
end
ar=K
_=n[1]f[1]={_[1],_[2]}f[3]=_[3]cu=x(aX(f[1],bM)^2/4,16)bM={_[1],_[2]}f[2]=_[9]+41+cu*sin(aA*20)/4
aD={}bh(#c[7])aL={}p={}aF={}b_={}X={}T={}aN={}br=O
for a=0,O-1 do
aL[a],X[a],T[a]=#c[6]+2,u+1,-u
end
a=1
while a<=#aD and br>0 do
_=c[6][aD[a]]aF[a]={}b_[a]={}p[a]={}aN[a]=aK[aD[a]]bW.sort(aN[a],function(b,o)return n[b][20]>n[o][20]end)for k=_[2],_[1]+_[2]-1 do
S=c[5][k]y=c[2][S[4]]bZ,cn=c[4][S[1]],c[4][S[2]]aQ,bV=sub(bZ,f[1]),sub(cn,f[1])ce=aO(aQ)J,aV=bw(ce-f[3]),bw(aO(bV)-f[3])if A(J)<90 or A(aV)<90 then
ah,af=by(J,-M,M),by(aV,-M,M)if A(J)>=90 or A(aV)>=90 then
bX=ba(aQ,bV)if A(J)>=90 then
if bX>0 then ah=-M else ah=M end
else
if bX<0 then af=-M else af=M end
end
end
m,l=al(tan(ah)/N*z),al(tan(af)/N*z)if m~=l then
q,ax=aX(f[1],bZ),aX(f[1],cn)aG=S[3]+90
bP=aG-ce
cI=q*sin(bP)aH=(q*cos(bP))if J~=ah then
q=aH/cos(aG-(ah+f[3]))end
if aV~=af then
ax=aH/cos(aG-(af+f[3]))end
q,ax=q*cos(ah),ax*cos(af)h=S[5]+6
cP=(m>l)if cP and y[h]~=0 then
az=y[3]&4>0
if az then
Z,aa=aq[c[3][y[6]][6]],aq[c[3][y[7]][6]]end
aj=c[3][y[h]]cO={aj[3],aj[4],aj[5]}H,bI,bQ=aq[aj[6]]for j,d in aY(cO)do
aC=d>0
ap=P
if(aC or(j==3 and not(bI and bQ)))and(j==3 or az)then
cb=K
bL=0
if j<3 then
cb=j==1 and E(Z[4],aa[4])==0
D,v=Z[3-j],aa[3-j]ap=(D<v)~=(j==2)~=(h==6)and D~=v and Z~=aa
D,v=x(D,v),E(D,v)if ap then
if j==1 then
bI=P
else
bQ=P
bL=y[3]&16>0 and E(Z[2],aa[2])-v or 0
end
end
else
if az then
D,v=E(Z[1],aa[1]),x(Z[2],aa[2])ap=Z~=aa
else
D,v=H[1],H[2]end
end
D,v=D-f[2],v-f[2]bF,ci=D*aP,v*aP
if(ap or aC)and not cb then
bv=S[6]-aj[1]if y[4]==48 then
bv=bv-aA
end
cC,cL=bF/q,ci/q
cJ,cF=bF/ax,ci/ax
cs=0
as=K
if aC then
_=c[21][d][4]if(S[4]==cj or bO==y[4]or y[8])and _>0 then
d=_
end
an=c[21][d][3]s=1
if(j==3 and y[3]&16>0)or(j==1 and y[3]&8==0)then
s=-1
end
end
for h=m,l,-1 do
cK=c_[h]bf=(aG-f[3])-cK
g=z-h
bH=K
if g>=0 and g<=O-1 then
if a<aL[g]then
aM=(h-m)/(l-m)G,F=(cC*(1-aM)+cJ*aM),(cL*(1-aM)+cF*aM)if A(F+G)-(F-G)<ab then
if aC then
if G~=F then
bH=P
bE=aH*tan(bf)aw=cc(x(((A(bE)+A(aH))//cl)+1,16))cq=ai((E(bE-cI,0)-bv)/(an*aw))bY=cq*aw
ch={g,u-G,u-F,d,cq,v-D,H[5],aj[2]+bL,P,an*aw,aw,s,not as,j==3 and az}if bY>cs or(not as)or h==l then
cs=bY-1+aw
as=P
p[a][#p[a]+1]=ch
end
cA=ch
end
end
if ap then
if j~=2 then
if F<X[g]then
b_[a][#b_[a]+1]={g,E(F,T[g]),X[g],H}end
if j==3 then U=F else U=G end
if X[g]>U then X[g]=U end
end
if j~=1 then
if G>T[g]then
aF[a][#aF[a]+1]={g,T[g],x(G,X[g]),H}end
if j==3 then U=G else U=F end
if T[g]<U then T[g]=U end
end
if(X[g]<=T[g])or(j==3 and(not az)and aC)then
aL[g]=a
br=br-1
end
end
end
end
end
if(not bH)and as then
as=K
p[a][#p[a]+1]=cA
p[a][#p[a]][9]=K
end
end
if#p[a]>0 then
p[a][#p[a]][9]=K
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
function onDraw()bl=cf
local bT,bk,ac=bl.drawTriangleF,bl.drawRectF,bl.setColor
cB={aF,b_}if aT then
e=c[24][c[19][8][ay-3]]V,au=e[1],e[2]B=O/ceil(V*N)bU=B*1
for a=0,ceil(V*N),1 do
m=(V/2-a-1+f[3]/90*V)%V
l=(m%1-1)*B
m=ai(m)*au
for k=0,au-1,1 do
R=e[5+k+m]i=c[20][R]ac(i[1],i[2],i[3])bk(a*B+l,k*B,bU,bU)end
end
for a=#p,1,-1 do
for k=1,#p[a]do
d=p[a][k]if d[9]or d[13]then
if d[9]then
Q=p[a][k+1]else
Q=d
end
e=c[21][d[4]]e=c[21][d[4]+(bD%e[5])*c[19][3][2]+c[19][12][d[11]]]s=d[12]W=x(s,0)g=d[1]l=Q[1]bR=d[2-W]cM=Q[2-W]h=d[3+W]bt=Q[3+W]if not Q[9]then l=l+1 end
aS(d[7])cv=s*(d[2]-d[3])*e[3]/d[6]cH=s*(Q[2]-Q[3])*e[3]/Q[6]cm=s>0 and x or E
bi=0
while h*s<bR*s and(bi<e[2]or not d[14])do
bN=cm(h+cv,bR)be=cm(bt+cH,cM)R=e[7+((W+d[8]//e[3])%e[2])+e[2]*((d[5])%e[1])]i=c[20][R]if i then
ac(i[1]*r,i[2]*r,i[3]*r)bT(g,h,g,bN,l,be)bT(g,h,l,bt,l,be)end
h=bN
bt=be
W=W+s
bi=bi+1
end
end
end
for b=1,2 do
_=cB[b]co={}av,am,bm=ab,-ab
for k,d in aY(_[a])do
av=x(av,d[2])am=E(am,d[3])bm=d
e=c[22][d[4][b+2]]if e and not aJ then
aS(d[4][5])i=c[20][e[5]]ac(i[1]*r,i[2]*r,i[3]*r)cf.drawLine(d[1],u-d[2],d[1],ai(u-d[3]-1))end
end
if bm and aJ then
H=bm[4]cE=(H[b]-f[2])bx=cos(f[3])bg=sin(f[3])for ao=ai(av+u),ceil(am+u)do
ae=aP*cE/(u-ao)cg=bx*ae-f[1][1]bJ=bg*ae-f[1][2]bS=-bg*ae+cg
bK=bx*ae+bJ
cQ=bg*ae+cg
cx=-bx*ae+bJ
cD=(cQ-bS)/O
cN=(cx-bK)/O
co[ao]={cD,cN,bS,bK}end
for k,d in aY(_[a])do
if H[b+2]~=0 then
g=d[1]if g%aJ==0 then
aS(H[5])o=H[b+2]e=c[22][o]e=c[22][o+(bD%e[4])]bG=z-(z-g)*N
av,am=ai(d[2]+u),ceil(d[3]+u)an=e[3]for ao=av,am do
aI=co[ao]cy=(aI[3]+aI[1]*bG)//an
cz=(aI[4]+aI[2]*bG)//an
R=6+(cz%e[1])+e[1]*(cy%e[2])i=c[20][e[R]]if i then
ac(i[1]*r,i[2]*r,i[3]*r)bk(g,-ao+ab,aJ,1)end
end
end
end
end
end
end
for k=1,#aN[a]do
_=n[aN[a][k]]if _[6]~=0 then
aQ=sub(_,f[1])q=_[20]if q>1 then
J=bw(aO(aQ)-f[3])q=q*cos(J)if A(J)<90 then
m=z-al(tan(J)/N*z)bf=al((180+J+f[3]-_[3]+bB*4)/360*8)L=c[16][_[6]][1]if L~=0 and _[6]~=1 then
e=c[17][A(L)][bf%8+1]s=e<0 and-1 or 1
e=A(e)if e>0 then
e=c[23][e+c[19][12][x(cc(q//aE+1),8)]]V,au=e[1],e[2]B=z/(N*q)aZ=B*bj
G=u+(f[2]-_[9])/q*aP
F=G-e[5]*aZ
l=m-s*e[4]*B
B,aZ=B*e[3],aZ*e[3]aS(_[8][5])r=L>0 and r or 1
cp=B
ct=cp*bj
cG=_[4]and c[15][_[4]][23]&8>0
for h=0,V-1 do
m=l+h*B*s
if a<=aL[by(al(m),0,O-1)]then
for j=0,au-1 do
R=e[7+j+h*au]if R~=0 then
if cG then
bb=bb%50+1
ac(0,0,0,x(75*c[13][2][bb],255))else
i=c[20][R]ac(i[1]*r,i[2]*r,i[3]*r)end
bk(m,F+j*aZ,cp,ct)end
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
