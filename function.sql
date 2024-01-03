DROP FUNCTION IF EXISTS count_participants();

-- Функція для підрахунку кількості учасників
CREATE OR REPLACE FUNCTION count_participants() 
RETURNS INTEGER 
LANGUAGE plpgsql 
AS $$
DECLARE
    participants_count INTEGER;
BEGIN 
    SELECT COUNT(*) INTO participants_count FROM participants;
    RETURN participants_count;
END;
$$;

-- SELECT count_participants();

