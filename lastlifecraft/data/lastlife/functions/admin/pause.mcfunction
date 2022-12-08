# For when sessions end

effect give @a resistance 60 15 true
effect give @a weakness 60 1 true

execute as @a[gamemode=survival] run playsound minecraft:block.beacon.ambient block @p ~ ~20 ~ 0.5 2 0.5
execute as @a[gamemode=survival] run scoreboard players add still_alive lives 1
tellraw @a ["",{"text":"Session over! ","bold":true,"color":"green"},{"text":"Great work making it this far! A total of ","color":"yellow"},{"score":{"name":"still_alive","objective":"lives"},"bold":true,"color":"white"},{"text":" players","bold":true,"color":"white"},{"text":" out of 13 are still alive. (Not including anyone who missed the session)","color":"yellow"}]
scoreboard players reset still_alive

gamemode adventure @a[gamemode=survival]
