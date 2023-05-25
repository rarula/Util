#> util:map/set
#
# 指定されたキーと値を持つ要素を追加・更新・作成します
#
# @input
#   storage util: in
#       key: any
#           設定する要素のキー
#       value: any
#           設定する要素の値
#       map?: Map
#           対象のMap (任意)
#
# @output
#   storage util: out
#       map: Map
#           設定した要素を含むMap
#
# @api

function util:map/core/set/_
