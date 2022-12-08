# IT BEGINS

gamemode survival @a
worldborder set 1008.8 60
effect clear @a
effect give @a regeneration 60 1
effect give @a speed 60 0
effect give @a absorption 300 4
execute at @a run playsound minecraft:entity.experience_orb.pickup player @p
time set 0