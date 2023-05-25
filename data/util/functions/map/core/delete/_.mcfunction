#> util:map/core/delete/_
#
# @input
#   storage util: in
#       key: any
#       map: Map
#
# @output
#   storage util: out
#       map: Map
#
# @within function util:map/delete

# 対象のMapをコピー
    data modify storage util: out.map set from storage util: in.map

# 指定されたキーを持つ要素をout.map[-1]に移動
    function util:map/core/delete/move

# 要素を削除
    data remove storage util: out.map[-1]

# 削除した要素を戻す
    function util:map/core/delete/revert

# リセット
    data remove storage util:temp DeletedElements
    data remove storage util:temp Key
    data remove storage util:temp Result
    data remove storage util: in
