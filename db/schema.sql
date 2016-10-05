DROP TABLE IF EXISTS pokemons;

CREATE TABLE pokemons(
  id SERIAL PRIMARY KEY,
  name VARCHAR,
  poke_type VARCHAR,
  cp integer,
  img_url VARCHAR
),

-- CREATE TABLE trainers(
--
-- )
