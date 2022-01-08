SELECT
  course_name,
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
  END AS June,
  CASE
    WHEN course_id IN (
      SELECT
        course_id
      FROM
        test_dataset.OpenCourses
      WHERE
        MONTH = 201807
    ) THEN '○'
    ELSE '×'
  END AS July,
  CASE
    WHEN course_id IN (
      SELECT
        course_id
      FROM
        test_dataset.OpenCourses
      WHERE
        MONTH = 201808
    ) THEN '○'
    ELSE '×'
  END AS August
FROM
  test_dataset.CourseMaster