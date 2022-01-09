-- 同じ家族だが、住所が異なるレコードを検索するSQL
SELECT
  DISTINCT  -- このDISTINCTはなくても今回は同じ結果になった.重複行を削除するためのもの
  A1.name AS name,
  A1.address AS address
FROM
  test_dataset.Addresses A1
  INNER JOIN test_dataset.Addresses A2 ON A1.family_id = A2.family_id
  AND A1.address <> A2.address

/*
|   name    |        address         |
+-----------+------------------------+
| 前田 義明 | 東京都港区虎ノ門3-2-29 |
| 前田 由美 | 東京都港区虎ノ門3-2-92 |
+-----------+------------------------+

*/