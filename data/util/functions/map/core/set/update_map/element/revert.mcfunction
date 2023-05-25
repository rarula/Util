#> util:map/core/set/update_map/element/revert
# @within function
#   util:map/core/set/update_map/update
#   util:map/core/set/update_map/element/revert

# 配列末尾の要素を末尾に追加
    data modify storage util:temp TargetElements append from storage util:temp DeletedElements[-1]
    data remove storage util:temp DeletedElements[-1]

# すべての要素を戻すまで再帰
    execute if data storage util:temp DeletedElements[-1] run function util:map/core/set/update_map/element/revert
