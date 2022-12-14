select
	name,
    email,
    0 as score
from
	user_dtl
where
	name = '김준일'
union
select
	name,
    null as email,
    score
from
	score_mst
where
	score > 80;
