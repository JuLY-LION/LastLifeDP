# comment

execute at @p[scores={hasDied=1..,lives=0}] run summon minecraft:lightning_bolt ~ ~5 ~
tellraw @a ["",{"text":"FINAL KILL!","bold":true,"color":"aqua"}," ",{"selector":"@p[scores={hasDied=1..,lives=0}]","color":"red"}," has been eliminated!"]
team join defeated @p[scores={hasDied=1..,lives=0}]