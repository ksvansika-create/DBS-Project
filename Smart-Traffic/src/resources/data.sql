INSERT INTO locations VALUES
(1,'Kukatpally Main Road','road',17.4849,78.4138,82,18,72,60,24,'8:30 AM – 10:30 AM','Illegal parking'),
(2,'KPHB Junction','junction',17.4933,78.3914,74,22,65,55,20,'9:00 AM – 11:00 AM','Signal jumping'),
(3,'Miyapur X Roads','junction',17.4968,78.3614,58,30,48,50,14,'5:30 PM – 8:00 PM','Wrong-side driving'),
(4,'Balanagar Junction','junction',17.4707,78.4436,66,26,58,45,17,'6:00 PM – 8:30 PM','Signal jumping'),
(5,'Quthbullapur School Zone','school',17.5170,78.4570,70,20,44,88,18,'8:00 – 9:30 AM & 3:30 – 5:00 PM','Overspeeding'),
(6,'Jeedimetla Market Road','market',17.5100,78.4530,78,17,61,82,22,'11:00 AM – 2:00 PM & 6:00 – 9:00 PM','Illegal parking'),
(7,'Suchitra Highway Junction','highway',17.5040,78.4700,86,24,69,30,25,'8:00 AM – 10:00 AM','Overspeeding'),
(8,'Nizampet Road','road',17.5180,78.3800,32,44,18,35,4,'9:00 AM – 10:00 AM','No helmet');
INSERT INTO vehicles VALUES('TS09AB1234','Demo Owner 1','Car'),('TS08CD5678','Demo Owner 2','Bike'),('AP28EF9012','Demo Owner 3','Truck'),('TS07GH3456','Demo Owner 4','Car');
INSERT INTO violations(vehicle_no,type,v_date,location_id,fine,status) VALUES
('TS09AB1234','Signal jumping','2026-09-22',2,1000,'Pending'),('TS09AB1234','Illegal parking','2026-09-15',1,500,'Paid'),
('TS08CD5678','Overspeeding','2026-09-24',7,1500,'Pending'),('TS08CD5678','No helmet','2026-09-10',8,1000,'Paid'),
('AP28EF9012','Wrong-side driving','2026-09-26',3,1000,'Pending'),('TS07GH3456','Signal jumping','2026-09-28',4,1000,'Pending'),
('TS07GH3456','Illegal parking','2026-09-27',6,500,'Pending'),('TS09AB1234','Signal jumping','2026-09-29',2,1000,'Pending'),
('TS08CD5678','Overspeeding','2026-09-21',5,1500,'Paid'),('AP28EF9012','Illegal parking','2026-09-23',1,500,'Paid'),
('TS07GH3456','No seat belt','2026-09-19',7,1000,'Paid'),('AP28EF9012','Signal jumping','2026-09-25',2,1000,'Pending'),
('TS09AB1234','Overspeeding','2026-09-18',7,1500,'Paid'),('TS08CD5678','Illegal parking','2026-09-30',6,500,'Pending');
INSERT INTO traffic_data(location_id,hr,density) VALUES
(1,7,55),(1,8,80),(1,9,90),(1,10,78),(1,11,60),(1,12,50),
(2,7,50),(2,8,72),(2,9,85),(2,10,74),(2,11,58),(2,12,48),
(5,7,45),(5,8,80),(5,9,60),(5,10,40),(5,11,45),(5,12,50),
(6,7,30),(6,8,42),(6,9,55),(6,10,70),(6,11,80),(6,12,75);
INSERT INTO incidents(location_id,type,severity,reported_at,affected_road,action,status) VALUES
(1,'Signal failure','High','2026-09-30 08:40:00','Kukatpally Main Road','Deploy traffic police for manual control; divert via inner roads.','Active'),
(2,'Vehicle breakdown','Medium','2026-09-30 09:05:00','KPHB Junction','Tow the vehicle and keep the left lane clear.','Active'),
(6,'Road blockage','High','2026-09-30 09:30:00','Jeedimetla Market Road','Redirect traffic through the Suchitra link road.','Active'),
(7,'Road construction','Medium','2026-09-29 07:00:00','Suchitra Highway Junction','Schedule works off-peak and place diversion signs.','Active'),
(4,'Waterlogging','Low','2026-09-28 18:00:00','Balanagar Junction','Pump out water and monitor drains.','Resolved');
INSERT INTO routes VALUES(1,'Kukatpally–Balanagar link',1,4,7.5,30,'Heavy'),(2,'KPHB–Miyapur bypass',2,3,4.2,14,'Moderate'),(3,'Jeedimetla–Suchitra link road',6,7,3.1,9,'Low');
INSERT INTO pedestrian_zones VALUES
(1,1,'Kukatpally Bus Stop','bus_stop',1200,false,true,17.4855,78.4150),
(2,5,'Government School Gate','school',900,false,false,17.5165,78.4565),
(3,6,'Jeedimetla Market','market',1500,false,true,17.5105,78.4535),
(4,2,'JNTU College Gate','college',1100,true,true,17.4925,78.3905),
(5,1,'Kukatpally Govt. Hospital','hospital',700,false,false,17.4840,78.4120);
INSERT INTO infrastructure_recommendations VALUES
(1,1,'Recurring peak congestion','Signal timing study and alternative route signage','High'),
(2,5,'Unsafe school crossing','Zebra crossing, pedestrian signal, school-zone speed control','High'),
(3,6,'Illegal roadside parking','Parking restriction in peak hours and designated bays','Medium');
