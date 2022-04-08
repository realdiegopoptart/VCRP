// BEGIN DEFINE COLORS //
#define COLOR_CLIENT      (0xAAC4E5FF)
#define COLOR_WHITE       (0xFFFFFFFF)
#define COLOR_RED         (0xFF0000FF)
#define COLOR_CYAN        (0x33CCFFFF)
#define COLOR_LIGHTRED    (0xFF6347FF)
#define COLOR_LIGHTGREEN  (0x9ACD32FF)
#define COLOR_YELLOW      (0xFFFF00FF)
#define COLOR_GREY        (0x888888C8)
#define COLOR_RADIO		  (0xB5AF8FFF)
#define COLOR_FADE1 	  (0xE6E6E6E6)
#define COLOR_HOSPITAL    (0xFF8282FF)
#define COLOR_PURPLE      (0xD0AEEBFF)
#define COLOR_LIGHTYELLOW (0xF5DEB3FF)
#define COLOR_DARKBLUE    (0x1394BFFF)
#define COLOR_ORANGE      (0xFFA500FF)
#define COLOR_LIME        (0x00FF00FF)
#define COLOR_GREEN       (0x33CC33FF)
#define COLOR_BLUE        (0x2641FEFF)
#define COLOR_FACTION     (0xBDF38BFF)
#define COLOR_SERVER      (0xFFFF90FF)
#define COLOR_DEPARTMENT  (0xF07A7AFF)
#define COLOR_ADMINCHAT   (0x33EE33FF)
#define COLOR_ANTICHEAT	  (0xFFE682FF)
#define DEFAULT_COLOR     (0xFFFFFF00)
#define COLOR_RADIOCHAT   (0x99B4D1FF)
#define COLOR_FACTIONCHAT (0x6699FFAA)
#define COLOR_NEWGREEN    (0x00E228FF)
#define COLOR_NEWBLUE     (0x80BCFF)
#define COLOR_DONATOR     (0xe3cfa600)
#define COLOR_DONATORCHAT (0xe3cfa6AA)
#define COLOR_LIGHTBLUE   (0x3AB3EDFF)
#define COLOR_INTERCOM    (0x58D3A6FF)
#define COLOR_FADVERT     (0x00AA00FF)
#define COLOR_WHATSAPP    (0xCCFFCC)
#define COLOR_SNAPCHAT 	  (0xCCFFCC)
#define YELLOW 0xDABB3EAA
#define WHITE 0xFFFFFFAA
#define RED 0xFF0000FF
#define GREY 0xBFC0C2FF
#define COL_GREEN		"{6EF83C}"
#define COL_RED         "{F81414}"
#define COL_BLUE        "{0049FF}"

#define	COLOR_VICE_LIGHTBLUE (0x00A8FFFF)
#define COLOR_VICE_DARKBLUE  (0x0266C8FF)
#define COLOR_VICE_LIGHTPINK (0xF4AFC2FF)
#define COLOR_VICE_DARKPINK  (0xF195ACFF)
#define COLOR_VICE_PURPLE	 (0xB28BC0FF)
// END DEFINE COLORS //

// OTHER DEFINES //
#define PAYCHECK_TAX_PERCENT (8)
#define THREAD_CREATE_CHAR (1)
#define THREAD_CHECK_ACCOUNT (2)
#define THREAD_LOGIN (3)
#define THREAD_CHARACTERS (4)
#define THREAD_LOAD_CHARACTER (5)
#define THREAD_VERIFY_PASS (6)
#define THREAD_FIND_USERNAME (7)
#define THREAD_LOAD_INVENTORY (8)
#define THREAD_BAN_LOOKUP (9)
#define THREAD_LOAD_CONTACTS (10)
#define THREAD_LOAD_LOCATIONS (11)
#define THREAD_LOAD_TICKETS (12)
#define THREAD_SHOW_CHARACTER (13)
#define THREAD_LOAD_MASTERACCOUNT_DATA (14)

// MODEL DEFINES //
#define MODEL_SELECTION_GLASSES (1)
#define MODEL_SELECTION_HATS (2)
#define MODEL_SELECTION_BANDANAS (3)
#define MODEL_SELECTION_SKIN (4)
#define MODEL_SELECTION_INVENTORY (5)
#define MODEL_SELECTION_CLOTHES (6)
#define MODEL_SELECTION_DEALER (7)
#define MODEL_SELECTION_DEALER_ADD (8)
#define MODEL_SELECTION_BUY_CAR (9)
#define MODEL_SELECTION_FURNITURE (10)
#define MODEL_SELECTION_COLOR (11)
#define MODEL_SELECTION_SKINS (12)
#define MODEL_SELECTION_ADD_SKIN (13)
#define MODEL_SELECTION_FACTION_SKIN (14)
#define MODEL_SELECTION_WHEELS (15)
#define MODEL_SELECTION_FRISK (16)
#define MODEL_SELECTION_UNDERCOVER (17)
#define MODEL_SELECTION_OFFDUTYCLOTHES (18)

// FACTION DEFINES //
#define FACTION_POLICE (1)
#define FACTION_NEWS (2)
#define FACTION_MEDIC (3)
#define FACTION_GOV (4)
#define FACTION_SECURITY (5)
#define FACTION_GANG_DRUGS (6)
#define FACTION_GANG_GUNS (7)

#define NINER_POLICE (1)
#define NINER_MEDIC (2)
#define NINER_BOTH (3)

#define NINER_UNCLEARED (0)
#define NINER_CLEARED (1)
#define NINER_UNANSWERED (2)

// JOB DEFINES //
#define JOB_COURIER (1)
#define JOB_MECHANIC (2)
#define JOB_TAXI (3)
#define JOB_UNLOADER (4)
#define JOB_MINER (5)
#define JOB_FOOD_VENDOR (6)
#define JOB_GARBAGE (7)
#define JOB_SORTER (8)
#define JOB_WEAPON_SMUGGLER (9)
#define JOB_FISHERMAN (10)


// Defines //
#define DonatorOnly	"[Alert]:{FFFFFF} This command is restricted to users with Premium Subscriptions!"

#define MAX_CORPSE (75)
#define MAX_BILLBOARDS (80)
#define MAX_REPORTS (200)
#define MAX_ASSISTANCES (200)
#define MAX_INVENTORY (120)
#define MAX_HOUSES (300)
#define MAX_HOUSE_STORAGE (10)
#define MAX_BUSINESSES (100)
#define MAX_DROPPED_ITEMS (500)
#define MAX_ENTRANCES (100)
#define MAX_DEALERSHIP_CARS (50)
#define MAX_DYNAMIC_CARS (1000)
#define MAX_GAS_PUMPS (50)
#define MAX_FURNITURE (1500)
#define MAX_HOUSE_FURNITURE (30)
#define MAX_DYNAMIC_JOBS (25)
#define MAX_CONTACTS (20)
#define MAX_GPS_LOCATIONS (50)
#define MAX_CAR_STORAGE (5)
#define MAX_CRATES (100)
#define MAX_DRUG_PLANTS (100)
#define MAX_FACTIONS (15)
#define MAX_ARREST_POINTS (10)
#define MAX_PLAYER_TICKETS (10)
#define MAX_PLAYER_INVOICES (10)
#define MAX_BARRICADES (50)
#define MAX_BOOTHS (8)
#define MAX_GATES (100)
#define MAX_IMPOUND_LOTS (30)
#define MAX_ATM_MACHINES (50)
#define MAX_GARBAGE_BINS (80)
#define MAX_VENDORS (30)
#define MAX_WEAPON_RACKS (300)
#define MAX_SPEED_CAMERAS (50)
#define MAX_LISTED_ITEMS (10)
#define MAX_GRAFFITI_POINTS (50)
#define MAX_METAL_DETECTORS (50)
#define MAX_APBS (20)
#define MAX_911_CALLS (300)

#define MAX_OWNABLE_CARS (5)
#define MAX_OWNABLE_HOUSES (3)
#define MAX_OWNABLE_BUSINESSES (5)

#define MAX_BACKPACKS (1000)
#define MAX_BACKPACK_ITEMS (2000)
#define MAX_BACKPACK_CAPACITY (10)

#define MAX_ROADBLOCKS 200
#define VISIBLE_ITEMS 1200
#define PRISON_WORLD (10000)

// Vehicle Bomb Stuff
#define BOMB_ARMTIME					15 		// Amount of seconds it takes to arm a bomb
#define BOMB_CHECKTIME 					10		// Amount of seconds it takes to check for bombs in a vehicle
#define BOMB_DISARMTIME					5		// Amount of seconds it takes to attempt to disarm a bomb
#define BOMB_USE_DISTANCE				3.0		// FLOAT, how far away the player has to be from the vehicle to use any bombs

#define VEHICLE_BOMB_TYPE_UNARMED		0
#define VEHICLE_BOMB_TYPE_IGNITION		1
#define VEHICLE_BOMB_TYPE_TIMER			2
#define VEHICLE_BOMB_TYPE_SPEED			3
#define VEHICLE_BOMB_TYPE_REMOTE		4

#define MAX_EXPLOSIVES_PER_PLAYER		1
#define MAX_EXPLOSIVES					MAX_PLAYERS * MAX_EXPLOSIVES_PER_PLAYER

//Custom Damage
#define BODY_PART_TORSO (3)
#define BODY_PART_GROIN (4)
#define BODY_PART_LEFT_ARM (5)
#define BODY_PART_RIGHT_ARM (6)
#define BODY_PART_LEFT_LEG (7)
#define BODY_PART_RIGHT_LEG (8)
#define BODY_PART_HEAD (9)

#define MAX_WEAPONS 55
#define MAX_BODY_PARTS 7

