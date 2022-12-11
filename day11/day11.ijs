r =.rplc&('Starting items:';'';'Operation: new =';'';'old';'_';'*';'0';'+';'1';'Test: divisible by';'';'If true: throw to monkey';'';'If false: throw to monkey';'')
]ms =. ((<0) ,~ ]) each (<"1@".@dltb@r)"1@}. each cut 'm' fread 'day11/day11.txt'
dt =. +/ . *
vr =. ((,.@(_=]) |:@dt ,:@[) ((1&|.)@:+)"1 (((_ ~: ])) * ]))
new =. (((*/@}.)`(+/@}.))@.({.))"1
relief =. <.@(3%~])
update =. relief@new@(vr&>/@:(2&{.))
roll =. [ (0~:])@|~ >@(2{])
round =. (update ([ ,: (([ (3+])@roll ]) >@{ ])) ])
push =. dyad define
  i =. ({: x)
  v =. {. x
  m =. <(<@(v,])@>@{. , }.) (> i { y)
  m i} y
)
count =. (}: , <@(#@>@{. + >@{:))
clean =. {{ (< (a: 0} ])@count > x { y) x} y}}
play=. (] (] F.. ([ clean (] ([ (] F.. push) |:@]) round@([ >@{ ])))) (i.@:#))
solve =. {{ */ ((2{.])@\: { ]) > >@{: each y}}
] part1 =. solve (play^:20 ms)
p =. */ >@(>@(2{]) each) ms
relief =. p&|
] part2 =. solve (play^:10000 ms)
