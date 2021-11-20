# author: Anthea Chen
# date: 2021-11-19

"This script prints out docopt args.
Usage: demo.R <arg1> [<arg_op>] --arg2=<arg2> [--arg3=<arg3>]
Options:
<arg>             Takes any value (this is a required positional argument)
[<arg_op>]          Takes any value (this is a optional positional argument)
--arg2=<arg2>     Takes any value (this is a required option)
[--arg3=<arg3>]   Takes any value (this is an optional option)
" -> doc

library(docopt)
opt <- docopt(doc)

main <- function(opt) {
print(opt)
print(typeof(opt))
print(opt$arg_op)
}


main(opt)