//weapon holster stuff
#define WEAPON_TYPE_NONE 	(0)
#define WEAPON_TYPE_HEAVY   (1)
#define WEAPON_TYPE_LIGHT   (2)
#define WEAPON_TYPE_MELEE   (3)
#define SetPlayerHoldingObject(%1,%2,%3,%4,%5,%6,%7,%8,%9) SetPlayerAttachedObject(%1,MAX_PLAYER_ATTACHED_OBJECTS-1,%2,%3,%4,%5,%6,%7,%8,%9)
#define StopPlayerHoldingObject(%1) RemovePlayerAttachedObject(%1,MAX_PLAYER_ATTACHED_OBJECTS-1)
#define IsPlayerHoldingObject(%1) IsPlayerAttachedObjectSlotUsed(%1,MAX_PLAYER_ATTACHED_OBJECTS-1)
//---

new ServerTime[2];


new Flash[MAX_VEHICLES];
new FlashTime[MAX_VEHICLES];


//stretcher variables

new bool:UsingStretcher[MAX_PLAYERS]; 		// To check if the player is pushing the stretcher or not
new bool:StretcherSpawned[MAX_PLAYERS]; 	// To check if player has spawned a stretcher or not
new bool:StretcherLoaded[MAX_PLAYERS]; 		// To check if there's a patient on the stretcher
new bool:Loaded2Stretcher[MAX_PLAYERS]; 	// To check from the patient's side if he's loaded on someone's stretcher
new PatientID[MAX_PLAYERS] = 0; 			// To check the patient's ID, so I can know if that player is connected
new MedicID[MAX_PLAYERS] = 0; 				// To check the medic's ID, so I can know if he's connected
new Stretcher[MAX_PLAYERS] = 0; 			// This is an object ID of the stretcher
new
	gCurHoldingGun[MAX_PLAYERS] = {0, ...};
//end of stretcher variables //

new Float:getCoordsForCorpseX[MAX_PLAYERS];
new Float:getCoordsForCorpseY[MAX_PLAYERS];
new Float:getCoordsForCorpseZ[MAX_PLAYERS];

//pool stuff//

#define OBJ_SLOT_POOL (0)
enum poolBall
{
	bObject,
	bExisting
}

new
	PlayingPool[MAX_PLAYERS],
	PoolCamera[MAX_PLAYERS],
	UsingChalk[MAX_PLAYERS],
	PoolScore[MAX_PLAYERS],
	Float:AimAngle[MAX_PLAYERS][2],
	AimObject,
	PoolStarted,
	PoolAimer = -1,
	PoolLastShooter = -1,
	PoolLastScore,
	PoolBall[16][poolBall],
	Text:PoolTD[4],
	Float:PoolPower,
	PoolDir;

//////////////////


new TruckingCheck[MAX_PLAYERS];
new Text3D:vehicle3Dtext[MAX_VEHICLES];
new vehiclecallsign[MAX_VEHICLES];
new Text3D:corpseInsideText[MAX_VEHICLES];
new Seatbelt[MAX_PLAYERS];
new FishWeight[MAX_PLAYERS];
new pFishing[MAX_PLAYERS];

new MDCNinerID[MAX_PLAYERS];

enum playerData {
	pID,
	pAccount,
	pLogged,
	pIP[16],
	pLoginDate[36],
	PlayerText:pTextdraws[91],
	pUsername[MAX_PLAYER_NAME + 1],
	pLoginAttempts,
	pCreated,
	pGender,
	pBirthdate[24],
	pOrigin[32],
	pSkin,
	pStealRadioTimer,
	pEditType,
	pGlasses,
	pPlayersAssisted,
	pCompliments,
	pHat,
	pBandana,
	pEditObject,
	pBChatDisabled,
	pAttachedGun1,
	pAttachedGun1Bone,
	pAttachedGun2,
	pAttachedGun2Bone,
	pAttachedGun3,
	pAttachedGun3Bone,
	pEditGun,
	Float:pAttachedGun1Pos[9],
	Float:pAttachedGun2Pos[9],
	Float:pAttachedGun3Pos[9],
	Float:pPos[4],
	Float:pHealth,
	pInterior,
	pWorld,
	pCharacter,
	pHospital,
	pHospitalInt,
	pHospitalTime,
	pRepairTime,
	pKilled,
	pMoney,
	pBankMoney,
	pBackup,
	pBackupTimer,
	pOwnsBillboard,
	pSavings,
	pAdmin,
	pHelper,
	pAccent,
	pShowFooter,
	pFooterTimer,
	pReportTime,
	pHelpTime,
	pSpectator,
	pJailTime,
	pKicked,
	pMuted,
	pDisplayStats,
	pCharacterMenu,
	pToggleGlasses,
	pToggleHat,
	pToggleChatAnim,
	pToggleBandana,
	pToggleArmor,
	pLastShot,
	pShotTime,
	pInventoryItem,
	pStorageItem,
	pStorageSelect,
	pProductModify,
	pGuns[13],
	pAmmo[13],
	pFLAttached, // FlashLight System
	pTLAttached, // Tac FlashLight system
	pRepairTimer,
	pUnableToRepair,
	pHouse,
	pBusiness,
	pEntrance,
	pDealership,
	pContact,
	pGasPump,
	pGasStation,
	pEditPump,
	pEditFurniture,
	pEditGate,
	pEditRack,
	pEditATM,
	pSelectFurniture,
	pRefill,
	pRefillPrice,
	pDealerCar,
	pEditingItem[32 char],
	pHouseSeller,
	pHouseOffered,
	pHouseValue,
	pBusinessSeller,
	pBusinessOffered,
	pBusinessValue,
	pCarSeller,
	pCarOffered,
	pCarValue,
	pShakeOffer,
	pShakeType,
	pFriskOffer,
	pFrisking,
	pFoodSeller,
	pFoodType,
	pFoodPrice,
	pFactionOffer,
	pFactionOffered,
	pLoanOffer,
	pLoanOffered,
	pHouseLights,
	pPhone,
	pPhoneOff,
	pLottery,
	pLotteryB,
	pHunger,
	pThirst,
	pHungerTime,
	pThirstTime,
	pCooking,
	pCookingTime,
	pCookingHouse,
	pPlayingHours,
	pMinutes,
	Float:pArmorStatus,
	pArmorShown,
	pClothesType,
	pDrivingTest,
	pBikeTest,
	pTruckTest,
	pTestStage,
	pTestCar,
	pTestWarns,
	pFurnitureType,
	pJob,
	pTaxiFee,
	pTaxiTime,
	pTaxiPlayer,
	pTaxiDuty,
	pFirstAid,
	pAidTimer,
	pIncomingCall,
	pCallLine,
	pMining,
	pMineTime,
	pMineCount,
	pMinedRock,
	pCarryTrash,
	pCarryCrate,
	pCrateVehicle,
	pCrafting,
	pOpeningCrate,
	pHarvesting,
	pFaction,
	pFactionID,
	pFactionRank,
	pFactionDivision,
	pFactionEdit,
	pSelectedSlot,
	pOnDuty,
	pTazer,
	pBeanBag,
	pStunned,
	pCuffed,
	pHoldItem,
	pDragged,
	pDraggedBy,
	pDragTimer,
	pWarrants,
	pMDCPlayer,
	pTrackTime,
	pCP,
	pPrisoned,
	pInjured,
	pBroadcast,
	pNewsGuest,
	pSpamCount,
	pCommandCount,
	pMuteTime,
	pTransfer,
	pWaypoint,
	pLocation[32],
	Float:pWaypointPos[3],
	pFuelCan,
	pDisableOOC,
	pDisablePM,
	pDisableFaction,
	pDisableDonator,
	pDisableBC,
	pDisableSpeedo,
	pNameChange[32],
	pDrugUsed,
	pDrugTime,
	pFingerTime,
	pFingerItem,
	pHealthTime,
	pWeapon,
	pBackpackLoot,
	pGiveItem,
	pLastWeapon,
	pChannel,
	pChannel2,
	pChannel3,
	pChannel4,
	pEmergency,
	pEmergencyBoth,
	pDealerCallDrugs,
	pDealerCallGuns,
	pDealerCallMP,
	pDealerCallPP,
	pDealerCallSMGP,
	pDealerCallSP,
	pDealerCallRP,
	pDealerCallDP,
	pPlaceAd,
	pAdTime,
	pLoanAsk,
	pLoan,
	pRangeBooth,
	pTargets,
	pTargetLevel,
	pVendorTime,
	pLoopAnim,
	pBoombox,
	pTakeItems,
	PlayerBar:pDrinkBar,
	PlayerBar:pSmokeBar,
	pDrinking,
	pSmoking,
	pDrinkTime,
	pAdvertise[128 char],
	pTaxiCalled,
	pMechanicCalled,
	pSpeedTime,
	pMarker,
	pBleeding,
	pBleedTime,
	pLoadType,
	pLoadCrate,
	pLoading,
	pUnloading,
	pUnloadVehicle,
	pShipment,
	pDeliverShipment,
	pHoldWeapon,
	pUsedMagazine,
	pTask,
	pBankTask,
	pStoreTask,
	pTestTask,
	pWarnings,
 	pWarn1[32],
	pWarn2[32],
	pDonator,
	pForumName[32],
	pFightStyle,
	pSorting,
	pSortCrate,
	pAdminDuty,
	pSeekHelp,
	pHUD,
	pMaskID,
	pMaskOn,
	pHideTags,
	pFactionMod,
	pPropertyMod,
	pSwatMember,
	pClothes1,
	pClothes2,
	pClothes3,
	pCapacity,
	pPlayRadio,
	pLeaveTime,
	pLeaveIP[16],
	pGraffiti,
	pGraffitiTime,
	pGraffitiColor,
	pGraffitiText[64 char],
	pEditGraffiti,
	pAdminHide,
	pDetectorTime,
	pPicking,
	pPickCar,
	pPickTime,
	pJetpack,
	pFreeze,
	pFreezeTimer,
	Text3D:pNameTag,
	pSpawnPoint,
	pRoadBlock,
	pCarLicense,
	pTruckLicense,
	pBikeLicense,
	pAirLicense,
	pHeliLicense,
	pWeaponLicense,
	pPlayerHasBody
};

enum corpseData
{
    cCreated,
    Float:cX,
    Float:cY,
    Float:cZ,
    cObject,
	Text3D:cLabel,
    cOwner[MAX_PLAYER_NAME + 1]
};

