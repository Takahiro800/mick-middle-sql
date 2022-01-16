SELECT
  DISTINCT student_id
FROM
  test_dataset.TestScores TS1
WHERE
  NOT EXISTS (
    SELECT
      student_id
    FROM
      test_dataset.TestScores TS2
    WHERE
      TS1.student_id = TS2.student_id
      AND TS2.score < 50
  )
  order by student_id