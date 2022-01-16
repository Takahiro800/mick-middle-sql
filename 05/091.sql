SELECT
  M1.meeting,
  M2.person
FROM
  test_dataset.Meetings M1
  CROSS JOIN test_dataset.Meetings M2

/*
  Job Type    State      Start Time         Duration             User Email          Bytes Processed   Bytes Billed   Billing Tier   Labels
---------- --------- ----------------- ---------------- -------------------------- ----------------- -------------- -------------- --------
  query      SUCCESS   10 Jan 17:34:30   0:00:00.661000   hirotaka081630@gmail.com   152               10485760       1
*/