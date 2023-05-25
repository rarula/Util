#> util:map/core/set/_
#
# @input
#   storage util: in
#       key: any
#       value: any
#       map?: Map
#
# @output
#   storage util: out
#       map: Map
#
# @within function util:map/set

# 対象のMapが指定されている -> Mapを追加・更新
    execute if data storage util: in.map run function util:map/core/set/update_map/_

# 対象のMapが指定されていない -> Mapを作成
    execute unless data storage util: in.map run function util:map/core/set/create_map/_

# リセット
    data remove storage util: in
