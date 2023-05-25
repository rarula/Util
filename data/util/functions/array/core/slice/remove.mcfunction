#> util:array/core/slice/remove
# @within function
#   util:array/core/slice/_
#   util:array/core/slice/remove

# 要素を取り除く
    data remove storage util: in.array[-1]
    scoreboard players remove $Index Util 1

# すべての要素を取り除くまで再帰
    execute if score $Index Util matches 1.. run function util:array/core/slice/remove
