select table_name as 'table', 
    table_rows as 'rows'
from information_schema.tables
where table_schema = 'sakila' -- put your database name here
    and table_type = 'BASE TABLE'
order by table_rows desc;

select *
from information_schema.tables
where table_schema = 'sakila' -- put your database name here
    and table_type = 'BASE TABLE'
order by table_rows desc;

SELECT 
  `TABLE_SCHEMA`,                          -- Foreign key schema
  `TABLE_NAME`,                            -- Foreign key table
  `COLUMN_NAME`,                           -- Foreign key column
  `REFERENCED_TABLE_SCHEMA`,               -- Origin key schema
  `REFERENCED_TABLE_NAME`,                 -- Origin key table
  `REFERENCED_COLUMN_NAME`                 -- Origin key column
FROM
  `INFORMATION_SCHEMA`.`KEY_COLUMN_USAGE`  -- Will fail if user don't have privilege
WHERE
  `TABLE_SCHEMA` = SCHEMA()                -- Detect current schema in USE 
  AND `REFERENCED_TABLE_NAME` IS NOT NULL;
  
  
SELECT TABLE_NAME,COLUMN_NAME,CONSTRAINT_NAME, 
	REFERENCED_TABLE_NAME,REFERENCED_COLUMN_NAME
FROM
  INFORMATION_SCHEMA.KEY_COLUMN_USAGE
WHERE
  REFERENCED_TABLE_SCHEMA = SCHEMA() AND
  REFERENCED_TABLE_NAME = 'customer'
