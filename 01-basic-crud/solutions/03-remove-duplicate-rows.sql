select
	distinct on (name) name, area as area_km2
from 
	cities
order by
	name desc;
