data modify storage suso.str:io in.string set value '[{"text":"Item Name","bold":true,"color":"red"}," ",{"text":"(Lvl. 1)","italic":true}]'
#data modify storage suso.str:io in.string set value '[{"a"}]'
data modify storage suso.str:io in.prep set value ''
data modify storage suso.str:io in.post set value '          '
data modify storage suso.str:io in.max_chars set value 100
data modify storage suso.str:io in.possible_chars set value [" ","!","#","$","%","&","'","(",")","*","+",",","-",".","/","0","1","2","3","4","5","6","7","8","9",":",";","<","=",">","?","@","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","[",'"',"]","^","_","`","a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","{","|","}","~"]
data modify storage suso.str:io in.callback set value 'tellraw @a ["parsed: ", {"nbt":"out[]","storage":"suso.str:io","separator":""}]'
function suso.str:call