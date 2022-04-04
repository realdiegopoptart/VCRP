	CreateDynamicPickup(1581, 23, 756.4985, 6.1854, 1000.6995);
	CreateDynamic3DTextLabel("[Gym Menu]\n{FFFFFF}Type /buyfstyle to learn a fighting style.", COLOR_DEPARTMENT, 756.4985, 6.1854, 1000.6995, 10.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, -1);

	CreateDynamicPickup(1581, 23, -2033.0439, -117.4885, 1035.1719);
	CreateDynamic3DTextLabel("[Driving Test]\n{FFFFFF}Type /drivingtest for a car license. ($50)\nType /motorcycletest for a motorbike license. ($200)\nType /trucktest for a trucking license. ($500)", COLOR_DEPARTMENT, -2033.0439, -117.4885, 1035.1719, 10.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, -1);

	CreateDynamicPickup(1239, 23, 1260.3976, -20.0215, 1001.0234);
	CreateDynamic3DTextLabel("[Cargo Unloading]\n{FFFFFF}Type /loadcrate to begin loading cargo.", COLOR_YELLOW, 1260.3976, -20.0215, 1001.0234, 10.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, -1);

	CreateDynamic3DTextLabel("[MDC]\n{FFFFFF}Type /mdc to log in.", COLOR_DEPARTMENT, 356.2972,168.8758,1008.3762, 10.0);
	CreateDynamic3DTextLabel("[MDC]\n{FFFFFF}Type /mdc to log in.", COLOR_DEPARTMENT, 1582.9456,-1712.5609,-36.8141, 10.0);
	CreateDynamic3DTextLabel("[MDC]\n{FFFFFF}Type /mdc to log in.", COLOR_DEPARTMENT, 1557.0688,-1728.5741,-33.1141, 10.0);

    CreateDynamicPickupEx(1239, 23, 300.6569,-93.4121,1012.3029, 100.0, arrVirtualWorlds);
	CreateDynamic3DTextLabel("[Tickets]\n{FFFFFF}Type /tickets to pay your tickets.", COLOR_DEPARTMENT, 300.6569,-93.4121,1012.3029, 10.0);

	CreateDynamicPickupEx(1239, 23, 299.0426,-93.3870,1012.3029, 100.0, arrVirtualWorlds);
	CreateDynamic3DTextLabel("[Name Change]\n{FFFFFF}Type /changename to change your name.", COLOR_DEPARTMENT, 299.0426,-93.3870,1012.3029, 10.0);

	CreateDynamicPickup(1239, 23, 505.1944,-83.9310,998.9609);
	CreateDynamic3DTextLabel("[POOL]\n{FFFFFF}Type /playpool to begin playing.", COLOR_DEPARTMENT, 505.1944,-83.9310,998.9609, 10.0);

	CreateDynamicPickup(1239, 23, 505.5587,-80.5155,998.9609);
	CreateDynamic3DTextLabel("[SNAKE]\n{FFFFFF}Type /playsnake to begin playing.", COLOR_DEPARTMENT, 505.5587,-80.5155,998.9609, 10.0);

	CreateDynamicPickup(1239, 23, 150.4944,1104.0682,14.2357);
	CreateDynamic3DTextLabel("[Car Release]\n{FFFFFF}Type /releasecar to release a vehicle.", COLOR_DEPARTMENT, 150.4944,1104.0682,14.2357, 10.0);

	CreateDynamicPickupEx(1239, 23, 294.1161,-83.2240,1012.3030, 100.0, arrVirtualWorlds);
	CreateDynamic3DTextLabel("[License Copies]\n{FFFFFF}Use /buylicense to get a new copy of your existing license.", COLOR_DEPARTMENT, 294.1161,-83.2240,1012.3030, 10.0);

	CreateDynamicPickupEx(1239, 23, 294.2592,-79.9299,1012.3030, 100.0, arrVirtualWorlds);
	CreateDynamic3DTextLabel("[Licensing Department]\n{FFFFFF}Use /call 34245 to contact the licensing department of the BCG.", COLOR_DEPARTMENT, 294.2592,-79.9299,1012.3030, 10.0);

	CreateDynamicPickup(1239, 23, -99.9014,1108.1683,19.7422); // Fort Carson
	CreateDynamic3DTextLabel("[Repair Center]\n{FFFFFF}Type /fixcar to repair your vehicle.", COLOR_YELLOW, -99.9014, 1108.1683, 19.7422, 10.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, -1);

	CreateDynamicPickup(1239, 23, -1420.9614,2593.8865,55.7561); // el Q
	CreateDynamic3DTextLabel("[Repair Center]\n{FFFFFF}Type /fixcar to repair your vehicle.", COLOR_YELLOW, -1420.9614,2593.8865,55.7561, 10.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, -1);

	//CreateDynamicPickup(1239, 23, 263.3232,2895.9087,10.5391);
	CreateDynamic3DTextLabel("[Black Market]\n{FFFFFF}Type /blackmarket to access it.", COLOR_DEPARTMENT, 263.3232,2895.9087,10.5391, 10.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, -1);

	CreateDynamicPickup(1559, 23, 272.2939, 1388.8876, 11.8342);
	CreateDynamic3DTextLabel("San Andreas Prison", COLOR_DEPARTMENT, 272.2939, 1388.8876, 11.1342, 10.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, -1);

    CreateDynamicPickup(1559, 23, 1211.1923, -1354.3439, 797.4456);
	CreateDynamic3DTextLabel("Prison Yard", COLOR_DEPARTMENT, 1211.1923, -1354.3439, 796.7456, 10.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, PRISON_WORLD, 5);

	for(new i = 0; i < sizeof(arrBoothPositions); i ++)
	{
	    CreateDynamic3DTextLabel("[Shooting Range]\n{FFFFFF}Press 'F' to use this booth.", COLOR_DEPARTMENT, arrBoothPositions[i][0], arrBoothPositions[i][1], arrBoothPositions[i][2], 15.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, -1, 7);
	}

	for(new i = 0; i < sizeof(arrHospitalSpawns); i ++) 
	{
	    CreateDynamicMapIcon(arrHospitalSpawns[i][0], arrHospitalSpawns[i][1], arrHospitalSpawns[i][2], 22, 0);

		CreatePickup(1559, 23, arrHospitalSpawns[i][0], arrHospitalSpawns[i][1], arrHospitalSpawns[i][2] + 0.7);
		Create3DTextLabel("SA County Hospital", COLOR_DEPARTMENT, arrHospitalSpawns[i][0], arrHospitalSpawns[i][1], arrHospitalSpawns[i][2], 15.0, 0);

		CreatePickup(1240, 23, arrHospitalDeliver[i][0], arrHospitalDeliver[i][1], arrHospitalDeliver[i][2]);
		Create3DTextLabel("[Hospital]\n{FFFFFF}'/dropinjured' to deliver a patient.\n'/corpse creamate' a body bag", COLOR_DEPARTMENT, arrHospitalDeliver[i][0], arrHospitalDeliver[i][1], arrHospitalDeliver[i][2], 15.0, 0);
	}