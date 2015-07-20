--[[---------------------------------------------------------------------------
DarkRP custom jobs
---------------------------------------------------------------------------

This file contains your custom jobs.
This file should also contain jobs from DarkRP that you edited.

Note: If you want to edit a default DarkRP job, first disable it in darkrp_config/disabled_defaults.lua
	Once you've done that, copy and paste the job to this file and edit it.

The default jobs can be found here:
https://github.com/FPtje/DarkRP/blob/master/gamemode/config/jobrelated.lua

For examples and explanation please visit this wiki page:
http://wiki.darkrp.com/index.php/DarkRP:CustomJobFields


Add jobs under the following line:
---------------------------------------------------------------------------]]


TEAM_HITMAN = DarkRP.createJob("Snigemorder", {
	color = Color(191, 0, 255, 255),
	model = {"models/Agent_47/agent_47.mdl"},
	description = [[You are a hitman. You recieve money from people who want to assassinate other people. Watch out for being seen. Policemen and all other people can report you or jail you!]],
	weapons = {"m9k_m98b"},
	command = "hitman",
	max = 1,
	salary = 115,
	admin = 0,
	vote = true,
	hasLicense = true,
})

TEAM_HEAVYGUN = DarkRP.createJob("Store Våben Handler", {
	color = Color(255, 140, 0, 255),
	model = {"models/player/monk.mdl"},
	description = [[You are the Heavy Gundealer, sell illegal big guns to the public but do not get seen by the wrong people! If anyone reports you to the police you can be arrested for selling illegal weapons!]],
	weapons = {},
	command = "sgundealer",
	max = 3,
	salary = 150,
	admin = 0,
	vote = true,
	hasLicense = true,
})

TEAM_ADMIN = DarkRP.createJob("Admin On Duty", {
	color = Color(255, 0, 0, 255),
	model = {"models/Player_ZssSamusU.mdl"},
	description = [[You are the Admin On Duty. Help other people that needs help!]],
	weapons = {},
	command = "adminonduty",
	max = 0,
	salary = 5000,
	admin = 1,
	vote = false,
	hasLicense = true,
})

TEAM_THIEF = DarkRP.createJob("Tyv", {
	color = Color(135, 135, 135, 255),
	model = {"models/player/group01/cookies114.mdl"},
	description = [[You are a thief! crack codes and cars! Don't get cought!]],
	weapons = {"lockpick", "keypad_cracker"},
	command = "tyv",
	max = 10,
	salary = 80,
	admin = 0,
	vote = false,
	hasLicense = false,
})

TEAM_BANKER = DarkRP.createJob("Bankmand", {
	color = Color(80, 10, 255, 255),
	model = {"models/Characters/Hostage_02.mdl"},
	description = [[You are the banker. Watch the bank from robbers and such! Call police for help]],
	weapons = {},
	command = "bankmand",
	max = 2,
	salary = 500,
	admin = 0,
	vote = false,
	hasLicense = false,
})

TEAM_ROBBER = DarkRP.createJob("Røver", {
	color = Color(255, 0, 10, 255),
	model = {"models/player/guerilla.mdl"},
	description = [[You're the Robber. Rob the bank to earn money. Don't get seen by the police and don't get caught!]],
	weapons = {"m9k_ak47"},
	command = "robber",
	max = 5,
	salary = 0,
	admin = 0,
	vote = false,
	hasLicense = false,
})


TEAM_BLACK = DarkRP.createJob("Sort Markeds Handler", {
	color = Color(0, 0, 0, 255),
	model = {"models/player/Eli.mdl"},
	description = [[You're the Black Market Dealer. Sell illegal items to anyone. Don't get seen!]],
	weapons = {},
	command = "blackmarketdealer",
	max = 2,
	salary = 250,
	admin = 0,
	vote = false,
	hasLicense = false,
})

TEAM_DJ = DarkRP.createJob("DJ", {
	color = Color(255, 0, 255, 255),
	model = {"models/Player_djsonaconcussive.mdl"},
	description = [[You're the DJ play music to your crowd]],
	weapons = {},
	command = "dj",
	max = 1,
	salary = 125,
	admin = 0,
	vote = false,
	hasLicense = false,
})

TEAM_THIEFVIP = DarkRP.createJob("Tyv (V.I.P)", {
	color = Color(135, 135, 135, 255),
	model = {"models/player/group01/cookies114.mdl"},
	description = [[You are a thief (V.I.P)! crack codes and cars! Don't get caught!]],
	weapons = {"pro_lockpick_update", "keypad_cracker"},
	command = "tyvvip",
	max = 5,
	salary = 100,
	admin = 0,
	vote = false,
	hasLicense = false,
	customCheck = function(ply) return CLIENT or
   table.HasValue({"vip","admin","operator","superadmin","prøveadmin"}, ply:GetNWString("usergroup")) end,
	CustomCheckFailMsg = "This job is vip only",

})

TEAM_BNKVAGT = DarkRP.createJob("Bank Vagt", {
	color = Color(25, 25, 170, 255),
	model = {"models/player/uk_police/uk_police_01.mdl"},
	description = [[Du er en Bankvagt. Du passer banken fra røvere!]],
	weapons = {"arrest_stick", "m9k_m4a1", "weaponchecker"},
	command = "bankvagt",
	max = 2,
	salary = 100,
	admin = 0,
	vote = false,
	hasLicense = true,
	ammo = {
		["pulse"] = 120,
	}
})

TEAM_MEKANIKER = DarkRP.createJob("Mekaniker", {
	color = Color(255, 0, 255, 255),
	model = {"models/player/odessa.mdl"},
	description = [[Du er en Mekaniker, du skal køre rundt og reparere andre's biler for penge. Du bestemmer beløbet.]],
	weapons = {"vc_repair"},
	command = "mekaniker",
	max = 4,
	salary = 125,
	admin = 0,
	vote = false,
	hasLicense = false,
})







--[[---------------------------------------------------------------------------
Define which team joining players spawn into and what team you change to if demoted
---------------------------------------------------------------------------]]
GAMEMODE.DefaultTeam = TEAM_CITIZEN


--[[---------------------------------------------------------------------------
Define which teams belong to civil protection
Civil protection can set warrants, make people wanted and do some other police related things
---------------------------------------------------------------------------]]
GAMEMODE.CivilProtection = {
	[TEAM_POLICE] = true,
	[TEAM_CHIEF] = true,
	[TEAM_MAYOR] = true,
}

--[[---------------------------------------------------------------------------
Jobs that are hitmen (enables the hitman menu)
---------------------------------------------------------------------------]]
DarkRP.addHitmanTeam(TEAM_HITMAN)
