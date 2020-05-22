use shop;

ALTER TABLE users_c ADD (birthday_at_dt DATETIME, updated_at_dt DATETIME);

UPDATE users_c
SET birthday_at_dt = STR_TO_DATE(birthday_at, '%d.%m.%Y %h:%i'),
    updated_at_dt = STR_TO_DATE(updated_at, '%d.%m.%Y %h:%i');

ALTER TABLE users_c
    DROP birthday_at, DROP updated_at,
    RENAME COLUMN birthday_at_dt TO birthday_at,
    RENAME COLUMN updated_at_dt TO updated_at;