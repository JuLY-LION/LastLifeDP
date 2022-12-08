# comment

gamemode spectator @a[team=defeated,gamemode=!spectator]
scoreboard players remove @a[scores={hasDied=1..}] lives 1
team leave @a[scores={hasDied=1..}]
team join darkGreenName @a[scores={hasDied=1..,lives=4..}]
team join greenName @a[scores={hasDied=1..,lives=3}]
team join yellowName @a[scores={hasDied=1..,lives=2}]
team join redName @a[scores={hasDied=1..,lives=1}]
execute at @a[scores={hasDied=1..,lives=0}] run function general:game/final_kill
scoreboard players set @a[scores={hasDied=1..}] hasDied 0

execute as @a[scores={refresh=1..}] run function general:game/refresh_colors
execute as @a[scores={convert_life=1..}] run function general:game/orb_item_summon
execute as @a[scores={useAllayEgg=1..}] run function general:game/orb_item_use

function general:mobs/debuff_creepers2
