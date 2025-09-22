m=math
mx=m.max
mn=m.min
flr=m.floor
pi=m.pi/180
gN=input.getNumber
gB=input.getBool
sB=output.setBool
trueVar=true
falseVar=false
ipairsVar=ipairs
abs=m.abs
tableRemove=table.remove
exp=table.unpack
str=string

-- ELM11 data loading
eldata = require("eldata")

function add(a,b)return{(a[1]+b[1]),(a[2]+b[2])}end
function sub(a,b)return{(a[1]-b[1]),(a[2]-b[2])}end
function s(a)return m.sin(a*pi)end
function c(a)return m.cos(a*pi)end
function at2(a,b)return m.atan(b[2]-a[2],b[1]-a[1])/pi end
function clmp(a,b,c)return mx(mn(c,a),b)end
function dist(a,b)return m.sqrt(((a[1]-b[1])^2)+((a[2]-b[2])^2))end
function dVec(a,b)return{c(a)*b,s(a)*b}end

M={}
romCr=1
levelCr=3
init=trueVar
weapon=2
weaponFireDelay=0
httpTk=0
tick=0
tickGlobal=0
timePassage=0
pRandom=0
stg=1
lookAcl=0
difficulty=2

function findMe(i,a,cr)
	if i<2^15 then
		cr=M[7][i]
		return findMe(cr[cr[3]*(a[2]-cr[2])-cr[4]*(a[1]-cr[1])>0 and 8 or 7],a)
	else
		i=M[5][M[6][i-2^15][2]]
		return M8[M[3][M[2][i[4]][i[5]+6]][6]]
	end
end

