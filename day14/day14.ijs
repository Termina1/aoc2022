data =. (_2[\])@".@rplc&('->';'') each <"1 'm' fread 'day14/day14.txt'
l =. |:@((] + (i.@| * ([ % |)@+/@])@:-) ,. [)
is =. ~.@;@:(;@(2 <@l/\ ]) each)
fill =. {{ 1 y} x }}
area =. (((0 $~ (1+]))@:(>./)) fill <"1@])
a =. area@is data
ds =. (3 2$ 0 1 _1 1 1 1)
sf =. { :: _1:
gm =. <"1@(ds +"1 ])
nm =. ((<@[ I.@:(>@((0 >: ])@:sf~ each)) <"0@]) { ]) gm
drop =. ([ ; (] <@[`({.@])@.(0 < #@]) nm))
cz =. 0 <: (] sf >@[)/
fall =. (drop&>/)^:cz^:_
park =. {{ 2 (<y) } x}}
sim =. (>@{.)`(park&>/)@.cz@fall@((500 0) ;~ ])
count =. (+/^:_)@(2 = ])
]part1 =. count sim^:_ a

aa =. a, (,~@{: (2 + $ a)) $ 0
aa =. 1 (1 -~ {: $ aa) }"1 aa
]part2 =. count sim^:_ aa
