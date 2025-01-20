-- Stored Procedure which output the result
CREATE OR REPLACE PROCEDURE sp_animals_with_owners_or_not_1(
	IN animal_name VARCHAR(30), 
	OUT owner_name TEXT
)
LANGUAGE plpgsql
AS $$
BEGIN
    SELECT 
		COALESCE(o."name", 'For adoption')
    INTO 
		owner_name
    FROM 
		animals AS a
    LEFT JOIN 
		owners AS o 
		ON 
		a.owner_id = o."id"
    WHERE 
		a."name" = animal_name;
END;
$$;


CALL sp_animals_with_owners_or_not_1('Pumpkinseed Sunfish', '');
CALL sp_animals_with_owners_or_not_1('Hippo', '');
CALL sp_animals_with_owners_or_not_1('Brown bear', '');



-- Stored Procedure which return NOTICE
CREATE OR REPLACE PROCEDURE sp_animals_with_owners_or_not_2(
	animal_name VARCHAR(30)
)
LANGUAGE plpgsql
AS $$
DECLARE
    owner_name TEXT;
BEGIN
    SELECT 
		COALESCE(o."name", 'For adoption')
    INTO 
		owner_name
    FROM 
		animals AS a
    LEFT JOIN 
		owners AS o 
		ON 
		a.owner_id = o."id"
    WHERE 
		a."name" = animal_name;

    RAISE NOTICE 
		'Owner of animal %: %', 
		animal_name, 
		owner_name;
END;
$$;

CALL sp_animals_with_owners_or_not_2('Pumpkinseed Sunfish');
CALL sp_animals_with_owners_or_not_2('Hippo');
CALL sp_animals_with_owners_or_not_2('Brown bear');