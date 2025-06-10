m=math
mx=m.max
mn=m.min
absFunc=m.abs
flr=m.floor
ceil=m.ceil
sqrt=m.sqrt
gN=input.getNumber
gB=input.getBool
pi=m.pi/180
falseVar=false
trueVar=true
ipairsVar=ipairs
tableRemove=table.remove
str=string

function cross(a,b)return a[1]*b[2]-a[2]*b[1]end
function sub(a,b)return{(a[1]-b[1]),(a[2]-b[2])}end
function wrap(a)return ((a+180)%360)-180 end
function sin(a)return m.sin(a*pi)end
function cos(a)return m.cos(a*pi)end
function tan(a)return m.tan(a*pi)end
function at(a)return m.atan(a)/pi end
function at2(a)return m.atan(a[2],a[1])/pi end
function clmp(a,b,cr)return mn(mx(b,a),cr)end
function rnd(a)return flr(a+0.5)end
function dist(a,b)return sqrt(((a[1]-b[1])^2)+((a[2]-b[2])^2))end -- only checks horizontal distance
function rnd2(a) -- rounds to nearest power of 2
	a=a-1
	a=a|(a>>1)
	a=a|(a>>2)
	a=a|(a>>4)
	return a+1
end
function lghtMath(a)lght=mn(a/255+screenBrightOffset,1)^2.2 end

M={}
romCr=1
levelCr=3
init=trueVar

pp={{0,0},0}
playerRotation=0

wdth=288
wdthH=144
hght=128
hghtH=64
thngs={}
LOD=400-- higher is more quality
LODH=200
health=1
mRandom=0
transferCache={}
bigNumb=2^15
difficulty=3002
fuzz=0
screenBrightTimer=0

tick=0

pixelAspectCorrection=1.2 -- doom's pixels aren't actually meant to be square
fov=52 -- half of fov, so real fov is 104. doom normally has an fov of 90 but it's higher to keep a similar vertical fov
fovT=tan(fov)
vMult=hghtH*pixelAspectCorrection*wdth/hght/fovT -- scales walls to vertically look right

stg=1

xAng={}
for i=-wdthH,wdthH do xAng[i]=at2({1,i/wdthH*fovT})end

