SQL_CreateAccount(const username[], const password[], playerid)
{
	new
	    query[512],
	    buffer[129];

	WP_Hash(buffer, sizeof(buffer), password);

	format(query, sizeof(query), "INSERT INTO `accounts` (`Username`, `Password`, `RegisterDate`, `LoginDate`, `RegisterIP`) VALUES('%s', '%s', '%s', '%s', '%s')", username, buffer, ReturnDate(), ReturnDate(), ReturnIP(playerid));
	mysql_tquery(g_iHandle, query);
}

stock SQL_IsLogged(playerid) {
	return (PlayerData[playerid][pLogged] && PlayerData[playerid][pCharacter] > 0);
}

SQL_SaveCharacter(playerid)
{
	if (!PlayerData[playerid][pLogged] && !PlayerData[playerid][pCharacter])
		return 0;

	new
	    query[2048];

	if (GetPlayerState(playerid) != PLAYER_STATE_SPECTATING && !PlayerData[playerid][pDrivingTest] && !PlayerData[playerid][pBikeTest] && !PlayerData[playerid][pTruckTest])
	{
	    PlayerData[playerid][pInterior] = GetPlayerInterior(playerid);
	    PlayerData[playerid][pWorld] = GetPlayerVirtualWorld(playerid);

	    GetPlayerPos(playerid, PlayerData[playerid][pPos][0], PlayerData[playerid][pPos][1], PlayerData[playerid][pPos][2]);
	    GetPlayerFacingAngle(playerid, PlayerData[playerid][pPos][3]);

	    GetPlayerHealth(playerid, PlayerData[playerid][pHealth]);
	    GetPlayerArmour(playerid, PlayerData[playerid][pArmorStatus]);

	    if (!PlayerData[playerid][pKilled] && PlayerData[playerid][pHealth] == 0.0) {
	        PlayerData[playerid][pHealth] = 100.0;
		}
		if (PlayerData[playerid][pRangeBooth] == -1) {
			UpdateWeapons(playerid);
		}
	}
	format(query, sizeof(query), "UPDATE `characters` SET `Created` = '%d', `Gender` = '%d', `Birthdate` = '%s', `Origin` = '%s', `Skin` = '%d', `PosX` = '%.4f', `PosY` = '%.4f', `PosZ` = '%.4f', `PosA` = '%.4f', `Health` = '%.4f', `Interior` = '%d', `World` = '%d', `Hospital` = '%d', `HospitalInt` = '%d', `Money` = '%d', `BankMoney` = '%d', `OwnsBillboard` = '%d', `Savings` = '%d', `Admin` = '%d', `Helper` = '%d', `PlayersAssisted` = '%d', `Accent` = '%d', `JailTime` = '%d', `Muted` = '%d'",
		PlayerData[playerid][pCreated],
		PlayerData[playerid][pGender],
		PlayerData[playerid][pBirthdate],
		PlayerData[playerid][pOrigin],
		PlayerData[playerid][pSkin],
		PlayerData[playerid][pPos][0],
		PlayerData[playerid][pPos][1],
		PlayerData[playerid][pPos][2],
		PlayerData[playerid][pPos][3],
		PlayerData[playerid][pHealth],
		PlayerData[playerid][pInterior],
		PlayerData[playerid][pWorld],
		PlayerData[playerid][pHospital],
		PlayerData[playerid][pHospitalInt],
		PlayerData[playerid][pMoney],
		PlayerData[playerid][pBankMoney],
		PlayerData[playerid][pOwnsBillboard],
		PlayerData[playerid][pSavings],
		PlayerData[playerid][pAdmin],
		PlayerData[playerid][pHelper],
		PlayerData[playerid][pPlayersAssisted],
		PlayerData[playerid][pAccent],
		PlayerData[playerid][pJailTime],
		PlayerData[playerid][pMuted]
	);
	for (new i = 0; i < 13; i ++) {
		format(query, sizeof(query), "%s, `Gun%d` = '%d', `Ammo%d` = '%d'", query, i + 1, PlayerData[playerid][pGuns][i], i + 1, PlayerData[playerid][pAmmo][i]);
	}
	format(query, sizeof(query), "%s, `House` = '%d', `Business` = '%d', `Entrance` = '%d', `Phone` = '%d', `Lottery` = '%d', `LotteryB` = '%d', `Hunger` = '%d', `Thirst` = '%d', `PlayingHours` = '%d', `Minutes` = '%d', `ArmorStatus` = '%.4f', `Job` = '%d', `Faction` = '%d', `FactionRank` = '%d', `FactionDivision` = '%d', `Prisoned` = '%d', `Complimented` = '%d', `Injured` = '%d', `Warrants` = '%d', `Channel` = '%d', `Bleeding` = '%d', `AdminHide` = '%d', `SpawnPoint` = '%d'",
		query,
		PlayerData[playerid][pHouse],
		PlayerData[playerid][pBusiness],
		PlayerData[playerid][pEntrance],
		PlayerData[playerid][pPhone],
		PlayerData[playerid][pLottery],
		PlayerData[playerid][pLotteryB],
		PlayerData[playerid][pHunger],
		PlayerData[playerid][pThirst],
		PlayerData[playerid][pPlayingHours],
		PlayerData[playerid][pMinutes],
		PlayerData[playerid][pArmorStatus],
		PlayerData[playerid][pJob],
		PlayerData[playerid][pFactionID],
		PlayerData[playerid][pFactionRank],
		PlayerData[playerid][pFactionDivision],
		PlayerData[playerid][pPrisoned],
		PlayerData[playerid][pCompliments],
		PlayerData[playerid][pInjured],
		PlayerData[playerid][pWarrants],
		PlayerData[playerid][pChannel],
		PlayerData[playerid][pBleeding],
		PlayerData[playerid][pAdminHide],
		PlayerData[playerid][pSpawnPoint]
	);
	format(query, sizeof(query), "%s, `Warnings` = '%d', `Warn1` = '%s', `Warn2` = '%s', `ForumName` = '%s', `Donator` = '%d', `FightStyle` = '%d', `MaskID` = '%i', `FactionMod` = '%i', `PropertyMod` = '%i', `SwatMember` = '%d', `Clothes1` = '%d', `Clothes2` = '%d', `Clothes3` = '%d', `Capacity` = '%d', `Channel2` = '%d', `Channel3` = '%d', `Channel4` = '%d', `stealradioTimer` = '%d' WHERE `ID` = '%d'",
	    query,
	    PlayerData[playerid][pWarnings],
	    SQL_ReturnEscaped(PlayerData[playerid][pWarn1]),
	    SQL_ReturnEscaped(PlayerData[playerid][pWarn2]),
	    SQL_ReturnEscaped(PlayerData[playerid][pForumName]),
	    PlayerData[playerid][pDonator],
	    PlayerData[playerid][pFightStyle],
	    PlayerData[playerid][pMaskID],
	    PlayerData[playerid][pFactionMod],
		PlayerData[playerid][pPropertyMod],
	    PlayerData[playerid][pSwatMember],
	    PlayerData[playerid][pClothes1],
	    PlayerData[playerid][pClothes2],
	    PlayerData[playerid][pClothes3],
	    PlayerData[playerid][pCapacity],
   		PlayerData[playerid][pChannel2],
		PlayerData[playerid][pChannel3],
		PlayerData[playerid][pChannel4],
		PlayerData[playerid][pStealRadioTimer],
		PlayerData[playerid][pID]
	);
	mysql_tquery(g_iHandle, query);

	SQL_SaveAccessories(playerid);
	return 1;
}

