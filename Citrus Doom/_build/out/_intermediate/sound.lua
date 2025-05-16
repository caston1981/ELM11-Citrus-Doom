
m=math
mx=m.max
mn=m.min
abs=m.abs
flr=m.floor
sqrt=m.sqrt
gN=input.getNumber
gB=input.getBool
sN=output.setNumber
pi=m.pi
falseVar=false
trueVar=true
str=string

function add(a,b)return{(a[1]+b[1]),(a[2]+b[2])}end
function cross(a,b)return a[1]*b[2]-a[2]*b[1]end
function sub(a,b)return{(a[1]-b[1]),(a[2]-b[2])}end
function mul(a,b)return{a[1]*b,a[2]*b}end
function wrap(a)return ((a+180)%360)-180 end
function sin(a)return m.sin(a/180*pi)end
function cos(a)return m.cos(a/180*pi)end
function tan(a)return m.tan(a/180*pi)end
function at(a)return m.atan(a)*180/pi end
function at2(a)return m.atan(a[2],a[1])*180/pi end
function clmp(a,b,c)return mn(mx(b,a),c)end
function rnd(a)return flr(a+0.5)end
function dist(a,b)return sqrt(((a[1]-b[1])^2)+((a[2]-b[2])^2))end
function invY(a)return {a[1],-a[2]}end
function rnd2(a)
	a=a-1
	a=a|(a>>1)
	a=a|(a>>2)
	a=a|(a>>4)
	return a+1
end

M={}
romCr=1
levelCr=3
loaded=falseVar
tick=1

pp={{0,0},0,0}

wdth=288
wdthH=wdth//2
hght=128
hghtH=hght//2
pixelAspectCorrection=1.2
weaponList={1,1}
mRandom=1
face=1

levelCr=3

LOD=400
health=100
yellow=0
red=0
difficulty=3002
transferCache={}
bigNumb=32768 -- 2^15
weaponObjects={}
mapScale=0.05

tick=0
stg=1
mN=0
fireCooldown=0
init=trueVar

function findMe(i,a) -- finding sub-sector a position is in using BSP tree
	if i<bigNumb then
		g=M[7][i]
		return findMe(g[0<cross({g[3],g[4]},sub(a,g))and 8 or 7],a)
	else
		return i-bigNumb
	end
end

function findSec(a) -- finds a sub sector's sector
	g=M[5][M[6][a][2]]
	return M[8][M[3][M[2][g[4]][g[5]+6]][6]]
end