function treeing(i) -- sorting sectors using BSP tree
	if i<bigNumb then
		local g,si=M[7][i]
		si=0<cross({g[3],g[4]},sub(pp[1],g))and 8 or 7
		treeing(g[si])
		treeing(g[15-si])
	else
		ssecs[#ssecs+1]=i-bigNumb
	end
end

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
	return M8[M[3][M[2][g[4]][g[5]+6]][6]]
end

function onTick()
	mN=0

	for j=1,3 do
		if gB(9) and (not loaded)or not M[21]then -- M[21] is the first thing loaded after the loading screen orange, halting loading when that's done
			rom=property.getText(romCr)
			i=1
			nm=""
			cr=str.sub(rom,i,i)
			while cr~=""do
				pos=str.byte(cr)
				if pos>64 then
					nm=(nm..pos-65)+0
					if stg==1 then
						curIndex=nm
						M[nm]=M[nm]or{}
					elseif stg==2 then
						intH=nm
						curLength=0
					elseif stg==3 then
						count=nm
					else
						if curLength==0 then
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
		if gN(9)>0 then
			init=trueVar
			levelCr=gN(9)
		end

		
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
		
		if gB(1) then -- if new frame
			switchedSwitch=0
			weapon=gN(1)
			health=gN(3)
			
			tick=tick+1
			animationFrame=tick//10

			if init then
				for i=1,10 do
					M[i]=M[i+10*levelCr]
				end
				M1=M[1]
				ppPos={M1[1][1],M1[1][2]}
				for i=#M1,1,-1 do
					cr=M1[i]
					cr=cr[5]&(difficulty-3000)>0 or tableRemove(M1,i) -- cr will be overwritten immediently afterwards so changing it is alright
				end
				M8=M[8]
				--for i=1,#M8 do
				--	M8[i][5]=M8[i][5]/255
				--end
				levelCr=levelCr+1
			end
			
			if gN(2)>0 then
				cr=M[2][gN(2)]
				if cr then
					a=cr[4]
					if a>0 then
						if a==3008 then
							vsTex=cr[5]>0 and cr[5]
						elseif a>3004 then
							LOD=mx(LOD+3*(cr[4]-3006),1)
							LODH=LOD/2
						elseif a>3000 then
							difficulty=cr[4]
						end
						switchedSwitch=gN(2)
						if a<3000 and M[9][cr[5]][7]==0 then
							cr[8]=1
						end
					end
				end
			end
			
			if gB(3) and weapon~=1 and weapon~=3 then
				screenBrightOffset=0.1
				screenBrightTimer=5
			else
				screenBrightTimer=screenBrightTimer-1
				if screenBrightTimer<1 then
					screenBrightOffset=0
				end
			end
			
			for i=1,#transferCache do
				tmp=transferCache[i]
				for j=1,#tmp do
					info=tmp[j]
					cr=info[1]
					if cr>(2^15) then -- wall update
						cr=M8[cr-(2^15)]
						for k=1,6 do
							cr[k]=info[k+1]
						end
						--cr[5]=cr[5]/255
					elseif cr<0 then -- delete thing
						while -cr>#M1 do
							M1[#M1+1]=falseVar -- used to keep the render's thing indexing the same as the engines'
						end
						tableRemove(M1,-cr)
					else
						if not M1[cr] then
							M1[cr]={}
						end
						cr=M1[cr]
						for k=1,8 do
							cr[M[19][1][k]]=info[k+1]-- M[19][1] is 1,2,9,6,11,12,19,3
						end
						cr[15]=0
						cr[7]=findMe(#M[7],cr)
						cr[8]=findSec(cr[7])
					end
				end
			end
			transferCache={}
		
			for i=1,#M[6]do
				thngs[i]={}
			end
			for i,cr in ipairsVar(M1) do
				if init then
					cr[7]=findMe(#M[7],cr)
					cr[8]=findSec(cr[7])
					cr[9]=cr[8][1]
					cr[11]=0
					cr[12]=0
					cr[15]=0
					cr[19]=0
				end
				
				if cr and i>1 then
					
					crMx=0
					for j,v in ipairsVar({1,2,9}) do -- move moving thing
						cr[v]=cr[v]+cr[v+10]
						crMx=crMx+cr[v+10]
					end
					if crMx~=0 then-- it is very, very unlikely for an object to be moving but have 0 velocity when measured this way
						cr[7]=findMe(#M[7],cr)
						cr[8]=findSec(cr[7])
					end
					
					cr[15]=cr[15]+1
					cr[20]=dist(cr,pp[1]) -- used for thing sorting
					state=M[16][cr[6]]
					if state~=nil then
						if state[5]>0 then
							cr[9]=cr[8][1]
						end
						if cr[15]>=state[2] and state[2]~=-1 then
							cr[6]=state[4]
							cr[15]=0
						end
					end
					thngs[cr[7]][#thngs[cr[7]]+1]=i -- inserting thing in relevant sub-sector's thing collection
				end
			end
			
			
			cr,init=M1[1]
			bobBase=mn(dist(cr,pp[1])^2/4,16)
			pp[1]={cr[1],cr[2]}
			playerRotation=cr[3]
			test=cr[9]+1
			pp[2]=cr[9]+41+bobBase*sin(tick*20)/4 -- I think it should be /2, but that's a nauseating amount of view bob
			

			ssecs={}
			
			treeing(#M[7]) -- sort sub-sectors

			dpth={}
			walls={}
			floors={}
			ceils={}
			clH={}
			flH={}
			thngsOrd={}
			lnLft=wdth
			for i=0,wdth-1 do
				dpth[i],clH[i],flH[i]=#M[6]+2,hghtH+1,-hghtH
			end

			i=1
			while i<=#ssecs and lnLft>0 do
				cr=M[6][ssecs[i]]
				floors[i]={}
				ceils[i]={}
				walls[i]={}
				thngsOrd[i]=thngs[ssecs[i]] -- because the sub-sectors are sorted, this also sorts the sub-sector-based thing collections
				table.sort(thngsOrd[i],function(a,b)return M1[a][20]>M1[b][20]end) -- sort the things within a sub-sector
				
				for j=cr[2],cr[1]+cr[2]-1 do
					seg=M[5][j]
					line=M[2][seg[4]]

					p1,p2=M[4][seg[1]],M[4][seg[2]] -- positions of seg start and end points
					pl1,pl2=sub(p1,pp[1]),sub(p2,pp[1]) -- positions relative to player
					ga1=at2(pl1)
					a1,a2=wrap(ga1-playerRotation),wrap(at2(pl2)-playerRotation) -- angles relative to player's rotation

					if absFunc(a1)<90 or absFunc(a2)<90 then -- if either end point is to the player's front
						a3,a4=clmp(a1,-fov,fov),clmp(a2,-fov,fov) -- angles clamped to the player's fov
						if absFunc(a1)>=90 or absFunc(a2)>=90 then -- entire if statement is used to fix behind-the-player rendering issues
							prod=cross(pl1,pl2) -- e.g. if one of a wall's vertexes is visible to the player near the right of the screen,
							if absFunc(a1)>=90 then --    then the other vertex being behind the player,
								if prod>0 then a3=-fov else a3=fov end --    it shouldn't matter if the vertex is slightly to the left of the player
							else --    or slightly to the right of the player
								if prod<0 then a4=-fov else a4=fov end --    it should still render to the right side of the screen
							end
						end

						x1,x2=rnd(tan(a3)/fovT*wdthH),rnd(tan(a4)/fovT*wdthH) -- x position of wall vertexes on screen, note that zero is center and positive is left

						if x1~=x2 then
							d1,d2=dist(pp[1],p1),dist(pp[1],p2)

							aNorm=seg[3]+90 -- note that this texture mapping is heavily based on Coder Space's level viewer
							aOff=aNorm-ga1
							txOff1=d1*sin(aOff) -- used for texture mapping (the wall is part of an infinitely long line, this is the distance from the closest point on the line to the wall's first vertex)
							d3=(d1*cos(aOff)) -- shortest distance to the line the wall is on
							if a1~=a3 then -- if first vertex has been clipped by the edge of the screen
								d1=d3/cos(aNorm-(a3+playerRotation)) -- re-find the distance to be to the point that's actually being shown on the screen
							end
							if a2~=a4 then -- if second vertex has been clipped by the edge of the screen
								d2=d3/cos(aNorm-(a4+playerRotation)) -- re-find the distance to be to the point that's actually being shown on the screen
							end

							d1,d2=d1*cos(a3),d2*cos(a4) -- part of what turns it from a fisheye to rectilinear projection

							k=seg[5]+6
							front=(x1>x2)
							if front and line[k]~=0 then -- only render if it's the front of seg, and if the linedef's seg-specified sidedef exists

								double=line[3]&4>0 -- double-sided flag
								if double then
									sec2=M8[M[3][line[13-k]][6]] -- find neighbouring sectors
								end

								side=M[3][line[k]] -- current sidedef
								parts={side[3],side[4],side[5]} -- upper, lower, middle, texture indexes
								
								sec1,tpRnd,btRnd=M8[side[6]] -- sets current sector, and tpRnd and btRnd to nil (works like false)
								for n,v in ipairsVar(parts) do
									render=v>0
									calculate=trueVar

									if (render or (n==3 and not (tpRnd and btRnd)))and (n==3 or double)then -- all the possible reasons to render
										yOff,sky=0
										if n<3 then
											sky=n==1 and mx(sec1[4],sec2[4])==0 -- don't render if doing upper texture and both neighbouring sectors are sky
											y1,y2=sec1[3-n],(n==1 and mx or mn)(sec2[3-n],sec1[n]) -- the weird y2 stuff is to handle when sec2's ceiling/floor is below/above sec1's floor/ceiling 
											calculate=(y1<y2)==(n==2)and y1~=y2 and sec1~=sec2
											render=calculate
											y1,y2=mn(y1,y2),mx(y1,y2) -- make sure they're the right way up for rendering
											if calculate then 
												if n==1 then
													tpRnd=trueVar -- unless both lower and upper textures have been rendered, it needs to do a middle for floor/ceiling reasons
												else
													btRnd=trueVar -- also yes if only one is done, the middle texture one will attempt to do that one's ceiling/floor again
													yOff=line[3]&16>0 and mx(sec1[2],sec2[2])-y2 or 0 -- used for correct unpegged bottom rendering
												end -- poor bottom :(
											end
										else
											if double then
												y1,y2=mn(mx(sec1[1],sec2[1]),sec1[2]),mx(mn(sec1[2],sec2[2]),sec1[1]) -- this is like the y2 stuff above, but to get floors working in those cases
												calculate=sec1~=sec2 -- don't need to do floor/ceiling if it's the same sector on both sides
											else
												y1,y2=sec1[1],sec1[2]
											end
										end
										y1,y2=y1-pp[2],y2-pp[2] -- makes the screen ys relative to the player's height
										ys1,ys2=y1*vMult,y2*vMult -- and resizes them appropriately

										if (calculate or render) and not sky then

											txOff2=seg[6]-side[1]
											if line[4]==48 then
												txOff2=txOff2-tick
											end

											yb1,yt1=ys1/d1,ys2/d1 -- scales based on distance (note that this distance isn't direct distance)
											yb2,yt2=ys1/d2,ys2/d2

											--nextAngRender=0
											xLast,passL=0

											if render then
												cr=M[21][v][4]
												if (seg[4]==switchedSwitch or difficulty==line[4] or line[8]) and cr>0 then
													v=cr -- for switches/buttons/whatever to have a different texture when pressed
												end
												resScl=M[21][v][3]
												
												flip=1
												if (n==3 and line[3]&16>0) or (n==1 and line[3]&8==0) then
													flip=-1 -- used to flip a texture's rendering direction, will always render the right way up tho
												end
											end

											for k=x1,x2,-1 do
												screenAng=xAng[k]
												ang=(aNorm-playerRotation)-screenAng
												x,pass = wdthH-k
												if x>=0 and x<=wdth-1 then
													if i<dpth[x] then
														lrp=(k-x1)/(x2-x1)
														yb,yt=(yb1*(1-lrp)+yb2*lrp),(yt1*(1-lrp)+yt2*lrp) -- lerping the y positions
														if absFunc(yt+yb)-(yt-yb)<hght then
															if render then
																if yb~=yt then
																	pass=trueVar
																	cD=d3*tan(ang) -- the distance-along-the-wall-line thing but with the current position on the wall instead of its first vertex
																	cScl=rnd2(mn(((absFunc(cD)+absFunc(d3))//LODH)+1,16)) -- LOD based on kinda distance
																	--cSclH=mn(rnd2(flr(cScl/cos(ang))),16) -- horizontal-only LOD based on angle relative to the player
																	--cScl=rnd2(cScl) -- round
																	
																	xCur=flr((mx(cD-txOff1,0)-txOff2)/(resScl*cScl)) -- turns out this isn't as bad as I expected, the revised code below doen't really help
																	xCur2=xCur*cScl
																	dCur={x,hghtH-yb,hghtH-yt,v,xCur,y2-y1,sec1[5],side[2]+yOff,trueVar,resScl*cScl,cScl,flip,not passL,n==3 and double} -- bit long innit
																	if xCur2>xLast or (not passL) or k==x2 then
																		xLast=xCur2-1+cScl
																		passL=trueVar
																		walls[i][#walls[i]+1]=dCur
																	end
																	
																	--dCur={x,hghtH-yb,hghtH-yt,v,1,y2-y1,sec[5],side[2]+yOff,trueVar,1,1,flip,not passL,n==3 and double} -- bit long innit
																	--if false and (screenAng>=nextAngRender or (not passL) or k==x2) then
																	--	cD=d3*tan(ang) -- the distance-along-the-wall-line thing but with the current position on the wall instead of its first vertex
																	--	cScl=mn(((absFunc(cD)+absFunc(d3))//LOD)+1,4) -- LOD based on kinda distance
																	--	cSclH=mn(rnd2(flr(cScl/cos(ang))),16) -- horizontal-only LOD based on angle relative to the player
																	--	cScl=rnd2(cScl) -- round
																	--	
																	--	xCur=flr((mx(cD-txOff1,0)-txOff2)/(resScl*cSclH))*cSclH
																	--	dCur[5]=xCur
																	--	dCur[10]=resScl*cScl
																	--	dCur[11]=cScl
																	--	passL=trueVar
																	--	walls[i][#walls[i]+1]=dCur
																	--	
																	--	nextDistAlongWall=cD+(resScl*cSclH)
																	--	nextAngRender=wrap((aNorm-playerRotation)+at(nextDistAlongWall/d3))
																	--end
																	dLast=dCur
																end
															end
															
															if calculate then -- floor/ceiling stuff
																if n~=2 then -- ceiling
																	if yt<clH[x]then
																		ceils[i][#ceils[i]+1]={x,mx(yt,flH[x]),clH[x],sec1}
																	end
																	if n==3 then yNew=yt else yNew=yb end
																	if clH[x]>yNew then clH[x]=yNew end
																end
																if n~=1 then -- floor
																	if yb>flH[x]then
																		floors[i][#floors[i]+1]={x,flH[x],mn(yb,clH[x]),sec1}
																	end
																	if n==3 then yNew=yb else yNew=yt end
																	if flH[x]<yNew then flH[x]=yNew end
																end
																if (clH[x]<=flH[x])or (n==3 and (not double)and render) then
																	dpth[x]=i -- counts the ceiling meeting the floor as something you can't see past
																	lnLft=lnLft-1
																end
															end
														end
													end
												end
												if (not pass) and passL then -- lable cut-off vertical line of quads as cut off
													walls[i][#walls[i]+1],passL=dLast
													walls[i][#walls[i]][9]=falseVar
												end
											end
											if #walls[i]>0 then
												walls[i][#walls[i]][9]=falseVar -- lable the last line of quads as not linking to another
											end
										end
									end
								end
							end
						end
					end
				end

				i=i+1
			end
			
			
		end


	end


end

function onDraw()
	screenVar=screen
	local tri,rec,stCl,drLine=screenVar.drawTriangleF,screenVar.drawRectF,screenVar.setColor,screenVar.drawLine --locals are faster because lua
	vises={floors,ceils}



	if loaded then
		
		tex=M[24][M[19][8][levelCr-3]]
		tW,tH=tex[1],tex[2]
		scl=wdth/ceil(tW*fovT)
		scl2=scl*1
		for i=0,ceil(tW*fovT),1 do
			x1=(tW/2-i-1+playerRotation/90*tW)%tW
			x2=(x1%1-1)*scl
			x1=flr(x1)*tH
			for j=0,tH-1,1 do
				pix=tex[5+j+x1]
				col=M[20][pix]
				stCl(col[1],col[2],col[3])
				rec(i*scl+x2,j*scl,scl2,scl2)
			end
		end

		for i=#walls,1,-1 do -- the entire wall rendering is rather weird for doom
			for j=1,#walls[i] do --    it renders each texture pixel (texel) as one quad (2 triangles really), instead of drawing each screen pixel separately
			v=walls[i][j] --    this makes rendering a lot faster, less important for current cpus but cruial for tolorable performance on my Ryzen 5 1600X
			if v[9] or v[13] then
				if v[9] then -- I initially thought per-pixel rendering was weirdly slow, but I was comparing it to a python renderer that cheats by using Numba
					v2=walls[i][j+1] --    without Numba it runs at ~2fps
				else
					v2=v
				end
				tex=M[21][v[4]]
				tex=M[21][v[4]+(animationFrame%tex[5])*M[19][3][2]+M[19][12][v[11]]]
				flip=v[12]
				y=mn(flip,0)
				x=v[1]
				x2=v2[1]

				fin=v[2-y]
				fin2=v2[2-y]

				k=v[3+y]
				k2=v2[3+y]

				if not v2[9] then x2=x2+1 end

				lghtMath(v[7])

				yScl=flip*(v[2]-v[3])*tex[3]/v[6]
				yScl2=flip*(v2[2]-v2[3])*tex[3]/v2[6]

				crM=flip>0 and mn or mx -- better than deciding which function every loop
				itter=0
				while k*flip<fin*flip and (itter<tex[2] or not v[14]) do

					kN=crM(k+yScl,fin)
					k2N=crM(k2+yScl2,fin2)

					pix=tex[7+((y+v[8]//tex[3])%tex[2])+tex[2]*((v[5])%tex[1])]
					col=M[20][pix]
					if col then
						stCl(col[1]*lght,col[2]*lght,col[3]*lght)
						tri(x,k,x,kN,x2,k2N)
						tri(x,k,x2,k2,x2,k2N)
					end

					k=kN
					k2=k2N
					y=y+flip
					itter=itter+1 -- floating middle textures shouldn't repeat

					end

				end
			end
			
			for a=1,2 do
				cr=vises[a]
				cache={}
				bt,tp,vg=hght,-hght
				
				for j,v in ipairsVar(cr[i]) do
					bt=mn(bt,v[2])
					tp=mx(tp,v[3])
					vg=v
					tex=M[22][v[4][a+2]]
					if tex and not vsTex then
						lghtMath(v[4][5])
						col=M[20][tex[5]]
						stCl(col[1]*lght,col[2]*lght,col[3]*lght)
						drLine(v[1],hghtH-v[2],v[1],flr(hghtH-v[3]-1))
					end
				end
				if vg and vsTex then
					sec1=vg[4]
					height=(sec1[a]-pp[2])
					p_dir_x = cos(playerRotation)
					p_dir_y = sin(playerRotation)
					for iy=flr(bt+hghtH),ceil(tp+hghtH) do
						z = vMult * height / (hghtH - iy) -- copied straight from Coder Space's level viewer
									
						px = p_dir_x * z - pp[1][1]
						py = p_dir_y * z - pp[1][2]
					
						l_x = -p_dir_y * z + px
						l_y = p_dir_x * z + py
						r_x = p_dir_y * z + px
						r_y = -p_dir_x * z + py
		
						dx = (r_x - l_x) / wdth
						dy = (r_y - l_y) / wdth

						cache[iy]={dx,dy,l_x,l_y}
					end

					for j,v in ipairsVar(cr[i]) do
						
						if sec1[a+2]~=0 then
							x=v[1]
							if x%vsTex==0 then
								
								lghtMath(sec1[5])
								b=sec1[a+2]
								tex=M[22][b]
								tex=M[22][b+(animationFrame%tex[4])]
								
								xg=wdthH-(wdthH-x)*fovT
								bt,tp=flr(v[2]+hghtH),ceil(v[3]+hghtH)
								
								resScl = tex[3]
							
								for iy=bt,tp do
									cacheCur=cache[iy]
									
									tx = (cacheCur[3] + cacheCur[1] * xg)//resScl
									ty = (cacheCur[4] + cacheCur[2] * xg)//resScl
									
									pix=6 + (ty%tex[1]) + tex[1]*(tx%tex[2])
									col=M[20][tex[pix]]
									if col then
										stCl(col[1]*lght,col[2]*lght,col[3]*lght)
										drLine(x,hght-iy,x+vsTex+1,hght-iy)
									end
								end
							end
						end
					end
				end
			end

			for j=1,#thngsOrd[i] do -- mostly self-explanatory thing rendering
				cr=M1[thngsOrd[i][j]]
				if cr[6]~=0 then -- this is where (I think) most of the performace drops come from in more intense sections, rendering a room full of 12+ things is a lot of rects
					pl1=sub(cr,pp[1])
					d1=cr[20]
					if d1>1 then
						a1=wrap(at2(pl1)-playerRotation)
						d1=d1*cos(a1)
						if absFunc(a1)<90 then
							x1=wdthH-rnd(tan(a1)/fovT*wdthH)
							ang=rnd((180+a1+playerRotation-cr[3]+mN*4)/360*8)
							state=M[16][cr[6]][1]
							if state~=0 and cr[6]~=1 then
								tex=M[17][absFunc(state)][ang%8+1] --(cr[15]//10)%#tex+1
								flip=tex<0 and -1 or 1
								tex=absFunc(tex)
								if tex>0 then
									tex=M[23][tex+M[19][12][mn(rnd2(d1//LOD+1),8)]]
									tW,tH=tex[1],tex[2]
									scl=wdthH/(fovT*d1)
									sclV=scl*pixelAspectCorrection
									yb=hghtH+(pp[2]-cr[9])/d1*vMult
									yt=yb-tex[5]*sclV
									x2=x1-flip*tex[4]*scl
									scl,sclV=scl*tex[3],sclV*tex[3]
									lghtMath(cr[8][5])
									lght=state>0 and lght or 1 -- full illuminate if the animation frame number is less than 0
									pxSize=scl
									pxSizeV=pxSize*pixelAspectCorrection
									fuzzy=cr[4] and M[15][cr[4]][23]&8>0
									
									for k=0,tW-1 do -- was originally 2 separate loops for fuzzy and non fuzzy things
										x1=x2+k*scl*flip -- now is 1 loop to save space, hopefully it doesn't impact performance too much
										if i<=dpth[clmp(rnd(x1),0,wdth-1)] then
											for n=0,tH-1 do
												pix=tex[7+n+k*tH]
												if pix~= 0 then
													if fuzzy then
														fuzz=fuzz%50+1
														stCl(0,0,0,mn(75*M[13][2][fuzz],255))
													else
														col=M[20][pix]
														stCl(col[1]*lght,col[2]*lght,col[3]*lght)
													end
													rec(x1,yt+n*sclV,pxSize,pxSizeV)
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
	mN=mN+1
end