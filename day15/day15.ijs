data =. > (".@rplc&('Sensor at x=';'';', y=';' ';': closest beacon is at x=';' ';'-';'_')) each cutopen fread 'day15/day15.txt'
d =. %:@+/@:*:@:-
a =. {: [ x =. {. [ y =. 1&{
solvem =. (+ /:~@, -)
solve =. x@] (0:)`solvem@.(0<:]) (a@] - ([ |@- y@]))
finda =. +/@:(|@-)
diamonds =. M. (2&{. , (finda/@((2 2) $ ])))
filter =. (0 ~: -~/"1) # ]
sort =. (/: {."1)
merge =. ,:@:{. ([ F.. (,`(([ ({.@] , >.&{:) {.@]) , }.@])@.({.@[ (1&>:)@- {:@{.@]))) }.
findi =. sort@filter@:((solve diamonds)"1)
]part1 =. 2000000 +/@:(-~/"1)@merge@findi data
bounds =. (0 4000000)
abounds =. (-4000000 , ({. bounds)) , ((({: bounds), 8000000) ,~ ])
seek =. dyad define
  is =: x merge@abounds@findi y
  if. (#is) > 1 do. (1 Z: 1) ] ((1 + {: {: is), x) else. y end.
)
]part2 =. data ((4000000*[) + ])/@((] F.. seek)) (i. (1 + {: bounds))
