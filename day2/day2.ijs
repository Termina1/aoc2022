data =. ". 'A1B2C3X1Y2Z3' charsub 'm' fread 'day2/day2.txt'
score =. +/@(1&{"1 + (({&(0 6 3 0 6))@(2&+)@(-/))"1)
]part1 =. score data

win =. (3&|) + 1&[
action =. (win@(1&+)@])`]`(win@])
]part2 =. score@|:@(0&{"1 ,: >@((action@.((-&1)@[))/ each)@(<"1)) data
