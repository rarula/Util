#> util:map/core/has/_
#
# @input
#   storage util: in
#       map: Map
#       key: any
#
# @output
#   storage util: out
#       contains: boolean
#
# @within function util:map/has

# 戻り値を初期化
    data modify storage util: out.contains set value false

# 指定したキーに対する要素が含まれているか探索
    function util:map/core/has/search

# リセット
    data remove storage util:temp Key
    data remove storage util:temp Result
    data remove storage util: in
