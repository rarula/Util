#> util:map/core/has/search
# @within function
#   util:map/core/has/_
#   util:map/core/has/search

# 配列末尾に含まれるキーが一致するかテスト
    data modify storage util:temp Key set from storage util: in.map[-1].key
    execute store success storage util:temp Result byte 1.0 run data modify storage util:temp Key set from storage util: in.key

# キーが一致 -> trueを出力する
    execute if data storage util:temp {Result:false} run data modify storage util: out.contains set value true

# キーが不一致 -> 配列末尾の要素を削除
    execute if data storage util:temp {Result:true} run data remove storage util: in.map[-1]

# キーが一致するか、すべての要素を探索するまで再帰
    execute if data storage util:temp {Result:true} if data storage util: in.map[-1] run function util:map/core/has/search
