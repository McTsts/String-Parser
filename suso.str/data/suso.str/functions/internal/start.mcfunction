execute store result score $cmdfeed suso.str run gamerule sendCommandFeedback
gamerule sendCommandFeedback true
data modify block ~ ~ ~1 auto set value 0b

data modify block ~ ~ ~ auto set value 0b
data modify block ~1 ~ ~ UpdateLastExecution set value 0b
scoreboard players set $state suso.str 0
scoreboard players set $offset suso.str 0
scoreboard players set $context suso.str 1
scoreboard players set $counter suso.str 0
scoreboard players set $last_ctx suso.str 1
scoreboard players set $curr_chars suso.str 0

data modify entity 00000000-0000-0226-0000-000000000000 CustomName set value '{"text":""}'
data modify entity 00000000-0000-0226-0000-000000000001 Tags set value []
data modify block ~1 ~1 ~ Text3 set value ''

data remove storage suso.str:io out
data remove storage suso.str:internal cmp
data remove storage suso.str:internal tags_start
data remove storage suso.str:internal constructed
data remove storage suso.str:internal current_char
data remove storage suso.str:internal flattened_in
data remove storage suso.str:internal flattened_cmp
data remove storage suso.str:internal possible_chars2
data remove storage suso.str:internal flattened_tag_list

data modify storage suso.str:internal result set value []
data modify storage suso.str:internal possible_chars_set set from storage suso.str:io in.possible_chars
execute unless data storage suso.str:io in.possible_chars[] run data modify storage suso.str:internal possible_chars_set set value ["0","1","2","3","4","5","6","7","8","9","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","_","a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
data modify storage suso.str:internal possible_chars set from storage suso.str:internal possible_chars_set
data modify storage suso.str:internal prep set from storage suso.str:io in.prep
data modify storage suso.str:internal post set from storage suso.str:io in.post
execute unless data storage suso.str:io in.prep run data modify storage suso.str:internal prep set value ""
execute unless data storage suso.str:io in.post run data modify storage suso.str:internal post set value ""
execute store result score $max_chars suso.str run data get storage suso.str:io in.max_chars

#time 2, id 3, name 5, signaturereq 7, skin 11, model 13, cape 17