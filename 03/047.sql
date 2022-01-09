-- 組み合わせを得るSQL
-- 非等値結合
SELECT
  P1.name AS name_1,
  P2.name AS name_2
FROM
  test_dataset.Products P1
  INNER JOIN test_dataset.Products P2 ON P1.name > P2.name

/*
| name_1 | name_2 |
+--------+--------+
| りんご | みかん |
| バナナ | みかん |
| バナナ | りんご |
+--------+--------+
*/