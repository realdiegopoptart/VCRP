    // file called from "OnGameModeInit" 

	SQL_Connect();
	//mysql_log(LOG_ALL);

	if (mysql_errno(g_iHandle) != 0)
	    return 0;

    mysql_tquery(g_iHandle, "SELECT * FROM `billboards`", "Billboard_Load", "");
	mysql_tquery(g_iHandle, "SELECT * FROM `houses`", "House_Load", "");
    mysql_tquery(g_iHandle, "SELECT * FROM `businesses`", "Business_Load", "");
    mysql_tquery(g_iHandle, "SELECT * FROM `dropped`", "Dropped_Load", "");
    mysql_tquery(g_iHandle, "SELECT * FROM `entrances`", "Entrance_Load", "");
	mysql_tquery(g_iHandle, "SELECT * FROM `cars` WHERE carSpawned = 1 OR carOwner = 0", "Car_Load", "");
	mysql_tquery(g_iHandle, "SELECT * FROM `jobs`", "Job_Load", "");
	mysql_tquery(g_iHandle, "SELECT * FROM `crates`", "Crate_Load", "");
	mysql_tquery(g_iHandle, "SELECT * FROM `plants`", "Plant_Load", "");
	mysql_tquery(g_iHandle, "SELECT * FROM `factions`", "Faction_Load", "");
	mysql_tquery(g_iHandle, "SELECT * FROM `arrestpoints`", "Arrest_Load", "");
    mysql_tquery(g_iHandle, "SELECT * FROM `gates`", "Gate_Load", "");
    mysql_tquery(g_iHandle, "SELECT * FROM `backpacks`", "Backpack_Load", "");
    mysql_tquery(g_iHandle, "SELECT * FROM `impoundlots`", "Impound_Load", "");
    mysql_tquery(g_iHandle, "SELECT * FROM `atm`", "ATM_Load", "");
    mysql_tquery(g_iHandle, "SELECT * FROM `garbage`", "Garbage_Load", "");
    mysql_tquery(g_iHandle, "SELECT * FROM `vendors`", "Vendor_Load", "");
    mysql_tquery(g_iHandle, "SELECT * FROM `gunracks`", "Rack_Load", "");
    mysql_tquery(g_iHandle, "SELECT * FROM `speedcameras`", "Speed_Load", "");
    mysql_tquery(g_iHandle, "SELECT * FROM `graffiti`", "Graffiti_Load", "");
    mysql_tquery(g_iHandle, "SELECT * FROM `detectors`", "Detector_Load", "");
	mysql_tquery(g_iHandle, "SELECT * FROM `apbs`", "Apbs_Load", "");
	mysql_tquery(g_iHandle, "SELECT * FROM `911calls` WHERE `status` = 0 ORDER BY `cid` ASC LIMIT 20", "Niners_Load", "");
	mysql_tquery(g_iHandle, "UPDATE `characters` SET `online` = '0'");