SELECT
  min(seq + 1)
FROM
  test_dataset.SeqTbl
WHERE
  (seq + 1) NOT EXISTS (
    SELECT
      seq
    FROM
      test_dataset.SeqTbl
  )