-- How many actors are there with the last name Wahlberg?
select count(last_name)
from actor
where last_name like 'W%berg';

-- How many payments were made between $3.99 and $5.99?
select count(amount)
from payment 
where amount between 3.99 and 5.99;

-- Query to determine which film the store has the most of
select film_id, count(film_id)
from inventory
group by film_id
order by count(film_id) desc;

-- How many customers have the last name 'William'?
select count(last_name)
from customers
where last_name like 'William';

-- What store employee sold the most rentals?
select staff_id, count(staff_id)
from rental
group by staff_id
order by count(staff_id) desc;

-- How many different district names are there?
select count(distinct district)
from address;

-- What film has the most actors in it?
select film_id, count(actor_id)
from film_actor
group by film_id
order by count(actor_id) desc;

-- From store_id 1, how many customers have a last name ending with 'es'?
select store_id, count(last_name)
from customer
where last_name like '%es'
group by store_id
order by store_id asc;

-- How many payment amounts had a number of rentals above 250 for customers with ids between 380 and 430
-- use group by and having > 250
select amount, count(amount)
from payment
where customer_id between 380 and 430
group by amount
having count(amount) > 250;

-- Within the film table, how many rating categories are there? And what rating has the most movies total?
select rating, count(rating)
from film
group by rating
order by count(rating) desc;
