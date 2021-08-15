select pkm.pokemon_name,pkm.str, mult.element from pokemon pkm
join multipliers mult on pkm.element_id= mult.id
Where str >=40
order by str asc

