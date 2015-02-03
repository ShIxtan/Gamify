# Schema Information

## rewards
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
rank        | integer   | not null, default 0
title       | string    | not null
cost        | integer   | not null
user_id     | integer   | not null, foreign key (references user)

## todos
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
rank        | integer   | not null, default 0
title       | string    | not null
user_id     | integer   | not null, foreign key (references user)

## dailies
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
rank        | integer   | not null, default 0
title       | string    | not null
user_id     | integer   | not null, foreign key (references user)

## habits
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
is_bad      | boolean   | not null
rank        | integer   | not null, default 0
title       | string    | not null
user_id     | integer   | not null, foreign key (references user)

## users
column name     | data type | details
----------------|-----------|-----------------------
id              | integer   | not null, primary key
username        | string    | not null, unique
gold            | integer   | not null
password_digest | string    | not null
session_token   | string    | not null, unique