SQL_SaveAccessories(playerid)
{
    if (!PlayerData[playerid][pLogged])
		return 0;

	new
	    query[768];

    format(query, sizeof(query), "UPDATE `characters` SET `Glasses` = '%d', `Hat` = '%d', `Bandana` = '%d', `GlassesPos` = '%.4f|%.4f|%.4f|%.4f|%.4f|%.4f|%.4f|%.4f|%.4f'",
	    PlayerData[playerid][pGlasses],
	    PlayerData[playerid][pHat],
	    PlayerData[playerid][pBandana],
		AccessoryData[playerid][0][0],
        AccessoryData[playerid][0][1],
        AccessoryData[playerid][0][2],
        AccessoryData[playerid][0][3],
        AccessoryData[playerid][0][4],
        AccessoryData[playerid][0][5],
        AccessoryData[playerid][0][6],
        AccessoryData[playerid][0][7],
        AccessoryData[playerid][0][8]
	);
    format(query, sizeof(query), "%s, `HatPos` = '%.4f|%.4f|%.4f|%.4f|%.4f|%.4f|%.4f|%.4f|%.4f'",
        query,
		AccessoryData[playerid][1][0],
        AccessoryData[playerid][1][1],
        AccessoryData[playerid][1][2],
        AccessoryData[playerid][1][3],
        AccessoryData[playerid][1][4],
        AccessoryData[playerid][1][5],
        AccessoryData[playerid][1][6],
        AccessoryData[playerid][1][7],
        AccessoryData[playerid][1][8]
	);
	format(query, sizeof(query), "%s, `Slot5Pos` = '%.4f|%.4f|%.4f|%.4f|%.4f|%.4f|%.4f|%.4f|%.4f', `Slot5ObjID` = '%d', `Slot5BoneID` = '%d'",
        query,
		AccessoryData[playerid][5][0],
        AccessoryData[playerid][5][1],
        AccessoryData[playerid][5][2],
        AccessoryData[playerid][5][3],
        AccessoryData[playerid][5][4],
        AccessoryData[playerid][5][5],
        AccessoryData[playerid][5][6],
        AccessoryData[playerid][5][7],
        AccessoryData[playerid][5][8],
		AccessoryInfo[playerid][5][0],
		AccessoryInfo[playerid][5][1]
	);
	format(query, sizeof(query), "%s, `Slot9Pos` = '%.4f|%.4f|%.4f|%.4f|%.4f|%.4f|%.4f|%.4f|%.4f', `Slot9ObjID` = '%d', `Slot9BoneID` = '%d'",
        query,
		AccessoryData[playerid][9][0],
        AccessoryData[playerid][9][1],
        AccessoryData[playerid][9][2],
        AccessoryData[playerid][9][3],
        AccessoryData[playerid][9][4],
        AccessoryData[playerid][9][5],
        AccessoryData[playerid][9][6],
        AccessoryData[playerid][9][7],
        AccessoryData[playerid][9][8],
		AccessoryInfo[playerid][9][0],
		AccessoryInfo[playerid][9][1]
	);
	format(query, sizeof(query), "%s, `BandanaPos` = '%.4f|%.4f|%.4f|%.4f|%.4f|%.4f|%.4f|%.4f|%.4f' WHERE `ID` = '%d'",
	    query,
		AccessoryData[playerid][2][0],
        AccessoryData[playerid][2][1],
        AccessoryData[playerid][2][2],
        AccessoryData[playerid][2][3],
        AccessoryData[playerid][2][4],
        AccessoryData[playerid][2][5],
        AccessoryData[playerid][2][6],
        AccessoryData[playerid][2][7],
        AccessoryData[playerid][2][8],
        PlayerData[playerid][pID]
	);
	mysql_tquery(g_iHandle, query);
	return 1;
}

SQL_CheckAccount(playerid)
{
	new
	    query[128];

    format(query, sizeof(query), "SELECT `Username` FROM `characters` WHERE `chara` = '%s'", ReturnName(playerid));
	mysql_tquery(g_iHandle, query, "OnQueryFinished", "dd", playerid, THREAD_FIND_USERNAME);
}

SQL_AttemptLogin(playerid, const password[])
{
	new
		query[300],
		buffer[129];

	WP_Hash(buffer, sizeof(buffer), password);

	format(query, sizeof(query), "SELECT `ID` FROM `accounts` WHERE `Username` = '%s' AND `Password` = '%s'", PlayerData[playerid][pUsername], buffer);
    mysql_tquery(g_iHandle, query, "OnQueryFinished", "dd", playerid, THREAD_LOGIN);
}