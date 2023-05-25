#> util:map/core/set/update_map/_
# @within function util:map/core/set/_

# 対象のMapをコピー
    data modify storage util:temp TargetElements set from storage util: in.map

# 指定されたキーを持つ要素をTargetElements[-1]に移動
    function util:map/core/set/update_map/element/move


# 指定したキーが発見された -> Mapを更新
    execute if data storage util:temp {Result:false} run function util:map/core/set/update_map/update

# 指定したキーが発見されなかった -> Mapに要素を追加
    execute if data storage util:temp {Result:true} run function util:map/core/set/update_map/add


# リセット
    data remove storage util:temp TargetElements
    data remove storage util:temp DeletedElements
    data remove storage util:temp Key
    data remove storage util:temp Result
