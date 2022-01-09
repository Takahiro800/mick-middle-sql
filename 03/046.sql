-- 順列を得るSQL
SELECT
  P1.name AS name_1,
  P2.name AS name_2
FROM
  test_dataset.Products P1
  INNER JOIN test_dataset.Products P2 ON P1.name <> P2.name

  /*
  内部結合の条件をonで記述
| name_1 | name_2 |
+--------+--------+
| りんご | バナナ |
| りんご | みかん |
| バナナ | りんご |
| バナナ | みかん |
| みかん | りんご |
| みかん | バナナ |
+--------+--------+
  */