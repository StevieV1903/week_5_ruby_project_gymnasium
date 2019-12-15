DROP TABLE bookings;
DROP TABLE members;
DROP TABLE sessions;


CREATE TABLE members (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  date_of_birth VARCHAR(255),
  address VARCHAR(255),
  post_code VARCHAR(255)
);

CREATE TABLE sessions (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  type VARCHAR(255),
  duration INT
);

CREATE TABLE bookings (
  id SERIAL PRIMARY KEY,
  start_time VARCHAR(255),
  day VARCHAR(255),
  member_id INT REFERENCES members(id) ON DELETE CASCADE,
  sessions_id INT REFERENCES sessions(id) ON DELETE CASCADE
);
