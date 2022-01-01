-- 条件２：クラブを掛け持ちしている学生を選択
select std_id, club_id as main_club
from
  test_dataset.StudentClub
where main_club_flg = "Y"