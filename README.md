# Util
汎用性の高い関数を集めたユーティリティデータパック

## 対応バージョン
- 1.19.4

## [array/flat](data/util/functions/array/flat.mcfunction)
再帰的に平坦化した配列を返します

### 呼び出し
```mcfunction
function util:array/flat
```

### 引数
| ストレージ | 型 | 説明 |
| :- | :- | :- |
| util: in.array | any[] | 対象の配列 |

### 戻り値
| ストレージ | 型 | 説明 |
| :- | :- | :- |
| util: out.array | any[] | 平坦化した配列 |

### 例
```mcfunction
data modify storage util: in.array set value [[0], [[1, 2], [[3, 4, 5]], [6, 7]], [8, 9]]
function util:array/flat
# -> [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
```

## [array/reverse](data/util/functions/array/reverse.mcfunction)
要素の順序を反転した配列を返します

### 呼び出し
```mcfunction
function util:array/reverse
```

### 引数
| ストレージ | 型 | 説明 |
| :- | :- | :- |
| util: in.array | any[] | 対象の配列 |

### 戻り値
| ストレージ | 型 | 説明 |
| :- | :- | :- |
| util: out.array | any[] | 反転した配列 |

### 例
```mcfunction
data modify storage util: in.array set value [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
function util:array/reverse
# -> [9, 8, 7, 6, 5, 4, 3, 2, 1, 0]
```

## [array/slice](data/util/functions/array/slice.mcfunction)
指定した範囲の部分配列を取り出して返します

### 呼び出し
```mcfunction
function util:array/slice
```

### 引数
| ストレージ | 型 | 必須 | 説明 |
| :- | :- | :- | :- |
| util: in.array | any[] | o | 対象の配列 |
| util: in.start | int | x | 取り出しの開始位置 |
| util: in.end | int | x | 取り出しの終了位置 |

### 戻り値
| ストレージ | 型 | 説明 |
| :- | :- | :- |
| util: out.array | any[] | 取り出された配列 |

### 例
```mcfunction
data modify storage util: in.array set value [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
data modify storage util: in.start set value 1
data modify storage util: in.end set value 5
function util:array/slice
# -> [1, 2, 3, 4]
```

## [map/set](data/util/functions/map/set.mcfunction)
指定されたキーと値を持つ要素を追加・更新・作成します

### 呼び出し
```mcfunction
function util:map/set
```

### 引数
| ストレージ | 型 | 必須 | 説明 |
| :- | :- | :- | :- |
| util: in.key | any | o | 設定する要素のキー |
| util: in.value | any | o | 設定する要素の値 |
| util: in.map | Map | x | 対象のMap |

### 戻り値
| ストレージ | 型 | 説明 |
| :- | :- | :- |
| util: out.map | Map | 設定した要素を含むMap |

### 例
```mcfunction
data modify storage util: in.key set value "KEY"
data modify storage util: in.value set value "VALUE"
function util:map/set
# -> [{key:"KEY", value:"VALUE"}]
```

## [map/get](data/util/functions/map/get.mcfunction)
指定されたキーから値を返します

### 呼び出し
```mcfunction
function util:map/get
```

### 引数
| ストレージ | 型 | 説明 |
| :- | :- | :- |
| util: in.map | Map | 対象のMap |
| util: in.key | any | 取得する要素のキー |

### 戻り値
| ストレージ | 型 | 説明 |
| :- | :- | :- |
| util: out.value | any | 取得した値 |
| util: out.contains | boolean | 指定されたキーに対する要素が含まれているかどうか |

### 例
```mcfunction
data modify storage util: in.map set value [{key:"KEY", value:"VALUE"}]
data modify storage util: in.key set value "KEY"
function util:map/get
# -> {value:"VALUE", contains:true}
```

## [map/has](data/util/functions/map/has.mcfunction)
指定されたキーに対する要素が含まれているかどうかを返します

### 呼び出し
```mcfunction
function util:map/has
```

### 引数
| ストレージ | 型 | 説明 |
| :- | :- | :- |
| util: in.map | Map | 対象のMap |
| util: in.key | any | テストする要素のキー |

### 戻り値
| ストレージ | 型 | 説明 |
| :- | :- | :- |
| util: out.contains | boolean | 指定されたキーに対する要素が含まれているかどうか |

### 例
```mcfunction
data modify storage util: in.map set value [{key:"KEY", value:"VALUE"}]
data modify storage util: in.key set value "KEY"
function util:map/has
# -> true
```

## [map/delete](data/util/functions/map/delete.mcfunction)
指定されたキーに対する要素を削除します

### 呼び出し
```mcfunction
function util:map/delete
```

### 引数
| ストレージ | 型 | 説明 |
| :- | :- | :- |
| util: in.key | any | 削除する要素のキー |
| util: in.map | Map | 対象のMap |

### 戻り値
| ストレージ | 型 | 説明 |
| :- | :- | :- |
| util: out.map | Map | 要素が削除されたMap |

### 例
```mcfunction
data modify storage util: in.key set value "A"
data modify storage util: in.map set value [{key:"A", value:"VALUE-A"}, {key:"B", value:"VALUE-B"}]
function util:map/delete
# -> [{key:"B", value:"VALUE-B"}]
```

## 連絡
<https://twitter.com/rarula_>

## ライセンス
[CC0-1.0](LICENSE)
