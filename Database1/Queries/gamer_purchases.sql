SELECT pg.game_title
FROM PURCHASE AS p1
JOIN PURCHASE_OF_GAME AS pg ON p1.gamer_username = pg.purchase_gamer_username AND p1.date_time = pg.purchase_date_time
WHERE p1.gamer_username = 'Alisha208'
UNION
SELECT bg.game_title
FROM PURCHASE AS p2
JOIN PURCHASE_OF_BUNDLE AS pb ON p2.gamer_username = pb.purchase_gamer_username AND p2.date_time = pb.purchase_date_time
JOIN BUNDLE_OF_GAME AS bg ON pb.bundle_name = bg.bundle_name
WHERE p2.gamer_username = 'Alisha208'