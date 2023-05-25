#> util:array/core/reverse/_
#
# @input
#   storage util: in
#       array: any[]
#
# @output
#   storage util: out
#       array: any[]
#
# @within function util:array/reverse

# 要素の順序を反転
    function util:array/core/reverse/loop

# リセット
    data remove storage util: in
