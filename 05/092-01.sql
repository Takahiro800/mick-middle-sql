-- 欠席者だけを求めるクエリ：その1 存在量化の応用
SELECT
  DISTINCT M1.meeting,
  M2.person
FROM
  test_dataset.Meetings M1
  CROSS JOIN test_dataset.Meetings M2
WHERE
  NOT EXISTS (
    SELECT
      *
    FROM
      test_dataset.Meetings M3
    WHERE
      M1.meeting = M3.meeting
      AND M2.person = M3.person
  )
order by meeting