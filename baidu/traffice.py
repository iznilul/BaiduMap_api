import requests
import json
from baidu.__init__ import *
import pymysql
conn=pymysql.connect(MYSQL_HOST,MYSQL_ROOT,MYSQL_PASSWORD,MYSQL_DATABASE1)
cur=conn.cursor()
# cur.execute(USE1)
def getjson(origin_lat,origin_lng,destination_lat,destination_lng):
	decodes=[]
	for page_index in range(1,2):
		headers={'User-Agent':"Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; Acoo Browser; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; .NET CLR 3.0.04506)"}
		pa={'origin':origin_lat+","+origin_lng,
			'destination':destination_lat+","+destination_lng,
			'page_size':10,
			'page_index':page_index,
			'ak':'这里加上你自己的ak'
		}
		try:
			r=requests.get("http://api.map.baidu.com/direction/v2/transit",params=pa,headers=headers)
			decodejson = json.loads(r.text)
			decodes.append(decodejson)
		except Exception as e:
			pass
	return decodes

def get_and_save_journey():
	cur.execute(DROP11)
	cur.execute(CREATE11)
	cur.execute(DROP12)
	cur.execute(CREATE12)
	cur.execute(DROP13)
	cur.execute(CREATE13)
	journey_number=0
	for eachjourney in JOURNEYS:
		origin__lat=str(eachjourney[0][0])
		origin__lng = str(eachjourney[1][0])
		destination__lat = str(eachjourney[2][0])
		destination__lng = str(eachjourney[3][0])
		decodes=getjson(origin__lat,origin__lng,destination__lat,destination__lng)
		for eachone in decodes:
			try:
				origin_city_name=eachone["result"]["origin"]["city_name"]
				# print("origin_city:"+origin_city_name)
			except:
				origin_city_name=None
			try:
				destination_city_name = eachone["result"]["destination"]["city_name"]
				# print("destination_city:"+destination_city_name)
			except:
				destination_city_name = None
			try:
				total=eachone["result"]["total"]
				# print("The_total_routes:"+str(total))
			except:
				total=None
			try:
				journey_name=origin_city_name+"——"+destination_city_name
			except:
				continue
			journey_number = journey_number + 1
			print("journey_number:" + str(journey_number))
			# print("")
			# print("")
			try:
				cur.execute(SAVEIN11,(origin_city_name,destination_city_name,origin__lat,origin__lng,
								destination__lat,destination__lng,total,journey_name,
								journey_number))
				conn.commit()
			except Exception as err:
				print(err)
			try:
				routes=eachone["result"]["routes"]
			except:
				routes=None
			route_number=0
			for route in routes:
				# print("journey_number:" + str(journey_number))
				try:
					total_distance=route["distance"]
					# print("The_total_distance:"+str(total_distance))
				except:
					total_distance=None
				try:
					total_duration=route["duration"]
					# print("The_total_duration:"+str(total_duration))
				except:
					total_duration=None
				try:
					total_price=route["price"]
					# print("The_total_price:"+str(total_price))
				except:
					total_price=None
				try:
					finally_arrive_time=route["arrive_time"]
					# print("The_arrive_time:"+finally_arrive_time)
				except:
					finally_arrive_time=None
				route_number=route_number+1
				try:
					cur.execute(SAVEIN12,(journey_number,journey_name,total_distance,total_duration,
								total_price,finally_arrive_time,route_number))
					conn.commit()
				except Exception as err:
					print(err)
				# print("route_number:"+str(route_number))
				# print("")
				# print("")
				try:
					steps=route["steps"]
				except:
					steps=None
				step_number=0
				for step_s in steps:
					for step in step_s:
						# print("route_number:" + str(route_number))
						step_number=step_number+1
						# print("step_number:"+str(step_number))
						try:
							instructions = step["instructions"]
							# print('The_instructions:'+instructions)
						except:
							instructions= None
						try:
							distance = step["distance"]
							# print('The_distance:'+str(distance))
						except:
							distance= None
						try:
							duration = step["duration"]
							# print('The_duration:'+str(duration))
						except:
							duration= None
						try:
							start_location_lat = step["start_location"]["lat"]
							# print('The_start_location_lat:'+str(start_location_lat))
						except:
							start_location_lat= None
						try:
							start_location_lng = step["start_location"]["lng"]
							# print('The_start_location_lng:'+str(start_location_lng))
						except:
							start_location_lng= None
						try:
							end_location_lat = step["end_location"]["lat"]
							# print('The_end_location_lat:'+str(end_location_lat))
						except:
							end_location_lat= None
						try:
							end_location_lng = step["start_location"]["lng"]
							# print('The_end_location_lng:'+str(end_location_lng))
						except:
							end_location_lng= None
						try:
							vehicle_number = step["vehicle_info"]["type"]
							if vehicle_number==1:
								vehicle_type="火车"
							if vehicle_number==2:
								vehicle_type="飞机"
							if vehicle_number==3:
								vehicle_type="公交"
							if vehicle_number==4:
								vehicle_type="驾车"
							if vehicle_number==5:
								vehicle_type="步行"
							if vehicle_number==6:
								vehicle_type="大巴"
							# print("The_type:"+vehicle_type)
						except:
							vehicle_type= None
						try:
							vehicle_detail=step["vehicle_info"]["detail"]
						except:
							vehicle_detail=None
						if vehicle_number==1:
							try:
								name=vehicle_detail["name"]
								# print("vehicle_name:"+name)
							except:
								name=None
							try:
								price=vehicle_detail["price"]
								# print("price_name:"+price)
							except:
								price=None
							try:
								arrive_station=vehicle_detail["arrive_station"]
								# print("arrive_station_name:"+arrive_station)
							except:
								arrive_station=None
							try:
								departure_station=vehicle_detail["departure_station"]
								# print("departure_station_name:"+departure_station)
							except:
								departure_station=None
							try:
								arrive_time=vehicle_detail["arrive_time"]
								# print("arrive_time:"+arrive_time)
							except:
								arrive_time=None
							try:
								departure_time=vehicle_detail["departure_time"]
								# print("departure_time:"+departure_time)
							except:
								departure_time=None
							try:
								cur.execute(SAVEIN13,(journey_number,journey_name,route_number,
													  step_number,instructions,distance,
								duration,start_location_lat,start_location_lng,
								end_location_lat,end_location_lng,
								vehicle_type,name,departure_station,arrive_station,
								departure_time,arrive_time))
								conn.commit()
							except Exception as err:
								print(err)
							# print("")
							# print("")
						elif vehicle_number==2:
							try:
								name=vehicle_detail["name"]
								# print("vehicle_name:"+name)
							except:
								name=None
							try:
								price=vehicle_detail["price"]
								# print("price_name:"+price)
							except:
								price=None
							try:
								arrive_station=vehicle_detail["arrive_station"]
								# print("arrive_station_name:"+arrive_station)
							except:
								arrive_station=None
							try:
								departure_station=vehicle_detail["departure_station"]
								# print("departure_station_name:"+departure_station)
							except:
								departure_station=None
							try:
								arrive_time=vehicle_detail["arrive_time"]
								# print("arrive_time:"+arrive_time)
							except:
								arrive_time=None
							try:
								departure_time=vehicle_detail["departure_time"]
								# print("departure_time:"+departure_time)
							except:
								departure_time=None
							try:
								cur.execute(SAVEIN13, (journey_number,journey_name,route_number,
													   step_number, instructions, distance,
													   duration, start_location_lat, start_location_lng,
													   end_location_lat, end_location_lng,
													   vehicle_type, name, departure_station, arrive_station,
													   departure_time, arrive_time))
								conn.commit()
							except Exception as err:
								print(err)
							# print("")
							# print("")
						elif vehicle_number==3:
							try:
								name=vehicle_detail["name"]
								# print("vehicle_name:"+name)
							except:
								name=None
							price=None
							try:
								arrive_station=vehicle_detail["on_station"]
								# print("arrive_station_name:"+arrive_station)
							except:
								arrive_station=None
							try:
								departure_station=vehicle_detail["off_station"]
								# print("departure_station_name:"+departure_station)
							except:
								departure_station=None
							try:
								arrive_time=vehicle_detail["first_time"]
								# print("arrive_time:"+arrive_time)
							except:
								arrive_time=None
							try:
								departure_time=vehicle_detail["last_time"]
								# print("departure_time:"+departure_time)
							except:
								departure_time=None
							try:
								cur.execute(SAVEIN13, (journey_number,journey_name,route_number,
													   step_number, instructions, distance,
													   duration, start_location_lat, start_location_lng,
													   end_location_lat, end_location_lng,
													   vehicle_type, name, departure_station, arrive_station,
													   departure_time, arrive_time))
								conn.commit()
							except Exception as err:
								print(err)
							# print("")
							# print("")
						elif vehicle_number==6:
							try:
								name=vehicle_detail["name"]
								# print("vehicle_name:"+name)
							except:
								name=None
							try:
								price=vehicle_detail["price"]
								# print("price_name:"+price)
							except:
								price=None
							try:
								arrive_station=vehicle_detail["arrive_station"]
								# print("arrive_station_name:"+arrive_station)
							except:
								arrive_station=None
							try:
								departure_station=vehicle_detail["departure_station"]
								# print("departure_station_name:"+departure_station)
							except:
								departure_station=None
							try:
								arrive_time=vehicle_detail["arrive_time"]
								# print("arrive_time:"+arrive_time)
							except:
								arrive_time=None
							try:
								departure_time=vehicle_detail["departure_time"]
								# print("departure_time:"+departure_time)
							except:
								departure_time=None
							try:
								cur.execute(SAVEIN13, (journey_number,journey_name,route_number,
													   step_number, instructions, distance,
													   duration, start_location_lat, start_location_lng,
													   end_location_lat, end_location_lng,
													   vehicle_type, name, departure_station, arrive_station,
													   departure_time, arrive_time))
								conn.commit()
							except Exception as err:
								print(err)
							# print("")
							# print("")
						else:
							name="步行或驾车"
							# print(name)
							price=None
							arrive_station=None
							departure_station=None
							arrive_time=None
							departure_time=None
							try:
								cur.execute(SAVEIN13, (journey_number,journey_name,route_number,
													   step_number, instructions, distance,
													   duration, start_location_lat, start_location_lng,
													   end_location_lat, end_location_lng,
													   vehicle_type, name, departure_station, arrive_station,
													   departure_time, arrive_time))
								conn.commit()
							except Exception as err:
								print(err)
							# print("")
							# print("")



