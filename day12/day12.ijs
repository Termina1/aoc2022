data =. a. i. 'm' fread 'day12/day12.txt'
size =. $data
is =. |: (0 1),.(1 0),.(_1 0),.(0 _1)
nb =. (((*./"1@(0<:])) *. (*/"1)@:(size >"1 ])) # ])@:(is+"1])
fx =. ((122&[)^:(69=]))@((97&[)^:(83=]))
ch =. fx"0@[ ((1>:]) *. (__<]))@:- fx@]
ele =. ([ ; <"1@nb@[) (}.@[ #~ ((}.@[ { ]) ch ({.@[ { ]))) ]
ii =. ({:@$ (<.@%~ , |)"0 I.@,)
S =. {. ii (data = 83)
E =. {. ii (data = 69)
head =. >@{:@{.@>@{:
top =. {:@head
v =. {{ _ (<y)} x }}
step =. ((>@{. <@v top) , (}.@;@{: <@, ({.@>@{: (, each) (>@{.@] ele~ top))))
drop =. {. , <@(}.)&>@{:
check =. (_ ~: (<@top { >@{.))
play =. (drop`step@.check)^:(+./@(E ~: top))^:_
]part1 =. (# head play (data;(<<(1 2 $ S)))) - 1
]part2 =. (# head play data;(< ,:each <"1(ii (data = 97)))) - 1
