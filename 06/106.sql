-- 結果が返れば歯抜けあり
SELECT
  '歯抜けあり' AS gap,
  count(*),
  max(seq)
FROM
  test_dataset.SeqTbl
HAVING
  count(*) <> max(seq)