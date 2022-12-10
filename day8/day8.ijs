data =. > ". each <"0 'm' fread 'day8/day8.txt'
min =. (# data) $ _1
iv =. min;a:
rot =. |.@|:
walk =. iv (>@{: F:. ([ (>. ,&< >) >@{.@])) ]
dviews =. <"2 (data [ F:. (rot@]) i.4)
align =. ((1 |. ])@i.@#@[ ((rot@])^:(-@[))each ])
]part1 =. +/^:_ +./ > (align walk each dviews)

iv =. a: ,~ (min ,&< {.)
look =. iv@[ >@{: F:. ((([ <@:>. >@{.@]) , 1{]) , ((1{]) <@:>&> {.@])) }.@]
tl =. 1 0,: ($ data)
clook =. +/"2@(tl (+/)@look;.3 ])
align clook each dviews

$ +/ look (> 3 { dviews)

 (1 { > 3 { dviews)  ((([ <@:>. >@{.@]) , 1{]) ] (] ] {.@])) (iv > 3 { dviews)
