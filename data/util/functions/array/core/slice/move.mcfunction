#> util:array/core/slice/move
# @within function
#   util:array/core/slice/_
#   util:array/core/slice/move

# 要素を取り出す
    data modify storage util:temp Sliced append from storage util: in.array[-1]
    data remove storage util: in.array[-1]
    scoreboard players remove $Index Util 1

# すべての要素を取り出すまで再帰
    execute if score $Index Util matches 1.. run function util:array/core/slice/move
