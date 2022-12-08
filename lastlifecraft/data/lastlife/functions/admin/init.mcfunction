# Setup all scoreboards and teams required. Run this function before anything else.

scoreboard objectives add lives dummy
scoreboard objectives add hasDied deathCount
scoreboard objectives add deaths deathCount
scoreboard objectives add kills playerKillCount
scoreboard objectives add finalKills teamkill.red
scoreboard objectives add refresh trigger
scoreboard players enable @a refresh
scoreboard objectives add useAllayEgg minecraft.used:minecraft.allay_spawn_egg
scoreboard objectives add convert_life trigger
scoreboard players enable @a convert_life

team add darkGreenName
team modify darkGreenName color dark_green
team add greenName
team modify greenName color green
team add yellowName
team modify yellowName color yellow
team add redName
team modify redName color red
team add defeated
team modify defeated prefix {"text":"✖ ","color":"red"}
team modify defeated displayName {"text":"defeated","italic":true}