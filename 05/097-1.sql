-- 工程まで完了のプロジェクトを選択:集合指向的な解答
SELECT
  project_id
FROM
  test_dataset.Projects
GROUP BY
  project_id
HAVING
  count(*) = sum(
    CASE
      WHEN step_nbr <= 1
      AND STATUS = '完了' THEN 1
      WHEN step_nbr > 1
      AND STATUS = '待機' THEN 1
      ELSE 0
    END
  )