SELECT DISTINCT g.game_title, bg.game_title
FROM dbo.PURCHASE AS p, dbo.PURCHASE_OF_BUNDLE AS bp, dbo.PURCHASE_OF_GAME AS g, dbo.BUNDLE AS b, dbo.BUNDLE_OF_GAME AS bg
WHERE p.gamer_username = 'Alana88'
AND  p.gamer_username = g.purchase_gamer_username 
AND p.date_time = g.purchase_date_time 
AND p.gamer_username = bp.purchase_gamer_username
AND p.date_time = bp.purchase_date_time
AND bp.bundle_name = b.name
AND b.name = bg.bundle_name



