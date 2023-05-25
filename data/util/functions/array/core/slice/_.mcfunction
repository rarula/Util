#> util:array/core/slice/_
#
# @input
#   storage util: in
#       array: any[]
#       start?: int
#       end?: int
#
# @output
#   storage util: out
#       array: any[]
#
# @within function util:array/slice

#>
# @private
    #declare score_holder $End
    #declare score_holder $Start

#>
# @within util:array/core/slice/**
    #declare score_holder $Index


# 引数を初期化
    execute unless data storage util: in.end run data modify storage util: in.end set value 2147483647
    execute unless data storage util: in.start run data modify storage util: in.start set value 0

# 戻り値を初期化
    data modify storage util: out.array set value []


# 値を取得
    execute store result score $End Util run data get storage util: in.end
    execute store result score $Start Util run data get storage util: in.start

# end以降の要素を取り除く
    execute store result score $Index Util if data storage util: in.array[]
    scoreboard players operation $Index Util -= $End Util
    execute if score $Index Util matches 1.. run function util:array/core/slice/remove

# start以降の要素を取り出す
    execute store result score $Index Util if data storage util: in.array[]
    scoreboard players operation $Index Util -= $Start Util
    execute if score $Index Util matches 1.. run function util:array/core/slice/move


# 要素の順序を反転
    data modify storage util: in.array set from storage util:temp Sliced
    function util:array/reverse


# リセット
    scoreboard players reset $End Util
    scoreboard players reset $Start Util
    scoreboard players reset $Index Util
    data remove storage util:temp Sliced
    data remove storage util: in
