stock GetFishSpecie()
{
    new fishspecie = randomEx(0,10), strz[64];
    switch(fishspecie)
    {
        case 0: strz = "Latenshark";
        case 1: strz = "Barracuda";
        case 2: strz = "Silverfish";
        case 3: strz = "Bass";
        case 4: strz = "Batfish";
        case 5: strz = "Catfish";
        case 6: strz = "Black Tetra";
        case 7: strz = "Black Dragonfish";
        case 8: strz = "Carp";
        case 9: strz = "Boga";
        case 10: strz = "Eel";
    }
    return strz;
}

IsPlayerNearFishingPier(playerid)
{
	new
	    id = -1;

	if ((id = Job_NearestPoint(playerid, 10.0)) != -1 && JobData[id][jobType] == 10)
		return 1;

	return 0;
}

forward PlayerFishing(playerid);
public PlayerFishing(playerid)
{
    new fish = randomEx(1,69), fweight = randomEx(15,45);
    RemovePlayerAttachedObject(playerid,0);

	switch(fish)
 	{
     	case 1..50:
		{
			SendServerMessage(playerid, "You have caught {FF0000}%s {FFFFFF}weighing {FF0000}%i {FFFFFF}pounds.",GetFishSpecie(),fweight);
			FishWeight[playerid] += fweight;
			pFishing[playerid] = 0;
			Inventory_Add(playerid, "Bait", 1265, -1);
			TogglePlayerControllable(playerid, 1);
		}
      	case 51..69:
		{
			SendServerMessage(playerid, "You have failed to catch anything and the bait is still attached.");
			TogglePlayerControllable(playerid, 1);
			pFishing[playerid] = 0;
		}
        case 70:
		{
			SendServerMessage(playerid, "You have found cardboard while fishing. You can throw this in the garbage.");
			Inventory_Add(playerid, "Cardboard", 928);
			Inventory_Add(playerid, "Bait", 1265, -1);
			TogglePlayerControllable(playerid, 1);
			pFishing[playerid] = 0;
		}
    }
    return 1;
}

forward SellFish(playerid);
public SellFish(playerid)
{
	FishWeight[playerid] = 0;
	TogglePlayerControllable(playerid, 1);
    return 1;
}

CMD:fishing(playerid,params[])
{
	//new Float:x,Float:y,Float:z;
	if (PlayerData[playerid][pJob] != JOB_FISHERMAN)
	    return SendErrorMessage(playerid, "You don't have the appropriate job.");

	if (pFishing[playerid] == 1)
	    return SendErrorMessage(playerid, "You are already fishing.");

	if(FishWeight[playerid] >= 200)
		return SendErrorMessage(playerid, "You have too many fishes, /sellfish first.");

	if (IsPlayerInVehicle(playerid, GetPlayerVehicleID(playerid)))
		return  SendErrorMessage(playerid, "You cannot use this command in a vehicle.");

	if(IsPlayerNearFishingPier(playerid))
 	{
 		if (Inventory_Count(playerid, "Fishing Rod") == 0)
 			return SendErrorMessage(playerid,"You must have a fishing rod in order to fish");

		if (Inventory_Count(playerid, "Bait") <= 0)
		{
  			SendErrorMessage(playerid,"You must have bait in order to fish. Go to the bait shop.");
  			Inventory_Remove(playerid, "Bait");
  			return 1;
  		}

  		if (!Inventory_HasItem(playerid, "Bait"))
  		    return SendErrorMessage(playerid,"You must have bait in order to fish. Go to the bait shop.");

		pFishing[playerid] = 1;
       	ApplyAnimation(playerid,"SWORD","sword_block",50.0,0,1,0,1,1);
       	SetPlayerAttachedObject(playerid, 0,18632,6,0.079376,0.037070,0.007706,181.482910,0.000000,0.000000,1.000000,1.000000,1.000000);
        SetTimerEx("PlayerFishing",7500,false,"i",playerid);
		TogglePlayerControllable(playerid, 0);
        GameTextForPlayer(playerid, "~n~~n~~n~~n~~n~~n~~n~~n~~n~~n~~g~Fishing...~w~ Please wait", 7500, 3);
	}
    else SendErrorMessage(playerid,"You are not near any fishing spot");
    return 1;
}

CMD:myfishes(playerid,params[])
{
	new fishpay = FishWeight[playerid] * 5;
	new string[128];

	format(string,sizeof(string),"[SERVER]: {FFFFFF}You have %d pounds of fish. The selling cost of this is $%d. ",FishWeight[playerid], fishpay);
	SendClientMessage(playerid, COLOR_NEWBLUE, string);
	return 1;
}

CMD:sellfish(playerid,params[])
{
	new fishpay = FishWeight[playerid] * 5;
	new string[128];

	if(!IsPlayerInRangeOfPoint(playerid, 10.0, -27.312299, -29.277599, 1003.557250))
		return SendErrorMessage(playerid,"You must be inside the bait shop to sell fish");

	if(FishWeight[playerid] == 0)
 		return SendErrorMessage(playerid,"You must have fish in your inventory in order to sell it.");

	GiveMoney(playerid, fishpay);
	TogglePlayerControllable(playerid, 0);
	FishWeight[playerid] = 0;
	SetTimerEx("SellFish",5000,false,"i",playerid);
	format(string,sizeof(string),"[SERVER]: {FFFFFF}You have received $%d for your fish. Rate: 5$/Pound. ",fishpay);
	SendClientMessage(playerid, COLOR_NEWBLUE, string);
	GameTextForPlayer(playerid, "~n~~n~~n~~n~~n~~n~~n~~n~~n~~n~~p~Selling Fish...~w~ Please wait", 5500, 3);
	return 1;
}