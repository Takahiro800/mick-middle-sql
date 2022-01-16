-- 欠席者だけを求めるクエリ：その2 差集合演算の利用
SELECT
  M1.meeting,
  M2.person
FROM
  test_dataset.Meetings M1,
  test_dataset.Meetings M2
EXCEPT
  DISTINCT
SELECT
  meeting,
  person
FROM
  test_dataset.Meetings