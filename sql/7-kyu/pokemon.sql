select pkm.pokemon_name, pkm.str*mult.multiplier as modifiedStrength, mult.element
from pokemon pkm join multipliers mult
on pkm.element_id= mult.id
Where pkm.str*mult.multiplier >=40
order by 2 desc