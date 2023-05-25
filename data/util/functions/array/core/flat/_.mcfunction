#> util:array/core/flat/_
#
# @input
#   storage util: in
#       array: any[]
#
# @output
#   storage util: out
#       array: any[]
#
# @within function util:array/flat

# 再帰的に平坦化
    data modify storage util:temp ArrayList append from storage util: in.array
    function util:array/core/flat/loop

# 要素の順序を反転
    data modify storage util: in.array set from storage util:temp Flattened
    function util:array/reverse

# リセット
    data remove storage util:temp ArrayList
    data remove storage util:temp Flattened
    data remove storage util:temp isListTag
    data remove storage util: in
