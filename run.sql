-- перевірки роботи функції 

SELECT count_participants();

-- перевірка роботи процедури 

CALL reset_champion_player(19); 
SELECT * FROM participants WHERE championID = 19;

-- перевірка тригера

INSERT INTO matches (duration, platformid, seasonid) VALUES (1200, 'EUW1', 8);
SELECT id, updated_at FROM matches WHERE id = 1; 
UPDATE matches SET duration = 1300 WHERE id = 1; 
SELECT id, updated_at FROM matches WHERE id = 1;


