SELECT pg.game_title, bg.game_title
FROM dbo.PURCHASE_OF_GAME AS pg, dbo.PURCHASE, dbo.BUNDLE, dbo.BUNDLE_OF_GAME AS bg, dbo.PURCHASE_OF_BUNDLE AS pb
WHERE pg.purchase_gamer_username = gamer_username
	AND pg.purchase_date_time = date_time
	OR
	(
		pb.purchase_gamer_username = gamer_username
		AND pb.purchase_date_time = date_time
		AND pb.bundle_name = bg.bundle_name
		AND bg.bundle_name = name

	)
AND gamer_username = 'Alisha208'