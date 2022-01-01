-- 条件1：１つのクラブに専念している学生を選択
SELECT
  std_id,
  max(club_id) AS main_club
FROM
  test_dataset.StudentClub
GROUP BY
  std_id
HAVING
  Count(*) = 1