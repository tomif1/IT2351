----------------------------------------------------
-- Tomi Fayomi IT2351
----------------------------------------------------

select author.name as "Author Name" , game.name as "Game", round((1/COUNT('x') OVER (PARTITION BY author.author_id)*100),0) as "Royalty Percentage"  from game
left join author on
author.author_id = game.product_id

