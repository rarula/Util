#> util:array/core/reverse/loop
# @within function
#   util:array/core/reverse/_
#   util:array/core/reverse/loop

# 要素を移動
    data modify storage util: out.array append from storage util: in.array[-1]
    data remove storage util: in.array[-1]

# すべての要素を移動するまで再帰
    execute if data storage util: in.array[0] run function util:array/core/reverse/loop
