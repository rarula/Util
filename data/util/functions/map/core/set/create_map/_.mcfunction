#> util:map/core/set/create_map/_
# @within function util:map/core/set/_

# キーと値の要素を作成
    data modify storage util:temp Element.key set from storage util: in.key
    data modify storage util:temp Element.value set from storage util: in.value

# 作成した要素を含むMapを返す
    data modify storage util: out.map append from storage util:temp Element

# リセット
    data remove storage util:temp Element
