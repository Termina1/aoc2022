data =. cut ('m' fread 'day5/day5.txt')
]stacks =. ''; dltb each <"1 (($&(0 1 0 0))@:# # ]) |: dtbs"1 (}: > 0 { data)
] ops =. (> 1 { data) (".@rplc)"1 ('move ';'';'from ';'';' to';'')

move =. 1 : 0
  a =. 0 { x
  from =. 1 { x
  to =. 2 { x
  mv =. a (u@{.)&.> (from { y)
  nwf =. a }.&.> (from { y)
  nwto =. mv ,&.> (to { y)
  r =. nwto to } y
  nwf from } r
)
s =. >@({. each)@}.

]part1 =. s stacks [ F.. (|. move) ops
]part2 =. s stacks [ F.. ([ move) ops
