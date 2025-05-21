bf=""

g=255
w=180
au=true
aw=false
aI=input
ay=table.remove
i=math
G=i.max
X=i.min
abs=i.abs
O=i.floor
sqrt=i.sqrt
f=aI.getNumber
ab=aI.getBool
aZ=output.setNumber
pi=i.pi
am=aw
ax=au
ah=string
function ad(b,e)return{(b[1]+e[1]),(b[2]+e[2])}end
function aW(b,e)return b[1]*e[2]-b[2]*e[1]end
function sub(b,e)return{(b[1]-e[1]),(b[2]-e[2])}end
function aC(b,e)return{b[1]*e,b[2]*e}end
function ba(b)return((b+w)%360)-w end
function sin(b)return i.sin(b/w*pi)end
function cos(b)return i.cos(b/w*pi)end
function tan(b)return i.tan(b/w*pi)end
function aX(b)return i.atan(b)*w/pi end
function aY(b)return i.atan(b[2],b[1])*w/pi end
function aU(b,e,aP)return X(G(e,b),aP)end
function bd(b)return O(b+.5)end
function bb(b,e)return sqrt(((b[1]-e[1])^2)+((b[2]-e[2])^2))end
function aE(b)return{b[1],-b[2]}end
function bc(b)b=b-1
b=b|(b>>1)b=b|(b>>2)b=b|(b>>4)return b+1
end
a={}ac=1
U=3
J=am
s={{0,0},0,0}Z=288
q=Z//2
A=128
V=A//2
aH=1.2
at={1,1}aj=1
K=1
U=3
ao=400
o=100
aA=100
F=0
D=0
av=3002
I={}aM=32768
m={}aK=.05
M=0
W=0
y=1
af=0
H=0
R=ax
function az(c,b)if c<aM then
C=a[7][c]return az(C[0<aW({C[3],C[4]},sub(b,C))and 8 or 7],b)else
return c-aM
end
end
function aF(b)C=a[5][a[6][b][2]]return a[8][a[3][a[2][C[4]][C[5]+6]][6]]end
function onTick()af=0
for z=1,3 do
if ab(9)and(not J)or not a[21]then
al=property.getText(ac)c=1
j=bf
_=ah.sub(al,c,c)while _~=bfdo
aG=ah.byte(_)if aG>64then
j=(j..aG-65)+0
if y==1then
aB=j
a[j]=a[j]or{}elseif y==2then
aQ=j
P=0
elseif y==3then
ag=j
else
if P==0then
P=aQ
ag=ag-1
as={}a[aB][#a[aB]+1]=as
end
as[#as+1]=j
P=P-1
y=G(P,ag)>0 and y-1 or 0
end
y=y+1
j=bf
else
j=j.._
end
c=c+1
_=ah.sub(al,c,c)end
ac=ac+1
J=al==bf
end
end
if J then
if o>0 and not R then
E={}I[#I+1]=E
L=5
_=f(L)while _~=0 do
t={}E[#E+1]=t
for c=0,8 do
t[c+1]=f(L+c)end
L=L+9
_=f(L)end
end
if ab(1)then
if R then
for c=1,10 do
a[c]=a[c+10*U]end
U=U+1
R=am
for c=1,#a[1]do
_=a[1][c]end
for c=1,#a[8]do
a[8][c][8]={}end
for c=1,#a[6]do
_=aF(c)_[8][#_[8]+1]=c
end
end
if f(9)>0 then
R=ax
U=f(9)end
if o>0 then
if T~=f(1)and f(1)>0then
m={}_={}_[1]=a[29][f(1)]_[2]=a[16][_[1][3]]b_=_[2][1]_[3]=0
m[1]=_
end
T=f(1)aq=ab(3)if aq and T==5 then
if H<=0 then
H=7
else
aq=aw
end
end
H=H-1
if aq then
_=m[1]_[2]=a[16][_[1][4]]_[3]=-1
end
end
for c=#m,1,-1 do
_=m[c]if _[3]==0 then
if _[2][3]==4 then
if T==5 and H<5 then
aN=1
else
aN=0
end
m[#m+1]={_[1],a[16][_[1][5]+aN],2}end
end
_[3]=_[3]+1
if _[3]>=_[2][2]then
if _[2][4]>2 then
_[2]=a[16][_[2][4]]_[3]=0
else
ay(m,c)end
end
end
if R then
F=50
end
D=G(D-4,0)D=aU(D+(o-f(3))*3,0,g)F=G(F-1.5,0)o=f(3)aS=f(4)if f(2)>0 then
_=a[2][f(2)]if _ then
if _[4]>3004 and _[4]<3008 then
ao=G(ao+3*(_[4]-3006),1)elseif _[4]>3000 then
av=_[4]end
end
end
for c=1,#I do
E=I[c]for z=1,#E do
t=E[z]_=t[1]if _>(2^15)then
_=a[8][_-(2^15)]for k=1,6 do
_[k]=t[k+1]end
elseif _<0 then
if-_<=#a[1]then
if a[1][-_]~=nil then
t=a[1][-_][6]if a[16][t][5]>0 then
F=G(F,15)end
else
a[1][-_]={}end
while-_>#a[1]do
a[1][#a[1]+1]=am
end
ay(a[1],-_)end
else
if not a[1][_]then
a[1][_]={}end
_=a[1][_]for k=1,8 do
_[a[19][1][k]]=t[k+1]end
_[15]=0
end
end
end
I={}_=a[1][1]s[1]={_[1],_[2]}s[3]=_[3]aT=az(#a[7],s[1])Y=aF(aT)s[2]=Y[1]+41
aO=X(Y[5]/g,1)^1.3
for c=1,#Y[8]do
_=a[6][Y[8][c]]for z=_[2],_[1]+_[2]-1 do
aR=a[5][z]aV=a[2][aR[4]]aV[8]=au
end
end
aJ=ab(2)M=M-1
W=W-1
if not at[T]then
at[T]=1
W=70
end
ak=(4-X(o//20,4))*8
if o<=0 then
K=41
elseif W>0 then
K=ak+6
elseif o<aA then
M=35
K=ak+7
elseif M<=0 then
M=16
aj=aj%256+1
K=ak+a[13][1][aj]%3
end
aA=o
end
end
end
function onDraw()S=screen
local be,u,h,n,aL=S.drawTriangleF,S.drawRectF,S.setColor,S.drawText,S.drawLine
af=af+1
if af<=1 then
if a[21]and not J then
d=a[25][1]x,p=d[1],d[2]N,ap=q-x/2,80-p/2
for k=0,x-1 do
ai=N+k
for Q=0,p-1 do
r=d[5+Q+k*p]if r~=0 then
l=a[20][r]h(l[1],l[2],l[3])u(ai,ap+Q,1,1)end
end
end
end
if not aJ then
for c=1,#m do
d=m[c][2][1]ar=d>0 and aO or 1
d=a[17][abs(d)][1]d=a[23][d]x,p,an=d[1],d[2],d[3]*.7
aD=an*aH
N,ap=q-(d[4]+160)*.7,A-(d[5]+148)*.7*aH
for k=0,x-1 do
ai=N+k*an
for Q=0,p-1 do
r=d[7+Q+k*p]if r~=0 then
l=a[20][r]h(l[1]*ar,l[2]*ar,l[3]*ar)u(ai,ap+Q*aD,an,aD)end
end
end
end
end
if J then
if aJ then
h(0,0,0)u(0,0,Z,A)for c=1,#a[2]do
_=a[2][c]if _[8]then
B=ad(aE(aC(sub(a[4][_[1]],s[1]),aK)),{q,V})v=ad(aE(aC(sub(a[4][_[2]],s[1]),aK)),{q,V})if _[3]&4>0 then
h(50,50,50)else
h(g,g,g)end
aL(B[1],B[2],v[1],v[2])end
end
h(g,g,g)_=a[19][10]for c=1,#_,4 do
ae=sin(s[3]-90)aa=cos(s[3]-90)B={_[c]*aa+_[c+1]*ae,_[c+1]*aa-_[c]*ae}v={_[c+2]*aa+_[c+3]*ae,_[c+3]*aa-_[c+2]*ae}B=ad(B,{q,V})v=ad(v,{q,V})aL(B[1],B[2],v[1],v[2])end
end
h(g,D>0 and 0 or g,0,D+F)u(0,0,Z,A)h(50,50,50)u(0,A,Z,32)h(25,25,25)u(q-16,A,32,32)d=a[23][a[19][3][1]+K]x,p=d[1],d[2]N=q-x/2
for c=0,x-1 do
for z=0,p-1 do
r=d[7+z+c*p]if r~=0 then
l=a[20][r]h(l[1],l[2],l[3])u(N+c,A+1+z,1,1)end
end
end
for c=5,7 do
_=a[19][c]h(_[1],_[2],_[3])u(229,95+c*7,6,7)end
h(g,g,g)n(100,131,O(o))n(100,137,O(aS))n(1,143,"DIF:")n(1,149,"LOD:")n(26,149,O(ao))n(26,143,O(X(av-3000,3)))end
n(1,131,"ROM:")n(26,131,ac)n(1,137,"TPS:")end
end
