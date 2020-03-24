select * from actor;
select * from movie;
select * from credit;

-- display the actors name, movie title and role ---3 table joins
select actor.lastname, actor.firstName, movie.Title, credit.Role
from movie
join credit
	on movie.ID = credit.movieID
join actor 
	on credit.actorID = actor.ID ;
-- show an actors role in every movie

  -- left join movie and credit
  select movie.title, movie.year, credit.role
  from movie
  left join credit
	on movie.id = credit.movieid;
    
    -- using distinct  bank db
    select distinct(txntype) from transaction;
    
    select * from account;
		where id in (2,3);
    
    
   
    