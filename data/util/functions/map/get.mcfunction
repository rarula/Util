#> util:map/get
#
# 指定されたキーから値を返します
#
# @input
#   storage util: in
#       map: Map
#           対象のMap
#       key: any
#           取得する要素のキー
#
# @output
#   storage util: out
#       value: any
#           取得した値
#       contains: boolean
#           指定されたキーに対する要素が含まれているかどうか
#
# @api

function util:map/core/get/_
