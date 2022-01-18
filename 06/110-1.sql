-- 結果が返れば歯抜けあり：数列の連続性のみを調べる
-- Big Queryの場合、Having句を使うためにはGroup by もしくは集約関数が必要
SELECT
  '歯抜けあり' AS gap
FROM
  test_dataset.SeqTbl
HAVING
  count(*) <> (max(seq) - min(seq) + 1)