#> util:map/core/set/update_map/add
# @within function util:map/core/set/update_map/_

# キーと値の要素を作成
    data modify storage util:temp Element.key set from storage util: in.key
    data modify storage util:temp Element.value set from storage util: in.value

# 追加した要素を含むMapを返す
    data modify storage util: out.map set from storage util: in.map
    data modify storage util: out.map append from storage util:temp Element

# リセット
    data remove storage util:temp Element