function onTick()
	mN=0

	for j=1,3 do
		if gB(9) and (not loaded)or not M[21]then
			rom=property.getText(romCr)
			i=1
			nm=""
			cr=str.sub(rom,i,i)
			while cr~=""do
				pos=str.byte(cr)
				if pos>64then
					nm=(nm..pos-65)+0
					if stg==1then
						curIndex=nm
						M[nm]=M[nm]or{}
					elseif stg==2then
						intH=nm
						curLength=0
					elseif stg==3then
						count=nm
					else
						if curLength==0then
							curLength=intH
							count=count-1
							curM={}
							M[curIndex][#M[curIndex]+1]=curM
						end
						curM[#curM+1]=nm
						curLength=curLength-1
						stg=mx(curLength,count)>0 and stg-1 or 0
					end
					stg=stg+1
					nm=""
				else
					nm=nm..cr
				end
				i=i+1
				cr=str.sub(rom,i,i)
			end
			romCr=romCr+1
			loaded=rom==""
		end
	end

	if loaded then
		
		
		
		
		if health>0 and not init then
			tmp={}
			transferCache[#transferCache+1]=tmp
			rIn=5
			cr=gN(rIn)
			while cr~=0 do
				info={}
				tmp[#tmp+1]=info
				for i=0,8 do
					info[i+1]=gN(rIn+i)
				end
				rIn=rIn+9
				cr=gN(rIn)
			end
		end
		
		
		--sN(5,0)
		
		--cr=M[18][1]
		--if ((tick*2-1)%300)+1<=#cr then
		--	cr=cr[((tick*2-1)%300)+1]
		--	if cr>0 then
		--		sN(5,clmp(rnd((cr+12)//2),1,60))
		--	end
		--end
		--
		if gB(1) then
			tick=tick+1
			if init then
				for i=1,10 do
					M[i]=M[i+10*levelCr]
				end
				levelCr=levelCr+1
				init=falseVar
				for i=1,#M[1] do
					cr=M[1][i]
				end
				for i=1,#M[8] do
					M[8][i][8]={}
				end
				for i=1,#M[6] do
					cr=findSec(i)
					cr[8][#cr[8]+1]=i
				end
			end

			if gN(9)>0 then
				init=trueVar
				levelCr=gN(9)
			end
			
			if health>0 then
				if weapon~=gN(1) and gN(1)>0then
					weaponObjects={}
					cr={}
					cr[1]=M[29][gN(1)]
					cr[2]=M[16][cr[1][3]]
					test=cr[2][1]
					cr[3]=0
					weaponObjects[1]=cr
				end
				weapon=gN(1)

				fire=gB(3)
				if fire and weapon==5 then
					if fireCooldown<=0 then
						fireCooldown=7
					else
						fire=false
					end
				end
				fireCooldown=fireCooldown-1
				
				if fire then
					cr=weaponObjects[1]
					cr[2]=M[16][cr[1][4]]
					cr[3]=-1
				end
			end
			
			for i=#weaponObjects,1,-1 do
				cr=weaponObjects[i]
				if cr[3]==0 then
					if cr[2][3]==4 then
						if weapon==5 and fireCooldown<5 then
							offset=1
						else
							offset=0
						end
						weaponObjects[#weaponObjects+1]={cr[1],M[16][cr[1][5]+offset],2}
					end
				end
				cr[3]=cr[3]+1
				if cr[3]>=cr[2][2] then
					if cr[2][4]>2 then
						cr[2]=M[16][cr[2][4]]
						cr[3]=0
					else
						table.remove(weaponObjects,i)
					end
				end
			end
			
			
			if init then
				yellow=50
			end
			red=mx(red-4,0)
			red=clmp(red+(health-gN(3))*3,0,255)
			yellow=mx(yellow-1.5,0)
			health=gN(3)
			armour=gN(4)
			if gN(2)>0 then
				cr=M[2][gN(2)]
				if cr then
					if cr[4]>3004 and cr[4]<3008 then
						LOD=mx(LOD+3*(cr[4]-3006),1)
					elseif cr[4]>3000 then
						difficulty=cr[4]
					end
				end
			end
			
			for i=1,#transferCache do
				
				tmp=transferCache[i]
				for j=1,#tmp do
					info=tmp[j]
					cr=info[1]
					if cr>(2^15) then
						cr=M[8][cr-(2^15)]
						for k=1,6 do
							cr[k]=info[k+1]
						end
					elseif cr<0 then
						if -cr<=#M[1] then
							if M[1][-cr]~=nil then
								info=M[1][-cr][6]
								if M[16][info][5]>0 then
									yellow=mx(yellow,15)
								end
							else
								M[1][-cr]={}
							end
							while -cr>#M[1] do
								M[1][#M[1]+1]=falseVar
							end
							table.remove(M[1],-cr)
						end
					else
						if not M[1][cr] then
							M[1][cr]={}
						end
						cr=M[1][cr]
						for k=1,8 do
							cr[M[19][1][k]]=info[k+1]-- M[19][1] is 1,2,9,6,11,12,19,3
						end
						cr[15]=0
						--cr[7]=findMe(#M[7],cr)
						--cr[8]=findSec(cr[7])
					end
				end
			end
			transferCache={}

			cr=M[1][1]
			pp[1]={cr[1],cr[2]}
			--pp[2]=cr[9]+41,1
			pp[3]=cr[3]

			ppSubSec=findMe(#M[7],pp[1])
			ppSec=findSec(ppSubSec)
			pp[2]=ppSec[1]+41
			ppLght=mn(ppSec[5]/255,1)^1.3-- the lower-than-2.2 corection factor means the weapon is brighter than the environment
			
			for i=1,#ppSec[8] do
				cr=M[6][ppSec[8][i]]
				for j=cr[2],cr[1]+cr[2]-1 do
					seg=M[5][j]
					line=M[2][seg[4]]
					line[8]=true
				end
			end

			showMap=gB(2)
			
			if tick%16==1 then
				mRandom=mRandom%256+1
				face=(4-mn(health//20,4))*8
				if weaponList[weapon] then
					face=face+M[13][1][mRandom]%3
				else
					weaponList[weapon]=1
					face=face+6
				end
				
				if health<=0 then
					face=41
				end
			end
			
		end
		

	end


end

function onDraw()
	screenVar=screen
	local tri,rec,stCl,text,drLine=screenVar.drawTriangleF,screenVar.drawRectF,screenVar.setColor,screenVar.drawText,screenVar.drawLine
	mN=mN+1

	if mN<=1 then
		
		if M[21]and not loaded then
			tex=M[25][1]
			tW,tH=tex[1],tex[2]
			x1,y1=wdthH-tW/2,80-tH/2
			for k=0,tW-1 do
				x2=x1+k
				for n=0,tH-1 do
					pix=tex[5+n+k*tH]
					if pix~=0 then
						col=M[20][pix]
						stCl(col[1],col[2],col[3])
						rec(x2,y1+n,1,1)
					end
				end
			end
		end
		
		if not showMap then
			for i=1,#weaponObjects do
				tex=weaponObjects[i][2][1]
				lght=tex>0 and ppLght or 1
				tex=M[17][abs(tex)][1]
				tex=M[23][tex]
				tW,tH,pxSize=tex[1],tex[2],tex[3]*0.7
				pxSizeV=pxSize*pixelAspectCorrection
				x1,y1=wdthH-(tex[4]+160)*0.7,hght-(tex[5]+148)*0.7*pixelAspectCorrection
				for k=0,tW-1 do
					x2=x1+k*pxSize
					for n=0,tH-1 do
						pix=tex[7+n+k*tH]
						if pix~=0 then
							col=M[20][pix]
							stCl(col[1]*lght,col[2]*lght,col[3]*lght)
							rec(x2,y1+n*pxSizeV,pxSize,pxSizeV)
						end
					end
				end
			end
		end
		
		if loaded then
			if showMap then
				stCl(0,0,0)
				rec(0,0,wdth,hght)
				for i=1,#M[2] do
					cr=M[2][i]
					if cr[8] then
						p1=add(invY(mul(sub(M[4][cr[1]],pp[1]),mapScale)),{wdthH,hghtH})
						p2=add(invY(mul(sub(M[4][cr[2]],pp[1]),mapScale)),{wdthH,hghtH})
						
						if cr[3]&4>0 then
							stCl(50,50,50)
						else
							stCl(255,255,255)
						end
						drLine(p1[1],p1[2],p2[1],p2[2])
					end
				end
				stCl(255,255,255)
				cr=M[19][10]
				for i=1,#cr,4 do
					sinP=sin(pp[3]-90)
					cosP=cos(pp[3]-90)
					p1={cr[i]*cosP+cr[i+1]*sinP,cr[i+1]*cosP-cr[i]*sinP}
					p2={cr[i+2]*cosP+cr[i+3]*sinP,cr[i+3]*cosP-cr[i+2]*sinP}

					p1=add(p1,{wdthH,hghtH})
					p2=add(p2,{wdthH,hghtH})

					drLine(p1[1],p1[2],p2[1],p2[2])
				end
			end

			stCl(255,red>0 and 0 or 255,0,red+yellow)
			rec(0,0,wdth,hght)
			
			stCl(50,50,50)
			rec(0,hght,wdth,32)
			stCl(25,25,25)
			rec(wdthH-16,hght,32,32)
			tex=M[23][M[19][3][1]+face]
			tW,tH=tex[1],tex[2]
			x1=wdthH-tW/2
			for i=0,tW-1 do
				for j=0,tH-1 do
					pix=tex[7+j+i*tH]
					if pix~=0 then
						col=M[20][pix]
						stCl(col[1],col[2],col[3])
						rec(x1+i,hght+1+j,1,1)
					end
				end
			end
			for i=5,7 do
				cr=M[19][i]
				stCl(cr[1],cr[2],cr[3])
				rec(229,95+i*7,6,7)
			end

			stCl(255,255,255)
			text(100,131,flr(health))
			text(100,137,flr(armour))
			text(1,143,"DIF:")
			text(1,149,"LOD:")
			text(26,149,flr(LOD))
			text(26,143,flr(mn(difficulty-3000,3)))
		end
		
		text(1,131,"ROM:")
		text(26,131,romCr)
		text(1,137,"TPS:")
	end
end