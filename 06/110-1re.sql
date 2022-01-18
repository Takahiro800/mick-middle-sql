-- Big Query対応
-- 大前提はseqはユニークなカラムである
SELECT
  CASE
    WHEN count(*) = max(seq) - min(seq) + 1 THEN '歯抜け無し'
    ELSE '歯抜けあり'
  END
FROM
  test_dataset.SeqTbl