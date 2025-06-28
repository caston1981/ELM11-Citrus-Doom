
z=math
u=z.max
r=z.min
D=z.abs
ah=z.floor
ceil=z.ceil
sqrt=z.sqrt
G=input.getNumber
bi=input.getBool
pi=z.pi/180
bl=false
N=true
ax=ipairs
ce=table.remove
bf=string
function bp(b,m)return b[1]*m[2]-b[2]*m[1]end
function sub(b,m)return{(b[1]-m[1]),(b[2]-m[2])}end
function bz(b)return((b+180)%360)-180 end
function sin(b)return z.sin(b*pi)end
function cos(b)return z.cos(b*pi)end
function tan(b)return z.tan(b*pi)end
function cP(b)return z.atan(b)/pi end
function aJ(b)return z.atan(b[2],b[1])/pi end
function bc(b,m,_)return r(u(m,b),_)end
function aD(b)return ah(b+.5)end
function aI(b,m)return sqrt(((b[1]-m[1])^2)+((b[2]-m[2])^2))end
function ca(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
function aO(b)s=r(b/255+aQ,1)^2.2 end
c={}by=1
aw=3
aC=N
l={{0,0},0}C=0
P=288
F=144
ai=128
v=64
b_={}aW=500
bP=250
bK=1
ac=2^15
bv=3002
bb=0
au=0
aB=0
bh=1.2
L=52
O=tan(L)aY=v*bh*P/ai/O
Y=1
bE={}for a=-F,F do bE[a]=aJ({1,a/F*O})end
function bA(a)if a<ac then
local t,bq=c[7][a]bq=0<bp({t[3],t[4]},sub(l[1],t))and 8 or 7
bA(t[bq])bA(t[15-bq])else
aq[#aq+1]=a-ac
end
end
function aZ(a,b)if a<ac then
t=c[7][a]return aZ(t[0<bp({t[3],t[4]},sub(b,t))and 8 or 7],b)else
return a-ac
end
end
function be(b)t=c[5][c[6][b][2]]return aV[c[3][c[2][t[4]][t[5]+6]][6]]end
function onTick()br=0
for o=1,3 do
if bi(9)and(not bn)or not c[21]then
bj=property.getText(by)a=1
B=""
_=bf.sub(bj,a,a)while _~=""do
az=bf.byte(_)if az>64 then
B=(B..az-65)+0
if Y==1 then
bS=B
c[B]=c[B]or{}elseif Y==2 then
cK=B
aF=0
elseif Y==3 then
bm=B
else
if aF==0 then
aF=cK
bm=bm-1
bu={}c[bS][#c[bS]+1]=bu
end
bu[#bu+1]=B
aF=aF-1
Y=u(aF,bm)>0 and Y-1 or 0
end
Y=Y+1
B=""
else
B=B.._
end
a=a+1
_=bf.sub(bj,a,a)end
by=by+1
bn=bj==""
end
end
if bn then
if G(10)>0 then
aC=N
aw=G(10)end
if bK>0 and not aC then
aa={}ao[#ao+1]=aa
at=6
_=G(at)while _~=0 do
ae={}aa[#aa+1]=ae
for a=0,8 do
ae[a+1]=G(at+a)end
at=at+9
_=G(at)end
end
if bi(1)then
bV=0
bN=G(1)bK=G(3)aB=aB+1
ci=aB//10
if aC then
for a=1,10 do
c[a]=c[a+10*aw]end
k=c[1]cO={k[1][1],k[1][2]}for a=#k,1,-1 do
_=k[a]_=_[5]&(bv-3000)>0 or ce(k,a)end
aV=c[8]ao={}aw=aw+1
end
if G(2)>0 then
_=c[2][G(2)]if _ then
b=_[4]if b>0 then
if b==3008 then
aK=_[5]>0 and _[5]elseif b>3004 then
aW=u(aW+3*(_[4]-3006),1)bP=aW/2
elseif b>3000 then
bv=_[4]end
bV=G(2)if b<3000 and c[9][_[5]][7]==0 then
_[8]=1
end
end
end
end
if bi(3)and bN~=1 and bN~=3 and aQ<1 then
aQ=.1
au=5
else
au=au-1
if au<1 then
aQ=0
end
end
for a=1,#ao do
aa=ao[a]for o=1,#aa do
ae=aa[o]_=ae[1]if _>ac then
_=aV[_-ac]for g=1,6 do
_[g]=ae[g+1]end
elseif _<0 then
az=c[1][-_]if az and c[15][az[4]or 1][29]=="light amp index" then
aQ=1
au=4200
end
while-_>#k do
k[#k+1]=bl
end
ce(k,-_)else
k[_]=k[_]or{}_=k[_]for g=1,8 do
_[c[19][1][g]]=ae[g+1]end
_[15]=0
_[7]=aZ(#c[7],_)_[8]=be(_[7])end
end
end
ao={}for a=1,#c[6]do
b_[a]={}end
for a,_ in ax(k)do
if aC then
_[7]=aZ(#c[7],_)_[8]=be(_[7])_[9]=_[8][1]_[11]=0
_[12]=0
_[15]=0
_[19]=0
end
if _ and a>1 then
bk=0
for o,d in ax({1,2,9})do
_[d]=_[d]+_[d+10]bk=bk+_[d+10]end
if bk~=0 then
_[7]=aZ(#c[7],_)_[8]=be(_[7])end
_[15]=_[15]+1
_[20]=aI(_,l[1])M=c[16][_[6]]if M then
if M[5]>0 then
_[9]=_[8][1]end
if _[15]>=M[2]and M[2]~=-1 then
_[6]=M[4]_[15]=0
end
end
b_[_[7]][#b_[_[7]]+1]=a
end
end
_,aC=k[1]cD=r(aI(_,l[1])^2/4,16)l[1]={_[1],_[2]}C=_[3]l[2]=_[9]+41+cD*sin(aB*20)/4
aq={}bA(#c[7])aL={}y={}aM={}aU={}V={}T={}aT={}bs=P
for a=0,P-1 do
aL[a],V[a],T[a]=#c[6]+2,v+1,-v
end
a=1
while a<=#aq and bs>0 do
_=c[6][aq[a]]aM[a]={}aU[a]={}y[a]={}aT[a]=b_[aq[a]]table.sort(aT[a],function(b,m)return k[b][20]>k[m][20]end)for o=_[2],_[1]+_[2]-1 do
Z=c[5][o]K=c[2][Z[4]]cj,co=c[4][Z[1]],c[4][Z[2]]ba,bT=sub(cj,l[1]),sub(co,l[1])bH=aJ(ba)I,aS=bz(bH-C),bz(aJ(bT)-C)if D(I)<90 or D(aS)<90 then
am,ak=bc(I,-L,L),bc(aS,-L,L)if D(I)>=90 or D(aS)>=90 then
cn=bp(ba,bT)if D(I)>=90 then
if cn>0 then am=-L else am=L end
else
if cn<0 then ak=-L else ak=L end
end
end
p,n=aD(tan(am)/O*F),aD(tan(ak)/O*F)if p~=n then
q,aE=aI(l[1],cj),aI(l[1],co)aX=Z[3]+90
cp=aX-bH
cx=q*sin(cp)aP=(q*cos(cp))if I~=am then
q=aP/cos(aX-(am+C))end
if aS~=ak then
aE=aP/cos(aX-(ak+C))end
q,aE=q*cos(am),aE*cos(ak)g=Z[5]+6
cH=(p>n)if cH and K[g]~=0 then
ar=K[3]&4>0
if ar then
U=aV[c[3][K[13-g]][6]]end
ad=c[3][K[g]]cM={ad[3],ad[4],ad[5]}j,cb,bY=aV[ad[6]]for h,d in ax(cM)do
ag=d>0
aj=N
if(ag or(h==3 and not(cb and bY)))and(h==3 or ar)then
cl=0
bU=N
if h<3 then
bU=h~=1 or u(j[4],U[4])~=0
E,x=j[3-h],(h==1 and u or r)(U[3-h],j[h])aj=(E<x)==(h==2)and E~=x and j~=U
ag=aj
E,x=r(E,x),u(E,x)if aj then
if h==1 then
cb=N
else
bY=N
cl=K[3]&16>0 and u(j[2],U[2])-x or 0
end
end
else
if ar then
E,x=r(u(j[1],U[1]),j[2]),u(r(j[2],U[2]),j[1])aj=j~=U
else
E,x=j[1],j[2]end
end
E,x=E-l[2],x-l[2]bI,bZ=E*aY,x*aY
if(aj or ag)and bU then
bd=Z[6]-ad[1]if K[4]==48 then
bd=bd-aB
end
cJ,cs=bI/q,bZ/q
cI,cC=bI/aE,bZ/aE
cq,ay=0
if ag then
_=c[21][d][4]if(Z[4]==bV or bv==K[4]or K[8])and _>0 then
d=_
end
aA=c[21][d][3]w=1
if(h==3 and K[3]&16>0)or(h==1 and K[3]&8==0)then
w=-1
end
end
for g=p,n,-1 do
cr=bE[g]bC=(aX-C)-cr
f,bR=F-g
if f>=0 and f<=P-1 then
if a<aL[f]then
aG=(g-p)/(n-p)J,H=(cJ*(1-aG)+cI*aG),(cs*(1-aG)+cC*aG)if D(H+J)-(H-J)<ai then
if ag then
if J~=H then
bR=N
bW=aP*tan(bC)as=ca(r(((D(bW)+D(aP))//bP)+1,16))cg=ah((u(bW-cx,0)-bd)/(aA*as))ck=cg*as
bD={f,v-J,v-H,d,cg,x-E,j[5],ad[2]+cl,N,aA*as,as,w,not ay,h==3 and ar}if ck>cq or(not ay)or g==n then
cq=ck-1+as
ay=N
y[a][#y[a]+1]=bD
end
ch=bD
end
end
if aj then
if h~=2 then
if H<V[f]then
aU[a][#aU[a]+1]={f,u(H,T[f]),V[f],j}end
if h==3 then S=H else S=J end
if V[f]>S then V[f]=S end
end
if h~=1 then
if J>T[f]then
aM[a][#aM[a]+1]={f,T[f],r(J,V[f]),j}end
if h==3 then S=J else S=H end
if T[f]<S then T[f]=S end
end
if(V[f]<=T[f])or(h==3 and(not ar)and ag)then
aL[f]=a
bs=bs-1
end
end
end
end
end
if(not bR)and ay then
ch[9]=bl
y[a][#y[a]+1],ay=ch
end
end
if#y[a]>0 then
y[a][#y[a]][9]=bl
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
local bL,cd,ab,bQ=aH.drawTriangleF,aH.drawRectF,aH.setColor,aH.drawLine
cG={aM,aU}if bn then
e=c[24][c[19][8][aw-3]]W,ap=e[1],e[2]A=P/ceil(W*O)for a=0,ceil(W*O),1 do
p=(W/2-a-1+C/90*W)%W
n=(p%1-1)*A
p=ah(p)*ap
for o=0,ap-1,1 do
R=e[5+o+p]i=c[20][R]ab(i[1],i[2],i[3])cd(a*A+n,o*A,A,A)end
end
for a=#y,1,-1 do
for o=1,#y[a]do
d=y[a][o]if d[9]or d[13]then
if d[9]then
Q=y[a][o+1]else
Q=d
end
e=c[21][d[4]]e=c[21][d[4]+(ci%e[5])*"number of wall mipmap levels"+c[19][12][d[11]]]w=d[12]X=r(w,0)f=d[1]n=Q[1]bF=d[2-X]cu=Q[2-X]g=d[3+X]bo=Q[3+X]if not Q[9]then n=n+1 end
aO(d[7])cN=w*(d[2]-d[3])*e[3]/d[6]cy=w*(Q[2]-Q[3])*e[3]/Q[6]bO=w>0 and r or u
bB=0
while g*w<bF*w and(bB<e[2]or not d[14])do
cm=bO(g+cN,bF)bt=bO(bo+cy,cu)R=e[7+((X+d[8]//e[3])%e[2])+e[2]*((d[5])%e[1])]i=c[20][R]if i then
ab(i[1]*s,i[2]*s,i[3]*s)bL(f,g,f,cm,n,bt)bL(f,g,n,bo,n,bt)end
g=cm
bo=bt
X=X+w
bB=bB+1
end
end
end
for b=1,2 do
_=cG[b]c_={}an,av,bg=ai,-ai
for o,d in ax(_[a])do
an=r(an,d[2])av=u(av,d[3])bg=d
e=c[22][d[4][b+2]]if e and not aK then
aO(d[4][5])i=c[20][e[5]]ab(i[1]*s,i[2]*s,i[3]*s)bQ(d[1],v-d[2],d[1],ah(v-d[3]-1))end
end
if bg and aK then
j=bg[4]cF=(j[b]-l[2])bw=cos(C)bx=sin(C)for af=ah(an+v),ceil(av+v)do
al=aY*cF/(v-af)bJ=bw*al-l[1][1]bG=bx*al-l[1][2]bM=-bx*al+bJ
cf=bw*al+bG
cz=bx*al+bJ
cA=-bw*al+bG
ct=(cz-bM)/P
cw=(cA-cf)/P
c_[af]={ct,cw,bM,cf}end
for o,d in ax(_[a])do
if j[b+2]~=0 then
f=d[1]if f%aK==0 then
aO(j[5])m=j[b+2]e=c[22][m]e=c[22][m+(ci%e[4])]bX=F-(F-f)*O
an,av=ah(d[2]+v),ceil(d[3]+v)aA=e[3]for af=an,av do
aR=c_[af]cE=(aR[3]+aR[1]*bX)//aA
cB=(aR[4]+aR[2]*bX)//aA
R=6+(cB%e[1])+e[1]*(cE%e[2])i=c[20][e[R]]if i then
ab(i[1]*s,i[2]*s,i[3]*s)bQ(f,ai-af,f+aK+1,ai-af)end
end
end
end
end
end
end
for o=1,#aT[a]do
_=k[aT[a][o]]if _[6]~=0 then
ba=sub(_,l[1])q=_[20]if q>1 then
I=bz(aJ(ba)-C)q=q*cos(I)if D(I)<90 then
p=F-aD(tan(I)/O*F)bC=aD((180+I+C-_[3]+br*4)/360*8)M=c[16][_[6]][1]if M~=0 and _[6]~=1 then
e=c[17][D(M)][bC%8+1]w=e<0 and-1 or 1
e=D(e)if e>0 then
e=c[23][e+c[19][12][r(ca(q//aW+1),8)]]W,ap=e[1],e[2]A=F/(O*q)aN=A*bh
J=v+(l[2]-_[9])/q*aY
H=J-e[5]*aN
n=p-w*e[4]*A
A,aN=A*e[3],aN*e[3]aO(_[8][5])s=M>0 and s or 1
cc=A
cL=cc*bh
cv=c[15][_[4]or 1][23]&8>0
for g=0,W-1 do
p=n+g*A*w
if a<=aL[bc(aD(p),0,P-1)]then
for h=0,ap-1 do
R=e[7+h+g*ap]if R~=0 then
if cv then
bb=bb%50+1
ab(0,0,0,r(75*c[13][2][bb],255))else
i=c[20][R]ab(i[1]*s,i[2]*s,i[3]*s)end
cd(p,H+h*aN,cc,cL)end
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
br=br+1
end
