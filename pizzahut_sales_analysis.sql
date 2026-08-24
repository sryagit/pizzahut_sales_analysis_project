create database pizzahut;
use pizzahut;

SELECT * FROM pizzas;
SELECT * FROM pizzahut.pizzas;
SELECT * FROM pizzahut.orders;
SELECT * FROM pizzahut.pizza_types;
SELECT * FROM pizzahut.order_details;

-- Questions
-- Basic:
-- Retrieve the total number of orders placed.
select count(order_id) as total_orders 
from orders;

-- Calculate the total revenue generated from pizza sales.
select round(sum(pizzas.price * order_details.quantity),2) as total_revenue 
from pizzas 
join order_details 
on pizzas.pizza_id = order_details.pizza_id;

-- Identify the highest-priced pizza.
-- Identify the most common pizza size ordered.
-- List the top 5 most ordered pizza types along with their quantities.

-- Intermediate:
-- Join the necessary tables to find the total quantity of each pizza category ordered.
-- Determine the distribution of orders by hour of the day.
-- Join relevant tables to find the category-wise distribution of pizzas.
-- Group the orders by date and calculate the average number of pizzas ordered per day.
-- Determine the top 3 most ordered pizza types based on revenue.

-- Advanced:
-- Calculate the percentage contribution of each pizza type to total revenue.
-- Analyze the cumulative revenue generated over time.
-- Determine the top 3 most ordered pizza types based on revenue for each pizza category.