enum reportData {
	rExists,
	rType,
	rPlayer,
	rText[128 char]
};

enum assistanceData {
	aExists,
	aType,
	aPlayer,
	aText[128 char]
};

enum billboardData {
	bbID,
	bbExists,
	bbName[32],
	bbMessage[230],
	bbOwner,
	bbPrice,
	bbRange,
	Float:bbPos[4],
	Text3D:bbText3D
};

enum emergencyCallsData {
	eCallLocation[128]
}

new EmergencyCallsData[MAX_PLAYERS][emergencyCallsData];

new BillBoardData[MAX_BILLBOARDS][billboardData];
new BillboardCheckout[MAX_PLAYERS];

enum inventoryData {
	invExists,
	invID,
	invItem[32 char],
	invModel,
	invQuantity
};

enum houseData {
	houseID,
	houseExists,
	houseOwner,
	housePrice,
	houseAddress[32],
	Float:housePos[4],
	Float:houseInt[4],
	houseInterior,
	houseExterior,
	houseExteriorVW,
	houseLocked,
	houseMoney,
	houseMapIcon,
	Text3D:houseText3D,
	housePickup,
	houseLights,
	houseWeapons[10],
	houseAmmo[10]
};


enum houseStorage {
	hItemID,
	hItemExists,
	hItemName[32 char],
	hItemModel,
	hItemQuantity
};

enum businessData {
	bizID,
	bizExists,
 	bizName[32],
	bizMessage[128],
	bizOwner,
	bizType,
	bizPrice,
	Float:bizPos[4],
	Float:bizInt[4],
	Float:bizSpawn[4],
	Float:bizDeliver[3],
	bizInterior,
	bizExterior,
	bizExteriorVW,
	bizLocked,
	bizVault,
	bizProducts,
	bizPickup,
	bizShipment,
	bizPrices[21],
	Text3D:bizText3D,
	Text3D:bizDeliverText3D,
	bizDeliverPickup
};

enum droppedItems {
	droppedID,
	droppedItem[32],
	droppedPlayer[24],
	droppedModel,
	droppedQuantity,
	Float:droppedPos[3],
	droppedWeapon,
	droppedAmmo,
	droppedInt,
	droppedWorld,
	droppedObject,
	Text3D:droppedText3D
};

enum rInfo
{
    sCreated,
    Float:sX,
    Float:sY,
    Float:sZ,
    sObject,
};
new Roadblocks[MAX_ROADBLOCKS][rInfo];

enum entranceData {
	entranceID,
	entranceExists,
	entranceName[32],
	entrancePass[32],
	entranceIcon,
	entranceLocked,
	Float:entrancePos[4],
	Float:entranceInt[4],
	entranceInterior,
	entranceExterior,
	entranceExteriorVW,
	entranceType,
	entranceCustom,
	entranceWorld,
	entranceForklift[7],
	entrancePickup,
	entranceMapIcon,
	Text3D:entranceText3D
};

enum dealershipCars {
	vehID,
	vehModel,
	vehPrice
};

enum carData {
	carID,
	carExists,
	carModel,
	carOwner,
	Float:carPos[4],
	Float:carHP,
	carPanelsDmg,
	carDoorsDmg,
	carLightsDmg,
	carTiresDmg,
	carColor1,
	carColor2,
	carPaintjob,
	carLocked,
	carMods[14],
	carImpounded,
	carImpoundPrice,
	carFaction,
	carRadio,
	carJob,
	carSiren,
	carWeapons[5],
	carAmmo[5],
	carVehicle,
	carPlate[15]
};

enum carStorage {
	cItemID,
	cItemExists,
	cItemName[32 char],
	cItemModel,
	cItemQuantity
};

enum pumpData {
	pumpID,
	pumpExists,
	pumpBusiness,
	Float:pumpPos[4],
	pumpFuel,
	pumpObject,
	Text3D:pumpText3D
};

enum furnitureData {
	furnitureID,
	furnitureHouse,
	furnitureExists,
	furnitureModel,
	furnitureName[32],
	Float:furniturePos[3],
	Float:furnitureRot[3],
	furnitureObject
};

enum jobData {
	jobID,
	jobExists,
	jobType,
	Float:jobPos[3],
	Float:jobPoint[3],
	Float:jobDeliver[3],
	jobInterior,
	jobWorld,
	jobPointInt,
	jobPointWorld,
	jobPickups[3],
	Text3D:jobText3D[3]
};

enum contactData {
	contactID,
	contactExists,
	contactName[32],
	contactNumber
};

enum locationData {
	locationID,
	locationExists,
	locationName[32],
	Float:locationPos[3],
};

enum crateData {
	crateID,
	crateExists,
	crateType,
 	Float:cratePos[4],
	crateInterior,
	crateWorld,
	crateObject,
	crateVehicle,
	Text3D:crateText3D
};

enum plantData {
	plantID,
	plantExists,
	plantType,
	plantDrugs,
	Float:plantPos[4],
	plantInterior,
	plantWorld,
	plantObject,
	Text3D:plantText3D
};

enum factionData {
	factionID,
	factionExists,
	factionName[64],
	factionColor,
	factionType,
	factionRanks,
	factionDivisions,
	Float:factionLockerPos[3],
	factionLockerInt,
	factionLockerWorld,
	factionSkins[18],
	factionWeapons[10],
	factionAmmo[10],
	Text3D:factionText3D,
	factionPickup,
	Float:SpawnX,
	Float:SpawnY,
	Float:SpawnZ,
	SpawnInterior,
	SpawnVW
};

enum prisonData {
	prisonDoors[3],
	prisonCells[24],
	prisonDoorOpened[3],
	prisonCellOpened[24]
};

enum arrestPoints {
	arrestID,
	arrestExists,
	Float:arrestPos[3],
	arrestInterior,
	arrestWorld,
	Text3D:arrestText3D,
	arrestPickup
};

enum ticketData {
	ticketID,
	ticketExists,
	ticketFee,
	ticketDate[36],
	ticketReason[64]
};

enum barricadeData {
	cadeExists,
	cadeType,
	Float:cadePos[3],
	cadeObject
};

enum gateData {
	gateID,
	gateExists,
	gateOpened,
	gateModel,
	Float:gateSpeed,
	Float:gateRadius,
	gateTime,
	Float:gatePos[6],
	gateInterior,
	gateWorld,
	Float:gateMove[6],
	gateLinkID,
	gateFaction,
	gatePass[32],
	gateTimer,
	gateObject
};

enum backpackData {
	backpackID,
	backpackExists,
	backpackPlayer,
	backpackHouse,
	backpackVehicle,
	Float:backpackPos[3],
	backpackInterior,
	backpackWorld,
	Text3D:backpackText3D,
	backpackObject
};

enum backpackItems {
	bItemID,
	bItemBackpack,
	bItemExists,
	bItemName[32],
	bItemModel,
	bItemQuantity
};

enum impoundData {
	impoundID,
	impoundExists,
	Float:impoundLot[3],
	Float:impoundRelease[4],
	Text3D:impoundText3D,
	impoundPickup
};

enum atmData {
	atmID,
	atmExists,
	Float:atmPos[4],
	atmInterior,
	atmWorld,
	atmObject,
	Text3D:atmText3D
};

enum garbageData {
	garbageID,
	garbageExists,
 	garbageModel,
	garbageCapacity,
	Float:garbagePos[4],
	garbageInterior,
	garbageWorld,
	Text3D:garbageText3D,
	garbageObject
};

enum vendorData {
	vendorID,
	vendorExists,
	vendorType,
	Float:vendorPos[4],
	vendorInterior,
	vendorWorld,
	Text3D:vendorText3D,
	vendorObject
};

enum boomboxData {
	boomboxPlaced,
	Float:boomboxPos[3],
	boomboxInterior,
	boomboxWorld,
	boomboxObject,
	boomboxURL[128 char],
	Text3D:boomboxText3D
};

enum rackData {
	rackID,
	rackExists,
	rackHouse,
	Float:rackPos[4],
	rackInterior,
	rackWorld,
	rackWeapons[4],
	rackAmmo[4],
	rackObjects[5],
	Text3D:rackText3D
};

enum speedData {
	speedID,
	speedExists,
	Float:speedPos[4],
	Float:speedRange,
	Float:speedLimit,
	speedObject,
	Text3D:speedText3D
};

enum graffitiData {
	graffitiID,
	graffitiExists,
	Float:graffitiPos[4],
	graffitiIcon,
	graffitiObject,
	graffitiColor,
	graffitiText[64]
};

enum detectorData {
	detectorID,
	detectorExists,
	Float:detectorPos[4],
	detectorInterior,
	detectorWorld,
	dynamicArea,
	detectorObject[2]
};

enum apbData {
	apbExists,
	apbID,
	apbDate[30],
	apbCreatorID,
	apbListItem,
	apbCreatorName[40],
	apbText[129]
}

enum ninerData {
	ninerExists,
	ninerID,
	ninerType,
	ninerTime[30],
	ninerCaller[40],
	ninerNum,
	ninerStatus,
	ninerGPS[80],
	ninerLocation[128],
	ninerDesc[128],
	ninerNotes[128],
	ninerListItem,
	ninerTimer
}

new g_iHandle;
new g_StatusOOC;
new g_TaxVault;
new Text:gServerTextdraws[4];
new option;

//NPC Tram
//new NPCTram;

new Text:BlackBox;

new g_ServerRestart;
new g_RestartTime;
new g_BoothUsed[MAX_BOOTHS];
new g_BoothObject[MAX_BOOTHS] = {-1, ...};

new g_aFireObjects[36] = {INVALID_OBJECT_ID, ...};
new g_aFireExtinguished[36];

new PrisonData[prisonData];
new Float:PrisonCells[24][3];

new APBData[MAX_APBS][apbData];
new NinerData[MAX_911_CALLS][ninerData];

