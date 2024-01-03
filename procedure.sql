DROP PROCEDURE IF EXISTS reset_champion_player(int);

-- Процедура reset_champion_player приймає ціле число, яке представляє ID чемпіона, та скидає поле 'player' до 0 для всіх записів цього чемпіона в таблиці 'participants'
CREATE OR REPLACE PROCEDURE reset_champion_player(champion_id INT) 
LANGUAGE plpgsql 
AS $$
BEGIN
    UPDATE participants SET player = 0 WHERE championID = champion_id;

    RAISE NOTICE 'Поле 'player' скинуто для всіх записів з championID %.', champion_id;
END;
$$;

-- CALL reset_champion_player(19);
-- select * from participants;



