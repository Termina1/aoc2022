data =. (".@:(rplc&(',';' ';'[';'_1 ';']';' _2'))@dltb)"1 each cut 'm' fread 'day13/day13.txt'
NB. d d - 0
NB. d [ - 1
NB. d ] - 2
NB. [ d - 4
NB. [ [ - 5
NB. [ ] - 6
NB. ] d - 8
NB. ] [ - 9
NB. ] ] - 10
m =. (0 1 2 4 5 6 8 9 10)&i.
test =. 2:`((({.@[ m@#.@,&((2 2)&#:) {.@])&(0|@<.])))@.((*./@(0&<)&#))
push =. (_1,{.) , (_2,}.)
cmp =. <`($:&}.)@.(=&{.)
p =. (((<&{.)`($:&}.)@.(=&{.))`(push@[ $: ])`0:`([ $: push@])`($:&}.)`0:`1:`1:`($:&}.)`0:@.test)
sort =. a:&(] F:. (p/@:>@[))
]part1 =. +/ 1 + I. sort data
cart =. {@(,&<)
sep =. (_1 _1 2 _2 _2);(_1 _1 6 _2 _2)
all =. (; <"1 each data),sep
fn =. sort@:(> each)@cart
quicksort=: {{ (($:@(u#[) , (=#[) , $:@(u~#[)) ({~ ?@#)) ^: (1<#) }}
]part2 =. */ 1 + ((fn quicksort all) i. sep)