new GraffitiData[MAX_GRAFFITI_POINTS][graffitiData];
new MetalDetectors[MAX_METAL_DETECTORS][detectorData];
new BarricadeData[MAX_BARRICADES][barricadeData];

new VendorData[MAX_VENDORS][vendorData];
new SpeedData[MAX_SPEED_CAMERAS][speedData];

new BoomboxData[MAX_PLAYERS][boomboxData];
new RackData[MAX_WEAPON_RACKS][rackData];

new ATMData[MAX_ATM_MACHINES][atmData];
new GarbageData[MAX_GARBAGE_BINS][garbageData];

new BackpackData[MAX_BACKPACKS][backpackData];
new BackpackItems[MAX_BACKPACK_ITEMS][backpackItems];

new BackpackListed[MAX_PLAYERS][MAX_BACKPACK_CAPACITY];
new ImpoundData[MAX_IMPOUND_LOTS][impoundData];

new PlayerData[MAX_PLAYERS][playerData];
new CorpseData[MAX_CORPSE][corpseData];
new Float:AccessoryData[MAX_PLAYERS][10][9];
new AccessoryInfo[MAX_PLAYERS][10][2];
new TicketData[MAX_PLAYERS][MAX_PLAYER_TICKETS][ticketData];
new ListedVehicles[MAX_PLAYERS][MAX_OWNABLE_CARS];

new InventoryData[MAX_PLAYERS][MAX_INVENTORY][inventoryData];
new ContactData[MAX_PLAYERS][MAX_CONTACTS][contactData];
new LocationData[MAX_PLAYERS][MAX_GPS_LOCATIONS][locationData];

new ListedFurniture[MAX_PLAYERS][MAX_HOUSE_FURNITURE];
new NearestItems[MAX_PLAYERS][MAX_LISTED_ITEMS];
new ListedContacts[MAX_PLAYERS][MAX_CONTACTS];

new ReportData[MAX_REPORTS][reportData];
new AssistanceData[MAX_ASSISTANCES][assistanceData];
new ArrestData[MAX_ARREST_POINTS][arrestPoints];

new BusinessData[MAX_BUSINESSES][businessData];
new PumpData[MAX_GAS_PUMPS][pumpData];
new DealershipCars[MAX_BUSINESSES][MAX_DEALERSHIP_CARS][dealershipCars];

new DroppedItems[MAX_DROPPED_ITEMS][droppedItems];
new EntranceData[MAX_ENTRANCES][entranceData];

new CarData[MAX_DYNAMIC_CARS][carData];
new CarStorage[MAX_DYNAMIC_CARS][MAX_CAR_STORAGE][carStorage];

new HouseData[MAX_HOUSES][houseData];
new HouseStorage[MAX_HOUSES][MAX_HOUSE_STORAGE][houseStorage];
new FurnitureData[MAX_FURNITURE][furnitureData];

new JobData[MAX_DYNAMIC_JOBS][jobData];
new CrateData[MAX_CRATES][crateData];
new PlantData[MAX_DRUG_PLANTS][plantData];

new FactionData[MAX_FACTIONS][factionData];
new FactionRanks[MAX_FACTIONS][15][32];
new FactionDivisions[MAX_FACTIONS][5][32];
new GateData[MAX_GATES][gateData];

new AssistanceNeeded[MAX_PLAYERS];
new Assisted[MAX_PLAYERS];

new GoldName[MAX_PLAYERS];

new IsInBus[MAX_PLAYERS];
new Timer1[MAX_PLAYERS];
new Timer2[MAX_PLAYERS];
new Timer3[MAX_PLAYERS];

new IsInShml[MAX_PLAYERS];

new Intropic[MAX_PLAYERS];

new InAmbulance[MAX_PLAYERS];
new InEnforcer[MAX_PLAYERS];
new InJourney[MAX_PLAYERS];
new InRaindance[MAX_PLAYERS];

new PlayerCharacters[MAX_PLAYERS][3][MAX_PLAYER_NAME + 1];

enum coreVehicles {
	vehFuel,
	vehWindowsDown,
	vehTemporary,
	vehLoads,
	vehLoadType,
	vehCrate,
	vehTrash,
	vehRepairing,
	vehSirenOn,
	vehSirenObject,
	vehELM,
	vehRadio,
	vehURL[128 char],
	Float:vehLoadHealth,
 	Float:vehLoadPos[3],
	vehHasCorpse
};

new CoreVehicles[MAX_VEHICLES][coreVehicles];

stock const g_aWeatherRotations[] = {
	14, 1, 7, 3, 5, 12, 9, 8, 15
};

enum eData
{
	explosiveID,
	explosiveOwner,
	explosiveTime,
	explosiveObject,
	explosiveSlot,
	Float:explosivePosition[3],
	Text3D:explosiveLabel
}

new explosiveData[MAX_EXPLOSIVES][eData];

enum e_Bomb_Vehicles
{
			bv_i_ArmedType,
			bv_i_ExplosionTimer,
			bv_i_BombOwner,
	bool: 	bv_b_BombActivated,
	bool:	bv_b_BombDisarmed
};

enum e_InventoryItems {
	e_InventoryItem[32],
	e_InventoryModel
};

new
	g_Bomb_Vehicles[MAX_VEHICLES][e_Bomb_Vehicles];

new const g_aInventoryItems[][e_InventoryItems] = {
	{"Marijuana", 1578},
	{"Cocaine", 1575},
	{"Heroin", 1577},
	{"Steroids", 1241},
	{"Marijuana Seeds", 1578},
	{"Cocaine Seeds", 1575},
	{"Heroin Opium Seeds", 1577},
	{"Baseball Bat", 336},
	{"Nightstick", 334},
	{"Golf Club", 333},
	{"Pool Cue", 338},
	{"Camera", 367},
	{"Knife", 335},
	{"Pocket Knife", 335},
	{"Shovel", 337},
	{"Katana", 339},
	{"Colt 45", 346},
	{"Glock-17", 348},
	{"Micro SMG", 352},
	{"Tec-9", 372},
	{"MP5", 353},
	{"Shotgun", 349},
	{"AK-47", 355},
	{"M4", 356},
	{"Rifle", 357},
	{"Sniper", 358},
	{"Magazine", 2039},
	{"Cooked Burger", 2703},
	{"Cooked Pizza", 2702},
	{"Car License", 1581},
	{"ID Card", 1581},
	{"Firearm License", 1581},
	{"Cellphone", 330},
	{"GPS System", 18875},
	{"Stolen Car Radio", 1624},
	{"Stolen House Goods", 2912},
	{"Spray Can", 365},
	{"Water Bottle", 2958},
	{"Soda", 1543},
    {"Fuel Can", 1650},
	{"Crowbar", 18634},
	{"Boombox", 2226},
	{"Mask", 19036},
	{"First Aid", 1580},
	{"Repair Kit", 920},
	{"NOS Canister", 1010},
	{"Frozen Pizza", 2814},
	{"Frozen Burger", 2768},
	{"Ammo Cartridge", 2358},
	{"Armored Vest", 19142},
	{"Empty Bottle", 1484},
	{"Cardboard", 928},
	{"Chicken", 2663},
	{"Portable Radio", 18868},
	{"Sale Documents", 19805},
	{"Pen", 322},
	{"Lighter", 19998},
	{"Cigar", 3044},
	{"Screwdriver", 18644},
	{"Credit Card", 1581},
	{"Motorbike License", 1581},
	{"Truck License", 1581},
	{"Airplane License", 1581},
	{"Helicopter License", 1581},
	{"Bomb", 1654},
	{"Bait", 1265},
	{"Fishing Rod", 18632},
	{"Painkiller", 2709}
};

new const Float:arrHospitalDeliver[1][3] = {
    {-334.9067,1056.1851,19.7392}
};

new const Float:arrHospitalSpawns[1][4] = {
	{4860.8823, -1931.9386, 9.9228, 129.4685}
};

new const Float:g_arrWeaponDamage[] = {
	1.32, 1.32, 4.62, 4.62, 2.64, 4.62, 4.62, 4.62, 2.64, 13.53,
	4.62, 2.64, 4.62, 2.64, 4.62, 2.64, 0.00, 0.00, 0.00, 0.00,
	0.00, 0.00, 8.25, 13.2, 46.2, 49.5, 49.5, 39.6, 6.60, 8.25,
	9.90, 9.90, 6.60, 24.75, 41.25, 0.00, 0.00, 0.00, 46.2, 0.00,
	0.00, 2.64, 2.64, 0.00, 0.00, 0.00, 1.32
};

new const g_aWeaponSlots[] = {
	0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 10, 10, 10, 10, 10, 10, 8, 8, 8, 0, 0, 0, 2, 2, 2, 3, 3, 3, 4, 4, 5, 5, 4, 6, 6, 7, 7, 7, 7, 8, 12, 9, 9, 9, 11, 11, 11
};

/*new const g_aPreloadLibs[][] = {
    {"COLT45"},
	{"SILENCED"},
	{"PYTHON"},
	{"BUDDY"},
	{"RIFLE"},
	{"TEC"},
	{"GRENADE"},
	{"CRACK"},
	{"BASEBALL"},
	{"BSKTBALL"},
	{"DEALER"},
	{"MISC"},
	{"CARRY"},
	{"CRACK"},
	{"GRAFFITI"},
	{"VENDING"},
	{"SMOKING"}
};*/

