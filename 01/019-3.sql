SELECT
  std_id,
  CASE
    WHEN count(*) = 1 THEN max(club_id)
    ELSE max(
      CASE
        WHEN main_club_flg = 'Y' THEN club_id
        ELSE NULL
      END
    )
  END AS main_club
FROM
  test_dataset.StudentClub
GROUP BY
  std_id