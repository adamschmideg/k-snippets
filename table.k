exec: {[s] .[{. x};(,s);:]}
tbl: {[v;h;op] t:v op/:\:h; +(,op,v),+(,h),t}

op: "+-*%|&^!<>=~@?_,#$"
left:("";" 1";"1 2")
right:("1 ";"2 1")
arg: ,/left{(x;y)}/:\:right

v:4+!5
h:1+!3
t: tbl[arg;op;{s:x[0],y,x[1]; exec[s]}]

exp:,/(,/left,/:\:op),/:\:right
err:{("";x)[exec[x][0]]}/:exp
err:err[&~""~/:err]
