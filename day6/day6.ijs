data =. ;('m' fread 'day6/day6.txt')
s =. [ + {.@I.@([ = (+/^:_)"2@:e."1@:]\)
]part1 =. 4 s data
]part2 =. 14 s data
