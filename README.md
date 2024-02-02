# zDRG
Just an old Deep Rock Galatic cheat mod


## Requirement
[UE4SS](https://github.com/UE4SS-RE/RE-UE4SS)


## Installation
1. Copy the folder `zDRG` to `Deep Rock Galactic\FSD\Binaries\Win64\Mod`
2. Open `Deep Rock Galactic\FSD\Binaries\Win64\Mod\mods.txt` and change
```
CheatManagerEnablerMod : 1
```
to
```
CheatManagerEnablerMod : 0
```

Now you go in-game, you can execute some console commands and open the cheat menu in the space rig and in the fight.


## Commands
- Enabled `ShowCheatMenu` command in the space rig.
- Enabled `MaxPlayers <int>` command to allow more players that can join your game. (Host only)
- Enabled `SetDifficulty <int>` command to change the difficulty while in game. (Host only)
- Enabled `GameOwnerStatus <int>` command to allow you to change your status.

```
Normal = 0
Supporter = 1
ContentCreator = 2
Developer = 4
Modder = 8
```

- Enabled `SpawnCritters <name> <int>` command. (Host only)
- Enabled `SpawnEnemies <name> <int>` command. (Host only)<br>
[Command list for spawning enemies and critters](https://docs.google.com/spreadsheets/d/1_Wa6PzMHxkqqhsXeU3XN728fLLGO9CPbRYwTZc_-1yg/edit#gid=2060721229)<br>
You can also spawn the enemy by opening the cheat menu (key `+`) instead of using the command.


## Classes
These are examples of changing some class weapons/gear.

### Scout
- Increased Grappling Hook distance. [class_scout.lua](https://github.com/zDestinate/zDRG/blob/main/zDRG/Scripts/class_scout.lua)

### Gunner
- Increased Zipline distance and angle. [class_gunner.lua](https://github.com/zDestinate/zDRG/blob/main/zDRG/Scripts/class_gunner.lua)

### Engineer
- Increased total lock on target. [class_engineer.lua](https://github.com/zDestinate/zDRG/blob/main/zDRG/Scripts/class_engineer.lua)

### Driller
- No pressure for cryo weapon. [class_driller.lua](https://github.com/zDestinate/zDRG/blob/main/zDRG/Scripts/class_driller.lua)
