-- ##### Timing Select Statements #####

-- Run a query to get a list of all `make_title` values from the `car_models` table where the `make_code` is `'LAM'`, without any duplicate rows, and note the time somewhere. (should have 1 result)
-- time = 35ms
select distinct make_title
from car_models
where make_code = 'LAM';


-- Run a query to list all `model_title` values where the `make_code` is `'NISSAN'`, and the `model_code` is `'GT-R'` without any duplicate rows, and note the time somewhere. (should have 1 result) 
-- time = 40ms
select distinct model_title
from car_models
where make_code = 'NISSAN'
and model_code = 'GT-R';


-- Run a query to list all `make_code`, `model_code`, `model_title`, and year from `car_models` where the `make_code` is `'LAM'`, and note the time somewhere. (should have 1360 rows)
-- time = 41ms
select make_code, model_code, model_title, "year"
from car_models
where make_code = 'LAM';


-- Run a query to list all fields from all `car_models` in years between `2010` and `2015`, and note the time somewhere (should have 78840 rows)
-- time = 259ms
select *
from car_models
where "year" between '2010' and '2015';


-- Run a query to list all fields from all `car_models` in the year of `2010`, and note the time somewhere (should have 13140 rows
-- time = 67ms
select *
from car_models
where "year" = 2010;

-- ##### Indexing #####
-- Create a query to get a list of all `make_title` values from the `car_models` table where the `make_code` is `'LAM'`, without any duplicate rows, and note the time somewhere. (should have 1 result)
--time = 2ms
create index makeTitle
on car_models (make_code)
where make_code = 'LAM';


-- Create a query to list all `model_title` values where the `make_code` is `'NISSAN'`, and the `model_code` is `'GT-R'` without any duplicate rows, and note the time somewhere. (should have 1 result)
--time =4ms

create index makeCodeNissanGTR
on car_models (make_code)
where make_code = 'NISSAN'
and model_code = 'GT-R';


-- Create a query to list all `make_code`, `model_code`, `model_title`, and year from `car_models` where the `make_code` is `'LAM'`, and note the time somewhere. (should have 1360 rows)
--time = 4ms

create index LAMdeets
on car_models (make_code)
where make_code = 'LAM';

-- Create a query to list all fields from all `car_models` in years between `2010` and `2015`, and note the time somewhere (should have 78840 rows)
-- time = 104 ms

create index carsBetween2010and2015
on car_models ("year")
where "year" between 2010 and 2015;


-- Create a query to list all fields from all `car_models` in the year of `2010`, and note the time somewhere (should have 13140 rows)
-- time =  48ms

create index year2010
on car_models ("year")
where "year" = 2010;

