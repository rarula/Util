#> util:map/core/set/update_map/update
# @within function util:map/core/set/update_map/_

# 指定されたキーに対する値を更新
    data modify storage util:temp TargetElements[-1].value set from storage util: in.value

# 削除した要素を戻す
    function util:map/core/set/update_map/element/revert

# 更新した要素を含むMapを返す
    data modify storage util: out.map set from storage util:temp TargetElements
