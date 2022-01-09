SELECT
  P1.name AS name_1,
  P2.name AS name_2
FROM
  test_dataset.Products P1
  CROSS JOIN test_dataset.Products P2

/*
cross join
二つのテーブルの総当たり
+--------+--------+
| name_1 | name_2 |
+--------+--------+
| みかん | みかん |
| みかん | バナナ |
| みかん | りんご |
| バナナ | みかん |
| バナナ | バナナ |
| バナナ | りんご |
| りんご | みかん |
| りんご | バナナ |
| りんご | りんご |
+--------+--------+
*/
