// uses NEX-AC | look under pawno/includes | https://github.com/NexiusTailer/Nex-AC

forward OnCheatDetected(playerid, ip_address[], type, code);
public OnCheatDetected(playerid, ip_address[], type, code)
{
	if(type) BlockIpAddress(ip_address, 0);
	else
	{
		switch(code)
		{
			case 5, 6, 11, 14, 22, 32: return 1;
			case 40: SendClientMessage(playerid, -1, MAX_CONNECTS_MSG);
			case 41: SendClientMessage(playerid, -1, UNKNOWN_CLIENT_MSG);
			default:
			{
				SendReasonCode(playerid, type, code);
			}
		}
		//AntiCheatKickWithDesync(playerid, code);
	}
	return 1;
}


forward SendReasonCode(playerid, type, code);
public SendReasonCode(playerid, type, code)
{
	if(code == 0)
    {
		SendAdminAlert(COLOR_ANTICHEAT, "[Anticheat]  %s could be using: airbreak (on foot)", ReturnName(playerid, 0));
		return 1;
	}
	if(code == 1)
    {
		SendAdminAlert(COLOR_ANTICHEAT, "[Anticheat]  %s could be using: airbreak (vehicle)", ReturnName(playerid, 0));
		return 1;
	}
	if(code == 2)
    {
		SendAdminAlert(COLOR_ANTICHEAT, "[Anticheat]  %s could be using: teleport hack (on foot)", ReturnName(playerid, 0));
		return 1;
	}
	if(code == 3)
    {
		SendAdminAlert(COLOR_ANTICHEAT, "[Anticheat]  %s could be using: airbreak (vehicle)", ReturnName(playerid, 0));
		return 1;
	}
	if(code == 4)
    {
		SendAdminAlert(COLOR_ANTICHEAT, "[Anticheat]  %s could be using: teleport hack (between vehicles)", ReturnName(playerid, 0));
		return 1;
	}
	if(code == 5)
    {
		SendAdminAlert(COLOR_ANTICHEAT, "[Anticheat]  %s could be using: teleport hack (vehicle to player)", ReturnName(playerid, 0));
		return 1;
	}
	if(code == 6)
    {
		SendAdminAlert(COLOR_ANTICHEAT, "[Anticheat]  %s could be using: teleport hack (pickups)", ReturnName(playerid, 0));
		return 1;
	}
	if(code == 7)
    {
		SendAdminAlert(COLOR_ANTICHEAT, "[Anticheat]  %s could be using: fly hack (on foot)", ReturnName(playerid, 0));
		return 1;
	}
	if(code == 8)
    {
		SendAdminAlert(COLOR_ANTICHEAT, "[Anticheat]  %s could be using: fly hack (vehicle)", ReturnName(playerid, 0));
		return 1;
	}
	if(code == 9)
    {
		SendAdminAlert(COLOR_ANTICHEAT, "[Anticheat]  %s could be using: speedhack (on foot)", ReturnName(playerid, 0));
		DCC_SendChannelMessage(g_AntiCheatChannel, stringb);
		return 1;
	}
	if(code == 10)
    {
		SendAdminAlert(COLOR_ANTICHEAT, "[Anticheat]  %s could be using: speedhack (vehicle)", ReturnName(playerid, 0));
		return 1;
	}
	if(code == 11)
    {
		SendAdminAlert(COLOR_ANTICHEAT, "[Anticheat]  %s could be using: health hack (vehicle)", ReturnName(playerid, 0));
		return 1;
	}
	if(code == 12)
    {
		SendAdminAlert(COLOR_ANTICHEAT, "[Anticheat]  %s could be using: health hack (on foot)", ReturnName(playerid, 0));
		return 1;
	}
	if(code == 13)
    {
		SendAdminAlert(COLOR_ANTICHEAT, "[Anticheat]  %s could be using: armour hack", ReturnName(playerid, 0));
		return 1;
	}
	if(code == 14)
    {
		SendAdminAlert(COLOR_ANTICHEAT, "[Anticheat]  %s could be using: money hack", ReturnName(playerid, 0));
		return 1;
	}
	if(code == 15)
    {
		SendAdminAlert(COLOR_ANTICHEAT, "[Anticheat]  %s could be using: weapon hack", ReturnName(playerid, 0));
		return 1;
	}
	if(code == 16)
    {
		SendAdminAlert(COLOR_ANTICHEAT, "[Anticheat]  %s could be using: ammo hack (add)", ReturnName(playerid, 0));
		return 1;
	}
	if(code == 17)
    {
		SendAdminAlert(COLOR_ANTICHEAT, "[Anticheat]  %s could be using: ammo hack (infinite)", ReturnName(playerid, 0));
		return 1;
	}
	if(code == 18)
    {
		SendAdminAlert(COLOR_ANTICHEAT, "[Anticheat]  %s could be using: special actions hack", ReturnName(playerid, 0));
		return 1;
	}
	if(code == 19)
    {
		SendAdminAlert(COLOR_ANTICHEAT, "[Anticheat]  %s could be using: godmode from bullets (on foot)", ReturnName(playerid, 0));
		return 1;
	}
	if(code == 20)
    {
		SendAdminAlert(COLOR_ANTICHEAT, "[Anticheat]  %s could be using: godmode from bullets", ReturnName(playerid, 0));
		return 1;
	}
	if(code == 21)
    {
		SendAdminAlert(COLOR_ANTICHEAT, "[Anticheat]  %s could be using: invisible hack", ReturnName(playerid, 0));
		return 1;
	}
	if(code == 22)
    {
		SendAdminAlert(COLOR_ANTICHEAT, "[Anticheat]  %s could be using: lagcomp-spoof", ReturnName(playerid, 0));
		return 1;
	}
	if(code == 23)
    {
		SendAdminAlert(COLOR_ANTICHEAT, "[Anticheat]  %s could be using: tuning hack", ReturnName(playerid, 0));
		return 1;
	}
	if(code == 24)
    {
		SendAdminAlert(COLOR_ANTICHEAT, "[Anticheat]  %s could be using: parkour mod", ReturnName(playerid, 0));
		return 1;
	}
	if(code == 25)
    {
		SendAdminAlert(COLOR_ANTICHEAT, "[Anticheat]  %s could be using: quick turn", ReturnName(playerid, 0));
		return 1;
	}
	if(code == 26)
    {
		SendAdminAlert(COLOR_ANTICHEAT, "[Anticheat]  %s could be using: rapid fire", ReturnName(playerid, 0));
		return 1;
	}
	if(code == 27)
    {
		SendAdminAlert(COLOR_ANTICHEAT, "[Anticheat]  %s could be using: fake spawn", ReturnName(playerid, 0));
		return 1;
	}
	if(code == 28)
    {
		SendAdminAlert(COLOR_ANTICHEAT, "[Anticheat]  %s could be using: fake kill", ReturnName(playerid, 0));
		return 1;
	}
	if(code == 29)
    {
		SendAdminAlert(COLOR_ANTICHEAT, "[Anticheat]  %s could be using: pro aim", ReturnName(playerid, 0));
		return 1;
	}
	if(code == 30)
    {
		SendAdminAlert(COLOR_ANTICHEAT, "[Anticheat]  %s could be using: cj run", ReturnName(playerid, 0));
		return 1;
	}
	if(code == 31)
    {
		SendAdminAlert(COLOR_ANTICHEAT, "[Anticheat]  %s could be using: carshot", ReturnName(playerid, 0));
		return 1;
	}
	if(code == 32)
    {
		SendAdminAlert(COLOR_ANTICHEAT, "[Anticheat]  %s could be using: carjack", ReturnName(playerid, 0));
		return 1;
	}
	if(code == 33)
    {
		SendAdminAlert(COLOR_ANTICHEAT, "[Anticheat]  %s could be using: unfreeze", ReturnName(playerid, 0));
		return 1;
	}
	if(code == 34)
    {
		SendAdminAlert(COLOR_ANTICHEAT, "[Anticheat]  %s could be using: afk ghost", ReturnName(playerid, 0));
		return 1;
	}
	if(code == 35)
    {
		SendAdminAlert(COLOR_ANTICHEAT, "[Anticheat]  %s could be using: full aiming", ReturnName(playerid, 0));
		return 1;
	}
	if(code == 36)
    {
		SendAdminAlert(COLOR_ANTICHEAT, "[Anticheat]  %s could be using: fake npc", ReturnName(playerid, 0));
		return 1;
	}
	if(code == 37)
    {
		SendAdminAlert(COLOR_ANTICHEAT, "[Anticheat]  %s could be using: reconnect", ReturnName(playerid, 0));
		return 1;
	}
	if(code == 38)
    {
		SendAdminAlert(COLOR_ANTICHEAT, "[Anticheat]  %s has a high ping", ReturnName(playerid, 0));
		return 1;
	}
	if(code == 39)
    {
		SendAdminAlert(COLOR_ANTICHEAT, "[Anticheat]  %s could be using: dialog hack", ReturnName(playerid, 0));
		return 1;
	}
	if(code == 40)
    {
		SendAdminAlert(COLOR_ANTICHEAT, "[Anticheat]  %s could be using: protection from sandbox", ReturnName(playerid, 0));
		return 1;
	}
	if(code == 42)
    {
		SendAdminAlert(COLOR_ANTICHEAT, "[Anticheat]  %s could be using: rcon hack", ReturnName(playerid, 0));
		return 1;
	}
	if(code == 43)
    {
		SendAdminAlert(COLOR_ANTICHEAT, "[Anticheat]  %s could be using: tuning crasher", ReturnName(playerid, 0));
		return 1;
	}
	if(code == 44)
    {
		SendAdminAlert(COLOR_ANTICHEAT, "[Anticheat]  %s could be using: invalid seat crasher", ReturnName(playerid, 0));
		return 1;
	}
	if(code == 45)
    {
		SendAdminAlert(COLOR_ANTICHEAT, "[Anticheat]  %s could be using: dialog crasher", ReturnName(playerid, 0));
		return 1;
	}
	if(code == 46)
    {
		SendAdminAlert(COLOR_ANTICHEAT, "[Anticheat]  %s could be using: attached object crasher", ReturnName(playerid, 0));
		return 1;
	}
	if(code == 47)
    {
		SendAdminAlert(COLOR_ANTICHEAT, "[Anticheat]  %s could be using: weapon crasher", ReturnName(playerid, 0));
		return 1;
	}
	if(code == 48)
    {
		SendAdminAlert(COLOR_ANTICHEAT, "[Anticheat]  %s could be using: protection from connection flood (one slot)", ReturnName(playerid, 0));
		return 1;
	}
	if(code == 49)
    {
		SendAdminAlert(COLOR_ANTICHEAT, "[Anticheat]  %s could be using: callback functions flood", ReturnName(playerid, 0));
		return 1;
	}
	if(code == 50)
    {
		SendAdminAlert(COLOR_ANTICHEAT, "[Anticheat]  %s could be using: flood seat changing", ReturnName(playerid, 0));
		return 1;
	}
	if(code == 51)
    {
		SendAdminAlert(COLOR_ANTICHEAT, "[Anticheat]  %s could be using: Dos", ReturnName(playerid, 0));
		return 1;
	}
	if(code == 52)
    {
		SendAdminAlert(COLOR_ANTICHEAT, "[Anticheat]  %s could be using: NOPs", ReturnName(playerid, 0));
		return 1;
	}
	return 1;
}
