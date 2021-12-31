SELECT
  pref_name,
  sum(
    CASE
      WHEN sex = 1 THEN population
      ELSE 0
    END
  ) AS cnt_m,
  sum(
    CASE
      WHEN sex = 2 THEN population
      ELSE 0
    END
  ) AS cnt_f
FROM
  test_dataset.PopTbl2
GROUP BY
  pref_name