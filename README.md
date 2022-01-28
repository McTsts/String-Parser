# String-Parser (Deprecated)
Improved versions of the features of this fork are now contained in the original suso string parser. Do not use this string parser anymore. Instead use [Suso's general string parser](https://github.com/5uso/String-Parser).

# Original
This is a slight variant of [Suso's string parser](https://github.com/5uso/String-Parser) that is slower but can parse `"`, ` ` (space) and `!`.

## How to use
Input/Output is done via data storage `suso.str:io`. The format is mostly the same as suso's string parser.

Data paths:
- `in.string`: Input string to be parsed.
- `in.possible_chars`: Array with the characters expected to be found on the input string, in alphabetical order. If any character on the input string is not on this array, parsing will fail. Defaults to `["0","1","2","3","4","5","6","7","8","9","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","_","a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]` (Note: `"` needs to be inserted between `[` and `]` (where backslash normally is, see [test.mcfunction](https://github.com/McTsts/String-Parser/blob/main/suso.str/data/suso.str/functions/test.mcfunction))
- `in.max_chars`: Maximum amount of characters, after which the parser will stop and return the current result.
- `in.prep`: Prefix string, already known to be at the start of the input string. Won't be part of the result. Can be both in string or char array form.
- `in.callback`: Command to be run after parsing finishes.
- `in.post`: This needs to be a string consisting out of spaces. Put at least one space for every consecutive space/exclamation mark you expect in the input.
- `out`: Resulting char array.

Once the input values have been set, parsing can be started with `function suso.str:call`. Since it runs from a commandblock chain, results won't be available on the same tick.

## Example
See [test.mcfunction](https://github.com/McTsts/String-Parser/blob/main/suso.str/data/suso.str/functions/test.mcfunction)
