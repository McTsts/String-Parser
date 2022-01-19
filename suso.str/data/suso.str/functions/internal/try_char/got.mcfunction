data modify storage suso.str:internal current_char set from storage suso.str:internal possible_chars[0]
data modify storage suso.str:internal result append from storage suso.str:internal current_char
data modify block 29999985 1 43376 Text3 set value '[{"nbt":"Text3","block":"29999985 1 43376","interpret":true},{"storage":"suso.str:internal","nbt":"current_char"}]'
#tellraw @a [{"text":"Got char \""},{"nbt":"current_char","storage":"suso.str:internal"},"\""]
execute if data storage suso.str:internal prep[] run data modify block ~ ~1 ~ Text2 set value '[{"nbt":"prep","storage":"suso.str:internal","interpret":true},{"nbt":"Text3","block":"~ ~ ~","interpret":true},{"nbt":"post","storage":"suso.str:internal"}]'
execute unless data storage suso.str:internal prep[] run data modify block ~ ~1 ~ Text2 set value '[{"nbt":"prep","storage":"suso.str:internal"},{"nbt":"Text3","block":"~ ~ ~","interpret":true},{"nbt":"post","storage":"suso.str:internal"}]'

data modify storage suso.str:internal possible_chars set from storage suso.str:internal possible_chars_set
data modify storage suso.str:internal possible_chars2 set value []

scoreboard players set $got suso.str 1
scoreboard players add $curr_chars suso.str 1


#tellraw @a {"nbt":"Text3","block":"~ ~1 ~","interpret":true}