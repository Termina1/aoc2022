p =. 1 + 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'&i.
h =. ]\~ -@-:@#
data =. 'm' fread 'day3/day3.txt'
]part1 =. +/@:(p@~.@({~ I.@(e./)@h@dltb)"1) data
]part2 =. +/ p"0 ; ; ((;@[ I.@e. ;@]) <@:~.@:{ ;@[)/ each (_3 <\ (<@dltb)"1 data)