new const g_aPreloadLibs[][] =
{
	"AIRPORT",      "ATTRACTORS",   "BAR",          "BASEBALL",     "BD_FIRE",
	"BEACH",        "BENCHPRESS",   "BF_INJECTION", "BIKE_DBZ",     "BIKED",
	"BIKEH",        "BIKELEAP",     "BIKES",        "BIKEV",        "BLOWJOBZ",
	"BMX",          "BOMBER",       "BOX",          "BSKTBALL",     "BUDDY",
	"BUS",          "CAMERA",       "CAR",          "CAR_CHAT",     "CARRY",
	"CASINO",       "CHAINSAW",     "CHOPPA",       "CLOTHES",      "COACH",
	"COLT45",       "COP_AMBIENT",  "COP_DVBYZ",    "CRACK",        "CRIB",
	"DAM_JUMP",     "DANCING",      "DEALER",       "DILDO",        "DODGE",
	"DOZER",        "DRIVEBYS",     "FAT",          "FIGHT_B",      "FIGHT_C",
	"FIGHT_D",      "FIGHT_E",      "FINALE",       "FINALE2",      "FLAME",
	"FLOWERS",      "FOOD",         "FREEWEIGHTS",  "GANGS",        "GFUNK",
	"GHANDS",       "GHETTO_DB",    "GOGGLES",      "GRAFFITI",     "GRAVEYARD",
	"GRENADE",      "GYMNASIUM",    "HAIRCUTS",     "HEIST9",       "INT_HOUSE",
	"INT_OFFICE",   "INT_SHOP",     "JST_BUISNESS", "KART",         "KISSING",
	"KNIFE",        "LAPDAN1",      "LAPDAN2",      "LAPDAN3",      "LOWRIDER",
	"MD_CHASE",     "MD_END",       "MEDIC",        "MISC",         "MTB",
	"MUSCULAR",     "NEVADA",       "ON_LOOKERS",   "OTB",          "PARACHUTE",
	"PARK",         "PAULNMAC",     "PED",          "PLAYER_DVBYS", "PLAYIDLES",
	"POLICE",       "POOL",         "POOR",         "PYTHON",       "QUAD",
	"QUAD_DBZ",     "RAPPING",      "RIFLE",        "RIOT",         "ROB_BANK",
	"ROCKET",       "RUNNINGMAN",   "RUSTLER",      "RYDER",        "SCRATCHING",
	"SEX",          "SHAMAL",       "SHOP",         "SHOTGUN",      "SILENCED",
	"SKATE",        "SMOKING",      "SNIPER",       "SNM",          "SPRAYCAN",
	"STRIP",        "SUNBATHE",     "SWAT",         "SWEET",        "SWIM",
	"SWORD",        "TANK",         "TATTOOS",      "TEC",          "TRAIN",
	"TRUCK",        "UZI",          "VAN",          "VENDING",      "VORTEX",
	"WAYFARER",     "WEAPONS",      "WOP",          "WUZI"
};

enum houseInteriors {
	eHouseInterior,
	Float:eHouseX,
	Float:eHouseY,
	Float:eHouseZ,
	Float:eHouseAngle
};

new const Float:arrHouseInteriors[20][houseInteriors] = {
	{10, 2269.8772, -1210.3240, 1047.5625, 90.0000},
    {2, 2468.2576, -1698.2361, 1013.5078, 90.0000},
	{3, 2495.8711, -1693.0996, 1014.7422, 180.0000},
	{5, 2233.7888, -1114.2689, 1050.8828, 0.0000},
	{9, 2317.8015, -1026.2113, 1050.2178, 0.0000},
	{3, 235.2923, 1187.3684, 1080.2578, 0.0000},
	{2, 226.2912, 1240.0554, 1082.1406, 90.0000},
	{1, 223.1618, 1287.5175, 1082.1406, 0.0000},
	{5, 226.9281, 1114.2813, 1080.9962, 270.0000},
	{15, 295.1485, 1473.1080, 1080.2578, 0.0000},
	{10, 23.9584, 1340.6075, 1084.3750, 0.0000},
	{4, 222.0425, 1140.7565, 1082.6094, 0.0000},
	{12, 2324.4209, -1148.9365, 1050.7101, 0.0000},
	{4, -261.1430, 1456.6396, 1084.3672, 90.0000},
	{5, 22.9676, 1403.8368, 1084.4297, 0.0000},
	{5, 140.3088, 1366.8196, 1083.8594, 0.0000},
	{6, 234.3149, 1064.2772, 1084.2114, 0.0000},
	{7, 225.7000, 1022.0012, 1084.0161, 0.0000},
	{5, 1298.9750, -796.4567, 1084.0078, 0.0000},
	{15, -283.8687, 1471.1174, 1084.3750, 90.0000}
};

new const Float:arrBoothPositions[MAX_BOOTHS][3] = {
    {300.5000, -138.5660, 1004.0625},
	{300.5000, -137.0286, 1004.0625},
	{300.5000, -135.5336, 1004.0625},
	{300.5000, -134.0436, 1004.0625},
	{300.5000, -132.5637, 1004.0625},
	{300.5000, -131.0782, 1004.0625},
	{300.5000, -129.5582, 1004.0625},
	{300.5000, -128.0786, 1004.0625}
};

new stock g_arrVehicleNames[][] = {
    "Landstalker", "Bravura", "Buffalo", "Linerunner", "Perrenial", "Sentinel", "Dumper", "Firetruck", "Trashmaster",
    "Stretch", "Manana", "Infernus", "Voodoo", "Pony", "Mule", "Cheetah", "Ambulance", "Leviathan", "Moonbeam",
    "Esperanto", "Taxi", "Washington", "Bobcat", "Whoopee", "BF Injection", "Hunter", "Premier", "Enforcer",
    "Securicar", "Banshee", "Predator", "Bus", "Rhino", "Barracks", "Hotknife", "Trailer", "Previon", "Coach",
    "Cabbie", "Stallion", "Rumpo", "RC Bandit", "Romero", "Packer", "Monster", "Admiral", "Squalo", "Seasparrow",
    "Pizzaboy", "Tram", "Trailer", "Turismo", "Speeder", "Reefer", "Tropic", "Flatbed", "Yankee", "Caddy", "Solair",
    "Berkley's RC Van", "Skimmer", "PCJ-600", "Faggio", "Freeway", "RC Baron", "RC Raider", "Glendale", "Oceanic",
    "Sanchez", "Sparrow", "Patriot", "Quad", "Coastguard", "Dinghy", "Hermes", "Sabre", "Rustler", "ZR-350", "Walton",
    "Regina", "Comet", "BMX", "Burrito", "Camper", "Marquis", "Baggage", "Dozer", "Maverick", "News Chopper", "Rancher",
    "FBI Rancher", "Virgo", "Greenwood", "Jetmax", "Hotring", "Sandking", "Blista Compact", "Police Maverick",
    "Boxville", "Benson", "Mesa", "RC Goblin", "Hotring Racer A", "Hotring Racer B", "Bloodring Banger", "Rancher",
    "Super GT", "Elegant", "Journey", "Bike", "Mountain Bike", "Beagle", "Cropduster", "Stunt", "Tanker", "Roadtrain",
    "Nebula", "Majestic", "Buccaneer", "Shamal", "Hydra", "FCR-900", "NRG-500", "HPV1000", "Cement Truck", "Tow Truck",
    "Fortune", "Cadrona", "SWAT Truck", "Willard", "Forklift", "Tractor", "Combine", "Feltzer", "Remington", "Slamvan",
    "Blade", "Streak", "Freight", "Vortex", "Vincent", "Bullet", "Clover", "Sadler", "Firetruck", "Hustler", "Intruder",
    "Primo", "Cargobob", "Tampa", "Sunrise", "Merit", "Utility", "Nevada", "Yosemite", "Windsor", "Monster", "Monster",
    "Uranus", "Jester", "Sultan", "Stratum", "Elegy", "Raindance", "RC Tiger", "Flash", "Tahoma", "Savanna", "Bandito",
    "Freight Flat", "Streak Carriage", "Kart", "Mower", "Dune", "Sweeper", "Broadway", "Tornado", "AT-400", "DFT-30",
    "Huntley", "Stafford", "BF-400", "News Van", "Tug", "Trailer", "Emperor", "Wayfarer", "Euros", "Hotdog", "Club",
    "Freight Box", "Trailer", "Andromada", "Dodo", "RC Cam", "Launch", "LSPD Car", "SFPD Car", "LVPD Car",
    "Police Rancher", "Picador", "S.W.A.T", "Alpha", "Phoenix", "Glendale", "Sadler", "Luggage", "Luggage", "Stairs",
    "Boxville", "Tiller", "Utility Trailer"
};

enum e_InteriorData {
	e_InteriorName[32],
	e_InteriorID,
	Float:e_InteriorX,
	Float:e_InteriorY,
	Float:e_InteriorZ
};