function chkPs(p,mv,index,checkPlayerPosLoop,cr) -- declerations variables are local and are set to nil if not filled
	collObject = M1[index]
	s1=M15[collObject[4]]
	r,h=s1[18],s1[19]
	bstDst,hitThing=r
	bounds=findMe(#M[7],p)
	bt,tp=exp(bounds)
	blkPs=sub(p,M101)
	blkCr=M10[2+blkPs[1]//128+blkPs[2]//128*blockmapLim]or{} -- gives default case so it doesn't crash when an object is out-of-bounds
	for i,cr in ipairsVar(blkCr[0]or{}) do -- similar do-not-crash case
		pos=M1[cr]
		if cr~=index and pos and collObject[14]~=pos then
			dst=dist(pos,p)
			s2=M15[pos[4]]
			if pos[20] then
				x1=dst-s2[18]
				if x1<bstDst and s2[23]&1>0 and (s1[23]&1>0 or clmp(p[9],pos[9]-h,pos[9]+s2[19])==p[9])then
					hitThing=pos
					bstDst=x1
					bstA=at2(p,pos)
				end
			end
			if index<2 and dst<50 then -- <2 is smaller than ==1, and 50 is a random radius I picked
				a=s2[25]
				if a>0 then
					for n,v in ipairsVar(M12[a])do
						if v>0 and M12[1][n]<M12[2][n]then
							pos=M12
							M1[cr]=falseVar
							pos[1][n]=flr(mn(pos[1][n]+v,pos[2][n]))
							if clmp(n,5,12)==n then
								weapon=n-4
							end
						end
					end
				end
				a=s2[29]
				if a>0 then
					a=M[11][a]
					for n=7,8 do
						pTng[n]=clmp(pTng[n]+a[n*2-13],pTng[n],a[n*2-12])
					end
					M1[cr]=falseVar
				end
			end
		end
	end	
	
	cr = checkPlayerPosLoop<8
	if tp-bt<h then-- or tp<p[9]+h
		valid=cr or tick%4>0 or bounds[6]<18 or damageThing(collObject,10) -- crushes object if all 3 conditions are false
		return -- returns false (well, nil) if an object can't fit in the current sector
	end
	
	valid=cr or tick%32>0 or bounds[6]~=5 or M12[1][18]>0 or damageThing(collObject,5) -- for damaging floors, doesn't check the height because that uses more space
	-- the M12[1][17]>0 is for the rad suit, yes this means the rad suit effects every thing instead of just the player, it's fine
	
	for i=1,#blkCr do
		cr=M[2][blkCr[i]]
		dst,tmpA=chkLnDst(p,M4[cr[1]],M4[cr[2]])
		if dst<bstDst then
			if cr[3]&1>0 and s1[23]&1>0 or cr[3]&4<1 then -- in order: if the linedef is marked as solid, if the colliding object is marked as solid, if the linedef is one-sided
				if index>1 or d3>0 or cr[3]&4>0 then  -- this makes one-sided linedefs only work on one side for the player, allowing an out-of-bounds player to walk back in bounds
					bstDst=dst
					bstA=tmpA
				end
			else
				tmpTp,tmpBt=mn(cr[9],tp),mx(cr[8],bt)
				if mn(p[9],tp-h)+24<tmpBt or mx(p[9],bt)+h>tmpTp or tmpTp-tmpBt<h then
					bstDst=dst
					bstA=tmpA
				else
					if checkPlayerPosLoop<2 and (cr[3]&512>0 or index<2) and (cr[4]==2 or index>1) then -- 512 is the monster-usable tag, which is the only thing monsters care about
						summonThinker(cr,cr[5]) -- also <2 takes up less space than ==2
					end
					tp,bt=tmpTp,tmpBt
				end
			end
		end
	end
	bounds={bt,tp}
	if mv then
		if bstDst~=r then
			cr=add(p,dVec(bstA,bstDst-r))
			p[1]=cr[1]
			p[2]=cr[2]
		end
		return trueVar
	end
	return bstDst==r
end

function chkLnDst(p1,p2,p3)
	d1=dist(p2,p1)
	aNorm=at2(p2,p3)+90
	aOff=aNorm-at2(p1,p2)
	d3,hOff=exp(dVec(-aOff,d1))
	--hOff=-d1*s(aOff)
	--d3=d1*c(aOff)
	aPsh=aNorm
	if d3<0 then
		aPsh=aPsh+180
	end
	if hOff<0 then
		return d1,at2(p1,p2)
	elseif hOff>dist(p3,p2) then
		return dist(p3,p1),at2(p1,p3)
	else
		return abs(d3),aPsh
	end
end

function chkRayCol(p1,p2,level,index) -- raycast between two points
	bsDst=dist(p1,p2)
	crDst=bsDst
	pass,valid=trueVar -- sets valid to nil which acts as false
	x1,y1=exp(p1)
	x2,y2=exp(p2)
	x21,y21=exp(sub(p2,p1))
	h1,h2=p1[9]+32,p2[9]+32 -- for simplicity it adds 32 to the points' vertical positions, almost always a good thing
	for i,cr in ipairsVar(M[2])do
		x3y3=M4[cr[1]]
		x43,y43=exp(sub(M4[cr[2]],x3y3))
		x13,y13=exp(sub(p1,x3y3))
		crMl=y43*x21-x43*y21
		uA=(x43*y13-y43*x13)/crMl
		uB=(x21*y13-y21*x13)/crMl
		if clmp(uA,0,1)==uA and clmp(uB,0,1)==uB then
			crPos={x1+(uA*x21),y1+(uA*y21)}
			dst=dist(p1,crPos)
			intH=h1+(h2-h1)*(dst/bsDst)
			if clmp(intH,cr[8]+1,cr[9])~=intH then -- if the ray passes through the "window" of a 2-sided linedef
				if dst<crDst then
					pass=falseVar -- note that cr[8] and cr[9] for 1-sided linedefs are 0 and 0
					if level==1 then
						return
					end
					crDst=dst
					crX,crY=exp(crPos)
					crH=intH
					crI=i
				end
			end
		end
	end
	
	if level>1 then
		if level>2 then --level==3
			for i,cr in ipairsVar(M1) do
				if cr and i~=index then
					s1=M15[cr[4]]
					if s1[23]&1>0 and cr[20] then
						dst=dist(p1,cr)
						if dst<crDst then
							uA=chkLnDst(cr,p1,p2)
							d1=(dst/bsDst)
							intH=h1+(h2-h1)*d1
							if clmp(intH,cr[9],cr[9]+s1[19])==intH and uA<s1[18] then
								crDst=dst
								valid,pass=trueVar -- sets pass to nil which counts as false
								crX=x1+(x2-x1)*d1
								crY=y1+(y2-y1)*d1
								crH=intH
								crI=i
							end
						end
					end
				end
			end
		end
		return pass,crI,{crX,crY,crH}
	end
	return trueVar
end

function httpReply()
	httpTkP=httpTk//2
	httpTk=0
end

function rand()
	pRandom=pRandom%256+1
	return M[13][1][pRandom]
end

function damageThing(cr,i,pos)-- thing array, damage, damage source (optional), function declaration variables are local so the most common should be used
	s1=M15[cr[4]]
	if s1[23]&2>0 and cr[7]>0 then
		cr[8]=cr[8]-(i+1)//2
		cr[7]=cr[7]-i//2+mn(cr[8],0)
		cr[8]=mx(cr[8],0)
		cr[33]=s1[13]~="lost soul missile state" and pos or pTng -- makes lost souls always target the player when being damaged
		if rand()<s1[10] then
			cr[6]=s1[9]
			cr[15]=0
			cr[10]=trueVar
		end
	end
end

function chkView(a,b,angle)
	return b[20]and abs(((at2(a,b)-a[3]+180)%360)-180)<angle and chkRayCol(a,b,1)
end

function fireWeapon(source,index)
	ramp=targ and (targ[9]-source[9])*crWeapon[6]/dist(targ,source)or 0
	for i=1,crWeapon[12]do
		a={}
		for i=1,33 do
			a[i]=source[i]
		end
		a[4]=crWeapon[8]
		a[10]=trueVar
		a[14]=source
		
		spreadOff=(rand()/128-1)*crWeapon[10]
		vel=dVec(source[3]+spreadOff,crWeapon[6])
		if crWeapon[7]>0 then -- projectiles
			M1[#M1+1]=a
			s1=M15[a[4]]
			a[6]=s1[3]
			a[9]=source[9]+crWeapon[13]
			a[11]=vel[1]
			a[12]=vel[2]
			a[17]=weapon
			a[19]=ramp
		else
			pos=add(source,vel) -- hitscan
			pos[9]=pTng[9]+ramp
			thingExists,wall,pos=chkRayCol(source,pos,3,index)
			if not thingExists then -- hitscan smoke, I don't know why "not thingExists" means a thing exists
				posOff=sub(pos,dVec(source[3]+spreadOff,1))
				M1[#M1+1]=a
				a[1]=posOff[1]
				a[2]=posOff[2]
				a[6]=M15[a[4]][3]
				a[9]=pos[3]
				a[19]=1
				if valid then
					a=M1[wall]
					damageThing(a,crWeapon[9]*((rand()&3)+2),source)
				end
			end
		end
	end
end

function summonThinker(cr,pos)
	if pos>-1 then
		a=M[9][pos]
		if a[1]>0 or collObject[31]*cr[10][2]-collObject[32]*cr[10][1]<0 then
			b=M8[a[1]]
			thinkers[b and b[30]or#thinkers+1]={pos,1,b or collObject}-- if thinker exists, replace it, if not, create new one
			cr[4]=a[7]--used to remove the link to the thinker for single-use specials
			a=a[8]>0 and summonThinker(cr,a[8])
		end
	else
		init=trueVar
		levelCr=-pos
		out[10]=-pos
	end
end

function autoAim()
	rampBst,targ=2048
	for i,cr in ipairsVar(M1)do -- vertical auto aim
		if i>1 and cr and chkView(pTng,cr,10)then
			dst=dist(cr,pTng)
			if dst<rampBst then
				if M15[cr[4]][23]&2>0 then
					targ=cr
					rampBst=dst
				end
			end
		end
	end
end

function fall(cr)
	if cr[9]~=bounds[1] and not flying then
		cr[9]=bounds[1]
		cr[10]=true
	end
end

function onTick()
	sB(9,gB(32))
	sB(2,gB(11))
	sB(3,falseVar)

	-- ELM11: Load level data once
	if not loaded and init then
		eldata.load_level_data("e1m1")
		loaded = true
	end

	if loaded then
		if init then
			thinkers,init={}
			sndLst=1
			-- ELM11: Data already loaded directly into M[1]-M[7]
			M1=M[1]
			M4=M[4]
			M8=M[8]
			M10=M[10]
			M101,M10[1]=M10[1]
			M12=M[12]
			M15=M[15]
			for i=14,16 do
				M12[1][i]=0
			end
			levelCr=levelCr+1
			for i=#M1,1,-1 do
				cr=M1[i]
				for j=7,32 do
					cr[j]=0
				end
				cr[7]=M15[cr[4]][4]-- health
				cr[9],cr[10]=findMe(#M[7],cr)[1]-- vertical position
				--cr[10]=falseVar-- send update to render block, set to nil above which counts as false
				--cr[20]=trueVar-- alive state, set to zero above which counts as true
				if cr[5]&difficulty<1 then
					tableRemove(M1,i)
				elseif cr[4]==1 then-- identify player
					if pTng then
						cr[7]=pTng[7]
						cr[8]=pTng[8]
					end
					pTng=cr
				end
			end
			blockmapLim=M101[3]
		end

		for i,cr in ipairsVar(M[2])do -- refresh walls
			cr[10]=sub(M4[cr[2]],M4[cr[1]])
			if cr[3]&4>0 then
				s1,s2=M8[M[3][cr[6]][6]],M8[M[3][cr[7]][6]]
				cr[8]=mx(s1[1],s2[1])
				cr[9],s1[30],s2[30]=mn(s1[2],s2[2])
			else
				cr[8],cr[9]=0,0
			end
		end
		
		out={}
		for i=1,32 do
			out[i]=0
		end
		tickGlobal=tickGlobal+1
		
		timePassage=mn(timePassage+1/httpTkP,2/35)
		sB(1,timePassage>=0)
		if timePassage>=0 then
			timePassage=timePassage-1/35
			tick=tick+1
			
			for i=2,#M10 do
				M10[i][0]={}
			end
			
			--for i,cr in ipairsVar(M[9])do -- why did this exist?
			--	cr[6]=falseVar
			--end
			
			for i,v in ipairsVar(thinkers)do			
				cr=M[9][v[1]]
				pos=v[3]
				a=cr[2]
				s1=pos[a]
				pos[a]=clmp(cr[3],s1-cr[4],s1+cr[4])+0
				s1=pos[a]
				if s1==cr[3]then
					thinkers[i]=v[2]==cr[5]and{cr[6],1,pos}or{v[1],v[2]+1,pos}
					if cr[6]==0 then
						tableRemove(thinkers,i)
					end
				end
				pos[10]=pos[10]or s1~=v
				
				pos[30]=i
			end
			
			--pTng[7]=mx(5,pTng[7]) -- invulnerability
			for i,cr in ipairsVar(M1)do
				if cr then
					blkPs=sub(cr,M101)
					blkCr=M10[2+blkPs[1]//128+blkPs[2]//128*blockmapLim]
					if blkCr then
						blkCr[0][#blkCr[0]+1]=i
					end
				end
			end
			for i,cr in ipairsVar(M1)do
				if cr then
					for j,v in ipairsVar({1,2,9})do-- updates position based on velocity
						cr[v]=cr[v]+cr[v+10]
					end
					cr[15]=cr[15]+1
					s1=M15[cr[4]]
					if cr[7]<=0 and cr[20]then
						cr[15]=0
						cr[6]=s1[cr[7]<=-s1[4] and s1[15]>1 and 15 or 14]-- to gib or not to gib
						cr[10],cr[20]=trueVar
						out[12]=s1[16] -- death sound
						if s1[27]>0 then-- item drop logic, copies what died and turns it into a pickup
							pos={}
							for j=1,30 do-- just to make sure it copies the entire thing
								pos[j]=cr[j]
							end
							pos[4]=s1[27]
							pos[6]=s1[28]
							M1[#M1+1]=pos
						end
					end
					state=M[16][cr[6]]
					cr[33] = cr[33] and (cr[33][20] and cr[33] or pTng) -- switches back to player if there's no target or the target is dead
					
					if cr[15]>=state[2] and state[2]~=-1 then
						cr[6]=state[4]
						cr[15]=0
						state3=M[16][cr[6]][3]
						flying=s1[23]&4>0
						if state3==1 then-- explode logic
							for j,stg in ipairsVar(M1) do
								if stg then
									nm=128-dist(cr,stg)
									if nm>0 then
										damageThing(stg,nm)
									end
								end
							end
						elseif state3==2 then-- view logic
							if chkView(cr,pTng,90) then
								cr[33]=pTng-- set target
								cr[6]=s1[5]
								out[12]=s1[6] -- see sound
							end
							chkPs(cr,falseVar,i,8)
							fall(cr)
						elseif state3==3 then-- chase logic
							angle,valid=flr(at2(cr,cr[33])/45+0.5)*45
							stg=1
							while stg<5 and not valid do-- checks angles 0, 45, -45, 90, -90 relative to desired direction
								nm=add(cr,dVec(angle+M[19][2][stg],8))
								nm[9]=cr[9]
								valid=chkPs(nm,falseVar,i,stg)and(bounds[1]>=nm[9]-24 or flying)
								stg=stg+1
							end
							
							if valid then
								for j=1,2 do
									cr[30+j]=nm[j]-cr[j]
									cr[j]=nm[j]
								end
								cr[3]=angle
								cr[10]=trueVar
							else
								chkPs(cr,falseVar,i,8)
							end
							fall(cr)
							
							a=dist(cr,cr[33])
							if s1[13]>0 and chkRayCol(cr,cr[33],1)and mn(a,230)<rand()then
								cr[6]=s1[13]
							end
							if a<64 and s1[12]>0 then
								cr[6]=s1[12]
							end
						elseif state3==5 then-- bfg tracers
							for j=1,11 do
								pTng[3]=pTng[3]+M[19][9][j]
								crWeapon=M[14][23]
								autoAim()
								fireWeapon(pTng,1)
							end
							pTng[3]=pTng[3]-20
						elseif state3>9 and cr[20]then-- attack logic
							cr[3]=at2(cr,cr[33])
							crWeapon=M[14][state3]
							cr[10]=trueVar
							targ=cr[33]
							fireWeapon(cr,i)
						end
					end
					if cr[17] and cr[17]>0 then -- projectile logic
						crWeapon=M[14][cr[17]]
						if not chkPs(cr,falseVar,i,2) or cr[9]<=bounds[1] then
							if hitThing then
								damageThing(hitThing,s1[21]*((rand()&7)+1),cr[14])
							end
							cr[1]=cr[1]-cr[11]
							cr[2]=cr[2]-cr[12]
							cr[3]=0
							cr[6]=M15[cr[4]][5] -- this uses see state instead of death state to keep lost souls alive after impact
							cr[10]=trueVar
							cr[11]=0
							cr[12],cr[17]=0
							out[12]=s1[16] -- death sound
							cr[19]=0
						end
					end
					if cr[6]==1 then
						M1[i]=falseVar
					end
				end
			end
			
			for i=1,8 do
				if gB(i)and M12[1][i+4]>0 then
					weapon=i
				end
			end
			
			crWeapon=M[14][weapon]
			
			M12[1][18]=M12[1][18]-1
			
			pTng[3]=pTng[3]-gN(3)*(clmp(lookAcl,5,6)*1.5-6)-- lookAcl>5 and 3 or 1.5
			lookAcl=abs(gN(3))*lookAcl+1
			pp=pTng
			for i=1,2 do
				pp=add(pp,dVec(pTng[3]-180+90*i,gN(i)*8.33))
			end
			pp[9]=pTng[9]
			for i=1,8 do
				valid=chkPs(pp,trueVar,1,i)
			end
			if valid then
				for i=1,2 do
					pTng[30+i]=pp[i]-pTng[i]
					pTng[i]=pp[i]
				end
				if pTng[9]>bounds[1]then
					pTng[19]=pTng[19]-1
				else
					pTng[9]=mn(bounds[1],pTng[9]+4)
					pTng[19]=mx(0,pTng[19])
				end
			else
				pTng[19]=0
				pTng[9]=bounds[1] -- puts the player's heigh back in-bounds
			end
			
			ammo=M12[1]
			pos=crWeapon[1]
			if gB(31) and weaponFireDelay<=0 and ammo[pos]>=crWeapon[2] then -- player shooting logic
				sB(3,trueVar) -- announces player is firing
				weaponFireDelay=crWeapon[3]
				if pos>0 then -- drain ammo
					ammo[pos]=ammo[pos]-crWeapon[2]
				end
				autoAim()
				
				fireWeapon(pTng,1)
			end
			weaponFireDelay=weaponFireDelay-1
			
			if gN(4)<0 then -- interacting with doors/linedefs in general
				cr=add(pTng,dVec(pTng[3],64))
				cr[9]=pTng[9]
				thingExists,wall=chkRayCol(pTng,cr,2,1)
				cr=M[2][wall]
				if thingExists==falseVar then
					out[2]=wall
					pos,valid=cr[4]
					for i=14,16 do-- used for keyed doors
						valid=valid or M12[1][i]>0 and pos==i
					end
					if pos==1 or valid then
						summonThinker(cr,cr[5])
					elseif pos>3000 and pos<3005 then
						difficulty=flr(pos-3000)
					end
				end
			end

			--for i,cr in ipairsVar(M8)do -- moves doors, old implementation
			--	if cr[10]then
			--		if cr[10]>2then
			--			cr[2]=cr[2]-2
			--			if cr[2]==cr[1]then
			--				cr[10]=nilVar
			--			end
			--			refWlls=trueVar
			--			cr[8]=trueVar
			--		elseif cr[10]>1then
			--			cr[11]=cr[11]+1
			--			if cr[11]>159then
			--				cr[10]=3
			--			end
			--		else
			--			cr[2]=cr[2]+2
			--			if cr[2]==cr[9]-4then
			--				cr[10]=2
			--				cr[11]=0
			--			end
			--			refWlls=trueVar
			--			cr[8]=trueVar
			--		end
			--	end
			--end
		end

		

		out[1]=weapon
		for i=3,14 do
			out[i]=pTng[M[19][4][i]] or out[i]-- M[19][4] is 0,0,7,8,0,4,1,2,9,0,0,0,0,3 yes it's using the spawn state as the index, it's always 1 so it's alright
		end
		M12[1][17]=httpTkP
		out[11]=M12[1][tickGlobal%#M12[1]+1]

		i=sndLst
		running=trueVar
		slt=1
		ttEnd=#M1+#M8
		while slt<3 and running do
			pos=slt*9+6
			if i<=#M[1] then
				cr=M1[i]
				if cr then
					if cr[10] and i>1 then
						out[pos],cr[10]=i
						for j=1,8 do
							out[pos+j]=cr[M[19][1][j]]-- M[19][1] is 1,2,9,6,11,12,19,3
						end
						slt=slt+1
					end
				else
					out[pos]=-i
					tableRemove(M1,i)
					slt=slt+1
					ttEnd=ttEnd-1
				end
			else
				cr=M8[i-#M1]
				if cr[10] then
					out[pos],cr[10]=i-#M1+2^15
					for j=1,6 do
						out[pos+j]=cr[j]
					end
					
					slt=slt+1
				end
			end
			i=(i-2)%ttEnd+1
			sndLst=mn(sndLst,ttEnd)
			running=i~=sndLst
		end
		sndLst=i

		for i=1,32 do
			output.setNumber(i,out[i])
		end
	end

	httpTk=httpTk+1
	async.httpGet(8,"")
end