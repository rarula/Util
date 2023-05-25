#> util:array/slice
#
# 指定した範囲の部分配列を取り出して返します
#
# @input
#   storage util: in
#       array: any[]
#           対象の配列
#       start?: int
#           取り出しの開始位置 (任意)
#       end?: int
#           取り出しの終了位置 (任意)
#
# @output
#   storage util: out
#       array: any[]
#           取り出された配列
#
# @api

function util:array/core/slice/_
