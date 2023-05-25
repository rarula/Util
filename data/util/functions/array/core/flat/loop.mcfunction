#> util:array/core/flat/loop
# @within function
#   util:array/core/flat/_
#   util:array/core/flat/loop

# ArrayList[-1][-1]に含まれるNBTがlistかテスト
    execute store success storage util:temp isListTag byte 1.0 run data modify storage util:temp ArrayList[-1] append value []

# NBTがlist -> そのlistを次から参照するように
    execute if data storage util:temp {isListTag:true} run data remove storage util:temp ArrayList[-1][-1]
    execute if data storage util:temp {isListTag:true} run data modify storage util:temp ArrayList append from storage util:temp ArrayList[-1][-1]

# NBTがlist以外の何か -> そのNBTを結果に追加
    execute if data storage util:temp {isListTag:false} run data modify storage util:temp Flattened append from storage util:temp ArrayList[-1][-1]
    execute if data storage util:temp {isListTag:false} run data remove storage util:temp ArrayList[-1][-1]

# 参照しているlistが空 -> 参照中のlistと元のlistを削除
    execute unless data storage util:temp ArrayList[-1][0] run data remove storage util:temp ArrayList[-2][-1]
    execute unless data storage util:temp ArrayList[-1][0] run data remove storage util:temp ArrayList[-1]

# すべての要素を平坦化するまで再帰
    execute if data storage util:temp ArrayList[0] run function util:array/core/flat/loop
