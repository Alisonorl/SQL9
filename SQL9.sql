use sakila;


CREATE TABLE rentals_may as select * from rental
where rental_date like '%-05-%';

CREATE TABLE rentals_june as select * from rental
where rental_date like '%-06-%';

select c.first_name, c.last_name, count(rm.rental_id) as count_may from rentals_may rm
left join customer c using (customer_id)
group by c.first_name, c.last_name
order by count(rm.rental_id) DESC;

select c.first_name, c.last_name, count(rj.rental_id) as count_june from rentals_june rj
left join customer c using (customer_id)
group by c.first_name, c.last_name
order by count(rj.rental_id) DESC;




