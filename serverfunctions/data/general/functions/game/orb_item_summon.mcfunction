# Failed to create item due to lack of lives

effect give @s[scores={lives=..2}] blindness 3 0 true
effect give @s[scores={lives=..2}] weakness 7
execute at @s[scores={lives=..2}] run playsound minecraft:entity.zombie.infect player @a ~ ~ ~ 0.5 0.75

tellraw @s[scores={lives=..2}] ["",{"text":"You are too weak to create a ","color":"red"},{"text":"Soul Orb","color":"blue"},{"text":". Perhaps if you had more lives...","color":"red"}]

# Successfully created the item

effect give @s[scores={lives=3..}] poison 1 2
execute at @s[scores={lives=3..}] run particle glow ~ ~1 ~ 1 1 1 0.01 40 normal @a
execute at @s[scores={lives=3..}] run playsound minecraft:entity.guardian.death player @a ~ ~ ~ 1 0.5

give @s[scores={lives=3..}] allay_spawn_egg{display:{Name:'{"text":"Soul Orb","color":"blue","italic":false}',Lore:['{"text":"Place to activate","bold":true}','{"text":"Can be traded with other players"}']},EntityTag:{ActiveEffects:[{Id:7,Amplifier:3b,Duration:11,ShowParticles:0b}]}} 1
tellraw @s[scores={lives=3..}] ["",{"text":"You feel your energy drain as a ","color":"dark_green"},{"text":"Soul Orb","color":"blue"},{"text":" is created in your inventory.","color":"dark_green"}]
scoreboard players remove @s[scores={lives=3..}] lives 1

# Reset function for next use

scoreboard players set @s convert_life 0
scoreboard players enable @s convert_life
trigger refresh
