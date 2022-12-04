data =. 'm' fread 'day4/day4.txt'
data =. > ,@:".@:> each ('-'&chopstring) each (','&chopstring)"1 data
c =. ({.@[ <: {.@]) *. ({:@[ >: {:@])
o =. ({.@[ > {:@]) -.@+. ({:@[ < {.@])
]part1 =. +/ (c +. c~)/"2 data
]part2 =. +/ o/"2 data
