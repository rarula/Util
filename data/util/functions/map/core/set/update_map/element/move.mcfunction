#> util:map/core/set/update_map/element/move
# @within function
#   util:map/core/set/update_map/_
#   util:map/core/set/update_map/element/move

# 配列末尾に含まれるキーが一致するかテスト
    data modify storage util:temp Key set from storage util:temp TargetElements[-1].key
    execute store success storage util:temp Result byte 1.0 run data modify storage util:temp Key set from storage util: in.key

# キーが不一致 -> 配列末尾の要素を別のデータに移動
    execute if data storage util:temp {Result:true} run data modify storage util:temp DeletedElements append from storage util:temp TargetElements[-1]
    execute if data storage util:temp {Result:true} run data remove storage util:temp TargetElements[-1]

# キーが一致するか、すべての要素を探索するまで再帰
    execute if data storage util:temp {Result:true} if data storage util:temp TargetElements[-1] run function util:map/core/set/update_map/element/move
