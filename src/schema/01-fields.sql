CREATE TYPE field_type AS ENUM (
  'TEXT',
  'NUMBER'
);

CREATE TABLE fields (
  id serial PRIMARY KEY,
  name text NOT NULL,
  type field_type NOT NULL
);
