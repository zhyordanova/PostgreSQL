-- Tests 12. Table Birthdays

SELECT DISTINCT lower(table_name) AS t
FROM information_schema.tables
WHERE table_schema = 'public'
    and lower(table_name) = 'minions_birthdays';


SELECT DISTINCT lower(column_name)
FROM information_schema.key_column_usage
WHERE table_schema = 'public'
    and lower(table_name) = 'minions_birthdays';
	

SELECT CONCAT_WS(' - ', lower(column_name), lower(data_type))
FROM information_schema.columns 
WHERE table_schema = 'public'
  and lower(table_name) = 'minions_birthdays';