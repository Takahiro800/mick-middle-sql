SELECT
  *
FROM
  test_dataset.ArrayTbl
WHERE
  1 IN (
    col1,
    col2,
    col3,
    col4,
    col5,
    col6,
    col7,
    col8,
    col9,
    col10
  )