#> util:map/core/get/_
#
# @input
#   storage util: in
#       map: Map
#       key: any
#
# @output
#   storage util: out
#       value: any
#       contains: boolean
#
# @within function util:map/get

# 戻り値を初期化
    data modify storage util: out.contains set value false

# 指定したキーの要素を探索
    function util:map/core/get/search

# 配列に要素が残っているなら、指定したキーに対する要素が含まれている
    execute if data storage util: in.map[-1] run data modify storage util: out.contains set value true

# リセット
    data remove storage util:temp Key
    data remove storage util:temp Result
    data remove storage util: in