new const g_arrInteriorData[][e_InteriorData] = {
	{"24/7 1", 17, -25.884498, -185.868988, 1003.546875},
    {"24/7 2", 10, 6.091179, -29.271898, 1003.549438},
    {"24/7 3", 18, -30.946699, -89.609596, 1003.546875},
    {"24/7 4", 16, -25.132598, -139.066986, 1003.546875},
    {"24/7 5", 4, -27.312299, -29.277599, 1003.557250},
    {"24/7 6", 6, -26.691598, -55.714897, 1003.546875},
    {"Airport Ticket", 14, -1827.147338, 7.207417, 1061.143554},
    {"Airport Baggage", 14, -1861.936889, 54.908092, 1061.143554},
    {"Shamal", 1, 1.808619, 32.384357, 1199.593750},
    {"Andromada", 9, 315.745086, 984.969299, 1958.919067},
    {"Ammunation 1", 1, 286.148986, -40.644397, 1001.515625},
    {"Ammunation 2", 4, 286.800994, -82.547599, 1001.515625},
    {"Ammunation 3", 6, 296.919982, -108.071998, 1001.515625},
    {"Ammunation 4", 7, 314.820983, -141.431991, 999.601562},
    {"Ammunation 5", 6, 316.524993, -167.706985, 999.593750},
    {"Ammunation Booths", 7, 302.292877, -143.139099, 1004.062500},
    {"Ammunation Range", 7, 298.507934, -141.647048, 1004.054748},
    {"Blastin Fools Hallway", 3, 1038.531372, 0.111030, 1001.284484},
    {"Budget Inn Motel Room", 12, 444.646911, 508.239044, 1001.419494},
    {"Jefferson Motel", 15, 2215.454833, -1147.475585, 1025.796875},
    {"Off Track Betting Shop", 3, 833.269775, 10.588416, 1004.179687},
    {"Sex Shop", 3, -103.559165, -24.225606, 1000.718750},
    {"Meat Factory", 1, 963.418762, 2108.292480, 1011.030273},
    {"Zero's RC shop", 6, -2240.468505, 137.060440, 1035.414062},
    {"Dillimore Gas", 0, 663.836242, -575.605407, 16.343263},
    {"Catigula's Basement", 1, 2169.461181, 1618.798339, 999.976562},
    {"FC Janitor Room", 10, 1889.953369, 1017.438293, 31.882812},
    {"Woozie's Office", 1, -2159.122802, 641.517517, 1052.381713},
    {"Binco", 15, 207.737991, -109.019996, 1005.132812},
    {"Didier Sachs", 14, 204.332992, -166.694992, 1000.523437},
    {"Prolaps", 3, 207.054992, -138.804992, 1003.507812},
    {"Suburban", 1, 203.777999, -48.492397, 1001.804687},
    {"Victim", 5, 226.293991, -7.431529, 1002.210937},
    {"Zip", 18, 161.391006, -93.159156, 1001.804687},
    {"Club", 17, 493.390991, -22.722799, 1000.679687},
    {"Bar", 11, 501.980987, -69.150199, 998.757812},
    {"Lil' Probe Inn", 18, -227.027999, 1401.229980, 27.765625},
    {"Jay's Diner", 4, 457.304748, -88.428497, 999.554687},
    {"Gant Bridge Diner", 5, 454.973937, -110.104995, 1000.077209},
    {"Secret Valley Diner", 6, 435.271331, -80.958938, 999.554687},
    {"World of Coq", 1, 452.489990, -18.179698, 1001.132812},
    {"Welcome Pump", 1, 681.557861, -455.680053, -25.609874},
    {"Burger Shot", 10, 375.962463, -65.816848, 1001.507812},
    {"Cluckin' Bell", 9, 369.579528, -4.487294, 1001.858886},
    {"Well Stacked Pizza", 5, 373.825653, -117.270904, 1001.499511},
    {"Rusty Browns Donuts", 17, 381.169189, -188.803024, 1000.632812},
    {"Denise's Room", 1, 244.411987, 305.032989, 999.148437},
    {"Katie's Room", 2, 271.884979, 306.631988, 999.148437},
    {"Helena's Room", 3, 291.282989, 310.031982, 999.148437},
    {"Michelle's Room", 4, 302.180999, 300.722991, 999.148437},
    {"Barbara's Room", 5, 322.197998, 302.497985, 999.148437},
    {"Millie's Room", 6, 346.870025, 309.259033, 999.155700},
    {"Sherman Dam", 17, -959.564392, 1848.576782, 9.000000},
    {"Planning Dept", 3, 384.808624, 173.804992, 1008.382812},
    {"Area 51", 0, 223.431976, 1872.400268, 13.734375},
    {"LS Gym", 5, 772.111999, -3.898649, 1000.728820},
    {"SF Gym", 6, 774.213989, -48.924297, 1000.585937},
    {"LV Gym", 7, 773.579956, -77.096694, 1000.655029},
    {"B-Dup's House", 3, 1527.229980, -11.574499, 1002.097106},
    {"B-Dup's Crack Pad", 2, 1523.509887, -47.821197, 1002.130981},
    {"CJ's House", 3, 2496.049804, -1695.238159, 1014.742187},
    {"Madd Doggs Mansion", 5, 1267.663208, -781.323242, 1091.906250},
    {"OG Loc's House", 3, 513.882507, -11.269994, 1001.565307},
    {"Ryders House", 2, 2454.717041, -1700.871582, 1013.515197},
    {"Sweet's House", 1, 2527.654052, -1679.388305, 1015.498596},
    {"Crack Factory", 2, 2543.462646, -1308.379882, 1026.728393},
    {"Big Spread Ranch", 3, 1212.019897, -28.663099, 1000.953125},
    {"Fanny batters", 6, 761.412963, 1440.191650, 1102.703125},
    {"Strip Club", 2, 1204.809936, -11.586799, 1000.921875},
    {"Strip Club (Private Room)", 2, 1204.809936, 13.897239, 1000.921875},
    {"Unnamed Brothel", 3, 942.171997, -16.542755, 1000.929687},
    {"Tiger Skin Brothel", 3, 964.106994, -53.205497, 1001.124572},
    {"Pleasure Domes", 3, -2640.762939, 1406.682006, 906.460937},
    {"Liberty City Outside", 1, -729.276000, 503.086944, 1371.971801},
    {"Liberty City Inside", 1, -794.806396, 497.738037, 1376.195312},
    {"Gang House", 5, 2350.339843, -1181.649902, 1027.976562},
    {"Colonel Furhberger's", 8, 2807.619873, -1171.899902, 1025.570312},
    {"Crack Den", 5, 318.564971, 1118.209960, 1083.882812},
    {"Warehouse 1", 1, 1412.639892, -1.787510, 1000.924377},
    {"Warehouse 2", 18, 1302.519897, -1.787510, 1001.028259},
    {"Sweet's Garage", 0, 2522.000000, -1673.383911, 14.866223},
    {"Lil' Probe Inn Toilet", 18, -221.059051, 1408.984008, 27.773437},
    {"Unused Safe House", 12, 2324.419921, -1145.568359, 1050.710083},
    {"RC Battlefield", 10, -975.975708, 1060.983032, 1345.671875},
    {"Barber 1", 2, 411.625976, -21.433298, 1001.804687},
    {"Barber 2", 3, 418.652984, -82.639793, 1001.804687},
    {"Barber 3", 12, 412.021972, -52.649898, 1001.898437},
    {"Tatoo Parlor 1", 16, -204.439987, -26.453998, 1002.273437},
    {"Tatoo Parlor 2", 17, -204.439987, -8.469599, 1002.273437},
    {"Tatoo Parlor 3", 3, -204.439987, -43.652496, 1002.273437},
    {"LS Police HQ", 6, 246.783996, 63.900199, 1003.640625},
    {"SF Police HQ", 10, 246.375991, 109.245994, 1003.218750},
    {"LV Police HQ", 3, 288.745971, 169.350997, 1007.171875},
    {"Driving School", 3, -2029.798339, -106.675910, 1035.171875},
    {"8-Track", 7, -1398.065307, -217.028900, 1051.115844},
    {"Bloodbowl", 15, -1398.103515, 937.631164, 1036.479125},
    {"Dirt Track", 4, -1444.645507, -664.526000, 1053.572998},
    {"Kickstart", 14, -1465.268676, 1557.868286, 1052.531250},
    {"Vice Stadium", 1, -1401.829956, 107.051300, 1032.273437},
    {"SF Garage", 0, -1790.378295, 1436.949829, 7.187500},
    {"LS Garage", 0, 1643.839843, -1514.819580, 13.566620},
    {"SF Bomb Shop", 0, -1685.636474, 1035.476196, 45.210937},
    {"Blueberry Warehouse", 0, 76.632553, -301.156829, 1.578125},
    {"LV Warehouse 1", 0, 1059.895996, 2081.685791, 10.820312},
    {"LV Warehouse 2 (hidden part)", 0, 1059.180175, 2148.938720, 10.820312},
    {"Caligula's Hidden Room", 1, 2131.507812, 1600.818481, 1008.359375},
    {"Bank", 0, 2315.952880, -1.618174, 26.742187},
    {"Bank (Behind Desk)", 0, 2319.714843, -14.838361, 26.749565},
    {"LS Atrium", 18, 1710.433715, -1669.379272, 20.225049},
    {"Motel Room 1", 13, 2618.7549, -1813.8243, 616.5299},
    {"Motel Room 2", 13, 2178.9814, -665.9104, 441.8909},
	{"Custom Office Interior", 1, 2822.7595,-1679.9238,664.4781},
	{"Meeting Room", 1, 2191.00, 1717.39, 1012.50},
	{"Mafia Interior", 1, 2347.7764,1313.6840,-77.2239},
	{"Mafia Interior 2", 1, 883.938720, 1913.583984, -90.078689}
};

new const Float:g_arrDrivingCheckpoints[][] = {
    { -103.5845,1095.7252,19.1553},
    { -18.4361,1085.2810,19.1609},
    { -49.3058,1026.1116,19.1677},
    { -62.9733,1162.3162,19.1581},
    { 49.9582,1195.6757,18.3279},
    { 143.2294,1164.6910,14.8587},
    { 257.0193,1215.1035,15.1839},
    { 346.5320,1394.1882,6.3659},
    { 458.5266,1632.2792,15.6321},
    { 541.8770,1651.1442,8.1468},
    { 622.5854,1680.1138,6.5541},
    { 639.4416,1738.9856,5.0658},
    { 520.6172,1677.3328,11.7926},
    { 363.3274,1473.8915,7.5533},
    { 281.4635,1245.6052,14.8424},
    { 160.5300,1158.5922,14.1589},
    { 99.8293,1224.9352,19.9627},
    { -44.6860,1266.0708,8.8469},
    { -117.8330,1223.1396,18.1064},
    { -166.5732,1201.0776,19.1475},
    { -198.4784,1136.3185,19.1673},
    { -158.3685,1095.6874,19.1554},
    { -138.7988,1081.9119,19.3038}
};

new const Float:g_arrPrisonSpawns[][] = {
	{1217.8539,-1344.5790,796.7456,90.0000},
    {1217.8678,-1341.3213,796.7456,90.0000},
    {1217.2465,-1337.8044,796.7456,90.0000},
    {1217.9287,-1334.7639,796.7456,90.0000},
    {1217.8746,-1331.4298,796.7456,90.0000},
    {1217.5286,-1328.4138,796.7456,90.0000},
    {1202.8230,-1327.8770,796.7505,270.0000},
    {1203.4220,-1331.0464,796.7505,270.0000},
    {1203.0822,-1334.2010,796.7505,270.0000},
    {1203.3068,-1337.5503,796.7505,270.0000},
    {1203.2917,-1340.3719,796.7505,270.0000},
    {1203.1689,-1343.8762,796.7505,270.0000},
    {1203.0190,-1343.8212,800.2859,270.0000},
    {1203.1254,-1340.6129,800.2859,270.0000},
    {1203.5780,-1337.3750,800.2859,270.0000},
    {1203.7159,-1334.1960,800.2859,270.0000},
    {1203.6014,-1331.0227,800.2859,270.0000},
    {1203.2318,-1327.8788,800.2859,270.0000},
    {1217.8292,-1328.4882,800.2859,90.0000},
    {1217.6486,-1331.5758,800.2859,90.0000},
    {1217.9084,-1335.0168,800.2859,90.0000},
    {1217.6915,-1338.0559,800.2859,90.0000},
    {1217.5966,-1341.0157,800.2859,90.0000},
    {1217.3633,-1344.3766,800.2859,90.0000}
};

