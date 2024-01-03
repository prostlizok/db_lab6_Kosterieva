ALTER TABLE matches ADD COLUMN updated_at TIMESTAMP;
CREATE OR REPLACE FUNCTION update_match_timestamp() 
RETURNS TRIGGER 
LANGUAGE plpgsql 
AS $$
BEGIN
    NEW.updated_at = NOW();
    RETURN NEW;
END;
$$;

DROP TRIGGER IF EXISTS match_update_timestamp ON matches;
CREATE TRIGGER match_update_timestamp
BEFORE UPDATE ON matches
FOR EACH ROW EXECUTE FUNCTION update_match_timestamp();

select * from matches;
-- Тригер оновлює поле 'updated_at' до поточного часу, щоб відслідковувати, коли матч був востаннє оновлений.
