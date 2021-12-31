SELECT
  CASE
    WHEN pref_name = '徳島' THEN '四国'
    WHEN pref_name = '香川' THEN '四国'
    WHEN pref_name = '愛媛' THEN '四国'
    WHEN pref_name = '高知' THEN '四国'
    WHEN pref_name = '福岡' THEN '九州'
    WHEN pref_name = '佐賀' THEN '九州'
    WHEN pref_name = '長崎' THEN '九州'
    ELSE 'その他'
  END AS district,
  sum(population) AS sum_pop
FROM
  test_dataset.PopTbl
GROUP BY
  district
ORDER BY
  sum_pop DESC