new const g_aLegalMods[][] = {
    {400, 1024, 1021, 1020, 1019, 1018, 1013, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000},
    {401, 1145, 1144, 1143, 1142, 1020, 1019, 1017, 1013, 1007, 1006, 1005, 1004, 1003, 1001, 0000, 0000, 0000, 0000},
    {404, 1021, 1020, 1019, 1017, 1016, 1013, 1007, 1002, 1000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000},
    {405, 1023, 1021, 1020, 1019, 1018, 1014, 1001, 1000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000},
    {410, 1024, 1023, 1021, 1020, 1019, 1017, 1013, 1007, 1003, 1001, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000},
    {415, 1023, 1019, 1018, 1017, 1007, 1003, 1001, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000},
    {418, 1021, 1020, 1016, 1006, 1002, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000},
    {420, 1021, 1019, 1005, 1004, 1003, 1001, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000},
    {421, 1023, 1021, 1020, 1019, 1018, 1016, 1014, 1000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000},
    {422, 1021, 1020, 1019, 1017, 1013, 1007, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000},
    {426, 1021, 1019, 1006, 1005, 1004, 1003, 1001, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000},
    {436, 1022, 1021, 1020, 1019, 1017, 1013, 1007, 1006, 1003, 1001, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000},
    {439, 1145, 1144, 1143, 1142, 1023, 1017, 1013, 1007, 1003, 1001, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000},
    {477, 1021, 1020, 1019, 1018, 1017, 1007, 1006, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000},
    {478, 1024, 1022, 1021, 1020, 1013, 1012, 1005, 1004, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000},
    {489, 1024, 1020, 1019, 1018, 1016, 1013, 1006, 1005, 1004, 1002, 1000, 0000, 0000, 0000, 0000, 0000, 0000, 0000},
    {491, 1145, 1144, 1143, 1142, 1023, 1021, 1020, 1019, 1018, 1017, 1014, 1007, 1003, 0000, 0000, 0000, 0000, 0000},
    {492, 1016, 1006, 1005, 1004, 1000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000},
    {496, 1143, 1142, 1023, 1020, 1019, 1017, 1011, 1007, 1006, 1003, 1002, 1001, 0000, 0000, 0000, 0000, 0000, 0000},
    {500, 1024, 1021, 1020, 1019, 1013, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000},
    {516, 1021, 1020, 1019, 1018, 1017, 1016, 1015, 1007, 1004, 1002, 1000, 0000, 0000, 0000, 0000, 0000, 0000, 0000},
    {517, 1145, 1144, 1143, 1142, 1023, 1020, 1019, 1018, 1017, 1016, 1007, 1003, 1002, 0000, 0000, 0000, 0000, 0000},
    {518, 1145, 1144, 1143, 1142, 1023, 1020, 1018, 1017, 1013, 1007, 1006, 1005, 1003, 1001, 0000, 0000, 0000, 0000},
    {527, 1021, 1020, 1018, 1017, 1015, 1014, 1007, 1001, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000},
    {529, 1023, 1020, 1019, 1018, 1017, 1012, 1011, 1007, 1006, 1003, 1001, 0000, 0000, 0000, 0000, 0000, 0000, 0000},
    {534, 1185, 1180, 1179, 1178, 1127, 1126, 1125, 1124, 1123, 1122, 1106, 1101, 1100, 0000, 0000, 0000, 0000, 0000},
    {535, 1121, 1120, 1119, 1118, 1117, 1116, 1115, 1114, 1113, 1110, 1109, 0000, 0000, 0000, 0000, 0000, 0000, 0000},
    {536, 1184, 1183, 1182, 1181, 1128, 1108, 1107, 1105, 1104, 1103, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000},
    {540, 1145, 1144, 1143, 1142, 1024, 1023, 1020, 1019, 1018, 1017, 1007, 1006, 1004, 1001, 0000, 0000, 0000, 0000},
    {542, 1145, 1144, 1021, 1020, 1019, 1018, 1015, 1014, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000},
    {546, 1145, 1144, 1143, 1142, 1024, 1023, 1019, 1018, 1017, 1007, 1006, 1004, 1002, 1001, 0000, 0000, 0000, 0000},
    {547, 1143, 1142, 1021, 1020, 1019, 1018, 1016, 1003, 1000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000},
    {549, 1145, 1144, 1143, 1142, 1023, 1020, 1019, 1018, 1017, 1012, 1011, 1007, 1003, 1001, 0000, 0000, 0000, 0000},
    {550, 1145, 1144, 1143, 1142, 1023, 1020, 1019, 1018, 1006, 1005, 1004, 1003, 1001, 0000, 0000, 0000, 0000, 0000},
    {551, 1023, 1021, 1020, 1019, 1018, 1016, 1006, 1005, 1003, 1002, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000},
    {558, 1168, 1167, 1166, 1165, 1164, 1163, 1095, 1094, 1093, 1092, 1091, 1090, 1089, 1088, 0000, 0000, 0000, 0000},
    {559, 1173, 1162, 1161, 1160, 1159, 1158, 1072, 1071, 1070, 1069, 1068, 1067, 1066, 1065, 0000, 0000, 0000, 0000},
    {560, 1170, 1169, 1141, 1140, 1139, 1138, 1033, 1032, 1031, 1030, 1029, 1028, 1027, 1026, 0000, 0000, 0000, 0000},
    {561, 1157, 1156, 1155, 1154, 1064, 1063, 1062, 1061, 1060, 1059, 1058, 1057, 1056, 1055, 1031, 1030, 1027, 1026},
    {562, 1172, 1171, 1149, 1148, 1147, 1146, 1041, 1040, 1039, 1038, 1037, 1036, 1035, 1034, 0000, 0000, 0000, 0000},
    {565, 1153, 1152, 1151, 1150, 1054, 1053, 1052, 1051, 1050, 1049, 1048, 1047, 1046, 1045, 0000, 0000, 0000, 0000},
    {567, 1189, 1188, 1187, 1186, 1133, 1132, 1131, 1130, 1129, 1102, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000},
    {575, 1177, 1176, 1175, 1174, 1099, 1044, 1043, 1042, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000},
    {576, 1193, 1192, 1191, 1190, 1137, 1136, 1135, 1134, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000},
    {580, 1023, 1020, 1018, 1017, 1007, 1006, 1001, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000},
    {589, 1145, 1144, 1024, 1020, 1018, 1017, 1016, 1013, 1007, 1006, 1005, 1004, 1000, 0000, 0000, 0000, 0000, 0000},
    {600, 1022, 1020, 1018, 1017, 1013, 1007, 1006, 1005, 1004, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000},
    {603, 1145, 1144, 1143, 1142, 1024, 1023, 1020, 1019, 1018, 1017, 1007, 1006, 1001, 0000, 0000, 0000, 0000, 0000}
};

new g_aMaleSkins[185] = {
	1, 2, 3, 4, 5, 6, 7, 8, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29,
	30, 32, 33, 34, 35, 36, 37, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 57, 58, 59, 60,
	61, 62, 66, 68, 72, 73, 78, 79, 80, 81, 82, 83, 84, 94, 95, 96, 97, 98, 99, 100, 101, 102,
	103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120,
	121, 122, 123, 124, 125, 126, 127, 128, 132, 133, 134, 135, 136, 137, 142, 143, 144, 146,
	147, 153, 154, 155, 156, 158, 159, 160, 161, 162, 167, 168, 170, 171, 173, 174, 175, 176,
	177, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 200, 202, 203, 204, 206,
	208, 209, 210, 212, 213, 217, 220, 221, 222, 223, 228, 229, 230, 234, 235, 236, 239, 240,
	241, 242, 247, 248, 249, 250, 253, 254, 255, 258, 259, 260, 261, 262, 268, 272, 273, 289,
	290, 291, 292, 293, 294, 295, 296, 297, 299
};

new g_aFemaleSkins[77] = {
    9, 10, 11, 12, 13, 31, 38, 39, 40, 41, 53, 54, 55, 56, 63, 64, 65, 69,
    75, 76, 77, 85, 88, 89, 90, 91, 92, 93, 129, 130, 131, 138, 140, 141,
    145, 148, 150, 151, 152, 157, 169, 178, 190, 191, 192, 193, 194, 195,
    196, 197, 198, 199, 201, 205, 207, 211, 214, 215, 216, 219, 224, 225,
    226, 231, 232, 233, 237, 238, 243, 244, 245, 246, 251, 256, 257, 263,
    298
};

enum e_FurnitureData {
	e_FurnitureType,
	e_FurnitureName[32],
	e_FurnitureModel
};

new const g_aFurnitureTypes[][] = {
	{"Frames"},
	{"Tables"},
	{"Chairs"},
	{"Beds"},
	{"Cabinets"},
	{"Television Sets"},
	{"Kitchen Appliances"},
	{"Bathroom Appliances"},
	{"Misc Furniture"}
};

