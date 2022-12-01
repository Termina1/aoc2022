data =. > +/@:". each cut ('m' fread 'day1/day1.txt')

] part1 =. >./ data
] part2 =. +/ 3{. \:~ data