def get_and_save_back():
	cur.execute(DROP14)
	cur.execute(CREATE14)
	cur.execute(DROP15)
	cur.execute(CREATE15)
	cur.execute(DROP16)
	cur.execute(CREATE16)
	back_number=0
	for eachback in BACKS:
		origin__lat=str(eachback[0][0])
		origin__lng = str(eachback[1][0])
		destination__lat = str(eachback[2][0])
		destination__lng = str(eachback[3][0])
		decodes=getjson(origin__lat,origin__lng,destination__lat,destination__lng)
		for eachone in decodes:
			try:
				origin_city_name=eachone["result"]["origin"]["city_name"]
				# print("origin_city:"+origin_city_name)
			except:
				origin_city_name=None
			try:
				destination_city_name = eachone["result"]["destination"]["city_name"]
				# print("destination_city:"+destination_city_name)
			except:
				destination_city_name = None
			try:
				total=eachone["result"]["total"]
				# print("The_total_routes:"+str(total))
			except:
				total=None
			try:
				back_name = origin_city_name + "——" + destination_city_name
			except:
				continue
			back_number = back_number + 1
			print("back_number:" + str(back_number))
			# print("")
			# print("")
			try:
				cur.execute(SAVEIN14,(origin_city_name,destination_city_name,origin__lat,origin__lng,
								destination__lat,destination__lng,total,back_name,
								back_number))
				conn.commit()
			except Exception as err:
				print(err)
			try:
				routes=eachone["result"]["routes"]
			except:
				routes=None
			route_number=0
			for route in routes:
				# print("back_number:" + str(back_number))
				try:
					total_distance=route["distance"]
					# print("The_total_distance:"+str(total_distance))
				except:
					total_distance=None
				try:
					total_duration=route["duration"]
					# print("The_total_duration:"+str(total_duration))
				except:
					total_duration=None
				try:
					total_price=route["price"]
					# print("The_total_price:"+str(total_price))
				except:
					total_price=None
				try:
					finally_arrive_time=route["arrive_time"]
					# print("The_arrive_time:"+finally_arrive_time)
				except:
					finally_arrive_time=None
				route_number=route_number+1
				try:
					cur.execute(SAVEIN15,(back_number,back_name,total_distance,total_duration,
								total_price,finally_arrive_time,route_number))
					conn.commit()
				except Exception as err:
					print(err)
				# print("route_number:"+str(route_number))
				# print("")
				# print("")
				try:
					steps=route["steps"]
				except:
					steps=None
				step_number=0
				for step_s in steps:
					for step in step_s:
						# print("route_number:" + str(route_number))
						step_number=step_number+1
						# print("step_number:"+str(step_number))
						try:
							instructions = step["instructions"]
							# print('The_instructions:'+instructions)
						except:
							instructions= None
						try:
							distance = step["distance"]
							# print('The_distance:'+str(distance))
						except:
							distance= None
						try:
							duration = step["duration"]
							# print('The_duration:'+str(duration))
						except:
							duration= None
						try:
							start_location_lat = step["start_location"]["lat"]
							# print('The_start_location_lat:'+str(start_location_lat))
						except:
							start_location_lat= None
						try:
							start_location_lng = step["start_location"]["lng"]
							# print('The_start_location_lng:'+str(start_location_lng))
						except:
							start_location_lng= None
						try:
							end_location_lat = step["end_location"]["lat"]
							# print('The_end_location_lat:'+str(end_location_lat))
						except:
							end_location_lat= None
						try:
							end_location_lng = step["start_location"]["lng"]
							# print('The_end_location_lng:'+str(end_location_lng))
						except:
							end_location_lng= None
						try:
							vehicle_number = step["vehicle_info"]["type"]
							if vehicle_number==1:
								vehicle_type="火车"
							if vehicle_number==2:
								vehicle_type="飞机"
							if vehicle_number==3:
								vehicle_type="公交"
							if vehicle_number==4:
								vehicle_type="驾车"
							if vehicle_number==5:
								vehicle_type="步行"
							if vehicle_number==6:
								vehicle_type="大巴"
							# print("The_type:"+vehicle_type)
						except:
							vehicle_type= None
						try:
							vehicle_detail=step["vehicle_info"]["detail"]
						except:
							vehicle_detail=None
						if vehicle_number==1:
							try:
								name=vehicle_detail["name"]
								# print("vehicle_name:"+name)
							except:
								name=None
							try:
								price=vehicle_detail["price"]
								# print("price_name:"+price)
							except:
								price=None
							try:
								arrive_station=vehicle_detail["arrive_station"]
								# print("arrive_station_name:"+arrive_station)
							except:
								arrive_station=None
							try:
								departure_station=vehicle_detail["departure_station"]
								# print("departure_station_name:"+departure_station)
							except:
								departure_station=None
							try:
								arrive_time=vehicle_detail["arrive_time"]
								# print("arrive_time:"+arrive_time)
							except:
								arrive_time=None
							try:
								departure_time=vehicle_detail["departure_time"]
								# print("departure_time:"+departure_time)
							except:
								departure_time=None
							try:
								cur.execute(SAVEIN16,(back_number,back_name,route_number,
													  step_number,instructions,distance,
								duration,start_location_lat,start_location_lng,
								end_location_lat,end_location_lng,
								vehicle_type,name,departure_station,arrive_station,
								departure_time,arrive_time))
								conn.commit()
							except Exception as err:
								print(err)
							# print("")
							# print("")
						elif vehicle_number==2:
							try:
								name=vehicle_detail["name"]
								# print("vehicle_name:"+name)
							except:
								name=None
							try:
								price=vehicle_detail["price"]
								# print("price_name:"+price)
							except:
								price=None
							try:
								arrive_station=vehicle_detail["arrive_station"]
								# print("arrive_station_name:"+arrive_station)
							except:
								arrive_station=None
							try:
								departure_station=vehicle_detail["departure_station"]
								# print("departure_station_name:"+departure_station)
							except:
								departure_station=None
							try:
								arrive_time=vehicle_detail["arrive_time"]
								# print("arrive_time:"+arrive_time)
							except:
								arrive_time=None
							try:
								departure_time=vehicle_detail["departure_time"]
								# print("departure_time:"+departure_time)
							except:
								departure_time=None
							try:
								cur.execute(SAVEIN16, (back_number,back_name,route_number,
													   step_number, instructions, distance,
													   duration, start_location_lat, start_location_lng,
													   end_location_lat, end_location_lng,
													   vehicle_type, name, departure_station, arrive_station,
													   departure_time, arrive_time))
								conn.commit()
							except Exception as err:
								print(err)
							# print("")
							# print("")
						elif vehicle_number==3:
							try:
								name=vehicle_detail["name"]
								# print("vehicle_name:"+name)
							except:
								name=None
							price=None
							try:
								arrive_station=vehicle_detail["on_station"]
								# print("arrive_station_name:"+arrive_station)
							except:
								arrive_station=None
							try:
								departure_station=vehicle_detail["off_station"]
								# print("departure_station_name:"+departure_station)
							except:
								departure_station=None
							try:
								arrive_time=vehicle_detail["first_time"]
								# print("arrive_time:"+arrive_time)
							except:
								arrive_time=None
							try:
								departure_time=vehicle_detail["last_time"]
								# print("departure_time:"+departure_time)
							except:
								departure_time=None
							try:
								cur.execute(SAVEIN16, (back_number,back_name,route_number,
													   step_number, instructions, distance,
													   duration, start_location_lat, start_location_lng,
													   end_location_lat, end_location_lng,
													   vehicle_type, name, departure_station, arrive_station,
													   departure_time, arrive_time))
								conn.commit()
							except Exception as err:
								print(err)
							# print("")
							# print("")
						elif vehicle_number==6:
							try:
								name=vehicle_detail["name"]
								# print("vehicle_name:"+name)
							except:
								name=None
							try:
								price=vehicle_detail["price"]
								# print("price_name:"+price)
							except:
								price=None
							try:
								arrive_station=vehicle_detail["arrive_station"]
								# print("arrive_station_name:"+arrive_station)
							except:
								arrive_station=None
							try:
								departure_station=vehicle_detail["departure_station"]
								# print("departure_station_name:"+departure_station)
							except:
								departure_station=None
							try:
								arrive_time=vehicle_detail["arrive_time"]
								# print("arrive_time:"+arrive_time)
							except:
								arrive_time=None
							try:
								departure_time=vehicle_detail["departure_time"]
								# print("departure_time:"+departure_time)
							except:
								departure_time=None
							try:
								cur.execute(SAVEIN16, (back_number,back_name,route_number,
													   step_number, instructions, distance,
													   duration, start_location_lat, start_location_lng,
													   end_location_lat, end_location_lng,
													   vehicle_type, name, departure_station, arrive_station,
													   departure_time, arrive_time))
								conn.commit()
							except Exception as err:
								print(err)
							# print("")
							# print("")
						else:
							name="步行或驾车"
							# print(name)
							price=None
							arrive_station=None
							departure_station=None
							arrive_time=None
							departure_time=None
							try:
								cur.execute(SAVEIN16, (back_number,back_name,route_number,
													   step_number, instructions, distance,
													   duration, start_location_lat, start_location_lng,
													   end_location_lat, end_location_lng,
													   vehicle_type, name, departure_station, arrive_station,
													   departure_time, arrive_time))
								conn.commit()
							except Exception as err:
								print(err)
							# print("")
							# print("")




def test():
	cur.execute(GET_LAT)
	lats=list(cur.fetchall())
	lats.reverse()
	cur.execute(GET_LNG)
	lngs=list(cur.fetchall())
	lngs.reverse()
	places_list=[]
	num=1
	pairs=[]
	for lat,lng in zip(lats,lngs):
		place_list=[]
		place_list.append(lat)
		place_list.append(lng)
		places_list.append(place_list)
	for place in places_list:
		for i in range(num,len(places_list)):
			pair=place+places_list[i]
			pairs.append(pair)
		num=num+1
	for pair in pairs:
		with open("lat_lng_back.txt","a",encoding="utf-8")as f:
			f.writelines(str(pair)+",\n")

if __name__=="__main__":
	# print(getjson('39.9095','116.434','22.6151','114.036'))
	# get_and_save_journey()
	get_and_save_back()