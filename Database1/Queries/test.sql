SELECT DISTINCT pg.game_title
FROM PURCHASE AS p1
JOIN PURCHASE_OF_GAME AS pg ON p1.gamer_username = pg.purchase_gamer_username AND p1.date_time = pg.purchase_date_time
WHERE p1.gamer_username = 'Alisha208'