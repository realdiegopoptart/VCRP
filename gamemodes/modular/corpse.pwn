forward InspectCorpse1(playerid);
public InspectCorpse1(playerid)
{
	ApplyAnimationEx(playerid, "BOMBER", "BOM_Plant", 4.1, 0, 0, 0, 0, 0);
	SetTimerEx("InspectCorpse2", 4500, false, "i", playerid);
}

forward InspectCorpse2(playerid);
public InspectCorpse2(playerid)
{
	new Float:Position[3];
    for(new i = 0; i < MAX_CORPSE; i++)
  	{
		if(GetDynamicObjectPos(CorpseData[i][cObject], Position[0], Position[1], Position[2]))
  	    //if(IsPlayerInRangeOfPoint(playerid, 3.0, oCorpse[i][sX], oCorpse[i][sY], oCorpse[i][sZ]))
        {
			if(CorpseData[i][cCreated] == 1)
			{
				if(CorpseData[i][cOwner] == 0)
				{
                    SendNearbyMessage(playerid, 30.0, COLOR_PURPLE, "* %s has failed to identify the rotten corpse", ReturnName(playerid, 2));
					ApplyAnimationEx(playerid, "BOMBER", "BOM_Plant", 4.1, 0, 0, 0, 0, 0);
				}
				else
				{
                    SendNearbyMessage(playerid, 30.0, COLOR_PURPLE, "* %s determined that %s is pronounced dead", ReturnName(playerid, 2), CorpseData[i][cOwner]);
					ApplyAnimationEx(playerid, "BOMBER", "BOM_Plant", 4.1, 0, 0, 0, 0, 0);
					//CorpseData[i][cOwner] = 0;		
				}
  	    	}
  		}
	}
	return 1;
}

forward GetPlayerPosForCorpse(playerid);
public GetPlayerPosForCorpse(playerid)
{
	GetPlayerPos(playerid, getCoordsForCorpseX[playerid], getCoordsForCorpseY[playerid], getCoordsForCorpseZ[playerid]);
    return 1;
}

CreateCorpse(Object,Float:x,Float:y,Float:z,Float:Angle)
{
    //for(new i = 0; i < sizeof(oCorpse); i++)
	for(new i = 0; i < MAX_CORPSE; i++)
  	{
  	    if(CorpseData[i][cCreated] == 0)
  	    {
            CorpseData[i][cCreated] = 1;
            CorpseData[i][cX] = x;
            CorpseData[i][cY] = y;
            CorpseData[i][cZ] = z-0.7;
			CorpseData[i][cOwner] = 0;
            CorpseData[i][cObject] = CreateDynamicObject(Object, x, y, z-0.9, 0, 0, Angle);
            CorpseData[i][cLabel] = CreateDynamic3DTextLabel("Rotten body\n/corpse pickup", -1, x, y, z-0.8, 3.0);
	        return 1;
  	    }
  	}
  	return 0;
}

CreateCorpseEx(Object,Float:x,Float:y,Float:z,Float:Angle, playerid)
{
    //for(new i = 0; i < sizeof(oCorpse); i++)
	for(new i = 0; i < MAX_CORPSE; i++)
  	{
  	    if(CorpseData[i][cCreated] == 0)
  	    {
            CorpseData[i][cCreated] = 1;
            CorpseData[i][cX] = x;
            CorpseData[i][cY] = y;
            CorpseData[i][cZ] = z-0.7;
			CorpseData[i][cOwner] = ReturnName(playerid, 2);
            CorpseData[i][cObject] = CreateDynamicObject(Object, x, y, z-0.9, 0, 0, Angle);
            CorpseData[i][cLabel] = CreateDynamic3DTextLabel("/corpse pickup\n/inspect", -1, x, y, z-0.8, 3.0);
	        return 1;
  	    }
  	}
  	return 0;
}

DeleteClosestCorpse(playerid)
{
    for(new i = 0; i < sizeof(CorpseData); i++)
  	{
  	    if(IsPlayerInRangeOfPoint(playerid, 3.0, CorpseData[i][cX], CorpseData[i][cY], CorpseData[i][cZ]))
        {
  	        if(CorpseData[i][cCreated] == 1)
            {
                CorpseData[i][cCreated] = 0;
                CorpseData[i][cX] = 0.0;
                CorpseData[i][cY] = 0.0;
                CorpseData[i][cZ] = 0.0;
				CorpseData[i][cOwner] = 0;
                DestroyDynamicObject(CorpseData[i][cObject]);
                DestroyDynamic3DTextLabel(CorpseData[i][cLabel]);
                return 1;
  	        }
  	    }
  	}
    return 0;
}

