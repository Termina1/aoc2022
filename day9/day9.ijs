data =. ". rplc&('R';'0 1 *';'U';'_1 0 *';'L';'0 _1 *';'D';'1 0 *')"1 'm' fread 'day9/day9.txt'
d =. (2 (+./)@:<: |@-)/@(2{.])
n =. (] % |)@-
step =. ((({. ,: ({: + n/)))@(2{.]) , 2}.])^:d
gstep =. }.@,&>/@((>@{. (([ , {.@]) ; }.@]) step@>@{:)^:(1 -~ #@:(>@{:)))@((1 2 $ 0) ; ])
size =. 480
trace =. {{ (1 (<@{: (y + (-: size))) } x);y }}
f =. (size , size) $ 0
start =. trace&>/ ((f ; ]) (0 0 ,: 0 0))

catch =. ([ trace gstep@])&>/^:_
move =. {.@] , (([ + {.@>@{:@]) <@:, }.@>@{:@])
solve =. +/^:_@(>@{. F.. (catch@move))
]part1 =. start solve data

start2 =. trace&>/ ((f ; ]) (10 2 $ 0))
]part2 =. start2 solve data