new const g_aFurnitureData[][e_FurnitureData] = {
	{1, "Frame 1", 2289},
	{1, "Frame 2", 2288},
	{1, "Frame 3", 2287},
	{1, "Frame 4", 2286},
	{1, "Frame 5", 2285},
	{1, "Frame 6", 2284},
    {1, "Frame 7", 2283},
    {1, "Frame 8", 2282},
    {1, "Frame 9", 2281},
    {1, "Frame 10", 2280},
    {1, "Frame 11", 2279},
	{1, "Frame 12", 2278},
	{1, "Frame 13", 2277},
	{1, "Frame 14", 2276},
	{1, "Frame 15", 2275},
	{1, "Frame 16", 2274},
    {1, "Frame 17", 2273},
    {1, "Frame 18", 2272},
    {1, "Frame 19", 2271},
    {1, "Frame 20", 2270},
    {2, "Table 1", 1433},
	{2, "Table 2", 1998},
	{2, "Table 3", 2008},
	{2, "Table 4", 2180},
	{2, "Table 5", 2185},
    {2, "Table 6", 2205},
    {2, "Table 7", 2314},
    {2, "Table 8", 2635},
    {2, "Table 9", 2637},
    {2, "Table 10", 2644},
	{2, "Table 11", 2747},
	{2, "Table 12", 2764},
	{2, "Table 13", 2763},
	{2, "Table 14", 2762},
	{2, "Table 15", 936},
	{2, "Table 16", 937},
	{2, "Table 17", 941},
	{2, "Table 18", 2115},
	{2, "Table 19", 2116},
	{2, "Table 20", 2112},
	{2, "Table 21", 2111},
	{2, "Table 22", 2110},
	{2, "Table 23", 2109},
	{2, "Table 24", 2085},
	{2, "Table 25", 2032},
	{2, "Table 26", 2031},
	{2, "Table 27", 2030},
	{2, "Table 28", 2029},
    {3, "Chair 1", 1671},
    {3, "Chair 2", 1704},
    {3, "Chair 3", 1705},
    {3, "Chair 4", 1708},
    {3, "Chair 5", 1711},
    {3, "Chair 6", 1715},
    {3, "Chair 7", 1721},
    {3, "Chair 8", 1724},
    {3, "Chair 9", 1727},
    {3, "Chair 10", 1729},
    {3, "Chair 11", 1735},
    {3, "Chair 12", 1739},
    {3, "Chair 13", 1805},
    {3, "Chair 14", 1806},
    {3, "Chair 15", 1810},
    {3, "Chair 16", 1811},
    {3, "Chair 17", 2079},
    {3, "Chair 18", 2120},
    {3, "Chair 19", 2124},
    {3, "Chair 20", 2356},
    {3, "Chair 21", 1768},
    {3, "Chair 22", 1766},
    {3, "Chair 23", 1764},
    {3, "Chair 24", 1763},
    {3, "Chair 25", 1761},
    {3, "Chair 26", 1760},
    {3, "Chair 27", 1757},
    {3, "Chair 28", 1756},
    {3, "Chair 29", 1753},
    {3, "Chair 30", 1713},
    {3, "Chair 31", 1712},
    {3, "Chair 32", 1706},
    {3, "Chair 33", 1703},
    {3, "Chair 34", 1702},
    {3, "Chair 35", 1754},
    {3, "Chair 36", 1755},
    {3, "Chair 37", 1758},
    {3, "Chair 38", 1759},
    {3, "Chair 39", 1762},
    {3, "Chair 40", 1765},
    {3, "Chair 41", 1767},
    {3, "Chair 42", 1769},
	{4, "Bed 1", 1700},
	{4, "Bed 2", 1701},
	{4, "Bed 3", 1725},
	{4, "Bed 4", 1745},
	{4, "Bed 5", 1793},
	{4, "Bed 6", 1794},
	{4, "Bed 7", 1795},
	{4, "Bed 8", 1796},
	{4, "Bed 9", 1797},
	{4, "Bed 10", 1771},
	{4, "Bed 11", 1798},
	{4, "Bed 12", 1799},
    {4, "Bed 13", 1800},
    {4, "Bed 14", 1801},
    {4, "Bed 15", 1802},
    {4, "Bed 16", 1812},
    {4, "Bed 17", 2090},
    {4, "Bed 18", 2299},
    {5, "Cabinet 1", 1416},
	{5, "Cabinet 2", 1417},
	{5, "Cabinet 3", 1741},
	{5, "Cabinet 4", 1742},
	{5, "Cabinet 5", 1743},
	{5, "Cabinet 6", 2025},
	{5, "Cabinet 7", 2065},
	{5, "Cabinet 8", 2066},
	{5, "Cabinet 9", 2067},
	{5, "Cabinet 10", 2087},
    {5, "Cabinet 11", 2088},
    {5, "Cabinet 12", 2094},
    {5, "Cabinet 13", 2095},
    {5, "Cabinet 14", 2306},
    {5, "Cabinet 15", 2307},
	{5, "Cabinet 16", 2323},
	{5, "Cabinet 17", 2328},
	{5, "Cabinet 18", 2329},
	{5, "Cabinet 19", 2330},
	{5, "Cabinet 20", 2708},
	{6, "Television 1", 1518},
	{6, "Television 2", 1717},
	{6, "Television 3", 1747},
	{6, "Television 4", 1748},
	{6, "Television 5", 1749},
	{6, "Television 6", 1750},
	{6, "Television 7", 1752},
	{6, "Television 8", 1781},
	{6, "Television 9", 1791},
	{6, "Television 10", 1792},
    {6, "Television 11", 2312},
	{6, "Television 12", 2316},
	{6, "Television 13", 2317},
	{6, "Television 14", 2318},
	{6, "Television 15", 2320},
	{6, "Television 16", 2595},
	{6, "Television 17", 16377},
	{7, "Kitchen 1", 2013},
	{7, "Kitchen 2", 2017},
	{7, "Kitchen 3", 2127},
	{7, "Kitchen 4", 2130},
	{7, "Kitchen 5", 2131},
	{7, "Kitchen 6", 2132},
	{7, "Kitchen 7", 2135},
	{7, "Kitchen 8", 2136},
	{7, "Kitchen 9", 2144},
	{7, "Kitchen 10", 2147},
    {7, "Kitchen 11", 2149},
    {7, "Kitchen 12", 2150},
    {7, "Kitchen 13", 2415},
    {7, "Kitchen 14", 2417},
    {7, "Kitchen 15", 2421},
    {7, "Kitchen 16", 2426},
    {7, "Kitchen 17", 2014},
    {7, "Kitchen 18", 2015},
    {7, "Kitchen 19", 2016},
    {7, "Kitchen 20", 2018},
    {7, "Kitchen 21", 2019},
    {7, "Kitchen 22", 2022},
    {7, "Kitchen 23", 2133},
    {7, "Kitchen 24", 2134},
	{7, "Kitchen 25", 2137},
	{7, "Kitchen 26", 2138},
	{7, "Kitchen 27", 2139},
	{7, "Kitchen 28", 2140},
	{7, "Kitchen 29", 2141},
	{7, "Kitchen 30", 2142},
	{7, "Kitchen 31", 2143},
	{7, "Kitchen 32", 2145},
	{7, "Kitchen 33", 2148},
	{7, "Kitchen 34", 2151},
	{7, "Kitchen 35", 2152},
	{7, "Kitchen 36", 2153},
	{7, "Kitchen 37", 2154},
	{7, "Kitchen 38", 2155},
	{7, "Kitchen 39", 2156},
	{7, "Kitchen 40", 2157},
	{7, "Kitchen 41", 2158},
	{7, "Kitchen 42", 2159},
	{7, "Kitchen 43", 2160},
	{7, "Kitchen 44", 2134},
	{7, "Kitchen 45", 2135},
	{7, "Kitchen 46", 2338},
	{7, "Kitchen 47", 2341},
	{8, "Bathroom 1", 2514},
	{8, "Bathroom 2", 2516},
	{8, "Bathroom 3", 2517},
	{8, "Bathroom 4", 2518},
	{8, "Bathroom 5", 2520},
	{8, "Bathroom 6", 2521},
	{8, "Bathroom 7", 2522},
	{8, "Bathroom 8", 2523},
	{8, "Bathroom 9", 2524},
	{8, "Bathroom 10", 2525},
    {8, "Bathroom 11", 2526},
    {8, "Bathroom 12", 2527},
    {8, "Bathroom 13", 2528},
    {8, "Bathroom 14", 2738},
    {8, "Bathroom 15", 2739},
	{9, "Washer", 1208},
	{9, "Ceiling Fan", 1661},
	{9, "Moose Head", 1736},
	{9, "Radiator", 1738},
	{9, "Mop and Pail", 1778},
	{9, "Water Cooler", 1808},
	{9, "Water Cooler 2", 2002},
	{9, "Money Safe", 1829},
	{9, "Printer", 2186},
	{9, "Computer", 2190},
	{9, "Treadmill", 2627},
	{9, "Bench Press", 2629},
	{9, "Exercise Bike", 2630},
	{9, "Mat 1", 2631},
	{9, "Mat 2", 2632},
	{9, "Mat 3", 2817},
	{9, "Mat 4", 2818},
	{9, "Mat 5", 2833},
	{9, "Mat 6", 2834},
	{9, "Mat 7", 2835},
	{9, "Mat 8", 2836},
	{9, "Mat 9", 2841},
	{9, "Mat 10", 2842},
	{9, "Mat 11", 2847},
	{9, "Book Pile 1", 2824},
	{9, "Book Pile 2", 2826},
	{9, "Book Pile 3", 2827},
	{9, "Basketball", 2114},
	{9, "Lamp 1", 2108},
	{9, "Lamp 2", 2106},
	{9, "Lamp 3", 2069},
	{9, "Dresser 1", 2569},
	{9, "Dresser 2", 2570},
	{9, "Dresser 3", 2573},
	{9, "Dresser 4", 2574},
	{9, "Dresser 5", 2576},
	{9, "Book", 2894}
};

// dynamic areas
new areaViceCity;

// vcrp map
new bool:ViewingMap[MAX_PLAYERS];

// vc textdraws
/* Map on Screen for player view your localization */
new Text:screenVCMap;    								// The Map
new Text:screenVCPlaces[9];                              // Place names
new PlayerText:screenArrow[MAX_PLAYERS char];            // Player arrow in map