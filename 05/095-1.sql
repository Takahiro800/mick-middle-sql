SELECT
  DISTINCT student_id
FROM
  test_dataset.TestScores TS1
WHERE
  TS1.subject IN ('算数', '国語')
  AND NOT EXISTS (
    SELECT
      *
    FROM
      test_dataset.TestScores TS2
    WHERE
      TS2.student_id = TS1.student_id
      AND 1 = CASE
        WHEN subject = '算数'
        AND score < 80 THEN 1
        WHEN subject = '国語'
        AND score < 50 THEN 1
        ELSE 0
      END
  )
ORDER BY
  student_id