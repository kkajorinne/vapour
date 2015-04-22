SELECT DISTINCT bg.game_title
FROM PURCHASE AS p2
JOIN PURCHASE_OF_BUNDLE AS pb ON p2.gamer_username = pb.purchase_gamer_username AND p2.date_time = pb.purchase_date_time
JOIN BUNDLE_OF_GAME AS bg ON pb.bundle_name = bg.bundle_name
WHERE p2.gamer_username = 'Alisha208'
ORDER BY bg.game_title