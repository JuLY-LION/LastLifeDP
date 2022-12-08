# Used the item

scoreboard players add @s lives 1
tellraw @s ["",{"text":"The ","color":"aqua"},{"text":"Soul Orb","color":"blue"},{"text":" strengthens your lifeforce, granting an additional life.","color":"aqua"}]

effect give @s regeneration 7
effect give @s night_vision 3 0 true
effect give @s nausea 5 0 true
effect give @s mining_fatigue 7 1
execute at @s run particle happy_villager ~ ~1 ~ 1 1 1 0.01 40 normal @a

scoreboard players set @s useAllayEgg 0
trigger refresh
