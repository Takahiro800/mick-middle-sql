SELECT
  CASE
    WHEN course_id IN (
      SELECT
        course_id
      FROM
        test_dataset.OpenCourses
      WHERE
        MONTH = 201806
    ) THEN '○'
    ELSE '×'
  END AS June
FROM
  test_dataset.CourseMaster