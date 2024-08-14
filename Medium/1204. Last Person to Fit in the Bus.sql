select person_name
from Queue
where turn = (
    select max(turn)
    from Queue
    where (
        select sum(weight)
        from Queue as q2
        where q2.turn <= Queue.turn
    ) <= 1000
);
