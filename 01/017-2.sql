SELECT
  CASE
    WHEN EXISTS (
      SELECT
        course_id
      FROM
        test_dataset.OpenCourses
    ) THEN 1
    ELSE 0
  END AS June
FROM
  test_dataset.CourseMaster