CMD:corpse(playerid, params[])
{
	for(new i = 0; i < MAX_CORPSE; i ++)
	{
        new string[14];
		new vehicleid = Car_Nearest(playerid);
		if(sscanf(params, "s[14]", string))
		{
            SendSyntaxMessage(playerid, "/corpse [option]");
	        SendClientMessage(playerid, COLOR_ORANGE, "[OPTIONS]:{FFFFFF} pickup, drop, load, unload, cremate");
			return 1;
		}

		if(!strcmp(string, "pickup", true))
		{
			if(!IsPlayerInRangeOfDynamicObject(playerid, CorpseData[i][cObject], 2.5))
			{
			    return SendErrorMessage(playerid, "You are not near a corpse.");
			}
			else if(PlayerData[playerid][pPlayerHasBody] == 0 && IsPlayerInRangeOfDynamicObject(playerid, CorpseData[i][cObject], 2.5))
			{
                RemovePlayerAttachedObject(playerid, 9); // Just In Case
                ApplyAnimation(playerid,"CARRY","liftup105",4.0,0,0,0,0,0);
                DeleteClosestCorpse(playerid);

                SetPlayerSpecialAction(playerid, SPECIAL_ACTION_CARRY);
                SetPlayerAttachedObject(playerid, 9, 19944, 1, -0.0120, 0.6158, 0.0000, -94.2998, 91.5000, 11.7999, 1.0000, 1.0000, 1.0000, 0xFFFFFFFF, 0xFFFFFFFF);
                SendNearbyMessage(playerid, 30.0, COLOR_PURPLE, "* %s pickups the corpse.", ReturnName(playerid, 2));

                PlayerData[playerid][pPlayerHasBody] = 1;
			}
			else if(PlayerData[playerid][pPlayerHasBody] == 1 && IsPlayerInRangeOfDynamicObject(playerid, CorpseData[i][cObject], 2.5))
			{
				SendErrorMessage(playerid, "You are already carrying a corpse");
			}
		}
		else if(!strcmp(string, "load", true))
		{
			if(vehicleid == INVALID_VEHICLE_ID)
			{
				SendErrorMessage(playerid, "You are not near any vehicle.");
			}
			if(!GetTrunkStatus(vehicleid))
			{
				SendErrorMessage(playerid, "The trunk must be opened to load in a corpse");
			}
			else if(CoreVehicles[vehicleid][vehHasCorpse] == 1)
			{
				SendErrorMessage(playerid, "There is already a body inside the vehicle's trunk");
			}
			if(PlayerData[playerid][pPlayerHasBody] == 1)
			{
				RemovePlayerAttachedObject(playerid, 9);
                SendNearbyMessage(playerid, 30.0, COLOR_PURPLE, "* %s loads the corpse into the %s", ReturnName(playerid, 2), ReturnVehicleName(vehicleid));
				SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
				corpseInsideText[vehicleid] = Create3DTextLabel("[Corpse Inside]", 0xFFFFFFFF, 0.0, 0.0, 0.0, 10.0, 0, 1);
				Attach3DTextLabelToVehicle(corpseInsideText[vehicleid], vehicleid, -0.0, -1.9, -0.3);
				CoreVehicles[vehicleid][vehHasCorpse] = 1;
				PlayerData[playerid][pPlayerHasBody] = 0;
			}
			else if(PlayerData[playerid][pPlayerHasBody] == 0)
			{
				SendErrorMessage(playerid, "You are not carrying a corpse.");
			}
		}
		else if(!strcmp(string, "unload", true))
		{

			if(vehicleid == INVALID_VEHICLE_ID)
			{
				return SendErrorMessage(playerid, "You are not near any vehicle.");
			}
			if(!GetTrunkStatus(vehicleid))
			{
				SendErrorMessage(playerid, "The trunk must be opened to unload a corpse");
			}
			if(CoreVehicles[vehicleid][vehHasCorpse] == 1 && PlayerData[playerid][pPlayerHasBody] == 0)
			{
				SetPlayerAttachedObject(playerid, 9, 19944, 1, -0.0120, 0.6158, 0.0000, -94.2998, 91.5000, 11.7999, 1.0000, 1.0000, 1.0000, 0xFFFFFFFF, 0xFFFFFFFF);
				ApplyAnimation(playerid,"CARRY","liftup105",4.0,0,0,0,0,0);
                SendNearbyMessage(playerid, 30.0, COLOR_PURPLE, "* %s unloads the corpse from the %s", ReturnName(playerid, 2), ReturnVehicleName(vehicleid));
				SetPlayerSpecialAction(playerid, SPECIAL_ACTION_CARRY);
				Delete3DTextLabel(corpseInsideText[vehicleid]);
				PlayerData[playerid][pPlayerHasBody] = 1;
				CoreVehicles[vehicleid][vehHasCorpse] = 0;
			}
			else if(PlayerData[playerid][pPlayerHasBody] == 1)
			{
				SendErrorMessage(playerid, "You are already carrying a corpse.");
			}
			else if(CoreVehicles[vehicleid][vehHasCorpse] == 0)
			{
				SendErrorMessage(playerid, "There is not a corpse inside this vehicle.");
			}
		}
		else if(!strcmp(string, "cremate", true))
		{
			if(GetFactionType(playerid) != FACTION_MEDIC)
			{
				return SendErrorMessage(playerid, "You can't use this command as you aren't a medic.");
			}

            for(new h = 0; h < sizeof(arrHospitalDeliver); h ++)
            {
                if(PlayerData[playerid][pPlayerHasBody] == 1 && IsPlayerInRangeOfPoint(playerid, 5.0, arrHospitalDeliver[h][0], arrHospitalDeliver[h][1], arrHospitalDeliver[h][2]))
                {
                    ApplyAnimation(playerid,"CARRY","liftup05",4.0,0,0,0,0,0);
                    RemovePlayerAttachedObject(playerid, 9);
                    SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
                    PlayerData[playerid][pPlayerHasBody] = 0;
                }
                else
                { 
                    SendErrorMessage(playerid, "You are not near the hospital point or you are not carrying a corpse.");
                }
            }
		}
		else if(!strcmp(string, "drop", true))
		{
			if(PlayerData[playerid][pPlayerHasBody] == 1)
			{
				ApplyAnimation(playerid,"CARRY","liftup105",4.0,0,0,0,0,0);
				PlayerData[playerid][pPlayerHasBody] = 0;
				RemovePlayerAttachedObject(playerid, 9);
				new Float:plocx,Float:plocy,Float:plocz,Float:ploca;
				GetPlayerPos(playerid, plocx, plocy, plocz);
				GetPlayerFacingAngle(playerid,ploca);
				CreateCorpse(19944,plocx,plocy-2,plocz,ploca);
				SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
                SendNearbyMessage(playerid, 30.0, COLOR_PURPLE, "* %s lays the body bag on the ground", ReturnName(playerid, 2));
			}
			else if(PlayerData[playerid][pPlayerHasBody] == 0)
			{
				SendErrorMessage(playerid, "You are not carrying a corpse.");
			}
		}
	}
	return 1;
}

CMD:inspect(playerid, params[])
{
	for(new i = 0; i < MAX_CORPSE; i ++)
	{
        if(GetFactionType(playerid) != FACTION_POLICE && GetFactionType(playerid) != FACTION_GOV && GetFactionType(playerid) != FACTION_SECURITY)
		    return SendErrorMessage(playerid, "You must be a police officer.");

		if(IsPlayerInRangeOfDynamicObject(playerid, CorpseData[i][cObject], 2.5))
		{
			SetTimerEx("InspectCorpse1", 4500, false, "i", playerid);
			ApplyAnimationEx(playerid, "BOMBER", "BOM_Plant", 4.1, 0, 0, 0, 0, 0);
            SendNearbyMessage(playerid, 30.0, COLOR_PURPLE, "* %s begins to investigate the body", ReturnName(playerid, 2));
            
			return 1;
		}
		else if(!IsPlayerInRangeOfDynamicObject(playerid, CorpseData[i][cObject], 2.5))
		{
			SendErrorMessage(playerid, "You are not near a corpse.");
		}
	}
	return 1;
}